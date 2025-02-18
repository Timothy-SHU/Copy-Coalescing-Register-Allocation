; ModuleID = 'blender/source/blender/editors/space_sequencer/sequencer_edit.c'
source_filename = "blender/source/blender/editors/space_sequencer/sequencer_edit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.StructRNA = type opaque
%struct.Sequence = type { ptr, ptr, ptr, ptr, [64 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i16, i16, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, float, float, float, float, ptr, i32, i32, i32, float, i32, i8, [3 x i8], %struct.ListBase }
%struct.rctf = type { float, float, float, float }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.BakeData = type { %struct.ImageFormatData, [1024 x i8], i16, i16, i16, i16, float, float, [3 x i8], i8, i8, [3 x i8], [64 x i8] }
%struct.AudioData = type { i32, float, float, float, i32, i16, i16, float, float }
%struct.GameFraming = type { [3 x float], i8, i8, i8, i8 }
%struct.GameData = type { %struct.GameFraming, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], %struct.GameDome, i16, i16, float, %struct.RecastData, float, float, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float }
%struct.GameDome = type { i16, i16, i16, i16, float, float, ptr }
%struct.RecastData = type { float, float, float, float, float, float, float, float, float, float, i32, float, float, i16, i16 }
%struct.UnitSettings = type { float, i8, i8, i16 }
%struct.PhysicsSettings = type { [3 x float], i32, i32, i32 }
%struct.ColorManagedViewSettings = type { i32, i32, [64 x i8], [64 x i8], float, float, ptr, ptr }
%struct.ColorManagedDisplaySettings = type { [64 x i8] }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.SeqIterator = type { ptr, i32, i32, ptr, i32 }
%struct.SpaceSeq = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, float, float, i16, i16, i16, i16, i32, float, i32, i32, ptr, %struct.SequencerScopes }
%struct.SequencerScopes = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.Editing = type { ptr, %struct.ListBase, %struct.ListBase, ptr, [1024 x i8], [1024 x i8], i32, i32, i32, i32, %struct.rctf }
%struct.SlipData = type { [2 x i32], [2 x float], ptr, ptr, ptr, i32, i8, i32 }
%struct.TransSeq = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.SequenceModifierData = type { ptr, ptr, i32, i32, [64 x i8], i32, i32, ptr, ptr }
%struct.MetaStack = type { ptr, ptr, ptr, ptr, [2 x i32] }
%struct.Strip = type { ptr, ptr, i32, i32, i32, i32, ptr, [768 x i8], ptr, ptr, ptr, ptr, %struct.ColorManagedColorspaceSettings }
%struct.StripElem = type { [256 x i8], i32, i32 }
%struct.ProxyBuildJob = type { ptr, ptr, %struct.ListBase, i32 }
%struct.SeqEffectHandle = type { i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.LinkData = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [6 x i8] c"CROSS\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Crossfade\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Crossfade effect strip type\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"Add\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Add effect strip type\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"SUBTRACT\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"Subtract\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Subtract effect strip type\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"ALPHA_OVER\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"Alpha Over\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"Alpha Over effect strip type\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"ALPHA_UNDER\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"Alpha Under\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"Alpha Under effect strip type\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"GAMMA_CROSS\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"Gamma Cross\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"Gamma Cross effect strip type\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"MULTIPLY\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"Multiply\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"Multiply effect strip type\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"OVER_DROP\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"Alpha Over Drop\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"Alpha Over Drop effect strip type\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"WIPE\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"Wipe\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"Wipe effect strip type\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"GLOW\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"Glow\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"Glow effect strip type\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"TRANSFORM\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"Transform\00", align 1
@.str.32 = private unnamed_addr constant [28 x i8] c"Transform effect strip type\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"COLOR\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"Color\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"Color effect strip type\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"SPEED\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"Speed\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"MULTICAM\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"Multicam Selector\00", align 1
@.str.40 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"ADJUSTMENT\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"Adjustment Layer\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"GAUSSIAN_BLUR\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"Gaussian Blur\00", align 1
@sequencer_prop_effect_types = dso_local global [17 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 8, ptr @.str, i32 0, ptr @.str.1, ptr @.str.2 }, %struct.EnumPropertyItem { i32 9, ptr @.str.3, i32 0, ptr @.str.4, ptr @.str.5 }, %struct.EnumPropertyItem { i32 10, ptr @.str.6, i32 0, ptr @.str.7, ptr @.str.8 }, %struct.EnumPropertyItem { i32 11, ptr @.str.9, i32 0, ptr @.str.10, ptr @.str.11 }, %struct.EnumPropertyItem { i32 12, ptr @.str.12, i32 0, ptr @.str.13, ptr @.str.14 }, %struct.EnumPropertyItem { i32 13, ptr @.str.15, i32 0, ptr @.str.16, ptr @.str.17 }, %struct.EnumPropertyItem { i32 14, ptr @.str.18, i32 0, ptr @.str.19, ptr @.str.20 }, %struct.EnumPropertyItem { i32 15, ptr @.str.21, i32 0, ptr @.str.22, ptr @.str.23 }, %struct.EnumPropertyItem { i32 25, ptr @.str.24, i32 0, ptr @.str.25, ptr @.str.26 }, %struct.EnumPropertyItem { i32 26, ptr @.str.27, i32 0, ptr @.str.28, ptr @.str.29 }, %struct.EnumPropertyItem { i32 27, ptr @.str.30, i32 0, ptr @.str.31, ptr @.str.32 }, %struct.EnumPropertyItem { i32 28, ptr @.str.33, i32 0, ptr @.str.34, ptr @.str.35 }, %struct.EnumPropertyItem { i32 29, ptr @.str.36, i32 0, ptr @.str.37, ptr @.str.35 }, %struct.EnumPropertyItem { i32 30, ptr @.str.38, i32 0, ptr @.str.39, ptr @.str.40 }, %struct.EnumPropertyItem { i32 31, ptr @.str.41, i32 0, ptr @.str.42, ptr @.str.40 }, %struct.EnumPropertyItem { i32 40, ptr @.str.43, i32 0, ptr @.str.44, ptr @.str.40 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.45 = private unnamed_addr constant [5 x i8] c"LEFT\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"RIGHT\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"Right\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"BOTH\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"Both\00", align 1
@prop_side_types = dso_local global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.45, i32 0, ptr @.str.46, ptr @.str.40 }, %struct.EnumPropertyItem { i32 2, ptr @.str.47, i32 0, ptr @.str.48, ptr @.str.40 }, %struct.EnumPropertyItem { i32 3, ptr @.str.49, i32 0, ptr @.str.50, ptr @.str.40 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.51 = private unnamed_addr constant [46 x i8] c"Cannot apply effects to audio sequence strips\00", align 1
@.str.52 = private unnamed_addr constant [51 x i8] c"Cannot apply effect to more than 3 sequence strips\00", align 1
@.str.53 = private unnamed_addr constant [47 x i8] c"At least one selected sequence strip is needed\00", align 1
@.str.54 = private unnamed_addr constant [38 x i8] c"2 selected sequence strips are needed\00", align 1
@.str.55 = private unnamed_addr constant [38 x i8] c"TODO: in what cases does this happen?\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"Remove Gaps\00", align 1
@.str.57 = private unnamed_addr constant [24 x i8] c"SEQUENCER_OT_gap_remove\00", align 1
@.str.58 = private unnamed_addr constant [108 x i8] c"Remove gap at current frame to first strip at the right, independent of selection or locked state of strips\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"All Gaps\00", align 1
@.str.61 = private unnamed_addr constant [38 x i8] c"Do all gaps to right of current frame\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"Insert Gaps\00", align 1
@.str.63 = private unnamed_addr constant [24 x i8] c"SEQUENCER_OT_gap_insert\00", align 1
@.str.64 = private unnamed_addr constant [109 x i8] c"Insert gap at current frame to first strips at the right, independent of selection or locked state of strips\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"frames\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"Frames\00", align 1
@.str.67 = private unnamed_addr constant [37 x i8] c"Frames to insert after current strip\00", align 1
@.str.68 = private unnamed_addr constant [12 x i8] c"Snap Strips\00", align 1
@.str.69 = private unnamed_addr constant [18 x i8] c"SEQUENCER_OT_snap\00", align 1
@.str.70 = private unnamed_addr constant [44 x i8] c"Frame where selected strips will be snapped\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"frame\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"Frame\00", align 1
@.str.73 = private unnamed_addr constant [12 x i8] c"Trim Strips\00", align 1
@.str.74 = private unnamed_addr constant [18 x i8] c"SEQUENCER_OT_slip\00", align 1
@.str.75 = private unnamed_addr constant [38 x i8] c"Trim the contents of the active strip\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"Offset\00", align 1
@.str.78 = private unnamed_addr constant [32 x i8] c"Offset to the data of the strip\00", align 1
@.str.79 = private unnamed_addr constant [12 x i8] c"Mute Strips\00", align 1
@.str.80 = private unnamed_addr constant [18 x i8] c"SEQUENCER_OT_mute\00", align 1
@.str.81 = private unnamed_addr constant [21 x i8] c"Mute selected strips\00", align 1
@.str.82 = private unnamed_addr constant [11 x i8] c"unselected\00", align 1
@.str.83 = private unnamed_addr constant [11 x i8] c"Unselected\00", align 1
@.str.84 = private unnamed_addr constant [44 x i8] c"Mute unselected rather than selected strips\00", align 1
@.str.85 = private unnamed_addr constant [15 x i8] c"Un-Mute Strips\00", align 1
@.str.86 = private unnamed_addr constant [20 x i8] c"SEQUENCER_OT_unmute\00", align 1
@.str.87 = private unnamed_addr constant [47 x i8] c"Un-Mute unselected rather than selected strips\00", align 1
@.str.88 = private unnamed_addr constant [46 x i8] c"UnMute unselected rather than selected strips\00", align 1
@.str.89 = private unnamed_addr constant [12 x i8] c"Lock Strips\00", align 1
@.str.90 = private unnamed_addr constant [18 x i8] c"SEQUENCER_OT_lock\00", align 1
@.str.91 = private unnamed_addr constant [54 x i8] c"Lock the active strip so that it can't be transformed\00", align 1
@.str.92 = private unnamed_addr constant [14 x i8] c"UnLock Strips\00", align 1
@.str.93 = private unnamed_addr constant [20 x i8] c"SEQUENCER_OT_unlock\00", align 1
@.str.94 = private unnamed_addr constant [56 x i8] c"Unlock the active strip so that it can't be transformed\00", align 1
@.str.95 = private unnamed_addr constant [14 x i8] c"Reload Strips\00", align 1
@.str.96 = private unnamed_addr constant [20 x i8] c"SEQUENCER_OT_reload\00", align 1
@.str.97 = private unnamed_addr constant [31 x i8] c"Reload strips in the sequencer\00", align 1
@.str.98 = private unnamed_addr constant [14 x i8] c"adjust_length\00", align 1
@.str.99 = private unnamed_addr constant [14 x i8] c"Adjust Length\00", align 1
@.str.100 = private unnamed_addr constant [45 x i8] c"Adjust length of strips to their data length\00", align 1
@.str.101 = private unnamed_addr constant [18 x i8] c"Refresh Sequencer\00", align 1
@.str.102 = private unnamed_addr constant [25 x i8] c"SEQUENCER_OT_refresh_all\00", align 1
@.str.103 = private unnamed_addr constant [29 x i8] c"Refresh the sequencer editor\00", align 1
@.str.104 = private unnamed_addr constant [16 x i8] c"Reassign Inputs\00", align 1
@.str.105 = private unnamed_addr constant [29 x i8] c"SEQUENCER_OT_reassign_inputs\00", align 1
@.str.106 = private unnamed_addr constant [41 x i8] c"Reassign the inputs for the effect strip\00", align 1
@.str.107 = private unnamed_addr constant [12 x i8] c"Swap Inputs\00", align 1
@.str.108 = private unnamed_addr constant [25 x i8] c"SEQUENCER_OT_swap_inputs\00", align 1
@.str.109 = private unnamed_addr constant [47 x i8] c"Swap the first two inputs for the effect strip\00", align 1
@.str.110 = private unnamed_addr constant [11 x i8] c"Cut Strips\00", align 1
@.str.111 = private unnamed_addr constant [17 x i8] c"SEQUENCER_OT_cut\00", align 1
@.str.112 = private unnamed_addr constant [24 x i8] c"Cut the selected strips\00", align 1
@.str.113 = private unnamed_addr constant [40 x i8] c"Frame where selected strips will be cut\00", align 1
@.str.114 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@prop_cut_types = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.207, i32 0, ptr @.str.208, ptr @.str.40 }, %struct.EnumPropertyItem { i32 1, ptr @.str.209, i32 0, ptr @.str.210, ptr @.str.40 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.115 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.116 = private unnamed_addr constant [47 x i8] c"The type of cut operation to perform on strips\00", align 1
@.str.117 = private unnamed_addr constant [5 x i8] c"side\00", align 1
@.str.118 = private unnamed_addr constant [5 x i8] c"Side\00", align 1
@.str.119 = private unnamed_addr constant [45 x i8] c"The side that remains selected after cutting\00", align 1
@.str.120 = private unnamed_addr constant [17 x i8] c"Duplicate Strips\00", align 1
@.str.121 = private unnamed_addr constant [23 x i8] c"SEQUENCER_OT_duplicate\00", align 1
@.str.122 = private unnamed_addr constant [30 x i8] c"Duplicate the selected strips\00", align 1
@.str.123 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@transform_mode_types = external global [0 x %struct.EnumPropertyItem], align 8
@.str.124 = private unnamed_addr constant [5 x i8] c"Mode\00", align 1
@.str.125 = private unnamed_addr constant [13 x i8] c"Erase Strips\00", align 1
@.str.126 = private unnamed_addr constant [20 x i8] c"SEQUENCER_OT_delete\00", align 1
@.str.127 = private unnamed_addr constant [41 x i8] c"Erase selected strips from the sequencer\00", align 1
@.str.128 = private unnamed_addr constant [19 x i8] c"Clear Strip Offset\00", align 1
@.str.129 = private unnamed_addr constant [26 x i8] c"SEQUENCER_OT_offset_clear\00", align 1
@.str.130 = private unnamed_addr constant [50 x i8] c"Clear strip offsets from the start and end frames\00", align 1
@.str.131 = private unnamed_addr constant [16 x i8] c"Separate Images\00", align 1
@.str.132 = private unnamed_addr constant [29 x i8] c"SEQUENCER_OT_images_separate\00", align 1
@.str.133 = private unnamed_addr constant [60 x i8] c"On image sequence strips, it returns a strip for each image\00", align 1
@.str.134 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.135 = private unnamed_addr constant [7 x i8] c"Length\00", align 1
@.str.136 = private unnamed_addr constant [21 x i8] c"Length of each frame\00", align 1
@.str.137 = private unnamed_addr constant [18 x i8] c"Toggle Meta Strip\00", align 1
@.str.138 = private unnamed_addr constant [25 x i8] c"SEQUENCER_OT_meta_toggle\00", align 1
@.str.139 = private unnamed_addr constant [45 x i8] c"Toggle a metastrip (to edit enclosed strips)\00", align 1
@.str.140 = private unnamed_addr constant [16 x i8] c"Make Meta Strip\00", align 1
@.str.141 = private unnamed_addr constant [23 x i8] c"SEQUENCER_OT_meta_make\00", align 1
@.str.142 = private unnamed_addr constant [39 x i8] c"Group selected strips into a metastrip\00", align 1
@.str.143 = private unnamed_addr constant [13 x i8] c"UnMeta Strip\00", align 1
@.str.144 = private unnamed_addr constant [27 x i8] c"SEQUENCER_OT_meta_separate\00", align 1
@.str.145 = private unnamed_addr constant [54 x i8] c"Put the contents of a metastrip back in the sequencer\00", align 1
@.str.146 = private unnamed_addr constant [9 x i8] c"View All\00", align 1
@.str.147 = private unnamed_addr constant [22 x i8] c"SEQUENCER_OT_view_all\00", align 1
@.str.148 = private unnamed_addr constant [37 x i8] c"View all the strips in the sequencer\00", align 1
@.str.149 = private unnamed_addr constant [30 x i8] c"SEQUENCER_OT_view_all_preview\00", align 1
@.str.150 = private unnamed_addr constant [32 x i8] c"Zoom preview to fit in the area\00", align 1
@.str.151 = private unnamed_addr constant [26 x i8] c"Sequencer View Zoom Ratio\00", align 1
@.str.152 = private unnamed_addr constant [29 x i8] c"SEQUENCER_OT_view_zoom_ratio\00", align 1
@.str.153 = private unnamed_addr constant [39 x i8] c"Change zoom ratio of sequencer preview\00", align 1
@.str.154 = private unnamed_addr constant [6 x i8] c"ratio\00", align 1
@.str.155 = private unnamed_addr constant [6 x i8] c"Ratio\00", align 1
@.str.156 = private unnamed_addr constant [65 x i8] c"Zoom ratio, 1.0 is 1:1, higher is zoomed in, lower is zoomed out\00", align 1
@.str.157 = private unnamed_addr constant [12 x i8] c"View Toggle\00", align 1
@.str.158 = private unnamed_addr constant [25 x i8] c"SEQUENCER_OT_view_toggle\00", align 1
@.str.159 = private unnamed_addr constant [57 x i8] c"Toggle between sequencer views (sequence, preview, both)\00", align 1
@.str.160 = private unnamed_addr constant [14 x i8] c"View Selected\00", align 1
@.str.161 = private unnamed_addr constant [27 x i8] c"SEQUENCER_OT_view_selected\00", align 1
@.str.162 = private unnamed_addr constant [42 x i8] c"Zoom the sequencer on the selected strips\00", align 1
@.str.163 = private unnamed_addr constant [14 x i8] c"Jump to Strip\00", align 1
@.str.164 = private unnamed_addr constant [24 x i8] c"SEQUENCER_OT_strip_jump\00", align 1
@.str.165 = private unnamed_addr constant [34 x i8] c"Move frame to previous edit point\00", align 1
@.str.166 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@.str.167 = private unnamed_addr constant [11 x i8] c"Next Strip\00", align 1
@.str.168 = private unnamed_addr constant [7 x i8] c"center\00", align 1
@.str.169 = private unnamed_addr constant [17 x i8] c"Use strip center\00", align 1
@.str.170 = private unnamed_addr constant [11 x i8] c"Swap Strip\00", align 1
@.str.171 = private unnamed_addr constant [18 x i8] c"SEQUENCER_OT_swap\00", align 1
@.str.172 = private unnamed_addr constant [50 x i8] c"Swap active strip with strip to the right or left\00", align 1
@prop_side_lr_types = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.45, i32 0, ptr @.str.46, ptr @.str.40 }, %struct.EnumPropertyItem { i32 2, ptr @.str.47, i32 0, ptr @.str.48, ptr @.str.40 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.173 = private unnamed_addr constant [26 x i8] c"Side of the strip to swap\00", align 1
@.str.174 = private unnamed_addr constant [16 x i8] c"Set Render Size\00", align 1
@.str.175 = private unnamed_addr constant [24 x i8] c"SEQUENCER_OT_rendersize\00", align 1
@.str.176 = private unnamed_addr constant [48 x i8] c"Set render size and aspect from active sequence\00", align 1
@.str.177 = private unnamed_addr constant [5 x i8] c"Copy\00", align 1
@.str.178 = private unnamed_addr constant [18 x i8] c"SEQUENCER_OT_copy\00", align 1
@.str.179 = private unnamed_addr constant [6 x i8] c"Paste\00", align 1
@.str.180 = private unnamed_addr constant [19 x i8] c"SEQUENCER_OT_paste\00", align 1
@.str.181 = private unnamed_addr constant [20 x i8] c"Sequencer Swap Data\00", align 1
@.str.182 = private unnamed_addr constant [23 x i8] c"SEQUENCER_OT_swap_data\00", align 1
@.str.183 = private unnamed_addr constant [24 x i8] c"Swap 2 sequencer strips\00", align 1
@.str.184 = private unnamed_addr constant [19 x i8] c"Border Offset View\00", align 1
@.str.185 = private unnamed_addr constant [31 x i8] c"SEQUENCER_OT_view_ghost_border\00", align 1
@.str.186 = private unnamed_addr constant [54 x i8] c"Set the boundaries of the border used for offset-view\00", align 1
@.str.187 = private unnamed_addr constant [35 x i8] c"Rebuild Proxy and Timecode Indices\00", align 1
@.str.188 = private unnamed_addr constant [27 x i8] c"SEQUENCER_OT_rebuild_proxy\00", align 1
@.str.189 = private unnamed_addr constant [71 x i8] c"Rebuild all selected proxies and timecode indices using the job system\00", align 1
@.str.190 = private unnamed_addr constant [20 x i8] c"Change Effect Input\00", align 1
@.str.191 = private unnamed_addr constant [33 x i8] c"SEQUENCER_OT_change_effect_input\00", align 1
@.str.192 = private unnamed_addr constant [5 x i8] c"swap\00", align 1
@prop_change_effect_input_types = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.221, i32 0, ptr @.str.222, ptr @.str.40 }, %struct.EnumPropertyItem { i32 1, ptr @.str.223, i32 0, ptr @.str.224, ptr @.str.40 }, %struct.EnumPropertyItem { i32 2, ptr @.str.225, i32 0, ptr @.str.226, ptr @.str.40 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.193 = private unnamed_addr constant [5 x i8] c"Swap\00", align 1
@.str.194 = private unnamed_addr constant [26 x i8] c"The effect inputs to swap\00", align 1
@.str.195 = private unnamed_addr constant [19 x i8] c"Change Effect Type\00", align 1
@.str.196 = private unnamed_addr constant [32 x i8] c"SEQUENCER_OT_change_effect_type\00", align 1
@.str.197 = private unnamed_addr constant [22 x i8] c"Sequencer effect type\00", align 1
@.str.198 = private unnamed_addr constant [18 x i8] c"Change Data/Files\00", align 1
@.str.199 = private unnamed_addr constant [25 x i8] c"SEQUENCER_OT_change_path\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.200 = private unnamed_addr constant [9 x i8] c"trimdata\00", align 1
@.str.201 = private unnamed_addr constant [19 x i8] c"trimdata_transform\00", align 1
@.str.202 = private unnamed_addr constant [19 x i8] c"trimdata_sequences\00", align 1
@.str.203 = private unnamed_addr constant [14 x i8] c"trimdata_trim\00", align 1
@.str.204 = private unnamed_addr constant [16 x i8] c"Trim offset: %d\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.205 = private unnamed_addr constant [42 x i8] c"Cannot reassign inputs: no cycles allowed\00", align 1
@.str.206 = private unnamed_addr constant [24 x i8] c"No valid inputs to swap\00", align 1
@.str.207 = private unnamed_addr constant [5 x i8] c"SOFT\00", align 1
@.str.208 = private unnamed_addr constant [5 x i8] c"Soft\00", align 1
@.str.209 = private unnamed_addr constant [5 x i8] c"HARD\00", align 1
@.str.210 = private unnamed_addr constant [5 x i8] c"Hard\00", align 1
@MEM_reallocN_id = external local_unnamed_addr global ptr, align 8
@__func__.sequencer_separate_images_exec = private unnamed_addr constant [31 x i8] c"sequencer_separate_images_exec\00", align 1
@.str.211 = private unnamed_addr constant [10 x i8] c"metastack\00", align 1
@.str.212 = private unnamed_addr constant [50 x i8] c"Please select more than one or all related strips\00", align 1
@.str.213 = private unnamed_addr constant [10 x i8] c"MetaStrip\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.214 = private unnamed_addr constant [10 x i8] c"metastrip\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.215 = private unnamed_addr constant [33 x i8] c"Please select all related strips\00", align 1
@seqbase_clipboard = external global %struct.ListBase, align 8
@seqbase_clipboard_frame = external local_unnamed_addr global i32, align 4
@.str.216 = private unnamed_addr constant [25 x i8] c"Please select two strips\00", align 1
@.str.217 = private unnamed_addr constant [17 x i8] c"Building Proxies\00", align 1
@.str.218 = private unnamed_addr constant [18 x i8] c"proxy rebuild job\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.219 = private unnamed_addr constant [45 x i8] c"Canceling proxy rebuild on users request...\0A\00", align 1
@.str.220 = private unnamed_addr constant [47 x i8] c"One of the effect inputs is unset, cannot swap\00", align 1
@.str.221 = private unnamed_addr constant [4 x i8] c"A_B\00", align 1
@.str.222 = private unnamed_addr constant [7 x i8] c"A -> B\00", align 1
@.str.223 = private unnamed_addr constant [4 x i8] c"B_C\00", align 1
@.str.224 = private unnamed_addr constant [7 x i8] c"B -> C\00", align 1
@.str.225 = private unnamed_addr constant [4 x i8] c"A_C\00", align 1
@.str.226 = private unnamed_addr constant [7 x i8] c"A -> C\00", align 1
@.str.227 = private unnamed_addr constant [35 x i8] c"New effect needs more input strips\00", align 1
@.str.228 = private unnamed_addr constant [14 x i8] c"relative_path\00", align 1
@.str.229 = private unnamed_addr constant [6 x i8] c"files\00", align 1
@.str.230 = private unnamed_addr constant [10 x i8] c"directory\00", align 1
@.str.231 = private unnamed_addr constant [10 x i8] c"stripelem\00", align 1
@.str.232 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@RNA_Sequence = external global %struct.StructRNA, align 1
@.str.233 = private unnamed_addr constant [9 x i8] c"filepath\00", align 1
@.str.234 = private unnamed_addr constant [13 x i8] c"filter_movie\00", align 1
@.str.235 = private unnamed_addr constant [13 x i8] c"filter_image\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @seq_rectf(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 11
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 15
  %7 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 8
  %8 = select i1 %5, ptr %6, ptr %7
  %9 = load i32, ptr %8, align 4, !tbaa !43
  %10 = sitofp i32 %9 to float
  store float %10, ptr %1, align 4, !tbaa !44
  %11 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 13
  %12 = load i32, ptr %11, align 8, !tbaa !46
  %13 = sitofp i32 %12 to float
  %14 = fadd float %13, 0x3FC99999A0000000
  %15 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 2
  store float %14, ptr %15, align 4, !tbaa !47
  %16 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 12
  %17 = load i32, ptr %16, align 4, !tbaa !48
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  %20 = load i32, ptr %7, align 4, !tbaa !49
  %21 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 7
  %22 = load i32, ptr %21, align 8, !tbaa !50
  %23 = add nsw i32 %22, %20
  br label %27

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 16
  %26 = load i32, ptr %25, align 4, !tbaa !51
  br label %27

27:                                               ; preds = %24, %19
  %28 = phi i32 [ %26, %24 ], [ %23, %19 ]
  %29 = sitofp i32 %28 to float
  %30 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 1
  store float %29, ptr %30, align 4, !tbaa !52
  %31 = fadd float %13, 0x3FE99999A0000000
  %32 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 3
  store float %31, ptr %32, align 4, !tbaa !53
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @boundbox_seq(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #1 {
  %3 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %0, i8 noundef zeroext 0) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %45, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !54
  %8 = add nsw i32 %7, 1
  %9 = sitofp i32 %8 to float
  %10 = load ptr, ptr %3, align 8, !tbaa !74
  %11 = load ptr, ptr %10, align 8, !tbaa !76
  %12 = icmp eq ptr %11, null
  br i1 %12, label %38, label %13

13:                                               ; preds = %5, %13
  %14 = phi ptr [ %36, %13 ], [ %11, %5 ]
  %15 = phi float [ %29, %13 ], [ %9, %5 ]
  %16 = phi float [ %35, %13 ], [ 8.000000e+00, %5 ]
  %17 = phi float [ %23, %13 ], [ 0.000000e+00, %5 ]
  %18 = getelementptr inbounds %struct.Sequence, ptr %14, i64 0, i32 15
  %19 = load i32, ptr %18, align 8, !tbaa !77
  %20 = add nsw i32 %19, -1
  %21 = sitofp i32 %20 to float
  %22 = fcmp ogt float %17, %21
  %23 = select i1 %22, float %21, float %17
  %24 = getelementptr inbounds %struct.Sequence, ptr %14, i64 0, i32 16
  %25 = load i32, ptr %24, align 4, !tbaa !51
  %26 = add nsw i32 %25, 1
  %27 = sitofp i32 %26 to float
  %28 = fcmp olt float %15, %27
  %29 = select i1 %28, float %27, float %15
  %30 = getelementptr inbounds %struct.Sequence, ptr %14, i64 0, i32 13
  %31 = load i32, ptr %30, align 8, !tbaa !46
  %32 = add nsw i32 %31, 2
  %33 = sitofp i32 %32 to float
  %34 = fcmp olt float %16, %33
  %35 = select i1 %34, float %33, float %16
  %36 = load ptr, ptr %14, align 8, !tbaa !76
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %13, !llvm.loop !78

38:                                               ; preds = %13, %5
  %39 = phi float [ 0.000000e+00, %5 ], [ %23, %13 ]
  %40 = phi float [ 8.000000e+00, %5 ], [ %35, %13 ]
  %41 = phi float [ %9, %5 ], [ %29, %13 ]
  store float %39, ptr %1, align 4, !tbaa !44
  %42 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 1
  store float %41, ptr %42, align 4, !tbaa !52
  %43 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 2
  store float 0.000000e+00, ptr %43, align 4, !tbaa !47
  %44 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 3
  store float %40, ptr %44, align 4, !tbaa !53
  br label %45

45:                                               ; preds = %2, %38
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare ptr @BKE_sequencer_editing_get(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @find_neighboring_sequence(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %0, i8 noundef zeroext 0) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %50, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr %5, align 8, !tbaa !74
  %9 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 16
  %10 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 15
  %11 = load ptr, ptr %8, align 8, !tbaa !76
  %12 = icmp eq ptr %11, null
  br i1 %12, label %50, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 13
  %15 = icmp eq i32 %3, 0
  br label %16

16:                                               ; preds = %13, %47
  %17 = phi ptr [ %11, %13 ], [ %48, %47 ]
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %47, label %19

19:                                               ; preds = %16
  %20 = load i32, ptr %14, align 8, !tbaa !46
  %21 = getelementptr inbounds %struct.Sequence, ptr %17, i64 0, i32 13
  %22 = load i32, ptr %21, align 8, !tbaa !46
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %47

24:                                               ; preds = %19
  switch i32 %3, label %25 [
    i32 -1, label %36
    i32 0, label %31
  ]

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.Sequence, ptr %17, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !81
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  br i1 %15, label %31, label %47

31:                                               ; preds = %24, %30
  %32 = getelementptr inbounds %struct.Sequence, ptr %17, i64 0, i32 5
  %33 = load i32, ptr %32, align 8, !tbaa !81
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %24, %31, %25
  switch i32 %2, label %47 [
    i32 1, label %37
    i32 2, label %42
  ]

37:                                               ; preds = %36
  %38 = load i32, ptr %10, align 8, !tbaa !77
  %39 = getelementptr inbounds %struct.Sequence, ptr %17, i64 0, i32 16
  %40 = load i32, ptr %39, align 4, !tbaa !51
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %50, label %47

42:                                               ; preds = %36
  %43 = load i32, ptr %9, align 4, !tbaa !51
  %44 = getelementptr inbounds %struct.Sequence, ptr %17, i64 0, i32 15
  %45 = load i32, ptr %44, align 8, !tbaa !77
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %50, label %47

47:                                               ; preds = %16, %19, %30, %31, %42, %37, %36
  %48 = load ptr, ptr %17, align 8, !tbaa !76
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %16, !llvm.loop !82

50:                                               ; preds = %37, %42, %47, %7, %4
  %51 = phi ptr [ null, %4 ], [ null, %7 ], [ null, %47 ], [ %17, %42 ], [ %17, %37 ]
  ret ptr %51
}

; Function Attrs: nounwind uwtable
define dso_local ptr @find_nearest_seq(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #1 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %0, i8 noundef zeroext 0) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %2, align 4, !tbaa !43
  %8 = icmp eq ptr %7, null
  br i1 %8, label %99, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1
  %11 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1, i32 1
  %12 = load float, ptr %11, align 4, !tbaa !52
  %13 = load float, ptr %10, align 4, !tbaa !44
  %14 = fsub float %12, %13
  %15 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 4
  %16 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 4, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !83
  %18 = load i32, ptr %15, align 4, !tbaa !84
  %19 = sub nsw i32 %17, %18
  %20 = sitofp i32 %19 to float
  %21 = fdiv float %14, %20
  %22 = load i32, ptr %3, align 4, !tbaa !43
  %23 = sitofp i32 %22 to float
  %24 = getelementptr inbounds i32, ptr %3, i64 1
  %25 = load i32, ptr %24, align 4, !tbaa !43
  %26 = sitofp i32 %25 to float
  call void @UI_view2d_region_to_view(ptr noundef %1, float noundef %23, float noundef %26, ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  %27 = load ptr, ptr %7, align 8, !tbaa !74
  %28 = load ptr, ptr %27, align 8, !tbaa !76
  %29 = icmp eq ptr %28, null
  br i1 %29, label %99, label %30

30:                                               ; preds = %9
  %31 = load float, ptr %6, align 4, !tbaa !85
  %32 = fptosi float %31 to i32
  %33 = load float, ptr %5, align 4
  br label %34

34:                                               ; preds = %30, %94
  %35 = phi ptr [ %28, %30 ], [ %95, %94 ]
  %36 = getelementptr inbounds %struct.Sequence, ptr %35, i64 0, i32 13
  %37 = load i32, ptr %36, align 8, !tbaa !46
  %38 = icmp eq i32 %37, %32
  br i1 %38, label %39, label %94

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.Sequence, ptr %35, i64 0, i32 15
  %41 = load i32, ptr %40, align 8, !tbaa !77
  %42 = getelementptr inbounds %struct.Sequence, ptr %35, i64 0, i32 16
  %43 = load i32, ptr %42, align 4, !tbaa !51
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = sitofp i32 %41 to float
  %47 = fcmp ult float %33, %46
  %48 = sitofp i32 %43 to float
  %49 = fcmp ugt float %33, %48
  %50 = or i1 %47, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %45, %39
  %52 = icmp sgt i32 %41, %43
  br i1 %52, label %53, label %94

53:                                               ; preds = %51
  %54 = sitofp i32 %41 to float
  %55 = fcmp ugt float %33, %54
  %56 = sitofp i32 %43 to float
  %57 = fcmp ult float %33, %56
  %58 = or i1 %55, %57
  br i1 %58, label %94, label %59

59:                                               ; preds = %53, %45
  %60 = call zeroext i8 @BKE_sequence_tx_test(ptr noundef nonnull %35) #13
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %99, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.Sequence, ptr %35, i64 0, i32 16
  %64 = getelementptr inbounds %struct.Sequence, ptr %35, i64 0, i32 15
  %65 = getelementptr inbounds %struct.Sequence, ptr %35, i64 0, i32 19
  %66 = load float, ptr %65, align 8, !tbaa !86
  %67 = load i32, ptr %64, align 8, !tbaa !77
  %68 = load i32, ptr %63, align 4, !tbaa !51
  %69 = sub nsw i32 %67, %68
  %70 = call i32 @llvm.abs.i32(i32 %69, i1 true)
  %71 = sitofp i32 %70 to float
  %72 = fdiv float %71, %21
  %73 = fcmp ogt float %72, 1.600000e+01
  br i1 %73, label %74, label %99

74:                                               ; preds = %62
  %75 = fdiv float %71, 3.000000e+00
  %76 = fmul float %21, 3.000000e+01
  %77 = fcmp olt float %75, %76
  br i1 %77, label %84, label %78

78:                                               ; preds = %74
  %79 = fmul float %21, 7.000000e+00
  %80 = fcmp olt float %66, %79
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = fcmp ogt float %66, %76
  br i1 %82, label %83, label %84

83:                                               ; preds = %81
  br label %84

84:                                               ; preds = %78, %74, %83, %81
  %85 = phi float [ %76, %83 ], [ %66, %81 ], [ %75, %74 ], [ %79, %78 ]
  %86 = sitofp i32 %67 to float
  %87 = fadd float %85, %86
  %88 = load float, ptr %5, align 4, !tbaa !85
  %89 = fcmp ult float %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %84
  %91 = sitofp i32 %68 to float
  %92 = fsub float %91, %85
  %93 = fcmp ugt float %92, %88
  br i1 %93, label %99, label %97

94:                                               ; preds = %51, %53, %34
  %95 = load ptr, ptr %35, align 8, !tbaa !76
  %96 = icmp eq ptr %95, null
  br i1 %96, label %99, label %34, !llvm.loop !87

97:                                               ; preds = %90, %84
  %98 = phi i32 [ 1, %84 ], [ 2, %90 ]
  store i32 %98, ptr %2, align 4, !tbaa !43
  br label %99

99:                                               ; preds = %94, %97, %9, %59, %90, %62, %4
  %100 = phi ptr [ null, %4 ], [ %35, %62 ], [ %35, %90 ], [ %35, %59 ], [ null, %9 ], [ %35, %97 ], [ null, %94 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret ptr %100
}

declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BKE_sequence_tx_test(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nounwind uwtable
define dso_local void @ED_sequencer_deselect_all(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca %struct.SeqIterator, align 8
  %3 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %0, i8 noundef zeroext 0) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #13
  call void @BKE_sequence_iterator_begin(ptr noundef nonnull %3, ptr noundef nonnull %2, i8 noundef zeroext 1) #13
  %6 = getelementptr inbounds %struct.SeqIterator, ptr %2, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !88
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.SeqIterator, ptr %2, i64 0, i32 3
  br label %11

11:                                               ; preds = %9, %11
  %12 = load ptr, ptr %10, align 8, !tbaa !90
  %13 = getelementptr inbounds %struct.Sequence, ptr %12, i64 0, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !81
  %15 = and i32 %14, -8
  store i32 %15, ptr %13, align 8, !tbaa !81
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %2) #13
  %16 = load i32, ptr %6, align 8, !tbaa !88
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %11, !llvm.loop !91

18:                                               ; preds = %11, %5
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %2) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #13
  br label %19

19:                                               ; preds = %1, %18
  ret void
}

declare void @BKE_sequence_iterator_begin(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @BKE_sequence_iterator_next(ptr noundef) local_unnamed_addr #3

declare void @BKE_sequence_iterator_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @recurs_sel_seq(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 36
  %3 = load ptr, ptr %2, align 8, !tbaa !76
  %4 = icmp eq ptr %3, null
  br i1 %4, label %33, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 5
  br label %7

7:                                                ; preds = %5, %30
  %8 = phi ptr [ %3, %5 ], [ %31, %30 ]
  %9 = load i32, ptr %6, align 8, !tbaa !81
  %10 = and i32 %9, 6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !81
  %15 = and i32 %14, -8
  store i32 %15, ptr %13, align 8, !tbaa !81
  br label %25

16:                                               ; preds = %7
  %17 = and i32 %9, 1
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !81
  br i1 %18, label %23, label %21

21:                                               ; preds = %16
  %22 = or i32 %20, 1
  store i32 %22, ptr %19, align 8, !tbaa !81
  br label %25

23:                                               ; preds = %16
  %24 = and i32 %20, -8
  store i32 %24, ptr %19, align 8, !tbaa !81
  br label %25

25:                                               ; preds = %21, %23, %12
  %26 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 36
  %27 = load ptr, ptr %26, align 8, !tbaa !92
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @recurs_sel_seq(ptr noundef nonnull %8)
  br label %30

30:                                               ; preds = %29, %25
  %31 = load ptr, ptr %8, align 8, !tbaa !76
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %7, !llvm.loop !93

33:                                               ; preds = %30, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ED_space_sequencer_maskedit_mask_poll(ptr noundef %0) local_unnamed_addr #1 {
  %2 = tail call ptr @CTX_wm_space_seq(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %6 = getelementptr inbounds %struct.SpaceSeq, ptr %2, i64 0, i32 9
  %7 = load i16, ptr %6, align 8, !tbaa !94
  %8 = icmp eq i16 %7, 1
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = tail call ptr @BKE_sequencer_mask_get(ptr noundef %5) #13
  %11 = icmp ne ptr %10, null
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %1, %4, %9
  %14 = phi i32 [ 0, %1 ], [ %12, %9 ], [ 0, %4 ]
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ED_space_sequencer_maskedit_poll(ptr noundef %0) local_unnamed_addr #1 {
  %2 = tail call ptr @CTX_wm_space_seq(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %6 = getelementptr inbounds %struct.SpaceSeq, ptr %2, i64 0, i32 9
  %7 = load i16, ptr %6, align 8, !tbaa !94
  %8 = icmp eq i16 %7, 1
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = tail call ptr @BKE_sequencer_mask_get(ptr noundef %5) #13
  %11 = icmp ne ptr %10, null
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %9, %4, %1
  %14 = phi i32 [ 0, %1 ], [ %12, %9 ], [ 0, %4 ]
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @ED_space_sequencer_check_show_maskedit(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.SpaceSeq, ptr %0, i64 0, i32 9
  %6 = load i16, ptr %5, align 8, !tbaa !94
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = tail call ptr @BKE_sequencer_mask_get(ptr noundef %1) #13
  %10 = icmp ne ptr %9, null
  %11 = zext i1 %10 to i8
  br label %12

12:                                               ; preds = %2, %4, %8
  %13 = phi i8 [ %11, %8 ], [ 0, %4 ], [ 0, %2 ]
  ret i8 %13
}

declare ptr @BKE_sequencer_mask_get(ptr noundef) local_unnamed_addr #3

declare ptr @CTX_wm_space_seq(ptr noundef) local_unnamed_addr #3

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @ED_space_sequencer_check_show_imbuf(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.SpaceSeq, ptr %0, i64 0, i32 15
  %3 = load i32, ptr %2, align 8, !tbaa !98
  %4 = and i32 %3, -2
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.SpaceSeq, ptr %0, i64 0, i32 9
  %8 = load i16, ptr %7, align 8, !tbaa !94
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = icmp eq i16 %8, 1
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %1, %6, %10
  %14 = phi i8 [ 1, %6 ], [ %12, %10 ], [ 0, %1 ]
  ret i8 %14
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @seq_effect_find_selected(ptr noundef %0, ptr noundef readnone %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #1 {
  %8 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %0, i8 noundef zeroext 0) #13
  store ptr null, ptr %6, align 8, !tbaa !76
  %9 = icmp eq ptr %1, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call ptr @BKE_sequencer_active_get(ptr noundef %0) #13
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi ptr [ null, %7 ], [ %11, %10 ]
  %14 = load ptr, ptr %8, align 8, !tbaa !74
  %15 = load ptr, ptr %14, align 8, !tbaa !76
  %16 = icmp eq ptr %15, null
  br i1 %16, label %51, label %17

17:                                               ; preds = %12, %45
  %18 = phi ptr [ %49, %45 ], [ %15, %12 ]
  %19 = phi ptr [ %48, %45 ], [ null, %12 ]
  %20 = phi ptr [ %47, %45 ], [ %13, %12 ]
  %21 = phi ptr [ %46, %45 ], [ null, %12 ]
  %22 = getelementptr inbounds %struct.Sequence, ptr %18, i64 0, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !81
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %45, label %26

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.Sequence, ptr %18, i64 0, i32 6
  %28 = load i32, ptr %27, align 4, !tbaa !99
  %29 = icmp eq i32 %28, 4
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = tail call i32 @BKE_sequence_effect_get_num_inputs(i32 noundef %2) #13
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  store ptr @.str.51, ptr %6, align 8, !tbaa !76
  br label %90

34:                                               ; preds = %30, %26
  %35 = icmp eq ptr %18, %1
  %36 = icmp eq ptr %18, %20
  %37 = select i1 %35, i1 true, i1 %36
  br i1 %37, label %45, label %38

38:                                               ; preds = %34
  %39 = icmp eq ptr %20, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %38
  %41 = icmp eq ptr %21, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %40
  %43 = icmp eq ptr %19, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %42
  store ptr @.str.52, ptr %6, align 8, !tbaa !76
  br label %90

45:                                               ; preds = %42, %40, %38, %17, %34
  %46 = phi ptr [ %21, %34 ], [ %21, %17 ], [ %21, %38 ], [ %18, %40 ], [ %21, %42 ]
  %47 = phi ptr [ %20, %34 ], [ %20, %17 ], [ %18, %38 ], [ %20, %40 ], [ %20, %42 ]
  %48 = phi ptr [ %19, %34 ], [ %19, %17 ], [ %19, %38 ], [ %19, %40 ], [ %18, %42 ]
  %49 = load ptr, ptr %18, align 8, !tbaa !76
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %17, !llvm.loop !100

51:                                               ; preds = %45, %12
  %52 = phi ptr [ null, %12 ], [ %46, %45 ]
  %53 = phi ptr [ %13, %12 ], [ %47, %45 ]
  %54 = phi ptr [ null, %12 ], [ %48, %45 ]
  %55 = icmp ne ptr %54, null
  %56 = icmp ne ptr %53, null
  %57 = select i1 %55, i1 %56, i1 false
  %58 = select i1 %57, ptr %54, ptr %53
  %59 = select i1 %57, ptr %53, ptr %54
  %60 = tail call i32 @BKE_sequence_effect_get_num_inputs(i32 noundef %2) #13
  switch i32 %60, label %80 [
    i32 0, label %61
    i32 1, label %62
    i32 2, label %70
  ]

61:                                               ; preds = %51
  store ptr null, ptr %5, align 8, !tbaa !76
  store ptr null, ptr %4, align 8, !tbaa !76
  store ptr null, ptr %3, align 8, !tbaa !76
  br label %90

62:                                               ; preds = %51
  %63 = icmp eq ptr %58, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %62
  store ptr @.str.53, ptr %6, align 8, !tbaa !76
  br label %90

65:                                               ; preds = %62
  %66 = icmp eq ptr %52, null
  %67 = select i1 %66, ptr %58, ptr %52
  %68 = icmp eq ptr %59, null
  %69 = select i1 %68, ptr %58, ptr %59
  br label %70

70:                                               ; preds = %65, %51
  %71 = phi ptr [ %52, %51 ], [ %67, %65 ]
  %72 = phi ptr [ %59, %51 ], [ %69, %65 ]
  %73 = icmp eq ptr %71, null
  %74 = icmp eq ptr %58, null
  %75 = select i1 %73, i1 true, i1 %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  store ptr @.str.54, ptr %6, align 8, !tbaa !76
  br label %90

77:                                               ; preds = %70
  %78 = icmp eq ptr %72, null
  %79 = select i1 %78, ptr %58, ptr %72
  br label %80

80:                                               ; preds = %77, %51
  %81 = phi ptr [ %52, %51 ], [ %71, %77 ]
  %82 = phi ptr [ %59, %51 ], [ %79, %77 ]
  %83 = icmp eq ptr %81, null
  %84 = icmp eq ptr %58, null
  %85 = select i1 %83, i1 %84, i1 false
  %86 = icmp eq ptr %82, null
  %87 = select i1 %85, i1 %86, i1 false
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  store ptr @.str.55, ptr %6, align 8, !tbaa !76
  br label %90

89:                                               ; preds = %80
  store ptr %81, ptr %3, align 8, !tbaa !76
  store ptr %58, ptr %4, align 8, !tbaa !76
  store ptr %82, ptr %5, align 8, !tbaa !76
  br label %90

90:                                               ; preds = %89, %88, %76, %64, %61, %44, %33
  %91 = phi i32 [ 0, %33 ], [ 0, %44 ], [ 0, %88 ], [ 1, %89 ], [ 0, %76 ], [ 0, %64 ], [ 1, %61 ]
  ret i32 %91
}

declare ptr @BKE_sequencer_active_get(ptr noundef) local_unnamed_addr #3

declare i32 @BKE_sequence_effect_get_num_inputs(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @SEQUENCER_OT_gap_remove(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.56, ptr %0, align 8, !tbaa !101
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.57, ptr %2, align 8, !tbaa !104
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.58, ptr %3, align 8, !tbaa !105
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_gap_remove_exec, ptr %4, align 8, !tbaa !106
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %5, align 8, !tbaa !107
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !108
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !109
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.59, i32 noundef 0, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_gap_remove_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !110
  %6 = tail call i32 @RNA_boolean_get(ptr noundef %5, ptr noundef nonnull @.str.59) #13
  %7 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 0) #13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %37, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !54
  %12 = add nsw i32 %11, 1
  %13 = sitofp i32 %12 to float
  %14 = load ptr, ptr %7, align 8, !tbaa !74
  %15 = load ptr, ptr %14, align 8, !tbaa !76
  %16 = icmp eq ptr %15, null
  br i1 %16, label %37, label %17

17:                                               ; preds = %9, %17
  %18 = phi ptr [ %33, %17 ], [ %15, %9 ]
  %19 = phi float [ %32, %17 ], [ %13, %9 ]
  %20 = phi float [ %26, %17 ], [ 0.000000e+00, %9 ]
  %21 = getelementptr inbounds %struct.Sequence, ptr %18, i64 0, i32 15
  %22 = load i32, ptr %21, align 8, !tbaa !77
  %23 = add nsw i32 %22, -1
  %24 = sitofp i32 %23 to float
  %25 = fcmp ogt float %20, %24
  %26 = select i1 %25, float %24, float %20
  %27 = getelementptr inbounds %struct.Sequence, ptr %18, i64 0, i32 16
  %28 = load i32, ptr %27, align 4, !tbaa !51
  %29 = add nsw i32 %28, 1
  %30 = sitofp i32 %29 to float
  %31 = fcmp olt float %19, %30
  %32 = select i1 %31, float %30, float %19
  %33 = load ptr, ptr %18, align 8, !tbaa !76
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %17, !llvm.loop !78

35:                                               ; preds = %17
  %36 = fptosi float %26 to i32
  br label %37

37:                                               ; preds = %35, %9, %2
  %38 = phi float [ undef, %2 ], [ %13, %9 ], [ %32, %35 ]
  %39 = phi i32 [ undef, %2 ], [ 0, %9 ], [ %36, %35 ]
  %40 = fptosi float %38 to i32
  %41 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  %42 = load i32, ptr %41, align 8, !tbaa !112
  %43 = icmp slt i32 %42, %39
  br i1 %43, label %51, label %44

44:                                               ; preds = %37, %48
  %45 = phi i32 [ %49, %48 ], [ %42, %37 ]
  %46 = tail call i32 @BKE_sequencer_evaluate_frame(ptr noundef %3, i32 noundef %45) #13
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = add nsw i32 %45, -1
  %50 = icmp sgt i32 %45, %39
  br i1 %50, label %44, label %51, !llvm.loop !113

51:                                               ; preds = %48, %44, %37
  %52 = phi i32 [ %42, %37 ], [ %49, %48 ], [ %45, %44 ]
  %53 = phi i8 [ 0, %37 ], [ 0, %48 ], [ 1, %44 ]
  %54 = icmp slt i32 %52, %40
  br i1 %54, label %55, label %96

55:                                               ; preds = %51
  %56 = and i32 %6, 255
  %57 = icmp eq i32 %56, 0
  br label %58

58:                                               ; preds = %55, %92
  %59 = phi i32 [ %52, %55 ], [ %94, %92 ]
  %60 = phi i8 [ %53, %55 ], [ %93, %92 ]
  %61 = icmp eq i8 %60, 0
  %62 = tail call i32 @BKE_sequencer_evaluate_frame(ptr noundef %3, i32 noundef %59) #13
  %63 = icmp eq i32 %62, 0
  br i1 %61, label %64, label %66

64:                                               ; preds = %58
  %65 = select i1 %63, i8 %60, i8 1
  br label %92

66:                                               ; preds = %58
  br i1 %63, label %67, label %92

67:                                               ; preds = %66, %88
  %68 = tail call i32 @BKE_sequencer_evaluate_frame(ptr noundef %3, i32 noundef %59) #13
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %91

70:                                               ; preds = %67
  %71 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 0) #13
  %72 = icmp eq ptr %71, null
  br i1 %72, label %88, label %73

73:                                               ; preds = %70
  %74 = load ptr, ptr %71, align 8, !tbaa !74
  %75 = load ptr, ptr %74, align 8, !tbaa !76
  %76 = icmp eq ptr %75, null
  br i1 %76, label %88, label %77

77:                                               ; preds = %73, %84
  %78 = phi ptr [ %86, %84 ], [ %75, %73 ]
  %79 = phi i8 [ %85, %84 ], [ 0, %73 ]
  %80 = getelementptr inbounds %struct.Sequence, ptr %78, i64 0, i32 15
  %81 = load i32, ptr %80, align 8, !tbaa !77
  %82 = icmp slt i32 %81, %59
  br i1 %82, label %84, label %83

83:                                               ; preds = %77
  tail call void @BKE_sequence_translate(ptr noundef %3, ptr noundef nonnull %78, i32 noundef -1) #13
  tail call void @BKE_sequence_calc(ptr noundef %3, ptr noundef nonnull %78) #13
  br label %84

84:                                               ; preds = %83, %77
  %85 = phi i8 [ 1, %83 ], [ %79, %77 ]
  %86 = load ptr, ptr %78, align 8, !tbaa !76
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %77, !llvm.loop !114

88:                                               ; preds = %84, %70, %73
  %89 = phi i8 [ 0, %70 ], [ 0, %73 ], [ %85, %84 ]
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %96, label %67, !llvm.loop !115

91:                                               ; preds = %67
  br i1 %57, label %96, label %92

92:                                               ; preds = %64, %91, %66
  %93 = phi i8 [ %60, %91 ], [ %60, %66 ], [ %65, %64 ]
  %94 = add i32 %59, 1
  %95 = icmp eq i32 %94, %40
  br i1 %95, label %96, label %58, !llvm.loop !116

96:                                               ; preds = %92, %91, %88, %51
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %3) #13
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local i32 @sequencer_edit_poll(ptr noundef %0) #1 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %3 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %2, i8 noundef zeroext 0) #13
  %4 = icmp ne ptr %3, null
  %5 = zext i1 %4 to i32
  ret i32 %5
}

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @SEQUENCER_OT_gap_insert(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.62, ptr %0, align 8, !tbaa !101
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.63, ptr %2, align 8, !tbaa !104
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.64, ptr %3, align 8, !tbaa !105
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_gap_insert_exec, ptr %4, align 8, !tbaa !106
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %5, align 8, !tbaa !107
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !108
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !109
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.65, i32 noundef 10, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.67, i32 noundef 0, i32 noundef 1000) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_gap_insert_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !110
  %6 = tail call i32 @RNA_int_get(ptr noundef %5, ptr noundef nonnull @.str.65) #13
  %7 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !112
  %9 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 0) #13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %9, align 8, !tbaa !74
  %13 = load ptr, ptr %12, align 8, !tbaa !76
  %14 = icmp eq ptr %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %11, %21
  %16 = phi ptr [ %22, %21 ], [ %13, %11 ]
  %17 = getelementptr inbounds %struct.Sequence, ptr %16, i64 0, i32 15
  %18 = load i32, ptr %17, align 8, !tbaa !77
  %19 = icmp slt i32 %18, %8
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  tail call void @BKE_sequence_translate(ptr noundef %3, ptr noundef nonnull %16, i32 noundef %6) #13
  tail call void @BKE_sequence_calc(ptr noundef %3, ptr noundef nonnull %16) #13
  br label %21

21:                                               ; preds = %20, %15
  %22 = load ptr, ptr %16, align 8, !tbaa !76
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %15, !llvm.loop !114

24:                                               ; preds = %21, %2, %11
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %3) #13
  ret i32 4
}

declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @sequencer_strip_has_path_poll(ptr noundef %0) #1 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %3 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %2, i8 noundef zeroext 0) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Editing, ptr %3, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !117
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Sequence, ptr %7, i64 0, i32 6
  %11 = load i32, ptr %10, align 4, !tbaa !99
  switch i32 %11, label %12 [
    i32 3, label %15
    i32 0, label %15
    i32 4, label %15
  ]

12:                                               ; preds = %9
  %13 = icmp eq i32 %11, 5
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %9, %9, %9, %12, %5, %1
  %16 = phi i32 [ 0, %5 ], [ 0, %1 ], [ 1, %9 ], [ %14, %12 ], [ 1, %9 ], [ 1, %9 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @sequencer_view_poll(ptr noundef %0) #1 {
  %2 = tail call ptr @CTX_wm_space_seq(ptr noundef %0) #13
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 0) #13
  %5 = icmp ne ptr %4, null
  %6 = icmp ne ptr %2, null
  %7 = select i1 %5, i1 %6, i1 false
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.SpaceSeq, ptr %2, i64 0, i32 9
  %10 = load i16, ptr %9, align 8, !tbaa !94
  %11 = icmp eq i16 %10, 1
  br i1 %11, label %13, label %12

12:                                               ; preds = %8, %1
  br label %13

13:                                               ; preds = %8, %12
  %14 = phi i32 [ 0, %12 ], [ 1, %8 ]
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define dso_local void @SEQUENCER_OT_snap(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.68, ptr %0, align 8, !tbaa !101
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.69, ptr %2, align 8, !tbaa !104
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.70, ptr %3, align 8, !tbaa !105
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sequencer_snap_invoke, ptr %4, align 8, !tbaa !118
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_snap_exec, ptr %5, align 8, !tbaa !106
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %6, align 8, !tbaa !107
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !108
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !109
  %10 = tail call ptr @RNA_def_int(ptr noundef %9, ptr noundef nonnull @.str.71, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.70, i32 noundef -2147483648, i32 noundef 2147483647) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_snap_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #1 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !112
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !110
  tail call void @RNA_int_set(ptr noundef %8, ptr noundef nonnull @.str.71, i32 noundef %6) #13
  %9 = tail call i32 @sequencer_snap_exec(ptr noundef %0, ptr noundef %1)
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_snap_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 0) #13
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !110
  %7 = tail call i32 @RNA_int_get(ptr noundef %6, ptr noundef nonnull @.str.71) #13
  %8 = load ptr, ptr %4, align 8, !tbaa !74
  %9 = load ptr, ptr %8, align 8, !tbaa !76
  %10 = icmp eq ptr %9, null
  br i1 %10, label %54, label %11

11:                                               ; preds = %2, %51
  %12 = phi ptr [ %52, %51 ], [ %9, %2 ]
  %13 = getelementptr inbounds %struct.Sequence, ptr %12, i64 0, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !81
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %51, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.Sequence, ptr %12, i64 0, i32 14
  %19 = load i32, ptr %18, align 4, !tbaa !119
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %14, 16384
  %22 = icmp eq i32 %21, 0
  %23 = or i1 %22, %20
  br i1 %23, label %24, label %51

24:                                               ; preds = %17
  %25 = tail call zeroext i8 @BKE_sequence_tx_test(ptr noundef nonnull %12) #13
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %51, label %27

27:                                               ; preds = %24
  %28 = load i32, ptr %13, align 8, !tbaa !81
  %29 = and i32 %28, 6
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.Sequence, ptr %12, i64 0, i32 9
  %33 = load i32, ptr %32, align 8, !tbaa !120
  %34 = getelementptr inbounds %struct.Sequence, ptr %12, i64 0, i32 11
  %35 = load i32, ptr %34, align 8, !tbaa !34
  %36 = getelementptr inbounds %struct.Sequence, ptr %12, i64 0, i32 8
  %37 = load i32, ptr %36, align 4, !tbaa !49
  %38 = add i32 %7, %35
  %39 = add i32 %33, %37
  %40 = sub i32 %38, %39
  tail call void @BKE_sequence_translate(ptr noundef %3, ptr noundef nonnull %12, i32 noundef %40) #13
  br label %50

41:                                               ; preds = %27
  %42 = and i32 %28, 2
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  tail call void @BKE_sequence_tx_set_final_left(ptr noundef nonnull %12, i32 noundef %7) #13
  br label %46

45:                                               ; preds = %41
  tail call void @BKE_sequence_tx_set_final_right(ptr noundef nonnull %12, i32 noundef %7) #13
  br label %46

46:                                               ; preds = %45, %44
  %47 = load i32, ptr %13, align 8, !tbaa !81
  %48 = and i32 %47, 2
  %49 = and i32 %47, 4
  tail call void @BKE_sequence_tx_handle_xlimits(ptr noundef nonnull %12, i32 noundef %48, i32 noundef %49) #13
  br label %50

50:                                               ; preds = %46, %31
  tail call void @BKE_sequence_calc(ptr noundef %3, ptr noundef nonnull %12) #13
  br label %51

51:                                               ; preds = %17, %11, %24, %50
  %52 = load ptr, ptr %12, align 8, !tbaa !76
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %11, !llvm.loop !121

54:                                               ; preds = %51, %2
  %55 = load ptr, ptr %4, align 8, !tbaa !74
  %56 = load ptr, ptr %55, align 8, !tbaa !76
  %57 = icmp eq ptr %56, null
  br i1 %57, label %117, label %58

58:                                               ; preds = %54, %114
  %59 = phi ptr [ %115, %114 ], [ %56, %54 ]
  %60 = getelementptr inbounds %struct.Sequence, ptr %59, i64 0, i32 5
  %61 = load i32, ptr %60, align 8, !tbaa !81
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %79, label %64

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.Sequence, ptr %59, i64 0, i32 14
  %66 = load i32, ptr %65, align 4, !tbaa !119
  %67 = icmp ne i32 %66, 0
  %68 = and i32 %61, 16384
  %69 = icmp eq i32 %68, 0
  %70 = or i1 %69, %67
  br i1 %70, label %71, label %79

71:                                               ; preds = %64
  %72 = and i32 %61, -9
  store i32 %72, ptr %60, align 8, !tbaa !81
  %73 = load ptr, ptr %4, align 8, !tbaa !74
  %74 = tail call zeroext i8 @BKE_sequence_test_overlap(ptr noundef %73, ptr noundef nonnull %59) #13
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %114, label %76

76:                                               ; preds = %71
  %77 = load ptr, ptr %4, align 8, !tbaa !74
  %78 = tail call zeroext i8 @BKE_sequence_base_shuffle(ptr noundef %77, ptr noundef nonnull %59, ptr noundef %3) #13
  br label %114

79:                                               ; preds = %64, %58
  %80 = getelementptr inbounds %struct.Sequence, ptr %59, i64 0, i32 6
  %81 = load i32, ptr %80, align 4, !tbaa !99
  %82 = and i32 %81, 8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %114, label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.Sequence, ptr %59, i64 0, i32 33
  %86 = load ptr, ptr %85, align 8, !tbaa !122
  %87 = icmp eq ptr %86, null
  br i1 %87, label %94, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.Sequence, ptr %86, i64 0, i32 5
  %90 = load i32, ptr %89, align 8, !tbaa !81
  %91 = and i32 %90, 1
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %88
  tail call void @BKE_sequence_calc(ptr noundef %3, ptr noundef nonnull %59) #13
  br label %114

94:                                               ; preds = %88, %84
  %95 = getelementptr inbounds %struct.Sequence, ptr %59, i64 0, i32 34
  %96 = load ptr, ptr %95, align 8, !tbaa !123
  %97 = icmp eq ptr %96, null
  br i1 %97, label %104, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.Sequence, ptr %96, i64 0, i32 5
  %100 = load i32, ptr %99, align 8, !tbaa !81
  %101 = and i32 %100, 1
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %98
  tail call void @BKE_sequence_calc(ptr noundef %3, ptr noundef nonnull %59) #13
  br label %114

104:                                              ; preds = %98, %94
  %105 = getelementptr inbounds %struct.Sequence, ptr %59, i64 0, i32 35
  %106 = load ptr, ptr %105, align 8, !tbaa !124
  %107 = icmp eq ptr %106, null
  br i1 %107, label %114, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.Sequence, ptr %106, i64 0, i32 5
  %110 = load i32, ptr %109, align 8, !tbaa !81
  %111 = and i32 %110, 1
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %108
  tail call void @BKE_sequence_calc(ptr noundef %3, ptr noundef nonnull %59) #13
  br label %114

114:                                              ; preds = %76, %71, %93, %104, %108, %113, %103, %79
  %115 = load ptr, ptr %59, align 8, !tbaa !76
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %58, !llvm.loop !125

117:                                              ; preds = %114, %54
  tail call void @BKE_sequencer_sort(ptr noundef %3) #13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %3) #13
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @SEQUENCER_OT_slip(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.73, ptr %0, align 8, !tbaa !101
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.74, ptr %2, align 8, !tbaa !104
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.75, ptr %3, align 8, !tbaa !105
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sequencer_slip_invoke, ptr %4, align 8, !tbaa !118
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @sequencer_slip_modal, ptr %5, align 8, !tbaa !126
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_slip_exec, ptr %6, align 8, !tbaa !106
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %7, align 8, !tbaa !107
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %8, align 8, !tbaa !108
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !109
  %11 = tail call ptr @RNA_def_int(ptr noundef %10, ptr noundef nonnull @.str.76, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78, i32 noundef -2147483648, i32 noundef 2147483647) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_slip_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %6 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %5, i8 noundef zeroext 0) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  %7 = tail call ptr @UI_view2d_fromcontext(ptr noundef %0) #13
  %8 = load ptr, ptr %6, align 8, !tbaa !74
  %9 = tail call fastcc i32 @slip_count_sequences_rec(ptr noundef %8, i8 noundef zeroext 1)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %92, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !76
  %13 = tail call ptr %12(i64 noundef 56, ptr noundef nonnull @.str.200) #13
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %13, ptr %14, align 8, !tbaa !127
  %15 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !76
  %16 = sext i32 %9 to i64
  %17 = mul nsw i64 %16, 44
  %18 = tail call ptr %15(i64 noundef %17, ptr noundef nonnull @.str.201) #13
  %19 = getelementptr inbounds %struct.SlipData, ptr %13, i64 0, i32 2
  store ptr %18, ptr %19, align 8, !tbaa !128
  %20 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !76
  %21 = shl nsw i64 %16, 3
  %22 = tail call ptr %20(i64 noundef %21, ptr noundef nonnull @.str.202) #13
  %23 = getelementptr inbounds %struct.SlipData, ptr %13, i64 0, i32 3
  store ptr %22, ptr %23, align 8, !tbaa !130
  %24 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !76
  %25 = tail call ptr %24(i64 noundef %16, ptr noundef nonnull @.str.203) #13
  %26 = getelementptr inbounds %struct.SlipData, ptr %13, i64 0, i32 4
  store ptr %25, ptr %26, align 8, !tbaa !131
  %27 = getelementptr inbounds %struct.SlipData, ptr %13, i64 0, i32 5
  store i32 %9, ptr %27, align 8, !tbaa !132
  %28 = load ptr, ptr %6, align 8, !tbaa !74
  %29 = load ptr, ptr %23, align 8, !tbaa !130
  %30 = tail call fastcc i32 @slip_add_sequences_rec(ptr noundef %28, ptr noundef %29, ptr noundef %25, i32 noundef 0, i8 noundef zeroext 1)
  %31 = icmp sgt i32 %9, 0
  br i1 %31, label %32, label %75

32:                                               ; preds = %11
  %33 = load ptr, ptr %19, align 8, !tbaa !128
  %34 = load ptr, ptr %23, align 8, !tbaa !130
  %35 = zext nneg i32 %9 to i64
  br label %36

36:                                               ; preds = %32, %36
  %37 = phi i64 [ 0, %32 ], [ %73, %36 ]
  %38 = getelementptr inbounds %struct.TransSeq, ptr %33, i64 %37
  %39 = getelementptr inbounds ptr, ptr %34, i64 %37
  %40 = load ptr, ptr %39, align 8, !tbaa !76
  %41 = getelementptr inbounds %struct.Sequence, ptr %40, i64 0, i32 8
  %42 = load i32, ptr %41, align 4, !tbaa !49
  store i32 %42, ptr %38, align 4, !tbaa !133
  %43 = getelementptr inbounds %struct.Sequence, ptr %40, i64 0, i32 13
  %44 = load i32, ptr %43, align 8, !tbaa !46
  %45 = getelementptr inbounds %struct.TransSeq, ptr %33, i64 %37, i32 1
  store i32 %44, ptr %45, align 4, !tbaa !135
  %46 = getelementptr inbounds %struct.Sequence, ptr %40, i64 0, i32 11
  %47 = load i32, ptr %46, align 8, !tbaa !34
  %48 = getelementptr inbounds %struct.TransSeq, ptr %33, i64 %37, i32 2
  store i32 %47, ptr %48, align 4, !tbaa !136
  %49 = getelementptr inbounds %struct.Sequence, ptr %40, i64 0, i32 12
  %50 = load i32, ptr %49, align 4, !tbaa !48
  %51 = getelementptr inbounds %struct.TransSeq, ptr %33, i64 %37, i32 3
  store i32 %50, ptr %51, align 4, !tbaa !137
  %52 = getelementptr inbounds %struct.Sequence, ptr %40, i64 0, i32 15
  %53 = load i32, ptr %52, align 8, !tbaa !77
  %54 = getelementptr inbounds %struct.TransSeq, ptr %33, i64 %37, i32 4
  store i32 %53, ptr %54, align 4, !tbaa !138
  %55 = getelementptr inbounds %struct.Sequence, ptr %40, i64 0, i32 16
  %56 = load i32, ptr %55, align 4, !tbaa !51
  %57 = getelementptr inbounds %struct.TransSeq, ptr %33, i64 %37, i32 5
  store i32 %56, ptr %57, align 4, !tbaa !139
  %58 = getelementptr inbounds %struct.Sequence, ptr %40, i64 0, i32 9
  %59 = load i32, ptr %58, align 8, !tbaa !120
  %60 = getelementptr inbounds %struct.TransSeq, ptr %33, i64 %37, i32 6
  store i32 %59, ptr %60, align 4, !tbaa !140
  %61 = getelementptr inbounds %struct.Sequence, ptr %40, i64 0, i32 10
  %62 = load i32, ptr %61, align 4, !tbaa !141
  %63 = getelementptr inbounds %struct.TransSeq, ptr %33, i64 %37, i32 7
  store i32 %62, ptr %63, align 4, !tbaa !142
  %64 = getelementptr inbounds %struct.Sequence, ptr %40, i64 0, i32 44
  %65 = load i32, ptr %64, align 8, !tbaa !143
  %66 = getelementptr inbounds %struct.TransSeq, ptr %33, i64 %37, i32 8
  store i32 %65, ptr %66, align 4, !tbaa !144
  %67 = getelementptr inbounds %struct.Sequence, ptr %40, i64 0, i32 45
  %68 = load i32, ptr %67, align 4, !tbaa !145
  %69 = getelementptr inbounds %struct.TransSeq, ptr %33, i64 %37, i32 9
  store i32 %68, ptr %69, align 4, !tbaa !146
  %70 = getelementptr inbounds %struct.Sequence, ptr %40, i64 0, i32 7
  %71 = load i32, ptr %70, align 8, !tbaa !50
  %72 = getelementptr inbounds %struct.TransSeq, ptr %33, i64 %37, i32 10
  store i32 %71, ptr %72, align 4, !tbaa !147
  %73 = add nuw nsw i64 %37, 1
  %74 = icmp eq i64 %73, %35
  br i1 %74, label %75, label %36, !llvm.loop !148

75:                                               ; preds = %36, %11
  %76 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %77 = load i32, ptr %76, align 4, !tbaa !43
  %78 = sitofp i32 %77 to float
  %79 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %80 = load i32, ptr %79, align 4, !tbaa !43
  %81 = sitofp i32 %80 to float
  %82 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef %7, float noundef %78, float noundef %81, ptr noundef nonnull %4, ptr noundef nonnull %82) #13
  %83 = load i32, ptr %76, align 4, !tbaa !43
  store i32 %83, ptr %13, align 4, !tbaa !43
  %84 = load i32, ptr %79, align 4, !tbaa !43
  %85 = getelementptr inbounds i32, ptr %13, i64 1
  store i32 %84, ptr %85, align 4, !tbaa !43
  %86 = getelementptr inbounds %struct.SlipData, ptr %13, i64 0, i32 1
  %87 = load float, ptr %4, align 4, !tbaa !85
  store float %87, ptr %86, align 4, !tbaa !85
  %88 = load float, ptr %82, align 4, !tbaa !85
  %89 = getelementptr inbounds %struct.SlipData, ptr %13, i64 0, i32 1, i64 1
  store float %88, ptr %89, align 4, !tbaa !85
  %90 = getelementptr inbounds %struct.SlipData, ptr %13, i64 0, i32 6
  store i8 0, ptr %90, align 4, !tbaa !149
  %91 = call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #13
  br label %92

