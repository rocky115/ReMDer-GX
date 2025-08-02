import pcbnew
import os

# Constants
BOARD_FILE = "PCIe_Slot.kicad_pcb"
OUTPUT_DIR = "gerbers"

def load_board():
    """Load the PCB file."""
    board = pcbnew.LoadBoard(BOARD_FILE)
    if not board:
        print(f"Error: Could not load {BOARD_FILE}")
        return None
    return board

def run_drc(board):
    """Run Design Rule Check."""
    drc = pcbnew.DRC(board)
    drc.RunDRC()
    if drc.GetViolationCount() > 0:
        print(f"DRC Errors: {drc.GetViolationCount()}")
        return False
    print("DRC passed.")
    return True

def export_gerber(board):
    """Export Gerber and drill files."""
    if not os.path.exists(OUTPUT_DIR):
        os.makedirs(OUTPUT_DIR)
    
    plot_controller = pcbnew.PLOT_CONTROLLER(board)
    plot_options = plot_controller.GetPlotOptions()
    
    plot_options.SetOutputDirectory(OUTPUT_DIR)
    plot_options.SetPlotFrameRef(False)
    plot_options.SetLineWidth(pcbnew.FromMM(0.1))
    plot_options.SetAutoScale(False)
    plot_options.SetScale(1)
    plot_options.SetMirror(False)
    plot_options.SetUseGerberAttributes(True)
    
    layers = [
        (pcbnew.F_Cu, "F_Cu"),
        (pcbnew.B_Cu, "B_Cu"),
        (pcbnew.In1_Cu, "In1_Cu"),
        (pcbnew.In2_Cu, "In2_Cu"),
        (pcbnew.F_SilkS, "F_Silkscreen"),
        (pcbnew.B_SilkS, "B_Silkscreen"),
        (pcbnew.F_Mask, "F_Mask"),
        (pcbnew.B_Mask, "B_Mask"),
        (pcbnew.Edge_Cuts, "Edge_Cuts"),
    ]
    
    for layer_info in layers:
        plot_controller.SetLayer(layer_info[0])
        plot_controller.OpenPlotfile(layer_info[1], pcbnew.PLOT_FORMAT_GERBER, layer_info[1])
        plot_controller.PlotLayer()
    
    plot_controller.ClosePlot()
    
    drill_writer = pcbnew.EXCELLON_WRITER(board)
    drill_writer.SetOptions(False, False, pcbnew.VECTOR2I(0, 0), False)
    drill_writer.SetFormat(True)
    drill_writer.CreateDrillandMapFilesSet(os.path.join(OUTPUT_DIR, ""), True, True)
    
    print(f"Exported Gerber and drill files to {OUTPUT_DIR}/")
    return True

def main():
    print("KiCAD PCIe Slot Gerber Generator")
    print("-------------------------------")
    
    board = load_board()
    if not board:
        return
    
    if not run_drc(board):
        print("Fix DRC errors before generating Gerber files.")
        return
    
    if not export_gerber(board):
        print("Failed to export Gerber files.")
        return
    
    print("Gerber files generated successfully.")

if __name__ == "__main__":
    main()