92:                                               ; preds = %3, %75
  %93 = phi i32 [ 1, %75 ], [ 2, %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  ret i32 %93
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_slip_modal(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = alloca [2 x float], align 4
  %5 = alloca [40 x i8], align 16
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !127
  %9 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %11 = load i16, ptr %10, align 8, !tbaa !150
  switch i16 %11, label %149 [
    i16 4, label %12
    i16 1, label %46
    i16 218, label %60
    i16 3, label %60
    i16 216, label %139
    i16 217, label %139
  ]

12:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  %13 = tail call ptr @UI_view2d_fromcontext(ptr noundef %0) #13
  %14 = getelementptr inbounds %struct.SlipData, ptr %8, i64 0, i32 6
  %15 = load i8, ptr %14, align 4, !tbaa !149
  %16 = icmp eq i8 %15, 0
  %17 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %18 = load i32, ptr %17, align 4, !tbaa !43
  br i1 %16, label %27, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.SlipData, ptr %8, i64 0, i32 7
  %21 = load i32, ptr %20, align 8, !tbaa !153
  %22 = sub nsw i32 %18, %21
  %23 = sitofp i32 %22 to float
  %24 = fmul float %23, 0x3FB99999A0000000
  %25 = fptosi float %24 to i32
  %26 = add nsw i32 %21, %25
  br label %27

27:                                               ; preds = %12, %19
  %28 = phi i32 [ %26, %19 ], [ %18, %12 ]
  %29 = sitofp i32 %28 to float
  %30 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef %13, float noundef %29, float noundef 0.000000e+00, ptr noundef nonnull %4, ptr noundef nonnull %30) #13
  %31 = load float, ptr %4, align 4, !tbaa !85
  %32 = getelementptr inbounds %struct.SlipData, ptr %8, i64 0, i32 1
  %33 = load float, ptr %32, align 8, !tbaa !85
  %34 = fsub float %31, %33
  %35 = fptosi float %34 to i32
  %36 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !110
  call void @RNA_int_set(ptr noundef %37, ptr noundef nonnull @.str.76, i32 noundef %35) #13
  %38 = icmp eq ptr %9, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #13
  %40 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 40, ptr noundef nonnull @.str.204, i32 noundef %35) #13
  call void @ED_area_headerprint(ptr noundef nonnull %9, ptr noundef nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #13
  br label %41

41:                                               ; preds = %39, %27
  %42 = call fastcc zeroext i8 @sequencer_slip_recursively(ptr noundef %6, ptr noundef %8, i32 noundef %35), !range !154
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %6) #13
  br label %45

45:                                               ; preds = %44, %41
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br label %149

46:                                               ; preds = %3
  %47 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  %48 = getelementptr inbounds %struct.SlipData, ptr %8, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !130
  tail call void %47(ptr noundef %49) #13
  %50 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  %51 = getelementptr inbounds %struct.SlipData, ptr %8, i64 0, i32 4
  %52 = load ptr, ptr %51, align 8, !tbaa !131
  tail call void %50(ptr noundef %52) #13
  %53 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  %54 = getelementptr inbounds %struct.SlipData, ptr %8, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !128
  tail call void %53(ptr noundef %55) #13
  %56 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  tail call void %56(ptr noundef %8) #13
  store ptr null, ptr %7, align 8, !tbaa !127
  %57 = icmp eq ptr %9, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %46
  tail call void @ED_area_headerprint(ptr noundef nonnull %9, ptr noundef null) #13
  br label %59

59:                                               ; preds = %58, %46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %6) #13
  br label %149

60:                                               ; preds = %3, %3
  %61 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %6, i8 noundef zeroext 0) #13
  %62 = getelementptr inbounds %struct.SlipData, ptr %8, i64 0, i32 5
  %63 = load i32, ptr %62, align 8, !tbaa !132
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.SlipData, ptr %8, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !128
  %68 = getelementptr inbounds %struct.SlipData, ptr %8, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !130
  %70 = zext nneg i32 %63 to i64
  br label %77

71:                                               ; preds = %77, %60
  %72 = getelementptr inbounds %struct.SlipData, ptr %8, i64 0, i32 5
  %73 = load i32, ptr %72, align 8, !tbaa !132
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %125

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.SlipData, ptr %8, i64 0, i32 3
  br label %116

77:                                               ; preds = %65, %77
  %78 = phi i64 [ 0, %65 ], [ %114, %77 ]
  %79 = getelementptr inbounds %struct.TransSeq, ptr %67, i64 %78
  %80 = getelementptr inbounds ptr, ptr %69, i64 %78
  %81 = load ptr, ptr %80, align 8, !tbaa !76
  %82 = load i32, ptr %79, align 4, !tbaa !133
  %83 = getelementptr inbounds %struct.Sequence, ptr %81, i64 0, i32 8
  store i32 %82, ptr %83, align 4, !tbaa !49
  %84 = getelementptr inbounds %struct.TransSeq, ptr %67, i64 %78, i32 1
  %85 = load i32, ptr %84, align 4, !tbaa !135
  %86 = getelementptr inbounds %struct.Sequence, ptr %81, i64 0, i32 13
  store i32 %85, ptr %86, align 8, !tbaa !46
  %87 = getelementptr inbounds %struct.TransSeq, ptr %67, i64 %78, i32 2
  %88 = load i32, ptr %87, align 4, !tbaa !136
  %89 = getelementptr inbounds %struct.Sequence, ptr %81, i64 0, i32 11
  store i32 %88, ptr %89, align 8, !tbaa !34
  %90 = getelementptr inbounds %struct.TransSeq, ptr %67, i64 %78, i32 3
  %91 = load i32, ptr %90, align 4, !tbaa !137
  %92 = getelementptr inbounds %struct.Sequence, ptr %81, i64 0, i32 12
  store i32 %91, ptr %92, align 4, !tbaa !48
  %93 = getelementptr inbounds %struct.TransSeq, ptr %67, i64 %78, i32 4
  %94 = load i32, ptr %93, align 4, !tbaa !138
  %95 = getelementptr inbounds %struct.Sequence, ptr %81, i64 0, i32 15
  store i32 %94, ptr %95, align 8, !tbaa !77
  %96 = getelementptr inbounds %struct.TransSeq, ptr %67, i64 %78, i32 5
  %97 = load i32, ptr %96, align 4, !tbaa !139
  %98 = getelementptr inbounds %struct.Sequence, ptr %81, i64 0, i32 16
  store i32 %97, ptr %98, align 4, !tbaa !51
  %99 = getelementptr inbounds %struct.TransSeq, ptr %67, i64 %78, i32 6
  %100 = load i32, ptr %99, align 4, !tbaa !140
  %101 = getelementptr inbounds %struct.Sequence, ptr %81, i64 0, i32 9
  store i32 %100, ptr %101, align 8, !tbaa !120
  %102 = getelementptr inbounds %struct.TransSeq, ptr %67, i64 %78, i32 7
  %103 = load i32, ptr %102, align 4, !tbaa !142
  %104 = getelementptr inbounds %struct.Sequence, ptr %81, i64 0, i32 10
  store i32 %103, ptr %104, align 4, !tbaa !141
  %105 = getelementptr inbounds %struct.TransSeq, ptr %67, i64 %78, i32 8
  %106 = load i32, ptr %105, align 4, !tbaa !144
  %107 = getelementptr inbounds %struct.Sequence, ptr %81, i64 0, i32 44
  store i32 %106, ptr %107, align 8, !tbaa !143
  %108 = getelementptr inbounds %struct.TransSeq, ptr %67, i64 %78, i32 9
  %109 = load i32, ptr %108, align 4, !tbaa !146
  %110 = getelementptr inbounds %struct.Sequence, ptr %81, i64 0, i32 45
  store i32 %109, ptr %110, align 4, !tbaa !145
  %111 = getelementptr inbounds %struct.TransSeq, ptr %67, i64 %78, i32 10
  %112 = load i32, ptr %111, align 4, !tbaa !147
  %113 = getelementptr inbounds %struct.Sequence, ptr %81, i64 0, i32 7
  store i32 %112, ptr %113, align 8, !tbaa !50
  %114 = add nuw nsw i64 %78, 1
  %115 = icmp eq i64 %114, %70
  br i1 %115, label %71, label %77, !llvm.loop !155

116:                                              ; preds = %75, %116
  %117 = phi i64 [ 0, %75 ], [ %121, %116 ]
  %118 = load ptr, ptr %76, align 8, !tbaa !130
  %119 = getelementptr inbounds ptr, ptr %118, i64 %117
  %120 = load ptr, ptr %119, align 8, !tbaa !76
  tail call void @BKE_sequence_reload_new_file(ptr noundef %6, ptr noundef %120, i8 noundef zeroext 0) #13
  tail call void @BKE_sequence_calc(ptr noundef %6, ptr noundef %120) #13
  %121 = add nuw nsw i64 %117, 1
  %122 = load i32, ptr %72, align 8, !tbaa !132
  %123 = sext i32 %122 to i64
  %124 = icmp slt i64 %121, %123
  br i1 %124, label %116, label %125, !llvm.loop !156

125:                                              ; preds = %116, %71
  %126 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  %127 = getelementptr inbounds %struct.SlipData, ptr %8, i64 0, i32 3
  %128 = load ptr, ptr %127, align 8, !tbaa !130
  tail call void %126(ptr noundef %128) #13
  %129 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  %130 = getelementptr inbounds %struct.SlipData, ptr %8, i64 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !128
  tail call void %129(ptr noundef %131) #13
  %132 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  %133 = getelementptr inbounds %struct.SlipData, ptr %8, i64 0, i32 4
  %134 = load ptr, ptr %133, align 8, !tbaa !131
  tail call void %132(ptr noundef %134) #13
  %135 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  tail call void %135(ptr noundef %8) #13
  store ptr null, ptr %7, align 8, !tbaa !127
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %6) #13
  %136 = getelementptr inbounds %struct.Editing, ptr %61, i64 0, i32 1
  tail call void @BKE_sequencer_free_imbuf(ptr noundef %6, ptr noundef nonnull %136, i8 noundef zeroext 0) #13
  %137 = icmp eq ptr %9, null
  br i1 %137, label %149, label %138

138:                                              ; preds = %125
  tail call void @ED_area_headerprint(ptr noundef nonnull %9, ptr noundef null) #13
  br label %149

139:                                              ; preds = %3, %3
  %140 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %141 = load i16, ptr %140, align 2, !tbaa !157
  switch i16 %141, label %149 [
    i16 1, label %142
    i16 2, label %147
  ]

142:                                              ; preds = %139
  %143 = getelementptr inbounds %struct.SlipData, ptr %8, i64 0, i32 6
  store i8 1, ptr %143, align 4, !tbaa !149
  %144 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %145 = load i32, ptr %144, align 4, !tbaa !43
  %146 = getelementptr inbounds %struct.SlipData, ptr %8, i64 0, i32 7
  store i32 %145, ptr %146, align 8, !tbaa !153
  br label %149

147:                                              ; preds = %139
  %148 = getelementptr inbounds %struct.SlipData, ptr %8, i64 0, i32 6
  store i8 0, ptr %148, align 4, !tbaa !149
  br label %149

149:                                              ; preds = %45, %147, %142, %3, %139, %125, %138, %59
  %150 = phi i32 [ 4, %59 ], [ 2, %138 ], [ 2, %125 ], [ 1, %139 ], [ 1, %3 ], [ 1, %142 ], [ 1, %147 ], [ 1, %45 ]
  ret i32 %150
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_slip_exec(ptr noundef %0, ptr nocapture noundef %1) #1 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 0) #13
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !110
  %7 = tail call i32 @RNA_int_get(ptr noundef %6, ptr noundef nonnull @.str.76) #13
  %8 = load ptr, ptr %4, align 8, !tbaa !74
  %9 = tail call fastcc i32 @slip_count_sequences_rec(ptr noundef %8, i8 noundef zeroext 1)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %86, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !76
  %13 = tail call ptr %12(i64 noundef 56, ptr noundef nonnull @.str.200) #13
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %13, ptr %14, align 8, !tbaa !127
  %15 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !76
  %16 = sext i32 %9 to i64
  %17 = mul nsw i64 %16, 44
  %18 = tail call ptr %15(i64 noundef %17, ptr noundef nonnull @.str.201) #13
  %19 = getelementptr inbounds %struct.SlipData, ptr %13, i64 0, i32 2
  store ptr %18, ptr %19, align 8, !tbaa !128
  %20 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !76
  %21 = shl nsw i64 %16, 3
  %22 = tail call ptr %20(i64 noundef %21, ptr noundef nonnull @.str.202) #13
  %23 = getelementptr inbounds %struct.SlipData, ptr %13, i64 0, i32 3
  store ptr %22, ptr %23, align 8, !tbaa !130
  %24 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !76
  %25 = tail call ptr %24(i64 noundef %16, ptr noundef nonnull @.str.203) #13
  %26 = getelementptr inbounds %struct.SlipData, ptr %13, i64 0, i32 4
  store ptr %25, ptr %26, align 8, !tbaa !131
  %27 = getelementptr inbounds %struct.SlipData, ptr %13, i64 0, i32 5
  store i32 %9, ptr %27, align 8, !tbaa !132
  %28 = load ptr, ptr %4, align 8, !tbaa !74
  %29 = load ptr, ptr %23, align 8, !tbaa !130
  %30 = tail call fastcc i32 @slip_add_sequences_rec(ptr noundef %28, ptr noundef %29, ptr noundef %25, i32 noundef 0, i8 noundef zeroext 1)
  %31 = icmp sgt i32 %9, 0
  br i1 %31, label %32, label %75

32:                                               ; preds = %11
  %33 = load ptr, ptr %19, align 8, !tbaa !128
  %34 = load ptr, ptr %23, align 8, !tbaa !130
  %35 = zext nneg i32 %9 to i64
  br label %36

36:                                               ; preds = %32, %36
  %37 = phi i64 [ 0, %32 ], [ %73, %36 ]
  %38 = getelementptr inbounds %struct.TransSeq, ptr %33, i64 %37
  %39 = getelementptr inbounds ptr, ptr %34, i64 %37
  %40 = load ptr, ptr %39, align 8, !tbaa !76
  %41 = getelementptr inbounds %struct.Sequence, ptr %40, i64 0, i32 8
  %42 = load i32, ptr %41, align 4, !tbaa !49
  store i32 %42, ptr %38, align 4, !tbaa !133
  %43 = getelementptr inbounds %struct.Sequence, ptr %40, i64 0, i32 13
  %44 = load i32, ptr %43, align 8, !tbaa !46
  %45 = getelementptr inbounds %struct.TransSeq, ptr %33, i64 %37, i32 1
  store i32 %44, ptr %45, align 4, !tbaa !135
  %46 = getelementptr inbounds %struct.Sequence, ptr %40, i64 0, i32 11
  %47 = load i32, ptr %46, align 8, !tbaa !34
  %48 = getelementptr inbounds %struct.TransSeq, ptr %33, i64 %37, i32 2
  store i32 %47, ptr %48, align 4, !tbaa !136
  %49 = getelementptr inbounds %struct.Sequence, ptr %40, i64 0, i32 12
  %50 = load i32, ptr %49, align 4, !tbaa !48
  %51 = getelementptr inbounds %struct.TransSeq, ptr %33, i64 %37, i32 3
  store i32 %50, ptr %51, align 4, !tbaa !137
  %52 = getelementptr inbounds %struct.Sequence, ptr %40, i64 0, i32 15
  %53 = load i32, ptr %52, align 8, !tbaa !77
  %54 = getelementptr inbounds %struct.TransSeq, ptr %33, i64 %37, i32 4
  store i32 %53, ptr %54, align 4, !tbaa !138
  %55 = getelementptr inbounds %struct.Sequence, ptr %40, i64 0, i32 16
  %56 = load i32, ptr %55, align 4, !tbaa !51
  %57 = getelementptr inbounds %struct.TransSeq, ptr %33, i64 %37, i32 5
  store i32 %56, ptr %57, align 4, !tbaa !139
  %58 = getelementptr inbounds %struct.Sequence, ptr %40, i64 0, i32 9
  %59 = load i32, ptr %58, align 8, !tbaa !120
  %60 = getelementptr inbounds %struct.TransSeq, ptr %33, i64 %37, i32 6
  store i32 %59, ptr %60, align 4, !tbaa !140
  %61 = getelementptr inbounds %struct.Sequence, ptr %40, i64 0, i32 10
  %62 = load i32, ptr %61, align 4, !tbaa !141
  %63 = getelementptr inbounds %struct.TransSeq, ptr %33, i64 %37, i32 7
  store i32 %62, ptr %63, align 4, !tbaa !142
  %64 = getelementptr inbounds %struct.Sequence, ptr %40, i64 0, i32 44
  %65 = load i32, ptr %64, align 8, !tbaa !143
  %66 = getelementptr inbounds %struct.TransSeq, ptr %33, i64 %37, i32 8
  store i32 %65, ptr %66, align 4, !tbaa !144
  %67 = getelementptr inbounds %struct.Sequence, ptr %40, i64 0, i32 45
  %68 = load i32, ptr %67, align 4, !tbaa !145
  %69 = getelementptr inbounds %struct.TransSeq, ptr %33, i64 %37, i32 9
  store i32 %68, ptr %69, align 4, !tbaa !146
  %70 = getelementptr inbounds %struct.Sequence, ptr %40, i64 0, i32 7
  %71 = load i32, ptr %70, align 8, !tbaa !50
  %72 = getelementptr inbounds %struct.TransSeq, ptr %33, i64 %37, i32 10
  store i32 %71, ptr %72, align 4, !tbaa !147
  %73 = add nuw nsw i64 %37, 1
  %74 = icmp eq i64 %73, %35
  br i1 %74, label %75, label %36, !llvm.loop !158

75:                                               ; preds = %36, %11
  %76 = tail call fastcc zeroext i8 @sequencer_slip_recursively(ptr noundef %3, ptr noundef %13, i32 noundef %7), !range !154
  %77 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  %78 = load ptr, ptr %23, align 8, !tbaa !130
  tail call void %77(ptr noundef %78) #13
  %79 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  %80 = load ptr, ptr %26, align 8, !tbaa !131
  tail call void %79(ptr noundef %80) #13
  %81 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  %82 = load ptr, ptr %19, align 8, !tbaa !128
  tail call void %81(ptr noundef %82) #13
  %83 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  tail call void %83(ptr noundef %13) #13
  %84 = icmp eq i8 %76, 0
  %85 = select i1 %84, i32 2, i32 4
  br label %86

86:                                               ; preds = %75, %2
  %87 = phi i32 [ 2, %2 ], [ %85, %75 ]
  ret i32 %87
}

; Function Attrs: nounwind uwtable
define dso_local void @SEQUENCER_OT_mute(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.79, ptr %0, align 8, !tbaa !101
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.80, ptr %2, align 8, !tbaa !104
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.81, ptr %3, align 8, !tbaa !105
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_mute_exec, ptr %4, align 8, !tbaa !106
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %5, align 8, !tbaa !107
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !108
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !109
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.82, i32 noundef 0, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.84) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_mute_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 0) #13
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !110
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.82) #13
  %8 = icmp eq i32 %7, 0
  %9 = load ptr, ptr %4, align 8, !tbaa !74
  %10 = load ptr, ptr %9, align 8, !tbaa !76
  %11 = icmp eq ptr %10, null
  br i1 %11, label %28, label %12

12:                                               ; preds = %2, %25
  %13 = phi ptr [ %26, %25 ], [ %10, %2 ]
  %14 = getelementptr inbounds %struct.Sequence, ptr %13, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !81
  %16 = and i32 %15, 16384
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = and i32 %15, 1
  %20 = icmp eq i32 %19, 0
  br i1 %8, label %21, label %22

21:                                               ; preds = %18
  br i1 %20, label %25, label %23

22:                                               ; preds = %18
  br i1 %20, label %23, label %25

23:                                               ; preds = %22, %21
  %24 = or i32 %15, 32
  store i32 %24, ptr %14, align 8, !tbaa !81
  tail call void @BKE_sequence_invalidate_dependent(ptr noundef %3, ptr noundef nonnull %13) #13
  br label %25

25:                                               ; preds = %23, %12, %22, %21
  %26 = load ptr, ptr %13, align 8, !tbaa !76
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %12, !llvm.loop !159

28:                                               ; preds = %25, %2
  tail call void @BKE_sequencer_update_muting(ptr noundef nonnull %4) #13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %3) #13
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @SEQUENCER_OT_unmute(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.85, ptr %0, align 8, !tbaa !101
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.86, ptr %2, align 8, !tbaa !104
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.87, ptr %3, align 8, !tbaa !105
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_unmute_exec, ptr %4, align 8, !tbaa !106
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %5, align 8, !tbaa !107
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !108
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !109
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.82, i32 noundef 0, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.88) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_unmute_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 0) #13
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !110
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.82) #13
  %8 = icmp eq i32 %7, 0
  %9 = load ptr, ptr %4, align 8, !tbaa !74
  %10 = load ptr, ptr %9, align 8, !tbaa !76
  %11 = icmp eq ptr %10, null
  br i1 %11, label %29, label %12

12:                                               ; preds = %2, %26
  %13 = phi ptr [ %27, %26 ], [ %10, %2 ]
  %14 = getelementptr inbounds %struct.Sequence, ptr %13, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !81
  %16 = and i32 %15, 16384
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %12
  %19 = and i32 %15, 1
  %20 = icmp eq i32 %19, 0
  br i1 %8, label %21, label %22

21:                                               ; preds = %18
  br i1 %20, label %26, label %23

22:                                               ; preds = %18
  br i1 %20, label %23, label %26

23:                                               ; preds = %22, %21
  %24 = phi i32 [ -16417, %21 ], [ -16418, %22 ]
  %25 = and i32 %15, %24
  store i32 %25, ptr %14, align 8, !tbaa !81
  tail call void @BKE_sequence_invalidate_dependent(ptr noundef %3, ptr noundef nonnull %13) #13
  br label %26

26:                                               ; preds = %23, %12, %22, %21
  %27 = load ptr, ptr %13, align 8, !tbaa !76
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %12, !llvm.loop !160

29:                                               ; preds = %26, %2
  tail call void @BKE_sequencer_update_muting(ptr noundef nonnull %4) #13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %3) #13
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @SEQUENCER_OT_lock(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.89, ptr %0, align 8, !tbaa !101
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.90, ptr %2, align 8, !tbaa !104
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.91, ptr %3, align 8, !tbaa !105
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_lock_exec, ptr %4, align 8, !tbaa !106
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %5, align 8, !tbaa !107
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !108
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_lock_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 0) #13
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = load ptr, ptr %5, align 8, !tbaa !76
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %2, %16
  %9 = phi ptr [ %17, %16 ], [ %6, %2 ]
  %10 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !81
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = or i32 %11, 16384
  store i32 %15, ptr %10, align 8, !tbaa !81
  br label %16

16:                                               ; preds = %8, %14
  %17 = load ptr, ptr %9, align 8, !tbaa !76
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %8, !llvm.loop !161

19:                                               ; preds = %16, %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %3) #13
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @SEQUENCER_OT_unlock(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.92, ptr %0, align 8, !tbaa !101
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.93, ptr %2, align 8, !tbaa !104
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.94, ptr %3, align 8, !tbaa !105
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_unlock_exec, ptr %4, align 8, !tbaa !106
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %5, align 8, !tbaa !107
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !108
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_unlock_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 0) #13
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = load ptr, ptr %5, align 8, !tbaa !76
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %2, %16
  %9 = phi ptr [ %17, %16 ], [ %6, %2 ]
  %10 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !81
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = and i32 %11, -16385
  store i32 %15, ptr %10, align 8, !tbaa !81
  br label %16

16:                                               ; preds = %8, %14
  %17 = load ptr, ptr %9, align 8, !tbaa !76
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %8, !llvm.loop !162

19:                                               ; preds = %16, %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %3) #13
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @SEQUENCER_OT_reload(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.95, ptr %0, align 8, !tbaa !101
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.96, ptr %2, align 8, !tbaa !104
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.97, ptr %3, align 8, !tbaa !105
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_reload_exec, ptr %4, align 8, !tbaa !106
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %5, align 8, !tbaa !107
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %6, align 8, !tbaa !108
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !109
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.98, i32 noundef 0, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.100) #13
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268435456) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_reload_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 0) #13
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !110
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.98) #13
  %8 = load ptr, ptr %4, align 8, !tbaa !74
  %9 = load ptr, ptr %8, align 8, !tbaa !76
  %10 = icmp eq ptr %9, null
  br i1 %10, label %32, label %11

11:                                               ; preds = %2
  %12 = and i32 %7, 255
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %11, %29
  %16 = phi ptr [ %9, %11 ], [ %30, %29 ]
  %17 = getelementptr inbounds %struct.Sequence, ptr %16, i64 0, i32 5
  %18 = load i32, ptr %17, align 8, !tbaa !81
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %15
  tail call void @BKE_sequencer_update_changed_seq_and_deps(ptr noundef %3, ptr noundef nonnull %16, i32 noundef 0, i32 noundef 1) #13
  tail call void @BKE_sequence_reload_new_file(ptr noundef %3, ptr noundef nonnull %16, i8 noundef zeroext %14) #13
  br i1 %13, label %29, label %22

22:                                               ; preds = %21
  %23 = load ptr, ptr %4, align 8, !tbaa !74
  %24 = tail call zeroext i8 @BKE_sequence_test_overlap(ptr noundef %23, ptr noundef nonnull %16) #13
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %4, align 8, !tbaa !74
  %28 = tail call zeroext i8 @BKE_sequence_base_shuffle(ptr noundef %27, ptr noundef nonnull %16, ptr noundef %3) #13
  br label %29

29:                                               ; preds = %15, %22, %26, %21
  %30 = load ptr, ptr %16, align 8, !tbaa !76
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %15, !llvm.loop !163

32:                                               ; preds = %29, %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %3) #13
  ret i32 4
}

declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @SEQUENCER_OT_refresh_all(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.101, ptr %0, align 8, !tbaa !101
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.102, ptr %2, align 8, !tbaa !104
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.103, ptr %3, align 8, !tbaa !105
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_refresh_all_exec, ptr %4, align 8, !tbaa !106
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %5, align 8, !tbaa !107
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_refresh_all_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 0) #13
  %5 = getelementptr inbounds %struct.Editing, ptr %4, i64 0, i32 1
  tail call void @BKE_sequencer_free_imbuf(ptr noundef %3, ptr noundef nonnull %5, i8 noundef zeroext 0) #13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %3) #13
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @SEQUENCER_OT_reassign_inputs(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.104, ptr %0, align 8, !tbaa !101
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.105, ptr %2, align 8, !tbaa !104
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.106, ptr %3, align 8, !tbaa !105
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_reassign_inputs_exec, ptr %4, align 8, !tbaa !106
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_effect_poll, ptr %5, align 8, !tbaa !107
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !108
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_reassign_inputs_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  %8 = tail call ptr @BKE_sequencer_active_get(ptr noundef %7) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  %9 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !99
  %11 = call i32 @seq_effect_find_selected(ptr noundef %7, ptr noundef %8, i32 noundef %10, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6), !range !164
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !165
  %16 = load ptr, ptr %6, align 8, !tbaa !76
  tail call void @BKE_report(ptr noundef %15, i32 noundef 32, ptr noundef %16) #13
  br label %36

17:                                               ; preds = %2
  %18 = load ptr, ptr %3, align 8, !tbaa !76
  %19 = tail call fastcc zeroext i8 @seq_is_predecessor(ptr noundef %18, ptr noundef %8), !range !154
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load ptr, ptr %4, align 8, !tbaa !76
  %23 = tail call fastcc zeroext i8 @seq_is_predecessor(ptr noundef %22, ptr noundef %8), !range !154
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load ptr, ptr %5, align 8, !tbaa !76
  %27 = tail call fastcc zeroext i8 @seq_is_predecessor(ptr noundef %26, ptr noundef %8), !range !154
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25, %21, %17
  %30 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %31 = load ptr, ptr %30, align 8, !tbaa !165
  tail call void @BKE_report(ptr noundef %31, i32 noundef 32, ptr noundef nonnull @.str.205) #13
  br label %36

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 33
  store ptr %18, ptr %33, align 8, !tbaa !122
  %34 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 34
  store ptr %22, ptr %34, align 8, !tbaa !123
  %35 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 35
  store ptr %26, ptr %35, align 8, !tbaa !124
  tail call void @BKE_sequencer_update_changed_seq_and_deps(ptr noundef %7, ptr noundef %8, i32 noundef 1, i32 noundef 1) #13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %7) #13
  br label %36

36:                                               ; preds = %32, %29, %13
  %37 = phi i32 [ 2, %29 ], [ 4, %32 ], [ 2, %13 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_effect_poll(ptr noundef %0) #1 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %3 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %2, i8 noundef zeroext 0) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @BKE_sequencer_active_get(ptr noundef %2) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.Sequence, ptr %6, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !99
  %11 = and i32 %10, 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %5
  br label %14

14:                                               ; preds = %1, %13, %8
  %15 = phi i32 [ 1, %8 ], [ 0, %13 ], [ 0, %1 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @SEQUENCER_OT_swap_inputs(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.107, ptr %0, align 8, !tbaa !101
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.108, ptr %2, align 8, !tbaa !104
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.109, ptr %3, align 8, !tbaa !105
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_swap_inputs_exec, ptr %4, align 8, !tbaa !106
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_effect_poll, ptr %5, align 8, !tbaa !107
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !108
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_swap_inputs_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %4 = tail call ptr @BKE_sequencer_active_get(ptr noundef %3) #13
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 33
  %6 = load ptr, ptr %5, align 8, !tbaa !122
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 34
  %10 = load ptr, ptr %9, align 8, !tbaa !123
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %8, %2
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !165
  tail call void @BKE_report(ptr noundef %14, i32 noundef 32, ptr noundef nonnull @.str.206) #13
  br label %16

15:                                               ; preds = %8
  store ptr %10, ptr %5, align 8, !tbaa !122
  store ptr %6, ptr %9, align 8, !tbaa !123
  tail call void @BKE_sequencer_update_changed_seq_and_deps(ptr noundef %3, ptr noundef %4, i32 noundef 1, i32 noundef 1) #13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %3) #13
  br label %16

16:                                               ; preds = %15, %12
  %17 = phi i32 [ 2, %12 ], [ 4, %15 ]
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define dso_local void @SEQUENCER_OT_cut(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.110, ptr %0, align 8, !tbaa !101
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.111, ptr %2, align 8, !tbaa !104
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.112, ptr %3, align 8, !tbaa !105
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sequencer_cut_invoke, ptr %4, align 8, !tbaa !118
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_cut_exec, ptr %5, align 8, !tbaa !106
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %6, align 8, !tbaa !107
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !108
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !109
  %10 = tail call ptr @RNA_def_int(ptr noundef %9, ptr noundef nonnull @.str.71, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.113, i32 noundef -2147483648, i32 noundef 2147483647) #13
  %11 = load ptr, ptr %8, align 8, !tbaa !109
  %12 = tail call ptr @RNA_def_enum(ptr noundef %11, ptr noundef nonnull @.str.114, ptr noundef nonnull @prop_cut_types, i32 noundef 0, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.116) #13
  %13 = load ptr, ptr %8, align 8, !tbaa !109
  %14 = tail call ptr @RNA_def_enum(ptr noundef %13, ptr noundef nonnull @.str.117, ptr noundef nonnull @prop_side_types, i32 noundef 3, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.119) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_cut_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #1 {
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %6 = tail call ptr @UI_view2d_fromcontext(ptr noundef %0) #13
  %7 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !112
  %9 = tail call i32 @ED_operator_sequencer_active(ptr noundef %0) #13
  %10 = icmp ne i32 %9, 0
  %11 = icmp ne ptr %6, null
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %15 = load i32, ptr %14, align 4, !tbaa !43
  %16 = trunc i32 %15 to i16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  %17 = sitofp i16 %16 to float
  %18 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %6, float noundef %17, float noundef 0.000000e+00, ptr noundef nonnull %4, ptr noundef nonnull %18) #13
  %19 = load float, ptr %4, align 4, !tbaa !85
  %20 = sitofp i32 %8 to float
  %21 = fcmp ogt float %19, %20
  %22 = select i1 %21, i32 2, i32 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br label %23

23:                                               ; preds = %13, %3
  %24 = phi i32 [ %22, %13 ], [ 3, %3 ]
  %25 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !110
  call void @RNA_int_set(ptr noundef %26, ptr noundef nonnull @.str.71, i32 noundef %8) #13
  %27 = load ptr, ptr %25, align 8, !tbaa !110
  call void @RNA_enum_set(ptr noundef %27, ptr noundef nonnull @.str.117, i32 noundef %24) #13
  %28 = call i32 @sequencer_cut_exec(ptr noundef %0, ptr noundef %1), !range !166
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_cut_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca %struct.SeqIterator, align 8
  %4 = alloca %struct.SeqIterator, align 8
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %6 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %5, i8 noundef zeroext 0) #13
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !110
  %9 = tail call i32 @RNA_int_get(ptr noundef %8, ptr noundef nonnull @.str.71) #13
  %10 = load ptr, ptr %7, align 8, !tbaa !110
  %11 = tail call i32 @RNA_enum_get(ptr noundef %10, ptr noundef nonnull @.str.114) #13
  %12 = load ptr, ptr %7, align 8, !tbaa !110
  %13 = tail call i32 @RNA_enum_get(ptr noundef %12, ptr noundef nonnull @.str.117) #13
  %14 = icmp eq i32 %11, 1
  %15 = load ptr, ptr %6, align 8, !tbaa !74
  %16 = select i1 %14, ptr @cut_seq_hard, ptr @cut_seq_soft
  %17 = tail call fastcc zeroext i8 @cut_seq_list(ptr noundef %5, ptr noundef %15, i32 noundef %9, ptr noundef nonnull %16), !range !154
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %70, label %19

19:                                               ; preds = %2
  %20 = icmp eq i32 %13, 3
  br i1 %20, label %46, label %21

21:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  call void @BKE_sequence_iterator_begin(ptr noundef nonnull %6, ptr noundef nonnull %3, i8 noundef zeroext 1) #13
  %22 = getelementptr inbounds %struct.SeqIterator, ptr %3, i64 0, i32 4
  %23 = load i32, ptr %22, align 8, !tbaa !88
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %45, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.SeqIterator, ptr %3, i64 0, i32 3
  %27 = icmp eq i32 %13, 1
  br label %28

28:                                               ; preds = %25, %42
  %29 = load ptr, ptr %26, align 8, !tbaa !90
  br i1 %27, label %30, label %34

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.Sequence, ptr %29, i64 0, i32 15
  %32 = load i32, ptr %31, align 8, !tbaa !77
  %33 = icmp slt i32 %32, %9
  br i1 %33, label %42, label %38

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.Sequence, ptr %29, i64 0, i32 16
  %36 = load i32, ptr %35, align 4, !tbaa !51
  %37 = icmp sgt i32 %36, %9
  br i1 %37, label %42, label %38

38:                                               ; preds = %34, %30
  %39 = getelementptr inbounds %struct.Sequence, ptr %29, i64 0, i32 5
  %40 = load i32, ptr %39, align 8, !tbaa !81
  %41 = and i32 %40, -8
  store i32 %41, ptr %39, align 8, !tbaa !81
  br label %42

42:                                               ; preds = %38, %30, %34
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %3) #13
  %43 = load i32, ptr %22, align 8, !tbaa !88
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %28, !llvm.loop !167

45:                                               ; preds = %42, %21
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  br label %46

46:                                               ; preds = %45, %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #13
  call void @BKE_sequence_iterator_begin(ptr noundef nonnull %6, ptr noundef nonnull %4, i8 noundef zeroext 1) #13
  %47 = getelementptr inbounds %struct.SeqIterator, ptr %4, i64 0, i32 4
  %48 = load i32, ptr %47, align 8, !tbaa !88
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %69, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.SeqIterator, ptr %4, i64 0, i32 3
  br label %52

52:                                               ; preds = %50, %66
  %53 = load ptr, ptr %51, align 8, !tbaa !90
  %54 = getelementptr inbounds %struct.Sequence, ptr %53, i64 0, i32 33
  %55 = load ptr, ptr %54, align 8, !tbaa !122
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.Sequence, ptr %53, i64 0, i32 34
  %59 = load ptr, ptr %58, align 8, !tbaa !123
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.Sequence, ptr %53, i64 0, i32 35
  %63 = load ptr, ptr %62, align 8, !tbaa !124
  %64 = icmp eq ptr %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %61, %57, %52
  call void @BKE_sequence_calc(ptr noundef %5, ptr noundef %53) #13
  br label %66

66:                                               ; preds = %61, %65
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %4) #13
  %67 = load i32, ptr %47, align 8, !tbaa !88
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %52, !llvm.loop !168

69:                                               ; preds = %66, %46
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #13
  call void @BKE_sequencer_sort(ptr noundef %5) #13
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %5) #13
  br label %70

70:                                               ; preds = %2, %69
  %71 = phi i32 [ 4, %69 ], [ 2, %2 ]
  ret i32 %71
}

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @SEQUENCER_OT_duplicate(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.120, ptr %0, align 8, !tbaa !101
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.121, ptr %2, align 8, !tbaa !104
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.122, ptr %3, align 8, !tbaa !105
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_add_duplicate_exec, ptr %4, align 8, !tbaa !106
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sequencer_active, ptr %5, align 8, !tbaa !107
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !108
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !109
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.123, ptr noundef nonnull @transform_mode_types, i32 noundef 1, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.40) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_add_duplicate_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %5 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %4, i8 noundef zeroext 0) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !tbaa !74
  call void @BKE_sequence_base_dupli_recursive(ptr noundef %4, ptr noundef null, ptr noundef nonnull %3, ptr noundef %8, i32 noundef 2) #13
  %9 = load ptr, ptr %3, align 8, !tbaa !169
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %5, align 8, !tbaa !74
  call void @BLI_movelisttolist(ptr noundef %12, ptr noundef nonnull %3) #13
  br label %13

13:                                               ; preds = %11, %13
  %14 = phi ptr [ %9, %11 ], [ %16, %13 ]
  %15 = call i32 @BKE_sequencer_recursive_apply(ptr noundef nonnull %14, ptr noundef nonnull @apply_unique_name_cb, ptr noundef %4) #13
  %16 = load ptr, ptr %14, align 8, !tbaa !170
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %13, !llvm.loop !171

18:                                               ; preds = %13
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %4) #13
  br label %19

19:                                               ; preds = %7, %2, %18
  %20 = phi i32 [ 4, %18 ], [ 2, %2 ], [ 2, %7 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  ret i32 %20
}

declare i32 @ED_operator_sequencer_active(ptr noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @SEQUENCER_OT_delete(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.125, ptr %0, align 8, !tbaa !101
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.126, ptr %2, align 8, !tbaa !104
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.127, ptr %3, align 8, !tbaa !105
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sequencer_delete_invoke, ptr %4, align 8, !tbaa !118
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_delete_exec, ptr %5, align 8, !tbaa !106
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %6, align 8, !tbaa !107
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !108
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @sequencer_delete_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 8
  %6 = load i16, ptr %5, align 2, !tbaa !172
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %10 = load i32, ptr %9, align 4, !tbaa !43
  %11 = icmp slt i32 %10, 31
  br i1 %11, label %14, label %12

12:                                               ; preds = %8, %3
  %13 = tail call i32 @WM_operator_confirm(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  br label %14

14:                                               ; preds = %8, %12
  %15 = phi i32 [ %13, %12 ], [ 8, %8 ]
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_delete_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = alloca %struct.SeqIterator, align 8
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %5 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %4, i8 noundef zeroext 0) #13
  %6 = tail call ptr @BKE_sequencer_active_get(ptr noundef %4) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Sequence, ptr %6, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !81
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %8, %2
  %14 = load ptr, ptr %5, align 8, !tbaa !74
  br label %15

15:                                               ; preds = %19, %13
  %16 = phi ptr [ %14, %13 ], [ %17, %19 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !76
  %18 = icmp eq ptr %17, null
  br i1 %18, label %97, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.Sequence, ptr %17, i64 0, i32 5
  %21 = load i32, ptr %20, align 8, !tbaa !81
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %15, label %24, !llvm.loop !174

24:                                               ; preds = %19, %8
  %25 = load ptr, ptr %5, align 8, !tbaa !74
  %26 = load ptr, ptr %25, align 8, !tbaa !76
  %27 = icmp eq ptr %26, null
  br i1 %27, label %76, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.SeqIterator, ptr %3, i64 0, i32 4
  %30 = getelementptr inbounds %struct.SeqIterator, ptr %3, i64 0, i32 3
  br label %31

31:                                               ; preds = %28, %73
  %32 = phi ptr [ %26, %28 ], [ %74, %73 ]
  %33 = getelementptr inbounds %struct.Sequence, ptr %32, i64 0, i32 5
  %34 = load i32, ptr %33, align 8, !tbaa !81
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.Sequence, ptr %32, i64 0, i32 6
  %39 = load i32, ptr %38, align 4, !tbaa !99
  %40 = and i32 %39, 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %73, label %42

42:                                               ; preds = %37
  %43 = call fastcc ptr @del_seq_find_replace_recurs(ptr noundef %4, ptr noundef nonnull %32)
  br label %73

44:                                               ; preds = %31
  %45 = call ptr @BKE_sequencer_editing_get(ptr noundef %4, i8 noundef zeroext 0) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  call void @BKE_sequence_iterator_begin(ptr noundef %45, ptr noundef nonnull %3, i8 noundef zeroext 1) #13
  %46 = load i32, ptr %29, align 8, !tbaa !88
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %72, label %48

48:                                               ; preds = %44, %69
  %49 = load ptr, ptr %30, align 8, !tbaa !90
  %50 = getelementptr inbounds %struct.Sequence, ptr %49, i64 0, i32 5
  %51 = load i32, ptr %50, align 8, !tbaa !81
  %52 = and i32 %51, 1
  %53 = icmp ne i32 %52, 0
  %54 = icmp eq ptr %49, %32
  %55 = or i1 %54, %53
  br i1 %55, label %69, label %56

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.Sequence, ptr %49, i64 0, i32 51
  %58 = load ptr, ptr %57, align 8, !tbaa !76
  %59 = icmp eq ptr %58, null
  br i1 %59, label %69, label %60

60:                                               ; preds = %56, %66
  %61 = phi ptr [ %67, %66 ], [ %58, %56 ]
  %62 = getelementptr inbounds %struct.SequenceModifierData, ptr %61, i64 0, i32 7
  %63 = load ptr, ptr %62, align 8, !tbaa !175
  %64 = icmp eq ptr %63, %32
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store ptr null, ptr %62, align 8, !tbaa !175
  br label %66

66:                                               ; preds = %65, %60
  %67 = load ptr, ptr %61, align 8, !tbaa !76
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %60, !llvm.loop !177

69:                                               ; preds = %66, %56, %48
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %3) #13
  %70 = load i32, ptr %29, align 8, !tbaa !88
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %48, !llvm.loop !178

72:                                               ; preds = %69, %44
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  br label %73

73:                                               ; preds = %72, %42, %37
  %74 = load ptr, ptr %32, align 8, !tbaa !76
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %31, !llvm.loop !179

76:                                               ; preds = %73, %24
  %77 = load ptr, ptr %5, align 8, !tbaa !74
  call fastcc void @recurs_del_seq_flag(ptr noundef %4, ptr noundef %77, i16 noundef signext 1, i16 noundef signext 0)
  %78 = load ptr, ptr %5, align 8, !tbaa !74
  %79 = load ptr, ptr %78, align 8, !tbaa !76
  %80 = icmp eq ptr %79, null
  br i1 %80, label %85, label %81

81:                                               ; preds = %76, %81
  %82 = phi ptr [ %83, %81 ], [ %79, %76 ]
  call void @BKE_sequence_calc(ptr noundef %4, ptr noundef nonnull %82) #13
  %83 = load ptr, ptr %82, align 8, !tbaa !76
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %81, !llvm.loop !180

85:                                               ; preds = %81, %76
  %86 = getelementptr inbounds %struct.Editing, ptr %5, i64 0, i32 2, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !76
  %88 = icmp eq ptr %87, null
  br i1 %88, label %96, label %89

89:                                               ; preds = %85, %89
  %90 = phi ptr [ %94, %89 ], [ %87, %85 ]
  %91 = getelementptr inbounds %struct.MetaStack, ptr %90, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !181
  call void @BKE_sequence_calc(ptr noundef %4, ptr noundef %92) #13
  %93 = getelementptr inbounds %struct.MetaStack, ptr %90, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !76
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %89, !llvm.loop !183

96:                                               ; preds = %89, %85
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %4) #13
  br label %97

97:                                               ; preds = %15, %96
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @SEQUENCER_OT_offset_clear(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.128, ptr %0, align 8, !tbaa !101
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.129, ptr %2, align 8, !tbaa !104
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.130, ptr %3, align 8, !tbaa !105
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_offset_clear_exec, ptr %4, align 8, !tbaa !106
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %5, align 8, !tbaa !107
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !108
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_offset_clear_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 0) #13
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = load ptr, ptr %5, align 8, !tbaa !76
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %24, %2
  %9 = load ptr, ptr %5, align 8, !tbaa !76
  %10 = icmp eq ptr %9, null
  br i1 %10, label %31, label %27

11:                                               ; preds = %2, %24
  %12 = phi ptr [ %25, %24 ], [ %6, %2 ]
  %13 = getelementptr inbounds %struct.Sequence, ptr %12, i64 0, i32 6
  %14 = load i32, ptr %13, align 4, !tbaa !99
  %15 = and i32 %14, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.Sequence, ptr %12, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !81
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.Sequence, ptr %12, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  br label %24

24:                                               ; preds = %11, %17, %22
  %25 = load ptr, ptr %12, align 8, !tbaa !76
  %26 = icmp eq ptr %25, null
  br i1 %26, label %8, label %11, !llvm.loop !184

27:                                               ; preds = %8, %27
  %28 = phi ptr [ %29, %27 ], [ %9, %8 ]
  tail call void @BKE_sequence_calc(ptr noundef %3, ptr noundef nonnull %28) #13
  %29 = load ptr, ptr %28, align 8, !tbaa !76
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %27, !llvm.loop !185

31:                                               ; preds = %27, %8
  %32 = load ptr, ptr %4, align 8, !tbaa !74
  %33 = load ptr, ptr %32, align 8, !tbaa !76
  %34 = icmp eq ptr %33, null
  br i1 %34, label %56, label %35

35:                                               ; preds = %31, %53
  %36 = phi ptr [ %54, %53 ], [ %33, %31 ]
  %37 = getelementptr inbounds %struct.Sequence, ptr %36, i64 0, i32 6
  %38 = load i32, ptr %37, align 4, !tbaa !99
  %39 = and i32 %38, 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.Sequence, ptr %36, i64 0, i32 5
  %43 = load i32, ptr %42, align 8, !tbaa !81
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %41
  %47 = load ptr, ptr %4, align 8, !tbaa !74
  %48 = tail call zeroext i8 @BKE_sequence_test_overlap(ptr noundef %47, ptr noundef nonnull %36) #13
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = load ptr, ptr %4, align 8, !tbaa !74
  %52 = tail call zeroext i8 @BKE_sequence_base_shuffle(ptr noundef %51, ptr noundef nonnull %36, ptr noundef %3) #13
  br label %53

53:                                               ; preds = %35, %41, %50, %46
  %54 = load ptr, ptr %36, align 8, !tbaa !76
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %35, !llvm.loop !186

56:                                               ; preds = %53, %31
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %3) #13
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @SEQUENCER_OT_images_separate(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.131, ptr %0, align 8, !tbaa !101
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.132, ptr %2, align 8, !tbaa !104
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.133, ptr %3, align 8, !tbaa !105
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_separate_images_exec, ptr %4, align 8, !tbaa !106
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_operator_props_popup, ptr %5, align 8, !tbaa !118
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %6, align 8, !tbaa !107
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !108
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !109
  %10 = tail call ptr @RNA_def_int(ptr noundef %9, ptr noundef nonnull @.str.134, i32 noundef 1, i32 noundef 1, i32 noundef 2147483647, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.136, i32 noundef 1, i32 noundef 1000) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_separate_images_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 0) #13
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !110
  %7 = tail call i32 @RNA_int_get(ptr noundef %6, ptr noundef nonnull @.str.134) #13
  %8 = load ptr, ptr %4, align 8, !tbaa !74
  %9 = load ptr, ptr %8, align 8, !tbaa !169
  %10 = icmp eq ptr %9, null
  br i1 %10, label %72, label %11

11:                                               ; preds = %2
  %12 = add nsw i32 %7, -1
  %13 = icmp sgt i32 %7, 1
  br label %14

14:                                               ; preds = %11, %69
  %15 = phi ptr [ %9, %11 ], [ %70, %69 ]
  %16 = getelementptr inbounds %struct.Sequence, ptr %15, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !81
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %67, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.Sequence, ptr %15, i64 0, i32 6
  %22 = load i32, ptr %21, align 4, !tbaa !99
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %67

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.Sequence, ptr %15, i64 0, i32 7
  %26 = load i32, ptr %25, align 8, !tbaa !50
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %67

28:                                               ; preds = %24
  %29 = load ptr, ptr %4, align 8, !tbaa !74
  tail call void @BLI_remlink(ptr noundef %29, ptr noundef nonnull %15) #13
  %30 = tail call i32 @BKE_sequence_tx_get_final_left(ptr noundef nonnull %15, i8 noundef zeroext 0) #13
  %31 = tail call i32 @BKE_sequence_tx_get_final_right(ptr noundef nonnull %15, i8 noundef zeroext 0) #13
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %65

33:                                               ; preds = %28, %61
  %34 = phi i32 [ %63, %61 ], [ %30, %28 ]
  %35 = phi i32 [ %62, %61 ], [ %30, %28 ]
  %36 = tail call ptr @BKE_sequencer_give_stripelem(ptr noundef nonnull %15, i32 noundef %35) #13
  %37 = tail call ptr @BKE_sequence_dupli_recursive(ptr noundef %3, ptr noundef %3, ptr noundef nonnull %15, i32 noundef 1) #13
  %38 = load ptr, ptr %4, align 8, !tbaa !74
  tail call void @BLI_addtail(ptr noundef %38, ptr noundef %37) #13
  %39 = getelementptr inbounds %struct.Sequence, ptr %37, i64 0, i32 8
  store i32 %34, ptr %39, align 4, !tbaa !49
  %40 = getelementptr inbounds %struct.Sequence, ptr %37, i64 0, i32 6
  store i32 0, ptr %40, align 4, !tbaa !99
  %41 = getelementptr inbounds %struct.Sequence, ptr %37, i64 0, i32 7
  store i32 1, ptr %41, align 8, !tbaa !50
  %42 = getelementptr inbounds %struct.Sequence, ptr %37, i64 0, i32 12
  store i32 %12, ptr %42, align 4, !tbaa !48
  %43 = getelementptr inbounds %struct.Sequence, ptr %37, i64 0, i32 24
  %44 = load ptr, ptr %43, align 8, !tbaa !187
  %45 = getelementptr inbounds %struct.Strip, ptr %44, i64 0, i32 2
  store i32 1, ptr %45, align 8, !tbaa !188
  %46 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !76
  %47 = getelementptr inbounds %struct.Strip, ptr %44, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !190
  %49 = tail call ptr %46(ptr noundef %48, i64 noundef 264, ptr noundef nonnull @__func__.sequencer_separate_images_exec) #13
  %50 = tail call ptr @BLI_strncpy(ptr noundef %49, ptr noundef %36, i64 noundef 256) #13
  store ptr %49, ptr %47, align 8, !tbaa !190
  tail call void @BKE_sequence_calc(ptr noundef %3, ptr noundef %37) #13
  br i1 %13, label %51, label %61

51:                                               ; preds = %33
  %52 = getelementptr inbounds %struct.Sequence, ptr %37, i64 0, i32 5
  %53 = load i32, ptr %52, align 8, !tbaa !81
  %54 = and i32 %53, -9
  store i32 %54, ptr %52, align 8, !tbaa !81
  %55 = load ptr, ptr %4, align 8, !tbaa !74
  %56 = tail call zeroext i8 @BKE_sequence_test_overlap(ptr noundef %55, ptr noundef %37) #13
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %51
  %59 = load ptr, ptr %4, align 8, !tbaa !74
  %60 = tail call zeroext i8 @BKE_sequence_base_shuffle(ptr noundef %59, ptr noundef %37, ptr noundef %3) #13
  br label %61

61:                                               ; preds = %51, %58, %33
  %62 = add i32 %35, 1
  %63 = add nsw i32 %34, %7
  %64 = icmp eq i32 %62, %31
  br i1 %64, label %65, label %33, !llvm.loop !191

65:                                               ; preds = %61, %28
  %66 = load ptr, ptr %15, align 8, !tbaa !170
  tail call void @BKE_sequence_free(ptr noundef %3, ptr noundef nonnull %15) #13
  br label %69

67:                                               ; preds = %24, %20, %14
  %68 = load ptr, ptr %15, align 8, !tbaa !170
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi ptr [ %66, %65 ], [ %68, %67 ]
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %14, !llvm.loop !192

72:                                               ; preds = %69, %2
  tail call void @BKE_sequencer_sort(ptr noundef %3) #13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %3) #13
  ret i32 4
}

declare i32 @WM_operator_props_popup(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @SEQUENCER_OT_meta_toggle(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.137, ptr %0, align 8, !tbaa !101
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.138, ptr %2, align 8, !tbaa !104
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.139, ptr %3, align 8, !tbaa !105
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_meta_toggle_exec, ptr %4, align 8, !tbaa !106
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %5, align 8, !tbaa !107
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !108
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_meta_toggle_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 0) #13
  %5 = tail call ptr @BKE_sequencer_active_get(ptr noundef %3) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !99
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %30

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !81
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !76
  %18 = tail call ptr %17(i64 noundef 40, ptr noundef nonnull @.str.211) #13
  %19 = getelementptr inbounds %struct.Editing, ptr %4, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %19, ptr noundef %18) #13
  %20 = getelementptr inbounds %struct.MetaStack, ptr %18, i64 0, i32 3
  store ptr %5, ptr %20, align 8, !tbaa !181
  %21 = load ptr, ptr %4, align 8, !tbaa !74
  %22 = getelementptr inbounds %struct.MetaStack, ptr %18, i64 0, i32 2
  store ptr %21, ptr %22, align 8, !tbaa !193
  %23 = getelementptr inbounds %struct.MetaStack, ptr %18, i64 0, i32 4
  %24 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 15
  %25 = load i32, ptr %24, align 4, !tbaa !43
  store i32 %25, ptr %23, align 4, !tbaa !43
  %26 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 16
  %27 = load i32, ptr %26, align 4, !tbaa !43
  %28 = getelementptr inbounds %struct.MetaStack, ptr %18, i64 0, i32 4, i64 1
  store i32 %27, ptr %28, align 4, !tbaa !43
  %29 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 36
  store ptr %29, ptr %4, align 8, !tbaa !74
  tail call void @BKE_sequencer_active_set(ptr noundef %3, ptr noundef null) #13
  br label %71

30:                                               ; preds = %11, %7, %2
  %31 = getelementptr inbounds %struct.Editing, ptr %4, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !169
  %33 = icmp eq ptr %32, null
  br i1 %33, label %72, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.Editing, ptr %4, i64 0, i32 2, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !194
  tail call void @BLI_remlink(ptr noundef nonnull %31, ptr noundef %36) #13
  %37 = getelementptr inbounds %struct.MetaStack, ptr %36, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !193
  store ptr %38, ptr %4, align 8, !tbaa !74
  %39 = getelementptr inbounds %struct.MetaStack, ptr %36, i64 0, i32 4
  %40 = load i32, ptr %39, align 8, !tbaa !43
  %41 = getelementptr inbounds %struct.MetaStack, ptr %36, i64 0, i32 4, i64 1
  %42 = load i32, ptr %41, align 4, !tbaa !43
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %34
  %45 = getelementptr inbounds %struct.MetaStack, ptr %36, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !181
  %47 = getelementptr inbounds %struct.Sequence, ptr %46, i64 0, i32 15
  %48 = load i32, ptr %47, align 4, !tbaa !43
  store i32 %48, ptr %39, align 4, !tbaa !43
  %49 = getelementptr inbounds %struct.Sequence, ptr %46, i64 0, i32 16
  %50 = load i32, ptr %49, align 4, !tbaa !43
  store i32 %50, ptr %41, align 4, !tbaa !43
  br label %51

51:                                               ; preds = %44, %34
  %52 = load ptr, ptr %38, align 8, !tbaa !76
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %51, %54
  %55 = phi ptr [ %56, %54 ], [ %52, %51 ]
  tail call void @BKE_sequence_calc(ptr noundef %3, ptr noundef nonnull %55) #13
  %56 = load ptr, ptr %55, align 8, !tbaa !76
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %54, !llvm.loop !195

58:                                               ; preds = %54, %51
  %59 = getelementptr inbounds %struct.MetaStack, ptr %36, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !181
  %61 = load i32, ptr %39, align 8, !tbaa !43
  tail call void @BKE_sequence_tx_set_final_left(ptr noundef %60, i32 noundef %61) #13
  %62 = load ptr, ptr %59, align 8, !tbaa !181
  %63 = load i32, ptr %41, align 4, !tbaa !43
  tail call void @BKE_sequence_tx_set_final_right(ptr noundef %62, i32 noundef %63) #13
  %64 = load ptr, ptr %59, align 8, !tbaa !181
  tail call void @BKE_sequence_calc(ptr noundef %3, ptr noundef %64) #13
  %65 = load ptr, ptr %59, align 8, !tbaa !181
  tail call void @BKE_sequencer_active_set(ptr noundef %3, ptr noundef %65) #13
  %66 = load ptr, ptr %59, align 8, !tbaa !181
  %67 = getelementptr inbounds %struct.Sequence, ptr %66, i64 0, i32 5
  %68 = load i32, ptr %67, align 8, !tbaa !81
  %69 = or i32 %68, 1
  store i32 %69, ptr %67, align 8, !tbaa !81
  tail call void @recurs_sel_seq(ptr noundef %66)
  %70 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  tail call void %70(ptr noundef %36) #13
  br label %71

71:                                               ; preds = %58, %16
  tail call void @BKE_sequencer_update_muting(ptr noundef %4) #13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %3) #13
  br label %72

72:                                               ; preds = %30, %71
  %73 = phi i32 [ 4, %71 ], [ 2, %30 ]
  ret i32 %73
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @SEQUENCER_OT_meta_make(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.140, ptr %0, align 8, !tbaa !101
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.141, ptr %2, align 8, !tbaa !104
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.142, ptr %3, align 8, !tbaa !105
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_meta_make_exec, ptr %4, align 8, !tbaa !106
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %5, align 8, !tbaa !107
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !108
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_meta_make_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 0) #13
  %5 = tail call ptr @BKE_sequencer_active_get(ptr noundef %3) #13
  %6 = load ptr, ptr %4, align 8, !tbaa !74
  %7 = tail call zeroext i8 @BKE_sequence_base_isolated_sel_check(ptr noundef %6, i8 noundef zeroext 0) #13
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !165
  tail call void @BKE_report(ptr noundef %11, i32 noundef 32, ptr noundef nonnull @.str.212) #13
  br label %64

12:                                               ; preds = %2
  %13 = load ptr, ptr %4, align 8, !tbaa !74
  %14 = tail call ptr @BKE_sequence_alloc(ptr noundef %13, i32 noundef 1, i32 noundef 1) #13
  %15 = getelementptr inbounds %struct.Sequence, ptr %14, i64 0, i32 4, i64 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %15, ptr noundef nonnull align 1 dereferenceable(10) @.str.213, i64 10, i1 false) #13
  %16 = getelementptr inbounds %struct.Sequence, ptr %14, i64 0, i32 6
  store i32 1, ptr %16, align 4, !tbaa !99
  %17 = getelementptr inbounds %struct.Sequence, ptr %14, i64 0, i32 5
  store i32 1, ptr %17, align 8, !tbaa !81
  %18 = load ptr, ptr %4, align 8, !tbaa !74
  %19 = load ptr, ptr %18, align 8, !tbaa !169
  %20 = icmp eq ptr %19, null
  br i1 %20, label %41, label %21

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.Sequence, ptr %14, i64 0, i32 36
  br label %23

23:                                               ; preds = %21, %38
  %24 = phi i32 [ 1, %21 ], [ %39, %38 ]
  %25 = phi ptr [ %19, %21 ], [ %26, %38 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !170
  %27 = icmp eq ptr %25, %14
  br i1 %27, label %38, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.Sequence, ptr %25, i64 0, i32 5
  %30 = load i32, ptr %29, align 8, !tbaa !81
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  tail call void @BKE_sequence_invalidate_cache(ptr noundef %3, ptr noundef nonnull %25) #13
  %34 = getelementptr inbounds %struct.Sequence, ptr %25, i64 0, i32 13
  %35 = load i32, ptr %34, align 8, !tbaa !46
  %36 = tail call i32 @llvm.smax.i32(i32 %24, i32 %35)
  %37 = load ptr, ptr %4, align 8, !tbaa !74
  tail call void @BLI_remlink(ptr noundef %37, ptr noundef nonnull %25) #13
  tail call void @BLI_addtail(ptr noundef nonnull %22, ptr noundef nonnull %25) #13
  br label %38

38:                                               ; preds = %33, %28, %23
  %39 = phi i32 [ %36, %33 ], [ %24, %28 ], [ %24, %23 ]
  %40 = icmp eq ptr %26, null
  br i1 %40, label %41, label %23, !llvm.loop !196

41:                                               ; preds = %38, %12
  %42 = phi i32 [ 1, %12 ], [ %39, %38 ]
  %43 = icmp eq ptr %5, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 13
  %46 = load i32, ptr %45, align 8, !tbaa !46
  br label %47

47:                                               ; preds = %41, %44
  %48 = phi i32 [ %46, %44 ], [ %42, %41 ]
  %49 = getelementptr inbounds %struct.Sequence, ptr %14, i64 0, i32 13
  store i32 %48, ptr %49, align 8, !tbaa !46
  tail call void @BKE_sequence_calc(ptr noundef %3, ptr noundef %14) #13
  %50 = load ptr, ptr @MEM_callocN, align 8, !tbaa !76
  %51 = tail call ptr %50(i64 noundef 904, ptr noundef nonnull @.str.214) #13
  %52 = getelementptr inbounds %struct.Sequence, ptr %14, i64 0, i32 24
  store ptr %51, ptr %52, align 8, !tbaa !187
  %53 = getelementptr inbounds %struct.Strip, ptr %51, i64 0, i32 2
  store i32 1, ptr %53, align 8, !tbaa !188
  tail call void @BKE_sequencer_active_set(ptr noundef %3, ptr noundef %14) #13
  %54 = load ptr, ptr %4, align 8, !tbaa !74
  %55 = tail call zeroext i8 @BKE_sequence_test_overlap(ptr noundef %54, ptr noundef %14) #13
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %47
  %58 = load ptr, ptr %4, align 8, !tbaa !74
  %59 = tail call zeroext i8 @BKE_sequence_base_shuffle(ptr noundef %58, ptr noundef %14, ptr noundef %3) #13
  br label %60

60:                                               ; preds = %57, %47
  tail call void @BKE_sequencer_update_muting(ptr noundef nonnull %4) #13
  %61 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 19
  %62 = load ptr, ptr %61, align 8, !tbaa !197
  %63 = getelementptr inbounds %struct.Editing, ptr %62, i64 0, i32 1
  tail call void @BKE_sequence_base_unique_name_recursive(ptr noundef nonnull %63, ptr noundef %14) #13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %3) #13
  br label %64

64:                                               ; preds = %60, %9
  %65 = phi i32 [ 2, %9 ], [ 4, %60 ]
  ret i32 %65
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @SEQUENCER_OT_meta_separate(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.143, ptr %0, align 8, !tbaa !101
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.144, ptr %2, align 8, !tbaa !104
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.145, ptr %3, align 8, !tbaa !105
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_meta_separate_exec, ptr %4, align 8, !tbaa !106
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %5, align 8, !tbaa !107
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !108
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_meta_separate_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 0) #13
  %5 = tail call ptr @BKE_sequencer_active_get(ptr noundef %3) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %63, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !99
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %63

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 36
  %13 = load ptr, ptr %12, align 8, !tbaa !76
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %11, %15
  %16 = phi ptr [ %17, %15 ], [ %13, %11 ]
  tail call void @BKE_sequence_invalidate_cache(ptr noundef %3, ptr noundef nonnull %16) #13
  %17 = load ptr, ptr %16, align 8, !tbaa !76
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %15, !llvm.loop !198

19:                                               ; preds = %15, %11
  %20 = load ptr, ptr %4, align 8, !tbaa !74
  tail call void @BLI_movelisttolist(ptr noundef %20, ptr noundef nonnull %12) #13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  %21 = load ptr, ptr %4, align 8, !tbaa !74
  tail call void @BLI_remlink(ptr noundef %21, ptr noundef nonnull %5) #13
  tail call void @BKE_sequence_free(ptr noundef %3, ptr noundef nonnull %5) #13
  %22 = load ptr, ptr %4, align 8, !tbaa !74
  %23 = load ptr, ptr %22, align 8, !tbaa !76
  %24 = icmp eq ptr %23, null
  br i1 %24, label %41, label %25

25:                                               ; preds = %19, %38
  %26 = phi ptr [ %39, %38 ], [ %23, %19 ]
  %27 = getelementptr inbounds %struct.Sequence, ptr %26, i64 0, i32 6
  %28 = load i32, ptr %27, align 4, !tbaa !99
  %29 = and i32 %28, 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %25
  %32 = tail call fastcc i32 @seq_depends_on_meta(ptr noundef nonnull %26, ptr noundef nonnull %5), !range !164
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.Sequence, ptr %26, i64 0, i32 5
  %36 = load i32, ptr %35, align 8, !tbaa !81
  %37 = or i32 %36, 1024
  store i32 %37, ptr %35, align 8, !tbaa !81
  br label %38

38:                                               ; preds = %25, %31, %34
  %39 = load ptr, ptr %26, align 8, !tbaa !76
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %25, !llvm.loop !199

41:                                               ; preds = %38, %19
  tail call fastcc void @recurs_del_seq_flag(ptr noundef %3, ptr noundef nonnull %22, i16 noundef signext 1024, i16 noundef signext 0)
  %42 = load ptr, ptr %4, align 8, !tbaa !74
  %43 = load ptr, ptr %42, align 8, !tbaa !76
  %44 = icmp eq ptr %43, null
  br i1 %44, label %62, label %45

45:                                               ; preds = %41, %59
  %46 = phi ptr [ %60, %59 ], [ %43, %41 ]
  %47 = getelementptr inbounds %struct.Sequence, ptr %46, i64 0, i32 5
  %48 = load i32, ptr %47, align 8, !tbaa !81
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %45
  %52 = and i32 %48, -9
  store i32 %52, ptr %47, align 8, !tbaa !81
  %53 = load ptr, ptr %4, align 8, !tbaa !74
  %54 = tail call zeroext i8 @BKE_sequence_test_overlap(ptr noundef %53, ptr noundef nonnull %46) #13
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load ptr, ptr %4, align 8, !tbaa !74
  %58 = tail call zeroext i8 @BKE_sequence_base_shuffle(ptr noundef %57, ptr noundef nonnull %46, ptr noundef %3) #13
  br label %59

59:                                               ; preds = %45, %56, %51
  %60 = load ptr, ptr %46, align 8, !tbaa !76
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %45, !llvm.loop !200

62:                                               ; preds = %59, %41
  tail call void @BKE_sequencer_sort(ptr noundef %3) #13
  tail call void @BKE_sequencer_update_muting(ptr noundef nonnull %4) #13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %3) #13
  br label %63

63:                                               ; preds = %2, %7, %62
  %64 = phi i32 [ 4, %62 ], [ 2, %7 ], [ 2, %2 ]
  ret i32 %64
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @SEQUENCER_OT_view_all(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.146, ptr %0, align 8, !tbaa !101
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.147, ptr %2, align 8, !tbaa !104
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.148, ptr %3, align 8, !tbaa !105
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_view_all_exec, ptr %4, align 8, !tbaa !106
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sequencer_active, ptr %5, align 8, !tbaa !107
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %6, align 8, !tbaa !108
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_view_all_exec(ptr noundef %0, ptr noundef %1) #1 {
  %3 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  %4 = tail call ptr @UI_view2d_fromcontext(ptr noundef %0) #13
  %5 = tail call i32 @WM_operator_smooth_viewtx_get(ptr noundef %1) #13
  tail call void @UI_view2d_smooth_view(ptr noundef %0, ptr noundef %3, ptr noundef %4, i32 noundef %5) #13
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @SEQUENCER_OT_view_all_preview(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.146, ptr %0, align 8, !tbaa !101
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.149, ptr %2, align 8, !tbaa !104
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.150, ptr %3, align 8, !tbaa !105
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_view_all_preview_exec, ptr %4, align 8, !tbaa !106
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sequencer_active, ptr %5, align 8, !tbaa !107
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %6, align 8, !tbaa !108
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_view_all_preview_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %5 = tail call ptr @UI_view2d_fromcontext(ptr noundef %0) #13
  %6 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !201
  tail call void @UI_view2d_curRect_validate(ptr noundef %5) #13
  tail call void @UI_view2d_sync(ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef 1) #13
  %7 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  tail call void @ED_area_tag_redraw(ptr noundef %7) #13
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @SEQUENCER_OT_view_zoom_ratio(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.151, ptr %0, align 8, !tbaa !101
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.152, ptr %2, align 8, !tbaa !104
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.153, ptr %3, align 8, !tbaa !105
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_view_zoom_ratio_exec, ptr %4, align 8, !tbaa !106
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sequencer_active, ptr %5, align 8, !tbaa !107
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !109
  %8 = tail call ptr @RNA_def_float(ptr noundef %7, ptr noundef nonnull @.str.154, float noundef 1.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.156, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_view_zoom_ratio_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %4 = tail call ptr @UI_view2d_fromcontext(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !110
  %7 = tail call float @RNA_float_get(ptr noundef %6, ptr noundef nonnull @.str.154) #13
  %8 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 30
  %9 = load i16, ptr %8, align 2, !tbaa !202
  %10 = sext i16 %9 to i32
  %11 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 33
  %12 = load i32, ptr %11, align 4, !tbaa !203
  %13 = mul nsw i32 %12, %10
  %14 = sdiv i32 %13, 100
  %15 = sitofp i32 %14 to float
  %16 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 34
  %17 = load i32, ptr %16, align 8, !tbaa !204
  %18 = mul nsw i32 %17, %10
  %19 = sdiv i32 %18, 100
  %20 = sitofp i32 %19 to float
  %21 = getelementptr inbounds %struct.View2D, ptr %4, i64 0, i32 4
  %22 = getelementptr inbounds %struct.View2D, ptr %4, i64 0, i32 4, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !83
  %24 = load i32, ptr %21, align 4, !tbaa !84
  %25 = sub nsw i32 %23, %24
  %26 = sitofp i32 %25 to float
  %27 = fdiv float %26, %15
  %28 = getelementptr inbounds %struct.View2D, ptr %4, i64 0, i32 4, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !205
  %30 = getelementptr inbounds %struct.View2D, ptr %4, i64 0, i32 4, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !206
  %32 = sub nsw i32 %29, %31
  %33 = sitofp i32 %32 to float
  %34 = fdiv float %33, %20
  %35 = getelementptr inbounds %struct.View2D, ptr %4, i64 0, i32 1
  %36 = fmul float %27, %15
  %37 = fdiv float %36, %7
  %38 = fadd float %37, 5.000000e-01
  %39 = tail call float @llvm.floor.f32(float %38)
  %40 = fmul float %34, %20
  %41 = fdiv float %40, %7
  %42 = fadd float %41, 5.000000e-01
  %43 = tail call float @llvm.floor.f32(float %42)
  tail call void @BLI_rctf_resize(ptr noundef nonnull %35, float noundef %39, float noundef %43) #13
  %44 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  tail call void @ED_region_tag_redraw(ptr noundef %44) #13
  ret i32 4
}

declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @SEQUENCER_OT_view_toggle(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.157, ptr %0, align 8, !tbaa !101
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.158, ptr %2, align 8, !tbaa !104
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.159, ptr %3, align 8, !tbaa !105
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_view_toggle_exec, ptr %4, align 8, !tbaa !106
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sequencer_active, ptr %5, align 8, !tbaa !107
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %6, align 8, !tbaa !108
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_view_toggle_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @CTX_wm_space_data(ptr noundef %0) #13
  %4 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 15
  %5 = load i32, ptr %4, align 8, !tbaa !98
  %6 = add nsw i32 %5, 1
  %7 = icmp sgt i32 %5, 2
  %8 = select i1 %7, i32 1, i32 %6
  store i32 %8, ptr %4, align 8, !tbaa !98
  %9 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  tail call void @ED_area_tag_refresh(ptr noundef %9) #13
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @SEQUENCER_OT_view_selected(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.160, ptr %0, align 8, !tbaa !101
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.161, ptr %2, align 8, !tbaa !104
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.162, ptr %3, align 8, !tbaa !105
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_view_selected_exec, ptr %4, align 8, !tbaa !106
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sequencer_active, ptr %5, align 8, !tbaa !107
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %6, align 8, !tbaa !108
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_view_selected_exec(ptr noundef %0, ptr noundef %1) #1 {
  %3 = alloca %struct.rctf, align 4
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %5 = tail call ptr @UI_view2d_fromcontext(ptr noundef %0) #13
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  %7 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %4, i8 noundef zeroext 0) #13
  %8 = tail call ptr @BKE_sequencer_active_get(ptr noundef %4) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  %9 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !201
  %10 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 55
  %11 = load i16, ptr %10, align 4, !tbaa !207
  %12 = sitofp i16 %11 to double
  %13 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 65
  %14 = load float, ptr %13, align 4, !tbaa !208
  %15 = fpext float %14 to double
  %16 = fdiv double %12, %15
  %17 = fptosi double %16 to i32
  %18 = icmp eq ptr %7, null
  br i1 %18, label %90, label %19

19:                                               ; preds = %2
  %20 = load ptr, ptr %7, align 8, !tbaa !74
  %21 = load ptr, ptr %20, align 8, !tbaa !76
  %22 = icmp eq ptr %21, null
  br i1 %22, label %56, label %23

23:                                               ; preds = %19, %46
  %24 = phi ptr [ %51, %46 ], [ %21, %19 ]
  %25 = phi i32 [ %50, %46 ], [ 600000, %19 ]
  %26 = phi i32 [ %49, %46 ], [ -600000, %19 ]
  %27 = phi i32 [ %48, %46 ], [ 33, %19 ]
  %28 = phi i32 [ %47, %46 ], [ 0, %19 ]
  %29 = getelementptr inbounds %struct.Sequence, ptr %24, i64 0, i32 5
  %30 = load i32, ptr %29, align 8, !tbaa !81
  %31 = and i32 %30, 1
  %32 = icmp ne i32 %31, 0
  %33 = icmp eq ptr %24, %8
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %23
  %36 = getelementptr inbounds %struct.Sequence, ptr %24, i64 0, i32 15
  %37 = load i32, ptr %36, align 8, !tbaa !77
  %38 = tail call i32 @llvm.smin.i32(i32 %25, i32 %37)
  %39 = getelementptr inbounds %struct.Sequence, ptr %24, i64 0, i32 16
  %40 = load i32, ptr %39, align 4, !tbaa !51
  %41 = tail call i32 @llvm.smax.i32(i32 %40, i32 %26)
  %42 = getelementptr inbounds %struct.Sequence, ptr %24, i64 0, i32 13
  %43 = load i32, ptr %42, align 8, !tbaa !46
  %44 = tail call i32 @llvm.smin.i32(i32 %27, i32 %43)
  %45 = tail call i32 @llvm.smax.i32(i32 %43, i32 %28)
  br label %46

46:                                               ; preds = %23, %35
  %47 = phi i32 [ %45, %35 ], [ %28, %23 ]
  %48 = phi i32 [ %44, %35 ], [ %27, %23 ]
  %49 = phi i32 [ %41, %35 ], [ %26, %23 ]
  %50 = phi i32 [ %38, %35 ], [ %25, %23 ]
  %51 = load ptr, ptr %24, align 8, !tbaa !76
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %23, !llvm.loop !209

53:                                               ; preds = %46
  %54 = add nsw i32 %48, -1
  %55 = sitofp i32 %54 to float
  br label %56

56:                                               ; preds = %53, %19
  %57 = phi i32 [ 0, %19 ], [ %47, %53 ]
  %58 = phi float [ 3.200000e+01, %19 ], [ %55, %53 ]
  %59 = phi i32 [ -600000, %19 ], [ %49, %53 ]
  %60 = phi i32 [ 600000, %19 ], [ %50, %53 ]
  %61 = icmp eq i32 %57, 0
  br i1 %61, label %90, label %62

62:                                               ; preds = %56
  %63 = tail call i32 @WM_operator_smooth_viewtx_get(ptr noundef %1) #13
  %64 = add nsw i32 %59, %17
  %65 = sub nsw i32 %60, %17
  %66 = add nuw nsw i32 %57, 1
  %67 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 3
  %68 = load float, ptr %67, align 4, !tbaa !53
  %69 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 2
  %70 = load float, ptr %69, align 4, !tbaa !47
  %71 = fsub float %68, %70
  %72 = fptosi float %71 to i32
  %73 = sitofp i32 %65 to float
  store float %73, ptr %3, align 4, !tbaa !44
  %74 = sitofp i32 %64 to float
  %75 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 1
  store float %74, ptr %75, align 4, !tbaa !52
  store float %58, ptr %69, align 4, !tbaa !47
  %76 = sitofp i32 %66 to float
  store float %76, ptr %67, align 4, !tbaa !53
  %77 = sitofp i32 %72 to float
  %78 = fsub float %76, %58
  %79 = fcmp olt float %78, %77
  br i1 %79, label %80, label %89

80:                                               ; preds = %62
  %81 = fadd float %58, %76
  %82 = fmul float %81, 5.000000e-01
  %83 = fptosi float %82 to i32
  %84 = sdiv i32 %72, 2
  %85 = sub nsw i32 %83, %84
  %86 = sitofp i32 %85 to float
  store float %86, ptr %69, align 4, !tbaa !47
  %87 = add nsw i32 %84, %83
  %88 = sitofp i32 %87 to float
  store float %88, ptr %67, align 4, !tbaa !53
  br label %89

89:                                               ; preds = %80, %62
  call void @UI_view2d_smooth_view(ptr noundef %0, ptr noundef %6, ptr noundef nonnull %3, i32 noundef %63) #13
  br label %90

90:                                               ; preds = %56, %2, %89
  %91 = phi i32 [ 4, %89 ], [ 2, %2 ], [ 2, %56 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  ret i32 %91
}

; Function Attrs: nounwind uwtable
define dso_local void @SEQUENCER_OT_strip_jump(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.163, ptr %0, align 8, !tbaa !101
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.164, ptr %2, align 8, !tbaa !104
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.165, ptr %3, align 8, !tbaa !105
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_strip_jump_exec, ptr %4, align 8, !tbaa !106
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_strip_jump_poll, ptr %5, align 8, !tbaa !107
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !108
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !109
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.166, i32 noundef 1, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.40) #13
  %10 = load ptr, ptr %7, align 8, !tbaa !109
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.168, i32 noundef 1, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.40) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_strip_jump_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca [2 x i32], align 4
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !110
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.166) #13
  %8 = load ptr, ptr %5, align 8, !tbaa !110
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.168) #13
  %10 = and i32 %7, 255
  %11 = icmp eq i32 %10, 0
  %12 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !112
  %14 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %4, i8 noundef zeroext 0) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %71, label %16

16:                                               ; preds = %2
  %17 = load ptr, ptr %14, align 8, !tbaa !74
  %18 = load ptr, ptr %17, align 8, !tbaa !76
  %19 = icmp eq ptr %18, null
  br i1 %19, label %71, label %20

20:                                               ; preds = %16
  %21 = and i32 %9, 255
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds [2 x i32], ptr %3, i64 0, i64 1
  br label %24

24:                                               ; preds = %20, %66
  %25 = phi ptr [ %18, %20 ], [ %69, %66 ]
  %26 = phi i32 [ %13, %20 ], [ %68, %66 ]
  %27 = phi i32 [ 600000, %20 ], [ %67, %66 ]
  %28 = getelementptr inbounds %struct.Sequence, ptr %25, i64 0, i32 5
  %29 = load i32, ptr %28, align 8, !tbaa !81
  %30 = and i32 %29, 32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %66

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.Sequence, ptr %25, i64 0, i32 15
  %34 = load i32, ptr %33, align 8, !tbaa !77
  br i1 %22, label %40, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.Sequence, ptr %25, i64 0, i32 16
  %37 = load i32, ptr %36, align 4, !tbaa !51
  %38 = add nsw i32 %37, %34
  %39 = sdiv i32 %38, 2
  store i32 %39, ptr %3, align 4, !tbaa !43
  br label %43

40:                                               ; preds = %32
  store i32 %34, ptr %3, align 4, !tbaa !43
  %41 = getelementptr inbounds %struct.Sequence, ptr %25, i64 0, i32 16
  %42 = load i32, ptr %41, align 4, !tbaa !51
  store i32 %42, ptr %23, align 4, !tbaa !43
  br label %43

43:                                               ; preds = %40, %35
  %44 = phi i64 [ 1, %35 ], [ 2, %40 ]
  br label %45

45:                                               ; preds = %43, %59
  %46 = phi i64 [ 0, %43 ], [ %64, %59 ]
  %47 = phi i32 [ %26, %43 ], [ %63, %59 ]
  %48 = phi i32 [ %27, %43 ], [ %62, %59 ]
  %49 = getelementptr inbounds [2 x i32], ptr %3, i64 0, i64 %46
  %50 = load i32, ptr %49, align 4, !tbaa !43
  br i1 %11, label %51, label %55

51:                                               ; preds = %45
  %52 = icmp slt i32 %50, %13
  %53 = sub nsw i32 %13, %50
  %54 = select i1 %52, i32 %53, i32 600000
  br label %59

55:                                               ; preds = %45
  %56 = icmp sgt i32 %50, %13
  %57 = sub nsw i32 %50, %13
  %58 = select i1 %56, i32 %57, i32 600000
  br label %59

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %54, %51 ], [ %58, %55 ]
  %61 = icmp slt i32 %60, %48
  %62 = tail call i32 @llvm.smin.i32(i32 %60, i32 %48)
  %63 = select i1 %61, i32 %50, i32 %47
  %64 = add nuw nsw i64 %46, 1
  %65 = icmp eq i64 %64, %44
  br i1 %65, label %66, label %45, !llvm.loop !210

66:                                               ; preds = %59, %24
  %67 = phi i32 [ %27, %24 ], [ %62, %59 ]
  %68 = phi i32 [ %26, %24 ], [ %63, %59 ]
  %69 = load ptr, ptr %25, align 8, !tbaa !76
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %24, !llvm.loop !211

71:                                               ; preds = %66, %16, %2
  %72 = phi i32 [ %13, %2 ], [ %13, %16 ], [ %68, %66 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  %73 = icmp eq i32 %72, %13
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  store i32 %72, ptr %12, align 8, !tbaa !112
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67305472, ptr noundef %4) #13
  br label %75

75:                                               ; preds = %71, %74
  %76 = phi i32 [ 4, %74 ], [ 2, %71 ]
  ret i32 %76
}

; Function Attrs: nounwind uwtable
define internal i32 @sequencer_strip_jump_poll(ptr noundef %0) #1 {
  %2 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !212
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %6 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %5, i8 noundef zeroext 0) #13
  %7 = icmp ne ptr %6, null
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %4
  %10 = phi i32 [ %8, %4 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define dso_local void @SEQUENCER_OT_swap(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.170, ptr %0, align 8, !tbaa !101
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.171, ptr %2, align 8, !tbaa !104
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.172, ptr %3, align 8, !tbaa !105
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_swap_exec, ptr %4, align 8, !tbaa !106
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %5, align 8, !tbaa !107
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !108
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !109
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.117, ptr noundef nonnull @prop_side_lr_types, i32 noundef 2, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.173) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_swap_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 0) #13
  %5 = tail call ptr @BKE_sequencer_active_get(ptr noundef %3) #13
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !110
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.117) #13
  %9 = icmp eq ptr %5, null
  br i1 %9, label %240, label %10

10:                                               ; preds = %2
  %11 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 0) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %68, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr %11, align 8, !tbaa !74
  %15 = load ptr, ptr %14, align 8, !tbaa !76
  %16 = icmp eq ptr %15, null
  br i1 %16, label %68, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 13
  %19 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 14
  %20 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 16
  %21 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 15
  %22 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 16
  br label %23

23:                                               ; preds = %17, %63
  %24 = phi ptr [ %15, %17 ], [ %66, %63 ]
  %25 = phi i32 [ 600000, %17 ], [ %65, %63 ]
  %26 = phi ptr [ null, %17 ], [ %64, %63 ]
  %27 = icmp eq ptr %24, %5
  br i1 %27, label %63, label %28

28:                                               ; preds = %23
  %29 = load i32, ptr %18, align 8, !tbaa !46
  %30 = getelementptr inbounds %struct.Sequence, ptr %24, i64 0, i32 13
  %31 = load i32, ptr %30, align 8, !tbaa !46
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %63

33:                                               ; preds = %28
  %34 = load i32, ptr %19, align 4, !tbaa !119
  %35 = getelementptr inbounds %struct.Sequence, ptr %24, i64 0, i32 14
  %36 = load i32, ptr %35, align 4, !tbaa !119
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %63

38:                                               ; preds = %33
  switch i32 %8, label %56 [
    i32 1, label %39
    i32 2, label %49
  ]

39:                                               ; preds = %38
  %40 = getelementptr inbounds %struct.Sequence, ptr %24, i64 0, i32 16
  %41 = load i32, ptr %40, align 4, !tbaa !51
  %42 = load i32, ptr %21, align 8, !tbaa !77
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %56, label %44

44:                                               ; preds = %39
  %45 = load i32, ptr %22, align 4, !tbaa !51
  %46 = getelementptr inbounds %struct.Sequence, ptr %24, i64 0, i32 15
  %47 = load i32, ptr %46, align 8, !tbaa !77
  %48 = sub nsw i32 %45, %47
  br label %56

49:                                               ; preds = %38
  %50 = getelementptr inbounds %struct.Sequence, ptr %24, i64 0, i32 15
  %51 = load i32, ptr %50, align 8, !tbaa !77
  %52 = load i32, ptr %20, align 4, !tbaa !51
  %53 = icmp slt i32 %51, %52
  %54 = sub nsw i32 %51, %52
  %55 = select i1 %53, i32 600000, i32 %54
  br label %56

56:                                               ; preds = %49, %44, %39, %38
  %57 = phi i32 [ 600000, %38 ], [ %48, %44 ], [ 600000, %39 ], [ %55, %49 ]
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %56
  %60 = icmp slt i32 %57, %25
  %61 = select i1 %60, ptr %24, ptr %26
  %62 = tail call i32 @llvm.smin.i32(i32 %57, i32 %25)
  br label %63

63:                                               ; preds = %59, %33, %28, %23
  %64 = phi ptr [ %26, %33 ], [ %26, %28 ], [ %26, %23 ], [ %61, %59 ]
  %65 = phi i32 [ %25, %33 ], [ %25, %28 ], [ %25, %23 ], [ %62, %59 ]
  %66 = load ptr, ptr %24, align 8, !tbaa !76
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %23, !llvm.loop !214

68:                                               ; preds = %56, %63, %13, %10
  %69 = phi ptr [ null, %10 ], [ null, %13 ], [ %64, %63 ], [ %24, %56 ]
  %70 = icmp eq ptr %69, null
  br i1 %70, label %240, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.Sequence, ptr %69, i64 0, i32 6
  %73 = load i32, ptr %72, align 4, !tbaa !99
  %74 = tail call i32 @BKE_sequence_effect_get_num_inputs(i32 noundef %73) #13
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %92

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.Sequence, ptr %69, i64 0, i32 43
  %78 = load ptr, ptr %77, align 8, !tbaa !215
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %240

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.Sequence, ptr %69, i64 0, i32 33
  %82 = load ptr, ptr %81, align 8, !tbaa !122
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %240

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.Sequence, ptr %69, i64 0, i32 34
  %86 = load ptr, ptr %85, align 8, !tbaa !123
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %240

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.Sequence, ptr %69, i64 0, i32 35
  %90 = load ptr, ptr %89, align 8, !tbaa !124
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %240

92:                                               ; preds = %88, %71
  %93 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 6
  %94 = load i32, ptr %93, align 4, !tbaa !99
  %95 = tail call i32 @BKE_sequence_effect_get_num_inputs(i32 noundef %94) #13
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %113

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 43
  %99 = load ptr, ptr %98, align 8, !tbaa !215
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %240

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 33
  %103 = load ptr, ptr %102, align 8, !tbaa !122
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %240

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 34
  %107 = load ptr, ptr %106, align 8, !tbaa !123
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %240

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 35
  %111 = load ptr, ptr %110, align 8, !tbaa !124
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %240

113:                                              ; preds = %109, %92
  switch i32 %8, label %142 [
    i32 1, label %114
    i32 2, label %128
  ]

114:                                              ; preds = %113
  %115 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 15
  %116 = load i32, ptr %115, align 8, !tbaa !77
  %117 = getelementptr inbounds %struct.Sequence, ptr %69, i64 0, i32 16
  %118 = load i32, ptr %117, align 4, !tbaa !51
  %119 = getelementptr inbounds %struct.Sequence, ptr %69, i64 0, i32 15
  %120 = load i32, ptr %119, align 8, !tbaa !77
  %121 = sub i32 %120, %116
  tail call void @BKE_sequence_translate(ptr noundef %3, ptr noundef %5, i32 noundef %121) #13
  tail call void @BKE_sequence_calc(ptr noundef %3, ptr noundef %5) #13
  %122 = load i32, ptr %119, align 8, !tbaa !77
  %123 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 16
  %124 = load i32, ptr %123, align 4, !tbaa !51
  %125 = add i32 %118, %122
  %126 = sub i32 %116, %125
  %127 = add i32 %126, %124
  tail call void @BKE_sequence_translate(ptr noundef %3, ptr noundef nonnull %69, i32 noundef %127) #13
  tail call void @BKE_sequence_calc(ptr noundef %3, ptr noundef nonnull %69) #13
  br label %142

128:                                              ; preds = %113
  %129 = getelementptr inbounds %struct.Sequence, ptr %69, i64 0, i32 15
  %130 = load i32, ptr %129, align 8, !tbaa !77
  %131 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 16
  %132 = load i32, ptr %131, align 4, !tbaa !51
  %133 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 15
  %134 = load i32, ptr %133, align 8, !tbaa !77
  %135 = sub i32 %134, %130
  tail call void @BKE_sequence_translate(ptr noundef %3, ptr noundef nonnull %69, i32 noundef %135) #13
  tail call void @BKE_sequence_calc(ptr noundef %3, ptr noundef nonnull %69) #13
  %136 = load i32, ptr %133, align 8, !tbaa !77
  %137 = getelementptr inbounds %struct.Sequence, ptr %69, i64 0, i32 16
  %138 = load i32, ptr %137, align 4, !tbaa !51
  %139 = add i32 %132, %136
  %140 = sub i32 %130, %139
  %141 = add i32 %140, %138
  tail call void @BKE_sequence_translate(ptr noundef %3, ptr noundef %5, i32 noundef %141) #13
  tail call void @BKE_sequence_calc(ptr noundef %3, ptr noundef %5) #13
  br label %142

142:                                              ; preds = %113, %128, %114
  %143 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 19
  %144 = load ptr, ptr %143, align 8, !tbaa !197
  %145 = load ptr, ptr %144, align 8, !tbaa !74
  %146 = load ptr, ptr %145, align 8, !tbaa !76
  %147 = icmp eq ptr %146, null
  br i1 %147, label %188, label %148

148:                                              ; preds = %142, %185
  %149 = phi ptr [ %186, %185 ], [ %146, %142 ]
  %150 = getelementptr inbounds %struct.Sequence, ptr %149, i64 0, i32 6
  %151 = load i32, ptr %150, align 4, !tbaa !99
  %152 = and i32 %151, 8
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %185, label %154

154:                                              ; preds = %148
  %155 = getelementptr inbounds %struct.Sequence, ptr %149, i64 0, i32 33
  %156 = load ptr, ptr %155, align 8, !tbaa !122
  %157 = icmp eq ptr %156, %5
  br i1 %157, label %167, label %158

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.Sequence, ptr %149, i64 0, i32 34
  %160 = load ptr, ptr %159, align 8, !tbaa !123
  %161 = icmp eq ptr %160, %5
  br i1 %161, label %167, label %162

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.Sequence, ptr %149, i64 0, i32 35
  %164 = load ptr, ptr %163, align 8, !tbaa !124
  %165 = icmp eq ptr %164, %5
  %166 = zext i1 %165 to i8
  br label %167

167:                                              ; preds = %154, %158, %162
  %168 = phi i8 [ 1, %158 ], [ 1, %154 ], [ %166, %162 ]
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %170, label %184

170:                                              ; preds = %167
  %171 = icmp eq ptr %156, %69
  br i1 %171, label %181, label %172

172:                                              ; preds = %170
  %173 = getelementptr inbounds %struct.Sequence, ptr %149, i64 0, i32 34
  %174 = load ptr, ptr %173, align 8, !tbaa !123
  %175 = icmp eq ptr %174, %69
  br i1 %175, label %181, label %176

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.Sequence, ptr %149, i64 0, i32 35
  %178 = load ptr, ptr %177, align 8, !tbaa !124
  %179 = icmp eq ptr %178, %69
  %180 = zext i1 %179 to i8
  br label %181

181:                                              ; preds = %170, %172, %176
  %182 = phi i8 [ 1, %172 ], [ 1, %170 ], [ %180, %176 ]
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %181, %167
  tail call void @BKE_sequence_calc(ptr noundef %3, ptr noundef nonnull %149) #13
  br label %185

185:                                              ; preds = %148, %181, %184
  %186 = load ptr, ptr %149, align 8, !tbaa !76
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %148, !llvm.loop !216

188:                                              ; preds = %185, %142
  %189 = load ptr, ptr %143, align 8, !tbaa !197
  %190 = load ptr, ptr %189, align 8, !tbaa !74
  %191 = load ptr, ptr %190, align 8, !tbaa !76
  %192 = icmp eq ptr %191, null
  br i1 %192, label %239, label %193

193:                                              ; preds = %188, %236
  %194 = phi ptr [ %237, %236 ], [ %191, %188 ]
  %195 = getelementptr inbounds %struct.Sequence, ptr %194, i64 0, i32 6
  %196 = load i32, ptr %195, align 4, !tbaa !99
  %197 = and i32 %196, 8
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %236, label %199

199:                                              ; preds = %193
  %200 = getelementptr inbounds %struct.Sequence, ptr %194, i64 0, i32 33
  %201 = load ptr, ptr %200, align 8, !tbaa !122
  %202 = icmp eq ptr %201, %5
  br i1 %202, label %212, label %203

203:                                              ; preds = %199
  %204 = getelementptr inbounds %struct.Sequence, ptr %194, i64 0, i32 34
  %205 = load ptr, ptr %204, align 8, !tbaa !123
  %206 = icmp eq ptr %205, %5
  br i1 %206, label %212, label %207

207:                                              ; preds = %203
  %208 = getelementptr inbounds %struct.Sequence, ptr %194, i64 0, i32 35
  %209 = load ptr, ptr %208, align 8, !tbaa !124
  %210 = icmp eq ptr %209, %5
  %211 = zext i1 %210 to i8
  br label %212

212:                                              ; preds = %199, %203, %207
  %213 = phi i8 [ 1, %203 ], [ 1, %199 ], [ %211, %207 ]
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %215, label %229

215:                                              ; preds = %212
  %216 = icmp eq ptr %201, %69
  br i1 %216, label %226, label %217

217:                                              ; preds = %215
  %218 = getelementptr inbounds %struct.Sequence, ptr %194, i64 0, i32 34
  %219 = load ptr, ptr %218, align 8, !tbaa !123
  %220 = icmp eq ptr %219, %69
  br i1 %220, label %226, label %221

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct.Sequence, ptr %194, i64 0, i32 35
  %223 = load ptr, ptr %222, align 8, !tbaa !124
  %224 = icmp eq ptr %223, %69
  %225 = zext i1 %224 to i8
  br label %226

226:                                              ; preds = %215, %217, %221
  %227 = phi i8 [ 1, %217 ], [ 1, %215 ], [ %225, %221 ]
  %228 = icmp eq i8 %227, 0
  br i1 %228, label %236, label %229

229:                                              ; preds = %226, %212
  %230 = load ptr, ptr %4, align 8, !tbaa !74
  %231 = tail call zeroext i8 @BKE_sequence_test_overlap(ptr noundef %230, ptr noundef nonnull %194) #13
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %236, label %233

233:                                              ; preds = %229
  %234 = load ptr, ptr %4, align 8, !tbaa !74
  %235 = tail call zeroext i8 @BKE_sequence_base_shuffle(ptr noundef %234, ptr noundef nonnull %194, ptr noundef %3) #13
  br label %236

236:                                              ; preds = %193, %226, %233, %229
  %237 = load ptr, ptr %194, align 8, !tbaa !76
  %238 = icmp eq ptr %237, null
  br i1 %238, label %239, label %193, !llvm.loop !217

239:                                              ; preds = %236, %188
  tail call void @BKE_sequencer_sort(ptr noundef %3) #13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %3) #13
  br label %240

240:                                              ; preds = %68, %97, %101, %105, %109, %76, %80, %84, %88, %2, %239
  %241 = phi i32 [ 4, %239 ], [ 2, %2 ], [ 2, %88 ], [ 2, %84 ], [ 2, %80 ], [ 2, %76 ], [ 2, %109 ], [ 2, %105 ], [ 2, %101 ], [ 2, %97 ], [ 2, %68 ]
  ret i32 %241
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @SEQUENCER_OT_rendersize(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.174, ptr %0, align 8, !tbaa !101
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.175, ptr %2, align 8, !tbaa !104
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.176, ptr %3, align 8, !tbaa !105
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_rendersize_exec, ptr %4, align 8, !tbaa !106
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %5, align 8, !tbaa !107
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !108
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_rendersize_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %4 = tail call ptr @BKE_sequencer_active_get(ptr noundef %3) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %34, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 24
  %8 = load ptr, ptr %7, align 8, !tbaa !187
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 6
  %12 = load i32, ptr %11, align 4, !tbaa !99
  switch i32 %12, label %20 [
    i32 0, label %13
    i32 3, label %17
  ]

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !112
  %16 = tail call ptr @BKE_sequencer_give_stripelem(ptr noundef nonnull %4, i32 noundef %15) #13
  br label %20

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.Strip, ptr %8, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !190
  br label %20

20:                                               ; preds = %13, %17, %10, %6
  %21 = phi ptr [ null, %10 ], [ %19, %17 ], [ %16, %13 ], [ null, %6 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %34, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.StripElem, ptr %21, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !218
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.StripElem, ptr %21, i64 0, i32 2
  %29 = load i32, ptr %28, align 4, !tbaa !220
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 33
  store i32 %25, ptr %32, align 4, !tbaa !221
  %33 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 34
  store i32 %29, ptr %33, align 8, !tbaa !222
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67371008, ptr noundef %3) #13
  br label %34

34:                                               ; preds = %20, %31, %27, %23, %2
  %35 = phi i32 [ 2, %2 ], [ 4, %31 ], [ 2, %27 ], [ 2, %23 ], [ 2, %20 ]
  ret i32 %35
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @SEQUENCER_OT_copy(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.177, ptr %0, align 8, !tbaa !101
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.178, ptr %2, align 8, !tbaa !104
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.40, ptr %3, align 8, !tbaa !105
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_copy_exec, ptr %4, align 8, !tbaa !106
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %5, align 8, !tbaa !107
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %6, align 8, !tbaa !108
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_copy_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %5 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %4, i8 noundef zeroext 0) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  tail call void @BKE_sequencer_free_clipboard() #13
  %6 = load ptr, ptr %5, align 8, !tbaa !74
  %7 = tail call zeroext i8 @BKE_sequence_base_isolated_sel_check(ptr noundef %6, i8 noundef zeroext 1) #13
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !165
  tail call void @BKE_report(ptr noundef %11, i32 noundef 32, ptr noundef nonnull @.str.215) #13
  br label %41

12:                                               ; preds = %2
  %13 = load ptr, ptr %5, align 8, !tbaa !74
  call void @BKE_sequence_base_dupli_recursive(ptr noundef %4, ptr noundef null, ptr noundef nonnull %3, ptr noundef %13, i32 noundef 1) #13
  %14 = load ptr, ptr %3, align 8, !tbaa !169
  %15 = icmp eq ptr %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %5, align 8, !tbaa !74
  call void @BLI_movelisttolist(ptr noundef %17, ptr noundef nonnull %3) #13
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %14, %16 ], [ %21, %18 ]
  %20 = call i32 @BKE_sequencer_recursive_apply(ptr noundef nonnull %19, ptr noundef nonnull @apply_unique_name_cb, ptr noundef %4) #13
  %21 = load ptr, ptr %19, align 8, !tbaa !170
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %18, !llvm.loop !223

23:                                               ; preds = %18
  store ptr %14, ptr @seqbase_clipboard, align 8, !tbaa !169
  %24 = load ptr, ptr %5, align 8, !tbaa !74
  %25 = getelementptr inbounds %struct.ListBase, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !224
  store ptr %26, ptr getelementptr inbounds (%struct.ListBase, ptr @seqbase_clipboard, i64 0, i32 1), align 8, !tbaa !224
  %27 = getelementptr inbounds %struct.Sequence, ptr %14, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !225
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  store ptr null, ptr %28, align 8, !tbaa !170
  store ptr %28, ptr %25, align 8, !tbaa !224
  store ptr null, ptr %27, align 8, !tbaa !225
  br label %31

31:                                               ; preds = %23, %30, %12
  %32 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 5
  %33 = load i32, ptr %32, align 8, !tbaa !112
  store i32 %33, ptr @seqbase_clipboard_frame, align 4, !tbaa !43
  %34 = load ptr, ptr @seqbase_clipboard, align 8, !tbaa !76
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %31, %36
  %37 = phi ptr [ %38, %36 ], [ %34, %31 ]
  call fastcc void @seq_copy_del_sound(ptr noundef %4, ptr noundef nonnull %37)
  %38 = load ptr, ptr %37, align 8, !tbaa !76
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %36, !llvm.loop !226

40:                                               ; preds = %36, %31
  call void @BKE_sequencer_base_clipboard_pointers_store(ptr noundef nonnull @seqbase_clipboard) #13
  br label %41

41:                                               ; preds = %40, %9
  %42 = phi i32 [ 2, %9 ], [ 4, %40 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  ret i32 %42
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @SEQUENCER_OT_paste(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.179, ptr %0, align 8, !tbaa !101
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.180, ptr %2, align 8, !tbaa !104
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.40, ptr %3, align 8, !tbaa !105
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_paste_exec, ptr %4, align 8, !tbaa !106
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sequencer_active, ptr %5, align 8, !tbaa !107
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !108
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_paste_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = alloca %struct.SeqIterator, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = tail call ptr @CTX_data_main(ptr noundef %0) #13
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %7 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %6, i8 noundef zeroext 1) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %8 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %6, i8 noundef zeroext 0) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  call void @BKE_sequence_iterator_begin(ptr noundef nonnull %8, ptr noundef nonnull %3, i8 noundef zeroext 1) #13
  %11 = getelementptr inbounds %struct.SeqIterator, ptr %3, i64 0, i32 4
  %12 = load i32, ptr %11, align 8, !tbaa !88
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.SeqIterator, ptr %3, i64 0, i32 3
  br label %16

16:                                               ; preds = %16, %14
  %17 = load ptr, ptr %15, align 8, !tbaa !90
  %18 = getelementptr inbounds %struct.Sequence, ptr %17, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !81
  %20 = and i32 %19, -8
  store i32 %20, ptr %18, align 8, !tbaa !81
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %3) #13
  %21 = load i32, ptr %11, align 8, !tbaa !88
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %16, !llvm.loop !91

23:                                               ; preds = %16, %10
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  br label %24

24:                                               ; preds = %2, %23
  %25 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 5
  %26 = load i32, ptr %25, align 8, !tbaa !112
  %27 = load i32, ptr @seqbase_clipboard_frame, align 4, !tbaa !43
  %28 = sub nsw i32 %26, %27
  call void @BKE_sequence_base_dupli_recursive(ptr noundef %6, ptr noundef null, ptr noundef nonnull %4, ptr noundef nonnull @seqbase_clipboard, i32 noundef 1) #13
  %29 = icmp eq i32 %26, %27
  %30 = load ptr, ptr %4, align 8
  %31 = icmp eq ptr %30, null
  %32 = select i1 %29, i1 true, i1 %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %24, %33
  %34 = phi ptr [ %35, %33 ], [ %30, %24 ]
  call void @BKE_sequence_translate(ptr noundef %6, ptr noundef nonnull %34, i32 noundef %28) #13
  %35 = load ptr, ptr %34, align 8, !tbaa !76
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %33, !llvm.loop !227

37:                                               ; preds = %33, %24
  call void @BKE_sequencer_base_clipboard_pointers_restore(ptr noundef nonnull %4, ptr noundef %5) #13
  %38 = load ptr, ptr %4, align 8, !tbaa !76
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %37, %40
  %41 = phi ptr [ %42, %40 ], [ %38, %37 ]
  call void @BKE_sequence_sound_init(ptr noundef %6, ptr noundef nonnull %41) #13
  %42 = load ptr, ptr %41, align 8, !tbaa !76
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %40, !llvm.loop !228

44:                                               ; preds = %40, %37
  %45 = load ptr, ptr %4, align 8, !tbaa !169
  %46 = load ptr, ptr %7, align 8, !tbaa !74
  call void @BLI_movelisttolist(ptr noundef %46, ptr noundef nonnull %4) #13
  %47 = icmp eq ptr %45, null
  br i1 %47, label %64, label %48

48:                                               ; preds = %44, %48
  %49 = phi ptr [ %51, %48 ], [ %45, %44 ]
  %50 = call i32 @BKE_sequencer_recursive_apply(ptr noundef nonnull %49, ptr noundef nonnull @apply_unique_name_cb, ptr noundef %6) #13
  %51 = load ptr, ptr %49, align 8, !tbaa !170
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %48, !llvm.loop !229

53:                                               ; preds = %48, %61
  %54 = phi ptr [ %62, %61 ], [ %45, %48 ]
  %55 = load ptr, ptr %7, align 8, !tbaa !74
  %56 = call zeroext i8 @BKE_sequence_test_overlap(ptr noundef %55, ptr noundef nonnull %54) #13
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = load ptr, ptr %7, align 8, !tbaa !74
  %60 = call zeroext i8 @BKE_sequence_base_shuffle(ptr noundef %59, ptr noundef nonnull %54, ptr noundef %6) #13
  br label %61

61:                                               ; preds = %53, %58
  %62 = load ptr, ptr %54, align 8, !tbaa !170
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %53, !llvm.loop !230

64:                                               ; preds = %61, %44
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %6) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @SEQUENCER_OT_swap_data(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.181, ptr %0, align 8, !tbaa !101
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.182, ptr %2, align 8, !tbaa !104
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.183, ptr %3, align 8, !tbaa !105
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_swap_data_exec, ptr %4, align 8, !tbaa !106
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sequencer_active, ptr %5, align 8, !tbaa !107
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !108
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_swap_data_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  %7 = call i32 @BKE_sequencer_active_get_pair(ptr noundef %6, ptr noundef nonnull %3, ptr noundef nonnull %4) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !165
  call void @BKE_report(ptr noundef %11, i32 noundef 32, ptr noundef nonnull @.str.216) #13
  br label %53

12:                                               ; preds = %2
  %13 = load ptr, ptr %3, align 8, !tbaa !76
  %14 = load ptr, ptr %4, align 8, !tbaa !76
  %15 = call i32 @BKE_sequence_swap(ptr noundef %13, ptr noundef %14, ptr noundef nonnull %5) #13
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !165
  %20 = load ptr, ptr %5, align 8, !tbaa !76
  call void @BKE_report(ptr noundef %19, i32 noundef 32, ptr noundef %20) #13
  br label %53

21:                                               ; preds = %12
  %22 = load ptr, ptr %3, align 8, !tbaa !76
  %23 = getelementptr inbounds %struct.Sequence, ptr %22, i64 0, i32 38
  %24 = load ptr, ptr %23, align 8, !tbaa !231
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  call void @sound_remove_scene_sound(ptr noundef %6, ptr noundef nonnull %24) #13
  br label %27

27:                                               ; preds = %26, %21
  %28 = load ptr, ptr %4, align 8, !tbaa !76
  %29 = getelementptr inbounds %struct.Sequence, ptr %28, i64 0, i32 38
  %30 = load ptr, ptr %29, align 8, !tbaa !231
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  call void @sound_remove_scene_sound(ptr noundef %6, ptr noundef nonnull %30) #13
  br label %33

33:                                               ; preds = %32, %27
  %34 = load ptr, ptr %3, align 8, !tbaa !76
  %35 = getelementptr inbounds %struct.Sequence, ptr %34, i64 0, i32 38
  store ptr null, ptr %35, align 8, !tbaa !231
  %36 = load ptr, ptr %4, align 8, !tbaa !76
  %37 = getelementptr inbounds %struct.Sequence, ptr %36, i64 0, i32 38
  store ptr null, ptr %37, align 8, !tbaa !231
  call void @BKE_sequence_calc(ptr noundef %6, ptr noundef %34) #13
  %38 = load ptr, ptr %4, align 8, !tbaa !76
  call void @BKE_sequence_calc(ptr noundef %6, ptr noundef %38) #13
  %39 = load ptr, ptr %3, align 8, !tbaa !76
  %40 = getelementptr inbounds %struct.Sequence, ptr %39, i64 0, i32 37
  %41 = load ptr, ptr %40, align 8, !tbaa !232
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %33
  %44 = call ptr @sound_add_scene_sound_defaults(ptr noundef %6, ptr noundef %39) #13
  br label %45

45:                                               ; preds = %43, %33
  %46 = load ptr, ptr %4, align 8, !tbaa !76
  %47 = getelementptr inbounds %struct.Sequence, ptr %46, i64 0, i32 37
  %48 = load ptr, ptr %47, align 8, !tbaa !232
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %45
  %51 = call ptr @sound_add_scene_sound_defaults(ptr noundef %6, ptr noundef %46) #13
  br label %52

52:                                               ; preds = %50, %45
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %6) #13
  br label %53

53:                                               ; preds = %52, %17, %9
  %54 = phi i32 [ 2, %9 ], [ 2, %17 ], [ 4, %52 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  ret i32 %54
}

; Function Attrs: nounwind uwtable
define dso_local void @SEQUENCER_OT_view_ghost_border(ptr noundef %0) local_unnamed_addr #1 {
  store ptr @.str.184, ptr %0, align 8, !tbaa !101
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.185, ptr %2, align 8, !tbaa !104
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.186, ptr %3, align 8, !tbaa !105
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_border_select_invoke, ptr %4, align 8, !tbaa !118
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view_ghost_border_exec, ptr %5, align 8, !tbaa !106
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_border_select_modal, ptr %6, align 8, !tbaa !126
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_view_poll, ptr %7, align 8, !tbaa !107
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_border_select_cancel, ptr %8, align 8, !tbaa !233
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %9, align 8, !tbaa !108
  tail call void @WM_operator_properties_gesture_border(ptr noundef nonnull %0, i8 noundef zeroext 0) #13
  ret void
}

declare i32 @WM_border_select_invoke(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @view_ghost_border_exec(ptr noundef %0, ptr noundef %1) #1 {
  %3 = alloca %struct.rctf, align 4
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %5 = tail call ptr @UI_view2d_fromcontext(ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  call void @WM_operator_properties_border_to_rctf(ptr noundef %1, ptr noundef nonnull %3) #13
  call void @UI_view2d_region_to_view_rctf(ptr noundef %5, ptr noundef nonnull %3, ptr noundef nonnull %3) #13
  %6 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 1
  %7 = load float, ptr %6, align 4, !tbaa !52
  %8 = load float, ptr %5, align 4, !tbaa !44
  %9 = fsub float %7, %8
  %10 = call float @llvm.fabs.f32(float %9)
  %11 = load float, ptr %3, align 4, !tbaa !44
  %12 = fdiv float %11, %10
  store float %12, ptr %3, align 4, !tbaa !44
  %13 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 3
  %14 = load float, ptr %13, align 4, !tbaa !53
  %15 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 2
  %16 = load float, ptr %15, align 4, !tbaa !47
  %17 = fsub float %14, %16
  %18 = call float @llvm.fabs.f32(float %17)
  %19 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 2
  %20 = load float, ptr %19, align 4, !tbaa !47
  %21 = fdiv float %20, %18
  store float %21, ptr %19, align 4, !tbaa !47
  %22 = load float, ptr %5, align 4, !tbaa !44
  %23 = fsub float %7, %22
  %24 = call float @llvm.fabs.f32(float %23)
  %25 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 1
  %26 = load float, ptr %25, align 4, !tbaa !52
  %27 = fdiv float %26, %24
  store float %27, ptr %25, align 4, !tbaa !52
  %28 = load float, ptr %15, align 4, !tbaa !47
  %29 = fsub float %14, %28
  %30 = call float @llvm.fabs.f32(float %29)
  %31 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 3
  %32 = load float, ptr %31, align 4, !tbaa !53
  %33 = fdiv float %32, %30
  store float %33, ptr %31, align 4, !tbaa !53
  %34 = fadd float %12, 5.000000e-01
  store float %34, ptr %3, align 4, !tbaa !44
  %35 = fadd float %27, 5.000000e-01
  store float %35, ptr %25, align 4, !tbaa !52
  %36 = fadd float %21, 5.000000e-01
  store float %36, ptr %19, align 4, !tbaa !47
  %37 = fadd float %33, 5.000000e-01
  store float %37, ptr %31, align 4, !tbaa !53
  %38 = fcmp olt float %34, 0.000000e+00
  br i1 %38, label %39, label %40

39:                                               ; preds = %2
  store float 0.000000e+00, ptr %3, align 4, !tbaa !44
  br label %43

40:                                               ; preds = %2
  %41 = fcmp ogt float %34, 1.000000e+00
  br i1 %41, label %42, label %43

42:                                               ; preds = %40
  store float 1.000000e+00, ptr %3, align 4, !tbaa !44
  br label %43

43:                                               ; preds = %40, %42, %39
  %44 = fcmp olt float %36, 0.000000e+00
  br i1 %44, label %47, label %45

45:                                               ; preds = %43
  %46 = fcmp ogt float %36, 1.000000e+00
  br i1 %46, label %47, label %49

47:                                               ; preds = %45, %43
  %48 = phi float [ 0.000000e+00, %43 ], [ 1.000000e+00, %45 ]
  store float %48, ptr %19, align 4, !tbaa !47
  br label %49

49:                                               ; preds = %47, %45
  %50 = fcmp olt float %35, 0.000000e+00
  br i1 %50, label %53, label %51

51:                                               ; preds = %49
  %52 = fcmp ogt float %35, 1.000000e+00
  br i1 %52, label %53, label %55

53:                                               ; preds = %51, %49
  %54 = phi float [ 0.000000e+00, %49 ], [ 1.000000e+00, %51 ]
  store float %54, ptr %25, align 4, !tbaa !52
  br label %55

55:                                               ; preds = %53, %51
  %56 = fcmp olt float %37, 0.000000e+00
  br i1 %56, label %59, label %57

57:                                               ; preds = %55
  %58 = fcmp ogt float %37, 1.000000e+00
  br i1 %58, label %59, label %61

59:                                               ; preds = %57, %55
  %60 = phi float [ 0.000000e+00, %55 ], [ 1.000000e+00, %57 ]
  store float %60, ptr %31, align 4, !tbaa !53
  br label %61

61:                                               ; preds = %59, %57
  %62 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 19
  %63 = load ptr, ptr %62, align 8, !tbaa !197
  %64 = getelementptr inbounds %struct.Editing, ptr %63, i64 0, i32 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %64, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !201
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %4) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  ret i32 4
}

declare i32 @WM_border_select_modal(ptr noundef, ptr noundef, ptr noundef) #3

declare void @WM_border_select_cancel(ptr noundef, ptr noundef) #3

declare void @WM_operator_properties_gesture_border(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @SEQUENCER_OT_rebuild_proxy(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.187, ptr %0, align 8, !tbaa !101
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.188, ptr %2, align 8, !tbaa !104
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.189, ptr %3, align 8, !tbaa !105
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_rebuild_proxy_exec, ptr %4, align 8, !tbaa !106
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sequencer_active, ptr %5, align 8, !tbaa !107
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %6, align 8, !tbaa !108
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_rebuild_proxy_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = alloca %struct.SeqIterator, align 8
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %5 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %4, i8 noundef zeroext 0) #13
  %6 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %7 = tail call ptr @CTX_wm_manager(ptr noundef %0) #13
  %8 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  %9 = tail call ptr @WM_jobs_get(ptr noundef %7, ptr noundef %8, ptr noundef %6, ptr noundef nonnull @.str.217, i32 noundef 4, i32 noundef 14) #13
  %10 = tail call ptr @WM_jobs_customdata_get(ptr noundef %9) #13
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !76
  %14 = tail call ptr %13(i64 noundef 40, ptr noundef nonnull @.str.218) #13
  store ptr %4, ptr %14, align 8, !tbaa !234
  %15 = tail call ptr @CTX_data_main(ptr noundef %0) #13
  %16 = getelementptr inbounds %struct.ProxyBuildJob, ptr %14, i64 0, i32 1
  store ptr %15, ptr %16, align 8, !tbaa !236
  tail call void @WM_jobs_customdata_set(ptr noundef %9, ptr noundef nonnull %14, ptr noundef nonnull @proxy_freejob) #13
  tail call void @WM_jobs_timer(ptr noundef %9, double noundef 1.000000e-01, i32 noundef 67502080, i32 noundef 67502080) #13
  tail call void @WM_jobs_callbacks(ptr noundef %9, ptr noundef nonnull @proxy_startjob, ptr noundef null, ptr noundef null, ptr noundef nonnull @proxy_endjob) #13
  br label %17

17:                                               ; preds = %12, %2
  %18 = phi ptr [ %10, %2 ], [ %14, %12 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  call void @BKE_sequence_iterator_begin(ptr noundef %5, ptr noundef nonnull %3, i8 noundef zeroext 1) #13
  %19 = getelementptr inbounds %struct.SeqIterator, ptr %3, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !88
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %40, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.SeqIterator, ptr %3, i64 0, i32 3
  %24 = getelementptr inbounds %struct.ProxyBuildJob, ptr %18, i64 0, i32 1
  %25 = getelementptr inbounds %struct.ProxyBuildJob, ptr %18, i64 0, i32 2
  br label %26

26:                                               ; preds = %22, %37
  %27 = load ptr, ptr %23, align 8, !tbaa !90
  %28 = getelementptr inbounds %struct.Sequence, ptr %27, i64 0, i32 5
  %29 = load i32, ptr %28, align 8, !tbaa !81
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %26
  %33 = load ptr, ptr %24, align 8, !tbaa !236
  %34 = load ptr, ptr %18, align 8, !tbaa !234
  %35 = call ptr @BKE_sequencer_proxy_rebuild_context(ptr noundef %33, ptr noundef %34, ptr noundef %27) #13
  %36 = call ptr @BLI_genericNodeN(ptr noundef %35) #13
  call void @BLI_addtail(ptr noundef nonnull %25, ptr noundef %36) #13
  br label %37

37:                                               ; preds = %32, %26
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %3) #13
  %38 = load i32, ptr %19, align 8, !tbaa !88
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %26, !llvm.loop !237

40:                                               ; preds = %37, %17
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  %41 = call zeroext i8 @WM_jobs_is_running(ptr noundef %9) #13
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !238
  %44 = call ptr @CTX_wm_manager(ptr noundef %0) #13
  call void @WM_jobs_start(ptr noundef %44, ptr noundef %9) #13
  br label %45

45:                                               ; preds = %40, %43
  call void @ED_area_tag_redraw(ptr noundef %6) #13
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @SEQUENCER_OT_change_effect_input(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.190, ptr %0, align 8, !tbaa !101
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.191, ptr %2, align 8, !tbaa !104
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.40, ptr %3, align 8, !tbaa !105
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_change_effect_input_exec, ptr %4, align 8, !tbaa !106
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_effect_poll, ptr %5, align 8, !tbaa !107
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !108
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !109
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.192, ptr noundef nonnull @prop_change_effect_input_types, i32 noundef 0, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.194) #13
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !239
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_change_effect_input_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 0) #13
  %5 = tail call ptr @BKE_sequencer_active_get(ptr noundef %3) #13
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !110
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.192) #13
  switch i32 %8, label %15 [
    i32 0, label %9
    i32 1, label %12
  ]

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 33
  %11 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 34
  br label %18

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 34
  %14 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 35
  br label %18

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 33
  %17 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 35
  br label %18

18:                                               ; preds = %15, %12, %9
  %19 = phi ptr [ %16, %15 ], [ %13, %12 ], [ %10, %9 ]
  %20 = phi ptr [ %17, %15 ], [ %14, %12 ], [ %11, %9 ]
  %21 = load ptr, ptr %19, align 8, !tbaa !76
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load ptr, ptr %20, align 8, !tbaa !76
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23, %18
  %27 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !165
  tail call void @BKE_report(ptr noundef %28, i32 noundef 32, ptr noundef nonnull @.str.220) #13
  br label %31

29:                                               ; preds = %23
  store ptr %24, ptr %19, align 8, !tbaa !76
  store ptr %21, ptr %20, align 8, !tbaa !76
  tail call void @BKE_sequencer_update_changed_seq_and_deps(ptr noundef %3, ptr noundef %5, i32 noundef 0, i32 noundef 1) #13
  %30 = getelementptr inbounds %struct.Editing, ptr %4, i64 0, i32 1
  tail call void @BKE_sequencer_free_imbuf(ptr noundef %3, ptr noundef nonnull %30, i8 noundef zeroext 0) #13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %3) #13
  br label %31

31:                                               ; preds = %29, %26
  %32 = phi i32 [ 2, %26 ], [ 4, %29 ]
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define dso_local void @SEQUENCER_OT_change_effect_type(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.195, ptr %0, align 8, !tbaa !101
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.196, ptr %2, align 8, !tbaa !104
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.40, ptr %3, align 8, !tbaa !105
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_change_effect_type_exec, ptr %4, align 8, !tbaa !106
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_effect_poll, ptr %5, align 8, !tbaa !107
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !108
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !109
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.114, ptr noundef nonnull @sequencer_prop_effect_types, i32 noundef 8, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.197) #13
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !239
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_change_effect_type_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca %struct.SeqEffectHandle, align 8
  %4 = alloca %struct.SeqEffectHandle, align 8
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %6 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %5, i8 noundef zeroext 0) #13
  %7 = tail call ptr @BKE_sequencer_active_get(ptr noundef %5) #13
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !110
  %10 = tail call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.114) #13
  %11 = getelementptr inbounds %struct.Sequence, ptr %7, i64 0, i32 6
  %12 = load i32, ptr %11, align 4, !tbaa !99
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %2
  %16 = tail call i32 @BKE_sequence_effect_get_num_inputs(i32 noundef %12) #13
  %17 = tail call i32 @BKE_sequence_effect_get_num_inputs(i32 noundef %10) #13
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !165
  tail call void @BKE_report(ptr noundef %21, i32 noundef 32, ptr noundef nonnull @.str.227) #13
  br label %28

22:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #13
  call void @BKE_sequence_get_effect(ptr dead_on_unwind nonnull writable sret(%struct.SeqEffectHandle) align 8 %3, ptr noundef %7) #13
  %23 = getelementptr inbounds i8, ptr %3, i64 40
  %24 = load ptr, ptr %23, align 8, !tbaa.struct !240
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #13
  call void %24(ptr noundef %7) #13
  store i32 %10, ptr %11, align 4, !tbaa !99
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #13
  call void @BKE_sequence_get_effect(ptr dead_on_unwind nonnull writable sret(%struct.SeqEffectHandle) align 8 %4, ptr noundef %7) #13
  %25 = getelementptr inbounds i8, ptr %4, i64 8
  %26 = load ptr, ptr %25, align 8, !tbaa.struct !241
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #13
  call void %26(ptr noundef %7) #13
  call void @BKE_sequencer_update_changed_seq_and_deps(ptr noundef %5, ptr noundef %7, i32 noundef 0, i32 noundef 1) #13
  %27 = getelementptr inbounds %struct.Editing, ptr %6, i64 0, i32 1
  call void @BKE_sequencer_free_imbuf(ptr noundef %5, ptr noundef nonnull %27, i8 noundef zeroext 0) #13
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %5) #13
  br label %28

28:                                               ; preds = %2, %22, %19
  %29 = phi i32 [ 2, %19 ], [ 4, %22 ], [ 2, %2 ]
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define dso_local void @SEQUENCER_OT_change_path(ptr noundef %0) local_unnamed_addr #1 {
  store ptr @.str.198, ptr %0, align 8, !tbaa !101
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.199, ptr %2, align 8, !tbaa !104
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.40, ptr %3, align 8, !tbaa !105
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_change_path_exec, ptr %4, align 8, !tbaa !106
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sequencer_change_path_invoke, ptr %5, align 8, !tbaa !118
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_strip_has_path_poll, ptr %6, align 8, !tbaa !107
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !108
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 2096, i16 noundef signext 9, i16 noundef signext 0, i16 noundef signext 27, i16 noundef signext 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_change_path_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca [1024 x i8], align 16
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.PointerRNA, align 8
  %7 = alloca [1024 x i8], align 16
  %8 = tail call ptr @CTX_data_main(ptr noundef %0) #13
  %9 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %10 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %9, i8 noundef zeroext 0) #13
  %11 = tail call ptr @BKE_sequencer_active_get(ptr noundef %9) #13
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !110
  %14 = tail call i32 @RNA_boolean_get(ptr noundef %13, ptr noundef nonnull @.str.228) #13
  %15 = getelementptr inbounds %struct.Sequence, ptr %11, i64 0, i32 6
  %16 = load i32, ptr %15, align 4, !tbaa !99
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %65

18:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #13
  %19 = load ptr, ptr %12, align 8, !tbaa !110
  %20 = tail call ptr @RNA_struct_find_property(ptr noundef %19, ptr noundef nonnull @.str.229) #13
  %21 = tail call i32 @RNA_property_collection_length(ptr noundef %19, ptr noundef %20) #13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %69, label %23

23:                                               ; preds = %18
  %24 = load ptr, ptr %12, align 8, !tbaa !110
  call void @RNA_string_get(ptr noundef %24, ptr noundef nonnull @.str.230, ptr noundef nonnull %3) #13
  %25 = and i32 %14, 255
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.Main, ptr %8, i64 0, i32 2
  call void @BLI_path_rel(ptr noundef nonnull %3, ptr noundef nonnull %28) #13
  br label %29

29:                                               ; preds = %27, %23
  %30 = getelementptr inbounds %struct.Sequence, ptr %11, i64 0, i32 24
  %31 = load ptr, ptr %30, align 8, !tbaa !187
  %32 = getelementptr inbounds %struct.Strip, ptr %31, i64 0, i32 7
  %33 = call ptr @BLI_strncpy(ptr noundef nonnull %32, ptr noundef nonnull %3, i64 noundef 768) #13
  %34 = load ptr, ptr %30, align 8, !tbaa !187
  %35 = getelementptr inbounds %struct.Strip, ptr %34, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !190
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %29
  %39 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  call void %39(ptr noundef nonnull %36) #13
  br label %40

40:                                               ; preds = %38, %29
  %41 = load ptr, ptr @MEM_callocN, align 8, !tbaa !76
  %42 = sext i32 %21 to i64
  %43 = mul nsw i64 %42, 264
  %44 = call ptr %41(i64 noundef %43, ptr noundef nonnull @.str.231) #13
  %45 = load ptr, ptr %30, align 8, !tbaa !187
  %46 = getelementptr inbounds %struct.Strip, ptr %45, i64 0, i32 6
  store ptr %44, ptr %46, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #13
  %47 = load ptr, ptr %12, align 8, !tbaa !110
  call void @RNA_collection_begin(ptr noundef %47, ptr noundef nonnull @.str.229, ptr noundef nonnull %4) #13
  %48 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %49 = load i32, ptr %48, align 8, !tbaa !242
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %40
  %52 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6
  br label %53

53:                                               ; preds = %51, %53
  %54 = phi ptr [ %44, %51 ], [ %58, %53 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %52, i64 24, i1 false), !tbaa.struct !246
  %55 = call ptr @RNA_string_get_alloc(ptr noundef nonnull %5, ptr noundef nonnull @.str.232, ptr noundef null, i32 noundef 0) #13
  %56 = call ptr @BLI_strncpy(ptr noundef %54, ptr noundef %55, i64 noundef 256) #13
  %57 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  call void %57(ptr noundef %55) #13
  %58 = getelementptr inbounds %struct.StripElem, ptr %54, i64 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  call void @RNA_property_collection_next(ptr noundef nonnull %4) #13
  %59 = load i32, ptr %48, align 8, !tbaa !242
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %53, !llvm.loop !247

61:                                               ; preds = %53, %40
  call void @RNA_property_collection_end(ptr noundef nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #13
  %62 = getelementptr inbounds %struct.Sequence, ptr %11, i64 0, i32 45
  store i32 0, ptr %62, align 4, !tbaa !145
  %63 = getelementptr inbounds %struct.Sequence, ptr %11, i64 0, i32 44
  store i32 0, ptr %63, align 8, !tbaa !143
  call void @BKE_sequence_reload_new_file(ptr noundef %9, ptr noundef %11, i8 noundef zeroext 1) #13
  call void @BKE_sequence_calc(ptr noundef %9, ptr noundef %11) #13
  %64 = getelementptr inbounds %struct.Editing, ptr %10, i64 0, i32 1
  call void @BKE_sequencer_free_imbuf(ptr noundef %9, ptr noundef nonnull %64, i8 noundef zeroext 0) #13
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #13
  br label %68

65:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #13
  call void @RNA_pointer_create(ptr noundef %9, ptr noundef nonnull @RNA_Sequence, ptr noundef %11, ptr noundef nonnull %6) #13
  %66 = load ptr, ptr %12, align 8, !tbaa !110
  call void @RNA_string_get(ptr noundef %66, ptr noundef nonnull @.str.233, ptr noundef nonnull %7) #13
  %67 = call ptr @RNA_struct_find_property(ptr noundef nonnull %6, ptr noundef nonnull @.str.233) #13
  call void @RNA_property_string_set(ptr noundef nonnull %6, ptr noundef %67, ptr noundef nonnull %7) #13
  call void @RNA_property_update(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %67) #13
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #13
  br label %68

68:                                               ; preds = %61, %65
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %9) #13
  br label %70

69:                                               ; preds = %18
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #13
  br label %70

70:                                               ; preds = %69, %68
  %71 = phi i32 [ 4, %68 ], [ 2, %69 ]
  ret i32 %71
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_change_path_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #1 {
  %4 = alloca [1024 x i8], align 16
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %6 = tail call ptr @BKE_sequencer_active_get(ptr noundef %5) #13
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #13
  %7 = getelementptr inbounds %struct.Sequence, ptr %6, i64 0, i32 24
  %8 = load ptr, ptr %7, align 8, !tbaa !187
  %9 = getelementptr inbounds %struct.Strip, ptr %8, i64 0, i32 7
  %10 = getelementptr inbounds %struct.Strip, ptr %8, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !190
  call void @BLI_join_dirfile(ptr noundef nonnull %4, i64 noundef 1024, ptr noundef nonnull %9, ptr noundef %11) #13
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !110
  %14 = load ptr, ptr %7, align 8, !tbaa !187
  %15 = getelementptr inbounds %struct.Strip, ptr %14, i64 0, i32 7
  call void @RNA_string_set(ptr noundef %13, ptr noundef nonnull @.str.230, ptr noundef nonnull %15) #13
  %16 = load ptr, ptr %12, align 8, !tbaa !110
  call void @RNA_string_set(ptr noundef %16, ptr noundef nonnull @.str.233, ptr noundef nonnull %4) #13
  %17 = getelementptr inbounds %struct.Sequence, ptr %6, i64 0, i32 6
  %18 = load i32, ptr %17, align 4, !tbaa !99
  %19 = icmp eq i32 %18, 0
  %20 = load ptr, ptr %12, align 8, !tbaa !110
  %21 = select i1 %19, ptr @.str.234, ptr @.str.235
  call void @RNA_boolean_set(ptr noundef %20, ptr noundef nonnull %21, i32 noundef 0) #13
  call void @WM_event_add_fileselect(ptr noundef %0, ptr noundef %1) #13
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #13
  ret i32 1
}

declare void @WM_operator_properties_filesel(ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #3

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @BKE_sequencer_evaluate_frame(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_sequence_translate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @BKE_sequence_calc(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @BKE_sequence_tx_set_final_left(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @BKE_sequence_tx_set_final_right(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @BKE_sequence_tx_handle_xlimits(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @BKE_sequence_test_overlap(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BKE_sequence_base_shuffle(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_sequencer_sort(ptr noundef) local_unnamed_addr #3

declare ptr @UI_view2d_fromcontext(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @slip_count_sequences_rec(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #8 {
  %3 = load ptr, ptr %0, align 8, !tbaa !76
  %4 = icmp eq ptr %3, null
  br i1 %4, label %33, label %5

5:                                                ; preds = %2
  %6 = icmp eq i8 %1, 0
  br label %7

7:                                                ; preds = %5, %29
  %8 = phi ptr [ %3, %5 ], [ %31, %29 ]
  %9 = phi i32 [ 0, %5 ], [ %30, %29 ]
  br i1 %6, label %20, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 6
  %12 = load i32, ptr %11, align 4, !tbaa !99
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !81
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %15, %7
  %21 = add nsw i32 %9, 1
  %22 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 6
  %23 = load i32, ptr %22, align 4, !tbaa !99
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 36
  %27 = tail call fastcc i32 @slip_count_sequences_rec(ptr noundef nonnull %26, i8 noundef zeroext 0)
  %28 = add nsw i32 %27, %21
  br label %29

29:                                               ; preds = %10, %15, %25, %20
  %30 = phi i32 [ %9, %10 ], [ %28, %25 ], [ %21, %20 ], [ %9, %15 ]
  %31 = load ptr, ptr %8, align 8, !tbaa !76
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %7, !llvm.loop !248

33:                                               ; preds = %29, %2
  %34 = phi i32 [ 0, %2 ], [ %30, %29 ]
  ret i32 %34
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @slip_add_sequences_rec(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, i32 noundef %3, i8 noundef zeroext %4) unnamed_addr #5 {
  %6 = load ptr, ptr %0, align 8, !tbaa !76
  %7 = icmp eq ptr %6, null
  br i1 %7, label %48, label %8

8:                                                ; preds = %5
  %9 = icmp eq i8 %4, 0
  br label %10

10:                                               ; preds = %8, %44
  %11 = phi ptr [ %6, %8 ], [ %46, %44 ]
  %12 = phi i32 [ 0, %8 ], [ %45, %44 ]
  br i1 %9, label %23, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.Sequence, ptr %11, i64 0, i32 6
  %15 = load i32, ptr %14, align 4, !tbaa !99
  %16 = and i32 %15, 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %44

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.Sequence, ptr %11, i64 0, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !81
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %44, label %23

23:                                               ; preds = %18, %10
  %24 = add nsw i32 %12, %3
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds ptr, ptr %1, i64 %25
  store ptr %11, ptr %26, align 8, !tbaa !76
  %27 = getelementptr inbounds i8, ptr %2, i64 %25
  store i8 %4, ptr %27, align 1, !tbaa !249
  %28 = add nsw i32 %12, 1
  %29 = getelementptr inbounds %struct.Sequence, ptr %11, i64 0, i32 6
  %30 = load i32, ptr %29, align 4, !tbaa !99
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %37

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.Sequence, ptr %11, i64 0, i32 36
  %34 = add nsw i32 %28, %3
  %35 = tail call fastcc i32 @slip_add_sequences_rec(ptr noundef nonnull %33, ptr noundef %1, ptr noundef %2, i32 noundef %34, i8 noundef zeroext 0)
  %36 = add nsw i32 %35, %28
  br label %44

37:                                               ; preds = %23
  %38 = and i32 %30, 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = add nsw i32 %28, %3
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, ptr %2, i64 %42
  store i8 0, ptr %43, align 1, !tbaa !249
  br label %44

44:                                               ; preds = %13, %18, %37, %40, %32
  %45 = phi i32 [ %12, %13 ], [ %36, %32 ], [ %28, %40 ], [ %28, %37 ], [ %12, %18 ]
  %46 = load ptr, ptr %11, align 8, !tbaa !76
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %10, !llvm.loop !250

48:                                               ; preds = %44, %5
  %49 = phi i32 [ 0, %5 ], [ %45, %44 ]
  ret i32 %49
}

declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #3

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @ED_area_headerprint(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @sequencer_slip_recursively(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #1 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %75, label %5

5:                                                ; preds = %3
  %6 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %0, i8 noundef zeroext 0) #13
  %7 = getelementptr inbounds %struct.SlipData, ptr %1, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !132
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %73

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.SlipData, ptr %1, i64 0, i32 3
  %12 = getelementptr inbounds %struct.SlipData, ptr %1, i64 0, i32 2
  %13 = getelementptr inbounds %struct.SlipData, ptr %1, i64 0, i32 4
  %14 = zext nneg i32 %8 to i64
  br label %15

15:                                               ; preds = %10, %71
  %16 = phi i64 [ %14, %10 ], [ %17, %71 ]
  %17 = add nsw i64 %16, -1
  %18 = load ptr, ptr %11, align 8, !tbaa !130
  %19 = getelementptr inbounds ptr, ptr %18, i64 %17
  %20 = load ptr, ptr %19, align 8, !tbaa !76
  %21 = load ptr, ptr %12, align 8, !tbaa !128
  %22 = getelementptr inbounds %struct.TransSeq, ptr %21, i64 %17
  %23 = load i32, ptr %22, align 4, !tbaa !133
  %24 = add nsw i32 %23, %2
  %25 = getelementptr inbounds %struct.Sequence, ptr %20, i64 0, i32 8
  store i32 %24, ptr %25, align 4, !tbaa !49
  %26 = load ptr, ptr %13, align 8, !tbaa !131
  %27 = getelementptr inbounds i8, ptr %26, i64 %17
  %28 = load i8, ptr %27, align 1, !tbaa !249
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %56, label %30

30:                                               ; preds = %15
  %31 = getelementptr inbounds %struct.Sequence, ptr %20, i64 0, i32 7
  %32 = load i32, ptr %31, align 8, !tbaa !50
  %33 = add nsw i32 %32, %24
  %34 = getelementptr inbounds %struct.Sequence, ptr %20, i64 0, i32 16
  %35 = load i32, ptr %34, align 4, !tbaa !51
  %36 = icmp sgt i32 %33, %35
  %37 = getelementptr inbounds %struct.Sequence, ptr %20, i64 0, i32 10
  br i1 %36, label %38, label %41

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.Sequence, ptr %20, i64 0, i32 12
  store i32 0, ptr %39, align 4, !tbaa !48
  %40 = sub nsw i32 %33, %35
  br label %44

41:                                               ; preds = %30
  %42 = sub nsw i32 %35, %33
  %43 = getelementptr inbounds %struct.Sequence, ptr %20, i64 0, i32 12
  store i32 %42, ptr %43, align 4, !tbaa !48
  br label %44

44:                                               ; preds = %41, %38
  %45 = phi i32 [ 0, %41 ], [ %40, %38 ]
  store i32 %45, ptr %37, align 4, !tbaa !141
  %46 = getelementptr inbounds %struct.Sequence, ptr %20, i64 0, i32 15
  %47 = load i32, ptr %46, align 8, !tbaa !77
  %48 = icmp sgt i32 %24, %47
  %49 = getelementptr inbounds %struct.Sequence, ptr %20, i64 0, i32 9
  br i1 %48, label %50, label %53

50:                                               ; preds = %44
  %51 = sub nsw i32 %24, %47
  %52 = getelementptr inbounds %struct.Sequence, ptr %20, i64 0, i32 11
  store i32 %51, ptr %52, align 8, !tbaa !34
  store i32 0, ptr %49, align 8, !tbaa !120
  br label %65

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.Sequence, ptr %20, i64 0, i32 11
  store i32 0, ptr %54, align 8, !tbaa !34
  %55 = sub nsw i32 %47, %24
  store i32 %55, ptr %49, align 8, !tbaa !120
  br label %65

56:                                               ; preds = %15
  %57 = getelementptr inbounds %struct.TransSeq, ptr %21, i64 %17, i32 4
  %58 = load i32, ptr %57, align 4, !tbaa !138
  %59 = add nsw i32 %58, %2
  %60 = getelementptr inbounds %struct.Sequence, ptr %20, i64 0, i32 15
  store i32 %59, ptr %60, align 8, !tbaa !77
  %61 = getelementptr inbounds %struct.TransSeq, ptr %21, i64 %17, i32 5
  %62 = load i32, ptr %61, align 4, !tbaa !139
  %63 = add nsw i32 %62, %2
  %64 = getelementptr inbounds %struct.Sequence, ptr %20, i64 0, i32 16
  store i32 %63, ptr %64, align 4, !tbaa !51
  br label %65

65:                                               ; preds = %50, %53, %56
  %66 = getelementptr inbounds %struct.Sequence, ptr %20, i64 0, i32 6
  %67 = load i32, ptr %66, align 4, !tbaa !99
  %68 = and i32 %67, 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  tail call void @BKE_sequence_calc(ptr noundef %0, ptr noundef %20) #13
  br label %71

71:                                               ; preds = %70, %65
  %72 = icmp sgt i64 %16, 1
  br i1 %72, label %15, label %73, !llvm.loop !251

73:                                               ; preds = %71, %5
  %74 = getelementptr inbounds %struct.Editing, ptr %6, i64 0, i32 1
  tail call void @BKE_sequencer_free_imbuf(ptr noundef %0, ptr noundef nonnull %74, i8 noundef zeroext 0) #13
  br label %75

75:                                               ; preds = %3, %73
  %76 = phi i8 [ 1, %73 ], [ 0, %3 ]
  ret i8 %76
}

declare void @BKE_sequence_reload_new_file(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @BKE_sequencer_free_imbuf(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @BKE_sequence_invalidate_dependent(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_sequencer_update_muting(ptr noundef) local_unnamed_addr #3

declare void @BKE_sequencer_update_changed_seq_and_deps(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @seq_is_predecessor(ptr noundef readonly %0, ptr noundef readnone %1) unnamed_addr #8 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %0, %1
  %5 = or i1 %3, %4
  br i1 %5, label %38, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 33
  %8 = load ptr, ptr %7, align 8, !tbaa !122
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %38, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 34
  %12 = load ptr, ptr %11, align 8, !tbaa !123
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %38, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 35
  %16 = load ptr, ptr %15, align 8, !tbaa !124
  %17 = icmp eq ptr %16, %1
  br i1 %17, label %38, label %18

18:                                               ; preds = %14
  %19 = icmp eq ptr %8, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %18
  %21 = tail call fastcc zeroext i8 @seq_is_predecessor(ptr noundef nonnull %8, ptr noundef %1), !range !154
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %20, %18
  %24 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 34
  %25 = load ptr, ptr %24, align 8, !tbaa !123
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = tail call fastcc zeroext i8 @seq_is_predecessor(ptr noundef nonnull %25, ptr noundef %1), !range !154
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %27, %23
  %31 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 35
  %32 = load ptr, ptr %31, align 8, !tbaa !124
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = tail call fastcc zeroext i8 @seq_is_predecessor(ptr noundef nonnull %32, ptr noundef %1), !range !154
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34, %30
  br label %38

38:                                               ; preds = %10, %6, %34, %27, %20, %14, %2, %37
  %39 = phi i8 [ 0, %37 ], [ 0, %2 ], [ 1, %14 ], [ 1, %20 ], [ 1, %27 ], [ 1, %34 ], [ 1, %6 ], [ 1, %10 ]
  ret i8 %39
}

declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @cut_seq_list(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #1 {
  %5 = load ptr, ptr %1, align 8, !tbaa !169
  %6 = icmp eq ptr %5, null
  br i1 %6, label %45, label %7

7:                                                ; preds = %4, %37
  %8 = phi ptr [ %10, %37 ], [ %5, %4 ]
  %9 = phi ptr [ %38, %37 ], [ null, %4 ]
  %10 = load ptr, ptr %8, align 8, !tbaa !170
  %11 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 2
  store ptr null, ptr %11, align 8, !tbaa !252
  %12 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !81
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %37, label %16

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 15
  %18 = load i32, ptr %17, align 8, !tbaa !77
  %19 = icmp slt i32 %18, %2
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 16
  %22 = load i32, ptr %21, align 4, !tbaa !51
  %23 = icmp sgt i32 %22, %2
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = tail call ptr %3(ptr noundef %0, ptr noundef nonnull %8, i32 noundef %2) #13, !callees !253
  %26 = icmp eq ptr %25, null
  br i1 %26, label %37, label %33

27:                                               ; preds = %20, %16
  %28 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 16
  %29 = load i32, ptr %28, align 4, !tbaa !51
  %30 = icmp sle i32 %29, %2
  %31 = or i1 %19, %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  tail call void @BLI_remlink(ptr noundef nonnull %1, ptr noundef nonnull %8) #13
  br label %33

33:                                               ; preds = %24, %32
  %34 = phi ptr [ %8, %32 ], [ %25, %24 ]
  tail call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef nonnull %34) #13
  %35 = icmp eq ptr %9, null
  %36 = select i1 %35, ptr %34, ptr %9
  br label %37

37:                                               ; preds = %33, %27, %24, %7
  %38 = phi ptr [ %9, %27 ], [ %9, %7 ], [ %9, %24 ], [ %36, %33 ]
  %39 = icmp ne ptr %10, null
  %40 = icmp ne ptr %10, %38
  %41 = select i1 %39, i1 %40, i1 false
  br i1 %41, label %7, label %42, !llvm.loop !254

42:                                               ; preds = %37
  %43 = icmp ne ptr %38, null
  %44 = zext i1 %43 to i8
  br label %45

45:                                               ; preds = %42, %4
  %46 = phi i8 [ 0, %4 ], [ %44, %42 ]
  ret i8 %46
}

; Function Attrs: nounwind uwtable
define internal ptr @cut_seq_hard(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 8
  %5 = load i32, ptr %4, align 4, !tbaa !49
  %6 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 11
  %7 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 12
  %8 = load i32, ptr %7, align 4, !tbaa !48
  %9 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 15
  %10 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 16
  %11 = load i32, ptr %10, align 4, !tbaa !51
  %12 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 10
  %13 = load i32, ptr %12, align 4, !tbaa !141
  %14 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 45
  %15 = load i32, ptr %14, align 4, !tbaa !145
  %16 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 7
  %17 = load i32, ptr %16, align 8, !tbaa !50
  %18 = load i32, ptr %6, align 8, !tbaa !34
  %19 = icmp ne i32 %18, 0
  %20 = icmp sgt i32 %5, %2
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %22, label %35

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %24 = load i32, ptr %23, align 4, !tbaa !99
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = sub nsw i32 %5, %2
  store i32 %27, ptr %6, align 8, !tbaa !34
  tail call void @BKE_sequence_reload_new_file(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0) #13
  tail call void @BKE_sequence_calc(ptr noundef %0, ptr noundef %1) #13
  br label %54

28:                                               ; preds = %22
  %29 = add nsw i32 %2, -1
  store i32 %29, ptr %4, align 4, !tbaa !49
  %30 = load i32, ptr %9, align 8, !tbaa !77
  %31 = xor i32 %30, -1
  %32 = add i32 %31, %2
  store i32 %32, ptr %6, align 8, !tbaa !34
  %33 = add nsw i32 %17, -1
  %34 = add nsw i32 %33, %15
  store i32 %34, ptr %14, align 4, !tbaa !145
  store i32 0, ptr %7, align 4, !tbaa !48
  br label %51

35:                                               ; preds = %3
  %36 = add nsw i32 %17, %5
  %37 = icmp slt i32 %36, %2
  %38 = select i1 %20, i1 true, i1 %37
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  store i32 0, ptr %12, align 4, !tbaa !141
  store i32 0, ptr %7, align 4, !tbaa !48
  %40 = sub i32 %15, %2
  %41 = add i32 %40, %36
  store i32 %41, ptr %14, align 4, !tbaa !145
  br label %51

42:                                               ; preds = %35
  %43 = icmp ne i32 %8, 0
  %44 = select i1 %37, i1 %43, i1 false
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = add i32 %8, %2
  %47 = sub i32 %46, %11
  store i32 %47, ptr %7, align 4, !tbaa !48
  %48 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %49 = load i32, ptr %48, align 4, !tbaa !99
  %50 = icmp eq i32 %49, 1
  tail call void @BKE_sequence_reload_new_file(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0) #13
  tail call void @BKE_sequence_calc(ptr noundef %0, ptr noundef %1) #13
  br i1 %50, label %54, label %52

51:                                               ; preds = %42, %39, %28
  tail call void @BKE_sequence_reload_new_file(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0) #13
  tail call void @BKE_sequence_calc(ptr noundef %0, ptr noundef %1) #13
  br label %52

52:                                               ; preds = %51, %45
  %53 = tail call ptr @BKE_sequence_dupli_recursive(ptr noundef %0, ptr noundef null, ptr noundef %1, i32 noundef 5) #13
  br label %54

54:                                               ; preds = %26, %52, %45
  %55 = phi ptr [ null, %45 ], [ %53, %52 ], [ null, %26 ]
  %56 = icmp eq ptr %55, null
  br i1 %56, label %109, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.Sequence, ptr %55, i64 0, i32 5
  %59 = load i32, ptr %58, align 8, !tbaa !81
  %60 = or i32 %59, 1
  store i32 %60, ptr %58, align 8, !tbaa !81
  %61 = getelementptr inbounds %struct.Sequence, ptr %55, i64 0, i32 11
  %62 = load i32, ptr %61, align 8, !tbaa !34
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %73, label %64

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.Sequence, ptr %55, i64 0, i32 8
  %66 = load i32, ptr %65, align 4, !tbaa !49
  %67 = add nsw i32 %66, 1
  %68 = icmp eq i32 %67, %2
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  store i32 %5, ptr %65, align 4, !tbaa !49
  %70 = sub nsw i32 %5, %2
  store i32 %70, ptr %61, align 8, !tbaa !34
  %71 = getelementptr inbounds %struct.Sequence, ptr %55, i64 0, i32 45
  store i32 %15, ptr %71, align 4, !tbaa !145
  %72 = getelementptr inbounds %struct.Sequence, ptr %55, i64 0, i32 12
  store i32 %8, ptr %72, align 4, !tbaa !48
  br label %108

73:                                               ; preds = %64, %57
  %74 = getelementptr inbounds %struct.Sequence, ptr %55, i64 0, i32 8
  %75 = load i32, ptr %74, align 4, !tbaa !49
  %76 = icmp sgt i32 %75, %2
  br i1 %76, label %91, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.Sequence, ptr %55, i64 0, i32 7
  %79 = load i32, ptr %78, align 8, !tbaa !50
  %80 = add nsw i32 %79, %75
  %81 = icmp slt i32 %80, %2
  br i1 %81, label %91, label %82

82:                                               ; preds = %77
  store i32 %2, ptr %74, align 4, !tbaa !49
  store i32 0, ptr %61, align 8, !tbaa !34
  %83 = getelementptr inbounds %struct.Sequence, ptr %55, i64 0, i32 9
  store i32 0, ptr %83, align 8, !tbaa !120
  %84 = getelementptr inbounds %struct.Sequence, ptr %55, i64 0, i32 10
  store i32 %13, ptr %84, align 4, !tbaa !141
  %85 = sub i32 %2, %5
  %86 = getelementptr inbounds %struct.Sequence, ptr %55, i64 0, i32 44
  %87 = load i32, ptr %86, align 8, !tbaa !143
  %88 = add nsw i32 %85, %87
  store i32 %88, ptr %86, align 8, !tbaa !143
  %89 = getelementptr inbounds %struct.Sequence, ptr %55, i64 0, i32 45
  store i32 %15, ptr %89, align 4, !tbaa !145
  %90 = getelementptr inbounds %struct.Sequence, ptr %55, i64 0, i32 12
  store i32 %8, ptr %90, align 4, !tbaa !48
  br label %108

91:                                               ; preds = %77, %73
  %92 = getelementptr inbounds %struct.Sequence, ptr %55, i64 0, i32 7
  %93 = load i32, ptr %92, align 8, !tbaa !50
  %94 = add nsw i32 %93, %75
  %95 = icmp slt i32 %94, %2
  br i1 %95, label %96, label %108

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.Sequence, ptr %55, i64 0, i32 12
  %98 = load i32, ptr %97, align 4, !tbaa !48
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %108, label %100

100:                                              ; preds = %96
  store i32 %2, ptr %74, align 4, !tbaa !49
  %101 = getelementptr inbounds %struct.Sequence, ptr %55, i64 0, i32 9
  store i32 0, ptr %101, align 8, !tbaa !120
  %102 = add nsw i32 %17, -1
  %103 = getelementptr inbounds %struct.Sequence, ptr %55, i64 0, i32 44
  %104 = load i32, ptr %103, align 8, !tbaa !143
  %105 = add nsw i32 %102, %104
  store i32 %105, ptr %103, align 8, !tbaa !143
  %106 = xor i32 %2, -1
  %107 = add i32 %11, %106
  store i32 %107, ptr %97, align 4, !tbaa !48
  store i32 0, ptr %61, align 8, !tbaa !34
  br label %108

108:                                              ; preds = %82, %100, %96, %91, %69
  tail call void @BKE_sequence_reload_new_file(ptr noundef %0, ptr noundef nonnull %55, i8 noundef zeroext 0) #13
  tail call void @BKE_sequence_calc(ptr noundef %0, ptr noundef nonnull %55) #13
  br label %109

109:                                              ; preds = %108, %54
  ret ptr %55
}

; Function Attrs: nounwind uwtable
define internal ptr @cut_seq_soft(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 8
  %5 = load i32, ptr %4, align 4, !tbaa !49
  %6 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 11
  %7 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 12
  %8 = load i32, ptr %7, align 4, !tbaa !48
  %9 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 15
  %10 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 16
  %11 = load i32, ptr %10, align 4, !tbaa !51
  %12 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 10
  %13 = load i32, ptr %12, align 4, !tbaa !141
  %14 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !50
  %16 = load i32, ptr %6, align 8, !tbaa !34
  %17 = icmp ne i32 %16, 0
  %18 = icmp sgt i32 %5, %2
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %20, label %32

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %22 = load i32, ptr %21, align 4, !tbaa !99
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = sub nsw i32 %5, %2
  store i32 %25, ptr %6, align 8, !tbaa !34
  tail call void @BKE_sequence_calc(ptr noundef %0, ptr noundef %1) #13
  br label %52

26:                                               ; preds = %20
  %27 = add nsw i32 %2, -1
  store i32 %27, ptr %4, align 4, !tbaa !49
  %28 = load i32, ptr %9, align 8, !tbaa !77
  %29 = xor i32 %28, -1
  %30 = add i32 %29, %2
  store i32 %30, ptr %6, align 8, !tbaa !34
  %31 = add nsw i32 %15, -1
  store i32 %31, ptr %12, align 4, !tbaa !141
  store i32 0, ptr %7, align 4, !tbaa !48
  br label %49

32:                                               ; preds = %3
  br i1 %18, label %38, label %33

33:                                               ; preds = %32
  %34 = add nsw i32 %15, %5
  %35 = icmp slt i32 %34, %2
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = sub nsw i32 %34, %2
  store i32 %37, ptr %12, align 4, !tbaa !141
  br label %49

38:                                               ; preds = %33, %32
  %39 = add nsw i32 %15, %5
  %40 = icmp sge i32 %39, %2
  %41 = icmp eq i32 %8, 0
  %42 = select i1 %40, i1 true, i1 %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %38
  %44 = add i32 %8, %2
  %45 = sub i32 %44, %11
  store i32 %45, ptr %7, align 4, !tbaa !48
  %46 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %47 = load i32, ptr %46, align 4, !tbaa !99
  %48 = icmp eq i32 %47, 1
  tail call void @BKE_sequence_calc(ptr noundef %0, ptr noundef %1) #13
  br i1 %48, label %52, label %50

49:                                               ; preds = %38, %36, %26
  tail call void @BKE_sequence_calc(ptr noundef %0, ptr noundef %1) #13
  br label %50

50:                                               ; preds = %49, %43
  %51 = tail call ptr @BKE_sequence_dupli_recursive(ptr noundef %0, ptr noundef null, ptr noundef %1, i32 noundef 5) #13
  br label %52

52:                                               ; preds = %24, %50, %43
  %53 = phi ptr [ null, %43 ], [ %51, %50 ], [ null, %24 ]
  %54 = icmp eq ptr %53, null
  br i1 %54, label %102, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.Sequence, ptr %53, i64 0, i32 5
  %57 = load i32, ptr %56, align 8, !tbaa !81
  %58 = or i32 %57, 1
  store i32 %58, ptr %56, align 8, !tbaa !81
  %59 = getelementptr inbounds %struct.Sequence, ptr %53, i64 0, i32 11
  %60 = load i32, ptr %59, align 8, !tbaa !34
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.Sequence, ptr %53, i64 0, i32 8
  %64 = load i32, ptr %63, align 4, !tbaa !49
  %65 = add nsw i32 %64, 1
  %66 = icmp eq i32 %65, %2
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  store i32 %5, ptr %63, align 4, !tbaa !49
  %68 = sub nsw i32 %5, %2
  store i32 %68, ptr %59, align 8, !tbaa !34
  %69 = getelementptr inbounds %struct.Sequence, ptr %53, i64 0, i32 10
  store i32 %13, ptr %69, align 4, !tbaa !141
  %70 = getelementptr inbounds %struct.Sequence, ptr %53, i64 0, i32 12
  store i32 %8, ptr %70, align 4, !tbaa !48
  br label %101

71:                                               ; preds = %62, %55
  %72 = getelementptr inbounds %struct.Sequence, ptr %53, i64 0, i32 8
  %73 = load i32, ptr %72, align 4, !tbaa !49
  %74 = icmp sgt i32 %73, %2
  br i1 %74, label %85, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.Sequence, ptr %53, i64 0, i32 7
  %77 = load i32, ptr %76, align 8, !tbaa !50
  %78 = add nsw i32 %77, %73
  %79 = icmp slt i32 %78, %2
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  store i32 0, ptr %59, align 8, !tbaa !34
  %81 = sub nsw i32 %2, %5
  %82 = getelementptr inbounds %struct.Sequence, ptr %53, i64 0, i32 9
  store i32 %81, ptr %82, align 8, !tbaa !120
  %83 = getelementptr inbounds %struct.Sequence, ptr %53, i64 0, i32 10
  store i32 %13, ptr %83, align 4, !tbaa !141
  %84 = getelementptr inbounds %struct.Sequence, ptr %53, i64 0, i32 12
  store i32 %8, ptr %84, align 4, !tbaa !48
  br label %101

85:                                               ; preds = %75, %71
  %86 = getelementptr inbounds %struct.Sequence, ptr %53, i64 0, i32 7
  %87 = load i32, ptr %86, align 8, !tbaa !50
  %88 = add nsw i32 %87, %73
  %89 = icmp slt i32 %88, %2
  br i1 %89, label %90, label %101

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.Sequence, ptr %53, i64 0, i32 12
  %92 = load i32, ptr %91, align 4, !tbaa !48
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %90
  %95 = add i32 %2, 1
  %96 = sub i32 %95, %15
  store i32 %96, ptr %72, align 4, !tbaa !49
  %97 = add nsw i32 %15, -1
  %98 = getelementptr inbounds %struct.Sequence, ptr %53, i64 0, i32 9
  store i32 %97, ptr %98, align 8, !tbaa !120
  %99 = xor i32 %2, -1
  %100 = add i32 %11, %99
  store i32 %100, ptr %91, align 4, !tbaa !48
  store i32 0, ptr %59, align 8, !tbaa !34
  br label %101

101:                                              ; preds = %80, %94, %90, %85, %67
  tail call void @BKE_sequence_calc(ptr noundef %0, ptr noundef nonnull %53) #13
  br label %102

102:                                              ; preds = %101, %52
  ret ptr %53
}

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BKE_sequence_dupli_recursive(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

declare void @BKE_sequence_base_dupli_recursive(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @BLI_movelisttolist(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @BKE_sequencer_recursive_apply(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @apply_unique_name_cb(ptr noundef %0, ptr noundef %1) #1 {
  %3 = alloca [62 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 62, ptr nonnull %3) #13
  %4 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 4, i64 2
  %5 = call ptr @BLI_strncpy_utf8(ptr noundef nonnull %3, ptr noundef nonnull %4, i64 noundef 62) #13
  %6 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !197
  %8 = getelementptr inbounds %struct.Editing, ptr %7, i64 0, i32 1
  call void @BKE_sequence_base_unique_name_recursive(ptr noundef nonnull %8, ptr noundef %0) #13
  call void @BKE_sequencer_dupe_animdata(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 62, ptr nonnull %3) #13
  ret i32 1
}

declare ptr @BLI_strncpy_utf8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @BKE_sequence_base_unique_name_recursive(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_sequencer_dupe_animdata(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #3

declare i32 @WM_operator_confirm(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @del_seq_find_replace_recurs(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  br label %3

3:                                                ; preds = %66, %2
  %4 = phi ptr [ %1, %2 ], [ %68, %66 ]
  %5 = icmp eq ptr %4, null
  br i1 %5, label %69, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !99
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !81
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %10, label %15, label %17

15:                                               ; preds = %6
  %16 = select i1 %14, ptr %4, ptr null
  br label %69

17:                                               ; preds = %6
  br i1 %14, label %18, label %52

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 33
  %20 = load ptr, ptr %19, align 8, !tbaa !122
  %21 = tail call fastcc ptr @del_seq_find_replace_recurs(ptr noundef %0, ptr noundef %20)
  %22 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 34
  %23 = load ptr, ptr %22, align 8, !tbaa !123
  %24 = tail call fastcc ptr @del_seq_find_replace_recurs(ptr noundef %0, ptr noundef %23)
  %25 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 35
  %26 = load ptr, ptr %25, align 8, !tbaa !124
  %27 = tail call fastcc ptr @del_seq_find_replace_recurs(ptr noundef %0, ptr noundef %26)
  %28 = load ptr, ptr %19, align 8, !tbaa !122
  %29 = icmp eq ptr %21, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %18
  %31 = load ptr, ptr %22, align 8, !tbaa !123
  %32 = icmp eq ptr %24, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load ptr, ptr %25, align 8, !tbaa !124
  %35 = icmp eq ptr %27, %34
  br i1 %35, label %52, label %36

36:                                               ; preds = %33, %30, %18
  %37 = icmp ne ptr %21, null
  %38 = icmp ne ptr %24, null
  %39 = select i1 %37, i1 true, i1 %38
  %40 = icmp ne ptr %27, null
  %41 = select i1 %39, i1 true, i1 %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = select i1 %38, ptr %24, ptr %27
  %44 = select i1 %37, ptr %21, ptr %43
  store ptr %44, ptr %19, align 8, !tbaa !122
  %45 = select i1 %37, ptr %21, ptr %27
  %46 = select i1 %38, ptr %24, ptr %45
  store ptr %46, ptr %22, align 8, !tbaa !123
  %47 = select i1 %37, ptr %21, ptr %24
  %48 = select i1 %40, ptr %27, ptr %47
  store ptr %48, ptr %25, align 8, !tbaa !124
  tail call void @BKE_sequencer_update_changed_seq_and_deps(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 1) #13
  br label %52

49:                                               ; preds = %36
  %50 = load i32, ptr %11, align 8, !tbaa !81
  %51 = or i32 %50, 1
  store i32 %51, ptr %11, align 8, !tbaa !81
  br label %52

52:                                               ; preds = %33, %49, %42, %17
  %53 = load i32, ptr %11, align 8, !tbaa !81
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %69, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 33
  %58 = load ptr, ptr %57, align 8, !tbaa !122
  %59 = tail call fastcc ptr @del_seq_find_replace_recurs(ptr noundef %0, ptr noundef %58)
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 34
  %63 = load ptr, ptr %62, align 8, !tbaa !123
  %64 = tail call fastcc ptr @del_seq_find_replace_recurs(ptr noundef %0, ptr noundef %63)
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 35
  %68 = load ptr, ptr %67, align 8, !tbaa !124
  br label %3

69:                                               ; preds = %52, %61, %56, %3, %15
  %70 = phi ptr [ %16, %15 ], [ null, %3 ], [ %59, %56 ], [ %64, %61 ], [ %4, %52 ]
  ret ptr %70
}

; Function Attrs: nounwind uwtable
define internal fastcc void @recurs_del_seq_flag(ptr noundef %0, ptr noundef %1, i16 noundef signext %2, i16 noundef signext %3) unnamed_addr #1 {
  %5 = tail call ptr @BKE_sequencer_active_get(ptr noundef %0) #13
  %6 = load ptr, ptr %1, align 8, !tbaa !169
  %7 = icmp eq ptr %6, null
  br i1 %7, label %31, label %8

8:                                                ; preds = %4
  %9 = zext nneg i16 %2 to i32
  %10 = icmp ne i16 %3, 0
  br label %11

11:                                               ; preds = %8, %29
  %12 = phi ptr [ %6, %8 ], [ %13, %29 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !170
  %14 = getelementptr inbounds %struct.Sequence, ptr %12, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !81
  %16 = and i32 %15, %9
  %17 = icmp ne i32 %16, 0
  %18 = or i1 %10, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %11
  tail call void @BLI_remlink(ptr noundef nonnull %1, ptr noundef nonnull %12) #13
  %20 = icmp eq ptr %12, %5
  br i1 %20, label %21, label %22

21:                                               ; preds = %19
  tail call void @BKE_sequencer_active_set(ptr noundef %0, ptr noundef null) #13
  br label %22

22:                                               ; preds = %21, %19
  %23 = getelementptr inbounds %struct.Sequence, ptr %12, i64 0, i32 6
  %24 = load i32, ptr %23, align 4, !tbaa !99
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.Sequence, ptr %12, i64 0, i32 36
  tail call fastcc void @recurs_del_seq_flag(ptr noundef %0, ptr noundef nonnull %27, i16 noundef signext %2, i16 noundef signext 1)
  br label %28

28:                                               ; preds = %26, %22
  tail call void @BKE_sequence_free(ptr noundef %0, ptr noundef nonnull %12) #13
  br label %29

29:                                               ; preds = %11, %28
  %30 = icmp eq ptr %13, null
  br i1 %30, label %31, label %11, !llvm.loop !255

31:                                               ; preds = %29, %4
  ret void
}

declare void @BKE_sequencer_active_set(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_sequence_free(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @BKE_sequence_tx_get_final_left(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @BKE_sequence_tx_get_final_right(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @BKE_sequencer_give_stripelem(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i8 @BKE_sequence_base_isolated_sel_check(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @BKE_sequence_alloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @BKE_sequence_invalidate_cache(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @seq_depends_on_meta(ptr noundef readonly %0, ptr noundef readnone %1) unnamed_addr #8 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %26, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 33
  %6 = load ptr, ptr %5, align 8, !tbaa !122
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = tail call fastcc i32 @seq_depends_on_meta(ptr noundef nonnull %6, ptr noundef %1), !range !164
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %8, %4
  %12 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 34
  %13 = load ptr, ptr %12, align 8, !tbaa !123
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = tail call fastcc i32 @seq_depends_on_meta(ptr noundef nonnull %13, ptr noundef %1), !range !164
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %15, %11
  %19 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 35
  %20 = load ptr, ptr %19, align 8, !tbaa !124
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = tail call fastcc i32 @seq_depends_on_meta(ptr noundef nonnull %20, ptr noundef %1), !range !164
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %18
  br label %26

26:                                               ; preds = %22, %15, %8, %2, %25
  %27 = phi i32 [ 0, %25 ], [ 1, %2 ], [ 1, %8 ], [ 1, %15 ], [ 1, %22 ]
  ret i32 %27
}

declare i32 @WM_operator_smooth_viewtx_get(ptr noundef) local_unnamed_addr #3

declare void @UI_view2d_smooth_view(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

declare void @UI_view2d_curRect_validate(ptr noundef) local_unnamed_addr #3

declare void @UI_view2d_sync(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #3

declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_rctf_resize(ptr noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #4

declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #3

declare ptr @CTX_wm_space_data(ptr noundef) local_unnamed_addr #3

declare void @ED_area_tag_refresh(ptr noundef) local_unnamed_addr #3

declare void @BKE_sequencer_free_clipboard() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @seq_copy_del_sound(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !99
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 36
  %8 = load ptr, ptr %7, align 8, !tbaa !76
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %6, %10
  %11 = phi ptr [ %12, %10 ], [ %8, %6 ]
  tail call fastcc void @seq_copy_del_sound(ptr noundef %0, ptr noundef nonnull %11)
  %12 = load ptr, ptr %11, align 8, !tbaa !76
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %10, !llvm.loop !256

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 38
  %16 = load ptr, ptr %15, align 8, !tbaa !231
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @sound_remove_scene_sound(ptr noundef %0, ptr noundef nonnull %16) #13
  store ptr null, ptr %15, align 8, !tbaa !231
  br label %19

19:                                               ; preds = %10, %6, %14, %18
  ret void
}

declare void @BKE_sequencer_base_clipboard_pointers_store(ptr noundef) local_unnamed_addr #3

declare void @sound_remove_scene_sound(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #3

declare void @BKE_sequencer_base_clipboard_pointers_restore(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_sequence_sound_init(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @BKE_sequencer_active_get_pair(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @BKE_sequence_swap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @sound_add_scene_sound_defaults(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @WM_operator_properties_border_to_rctf(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @UI_view2d_region_to_view_rctf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

declare ptr @WM_jobs_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #3

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #3

declare ptr @WM_jobs_customdata_get(ptr noundef) local_unnamed_addr #3

declare void @WM_jobs_customdata_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @proxy_freejob(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ProxyBuildJob, ptr %0, i64 0, i32 2
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #13
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  tail call void %3(ptr noundef %0) #13
  ret void
}

declare void @WM_jobs_timer(ptr noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @WM_jobs_callbacks(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @proxy_startjob(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #1 {
  %5 = getelementptr inbounds %struct.ProxyBuildJob, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !76
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %4, %8
  %9 = phi ptr [ %12, %8 ], [ %6, %4 ]
  %10 = getelementptr inbounds %struct.LinkData, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !257
  tail call void @BKE_sequencer_proxy_rebuild(ptr noundef %11, ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  %12 = load ptr, ptr %9, align 8, !tbaa !76
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %8, !llvm.loop !259

14:                                               ; preds = %8, %4
  %15 = load i16, ptr %1, align 2, !tbaa !260
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.ProxyBuildJob, ptr %0, i64 0, i32 3
  store i32 1, ptr %18, align 8, !tbaa !261
  %19 = load ptr, ptr @stderr, align 8, !tbaa !76
  %20 = tail call i64 @fwrite(ptr nonnull @.str.219, i64 44, i64 1, ptr %19) #14
  br label %21

21:                                               ; preds = %17, %14
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @proxy_endjob(ptr nocapture noundef readonly %0) #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !234
  %3 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %2, i8 noundef zeroext 0) #13
  %4 = getelementptr inbounds %struct.ProxyBuildJob, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !76
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ProxyBuildJob, ptr %0, i64 0, i32 3
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi ptr [ %5, %7 ], [ %15, %9 ]
  %11 = getelementptr inbounds %struct.LinkData, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !257
  %13 = load i32, ptr %8, align 8, !tbaa !261
  %14 = trunc i32 %13 to i8
  tail call void @BKE_sequencer_proxy_rebuild_finish(ptr noundef %12, i8 noundef zeroext %14) #13
  %15 = load ptr, ptr %10, align 8, !tbaa !76
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %9, !llvm.loop !262

17:                                               ; preds = %9, %1
  %18 = load ptr, ptr %0, align 8, !tbaa !234
  %19 = getelementptr inbounds %struct.Editing, ptr %3, i64 0, i32 1
  tail call void @BKE_sequencer_free_imbuf(ptr noundef %18, ptr noundef nonnull %19, i8 noundef zeroext 0) #13
  %20 = load ptr, ptr %0, align 8, !tbaa !234
  tail call void @WM_main_add_notifier(i32 noundef 67502080, ptr noundef %20) #13
  ret void
}

declare ptr @BKE_sequencer_proxy_rebuild_context(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BLI_genericNodeN(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @WM_jobs_is_running(ptr noundef) local_unnamed_addr #3

declare void @WM_jobs_start(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #3

declare void @BKE_sequencer_proxy_rebuild(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_sequencer_proxy_rebuild_finish(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_sequence_get_effect(ptr dead_on_unwind writable sret(%struct.SeqEffectHandle) align 8, ptr noundef) local_unnamed_addr #3

declare i32 @RNA_property_collection_length(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_path_rel(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @RNA_collection_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @RNA_string_get_alloc(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @RNA_property_collection_next(ptr noundef) local_unnamed_addr #3

declare void @RNA_property_collection_end(ptr noundef) local_unnamed_addr #3

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @RNA_property_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @RNA_property_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_join_dirfile(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @WM_event_add_fileselect(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree nounwind }
attributes #13 = { nounwind }
attributes #14 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !39, i64 120}
!35 = !{!"Sequence", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !39, i64 112, !39, i64 116, !39, i64 120, !39, i64 124, !39, i64 128, !39, i64 132, !39, i64 136, !39, i64 140, !40, i64 144, !40, i64 148, !40, i64 152, !41, i64 156, !41, i64 158, !39, i64 160, !39, i64 164, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !40, i64 224, !40, i64 228, !36, i64 232, !36, i64 240, !36, i64 248, !42, i64 256, !36, i64 272, !36, i64 280, !40, i64 288, !40, i64 292, !40, i64 296, !40, i64 300, !36, i64 304, !39, i64 312, !39, i64 316, !39, i64 320, !40, i64 324, !39, i64 328, !37, i64 332, !37, i64 333, !42, i64 336}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"float", !37, i64 0}
!41 = !{!"short", !37, i64 0}
!42 = !{!"ListBase", !36, i64 0, !36, i64 8}
!43 = !{!39, !39, i64 0}
!44 = !{!45, !40, i64 0}
!45 = !{!"rctf", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!46 = !{!35, !39, i64 128}
!47 = !{!45, !40, i64 8}
!48 = !{!35, !39, i64 124}
!49 = !{!35, !39, i64 108}
!50 = !{!35, !39, i64 104}
!51 = !{!35, !39, i64 140}
!52 = !{!45, !40, i64 4}
!53 = !{!45, !40, i64 12}
!54 = !{!55, !39, i64 688}
!55 = !{!"Scene", !56, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !42, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !39, i64 232, !39, i64 236, !39, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !57, i64 280, !65, i64 4264, !42, i64 4296, !42, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !39, i64 4380, !42, i64 4384, !66, i64 4400, !67, i64 4416, !70, i64 4600, !36, i64 4608, !71, i64 4616, !36, i64 4640, !72, i64 4648, !72, i64 4656, !59, i64 4664, !60, i64 4824, !73, i64 4888, !36, i64 4952}
!56 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112}
!57 = !{!"RenderData", !58, i64 0, !36, i64 248, !36, i64 256, !61, i64 264, !62, i64 328, !39, i64 400, !39, i64 404, !39, i64 408, !40, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !39, i64 428, !41, i64 432, !41, i64 434, !40, i64 436, !40, i64 440, !40, i64 444, !40, i64 448, !40, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !39, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !39, i64 484, !39, i64 488, !41, i64 492, !41, i64 494, !39, i64 496, !39, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !39, i64 516, !39, i64 520, !39, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !45, i64 544, !45, i64 560, !63, i64 576, !42, i64 592, !41, i64 608, !41, i64 610, !40, i64 612, !40, i64 616, !40, i64 620, !40, i64 624, !39, i64 628, !40, i64 632, !40, i64 636, !40, i64 640, !40, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !40, i64 660, !40, i64 664, !41, i64 668, !41, i64 670, !40, i64 672, !40, i64 676, !37, i64 680, !39, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !39, i64 2520, !41, i64 2524, !41, i64 2526, !40, i64 2528, !40, i64 2532, !41, i64 2536, !41, i64 2538, !40, i64 2540, !41, i64 2544, !41, i64 2546, !39, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !40, i64 2560, !40, i64 2564, !36, i64 2568, !39, i64 2576, !40, i64 2580, !37, i64 2584, !64, i64 2616, !39, i64 3976, !39, i64 3980}
!58 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !40, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !59, i64 24, !60, i64 184}
!59 = !{!"ColorManagedViewSettings", !39, i64 0, !39, i64 4, !37, i64 8, !37, i64 72, !40, i64 136, !40, i64 140, !36, i64 144, !36, i64 152}
!60 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!61 = !{!"QuicktimeCodecSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !41, i64 48, !41, i64 50, !39, i64 52, !39, i64 56, !39, i64 60}
!62 = !{!"FFMpegCodecData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !40, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !36, i64 64}
!63 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!64 = !{!"BakeData", !58, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !40, i64 1280, !40, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!65 = !{!"AudioData", !39, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !39, i64 16, !41, i64 20, !41, i64 22, !40, i64 24, !40, i64 28}
!66 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!67 = !{!"GameData", !66, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !68, i64 40, !41, i64 64, !41, i64 66, !40, i64 68, !69, i64 72, !40, i64 128, !40, i64 132, !39, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180}
!68 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !40, i64 8, !40, i64 12, !36, i64 16}
!69 = !{!"RecastData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !39, i64 40, !40, i64 44, !40, i64 48, !41, i64 52, !41, i64 54}
!70 = !{!"UnitSettings", !40, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!71 = !{!"PhysicsSettings", !37, i64 0, !39, i64 12, !39, i64 16, !39, i64 20}
!72 = !{!"long", !37, i64 0}
!73 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!74 = !{!75, !36, i64 0}
!75 = !{!"Editing", !36, i64 0, !42, i64 8, !42, i64 24, !36, i64 40, !37, i64 48, !37, i64 1072, !39, i64 2096, !39, i64 2100, !39, i64 2104, !39, i64 2108, !45, i64 2112}
!76 = !{!36, !36, i64 0}
!77 = !{!35, !39, i64 136}
!78 = distinct !{!78, !79, !80}
!79 = !{!"llvm.loop.mustprogress"}
!80 = !{!"llvm.loop.unroll.disable"}
!81 = !{!35, !39, i64 96}
!82 = distinct !{!82, !79, !80}
!83 = !{!63, !39, i64 4}
!84 = !{!63, !39, i64 0}
!85 = !{!40, !40, i64 0}
!86 = !{!35, !40, i64 152}
!87 = distinct !{!87, !79, !80}
!88 = !{!89, !39, i64 24}
!89 = !{!"SeqIterator", !36, i64 0, !39, i64 8, !39, i64 12, !36, i64 16, !39, i64 24}
!90 = !{!89, !36, i64 16}
!91 = distinct !{!91, !79, !80}
!92 = !{!35, !36, i64 256}
!93 = distinct !{!93, !79, !80}
!94 = !{!95, !41, i64 224}
!95 = !{!"SpaceSeq", !36, i64 0, !36, i64 8, !42, i64 16, !39, i64 32, !40, i64 36, !37, i64 40, !96, i64 56, !40, i64 216, !40, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !39, i64 232, !40, i64 236, !39, i64 240, !39, i64 244, !36, i64 248, !97, i64 256}
!96 = !{!"View2D", !45, i64 0, !45, i64 16, !63, i64 32, !63, i64 48, !63, i64 64, !37, i64 80, !37, i64 88, !40, i64 96, !40, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !39, i64 136, !39, i64 140, !36, i64 144, !36, i64 152}
!97 = !{!"SequencerScopes", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40}
!98 = !{!95, !39, i64 240}
!99 = !{!35, !39, i64 100}
!100 = distinct !{!100, !79, !80}
!101 = !{!102, !36, i64 0}
!102 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !42, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !103, i64 152, !41, i64 184}
!103 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!104 = !{!102, !36, i64 8}
!105 = !{!102, !36, i64 24}
!106 = !{!102, !36, i64 32}
!107 = !{!102, !36, i64 72}
!108 = !{!102, !41, i64 184}
!109 = !{!102, !36, i64 88}
!110 = !{!111, !36, i64 112}
!111 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !42, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!112 = !{!55, !39, i64 680}
!113 = distinct !{!113, !79, !80}
!114 = distinct !{!114, !79, !80}
!115 = distinct !{!115, !79, !80}
!116 = distinct !{!116, !79, !80}
!117 = !{!75, !36, i64 40}
!118 = !{!102, !36, i64 48}
!119 = !{!35, !39, i64 132}
!120 = !{!35, !39, i64 112}
!121 = distinct !{!121, !79, !80}
!122 = !{!35, !36, i64 232}
!123 = !{!35, !36, i64 240}
!124 = !{!35, !36, i64 248}
!125 = distinct !{!125, !79, !80}
!126 = !{!102, !36, i64 64}
!127 = !{!111, !36, i64 96}
!128 = !{!129, !36, i64 16}
!129 = !{!"SlipData", !37, i64 0, !37, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !39, i64 40, !37, i64 44, !39, i64 48}
!130 = !{!129, !36, i64 24}
!131 = !{!129, !36, i64 32}
!132 = !{!129, !39, i64 40}
!133 = !{!134, !39, i64 0}
!134 = !{!"TransSeq", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40}
!135 = !{!134, !39, i64 4}
!136 = !{!134, !39, i64 8}
!137 = !{!134, !39, i64 12}
!138 = !{!134, !39, i64 16}
!139 = !{!134, !39, i64 20}
!140 = !{!134, !39, i64 24}
!141 = !{!35, !39, i64 116}
!142 = !{!134, !39, i64 28}
!143 = !{!35, !39, i64 312}
!144 = !{!134, !39, i64 32}
!145 = !{!35, !39, i64 316}
!146 = !{!134, !39, i64 36}
!147 = !{!134, !39, i64 40}
!148 = distinct !{!148, !79, !80}
!149 = !{!129, !37, i64 44}
!150 = !{!151, !41, i64 16}
!151 = !{!"wmEvent", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 18, !39, i64 20, !39, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !41, i64 44, !41, i64 46, !39, i64 48, !39, i64 52, !152, i64 56, !39, i64 64, !39, i64 68, !41, i64 72, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 106, !39, i64 108, !36, i64 112}
!152 = !{!"double", !37, i64 0}
!153 = !{!129, !39, i64 48}
!154 = !{i8 0, i8 2}
!155 = distinct !{!155, !79, !80}
!156 = distinct !{!156, !79, !80}
!157 = !{!151, !41, i64 18}
!158 = distinct !{!158, !79, !80}
!159 = distinct !{!159, !79, !80}
!160 = distinct !{!160, !79, !80}
!161 = distinct !{!161, !79, !80}
!162 = distinct !{!162, !79, !80}
!163 = distinct !{!163, !79, !80}
!164 = !{i32 0, i32 2}
!165 = !{!111, !36, i64 120}
!166 = !{i32 2, i32 5}
!167 = distinct !{!167, !79, !80}
!168 = distinct !{!168, !79, !80}
!169 = !{!42, !36, i64 0}
!170 = !{!35, !36, i64 0}
!171 = distinct !{!171, !79, !80}
!172 = !{!173, !41, i64 214}
!173 = !{!"ARegion", !36, i64 0, !36, i64 8, !96, i64 16, !63, i64 176, !63, i64 192, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !41, i64 216, !41, i64 218, !40, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !36, i64 240, !42, i64 248, !42, i64 264, !42, i64 280, !42, i64 296, !42, i64 312, !42, i64 328, !42, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!174 = distinct !{!174, !79, !80}
!175 = !{!176, !36, i64 96}
!176 = !{!"SequenceModifierData", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !37, i64 24, !39, i64 88, !39, i64 92, !36, i64 96, !36, i64 104}
!177 = distinct !{!177, !79, !80}
!178 = distinct !{!178, !79, !80}
!179 = distinct !{!179, !79, !80}
!180 = distinct !{!180, !79, !80}
!181 = !{!182, !36, i64 24}
!182 = !{!"MetaStack", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32}
!183 = distinct !{!183, !79, !80}
!184 = distinct !{!184, !79, !80}
!185 = distinct !{!185, !79, !80}
!186 = distinct !{!186, !79, !80}
!187 = !{!35, !36, i64 168}
!188 = !{!189, !39, i64 16}
!189 = !{!"Strip", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !36, i64 32, !37, i64 40, !36, i64 808, !36, i64 816, !36, i64 824, !36, i64 832, !73, i64 840}
!190 = !{!189, !36, i64 32}
!191 = distinct !{!191, !79, !80}
!192 = distinct !{!192, !79, !80}
!193 = !{!182, !36, i64 16}
!194 = !{!75, !36, i64 32}
!195 = distinct !{!195, !79, !80}
!196 = distinct !{!196, !79, !80}
!197 = !{!55, !36, i64 256}
!198 = distinct !{!198, !79, !80}
!199 = distinct !{!199, !79, !80}
!200 = distinct !{!200, !79, !80}
!201 = !{i64 0, i64 4, !85, i64 4, i64 4, !85, i64 8, i64 4, !85, i64 12, i64 4, !85}
!202 = !{!57, !41, i64 478}
!203 = !{!57, !39, i64 484}
!204 = !{!57, !39, i64 488}
!205 = !{!63, !39, i64 12}
!206 = !{!63, !39, i64 8}
!207 = !{!55, !41, i64 820}
!208 = !{!55, !40, i64 900}
!209 = distinct !{!209, !79, !80}
!210 = distinct !{!210, !79, !80}
!211 = distinct !{!211, !79, !80}
!212 = !{!213, !37, i64 2090}
!213 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !42, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !39, i64 2096, !39, i64 2100, !37, i64 2104, !39, i64 2108, !39, i64 2112, !37, i64 2116}
!214 = distinct !{!214, !79, !80}
!215 = !{!35, !36, i64 304}
!216 = distinct !{!216, !79, !80}
!217 = distinct !{!217, !79, !80}
!218 = !{!219, !39, i64 256}
!219 = !{!"StripElem", !37, i64 0, !39, i64 256, !39, i64 260}
!220 = !{!219, !39, i64 260}
!221 = !{!55, !39, i64 764}
!222 = !{!55, !39, i64 768}
!223 = distinct !{!223, !79, !80}
!224 = !{!42, !36, i64 8}
!225 = !{!35, !36, i64 8}
!226 = distinct !{!226, !79, !80}
!227 = distinct !{!227, !79, !80}
!228 = distinct !{!228, !79, !80}
!229 = distinct !{!229, !79, !80}
!230 = distinct !{!230, !79, !80}
!231 = !{!35, !36, i64 280}
!232 = !{!35, !36, i64 272}
!233 = !{!102, !36, i64 56}
!234 = !{!235, !36, i64 0}
!235 = !{!"ProxyBuildJob", !36, i64 0, !36, i64 8, !42, i64 16, !39, i64 32}
!236 = !{!235, !36, i64 8}
!237 = distinct !{!237, !79, !80}
!238 = !{!213, !37, i64 2080}
!239 = !{!102, !36, i64 104}
!240 = !{i64 0, i64 8, !76, i64 8, i64 8, !76, i64 16, i64 8, !76, i64 24, i64 8, !76, i64 32, i64 8, !76, i64 40, i64 8, !76, i64 48, i64 8, !76}
!241 = !{i64 0, i64 8, !76, i64 8, i64 8, !76, i64 16, i64 8, !76, i64 24, i64 8, !76, i64 32, i64 8, !76, i64 40, i64 8, !76, i64 48, i64 8, !76, i64 56, i64 8, !76, i64 64, i64 8, !76, i64 72, i64 8, !76, i64 80, i64 8, !76}
!242 = !{!243, !39, i64 128}
!243 = !{!"CollectionPropertyIterator", !244, i64 0, !244, i64 24, !36, i64 48, !37, i64 56, !39, i64 96, !39, i64 100, !244, i64 104, !39, i64 128}
!244 = !{!"PointerRNA", !245, i64 0, !36, i64 8, !36, i64 16}
!245 = !{!"", !36, i64 0}
!246 = !{i64 0, i64 8, !76, i64 8, i64 8, !76, i64 16, i64 8, !76}
!247 = distinct !{!247, !79, !80}
!248 = distinct !{!248, !79, !80}
!249 = !{!37, !37, i64 0}
!250 = distinct !{!250, !79, !80}
!251 = distinct !{!251, !79, !80}
!252 = !{!35, !36, i64 16}
!253 = !{ptr @cut_seq_hard, ptr @cut_seq_soft}
!254 = distinct !{!254, !79, !80}
!255 = distinct !{!255, !79, !80}
!256 = distinct !{!256, !79, !80}
!257 = !{!258, !36, i64 16}
!258 = !{!"LinkData", !36, i64 0, !36, i64 8, !36, i64 16}
!259 = distinct !{!259, !79, !80}
!260 = !{!41, !41, i64 0}
!261 = !{!235, !39, i64 32}
!262 = distinct !{!262, !79, !80}
