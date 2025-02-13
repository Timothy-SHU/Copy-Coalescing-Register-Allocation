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
%struct.MetaStack = type { ptr, ptr, ptr, ptr, [2 x i32] }
%struct.Strip = type { ptr, ptr, i32, i32, i32, i32, ptr, [768 x i8], ptr, ptr, ptr, ptr, %struct.ColorManagedColorspaceSettings }
%struct.StripElem = type { [256 x i8], i32, i32 }
%struct.SeqEffectHandle = type { i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.SequenceModifierData = type { ptr, ptr, i32, i32, [64 x i8], i32, i32, ptr, ptr }
%struct.ProxyBuildJob = type { ptr, ptr, %struct.ListBase, i32 }
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
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
  store float %29, ptr %30, align 4
  %31 = fadd float %13, 0x3FE99999A0000000
  %32 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 3
  store float %31, ptr %32, align 4, !tbaa !52
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @boundbox_seq(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #1 {
  %3 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %0, i8 noundef zeroext 0) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %39, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !53
  %8 = add nsw i32 %7, 1
  %9 = sitofp i32 %8 to float
  %10 = load ptr, ptr %3, align 8, !tbaa !73
  %11 = load ptr, ptr %10, align 8, !tbaa !75
  %12 = icmp eq ptr %11, null
  %13 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %9, i64 1
  br i1 %12, label %34, label %14

14:                                               ; preds = %5, %14
  %15 = phi ptr [ %32, %14 ], [ %11, %5 ]
  %16 = phi float [ %31, %14 ], [ 8.000000e+00, %5 ]
  %17 = phi <2 x float> [ %25, %14 ], [ %13, %5 ]
  %18 = getelementptr inbounds %struct.Sequence, ptr %15, i64 0, i32 15
  %19 = load <2 x i32>, ptr %18, align 8, !tbaa !43
  %20 = add nsw <2 x i32> %19, <i32 -1, i32 1>
  %21 = sitofp <2 x i32> %20 to <2 x float>
  %22 = shufflevector <2 x float> %17, <2 x float> %21, <2 x i32> <i32 0, i32 3>
  %23 = shufflevector <2 x float> %21, <2 x float> %17, <2 x i32> <i32 0, i32 3>
  %24 = fcmp ogt <2 x float> %22, %23
  %25 = select <2 x i1> %24, <2 x float> %21, <2 x float> %17
  %26 = getelementptr inbounds %struct.Sequence, ptr %15, i64 0, i32 13
  %27 = load i32, ptr %26, align 8, !tbaa !46
  %28 = add nsw i32 %27, 2
  %29 = sitofp i32 %28 to float
  %30 = fcmp olt float %16, %29
  %31 = select i1 %30, float %29, float %16
  %32 = load ptr, ptr %15, align 8, !tbaa !75
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %14, !llvm.loop !76

34:                                               ; preds = %14, %5
  %35 = phi float [ 8.000000e+00, %5 ], [ %31, %14 ]
  %36 = phi <2 x float> [ %13, %5 ], [ %25, %14 ]
  store <2 x float> %36, ptr %1, align 4, !tbaa !78
  %37 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 2
  store float 0.000000e+00, ptr %37, align 4, !tbaa !47
  %38 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 3
  store float %35, ptr %38, align 4, !tbaa !52
  br label %39

39:                                               ; preds = %2, %34
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare ptr @BKE_sequencer_editing_get(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @find_neighboring_sequence(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %0, i8 noundef zeroext 0) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %48, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr %5, align 8, !tbaa !73
  %9 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 16
  %10 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 15
  %11 = load ptr, ptr %8, align 8, !tbaa !75
  %12 = icmp eq ptr %11, null
  br i1 %12, label %48, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 13
  br label %15

15:                                               ; preds = %13, %45
  %16 = phi ptr [ %11, %13 ], [ %46, %45 ]
  %17 = icmp eq ptr %16, %1
  br i1 %17, label %45, label %18

18:                                               ; preds = %15
  %19 = load i32, ptr %14, align 8, !tbaa !46
  %20 = getelementptr inbounds %struct.Sequence, ptr %16, i64 0, i32 13
  %21 = load i32, ptr %20, align 8, !tbaa !46
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %45

23:                                               ; preds = %18
  switch i32 %3, label %24 [
    i32 -1, label %34
    i32 0, label %29
  ]

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct.Sequence, ptr %16, i64 0, i32 5
  %26 = load i32, ptr %25, align 8, !tbaa !79
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %45, label %34

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.Sequence, ptr %16, i64 0, i32 5
  %31 = load i32, ptr %30, align 8, !tbaa !79
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %23, %29, %24
  switch i32 %2, label %45 [
    i32 1, label %35
    i32 2, label %40
  ]

35:                                               ; preds = %34
  %36 = load i32, ptr %10, align 8, !tbaa !80
  %37 = getelementptr inbounds %struct.Sequence, ptr %16, i64 0, i32 16
  %38 = load i32, ptr %37, align 4, !tbaa !51
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %48, label %45

40:                                               ; preds = %34
  %41 = load i32, ptr %9, align 4, !tbaa !51
  %42 = getelementptr inbounds %struct.Sequence, ptr %16, i64 0, i32 15
  %43 = load i32, ptr %42, align 8, !tbaa !80
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %48, label %45

45:                                               ; preds = %24, %15, %18, %29, %40, %35, %34
  %46 = load ptr, ptr %16, align 8, !tbaa !75
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %15, !llvm.loop !81

48:                                               ; preds = %35, %40, %45, %7, %4
  %49 = phi ptr [ null, %4 ], [ null, %7 ], [ %16, %35 ], [ %16, %40 ], [ null, %45 ]
  ret ptr %49
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @find_nearest_seq(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #1 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %0, i8 noundef zeroext 0) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store i32 0, ptr %2, align 4, !tbaa !43
  %8 = icmp eq ptr %7, null
  br i1 %8, label %93, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1
  %11 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %10) #17
  %12 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 4
  %13 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %12) #17
  %14 = sitofp i32 %13 to float
  %15 = fdiv float %11, %14
  %16 = load i32, ptr %3, align 4, !tbaa !43
  %17 = sitofp i32 %16 to float
  %18 = getelementptr inbounds i32, ptr %3, i64 1
  %19 = load i32, ptr %18, align 4, !tbaa !43
  %20 = sitofp i32 %19 to float
  call void @UI_view2d_region_to_view(ptr noundef %1, float noundef %17, float noundef %20, ptr noundef nonnull %5, ptr noundef nonnull %6) #15
  %21 = load ptr, ptr %7, align 8, !tbaa !73
  %22 = load ptr, ptr %21, align 8, !tbaa !75
  %23 = icmp eq ptr %22, null
  br i1 %23, label %93, label %24

24:                                               ; preds = %9
  %25 = load float, ptr %6, align 4, !tbaa !78
  %26 = fptosi float %25 to i32
  %27 = load float, ptr %5, align 4
  br label %28

28:                                               ; preds = %24, %88
  %29 = phi ptr [ %22, %24 ], [ %89, %88 ]
  %30 = getelementptr inbounds %struct.Sequence, ptr %29, i64 0, i32 13
  %31 = load i32, ptr %30, align 8, !tbaa !46
  %32 = icmp eq i32 %31, %26
  br i1 %32, label %33, label %88

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.Sequence, ptr %29, i64 0, i32 15
  %35 = load i32, ptr %34, align 8, !tbaa !80
  %36 = getelementptr inbounds %struct.Sequence, ptr %29, i64 0, i32 16
  %37 = load i32, ptr %36, align 4, !tbaa !51
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = sitofp i32 %35 to float
  %41 = fcmp ult float %27, %40
  %42 = sitofp i32 %37 to float
  %43 = fcmp ugt float %27, %42
  %44 = or i1 %41, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %39, %33
  %46 = icmp sgt i32 %35, %37
  br i1 %46, label %47, label %88

47:                                               ; preds = %45
  %48 = sitofp i32 %35 to float
  %49 = fcmp ugt float %27, %48
  %50 = sitofp i32 %37 to float
  %51 = fcmp ult float %27, %50
  %52 = or i1 %49, %51
  br i1 %52, label %88, label %53

53:                                               ; preds = %47, %39
  %54 = call zeroext i8 @BKE_sequence_tx_test(ptr noundef nonnull %29) #15
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %93, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.Sequence, ptr %29, i64 0, i32 16
  %58 = getelementptr inbounds %struct.Sequence, ptr %29, i64 0, i32 15
  %59 = getelementptr inbounds %struct.Sequence, ptr %29, i64 0, i32 19
  %60 = load float, ptr %59, align 8, !tbaa !82
  %61 = load i32, ptr %58, align 8, !tbaa !80
  %62 = load i32, ptr %57, align 4, !tbaa !51
  %63 = sub nsw i32 %61, %62
  %64 = call i32 @llvm.abs.i32(i32 %63, i1 true)
  %65 = sitofp i32 %64 to float
  %66 = fdiv float %65, %15
  %67 = fcmp ogt float %66, 1.600000e+01
  br i1 %67, label %68, label %93

68:                                               ; preds = %56
  %69 = fdiv float %65, 3.000000e+00
  %70 = fmul float %15, 3.000000e+01
  %71 = fcmp olt float %69, %70
  br i1 %71, label %78, label %72

72:                                               ; preds = %68
  %73 = fmul float %15, 7.000000e+00
  %74 = fcmp olt float %60, %73
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = fcmp ogt float %60, %70
  br i1 %76, label %77, label %78

77:                                               ; preds = %75
  br label %78

78:                                               ; preds = %72, %68, %77, %75
  %79 = phi float [ %70, %77 ], [ %60, %75 ], [ %69, %68 ], [ %73, %72 ]
  %80 = sitofp i32 %61 to float
  %81 = fadd float %79, %80
  %82 = load float, ptr %5, align 4, !tbaa !78
  %83 = fcmp ult float %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %78
  %85 = sitofp i32 %62 to float
  %86 = fsub float %85, %79
  %87 = fcmp ugt float %86, %82
  br i1 %87, label %93, label %91

88:                                               ; preds = %45, %47, %28
  %89 = load ptr, ptr %29, align 8, !tbaa !75
  %90 = icmp eq ptr %89, null
  br i1 %90, label %93, label %28, !llvm.loop !83

91:                                               ; preds = %84, %78
  %92 = phi i32 [ 1, %78 ], [ 2, %84 ]
  store i32 %92, ptr %2, align 4, !tbaa !43
  br label %93

93:                                               ; preds = %88, %91, %9, %53, %84, %56, %4
  %94 = phi ptr [ null, %4 ], [ %29, %56 ], [ %29, %84 ], [ %29, %53 ], [ null, %9 ], [ %29, %91 ], [ null, %88 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  ret ptr %94
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_x(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !84 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !85
  %4 = load float, ptr %0, align 4, !tbaa !44
  %5 = fsub float %3, %4
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_x(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !86 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !87
  %4 = load i32, ptr %0, align 4, !tbaa !88
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: optsize
declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BKE_sequence_tx_test(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_sequencer_deselect_all(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca %struct.SeqIterator, align 8
  %3 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %0, i8 noundef zeroext 0) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #16
  call void @BKE_sequence_iterator_begin(ptr noundef nonnull %3, ptr noundef nonnull %2, i8 noundef zeroext 1) #15
  %6 = getelementptr inbounds %struct.SeqIterator, ptr %2, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !89
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.SeqIterator, ptr %2, i64 0, i32 3
  br label %11

11:                                               ; preds = %9, %11
  %12 = load ptr, ptr %10, align 8, !tbaa !91
  %13 = getelementptr inbounds %struct.Sequence, ptr %12, i64 0, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !79
  %15 = and i32 %14, -8
  store i32 %15, ptr %13, align 8, !tbaa !79
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %2) #15
  %16 = load i32, ptr %6, align 8, !tbaa !89
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %11, !llvm.loop !92

18:                                               ; preds = %11, %5
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %2) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #16
  br label %19

19:                                               ; preds = %1, %18
  ret void
}

; Function Attrs: optsize
declare void @BKE_sequence_iterator_begin(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_sequence_iterator_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_sequence_iterator_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @recurs_sel_seq(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 36
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = icmp eq ptr %3, null
  br i1 %4, label %33, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 5
  br label %7

7:                                                ; preds = %5, %30
  %8 = phi ptr [ %3, %5 ], [ %31, %30 ]
  %9 = load i32, ptr %6, align 8, !tbaa !79
  %10 = and i32 %9, 6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !79
  %15 = and i32 %14, -8
  store i32 %15, ptr %13, align 8, !tbaa !79
  br label %25

16:                                               ; preds = %7
  %17 = and i32 %9, 1
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !79
  br i1 %18, label %23, label %21

21:                                               ; preds = %16
  %22 = or i32 %20, 1
  store i32 %22, ptr %19, align 8, !tbaa !79
  br label %25

23:                                               ; preds = %16
  %24 = and i32 %20, -8
  store i32 %24, ptr %19, align 8, !tbaa !79
  br label %25

25:                                               ; preds = %21, %23, %12
  %26 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 36
  %27 = load ptr, ptr %26, align 8, !tbaa !93
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @recurs_sel_seq(ptr noundef nonnull %8) #17
  br label %30

30:                                               ; preds = %29, %25
  %31 = load ptr, ptr %8, align 8, !tbaa !75
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %7, !llvm.loop !94

33:                                               ; preds = %30, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_space_sequencer_maskedit_mask_poll(ptr noundef %0) local_unnamed_addr #1 {
  %2 = tail call i32 @ED_space_sequencer_maskedit_poll(ptr noundef %0) #17, !range !95
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_space_sequencer_maskedit_poll(ptr noundef %0) local_unnamed_addr #1 {
  %2 = tail call ptr @CTX_wm_space_seq(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %6 = tail call zeroext i8 @ED_space_sequencer_check_show_maskedit(ptr noundef nonnull %2, ptr noundef %5) #17, !range !96
  %7 = zext nneg i8 %6 to i32
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi i32 [ %7, %4 ], [ 0, %1 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @ED_space_sequencer_check_show_maskedit(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.SpaceSeq, ptr %0, i64 0, i32 9
  %6 = load i16, ptr %5, align 8, !tbaa !97
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = tail call ptr @BKE_sequencer_mask_get(ptr noundef %1) #15
  %10 = icmp ne ptr %9, null
  %11 = zext i1 %10 to i8
  br label %12

12:                                               ; preds = %2, %4, %8
  %13 = phi i8 [ %11, %8 ], [ 0, %4 ], [ 0, %2 ]
  ret i8 %13
}

; Function Attrs: optsize
declare ptr @BKE_sequencer_mask_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_wm_space_seq(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @ED_space_sequencer_check_show_imbuf(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.SpaceSeq, ptr %0, i64 0, i32 15
  %3 = load i32, ptr %2, align 8, !tbaa !101
  %4 = and i32 %3, -2
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.SpaceSeq, ptr %0, i64 0, i32 9
  %8 = load i16, ptr %7, align 8, !tbaa !97
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @seq_effect_find_selected(ptr noundef %0, ptr noundef readnone %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #1 {
  %8 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %0, i8 noundef zeroext 0) #15
  store ptr null, ptr %6, align 8, !tbaa !75
  %9 = icmp eq ptr %1, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call ptr @BKE_sequencer_active_get(ptr noundef %0) #15
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi ptr [ null, %7 ], [ %11, %10 ]
  %14 = load ptr, ptr %8, align 8, !tbaa !73
  %15 = load ptr, ptr %14, align 8, !tbaa !75
  %16 = icmp eq ptr %15, null
  br i1 %16, label %51, label %17

17:                                               ; preds = %12, %45
  %18 = phi ptr [ %49, %45 ], [ %15, %12 ]
  %19 = phi ptr [ %48, %45 ], [ null, %12 ]
  %20 = phi ptr [ %47, %45 ], [ %13, %12 ]
  %21 = phi ptr [ %46, %45 ], [ null, %12 ]
  %22 = getelementptr inbounds %struct.Sequence, ptr %18, i64 0, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !79
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %45, label %26

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.Sequence, ptr %18, i64 0, i32 6
  %28 = load i32, ptr %27, align 4, !tbaa !102
  %29 = icmp eq i32 %28, 4
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = tail call i32 @BKE_sequence_effect_get_num_inputs(i32 noundef %2) #15
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  store ptr @.str.51, ptr %6, align 8, !tbaa !75
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
  store ptr @.str.52, ptr %6, align 8, !tbaa !75
  br label %90

45:                                               ; preds = %42, %40, %38, %17, %34
  %46 = phi ptr [ %21, %34 ], [ %21, %17 ], [ %21, %38 ], [ %18, %40 ], [ %21, %42 ]
  %47 = phi ptr [ %20, %34 ], [ %20, %17 ], [ %18, %38 ], [ %20, %40 ], [ %20, %42 ]
  %48 = phi ptr [ %19, %34 ], [ %19, %17 ], [ %19, %38 ], [ %19, %40 ], [ %18, %42 ]
  %49 = load ptr, ptr %18, align 8, !tbaa !75
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %17, !llvm.loop !103

51:                                               ; preds = %45, %12
  %52 = phi ptr [ null, %12 ], [ %46, %45 ]
  %53 = phi ptr [ %13, %12 ], [ %47, %45 ]
  %54 = phi ptr [ null, %12 ], [ %48, %45 ]
  %55 = icmp ne ptr %54, null
  %56 = icmp ne ptr %53, null
  %57 = select i1 %55, i1 %56, i1 false
  %58 = select i1 %57, ptr %54, ptr %53
  %59 = select i1 %57, ptr %53, ptr %54
  %60 = tail call i32 @BKE_sequence_effect_get_num_inputs(i32 noundef %2) #15
  switch i32 %60, label %80 [
    i32 0, label %61
    i32 1, label %62
    i32 2, label %70
  ]

61:                                               ; preds = %51
  store ptr null, ptr %5, align 8, !tbaa !75
  store ptr null, ptr %4, align 8, !tbaa !75
  store ptr null, ptr %3, align 8, !tbaa !75
  br label %90

62:                                               ; preds = %51
  %63 = icmp eq ptr %58, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %62
  store ptr @.str.53, ptr %6, align 8, !tbaa !75
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
  store ptr @.str.54, ptr %6, align 8, !tbaa !75
  br label %90

77:                                               ; preds = %70
  %78 = icmp eq ptr %72, null
  %79 = select i1 %78, ptr %58, ptr %72
  br label %87

80:                                               ; preds = %51
  %81 = icmp eq ptr %52, null
  %82 = icmp eq ptr %58, null
  %83 = select i1 %81, i1 %82, i1 false
  %84 = icmp eq ptr %59, null
  %85 = select i1 %83, i1 %84, i1 false
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  store ptr @.str.55, ptr %6, align 8, !tbaa !75
  br label %90

87:                                               ; preds = %77, %80
  %88 = phi ptr [ %79, %77 ], [ %59, %80 ]
  %89 = phi ptr [ %71, %77 ], [ %52, %80 ]
  store ptr %89, ptr %3, align 8, !tbaa !75
  store ptr %58, ptr %4, align 8, !tbaa !75
  store ptr %88, ptr %5, align 8, !tbaa !75
  br label %90

90:                                               ; preds = %87, %86, %76, %64, %61, %44, %33
  %91 = phi i32 [ 0, %33 ], [ 0, %44 ], [ 0, %86 ], [ 1, %87 ], [ 0, %76 ], [ 0, %64 ], [ 1, %61 ]
  ret i32 %91
}

; Function Attrs: optsize
declare ptr @BKE_sequencer_active_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BKE_sequence_effect_get_num_inputs(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SEQUENCER_OT_gap_remove(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.56, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.57, ptr %2, align 8, !tbaa !107
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.58, ptr %3, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_gap_remove_exec, ptr %4, align 8, !tbaa !109
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %5, align 8, !tbaa !110
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !111
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !112
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.59, i32 noundef 0, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_gap_remove_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !113 {
  %3 = alloca %struct.rctf, align 4
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !114
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.59) #15
  call void @boundbox_seq(ptr noundef %4, ptr noundef nonnull %3) #17
  %8 = load float, ptr %3, align 4, !tbaa !44
  %9 = fptosi float %8 to i32
  %10 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 1
  %11 = load float, ptr %10, align 4, !tbaa !85
  %12 = fptosi float %11 to i32
  %13 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !116
  %15 = icmp slt i32 %14, %9
  br i1 %15, label %23, label %16

16:                                               ; preds = %2, %20
  %17 = phi i32 [ %21, %20 ], [ %14, %2 ]
  %18 = tail call i32 @BKE_sequencer_evaluate_frame(ptr noundef %4, i32 noundef %17) #15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = add nsw i32 %17, -1
  %22 = icmp sgt i32 %17, %9
  br i1 %22, label %16, label %23, !llvm.loop !117

23:                                               ; preds = %20, %16, %2
  %24 = phi i32 [ %14, %2 ], [ %17, %16 ], [ %21, %20 ]
  %25 = phi i8 [ 0, %2 ], [ 1, %16 ], [ 0, %20 ]
  %26 = icmp slt i32 %24, %12
  br i1 %26, label %27, label %51

27:                                               ; preds = %23
  %28 = and i32 %7, 255
  %29 = icmp eq i32 %28, 0
  br label %30

30:                                               ; preds = %27, %47
  %31 = phi i32 [ %24, %27 ], [ %49, %47 ]
  %32 = phi i8 [ %25, %27 ], [ %48, %47 ]
  %33 = icmp eq i8 %32, 0
  %34 = tail call i32 @BKE_sequencer_evaluate_frame(ptr noundef %4, i32 noundef %31) #15
  br i1 %33, label %35, label %38

35:                                               ; preds = %30
  %36 = icmp ne i32 %34, 0
  %37 = zext i1 %36 to i8
  br label %47

38:                                               ; preds = %30
  %39 = icmp eq i32 %34, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %38, %43
  %41 = tail call i32 @BKE_sequencer_evaluate_frame(ptr noundef %4, i32 noundef %31) #15
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = tail call fastcc zeroext i8 @sequence_offset_after_frame(ptr noundef %4, i32 noundef -1, i32 noundef %31) #17, !range !96
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %51, label %40, !llvm.loop !118

46:                                               ; preds = %40
  br i1 %29, label %51, label %47

47:                                               ; preds = %35, %46, %38
  %48 = phi i8 [ %32, %46 ], [ %32, %38 ], [ %37, %35 ]
  %49 = add i32 %31, 1
  %50 = icmp eq i32 %49, %12
  br i1 %50, label %51, label %30, !llvm.loop !119

51:                                               ; preds = %47, %46, %43, %23
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %4) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @sequencer_edit_poll(ptr noundef %0) #1 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %3 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %2, i8 noundef zeroext 0) #15
  %4 = icmp ne ptr %3, null
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SEQUENCER_OT_gap_insert(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.62, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.63, ptr %2, align 8, !tbaa !107
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.64, ptr %3, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_gap_insert_exec, ptr %4, align 8, !tbaa !109
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %5, align 8, !tbaa !110
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !111
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !112
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.65, i32 noundef 10, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.67, i32 noundef 0, i32 noundef 1000) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_gap_insert_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !120 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !114
  %6 = tail call i32 @RNA_int_get(ptr noundef %5, ptr noundef nonnull @.str.65) #15
  %7 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !116
  %9 = tail call fastcc zeroext i8 @sequence_offset_after_frame(ptr noundef %3, i32 noundef %6, i32 noundef %8) #17, !range !96
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %3) #15
  ret i32 4
}

; Function Attrs: optsize
declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @sequencer_strip_has_path_poll(ptr noundef %0) #1 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %3 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %2, i8 noundef zeroext 0) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Editing, ptr %3, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !121
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Sequence, ptr %7, i64 0, i32 6
  %11 = load i32, ptr %10, align 4, !tbaa !102
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @sequencer_view_poll(ptr noundef %0) #1 {
  %2 = tail call ptr @CTX_wm_space_seq(ptr noundef %0) #15
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 0) #15
  %5 = icmp ne ptr %4, null
  %6 = icmp ne ptr %2, null
  %7 = select i1 %5, i1 %6, i1 false
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.SpaceSeq, ptr %2, i64 0, i32 9
  %10 = load i16, ptr %9, align 8, !tbaa !97
  %11 = icmp eq i16 %10, 1
  br i1 %11, label %13, label %12

12:                                               ; preds = %8, %1
  br label %13

13:                                               ; preds = %8, %12
  %14 = phi i32 [ 0, %12 ], [ 1, %8 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SEQUENCER_OT_snap(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.68, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.69, ptr %2, align 8, !tbaa !107
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.70, ptr %3, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sequencer_snap_invoke, ptr %4, align 8, !tbaa !122
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_snap_exec, ptr %5, align 8, !tbaa !109
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %6, align 8, !tbaa !110
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !111
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !112
  %10 = tail call ptr @RNA_def_int(ptr noundef %9, ptr noundef nonnull @.str.71, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.70, i32 noundef -2147483648, i32 noundef 2147483647) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_snap_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #1 !PGOFuncName !123 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %5 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !116
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !114
  tail call void @RNA_int_set(ptr noundef %8, ptr noundef nonnull @.str.71, i32 noundef %6) #15
  %9 = tail call i32 @sequencer_snap_exec(ptr noundef %0, ptr noundef %1) #17
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_snap_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !124 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 0) #15
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !114
  %7 = tail call i32 @RNA_int_get(ptr noundef %6, ptr noundef nonnull @.str.71) #15
  %8 = load ptr, ptr %4, align 8, !tbaa !73
  %9 = load ptr, ptr %8, align 8, !tbaa !75
  %10 = icmp eq ptr %9, null
  br i1 %10, label %117, label %11

11:                                               ; preds = %2, %51
  %12 = phi ptr [ %52, %51 ], [ %9, %2 ]
  %13 = getelementptr inbounds %struct.Sequence, ptr %12, i64 0, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !79
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %51, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.Sequence, ptr %12, i64 0, i32 14
  %19 = load i32, ptr %18, align 4, !tbaa !125
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %14, 16384
  %22 = icmp eq i32 %21, 0
  %23 = or i1 %22, %20
  br i1 %23, label %24, label %51

24:                                               ; preds = %17
  %25 = tail call zeroext i8 @BKE_sequence_tx_test(ptr noundef nonnull %12) #15
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %51, label %27

27:                                               ; preds = %24
  %28 = load i32, ptr %13, align 8, !tbaa !79
  %29 = and i32 %28, 6
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.Sequence, ptr %12, i64 0, i32 9
  %33 = load i32, ptr %32, align 8, !tbaa !126
  %34 = getelementptr inbounds %struct.Sequence, ptr %12, i64 0, i32 11
  %35 = load i32, ptr %34, align 8, !tbaa !34
  %36 = getelementptr inbounds %struct.Sequence, ptr %12, i64 0, i32 8
  %37 = load i32, ptr %36, align 4, !tbaa !49
  %38 = add i32 %7, %35
  %39 = add i32 %33, %37
  %40 = sub i32 %38, %39
  tail call void @BKE_sequence_translate(ptr noundef %3, ptr noundef nonnull %12, i32 noundef %40) #15
  br label %50

41:                                               ; preds = %27
  %42 = and i32 %28, 2
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  tail call void @BKE_sequence_tx_set_final_left(ptr noundef nonnull %12, i32 noundef %7) #15
  br label %46

45:                                               ; preds = %41
  tail call void @BKE_sequence_tx_set_final_right(ptr noundef nonnull %12, i32 noundef %7) #15
  br label %46

46:                                               ; preds = %45, %44
  %47 = load i32, ptr %13, align 8, !tbaa !79
  %48 = and i32 %47, 2
  %49 = and i32 %47, 4
  tail call void @BKE_sequence_tx_handle_xlimits(ptr noundef nonnull %12, i32 noundef %48, i32 noundef %49) #15
  br label %50

50:                                               ; preds = %46, %31
  tail call void @BKE_sequence_calc(ptr noundef %3, ptr noundef nonnull %12) #15
  br label %51

51:                                               ; preds = %17, %11, %24, %50
  %52 = load ptr, ptr %12, align 8, !tbaa !75
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %11, !llvm.loop !127

54:                                               ; preds = %51
  %55 = load ptr, ptr %4, align 8, !tbaa !73
  %56 = load ptr, ptr %55, align 8, !tbaa !75
  %57 = icmp eq ptr %56, null
  br i1 %57, label %117, label %58

58:                                               ; preds = %54, %114
  %59 = phi ptr [ %115, %114 ], [ %56, %54 ]
  %60 = getelementptr inbounds %struct.Sequence, ptr %59, i64 0, i32 5
  %61 = load i32, ptr %60, align 8, !tbaa !79
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %79, label %64

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.Sequence, ptr %59, i64 0, i32 14
  %66 = load i32, ptr %65, align 4, !tbaa !125
  %67 = icmp ne i32 %66, 0
  %68 = and i32 %61, 16384
  %69 = icmp eq i32 %68, 0
  %70 = or i1 %69, %67
  br i1 %70, label %71, label %79

71:                                               ; preds = %64
  %72 = and i32 %61, -9
  store i32 %72, ptr %60, align 8, !tbaa !79
  %73 = load ptr, ptr %4, align 8, !tbaa !73
  %74 = tail call zeroext i8 @BKE_sequence_test_overlap(ptr noundef %73, ptr noundef nonnull %59) #15
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %114, label %76

76:                                               ; preds = %71
  %77 = load ptr, ptr %4, align 8, !tbaa !73
  %78 = tail call zeroext i8 @BKE_sequence_base_shuffle(ptr noundef %77, ptr noundef nonnull %59, ptr noundef %3) #15
  br label %114

79:                                               ; preds = %64, %58
  %80 = getelementptr inbounds %struct.Sequence, ptr %59, i64 0, i32 6
  %81 = load i32, ptr %80, align 4, !tbaa !102
  %82 = and i32 %81, 8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %114, label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.Sequence, ptr %59, i64 0, i32 33
  %86 = load ptr, ptr %85, align 8, !tbaa !128
  %87 = icmp eq ptr %86, null
  br i1 %87, label %94, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.Sequence, ptr %86, i64 0, i32 5
  %90 = load i32, ptr %89, align 8, !tbaa !79
  %91 = and i32 %90, 1
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %88
  tail call void @BKE_sequence_calc(ptr noundef %3, ptr noundef nonnull %59) #15
  br label %114

94:                                               ; preds = %88, %84
  %95 = getelementptr inbounds %struct.Sequence, ptr %59, i64 0, i32 34
  %96 = load ptr, ptr %95, align 8, !tbaa !129
  %97 = icmp eq ptr %96, null
  br i1 %97, label %104, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.Sequence, ptr %96, i64 0, i32 5
  %100 = load i32, ptr %99, align 8, !tbaa !79
  %101 = and i32 %100, 1
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %98
  tail call void @BKE_sequence_calc(ptr noundef %3, ptr noundef nonnull %59) #15
  br label %114

104:                                              ; preds = %98, %94
  %105 = getelementptr inbounds %struct.Sequence, ptr %59, i64 0, i32 35
  %106 = load ptr, ptr %105, align 8, !tbaa !130
  %107 = icmp eq ptr %106, null
  br i1 %107, label %114, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.Sequence, ptr %106, i64 0, i32 5
  %110 = load i32, ptr %109, align 8, !tbaa !79
  %111 = and i32 %110, 1
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %108
  tail call void @BKE_sequence_calc(ptr noundef %3, ptr noundef nonnull %59) #15
  br label %114

114:                                              ; preds = %76, %71, %93, %104, %108, %113, %103, %79
  %115 = load ptr, ptr %59, align 8, !tbaa !75
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %58, !llvm.loop !131

117:                                              ; preds = %114, %2, %54
  tail call void @BKE_sequencer_sort(ptr noundef %3) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %3) #15
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SEQUENCER_OT_slip(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.73, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.74, ptr %2, align 8, !tbaa !107
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.75, ptr %3, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sequencer_slip_invoke, ptr %4, align 8, !tbaa !122
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @sequencer_slip_modal, ptr %5, align 8, !tbaa !132
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_slip_exec, ptr %6, align 8, !tbaa !109
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %7, align 8, !tbaa !110
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %8, align 8, !tbaa !111
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !112
  %11 = tail call ptr @RNA_def_int(ptr noundef %10, ptr noundef nonnull @.str.76, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78, i32 noundef -2147483648, i32 noundef 2147483647) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_slip_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #1 !PGOFuncName !133 {
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %6 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %5, i8 noundef zeroext 0) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %7 = tail call ptr @UI_view2d_fromcontext(ptr noundef %0) #15
  %8 = load ptr, ptr %6, align 8, !tbaa !73
  %9 = tail call fastcc i32 @slip_count_sequences_rec(ptr noundef %8, i8 noundef zeroext 1) #17
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %54, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !75
  %13 = tail call ptr %12(i64 noundef 56, ptr noundef nonnull @.str.200) #15
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %13, ptr %14, align 8, !tbaa !134
  %15 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !75
  %16 = sext i32 %9 to i64
  %17 = mul nsw i64 %16, 44
  %18 = tail call ptr %15(i64 noundef %17, ptr noundef nonnull @.str.201) #15
  %19 = getelementptr inbounds %struct.SlipData, ptr %13, i64 0, i32 2
  store ptr %18, ptr %19, align 8, !tbaa !135
  %20 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !75
  %21 = shl nsw i64 %16, 3
  %22 = tail call ptr %20(i64 noundef %21, ptr noundef nonnull @.str.202) #15
  %23 = getelementptr inbounds %struct.SlipData, ptr %13, i64 0, i32 3
  store ptr %22, ptr %23, align 8, !tbaa !137
  %24 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !75
  %25 = tail call ptr %24(i64 noundef %16, ptr noundef nonnull @.str.203) #15
  %26 = getelementptr inbounds %struct.SlipData, ptr %13, i64 0, i32 4
  store ptr %25, ptr %26, align 8, !tbaa !138
  %27 = getelementptr inbounds %struct.SlipData, ptr %13, i64 0, i32 5
  store i32 %9, ptr %27, align 8, !tbaa !139
  %28 = load ptr, ptr %6, align 8, !tbaa !73
  %29 = load ptr, ptr %23, align 8, !tbaa !137
  %30 = tail call fastcc i32 @slip_add_sequences_rec(ptr noundef %28, ptr noundef %29, ptr noundef %25, i32 noundef 0, i8 noundef zeroext 1) #17
  %31 = icmp sgt i32 %9, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %11
  %33 = zext nneg i32 %9 to i64
  br label %34

34:                                               ; preds = %32, %34
  %35 = phi i64 [ 0, %32 ], [ %41, %34 ]
  %36 = load ptr, ptr %19, align 8, !tbaa !135
  %37 = getelementptr inbounds %struct.TransSeq, ptr %36, i64 %35
  %38 = load ptr, ptr %23, align 8, !tbaa !137
  %39 = getelementptr inbounds ptr, ptr %38, i64 %35
  %40 = load ptr, ptr %39, align 8, !tbaa !75
  tail call fastcc void @transseq_backup(ptr noundef %37, ptr noundef %40) #17
  %41 = add nuw nsw i64 %35, 1
  %42 = icmp eq i64 %41, %33
  br i1 %42, label %43, label %34, !llvm.loop !140

43:                                               ; preds = %34, %11
  %44 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %45 = load i32, ptr %44, align 4, !tbaa !43
  %46 = sitofp i32 %45 to float
  %47 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %48 = load i32, ptr %47, align 4, !tbaa !43
  %49 = sitofp i32 %48 to float
  %50 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef %7, float noundef %46, float noundef %49, ptr noundef nonnull %4, ptr noundef nonnull %50) #15
  call fastcc void @copy_v2_v2_int(ptr noundef nonnull %13, ptr noundef nonnull %44) #17
  %51 = getelementptr inbounds %struct.SlipData, ptr %13, i64 0, i32 1
  call fastcc void @copy_v2_v2(ptr noundef nonnull %51, ptr noundef nonnull %4) #17
  %52 = getelementptr inbounds %struct.SlipData, ptr %13, i64 0, i32 6
  store i8 0, ptr %52, align 4, !tbaa !141
  %53 = call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #15
  br label %54

54:                                               ; preds = %3, %43
  %55 = phi i32 [ 1, %43 ], [ 2, %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret i32 %55
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_slip_modal(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #1 !PGOFuncName !142 {
  %4 = alloca [2 x float], align 4
  %5 = alloca [40 x i8], align 16
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !134
  %9 = tail call ptr @CTX_wm_area(ptr noundef %0) #15
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %11 = load i16, ptr %10, align 8, !tbaa !143
  switch i16 %11, label %116 [
    i16 4, label %12
    i16 1, label %46
    i16 218, label %60
    i16 3, label %60
    i16 216, label %106
    i16 217, label %106
  ]

12:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %13 = tail call ptr @UI_view2d_fromcontext(ptr noundef %0) #15
  %14 = getelementptr inbounds %struct.SlipData, ptr %8, i64 0, i32 6
  %15 = load i8, ptr %14, align 4, !tbaa !141
  %16 = icmp eq i8 %15, 0
  %17 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %18 = load i32, ptr %17, align 4, !tbaa !43
  br i1 %16, label %27, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.SlipData, ptr %8, i64 0, i32 7
  %21 = load i32, ptr %20, align 8, !tbaa !146
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
  call void @UI_view2d_region_to_view(ptr noundef %13, float noundef %29, float noundef 0.000000e+00, ptr noundef nonnull %4, ptr noundef nonnull %30) #15
  %31 = load float, ptr %4, align 4, !tbaa !78
  %32 = getelementptr inbounds %struct.SlipData, ptr %8, i64 0, i32 1
  %33 = load float, ptr %32, align 8, !tbaa !78
  %34 = fsub float %31, %33
  %35 = fptosi float %34 to i32
  %36 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !114
  call void @RNA_int_set(ptr noundef %37, ptr noundef nonnull @.str.76, i32 noundef %35) #15
  %38 = icmp eq ptr %9, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #16
  %40 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 40, ptr noundef nonnull @.str.204, i32 noundef %35) #15
  call void @ED_area_headerprint(ptr noundef nonnull %9, ptr noundef nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #16
  br label %41

41:                                               ; preds = %39, %27
  %42 = call fastcc zeroext i8 @sequencer_slip_recursively(ptr noundef %6, ptr noundef nonnull %8, i32 noundef %35) #17, !range !96
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %6) #15
  br label %45

45:                                               ; preds = %44, %41
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  br label %116

46:                                               ; preds = %3
  %47 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  %48 = getelementptr inbounds %struct.SlipData, ptr %8, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !137
  tail call void %47(ptr noundef %49) #15
  %50 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  %51 = getelementptr inbounds %struct.SlipData, ptr %8, i64 0, i32 4
  %52 = load ptr, ptr %51, align 8, !tbaa !138
  tail call void %50(ptr noundef %52) #15
  %53 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  %54 = getelementptr inbounds %struct.SlipData, ptr %8, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !135
  tail call void %53(ptr noundef %55) #15
  %56 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  tail call void %56(ptr noundef %8) #15
  store ptr null, ptr %7, align 8, !tbaa !134
  %57 = icmp eq ptr %9, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %46
  tail call void @ED_area_headerprint(ptr noundef nonnull %9, ptr noundef null) #15
  br label %59

59:                                               ; preds = %58, %46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %6) #15
  br label %116

60:                                               ; preds = %3, %3
  %61 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %6, i8 noundef zeroext 0) #15
  %62 = getelementptr inbounds %struct.SlipData, ptr %8, i64 0, i32 5
  %63 = load i32, ptr %62, align 8, !tbaa !139
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %92

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.SlipData, ptr %8, i64 0, i32 2
  %67 = getelementptr inbounds %struct.SlipData, ptr %8, i64 0, i32 3
  br label %72

68:                                               ; preds = %72
  %69 = icmp sgt i32 %80, 0
  br i1 %69, label %70, label %92

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.SlipData, ptr %8, i64 0, i32 3
  br label %83

72:                                               ; preds = %65, %72
  %73 = phi i64 [ 0, %65 ], [ %79, %72 ]
  %74 = load ptr, ptr %66, align 8, !tbaa !135
  %75 = getelementptr inbounds %struct.TransSeq, ptr %74, i64 %73
  %76 = load ptr, ptr %67, align 8, !tbaa !137
  %77 = getelementptr inbounds ptr, ptr %76, i64 %73
  %78 = load ptr, ptr %77, align 8, !tbaa !75
  tail call fastcc void @transseq_restore(ptr noundef %75, ptr noundef %78) #17
  %79 = add nuw nsw i64 %73, 1
  %80 = load i32, ptr %62, align 8, !tbaa !139
  %81 = sext i32 %80 to i64
  %82 = icmp slt i64 %79, %81
  br i1 %82, label %72, label %68, !llvm.loop !147

83:                                               ; preds = %70, %83
  %84 = phi i64 [ 0, %70 ], [ %88, %83 ]
  %85 = load ptr, ptr %71, align 8, !tbaa !137
  %86 = getelementptr inbounds ptr, ptr %85, i64 %84
  %87 = load ptr, ptr %86, align 8, !tbaa !75
  tail call void @BKE_sequence_reload_new_file(ptr noundef %6, ptr noundef %87, i8 noundef zeroext 0) #15
  tail call void @BKE_sequence_calc(ptr noundef %6, ptr noundef %87) #15
  %88 = add nuw nsw i64 %84, 1
  %89 = load i32, ptr %62, align 8, !tbaa !139
  %90 = sext i32 %89 to i64
  %91 = icmp slt i64 %88, %90
  br i1 %91, label %83, label %92, !llvm.loop !148

92:                                               ; preds = %83, %60, %68
  %93 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  %94 = getelementptr inbounds %struct.SlipData, ptr %8, i64 0, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !137
  tail call void %93(ptr noundef %95) #15
  %96 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  %97 = getelementptr inbounds %struct.SlipData, ptr %8, i64 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !135
  tail call void %96(ptr noundef %98) #15
  %99 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  %100 = getelementptr inbounds %struct.SlipData, ptr %8, i64 0, i32 4
  %101 = load ptr, ptr %100, align 8, !tbaa !138
  tail call void %99(ptr noundef %101) #15
  %102 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  tail call void %102(ptr noundef nonnull %8) #15
  store ptr null, ptr %7, align 8, !tbaa !134
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %6) #15
  %103 = getelementptr inbounds %struct.Editing, ptr %61, i64 0, i32 1
  tail call void @BKE_sequencer_free_imbuf(ptr noundef %6, ptr noundef nonnull %103, i8 noundef zeroext 0) #15
  %104 = icmp eq ptr %9, null
  br i1 %104, label %116, label %105

105:                                              ; preds = %92
  tail call void @ED_area_headerprint(ptr noundef nonnull %9, ptr noundef null) #15
  br label %116

106:                                              ; preds = %3, %3
  %107 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %108 = load i16, ptr %107, align 2, !tbaa !149
  switch i16 %108, label %116 [
    i16 1, label %109
    i16 2, label %114
  ]

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.SlipData, ptr %8, i64 0, i32 6
  store i8 1, ptr %110, align 4, !tbaa !141
  %111 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %112 = load i32, ptr %111, align 4, !tbaa !43
  %113 = getelementptr inbounds %struct.SlipData, ptr %8, i64 0, i32 7
  store i32 %112, ptr %113, align 8, !tbaa !146
  br label %116

114:                                              ; preds = %106
  %115 = getelementptr inbounds %struct.SlipData, ptr %8, i64 0, i32 6
  store i8 0, ptr %115, align 4, !tbaa !141
  br label %116

116:                                              ; preds = %45, %114, %109, %3, %106, %92, %105, %59
  %117 = phi i32 [ 4, %59 ], [ 2, %105 ], [ 2, %92 ], [ 1, %106 ], [ 1, %3 ], [ 1, %109 ], [ 1, %114 ], [ 1, %45 ]
  ret i32 %117
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_slip_exec(ptr noundef %0, ptr nocapture noundef %1) #1 !PGOFuncName !150 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 0) #15
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !114
  %7 = tail call i32 @RNA_int_get(ptr noundef %6, ptr noundef nonnull @.str.76) #15
  %8 = load ptr, ptr %4, align 8, !tbaa !73
  %9 = tail call fastcc i32 @slip_count_sequences_rec(ptr noundef %8, i8 noundef zeroext 1) #17
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %54, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !75
  %13 = tail call ptr %12(i64 noundef 56, ptr noundef nonnull @.str.200) #15
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %13, ptr %14, align 8, !tbaa !134
  %15 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !75
  %16 = sext i32 %9 to i64
  %17 = mul nsw i64 %16, 44
  %18 = tail call ptr %15(i64 noundef %17, ptr noundef nonnull @.str.201) #15
  %19 = getelementptr inbounds %struct.SlipData, ptr %13, i64 0, i32 2
  store ptr %18, ptr %19, align 8, !tbaa !135
  %20 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !75
  %21 = shl nsw i64 %16, 3
  %22 = tail call ptr %20(i64 noundef %21, ptr noundef nonnull @.str.202) #15
  %23 = getelementptr inbounds %struct.SlipData, ptr %13, i64 0, i32 3
  store ptr %22, ptr %23, align 8, !tbaa !137
  %24 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !75
  %25 = tail call ptr %24(i64 noundef %16, ptr noundef nonnull @.str.203) #15
  %26 = getelementptr inbounds %struct.SlipData, ptr %13, i64 0, i32 4
  store ptr %25, ptr %26, align 8, !tbaa !138
  %27 = getelementptr inbounds %struct.SlipData, ptr %13, i64 0, i32 5
  store i32 %9, ptr %27, align 8, !tbaa !139
  %28 = load ptr, ptr %4, align 8, !tbaa !73
  %29 = load ptr, ptr %23, align 8, !tbaa !137
  %30 = tail call fastcc i32 @slip_add_sequences_rec(ptr noundef %28, ptr noundef %29, ptr noundef %25, i32 noundef 0, i8 noundef zeroext 1) #17
  %31 = icmp sgt i32 %9, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %11
  %33 = zext nneg i32 %9 to i64
  br label %34

34:                                               ; preds = %32, %34
  %35 = phi i64 [ 0, %32 ], [ %41, %34 ]
  %36 = load ptr, ptr %19, align 8, !tbaa !135
  %37 = getelementptr inbounds %struct.TransSeq, ptr %36, i64 %35
  %38 = load ptr, ptr %23, align 8, !tbaa !137
  %39 = getelementptr inbounds ptr, ptr %38, i64 %35
  %40 = load ptr, ptr %39, align 8, !tbaa !75
  tail call fastcc void @transseq_backup(ptr noundef %37, ptr noundef %40) #17
  %41 = add nuw nsw i64 %35, 1
  %42 = icmp eq i64 %41, %33
  br i1 %42, label %43, label %34, !llvm.loop !151

43:                                               ; preds = %34, %11
  %44 = tail call fastcc zeroext i8 @sequencer_slip_recursively(ptr noundef %3, ptr noundef nonnull %13, i32 noundef %7) #17, !range !96
  %45 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  %46 = load ptr, ptr %23, align 8, !tbaa !137
  tail call void %45(ptr noundef %46) #15
  %47 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  %48 = load ptr, ptr %26, align 8, !tbaa !138
  tail call void %47(ptr noundef %48) #15
  %49 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  %50 = load ptr, ptr %19, align 8, !tbaa !135
  tail call void %49(ptr noundef %50) #15
  %51 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  tail call void %51(ptr noundef nonnull %13) #15
  %52 = icmp eq i8 %44, 0
  %53 = select i1 %52, i32 2, i32 4
  br label %54

54:                                               ; preds = %43, %2
  %55 = phi i32 [ 2, %2 ], [ %53, %43 ]
  ret i32 %55
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SEQUENCER_OT_mute(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.79, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.80, ptr %2, align 8, !tbaa !107
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.81, ptr %3, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_mute_exec, ptr %4, align 8, !tbaa !109
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %5, align 8, !tbaa !110
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !111
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !112
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.82, i32 noundef 0, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.84) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_mute_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !152 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 0) #15
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !114
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.82) #15
  %8 = icmp eq i32 %7, 0
  %9 = load ptr, ptr %4, align 8, !tbaa !73
  %10 = load ptr, ptr %9, align 8, !tbaa !75
  %11 = icmp eq ptr %10, null
  br i1 %11, label %28, label %12

12:                                               ; preds = %2, %25
  %13 = phi ptr [ %26, %25 ], [ %10, %2 ]
  %14 = getelementptr inbounds %struct.Sequence, ptr %13, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !79
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
  store i32 %24, ptr %14, align 8, !tbaa !79
  tail call void @BKE_sequence_invalidate_dependent(ptr noundef %3, ptr noundef nonnull %13) #15
  br label %25

25:                                               ; preds = %23, %12, %22, %21
  %26 = load ptr, ptr %13, align 8, !tbaa !75
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %12, !llvm.loop !153

28:                                               ; preds = %25, %2
  tail call void @BKE_sequencer_update_muting(ptr noundef nonnull %4) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %3) #15
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SEQUENCER_OT_unmute(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.85, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.86, ptr %2, align 8, !tbaa !107
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.87, ptr %3, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_unmute_exec, ptr %4, align 8, !tbaa !109
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %5, align 8, !tbaa !110
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !111
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !112
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.82, i32 noundef 0, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.88) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_unmute_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !154 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 0) #15
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !114
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.82) #15
  %8 = icmp eq i32 %7, 0
  %9 = load ptr, ptr %4, align 8, !tbaa !73
  %10 = load ptr, ptr %9, align 8, !tbaa !75
  %11 = icmp eq ptr %10, null
  br i1 %11, label %29, label %12

12:                                               ; preds = %2, %26
  %13 = phi ptr [ %27, %26 ], [ %10, %2 ]
  %14 = getelementptr inbounds %struct.Sequence, ptr %13, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !79
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
  store i32 %25, ptr %14, align 8, !tbaa !79
  tail call void @BKE_sequence_invalidate_dependent(ptr noundef %3, ptr noundef nonnull %13) #15
  br label %26

26:                                               ; preds = %23, %12, %22, %21
  %27 = load ptr, ptr %13, align 8, !tbaa !75
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %12, !llvm.loop !155

29:                                               ; preds = %26, %2
  tail call void @BKE_sequencer_update_muting(ptr noundef nonnull %4) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %3) #15
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @SEQUENCER_OT_lock(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.89, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.90, ptr %2, align 8, !tbaa !107
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.91, ptr %3, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_lock_exec, ptr %4, align 8, !tbaa !109
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %5, align 8, !tbaa !110
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !111
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_lock_exec(ptr noundef %0, ptr nocapture readnone %1) #1 !PGOFuncName !156 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 0) #15
  %5 = load ptr, ptr %4, align 8, !tbaa !73
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %2, %16
  %9 = phi ptr [ %17, %16 ], [ %6, %2 ]
  %10 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !79
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = or i32 %11, 16384
  store i32 %15, ptr %10, align 8, !tbaa !79
  br label %16

16:                                               ; preds = %8, %14
  %17 = load ptr, ptr %9, align 8, !tbaa !75
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %8, !llvm.loop !157

19:                                               ; preds = %16, %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %3) #15
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @SEQUENCER_OT_unlock(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.92, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.93, ptr %2, align 8, !tbaa !107
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.94, ptr %3, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_unlock_exec, ptr %4, align 8, !tbaa !109
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %5, align 8, !tbaa !110
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !111
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_unlock_exec(ptr noundef %0, ptr nocapture readnone %1) #1 !PGOFuncName !158 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 0) #15
  %5 = load ptr, ptr %4, align 8, !tbaa !73
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %2, %16
  %9 = phi ptr [ %17, %16 ], [ %6, %2 ]
  %10 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !79
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = and i32 %11, -16385
  store i32 %15, ptr %10, align 8, !tbaa !79
  br label %16

16:                                               ; preds = %8, %14
  %17 = load ptr, ptr %9, align 8, !tbaa !75
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %8, !llvm.loop !159

19:                                               ; preds = %16, %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %3) #15
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SEQUENCER_OT_reload(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.95, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.96, ptr %2, align 8, !tbaa !107
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.97, ptr %3, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_reload_exec, ptr %4, align 8, !tbaa !109
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %5, align 8, !tbaa !110
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %6, align 8, !tbaa !111
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !112
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.98, i32 noundef 0, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.100) #15
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268435456) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_reload_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !160 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 0) #15
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !114
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.98) #15
  %8 = load ptr, ptr %4, align 8, !tbaa !73
  %9 = load ptr, ptr %8, align 8, !tbaa !75
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
  %18 = load i32, ptr %17, align 8, !tbaa !79
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %15
  tail call void @BKE_sequencer_update_changed_seq_and_deps(ptr noundef %3, ptr noundef nonnull %16, i32 noundef 0, i32 noundef 1) #15
  tail call void @BKE_sequence_reload_new_file(ptr noundef %3, ptr noundef nonnull %16, i8 noundef zeroext %14) #15
  br i1 %13, label %29, label %22

22:                                               ; preds = %21
  %23 = load ptr, ptr %4, align 8, !tbaa !73
  %24 = tail call zeroext i8 @BKE_sequence_test_overlap(ptr noundef %23, ptr noundef nonnull %16) #15
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %4, align 8, !tbaa !73
  %28 = tail call zeroext i8 @BKE_sequence_base_shuffle(ptr noundef %27, ptr noundef nonnull %16, ptr noundef %3) #15
  br label %29

29:                                               ; preds = %15, %22, %26, %21
  %30 = load ptr, ptr %16, align 8, !tbaa !75
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %15, !llvm.loop !161

32:                                               ; preds = %29, %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %3) #15
  ret i32 4
}

; Function Attrs: optsize
declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @SEQUENCER_OT_refresh_all(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.101, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.102, ptr %2, align 8, !tbaa !107
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.103, ptr %3, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_refresh_all_exec, ptr %4, align 8, !tbaa !109
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %5, align 8, !tbaa !110
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_refresh_all_exec(ptr noundef %0, ptr nocapture readnone %1) #1 !PGOFuncName !162 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 0) #15
  %5 = getelementptr inbounds %struct.Editing, ptr %4, i64 0, i32 1
  tail call void @BKE_sequencer_free_imbuf(ptr noundef %3, ptr noundef nonnull %5, i8 noundef zeroext 0) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %3) #15
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @SEQUENCER_OT_reassign_inputs(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.104, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.105, ptr %2, align 8, !tbaa !107
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.106, ptr %3, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_reassign_inputs_exec, ptr %4, align 8, !tbaa !109
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_effect_poll, ptr %5, align 8, !tbaa !110
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !111
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_reassign_inputs_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !163 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %8 = tail call ptr @BKE_sequencer_active_get(ptr noundef %7) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %9 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !102
  %11 = call i32 @seq_effect_find_selected(ptr noundef %7, ptr noundef %8, i32 noundef %10, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #17, !range !95
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !164
  %16 = load ptr, ptr %6, align 8, !tbaa !75
  tail call void @BKE_report(ptr noundef %15, i32 noundef 32, ptr noundef %16) #15
  br label %36

17:                                               ; preds = %2
  %18 = load ptr, ptr %3, align 8, !tbaa !75
  %19 = tail call fastcc zeroext i8 @seq_is_predecessor(ptr noundef %18, ptr noundef nonnull %8) #17, !range !96
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load ptr, ptr %4, align 8, !tbaa !75
  %23 = tail call fastcc zeroext i8 @seq_is_predecessor(ptr noundef %22, ptr noundef nonnull %8) #17, !range !96
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load ptr, ptr %5, align 8, !tbaa !75
  %27 = tail call fastcc zeroext i8 @seq_is_predecessor(ptr noundef %26, ptr noundef nonnull %8) #17, !range !96
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25, %21, %17
  %30 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %31 = load ptr, ptr %30, align 8, !tbaa !164
  tail call void @BKE_report(ptr noundef %31, i32 noundef 32, ptr noundef nonnull @.str.205) #15
  br label %36

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 33
  store ptr %18, ptr %33, align 8, !tbaa !128
  %34 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 34
  store ptr %22, ptr %34, align 8, !tbaa !129
  %35 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 35
  store ptr %26, ptr %35, align 8, !tbaa !130
  tail call void @BKE_sequencer_update_changed_seq_and_deps(ptr noundef %7, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 1) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %7) #15
  br label %36

36:                                               ; preds = %32, %29, %13
  %37 = phi i32 [ 2, %29 ], [ 4, %32 ], [ 2, %13 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret i32 %37
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_effect_poll(ptr noundef %0) #1 !PGOFuncName !165 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %3 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %2, i8 noundef zeroext 0) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @BKE_sequencer_active_get(ptr noundef %2) #15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.Sequence, ptr %6, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !102
  %11 = and i32 %10, 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %5
  br label %14

14:                                               ; preds = %1, %13, %8
  %15 = phi i32 [ 1, %8 ], [ 0, %13 ], [ 0, %1 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @SEQUENCER_OT_swap_inputs(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.107, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.108, ptr %2, align 8, !tbaa !107
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.109, ptr %3, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_swap_inputs_exec, ptr %4, align 8, !tbaa !109
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_effect_poll, ptr %5, align 8, !tbaa !110
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !111
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_swap_inputs_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !166 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %4 = tail call ptr @BKE_sequencer_active_get(ptr noundef %3) #15
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 33
  %6 = load ptr, ptr %5, align 8, !tbaa !128
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 34
  %10 = load ptr, ptr %9, align 8, !tbaa !129
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %8, %2
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !164
  tail call void @BKE_report(ptr noundef %14, i32 noundef 32, ptr noundef nonnull @.str.206) #15
  br label %16

15:                                               ; preds = %8
  store ptr %10, ptr %5, align 8, !tbaa !128
  store ptr %6, ptr %9, align 8, !tbaa !129
  tail call void @BKE_sequencer_update_changed_seq_and_deps(ptr noundef %3, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 1) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %3) #15
  br label %16

16:                                               ; preds = %15, %12
  %17 = phi i32 [ 2, %12 ], [ 4, %15 ]
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SEQUENCER_OT_cut(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.110, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.111, ptr %2, align 8, !tbaa !107
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.112, ptr %3, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sequencer_cut_invoke, ptr %4, align 8, !tbaa !122
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_cut_exec, ptr %5, align 8, !tbaa !109
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %6, align 8, !tbaa !110
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !111
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !112
  %10 = tail call ptr @RNA_def_int(ptr noundef %9, ptr noundef nonnull @.str.71, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.113, i32 noundef -2147483648, i32 noundef 2147483647) #15
  %11 = load ptr, ptr %8, align 8, !tbaa !112
  %12 = tail call ptr @RNA_def_enum(ptr noundef %11, ptr noundef nonnull @.str.114, ptr noundef nonnull @prop_cut_types, i32 noundef 0, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.116) #15
  %13 = load ptr, ptr %8, align 8, !tbaa !112
  %14 = tail call ptr @RNA_def_enum(ptr noundef %13, ptr noundef nonnull @.str.117, ptr noundef nonnull @prop_side_types, i32 noundef 3, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.119) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_cut_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #1 !PGOFuncName !167 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %5 = tail call ptr @UI_view2d_fromcontext(ptr noundef %0) #15
  %6 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !116
  %8 = tail call i32 @ED_operator_sequencer_active(ptr noundef %0) #15
  %9 = icmp ne i32 %8, 0
  %10 = icmp ne ptr %5, null
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %14 = load i32, ptr %13, align 4, !tbaa !43
  %15 = trunc i32 %14 to i16
  %16 = tail call fastcc i32 @mouse_frame_side(ptr noundef nonnull %5, i16 noundef signext %15, i32 noundef %7) #17, !range !168
  br label %17

17:                                               ; preds = %12, %3
  %18 = phi i32 [ %16, %12 ], [ 3, %3 ]
  %19 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !114
  tail call void @RNA_int_set(ptr noundef %20, ptr noundef nonnull @.str.71, i32 noundef %7) #15
  %21 = load ptr, ptr %19, align 8, !tbaa !114
  tail call void @RNA_enum_set(ptr noundef %21, ptr noundef nonnull @.str.117, i32 noundef %18) #15
  %22 = tail call i32 @sequencer_cut_exec(ptr noundef %0, ptr noundef %1) #17, !range !169
  ret i32 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_cut_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !170 {
  %3 = alloca %struct.SeqIterator, align 8
  %4 = alloca %struct.SeqIterator, align 8
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %6 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %5, i8 noundef zeroext 0) #15
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !114
  %9 = tail call i32 @RNA_int_get(ptr noundef %8, ptr noundef nonnull @.str.71) #15
  %10 = load ptr, ptr %7, align 8, !tbaa !114
  %11 = tail call i32 @RNA_enum_get(ptr noundef %10, ptr noundef nonnull @.str.114) #15
  %12 = load ptr, ptr %7, align 8, !tbaa !114
  %13 = tail call i32 @RNA_enum_get(ptr noundef %12, ptr noundef nonnull @.str.117) #15
  %14 = icmp eq i32 %11, 1
  %15 = load ptr, ptr %6, align 8, !tbaa !73
  %16 = select i1 %14, ptr @cut_seq_hard, ptr @cut_seq_soft
  %17 = tail call fastcc zeroext i8 @cut_seq_list(ptr noundef %5, ptr noundef %15, i32 noundef %9, ptr noundef nonnull %16) #17, !range !96
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %70, label %19

19:                                               ; preds = %2
  %20 = icmp eq i32 %13, 3
  br i1 %20, label %46, label %21

21:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  call void @BKE_sequence_iterator_begin(ptr noundef nonnull %6, ptr noundef nonnull %3, i8 noundef zeroext 1) #15
  %22 = getelementptr inbounds %struct.SeqIterator, ptr %3, i64 0, i32 4
  %23 = load i32, ptr %22, align 8, !tbaa !89
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %45, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.SeqIterator, ptr %3, i64 0, i32 3
  %27 = icmp eq i32 %13, 1
  br label %28

28:                                               ; preds = %25, %42
  %29 = load ptr, ptr %26, align 8, !tbaa !91
  br i1 %27, label %30, label %34

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.Sequence, ptr %29, i64 0, i32 15
  %32 = load i32, ptr %31, align 8, !tbaa !80
  %33 = icmp slt i32 %32, %9
  br i1 %33, label %42, label %38

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.Sequence, ptr %29, i64 0, i32 16
  %36 = load i32, ptr %35, align 4, !tbaa !51
  %37 = icmp sgt i32 %36, %9
  br i1 %37, label %42, label %38

38:                                               ; preds = %34, %30
  %39 = getelementptr inbounds %struct.Sequence, ptr %29, i64 0, i32 5
  %40 = load i32, ptr %39, align 8, !tbaa !79
  %41 = and i32 %40, -8
  store i32 %41, ptr %39, align 8, !tbaa !79
  br label %42

42:                                               ; preds = %38, %30, %34
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %3) #15
  %43 = load i32, ptr %22, align 8, !tbaa !89
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %28, !llvm.loop !171

45:                                               ; preds = %42, %21
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  br label %46

46:                                               ; preds = %45, %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #16
  call void @BKE_sequence_iterator_begin(ptr noundef nonnull %6, ptr noundef nonnull %4, i8 noundef zeroext 1) #15
  %47 = getelementptr inbounds %struct.SeqIterator, ptr %4, i64 0, i32 4
  %48 = load i32, ptr %47, align 8, !tbaa !89
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %69, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.SeqIterator, ptr %4, i64 0, i32 3
  br label %52

52:                                               ; preds = %50, %66
  %53 = load ptr, ptr %51, align 8, !tbaa !91
  %54 = getelementptr inbounds %struct.Sequence, ptr %53, i64 0, i32 33
  %55 = load ptr, ptr %54, align 8, !tbaa !128
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.Sequence, ptr %53, i64 0, i32 34
  %59 = load ptr, ptr %58, align 8, !tbaa !129
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.Sequence, ptr %53, i64 0, i32 35
  %63 = load ptr, ptr %62, align 8, !tbaa !130
  %64 = icmp eq ptr %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %61, %57, %52
  call void @BKE_sequence_calc(ptr noundef %5, ptr noundef nonnull %53) #15
  br label %66

66:                                               ; preds = %61, %65
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %4) #15
  %67 = load i32, ptr %47, align 8, !tbaa !89
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %52, !llvm.loop !172

69:                                               ; preds = %66, %46
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #16
  call void @BKE_sequencer_sort(ptr noundef %5) #15
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %5) #15
  br label %70

70:                                               ; preds = %2, %69
  %71 = phi i32 [ 4, %69 ], [ 2, %2 ]
  ret i32 %71
}

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SEQUENCER_OT_duplicate(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.120, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.121, ptr %2, align 8, !tbaa !107
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.122, ptr %3, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_add_duplicate_exec, ptr %4, align 8, !tbaa !109
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sequencer_active, ptr %5, align 8, !tbaa !110
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !111
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !112
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.123, ptr noundef nonnull @transform_mode_types, i32 noundef 1, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.40) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_add_duplicate_exec(ptr noundef %0, ptr nocapture readnone %1) #1 !PGOFuncName !173 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %5 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %4, i8 noundef zeroext 0) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !tbaa !73
  call void @BKE_sequence_base_dupli_recursive(ptr noundef %4, ptr noundef null, ptr noundef nonnull %3, ptr noundef %8, i32 noundef 2) #15
  %9 = load ptr, ptr %3, align 8, !tbaa !174
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %5, align 8, !tbaa !73
  call void @BLI_movelisttolist(ptr noundef %12, ptr noundef nonnull %3) #15
  br label %13

13:                                               ; preds = %11, %13
  %14 = phi ptr [ %9, %11 ], [ %16, %13 ]
  %15 = call i32 @BKE_sequencer_recursive_apply(ptr noundef nonnull %14, ptr noundef nonnull @apply_unique_name_cb, ptr noundef %4) #15
  %16 = load ptr, ptr %14, align 8, !tbaa !175
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %13, !llvm.loop !176

18:                                               ; preds = %13
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %4) #15
  br label %19

19:                                               ; preds = %7, %2, %18
  %20 = phi i32 [ 4, %18 ], [ 2, %2 ], [ 2, %7 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  ret i32 %20
}

; Function Attrs: optsize
declare i32 @ED_operator_sequencer_active(ptr noundef) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @SEQUENCER_OT_delete(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.125, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.126, ptr %2, align 8, !tbaa !107
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.127, ptr %3, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sequencer_delete_invoke, ptr %4, align 8, !tbaa !122
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_delete_exec, ptr %5, align 8, !tbaa !109
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %6, align 8, !tbaa !110
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !111
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @sequencer_delete_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 !PGOFuncName !177 {
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #15
  %5 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 8
  %6 = load i16, ptr %5, align 2, !tbaa !178
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %10 = load i32, ptr %9, align 4, !tbaa !43
  %11 = icmp slt i32 %10, 31
  br i1 %11, label %14, label %12

12:                                               ; preds = %8, %3
  %13 = tail call i32 @WM_operator_confirm(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  br label %14

14:                                               ; preds = %8, %12
  %15 = phi i32 [ %13, %12 ], [ 8, %8 ]
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_delete_exec(ptr noundef %0, ptr nocapture readnone %1) #1 !PGOFuncName !180 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 0) #15
  %5 = tail call ptr @BKE_sequencer_active_get(ptr noundef %3) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !79
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %4, align 8, !tbaa !73
  br label %25

14:                                               ; preds = %7, %2
  %15 = load ptr, ptr %4, align 8, !tbaa !73
  br label %16

16:                                               ; preds = %20, %14
  %17 = phi ptr [ %15, %14 ], [ %18, %20 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !75
  %19 = icmp eq ptr %18, null
  br i1 %19, label %69, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.Sequence, ptr %18, i64 0, i32 5
  %22 = load i32, ptr %21, align 8, !tbaa !79
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %16, label %25, !llvm.loop !181

25:                                               ; preds = %20, %12
  %26 = phi ptr [ %13, %12 ], [ %15, %20 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !75
  %28 = icmp eq ptr %27, null
  br i1 %28, label %48, label %29

29:                                               ; preds = %25, %43
  %30 = phi ptr [ %44, %43 ], [ %27, %25 ]
  %31 = getelementptr inbounds %struct.Sequence, ptr %30, i64 0, i32 5
  %32 = load i32, ptr %31, align 8, !tbaa !79
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.Sequence, ptr %30, i64 0, i32 6
  %37 = load i32, ptr %36, align 4, !tbaa !102
  %38 = and i32 %37, 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = tail call fastcc ptr @del_seq_find_replace_recurs(ptr noundef %3, ptr noundef nonnull %30) #17
  br label %43

42:                                               ; preds = %29
  tail call fastcc void @del_seq_clear_modifiers_recurs(ptr noundef %3, ptr noundef nonnull %30) #17
  br label %43

43:                                               ; preds = %42, %40, %35
  %44 = load ptr, ptr %30, align 8, !tbaa !75
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %29, !llvm.loop !182

46:                                               ; preds = %43
  %47 = load ptr, ptr %4, align 8, !tbaa !73
  br label %48

48:                                               ; preds = %46, %25
  %49 = phi ptr [ %47, %46 ], [ %26, %25 ]
  tail call fastcc void @recurs_del_seq_flag(ptr noundef %3, ptr noundef %49, i16 noundef signext 1, i16 noundef signext 0) #17
  %50 = load ptr, ptr %4, align 8, !tbaa !73
  %51 = load ptr, ptr %50, align 8, !tbaa !75
  %52 = icmp eq ptr %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %48, %53
  %54 = phi ptr [ %55, %53 ], [ %51, %48 ]
  tail call void @BKE_sequence_calc(ptr noundef %3, ptr noundef nonnull %54) #15
  %55 = load ptr, ptr %54, align 8, !tbaa !75
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %53, !llvm.loop !183

57:                                               ; preds = %53, %48
  %58 = getelementptr inbounds %struct.Editing, ptr %4, i64 0, i32 2, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !75
  %60 = icmp eq ptr %59, null
  br i1 %60, label %68, label %61

61:                                               ; preds = %57, %61
  %62 = phi ptr [ %66, %61 ], [ %59, %57 ]
  %63 = getelementptr inbounds %struct.MetaStack, ptr %62, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !184
  tail call void @BKE_sequence_calc(ptr noundef %3, ptr noundef %64) #15
  %65 = getelementptr inbounds %struct.MetaStack, ptr %62, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !75
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %61, !llvm.loop !186

68:                                               ; preds = %61, %57
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %3) #15
  br label %69

69:                                               ; preds = %16, %68
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @SEQUENCER_OT_offset_clear(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.128, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.129, ptr %2, align 8, !tbaa !107
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.130, ptr %3, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_offset_clear_exec, ptr %4, align 8, !tbaa !109
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %5, align 8, !tbaa !110
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !111
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_offset_clear_exec(ptr noundef %0, ptr nocapture readnone %1) #1 !PGOFuncName !187 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 0) #15
  %5 = load ptr, ptr %4, align 8, !tbaa !73
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = icmp eq ptr %6, null
  br i1 %7, label %54, label %9

8:                                                ; preds = %22
  br i1 %7, label %54, label %25

9:                                                ; preds = %2, %22
  %10 = phi ptr [ %23, %22 ], [ %6, %2 ]
  %11 = getelementptr inbounds %struct.Sequence, ptr %10, i64 0, i32 6
  %12 = load i32, ptr %11, align 4, !tbaa !102
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.Sequence, ptr %10, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !79
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.Sequence, ptr %10, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  br label %22

22:                                               ; preds = %9, %15, %20
  %23 = load ptr, ptr %10, align 8, !tbaa !75
  %24 = icmp eq ptr %23, null
  br i1 %24, label %8, label %9, !llvm.loop !188

25:                                               ; preds = %8, %25
  %26 = phi ptr [ %27, %25 ], [ %6, %8 ]
  tail call void @BKE_sequence_calc(ptr noundef %3, ptr noundef nonnull %26) #15
  %27 = load ptr, ptr %26, align 8, !tbaa !75
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %25, !llvm.loop !189

29:                                               ; preds = %25
  %30 = load ptr, ptr %4, align 8, !tbaa !73
  %31 = load ptr, ptr %30, align 8, !tbaa !75
  %32 = icmp eq ptr %31, null
  br i1 %32, label %54, label %33

33:                                               ; preds = %29, %51
  %34 = phi ptr [ %52, %51 ], [ %31, %29 ]
  %35 = getelementptr inbounds %struct.Sequence, ptr %34, i64 0, i32 6
  %36 = load i32, ptr %35, align 4, !tbaa !102
  %37 = and i32 %36, 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.Sequence, ptr %34, i64 0, i32 5
  %41 = load i32, ptr %40, align 8, !tbaa !79
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %39
  %45 = load ptr, ptr %4, align 8, !tbaa !73
  %46 = tail call zeroext i8 @BKE_sequence_test_overlap(ptr noundef %45, ptr noundef nonnull %34) #15
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %4, align 8, !tbaa !73
  %50 = tail call zeroext i8 @BKE_sequence_base_shuffle(ptr noundef %49, ptr noundef nonnull %34, ptr noundef %3) #15
  br label %51

51:                                               ; preds = %33, %39, %48, %44
  %52 = load ptr, ptr %34, align 8, !tbaa !75
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %33, !llvm.loop !190

54:                                               ; preds = %51, %2, %8, %29
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %3) #15
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SEQUENCER_OT_images_separate(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.131, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.132, ptr %2, align 8, !tbaa !107
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.133, ptr %3, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_separate_images_exec, ptr %4, align 8, !tbaa !109
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_operator_props_popup, ptr %5, align 8, !tbaa !122
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %6, align 8, !tbaa !110
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !111
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !112
  %10 = tail call ptr @RNA_def_int(ptr noundef %9, ptr noundef nonnull @.str.134, i32 noundef 1, i32 noundef 1, i32 noundef 2147483647, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.136, i32 noundef 1, i32 noundef 1000) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_separate_images_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !191 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 0) #15
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !114
  %7 = tail call i32 @RNA_int_get(ptr noundef %6, ptr noundef nonnull @.str.134) #15
  %8 = load ptr, ptr %4, align 8, !tbaa !73
  %9 = load ptr, ptr %8, align 8, !tbaa !174
  %10 = icmp eq ptr %9, null
  br i1 %10, label %72, label %11

11:                                               ; preds = %2
  %12 = add nsw i32 %7, -1
  %13 = icmp sgt i32 %7, 1
  br label %14

14:                                               ; preds = %11, %69
  %15 = phi ptr [ %9, %11 ], [ %70, %69 ]
  %16 = getelementptr inbounds %struct.Sequence, ptr %15, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !79
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %67, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.Sequence, ptr %15, i64 0, i32 6
  %22 = load i32, ptr %21, align 4, !tbaa !102
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %67

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.Sequence, ptr %15, i64 0, i32 7
  %26 = load i32, ptr %25, align 8, !tbaa !50
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %67

28:                                               ; preds = %24
  %29 = load ptr, ptr %4, align 8, !tbaa !73
  tail call void @BLI_remlink(ptr noundef %29, ptr noundef nonnull %15) #15
  %30 = tail call i32 @BKE_sequence_tx_get_final_left(ptr noundef nonnull %15, i8 noundef zeroext 0) #15
  %31 = tail call i32 @BKE_sequence_tx_get_final_right(ptr noundef nonnull %15, i8 noundef zeroext 0) #15
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %65

33:                                               ; preds = %28, %61
  %34 = phi i32 [ %63, %61 ], [ %30, %28 ]
  %35 = phi i32 [ %62, %61 ], [ %30, %28 ]
  %36 = tail call ptr @BKE_sequencer_give_stripelem(ptr noundef nonnull %15, i32 noundef %35) #15
  %37 = tail call ptr @BKE_sequence_dupli_recursive(ptr noundef %3, ptr noundef %3, ptr noundef nonnull %15, i32 noundef 1) #15
  %38 = load ptr, ptr %4, align 8, !tbaa !73
  tail call void @BLI_addtail(ptr noundef %38, ptr noundef %37) #15
  %39 = getelementptr inbounds %struct.Sequence, ptr %37, i64 0, i32 8
  store i32 %34, ptr %39, align 4, !tbaa !49
  %40 = getelementptr inbounds %struct.Sequence, ptr %37, i64 0, i32 6
  store i32 0, ptr %40, align 4, !tbaa !102
  %41 = getelementptr inbounds %struct.Sequence, ptr %37, i64 0, i32 7
  store i32 1, ptr %41, align 8, !tbaa !50
  %42 = getelementptr inbounds %struct.Sequence, ptr %37, i64 0, i32 12
  store i32 %12, ptr %42, align 4, !tbaa !48
  %43 = getelementptr inbounds %struct.Sequence, ptr %37, i64 0, i32 24
  %44 = load ptr, ptr %43, align 8, !tbaa !192
  %45 = getelementptr inbounds %struct.Strip, ptr %44, i64 0, i32 2
  store i32 1, ptr %45, align 8, !tbaa !193
  %46 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !75
  %47 = getelementptr inbounds %struct.Strip, ptr %44, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !195
  %49 = tail call ptr %46(ptr noundef %48, i64 noundef 264, ptr noundef nonnull @__func__.sequencer_separate_images_exec) #15
  %50 = tail call ptr @BLI_strncpy(ptr noundef %49, ptr noundef %36, i64 noundef 256) #15
  store ptr %49, ptr %47, align 8, !tbaa !195
  tail call void @BKE_sequence_calc(ptr noundef %3, ptr noundef %37) #15
  br i1 %13, label %51, label %61

51:                                               ; preds = %33
  %52 = getelementptr inbounds %struct.Sequence, ptr %37, i64 0, i32 5
  %53 = load i32, ptr %52, align 8, !tbaa !79
  %54 = and i32 %53, -9
  store i32 %54, ptr %52, align 8, !tbaa !79
  %55 = load ptr, ptr %4, align 8, !tbaa !73
  %56 = tail call zeroext i8 @BKE_sequence_test_overlap(ptr noundef %55, ptr noundef nonnull %37) #15
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %51
  %59 = load ptr, ptr %4, align 8, !tbaa !73
  %60 = tail call zeroext i8 @BKE_sequence_base_shuffle(ptr noundef %59, ptr noundef nonnull %37, ptr noundef %3) #15
  br label %61

61:                                               ; preds = %51, %58, %33
  %62 = add i32 %35, 1
  %63 = add nsw i32 %34, %7
  %64 = icmp eq i32 %62, %31
  br i1 %64, label %65, label %33, !llvm.loop !196

65:                                               ; preds = %61, %28
  %66 = load ptr, ptr %15, align 8, !tbaa !175
  tail call void @BKE_sequence_free(ptr noundef %3, ptr noundef nonnull %15) #15
  br label %69

67:                                               ; preds = %24, %20, %14
  %68 = load ptr, ptr %15, align 8, !tbaa !175
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi ptr [ %66, %65 ], [ %68, %67 ]
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %14, !llvm.loop !197

72:                                               ; preds = %69, %2
  tail call void @BKE_sequencer_sort(ptr noundef %3) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %3) #15
  ret i32 4
}

; Function Attrs: optsize
declare i32 @WM_operator_props_popup(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @SEQUENCER_OT_meta_toggle(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.137, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.138, ptr %2, align 8, !tbaa !107
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.139, ptr %3, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_meta_toggle_exec, ptr %4, align 8, !tbaa !109
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %5, align 8, !tbaa !110
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !111
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_meta_toggle_exec(ptr noundef %0, ptr nocapture readnone %1) #1 !PGOFuncName !198 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 0) #15
  %5 = tail call ptr @BKE_sequencer_active_get(ptr noundef %3) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !102
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %26

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !79
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !75
  %18 = tail call ptr %17(i64 noundef 40, ptr noundef nonnull @.str.211) #15
  %19 = getelementptr inbounds %struct.Editing, ptr %4, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %19, ptr noundef %18) #15
  %20 = getelementptr inbounds %struct.MetaStack, ptr %18, i64 0, i32 3
  store ptr %5, ptr %20, align 8, !tbaa !184
  %21 = load ptr, ptr %4, align 8, !tbaa !73
  %22 = getelementptr inbounds %struct.MetaStack, ptr %18, i64 0, i32 2
  store ptr %21, ptr %22, align 8, !tbaa !199
  %23 = getelementptr inbounds %struct.MetaStack, ptr %18, i64 0, i32 4
  %24 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 15
  tail call fastcc void @copy_v2_v2_int(ptr noundef nonnull %23, ptr noundef nonnull %24) #17
  %25 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 36
  store ptr %25, ptr %4, align 8, !tbaa !73
  tail call void @BKE_sequencer_active_set(ptr noundef %3, ptr noundef null) #15
  br label %66

26:                                               ; preds = %11, %7, %2
  %27 = getelementptr inbounds %struct.Editing, ptr %4, i64 0, i32 2
  %28 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %27) #17, !range !96
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %67

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.Editing, ptr %4, i64 0, i32 2, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !200
  tail call void @BLI_remlink(ptr noundef nonnull %27, ptr noundef %32) #15
  %33 = getelementptr inbounds %struct.MetaStack, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !199
  store ptr %34, ptr %4, align 8, !tbaa !73
  %35 = getelementptr inbounds %struct.MetaStack, ptr %32, i64 0, i32 4
  %36 = load i32, ptr %35, align 8, !tbaa !43
  %37 = getelementptr inbounds %struct.MetaStack, ptr %32, i64 0, i32 4, i64 1
  %38 = load i32, ptr %37, align 4, !tbaa !43
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.MetaStack, ptr %32, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !184
  %43 = getelementptr inbounds %struct.Sequence, ptr %42, i64 0, i32 15
  tail call fastcc void @copy_v2_v2_int(ptr noundef nonnull %35, ptr noundef nonnull %43) #17
  %44 = load ptr, ptr %4, align 8, !tbaa !73
  br label %45

45:                                               ; preds = %40, %30
  %46 = phi ptr [ %44, %40 ], [ %34, %30 ]
  %47 = load ptr, ptr %46, align 8, !tbaa !75
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %45, %49
  %50 = phi ptr [ %51, %49 ], [ %47, %45 ]
  tail call void @BKE_sequence_calc(ptr noundef %3, ptr noundef nonnull %50) #15
  %51 = load ptr, ptr %50, align 8, !tbaa !75
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %49, !llvm.loop !201

53:                                               ; preds = %49, %45
  %54 = getelementptr inbounds %struct.MetaStack, ptr %32, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !184
  %56 = load i32, ptr %35, align 8, !tbaa !43
  tail call void @BKE_sequence_tx_set_final_left(ptr noundef %55, i32 noundef %56) #15
  %57 = load ptr, ptr %54, align 8, !tbaa !184
  %58 = load i32, ptr %37, align 4, !tbaa !43
  tail call void @BKE_sequence_tx_set_final_right(ptr noundef %57, i32 noundef %58) #15
  %59 = load ptr, ptr %54, align 8, !tbaa !184
  tail call void @BKE_sequence_calc(ptr noundef %3, ptr noundef %59) #15
  %60 = load ptr, ptr %54, align 8, !tbaa !184
  tail call void @BKE_sequencer_active_set(ptr noundef %3, ptr noundef %60) #15
  %61 = load ptr, ptr %54, align 8, !tbaa !184
  %62 = getelementptr inbounds %struct.Sequence, ptr %61, i64 0, i32 5
  %63 = load i32, ptr %62, align 8, !tbaa !79
  %64 = or i32 %63, 1
  store i32 %64, ptr %62, align 8, !tbaa !79
  tail call void @recurs_sel_seq(ptr noundef %61) #17
  %65 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  tail call void %65(ptr noundef %32) #15
  br label %66

66:                                               ; preds = %53, %16
  tail call void @BKE_sequencer_update_muting(ptr noundef %4) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %3) #15
  br label %67

67:                                               ; preds = %26, %66
  %68 = phi i32 [ 4, %66 ], [ 2, %26 ]
  ret i32 %68
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @SEQUENCER_OT_meta_make(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.140, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.141, ptr %2, align 8, !tbaa !107
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.142, ptr %3, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_meta_make_exec, ptr %4, align 8, !tbaa !109
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %5, align 8, !tbaa !110
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !111
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_meta_make_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !202 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 0) #15
  %5 = tail call ptr @BKE_sequencer_active_get(ptr noundef %3) #15
  %6 = load ptr, ptr %4, align 8, !tbaa !73
  %7 = tail call zeroext i8 @BKE_sequence_base_isolated_sel_check(ptr noundef %6, i8 noundef zeroext 0) #15
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !164
  tail call void @BKE_report(ptr noundef %11, i32 noundef 32, ptr noundef nonnull @.str.212) #15
  br label %64

12:                                               ; preds = %2
  %13 = load ptr, ptr %4, align 8, !tbaa !73
  %14 = tail call ptr @BKE_sequence_alloc(ptr noundef %13, i32 noundef 1, i32 noundef 1) #15
  %15 = getelementptr inbounds %struct.Sequence, ptr %14, i64 0, i32 4, i64 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %15, ptr noundef nonnull align 1 dereferenceable(10) @.str.213, i64 10, i1 false) #15
  %16 = getelementptr inbounds %struct.Sequence, ptr %14, i64 0, i32 6
  store i32 1, ptr %16, align 4, !tbaa !102
  %17 = getelementptr inbounds %struct.Sequence, ptr %14, i64 0, i32 5
  store i32 1, ptr %17, align 8, !tbaa !79
  %18 = load ptr, ptr %4, align 8, !tbaa !73
  %19 = load ptr, ptr %18, align 8, !tbaa !174
  %20 = icmp eq ptr %19, null
  br i1 %20, label %41, label %21

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.Sequence, ptr %14, i64 0, i32 36
  br label %23

23:                                               ; preds = %21, %38
  %24 = phi i32 [ 1, %21 ], [ %39, %38 ]
  %25 = phi ptr [ %19, %21 ], [ %26, %38 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !175
  %27 = icmp eq ptr %25, %14
  br i1 %27, label %38, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.Sequence, ptr %25, i64 0, i32 5
  %30 = load i32, ptr %29, align 8, !tbaa !79
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  tail call void @BKE_sequence_invalidate_cache(ptr noundef %3, ptr noundef nonnull %25) #15
  %34 = getelementptr inbounds %struct.Sequence, ptr %25, i64 0, i32 13
  %35 = load i32, ptr %34, align 8, !tbaa !46
  %36 = tail call fastcc i32 @max_ii(i32 noundef %35, i32 noundef %24) #17
  %37 = load ptr, ptr %4, align 8, !tbaa !73
  tail call void @BLI_remlink(ptr noundef %37, ptr noundef nonnull %25) #15
  tail call void @BLI_addtail(ptr noundef nonnull %22, ptr noundef nonnull %25) #15
  br label %38

38:                                               ; preds = %33, %28, %23
  %39 = phi i32 [ %36, %33 ], [ %24, %28 ], [ %24, %23 ]
  %40 = icmp eq ptr %26, null
  br i1 %40, label %41, label %23, !llvm.loop !203

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
  tail call void @BKE_sequence_calc(ptr noundef %3, ptr noundef %14) #15
  %50 = load ptr, ptr @MEM_callocN, align 8, !tbaa !75
  %51 = tail call ptr %50(i64 noundef 904, ptr noundef nonnull @.str.214) #15
  %52 = getelementptr inbounds %struct.Sequence, ptr %14, i64 0, i32 24
  store ptr %51, ptr %52, align 8, !tbaa !192
  %53 = getelementptr inbounds %struct.Strip, ptr %51, i64 0, i32 2
  store i32 1, ptr %53, align 8, !tbaa !193
  tail call void @BKE_sequencer_active_set(ptr noundef %3, ptr noundef %14) #15
  %54 = load ptr, ptr %4, align 8, !tbaa !73
  %55 = tail call zeroext i8 @BKE_sequence_test_overlap(ptr noundef %54, ptr noundef %14) #15
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %47
  %58 = load ptr, ptr %4, align 8, !tbaa !73
  %59 = tail call zeroext i8 @BKE_sequence_base_shuffle(ptr noundef %58, ptr noundef nonnull %14, ptr noundef %3) #15
  br label %60

60:                                               ; preds = %57, %47
  tail call void @BKE_sequencer_update_muting(ptr noundef nonnull %4) #15
  %61 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 19
  %62 = load ptr, ptr %61, align 8, !tbaa !204
  %63 = getelementptr inbounds %struct.Editing, ptr %62, i64 0, i32 1
  tail call void @BKE_sequence_base_unique_name_recursive(ptr noundef nonnull %63, ptr noundef nonnull %14) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %3) #15
  br label %64

64:                                               ; preds = %60, %9
  %65 = phi i32 [ 2, %9 ], [ 4, %60 ]
  ret i32 %65
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @SEQUENCER_OT_meta_separate(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.143, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.144, ptr %2, align 8, !tbaa !107
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.145, ptr %3, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_meta_separate_exec, ptr %4, align 8, !tbaa !109
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %5, align 8, !tbaa !110
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !111
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_meta_separate_exec(ptr noundef %0, ptr nocapture readnone %1) #1 !PGOFuncName !205 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 0) #15
  %5 = tail call ptr @BKE_sequencer_active_get(ptr noundef %3) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %63, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !102
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %63

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 36
  %13 = load ptr, ptr %12, align 8, !tbaa !75
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %11, %15
  %16 = phi ptr [ %17, %15 ], [ %13, %11 ]
  tail call void @BKE_sequence_invalidate_cache(ptr noundef %3, ptr noundef nonnull %16) #15
  %17 = load ptr, ptr %16, align 8, !tbaa !75
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %15, !llvm.loop !206

19:                                               ; preds = %15, %11
  %20 = load ptr, ptr %4, align 8, !tbaa !73
  tail call void @BLI_movelisttolist(ptr noundef %20, ptr noundef nonnull %12) #15
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %12) #17
  %21 = load ptr, ptr %4, align 8, !tbaa !73
  tail call void @BLI_remlink(ptr noundef %21, ptr noundef nonnull %5) #15
  tail call void @BKE_sequence_free(ptr noundef %3, ptr noundef nonnull %5) #15
  %22 = load ptr, ptr %4, align 8, !tbaa !73
  %23 = load ptr, ptr %22, align 8, !tbaa !75
  %24 = icmp eq ptr %23, null
  br i1 %24, label %41, label %25

25:                                               ; preds = %19, %38
  %26 = phi ptr [ %39, %38 ], [ %23, %19 ]
  %27 = getelementptr inbounds %struct.Sequence, ptr %26, i64 0, i32 6
  %28 = load i32, ptr %27, align 4, !tbaa !102
  %29 = and i32 %28, 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %25
  %32 = tail call fastcc i32 @seq_depends_on_meta(ptr noundef nonnull %26, ptr noundef nonnull %5) #17, !range !95
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.Sequence, ptr %26, i64 0, i32 5
  %36 = load i32, ptr %35, align 8, !tbaa !79
  %37 = or i32 %36, 1024
  store i32 %37, ptr %35, align 8, !tbaa !79
  br label %38

38:                                               ; preds = %25, %31, %34
  %39 = load ptr, ptr %26, align 8, !tbaa !75
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %25, !llvm.loop !207

41:                                               ; preds = %38, %19
  tail call fastcc void @recurs_del_seq_flag(ptr noundef %3, ptr noundef nonnull %22, i16 noundef signext 1024, i16 noundef signext 0) #17
  %42 = load ptr, ptr %4, align 8, !tbaa !73
  %43 = load ptr, ptr %42, align 8, !tbaa !75
  %44 = icmp eq ptr %43, null
  br i1 %44, label %62, label %45

45:                                               ; preds = %41, %59
  %46 = phi ptr [ %60, %59 ], [ %43, %41 ]
  %47 = getelementptr inbounds %struct.Sequence, ptr %46, i64 0, i32 5
  %48 = load i32, ptr %47, align 8, !tbaa !79
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %45
  %52 = and i32 %48, -9
  store i32 %52, ptr %47, align 8, !tbaa !79
  %53 = load ptr, ptr %4, align 8, !tbaa !73
  %54 = tail call zeroext i8 @BKE_sequence_test_overlap(ptr noundef %53, ptr noundef nonnull %46) #15
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load ptr, ptr %4, align 8, !tbaa !73
  %58 = tail call zeroext i8 @BKE_sequence_base_shuffle(ptr noundef %57, ptr noundef nonnull %46, ptr noundef %3) #15
  br label %59

59:                                               ; preds = %45, %56, %51
  %60 = load ptr, ptr %46, align 8, !tbaa !75
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %45, !llvm.loop !208

62:                                               ; preds = %59, %41
  tail call void @BKE_sequencer_sort(ptr noundef %3) #15
  tail call void @BKE_sequencer_update_muting(ptr noundef nonnull %4) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %3) #15
  br label %63

63:                                               ; preds = %2, %7, %62
  %64 = phi i32 [ 4, %62 ], [ 2, %7 ], [ 2, %2 ]
  ret i32 %64
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @SEQUENCER_OT_view_all(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.146, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.147, ptr %2, align 8, !tbaa !107
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.148, ptr %3, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_view_all_exec, ptr %4, align 8, !tbaa !109
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sequencer_active, ptr %5, align 8, !tbaa !110
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %6, align 8, !tbaa !111
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_view_all_exec(ptr noundef %0, ptr noundef %1) #1 !PGOFuncName !209 {
  %3 = tail call ptr @CTX_wm_region(ptr noundef %0) #15
  %4 = tail call ptr @UI_view2d_fromcontext(ptr noundef %0) #15
  %5 = tail call i32 @WM_operator_smooth_viewtx_get(ptr noundef %1) #15
  tail call void @UI_view2d_smooth_view(ptr noundef %0, ptr noundef %3, ptr noundef %4, i32 noundef %5) #15
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @SEQUENCER_OT_view_all_preview(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.146, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.149, ptr %2, align 8, !tbaa !107
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.150, ptr %3, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_view_all_preview_exec, ptr %4, align 8, !tbaa !109
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sequencer_active, ptr %5, align 8, !tbaa !110
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %6, align 8, !tbaa !111
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_view_all_preview_exec(ptr noundef %0, ptr nocapture readnone %1) #1 !PGOFuncName !210 {
  %3 = tail call ptr @CTX_wm_screen(ptr noundef %0) #15
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #15
  %5 = tail call ptr @UI_view2d_fromcontext(ptr noundef %0) #15
  %6 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !211
  tail call void @UI_view2d_curRect_validate(ptr noundef %5) #15
  tail call void @UI_view2d_sync(ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef 1) #15
  %7 = tail call ptr @CTX_wm_area(ptr noundef %0) #15
  tail call void @ED_area_tag_redraw(ptr noundef %7) #15
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SEQUENCER_OT_view_zoom_ratio(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.151, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.152, ptr %2, align 8, !tbaa !107
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.153, ptr %3, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_view_zoom_ratio_exec, ptr %4, align 8, !tbaa !109
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sequencer_active, ptr %5, align 8, !tbaa !110
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !112
  %8 = tail call ptr @RNA_def_float(ptr noundef %7, ptr noundef nonnull @.str.154, float noundef 1.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.156, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_view_zoom_ratio_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !212 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %4 = tail call ptr @UI_view2d_fromcontext(ptr noundef %0) #15
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !114
  %7 = tail call float @RNA_float_get(ptr noundef %6, ptr noundef nonnull @.str.154) #15
  %8 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 30
  %9 = load i16, ptr %8, align 2, !tbaa !213
  %10 = sext i16 %9 to i32
  %11 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 33
  %12 = load i32, ptr %11, align 4, !tbaa !214
  %13 = mul nsw i32 %12, %10
  %14 = sdiv i32 %13, 100
  %15 = sitofp i32 %14 to float
  %16 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 34
  %17 = load i32, ptr %16, align 8, !tbaa !215
  %18 = mul nsw i32 %17, %10
  %19 = sdiv i32 %18, 100
  %20 = sitofp i32 %19 to float
  %21 = getelementptr inbounds %struct.View2D, ptr %4, i64 0, i32 4
  %22 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %21) #17
  %23 = sitofp i32 %22 to float
  %24 = fdiv float %23, %15
  %25 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %21) #17
  %26 = sitofp i32 %25 to float
  %27 = fdiv float %26, %20
  %28 = getelementptr inbounds %struct.View2D, ptr %4, i64 0, i32 1
  %29 = fmul float %24, %15
  %30 = fdiv float %29, %7
  %31 = fadd float %30, 5.000000e-01
  %32 = tail call float @llvm.floor.f32(float %31)
  %33 = fmul float %27, %20
  %34 = fdiv float %33, %7
  %35 = fadd float %34, 5.000000e-01
  %36 = tail call float @llvm.floor.f32(float %35)
  tail call void @BLI_rctf_resize(ptr noundef nonnull %28, float noundef %32, float noundef %36) #15
  %37 = tail call ptr @CTX_wm_region(ptr noundef %0) #15
  tail call void @ED_region_tag_redraw(ptr noundef %37) #15
  ret i32 4
}

; Function Attrs: optsize
declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @SEQUENCER_OT_view_toggle(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.157, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.158, ptr %2, align 8, !tbaa !107
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.159, ptr %3, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_view_toggle_exec, ptr %4, align 8, !tbaa !109
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sequencer_active, ptr %5, align 8, !tbaa !110
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %6, align 8, !tbaa !111
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_view_toggle_exec(ptr noundef %0, ptr nocapture readnone %1) #1 !PGOFuncName !216 {
  %3 = tail call ptr @CTX_wm_space_data(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 15
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = add nsw i32 %5, 1
  %7 = icmp sgt i32 %5, 2
  %8 = select i1 %7, i32 1, i32 %6
  store i32 %8, ptr %4, align 8, !tbaa !101
  %9 = tail call ptr @CTX_wm_area(ptr noundef %0) #15
  tail call void @ED_area_tag_refresh(ptr noundef %9) #15
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @SEQUENCER_OT_view_selected(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.160, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.161, ptr %2, align 8, !tbaa !107
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.162, ptr %3, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_view_selected_exec, ptr %4, align 8, !tbaa !109
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sequencer_active, ptr %5, align 8, !tbaa !110
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %6, align 8, !tbaa !111
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_view_selected_exec(ptr noundef %0, ptr noundef %1) #1 !PGOFuncName !217 {
  %3 = alloca %struct.rctf, align 4
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %5 = tail call ptr @UI_view2d_fromcontext(ptr noundef %0) #15
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #15
  %7 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %4, i8 noundef zeroext 0) #15
  %8 = tail call ptr @BKE_sequencer_active_get(ptr noundef %4) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  %9 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !211
  %10 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 55
  %11 = load i16, ptr %10, align 4, !tbaa !218
  %12 = sitofp i16 %11 to double
  %13 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 65
  %14 = load float, ptr %13, align 4, !tbaa !219
  %15 = fpext float %14 to double
  %16 = fdiv double %12, %15
  %17 = fptosi double %16 to i32
  %18 = icmp eq ptr %7, null
  br i1 %18, label %82, label %19

19:                                               ; preds = %2
  %20 = load ptr, ptr %7, align 8, !tbaa !73
  %21 = load ptr, ptr %20, align 8, !tbaa !75
  %22 = icmp eq ptr %21, null
  br i1 %22, label %82, label %23

23:                                               ; preds = %19, %46
  %24 = phi ptr [ %51, %46 ], [ %21, %19 ]
  %25 = phi i32 [ %50, %46 ], [ 600000, %19 ]
  %26 = phi i32 [ %49, %46 ], [ -600000, %19 ]
  %27 = phi i32 [ %48, %46 ], [ 33, %19 ]
  %28 = phi i32 [ %47, %46 ], [ 0, %19 ]
  %29 = getelementptr inbounds %struct.Sequence, ptr %24, i64 0, i32 5
  %30 = load i32, ptr %29, align 8, !tbaa !79
  %31 = and i32 %30, 1
  %32 = icmp ne i32 %31, 0
  %33 = icmp eq ptr %24, %8
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %23
  %36 = getelementptr inbounds %struct.Sequence, ptr %24, i64 0, i32 15
  %37 = load i32, ptr %36, align 8, !tbaa !80
  %38 = tail call fastcc i32 @min_ii(i32 noundef %25, i32 noundef %37) #17
  %39 = getelementptr inbounds %struct.Sequence, ptr %24, i64 0, i32 16
  %40 = load i32, ptr %39, align 4, !tbaa !51
  %41 = tail call fastcc i32 @max_ii(i32 noundef %26, i32 noundef %40) #17
  %42 = getelementptr inbounds %struct.Sequence, ptr %24, i64 0, i32 13
  %43 = load i32, ptr %42, align 8, !tbaa !46
  %44 = tail call fastcc i32 @min_ii(i32 noundef %27, i32 noundef %43) #17
  %45 = tail call fastcc i32 @max_ii(i32 noundef %28, i32 noundef %43) #17
  br label %46

46:                                               ; preds = %23, %35
  %47 = phi i32 [ %45, %35 ], [ %28, %23 ]
  %48 = phi i32 [ %44, %35 ], [ %27, %23 ]
  %49 = phi i32 [ %41, %35 ], [ %26, %23 ]
  %50 = phi i32 [ %38, %35 ], [ %25, %23 ]
  %51 = load ptr, ptr %24, align 8, !tbaa !75
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %23, !llvm.loop !220

53:                                               ; preds = %46
  %54 = icmp eq i32 %47, 0
  br i1 %54, label %82, label %55

55:                                               ; preds = %53
  %56 = add nsw i32 %48, -1
  %57 = sitofp i32 %56 to float
  %58 = tail call i32 @WM_operator_smooth_viewtx_get(ptr noundef %1) #15
  %59 = add nsw i32 %49, %17
  %60 = sub nsw i32 %50, %17
  %61 = add nsw i32 %47, 1
  %62 = call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %3) #17
  %63 = fptosi float %62 to i32
  %64 = sitofp i32 %60 to float
  store float %64, ptr %3, align 4, !tbaa !44
  %65 = sitofp i32 %59 to float
  %66 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 1
  store float %65, ptr %66, align 4, !tbaa !85
  %67 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 2
  store float %57, ptr %67, align 4, !tbaa !47
  %68 = sitofp i32 %61 to float
  %69 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 3
  store float %68, ptr %69, align 4, !tbaa !52
  %70 = sitofp i32 %63 to float
  %71 = call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %3) #17
  %72 = fcmp olt float %71, %70
  br i1 %72, label %73, label %81

73:                                               ; preds = %55
  %74 = call fastcc float @BLI_rctf_cent_y(ptr noundef nonnull %3) #17
  %75 = fptosi float %74 to i32
  %76 = sdiv i32 %63, 2
  %77 = sub nsw i32 %75, %76
  %78 = sitofp i32 %77 to float
  store float %78, ptr %67, align 4, !tbaa !47
  %79 = add nsw i32 %76, %75
  %80 = sitofp i32 %79 to float
  store float %80, ptr %69, align 4, !tbaa !52
  br label %81

81:                                               ; preds = %73, %55
  call void @UI_view2d_smooth_view(ptr noundef %0, ptr noundef %6, ptr noundef nonnull %3, i32 noundef %58) #15
  br label %82

82:                                               ; preds = %19, %53, %2, %81
  %83 = phi i32 [ 4, %81 ], [ 2, %2 ], [ 2, %53 ], [ 2, %19 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  ret i32 %83
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SEQUENCER_OT_strip_jump(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.163, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.164, ptr %2, align 8, !tbaa !107
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.165, ptr %3, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_strip_jump_exec, ptr %4, align 8, !tbaa !109
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_strip_jump_poll, ptr %5, align 8, !tbaa !110
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !111
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !112
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.166, i32 noundef 1, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.40) #15
  %10 = load ptr, ptr %7, align 8, !tbaa !112
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.168, i32 noundef 1, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.40) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_strip_jump_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !221 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !114
  %6 = tail call i32 @RNA_boolean_get(ptr noundef %5, ptr noundef nonnull @.str.166) #15
  %7 = load ptr, ptr %4, align 8, !tbaa !114
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.168) #15
  %9 = trunc i32 %8 to i8
  %10 = and i32 %6, 255
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i16 1, i16 2
  %13 = tail call fastcc zeroext i8 @strip_jump_internal(ptr noundef %3, i16 noundef signext %12, i8 noundef zeroext %9) #17
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67305472, ptr noundef %3) #15
  br label %16

16:                                               ; preds = %2, %15
  %17 = phi i32 [ 4, %15 ], [ 2, %2 ]
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @sequencer_strip_jump_poll(ptr noundef %0) #1 !PGOFuncName !222 {
  %2 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !223
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 @sequencer_edit_poll(ptr noundef %0) #17, !range !95
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SEQUENCER_OT_swap(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.170, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.171, ptr %2, align 8, !tbaa !107
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.172, ptr %3, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_swap_exec, ptr %4, align 8, !tbaa !109
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %5, align 8, !tbaa !110
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !111
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !112
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.117, ptr noundef nonnull @prop_side_lr_types, i32 noundef 2, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.173) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_swap_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !225 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 0) #15
  %5 = tail call ptr @BKE_sequencer_active_get(ptr noundef %3) #15
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !114
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.117) #15
  %9 = icmp eq ptr %5, null
  br i1 %9, label %108, label %10

10:                                               ; preds = %2
  %11 = tail call fastcc ptr @find_next_prev_sequence(ptr noundef %3, ptr noundef nonnull %5, i32 noundef %8) #17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %108, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.Sequence, ptr %11, i64 0, i32 6
  %15 = load i32, ptr %14, align 4, !tbaa !102
  %16 = tail call i32 @BKE_sequence_effect_get_num_inputs(i32 noundef %15) #15
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.Sequence, ptr %11, i64 0, i32 43
  %20 = load ptr, ptr %19, align 8, !tbaa !226
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %108

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.Sequence, ptr %11, i64 0, i32 33
  %24 = load ptr, ptr %23, align 8, !tbaa !128
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %108

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.Sequence, ptr %11, i64 0, i32 34
  %28 = load ptr, ptr %27, align 8, !tbaa !129
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %108

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.Sequence, ptr %11, i64 0, i32 35
  %32 = load ptr, ptr %31, align 8, !tbaa !130
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %108

34:                                               ; preds = %30, %13
  %35 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 6
  %36 = load i32, ptr %35, align 4, !tbaa !102
  %37 = tail call i32 @BKE_sequence_effect_get_num_inputs(i32 noundef %36) #15
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 43
  %41 = load ptr, ptr %40, align 8, !tbaa !226
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %108

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 33
  %45 = load ptr, ptr %44, align 8, !tbaa !128
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %108

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 34
  %49 = load ptr, ptr %48, align 8, !tbaa !129
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %108

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 35
  %53 = load ptr, ptr %52, align 8, !tbaa !130
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %108

55:                                               ; preds = %51, %34
  switch i32 %8, label %58 [
    i32 1, label %56
    i32 2, label %57
  ]

56:                                               ; preds = %55
  tail call fastcc void @swap_sequence(ptr noundef %3, ptr noundef nonnull %11, ptr noundef nonnull %5) #17
  br label %58

57:                                               ; preds = %55
  tail call fastcc void @swap_sequence(ptr noundef %3, ptr noundef nonnull %5, ptr noundef nonnull %11) #17
  br label %58

58:                                               ; preds = %55, %57, %56
  %59 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 19
  %60 = load ptr, ptr %59, align 8, !tbaa !204
  %61 = load ptr, ptr %60, align 8, !tbaa !73
  %62 = load ptr, ptr %61, align 8, !tbaa !75
  %63 = icmp eq ptr %62, null
  br i1 %63, label %107, label %64

64:                                               ; preds = %58, %77
  %65 = phi ptr [ %78, %77 ], [ %62, %58 ]
  %66 = getelementptr inbounds %struct.Sequence, ptr %65, i64 0, i32 6
  %67 = load i32, ptr %66, align 4, !tbaa !102
  %68 = and i32 %67, 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %64
  %71 = tail call fastcc zeroext i8 @seq_is_parent(ptr noundef nonnull %65, ptr noundef nonnull %5) #17, !range !96
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = tail call fastcc zeroext i8 @seq_is_parent(ptr noundef nonnull %65, ptr noundef nonnull %11) #17, !range !96
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %73, %70
  tail call void @BKE_sequence_calc(ptr noundef %3, ptr noundef nonnull %65) #15
  br label %77

77:                                               ; preds = %64, %73, %76
  %78 = load ptr, ptr %65, align 8, !tbaa !75
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %64, !llvm.loop !227

80:                                               ; preds = %77
  %81 = load ptr, ptr %59, align 8, !tbaa !204
  %82 = load ptr, ptr %81, align 8, !tbaa !73
  %83 = load ptr, ptr %82, align 8, !tbaa !75
  %84 = icmp eq ptr %83, null
  br i1 %84, label %107, label %85

85:                                               ; preds = %80, %104
  %86 = phi ptr [ %105, %104 ], [ %83, %80 ]
  %87 = getelementptr inbounds %struct.Sequence, ptr %86, i64 0, i32 6
  %88 = load i32, ptr %87, align 4, !tbaa !102
  %89 = and i32 %88, 8
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %104, label %91

91:                                               ; preds = %85
  %92 = tail call fastcc zeroext i8 @seq_is_parent(ptr noundef nonnull %86, ptr noundef nonnull %5) #17, !range !96
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = tail call fastcc zeroext i8 @seq_is_parent(ptr noundef nonnull %86, ptr noundef nonnull %11) #17, !range !96
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %94, %91
  %98 = load ptr, ptr %4, align 8, !tbaa !73
  %99 = tail call zeroext i8 @BKE_sequence_test_overlap(ptr noundef %98, ptr noundef nonnull %86) #15
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %97
  %102 = load ptr, ptr %4, align 8, !tbaa !73
  %103 = tail call zeroext i8 @BKE_sequence_base_shuffle(ptr noundef %102, ptr noundef nonnull %86, ptr noundef %3) #15
  br label %104

104:                                              ; preds = %85, %94, %101, %97
  %105 = load ptr, ptr %86, align 8, !tbaa !75
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %85, !llvm.loop !228

107:                                              ; preds = %104, %58, %80
  tail call void @BKE_sequencer_sort(ptr noundef %3) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %3) #15
  br label %108

108:                                              ; preds = %10, %39, %43, %47, %51, %18, %22, %26, %30, %2, %107
  %109 = phi i32 [ 4, %107 ], [ 2, %2 ], [ 2, %30 ], [ 2, %26 ], [ 2, %22 ], [ 2, %18 ], [ 2, %51 ], [ 2, %47 ], [ 2, %43 ], [ 2, %39 ], [ 2, %10 ]
  ret i32 %109
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @SEQUENCER_OT_rendersize(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.174, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.175, ptr %2, align 8, !tbaa !107
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.176, ptr %3, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_rendersize_exec, ptr %4, align 8, !tbaa !109
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %5, align 8, !tbaa !110
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !111
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_rendersize_exec(ptr noundef %0, ptr nocapture readnone %1) #1 !PGOFuncName !229 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %4 = tail call ptr @BKE_sequencer_active_get(ptr noundef %3) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %34, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 24
  %8 = load ptr, ptr %7, align 8, !tbaa !192
  %9 = icmp eq ptr %8, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 6
  %12 = load i32, ptr %11, align 4, !tbaa !102
  switch i32 %12, label %34 [
    i32 0, label %13
    i32 3, label %17
  ]

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !116
  %16 = tail call ptr @BKE_sequencer_give_stripelem(ptr noundef nonnull %4, i32 noundef %15) #15
  br label %20

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.Strip, ptr %8, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !195
  br label %20

20:                                               ; preds = %13, %17
  %21 = phi ptr [ %19, %17 ], [ %16, %13 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %34, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.StripElem, ptr %21, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !230
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.StripElem, ptr %21, i64 0, i32 2
  %29 = load i32, ptr %28, align 4, !tbaa !232
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 33
  store i32 %25, ptr %32, align 4, !tbaa !233
  %33 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 34
  store i32 %29, ptr %33, align 8, !tbaa !234
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67371008, ptr noundef %3) #15
  br label %34

34:                                               ; preds = %6, %10, %20, %31, %27, %23, %2
  %35 = phi i32 [ 2, %2 ], [ 4, %31 ], [ 2, %27 ], [ 2, %23 ], [ 2, %20 ], [ 2, %10 ], [ 2, %6 ]
  ret i32 %35
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @SEQUENCER_OT_copy(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.177, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.178, ptr %2, align 8, !tbaa !107
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.40, ptr %3, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_copy_exec, ptr %4, align 8, !tbaa !109
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %5, align 8, !tbaa !110
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %6, align 8, !tbaa !111
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_copy_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !235 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %5 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %4, i8 noundef zeroext 0) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  tail call void @BKE_sequencer_free_clipboard() #15
  %6 = load ptr, ptr %5, align 8, !tbaa !73
  %7 = tail call zeroext i8 @BKE_sequence_base_isolated_sel_check(ptr noundef %6, i8 noundef zeroext 1) #15
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !164
  tail call void @BKE_report(ptr noundef %11, i32 noundef 32, ptr noundef nonnull @.str.215) #15
  br label %41

12:                                               ; preds = %2
  %13 = load ptr, ptr %5, align 8, !tbaa !73
  call void @BKE_sequence_base_dupli_recursive(ptr noundef %4, ptr noundef null, ptr noundef nonnull %3, ptr noundef %13, i32 noundef 1) #15
  %14 = load ptr, ptr %3, align 8, !tbaa !174
  %15 = icmp eq ptr %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %5, align 8, !tbaa !73
  call void @BLI_movelisttolist(ptr noundef %17, ptr noundef nonnull %3) #15
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %14, %16 ], [ %21, %18 ]
  %20 = call i32 @BKE_sequencer_recursive_apply(ptr noundef nonnull %19, ptr noundef nonnull @apply_unique_name_cb, ptr noundef %4) #15
  %21 = load ptr, ptr %19, align 8, !tbaa !175
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %18, !llvm.loop !236

23:                                               ; preds = %18
  store ptr %14, ptr @seqbase_clipboard, align 8, !tbaa !174
  %24 = load ptr, ptr %5, align 8, !tbaa !73
  %25 = getelementptr inbounds %struct.ListBase, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !237
  store ptr %26, ptr getelementptr inbounds (%struct.ListBase, ptr @seqbase_clipboard, i64 0, i32 1), align 8, !tbaa !237
  %27 = getelementptr inbounds %struct.Sequence, ptr %14, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !238
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  store ptr null, ptr %28, align 8, !tbaa !175
  store ptr %28, ptr %25, align 8, !tbaa !237
  store ptr null, ptr %27, align 8, !tbaa !238
  br label %31

31:                                               ; preds = %23, %30, %12
  %32 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 5
  %33 = load i32, ptr %32, align 8, !tbaa !116
  store i32 %33, ptr @seqbase_clipboard_frame, align 4, !tbaa !43
  %34 = load ptr, ptr @seqbase_clipboard, align 8, !tbaa !75
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %31, %36
  %37 = phi ptr [ %38, %36 ], [ %34, %31 ]
  call fastcc void @seq_copy_del_sound(ptr noundef %4, ptr noundef nonnull %37) #17
  %38 = load ptr, ptr %37, align 8, !tbaa !75
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %36, !llvm.loop !239

40:                                               ; preds = %36, %31
  call void @BKE_sequencer_base_clipboard_pointers_store(ptr noundef nonnull @seqbase_clipboard) #15
  br label %41

41:                                               ; preds = %40, %9
  %42 = phi i32 [ 2, %9 ], [ 4, %40 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  ret i32 %42
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @SEQUENCER_OT_paste(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.179, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.180, ptr %2, align 8, !tbaa !107
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.40, ptr %3, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_paste_exec, ptr %4, align 8, !tbaa !109
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sequencer_active, ptr %5, align 8, !tbaa !110
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !111
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_paste_exec(ptr noundef %0, ptr nocapture readnone %1) #1 !PGOFuncName !240 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #15
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %6 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %5, i8 noundef zeroext 1) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  tail call void @ED_sequencer_deselect_all(ptr noundef %5) #17
  %7 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !116
  %9 = load i32, ptr @seqbase_clipboard_frame, align 4, !tbaa !43
  %10 = sub nsw i32 %8, %9
  call void @BKE_sequence_base_dupli_recursive(ptr noundef %5, ptr noundef null, ptr noundef nonnull %3, ptr noundef nonnull @seqbase_clipboard, i32 noundef 1) #15
  %11 = icmp eq i32 %8, %9
  %12 = load ptr, ptr %3, align 8
  %13 = icmp eq ptr %12, null
  %14 = select i1 %11, i1 true, i1 %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %2, %15
  %16 = phi ptr [ %17, %15 ], [ %12, %2 ]
  call void @BKE_sequence_translate(ptr noundef %5, ptr noundef nonnull %16, i32 noundef %10) #15
  %17 = load ptr, ptr %16, align 8, !tbaa !75
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %15, !llvm.loop !241

19:                                               ; preds = %15, %2
  call void @BKE_sequencer_base_clipboard_pointers_restore(ptr noundef nonnull %3, ptr noundef %4) #15
  %20 = load ptr, ptr %3, align 8, !tbaa !75
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load ptr, ptr %6, align 8, !tbaa !73
  call void @BLI_movelisttolist(ptr noundef %23, ptr noundef nonnull %3) #15
  br label %48

24:                                               ; preds = %19, %24
  %25 = phi ptr [ %26, %24 ], [ %20, %19 ]
  call void @BKE_sequence_sound_init(ptr noundef %5, ptr noundef nonnull %25) #15
  %26 = load ptr, ptr %25, align 8, !tbaa !75
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %24, !llvm.loop !242

28:                                               ; preds = %24
  %29 = load ptr, ptr %3, align 8, !tbaa !174
  %30 = load ptr, ptr %6, align 8, !tbaa !73
  call void @BLI_movelisttolist(ptr noundef %30, ptr noundef nonnull %3) #15
  %31 = icmp eq ptr %29, null
  br i1 %31, label %48, label %32

32:                                               ; preds = %28, %32
  %33 = phi ptr [ %35, %32 ], [ %29, %28 ]
  %34 = call i32 @BKE_sequencer_recursive_apply(ptr noundef nonnull %33, ptr noundef nonnull @apply_unique_name_cb, ptr noundef %5) #15
  %35 = load ptr, ptr %33, align 8, !tbaa !175
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %32, !llvm.loop !243

37:                                               ; preds = %32, %45
  %38 = phi ptr [ %46, %45 ], [ %29, %32 ]
  %39 = load ptr, ptr %6, align 8, !tbaa !73
  %40 = call zeroext i8 @BKE_sequence_test_overlap(ptr noundef %39, ptr noundef nonnull %38) #15
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load ptr, ptr %6, align 8, !tbaa !73
  %44 = call zeroext i8 @BKE_sequence_base_shuffle(ptr noundef %43, ptr noundef nonnull %38, ptr noundef %5) #15
  br label %45

45:                                               ; preds = %37, %42
  %46 = load ptr, ptr %38, align 8, !tbaa !175
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %37, !llvm.loop !244

48:                                               ; preds = %45, %22, %28
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %5) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @SEQUENCER_OT_swap_data(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.181, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.182, ptr %2, align 8, !tbaa !107
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.183, ptr %3, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_swap_data_exec, ptr %4, align 8, !tbaa !109
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sequencer_active, ptr %5, align 8, !tbaa !110
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !111
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_swap_data_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !245 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %7 = call i32 @BKE_sequencer_active_get_pair(ptr noundef %6, ptr noundef nonnull %3, ptr noundef nonnull %4) #15
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !164
  call void @BKE_report(ptr noundef %11, i32 noundef 32, ptr noundef nonnull @.str.216) #15
  br label %54

12:                                               ; preds = %2
  %13 = load ptr, ptr %3, align 8, !tbaa !75
  %14 = load ptr, ptr %4, align 8, !tbaa !75
  %15 = call i32 @BKE_sequence_swap(ptr noundef %13, ptr noundef %14, ptr noundef nonnull %5) #15
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !164
  %20 = load ptr, ptr %5, align 8, !tbaa !75
  call void @BKE_report(ptr noundef %19, i32 noundef 32, ptr noundef %20) #15
  br label %54

21:                                               ; preds = %12
  %22 = load ptr, ptr %3, align 8, !tbaa !75
  %23 = getelementptr inbounds %struct.Sequence, ptr %22, i64 0, i32 38
  %24 = load ptr, ptr %23, align 8, !tbaa !246
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  call void @sound_remove_scene_sound(ptr noundef %6, ptr noundef nonnull %24) #15
  br label %27

27:                                               ; preds = %26, %21
  %28 = load ptr, ptr %4, align 8, !tbaa !75
  %29 = getelementptr inbounds %struct.Sequence, ptr %28, i64 0, i32 38
  %30 = load ptr, ptr %29, align 8, !tbaa !246
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  call void @sound_remove_scene_sound(ptr noundef %6, ptr noundef nonnull %30) #15
  %33 = load ptr, ptr %4, align 8, !tbaa !75
  br label %34

34:                                               ; preds = %32, %27
  %35 = phi ptr [ %33, %32 ], [ %28, %27 ]
  %36 = load ptr, ptr %3, align 8, !tbaa !75
  %37 = getelementptr inbounds %struct.Sequence, ptr %36, i64 0, i32 38
  store ptr null, ptr %37, align 8, !tbaa !246
  %38 = getelementptr inbounds %struct.Sequence, ptr %35, i64 0, i32 38
  store ptr null, ptr %38, align 8, !tbaa !246
  call void @BKE_sequence_calc(ptr noundef %6, ptr noundef %36) #15
  %39 = load ptr, ptr %4, align 8, !tbaa !75
  call void @BKE_sequence_calc(ptr noundef %6, ptr noundef %39) #15
  %40 = load ptr, ptr %3, align 8, !tbaa !75
  %41 = getelementptr inbounds %struct.Sequence, ptr %40, i64 0, i32 37
  %42 = load ptr, ptr %41, align 8, !tbaa !247
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %34
  %45 = call ptr @sound_add_scene_sound_defaults(ptr noundef %6, ptr noundef nonnull %40) #15
  br label %46

46:                                               ; preds = %44, %34
  %47 = load ptr, ptr %4, align 8, !tbaa !75
  %48 = getelementptr inbounds %struct.Sequence, ptr %47, i64 0, i32 37
  %49 = load ptr, ptr %48, align 8, !tbaa !247
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %46
  %52 = call ptr @sound_add_scene_sound_defaults(ptr noundef %6, ptr noundef nonnull %47) #15
  br label %53

53:                                               ; preds = %51, %46
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %6) #15
  br label %54

54:                                               ; preds = %53, %17, %9
  %55 = phi i32 [ 2, %9 ], [ 2, %17 ], [ 4, %53 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret i32 %55
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SEQUENCER_OT_view_ghost_border(ptr noundef %0) local_unnamed_addr #1 {
  store ptr @.str.184, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.185, ptr %2, align 8, !tbaa !107
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.186, ptr %3, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_border_select_invoke, ptr %4, align 8, !tbaa !122
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view_ghost_border_exec, ptr %5, align 8, !tbaa !109
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_border_select_modal, ptr %6, align 8, !tbaa !132
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_view_poll, ptr %7, align 8, !tbaa !110
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_border_select_cancel, ptr %8, align 8, !tbaa !248
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %9, align 8, !tbaa !111
  tail call void @WM_operator_properties_gesture_border(ptr noundef nonnull %0, i8 noundef zeroext 0) #15
  ret void
}

; Function Attrs: optsize
declare i32 @WM_border_select_invoke(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view_ghost_border_exec(ptr noundef %0, ptr noundef %1) #1 !PGOFuncName !249 {
  %3 = alloca %struct.rctf, align 16
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %5 = tail call ptr @UI_view2d_fromcontext(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  call void @WM_operator_properties_border_to_rctf(ptr noundef %1, ptr noundef nonnull %3) #15
  call void @UI_view2d_region_to_view_rctf(ptr noundef %5, ptr noundef nonnull %3, ptr noundef nonnull %3) #15
  %6 = call fastcc float @BLI_rctf_size_x(ptr noundef %5) #17
  %7 = call fastcc float @BLI_rctf_size_y(ptr noundef %5) #17
  %8 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 2
  %9 = call fastcc float @BLI_rctf_size_x(ptr noundef %5) #17
  %10 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 1
  %11 = call fastcc float @BLI_rctf_size_y(ptr noundef %5) #17
  %12 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 3
  %13 = insertelement <4 x float> poison, float %6, i64 0
  %14 = insertelement <4 x float> %13, float %9, i64 1
  %15 = insertelement <4 x float> %14, float %7, i64 2
  %16 = insertelement <4 x float> %15, float %11, i64 3
  %17 = call <4 x float> @llvm.fabs.v4f32(<4 x float> %16)
  %18 = load <4 x float>, ptr %3, align 16, !tbaa !78
  %19 = fdiv <4 x float> %18, %17
  %20 = fadd <4 x float> %19, <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>
  store <4 x float> %20, ptr %3, align 16, !tbaa !78
  %21 = extractelement <4 x float> %20, i64 0
  %22 = fcmp olt float %21, 0.000000e+00
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store float 0.000000e+00, ptr %3, align 16, !tbaa !44
  br label %27

24:                                               ; preds = %2
  %25 = fcmp ogt float %21, 1.000000e+00
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  store float 1.000000e+00, ptr %3, align 16, !tbaa !44
  br label %27

27:                                               ; preds = %24, %26, %23
  %28 = extractelement <4 x float> %20, i64 2
  %29 = fcmp olt float %28, 0.000000e+00
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = fcmp ogt float %28, 1.000000e+00
  br i1 %31, label %32, label %34

32:                                               ; preds = %30, %27
  %33 = phi float [ 0.000000e+00, %27 ], [ 1.000000e+00, %30 ]
  store float %33, ptr %8, align 8, !tbaa !47
  br label %34

34:                                               ; preds = %32, %30
  %35 = extractelement <4 x float> %20, i64 1
  %36 = fcmp olt float %35, 0.000000e+00
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = fcmp ogt float %35, 1.000000e+00
  br i1 %38, label %39, label %41

39:                                               ; preds = %37, %34
  %40 = phi float [ 0.000000e+00, %34 ], [ 1.000000e+00, %37 ]
  store float %40, ptr %10, align 4, !tbaa !85
  br label %41

41:                                               ; preds = %39, %37
  %42 = extractelement <4 x float> %20, i64 3
  %43 = fcmp olt float %42, 0.000000e+00
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = fcmp ogt float %42, 1.000000e+00
  br i1 %45, label %46, label %48

46:                                               ; preds = %44, %41
  %47 = phi float [ 0.000000e+00, %41 ], [ 1.000000e+00, %44 ]
  store float %47, ptr %12, align 4, !tbaa !52
  br label %48

48:                                               ; preds = %46, %44
  %49 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 19
  %50 = load ptr, ptr %49, align 8, !tbaa !204
  %51 = getelementptr inbounds %struct.Editing, ptr %50, i64 0, i32 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %51, ptr noundef nonnull align 16 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !211
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %4) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  ret i32 4
}

; Function Attrs: optsize
declare i32 @WM_border_select_modal(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: optsize
declare void @WM_border_select_cancel(ptr noundef, ptr noundef) #3

; Function Attrs: optsize
declare void @WM_operator_properties_gesture_border(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @SEQUENCER_OT_rebuild_proxy(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.187, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.188, ptr %2, align 8, !tbaa !107
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.189, ptr %3, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_rebuild_proxy_exec, ptr %4, align 8, !tbaa !109
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sequencer_active, ptr %5, align 8, !tbaa !110
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %6, align 8, !tbaa !111
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_rebuild_proxy_exec(ptr noundef %0, ptr nocapture readnone %1) #1 !PGOFuncName !250 {
  tail call fastcc void @seq_proxy_build_job(ptr noundef %0) #17
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SEQUENCER_OT_change_effect_input(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.190, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.191, ptr %2, align 8, !tbaa !107
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.40, ptr %3, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_change_effect_input_exec, ptr %4, align 8, !tbaa !109
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_effect_poll, ptr %5, align 8, !tbaa !110
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !111
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !112
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.192, ptr noundef nonnull @prop_change_effect_input_types, i32 noundef 0, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.194) #15
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !251
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_change_effect_input_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !252 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 0) #15
  %5 = tail call ptr @BKE_sequencer_active_get(ptr noundef %3) #15
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !114
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.192) #15
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
  %21 = load ptr, ptr %19, align 8, !tbaa !75
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load ptr, ptr %20, align 8, !tbaa !75
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23, %18
  %27 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !164
  tail call void @BKE_report(ptr noundef %28, i32 noundef 32, ptr noundef nonnull @.str.220) #15
  br label %31

29:                                               ; preds = %23
  store ptr %24, ptr %19, align 8, !tbaa !75
  store ptr %21, ptr %20, align 8, !tbaa !75
  tail call void @BKE_sequencer_update_changed_seq_and_deps(ptr noundef %3, ptr noundef %5, i32 noundef 0, i32 noundef 1) #15
  %30 = getelementptr inbounds %struct.Editing, ptr %4, i64 0, i32 1
  tail call void @BKE_sequencer_free_imbuf(ptr noundef %3, ptr noundef nonnull %30, i8 noundef zeroext 0) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %3) #15
  br label %31

31:                                               ; preds = %29, %26
  %32 = phi i32 [ 2, %26 ], [ 4, %29 ]
  ret i32 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SEQUENCER_OT_change_effect_type(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.195, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.196, ptr %2, align 8, !tbaa !107
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.40, ptr %3, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_change_effect_type_exec, ptr %4, align 8, !tbaa !109
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_effect_poll, ptr %5, align 8, !tbaa !110
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !111
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !112
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.114, ptr noundef nonnull @sequencer_prop_effect_types, i32 noundef 8, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.197) #15
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !251
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_change_effect_type_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !253 {
  %3 = alloca %struct.SeqEffectHandle, align 8
  %4 = alloca %struct.SeqEffectHandle, align 8
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %6 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %5, i8 noundef zeroext 0) #15
  %7 = tail call ptr @BKE_sequencer_active_get(ptr noundef %5) #15
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !114
  %10 = tail call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.114) #15
  %11 = getelementptr inbounds %struct.Sequence, ptr %7, i64 0, i32 6
  %12 = load i32, ptr %11, align 4, !tbaa !102
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %2
  %16 = tail call i32 @BKE_sequence_effect_get_num_inputs(i32 noundef %12) #15
  %17 = tail call i32 @BKE_sequence_effect_get_num_inputs(i32 noundef %10) #15
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !164
  tail call void @BKE_report(ptr noundef %21, i32 noundef 32, ptr noundef nonnull @.str.227) #15
  br label %28

22:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #16
  call void @BKE_sequence_get_effect(ptr dead_on_unwind nonnull writable sret(%struct.SeqEffectHandle) align 8 %3, ptr noundef nonnull %7) #15
  %23 = getelementptr inbounds i8, ptr %3, i64 40
  %24 = load ptr, ptr %23, align 8, !tbaa.struct !254
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #16
  call void %24(ptr noundef nonnull %7) #15
  store i32 %10, ptr %11, align 4, !tbaa !102
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #16
  call void @BKE_sequence_get_effect(ptr dead_on_unwind nonnull writable sret(%struct.SeqEffectHandle) align 8 %4, ptr noundef nonnull %7) #15
  %25 = getelementptr inbounds i8, ptr %4, i64 8
  %26 = load ptr, ptr %25, align 8, !tbaa.struct !255
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #16
  call void %26(ptr noundef nonnull %7) #15
  call void @BKE_sequencer_update_changed_seq_and_deps(ptr noundef %5, ptr noundef nonnull %7, i32 noundef 0, i32 noundef 1) #15
  %27 = getelementptr inbounds %struct.Editing, ptr %6, i64 0, i32 1
  call void @BKE_sequencer_free_imbuf(ptr noundef %5, ptr noundef nonnull %27, i8 noundef zeroext 0) #15
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %5) #15
  br label %28

28:                                               ; preds = %2, %22, %19
  %29 = phi i32 [ 2, %19 ], [ 4, %22 ], [ 2, %2 ]
  ret i32 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SEQUENCER_OT_change_path(ptr noundef %0) local_unnamed_addr #1 {
  store ptr @.str.198, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.199, ptr %2, align 8, !tbaa !107
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.40, ptr %3, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_change_path_exec, ptr %4, align 8, !tbaa !109
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sequencer_change_path_invoke, ptr %5, align 8, !tbaa !122
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_strip_has_path_poll, ptr %6, align 8, !tbaa !110
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !111
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 2096, i16 noundef signext 9, i16 noundef signext 0, i16 noundef signext 27, i16 noundef signext 0) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_change_path_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !256 {
  %3 = alloca [1024 x i8], align 16
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.PointerRNA, align 8
  %7 = alloca [1024 x i8], align 16
  %8 = tail call ptr @CTX_data_main(ptr noundef %0) #15
  %9 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %10 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %9, i8 noundef zeroext 0) #15
  %11 = tail call ptr @BKE_sequencer_active_get(ptr noundef %9) #15
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !114
  %14 = tail call i32 @RNA_boolean_get(ptr noundef %13, ptr noundef nonnull @.str.228) #15
  %15 = getelementptr inbounds %struct.Sequence, ptr %11, i64 0, i32 6
  %16 = load i32, ptr %15, align 4, !tbaa !102
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %65

18:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #16
  %19 = load ptr, ptr %12, align 8, !tbaa !114
  %20 = tail call ptr @RNA_struct_find_property(ptr noundef %19, ptr noundef nonnull @.str.229) #15
  %21 = tail call i32 @RNA_property_collection_length(ptr noundef %19, ptr noundef %20) #15
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %69, label %23

23:                                               ; preds = %18
  %24 = load ptr, ptr %12, align 8, !tbaa !114
  call void @RNA_string_get(ptr noundef %24, ptr noundef nonnull @.str.230, ptr noundef nonnull %3) #15
  %25 = and i32 %14, 255
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.Main, ptr %8, i64 0, i32 2
  call void @BLI_path_rel(ptr noundef nonnull %3, ptr noundef nonnull %28) #15
  br label %29

29:                                               ; preds = %27, %23
  %30 = getelementptr inbounds %struct.Sequence, ptr %11, i64 0, i32 24
  %31 = load ptr, ptr %30, align 8, !tbaa !192
  %32 = getelementptr inbounds %struct.Strip, ptr %31, i64 0, i32 7
  %33 = call ptr @BLI_strncpy(ptr noundef nonnull %32, ptr noundef nonnull %3, i64 noundef 768) #15
  %34 = load ptr, ptr %30, align 8, !tbaa !192
  %35 = getelementptr inbounds %struct.Strip, ptr %34, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !195
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %29
  %39 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  call void %39(ptr noundef nonnull %36) #15
  br label %40

40:                                               ; preds = %38, %29
  %41 = load ptr, ptr @MEM_callocN, align 8, !tbaa !75
  %42 = sext i32 %21 to i64
  %43 = mul nsw i64 %42, 264
  %44 = call ptr %41(i64 noundef %43, ptr noundef nonnull @.str.231) #15
  %45 = load ptr, ptr %30, align 8, !tbaa !192
  %46 = getelementptr inbounds %struct.Strip, ptr %45, i64 0, i32 6
  store ptr %44, ptr %46, align 8, !tbaa !195
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #16
  %47 = load ptr, ptr %12, align 8, !tbaa !114
  call void @RNA_collection_begin(ptr noundef %47, ptr noundef nonnull @.str.229, ptr noundef nonnull %4) #15
  %48 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %49 = load i32, ptr %48, align 8, !tbaa !257
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %40
  %52 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6
  br label %53

53:                                               ; preds = %51, %53
  %54 = phi ptr [ %44, %51 ], [ %58, %53 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %52, i64 24, i1 false), !tbaa.struct !261
  %55 = call ptr @RNA_string_get_alloc(ptr noundef nonnull %5, ptr noundef nonnull @.str.232, ptr noundef null, i32 noundef 0) #15
  %56 = call ptr @BLI_strncpy(ptr noundef %54, ptr noundef %55, i64 noundef 256) #15
  %57 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  call void %57(ptr noundef %55) #15
  %58 = getelementptr inbounds %struct.StripElem, ptr %54, i64 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  call void @RNA_property_collection_next(ptr noundef nonnull %4) #15
  %59 = load i32, ptr %48, align 8, !tbaa !257
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %53, !llvm.loop !262

61:                                               ; preds = %53, %40
  call void @RNA_property_collection_end(ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #16
  %62 = getelementptr inbounds %struct.Sequence, ptr %11, i64 0, i32 45
  store i32 0, ptr %62, align 4, !tbaa !263
  %63 = getelementptr inbounds %struct.Sequence, ptr %11, i64 0, i32 44
  store i32 0, ptr %63, align 8, !tbaa !264
  call void @BKE_sequence_reload_new_file(ptr noundef %9, ptr noundef %11, i8 noundef zeroext 1) #15
  call void @BKE_sequence_calc(ptr noundef %9, ptr noundef %11) #15
  %64 = getelementptr inbounds %struct.Editing, ptr %10, i64 0, i32 1
  call void @BKE_sequencer_free_imbuf(ptr noundef %9, ptr noundef nonnull %64, i8 noundef zeroext 0) #15
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #16
  br label %68

65:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #16
  call void @RNA_pointer_create(ptr noundef %9, ptr noundef nonnull @RNA_Sequence, ptr noundef nonnull %11, ptr noundef nonnull %6) #15
  %66 = load ptr, ptr %12, align 8, !tbaa !114
  call void @RNA_string_get(ptr noundef %66, ptr noundef nonnull @.str.233, ptr noundef nonnull %7) #15
  %67 = call ptr @RNA_struct_find_property(ptr noundef nonnull %6, ptr noundef nonnull @.str.233) #15
  call void @RNA_property_string_set(ptr noundef nonnull %6, ptr noundef %67, ptr noundef nonnull %7) #15
  call void @RNA_property_update(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %67) #15
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  br label %68

68:                                               ; preds = %61, %65
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %9) #15
  br label %70

69:                                               ; preds = %18
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #16
  br label %70

70:                                               ; preds = %69, %68
  %71 = phi i32 [ 4, %68 ], [ 2, %69 ]
  ret i32 %71
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_change_path_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #1 !PGOFuncName !265 {
  %4 = alloca [1024 x i8], align 16
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %6 = tail call ptr @BKE_sequencer_active_get(ptr noundef %5) #15
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #16
  %7 = getelementptr inbounds %struct.Sequence, ptr %6, i64 0, i32 24
  %8 = load ptr, ptr %7, align 8, !tbaa !192
  %9 = getelementptr inbounds %struct.Strip, ptr %8, i64 0, i32 7
  %10 = getelementptr inbounds %struct.Strip, ptr %8, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !195
  call void @BLI_join_dirfile(ptr noundef nonnull %4, i64 noundef 1024, ptr noundef nonnull %9, ptr noundef %11) #15
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !114
  %14 = load ptr, ptr %7, align 8, !tbaa !192
  %15 = getelementptr inbounds %struct.Strip, ptr %14, i64 0, i32 7
  call void @RNA_string_set(ptr noundef %13, ptr noundef nonnull @.str.230, ptr noundef nonnull %15) #15
  %16 = load ptr, ptr %12, align 8, !tbaa !114
  call void @RNA_string_set(ptr noundef %16, ptr noundef nonnull @.str.233, ptr noundef nonnull %4) #15
  %17 = getelementptr inbounds %struct.Sequence, ptr %6, i64 0, i32 6
  %18 = load i32, ptr %17, align 4, !tbaa !102
  %19 = icmp eq i32 %18, 0
  %20 = load ptr, ptr %12, align 8, !tbaa !114
  %21 = select i1 %19, ptr @.str.234, ptr @.str.235
  call void @RNA_boolean_set(ptr noundef %20, ptr noundef nonnull %21, i32 noundef 0) #15
  call void @WM_event_add_fileselect(ptr noundef %0, ptr noundef nonnull %1) #15
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #16
  ret i32 1
}

; Function Attrs: optsize
declare void @WM_operator_properties_filesel(ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BKE_sequencer_evaluate_frame(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @sequence_offset_after_frame(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 !PGOFuncName !266 {
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %0, i8 noundef zeroext 0) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %4, align 8, !tbaa !73
  %8 = load ptr, ptr %7, align 8, !tbaa !75
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %6, %17
  %11 = phi ptr [ %19, %17 ], [ %8, %6 ]
  %12 = phi i8 [ %18, %17 ], [ 0, %6 ]
  %13 = getelementptr inbounds %struct.Sequence, ptr %11, i64 0, i32 15
  %14 = load i32, ptr %13, align 8, !tbaa !80
  %15 = icmp slt i32 %14, %2
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  tail call void @BKE_sequence_translate(ptr noundef %0, ptr noundef nonnull %11, i32 noundef %1) #15
  tail call void @BKE_sequence_calc(ptr noundef %0, ptr noundef nonnull %11) #15
  br label %17

17:                                               ; preds = %10, %16
  %18 = phi i8 [ 1, %16 ], [ %12, %10 ]
  %19 = load ptr, ptr %11, align 8, !tbaa !75
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %10, !llvm.loop !267

21:                                               ; preds = %17, %6, %3
  %22 = phi i8 [ 0, %3 ], [ 0, %6 ], [ %18, %17 ]
  ret i8 %22
}

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_sequence_translate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_sequence_calc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_sequence_tx_set_final_left(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_sequence_tx_set_final_right(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_sequence_tx_handle_xlimits(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BKE_sequence_test_overlap(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BKE_sequence_base_shuffle(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_sequencer_sort(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @UI_view2d_fromcontext(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @slip_count_sequences_rec(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #8 !PGOFuncName !268 {
  %3 = load ptr, ptr %0, align 8, !tbaa !75
  %4 = icmp eq ptr %3, null
  br i1 %4, label %31, label %5

5:                                                ; preds = %2
  %6 = icmp eq i8 %1, 0
  br label %7

7:                                                ; preds = %5, %27
  %8 = phi ptr [ %3, %5 ], [ %29, %27 ]
  %9 = phi i32 [ 0, %5 ], [ %28, %27 ]
  %10 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 6
  %11 = load i32, ptr %10, align 4, !tbaa !102
  br i1 %6, label %20, label %12

12:                                               ; preds = %7
  %13 = and i32 %11, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !79
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %7, %15
  %21 = add nsw i32 %9, 1
  %22 = icmp eq i32 %11, 1
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 36
  %25 = tail call fastcc i32 @slip_count_sequences_rec(ptr noundef nonnull %24, i8 noundef zeroext 0) #17
  %26 = add nsw i32 %25, %21
  br label %27

27:                                               ; preds = %12, %15, %23, %20
  %28 = phi i32 [ %9, %12 ], [ %26, %23 ], [ %21, %20 ], [ %9, %15 ]
  %29 = load ptr, ptr %8, align 8, !tbaa !75
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %7, !llvm.loop !269

31:                                               ; preds = %27, %2
  %32 = phi i32 [ 0, %2 ], [ %28, %27 ]
  ret i32 %32
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @slip_add_sequences_rec(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, i32 noundef %3, i8 noundef zeroext %4) unnamed_addr #6 !PGOFuncName !270 {
  %6 = load ptr, ptr %0, align 8, !tbaa !75
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
  %15 = load i32, ptr %14, align 4, !tbaa !102
  %16 = and i32 %15, 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %44

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.Sequence, ptr %11, i64 0, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !79
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %44, label %23

23:                                               ; preds = %18, %10
  %24 = add nsw i32 %12, %3
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds ptr, ptr %1, i64 %25
  store ptr %11, ptr %26, align 8, !tbaa !75
  %27 = getelementptr inbounds i8, ptr %2, i64 %25
  store i8 %4, ptr %27, align 1, !tbaa !271
  %28 = add nsw i32 %12, 1
  %29 = getelementptr inbounds %struct.Sequence, ptr %11, i64 0, i32 6
  %30 = load i32, ptr %29, align 4, !tbaa !102
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %37

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.Sequence, ptr %11, i64 0, i32 36
  %34 = add nsw i32 %28, %3
  %35 = tail call fastcc i32 @slip_add_sequences_rec(ptr noundef nonnull %33, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %34, i8 noundef zeroext 0) #17
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
  store i8 0, ptr %43, align 1, !tbaa !271
  br label %44

44:                                               ; preds = %13, %18, %37, %40, %32
  %45 = phi i32 [ %12, %13 ], [ %36, %32 ], [ %28, %40 ], [ %28, %37 ], [ %12, %18 ]
  %46 = load ptr, ptr %11, align 8, !tbaa !75
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %10, !llvm.loop !272

48:                                               ; preds = %44, %5
  %49 = phi i32 [ 0, %5 ], [ %45, %44 ]
  ret i32 %49
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @transseq_backup(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !273 {
  %3 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 8
  %4 = load i32, ptr %3, align 4, !tbaa !49
  store i32 %4, ptr %0, align 4, !tbaa !274
  %5 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 13
  %6 = load i32, ptr %5, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.TransSeq, ptr %0, i64 0, i32 1
  store i32 %6, ptr %7, align 4, !tbaa !276
  %8 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 11
  %9 = getelementptr inbounds %struct.TransSeq, ptr %0, i64 0, i32 2
  %10 = load <2 x i32>, ptr %8, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 15
  %12 = load <2 x i32>, ptr %11, align 8, !tbaa !43
  %13 = shufflevector <2 x i32> %10, <2 x i32> %12, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %13, ptr %9, align 4, !tbaa !43
  %14 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 9
  %15 = getelementptr inbounds %struct.TransSeq, ptr %0, i64 0, i32 6
  %16 = load <2 x i32>, ptr %14, align 8, !tbaa !43
  %17 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 44
  %18 = load <2 x i32>, ptr %17, align 8, !tbaa !43
  %19 = shufflevector <2 x i32> %16, <2 x i32> %18, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %19, ptr %15, align 4, !tbaa !43
  %20 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 7
  %21 = load i32, ptr %20, align 8, !tbaa !50
  %22 = getelementptr inbounds %struct.TransSeq, ptr %0, i64 0, i32 10
  store i32 %21, ptr %22, align 4, !tbaa !277
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2_int(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !278 {
  %3 = load i32, ptr %1, align 4, !tbaa !43
  store i32 %3, ptr %0, align 4, !tbaa !43
  %4 = getelementptr inbounds i32, ptr %1, i64 1
  %5 = load i32, ptr %4, align 4, !tbaa !43
  %6 = getelementptr inbounds i32, ptr %0, i64 1
  store i32 %5, ptr %6, align 4, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !279 {
  %3 = load float, ptr %1, align 4, !tbaa !78
  store float %3, ptr %0, align 4, !tbaa !78
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !78
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !78
  ret void
}

; Function Attrs: optsize
declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_area_headerprint(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @sequencer_slip_recursively(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #1 !PGOFuncName !280 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %70, label %5

5:                                                ; preds = %3
  %6 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %0, i8 noundef zeroext 0) #15
  %7 = getelementptr inbounds %struct.SlipData, ptr %1, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !139
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %68

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.SlipData, ptr %1, i64 0, i32 3
  %12 = getelementptr inbounds %struct.SlipData, ptr %1, i64 0, i32 2
  %13 = getelementptr inbounds %struct.SlipData, ptr %1, i64 0, i32 4
  %14 = zext nneg i32 %8 to i64
  %15 = insertelement <2 x i32> poison, i32 %2, i64 0
  %16 = shufflevector <2 x i32> %15, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %17

17:                                               ; preds = %10, %66
  %18 = phi i64 [ %14, %10 ], [ %19, %66 ]
  %19 = add nsw i64 %18, -1
  %20 = load ptr, ptr %11, align 8, !tbaa !137
  %21 = getelementptr inbounds ptr, ptr %20, i64 %19
  %22 = load ptr, ptr %21, align 8, !tbaa !75
  %23 = load ptr, ptr %12, align 8, !tbaa !135
  %24 = getelementptr inbounds %struct.TransSeq, ptr %23, i64 %19
  %25 = load i32, ptr %24, align 4, !tbaa !274
  %26 = add nsw i32 %25, %2
  %27 = getelementptr inbounds %struct.Sequence, ptr %22, i64 0, i32 8
  store i32 %26, ptr %27, align 4, !tbaa !49
  %28 = load ptr, ptr %13, align 8, !tbaa !138
  %29 = getelementptr inbounds i8, ptr %28, i64 %19
  %30 = load i8, ptr %29, align 1, !tbaa !271
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %55, label %32

32:                                               ; preds = %17
  %33 = getelementptr inbounds %struct.Sequence, ptr %22, i64 0, i32 7
  %34 = load i32, ptr %33, align 8, !tbaa !50
  %35 = add nsw i32 %34, %26
  %36 = getelementptr inbounds %struct.Sequence, ptr %22, i64 0, i32 16
  %37 = load i32, ptr %36, align 4, !tbaa !51
  %38 = icmp sgt i32 %35, %37
  %39 = sub nsw i32 %35, %37
  %40 = sub nsw i32 %37, %35
  %41 = select i1 %38, i32 0, i32 %40
  %42 = select i1 %38, i32 %39, i32 0
  %43 = getelementptr inbounds %struct.Sequence, ptr %22, i64 0, i32 12
  store i32 %41, ptr %43, align 4
  %44 = getelementptr inbounds %struct.Sequence, ptr %22, i64 0, i32 10
  store i32 %42, ptr %44, align 4
  %45 = getelementptr inbounds %struct.Sequence, ptr %22, i64 0, i32 15
  %46 = load i32, ptr %45, align 8, !tbaa !80
  %47 = icmp sgt i32 %26, %46
  %48 = getelementptr inbounds %struct.Sequence, ptr %22, i64 0, i32 9
  br i1 %47, label %49, label %52

49:                                               ; preds = %32
  %50 = sub nsw i32 %26, %46
  %51 = getelementptr inbounds %struct.Sequence, ptr %22, i64 0, i32 11
  store i32 %50, ptr %51, align 8, !tbaa !34
  store i32 0, ptr %48, align 8, !tbaa !126
  br label %60

52:                                               ; preds = %32
  %53 = getelementptr inbounds %struct.Sequence, ptr %22, i64 0, i32 11
  store i32 0, ptr %53, align 8, !tbaa !34
  %54 = sub nsw i32 %46, %26
  store i32 %54, ptr %48, align 8, !tbaa !126
  br label %60

55:                                               ; preds = %17
  %56 = getelementptr inbounds %struct.TransSeq, ptr %23, i64 %19, i32 4
  %57 = getelementptr inbounds %struct.Sequence, ptr %22, i64 0, i32 15
  %58 = load <2 x i32>, ptr %56, align 4, !tbaa !43
  %59 = add nsw <2 x i32> %58, %16
  store <2 x i32> %59, ptr %57, align 8, !tbaa !43
  br label %60

60:                                               ; preds = %49, %52, %55
  %61 = getelementptr inbounds %struct.Sequence, ptr %22, i64 0, i32 6
  %62 = load i32, ptr %61, align 4, !tbaa !102
  %63 = and i32 %62, 8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  tail call void @BKE_sequence_calc(ptr noundef %0, ptr noundef nonnull %22) #15
  br label %66

66:                                               ; preds = %65, %60
  %67 = icmp ugt i64 %18, 1
  br i1 %67, label %17, label %68, !llvm.loop !281

68:                                               ; preds = %66, %5
  %69 = getelementptr inbounds %struct.Editing, ptr %6, i64 0, i32 1
  tail call void @BKE_sequencer_free_imbuf(ptr noundef %0, ptr noundef nonnull %69, i8 noundef zeroext 0) #15
  br label %70

70:                                               ; preds = %3, %68
  %71 = phi i8 [ 1, %68 ], [ 0, %3 ]
  ret i8 %71
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @transseq_restore(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #9 !PGOFuncName !282 {
  %3 = load i32, ptr %0, align 4, !tbaa !274
  %4 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 8
  store i32 %3, ptr %4, align 4, !tbaa !49
  %5 = getelementptr inbounds %struct.TransSeq, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !276
  %7 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 13
  store i32 %6, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.TransSeq, ptr %0, i64 0, i32 2
  %9 = load <2 x i32>, ptr %8, align 4, !tbaa !43
  %10 = getelementptr inbounds %struct.TransSeq, ptr %0, i64 0, i32 4
  %11 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 15
  %12 = load <2 x i32>, ptr %10, align 4, !tbaa !43
  store <2 x i32> %12, ptr %11, align 8, !tbaa !43
  %13 = getelementptr inbounds %struct.TransSeq, ptr %0, i64 0, i32 6
  %14 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 9
  %15 = load <2 x i32>, ptr %13, align 4, !tbaa !43
  %16 = shufflevector <2 x i32> %15, <2 x i32> %9, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %16, ptr %14, align 8, !tbaa !43
  %17 = getelementptr inbounds %struct.TransSeq, ptr %0, i64 0, i32 8
  %18 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 44
  %19 = load <2 x i32>, ptr %17, align 4, !tbaa !43
  store <2 x i32> %19, ptr %18, align 8, !tbaa !43
  %20 = getelementptr inbounds %struct.TransSeq, ptr %0, i64 0, i32 10
  %21 = load i32, ptr %20, align 4, !tbaa !277
  %22 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 7
  store i32 %21, ptr %22, align 8, !tbaa !50
  ret void
}

; Function Attrs: optsize
declare void @BKE_sequence_reload_new_file(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_sequencer_free_imbuf(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_sequence_invalidate_dependent(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_sequencer_update_muting(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_sequencer_update_changed_seq_and_deps(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @seq_is_predecessor(ptr noundef readonly %0, ptr noundef readnone %1) unnamed_addr #8 !PGOFuncName !283 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %0, %1
  %5 = or i1 %3, %4
  br i1 %5, label %31, label %6

6:                                                ; preds = %2
  %7 = tail call fastcc zeroext i8 @seq_is_parent(ptr noundef nonnull %0, ptr noundef %1) #17, !range !96
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %31

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 33
  %11 = load ptr, ptr %10, align 8, !tbaa !128
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = tail call fastcc zeroext i8 @seq_is_predecessor(ptr noundef nonnull %11, ptr noundef %1) #17, !range !96
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %13, %9
  %17 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 34
  %18 = load ptr, ptr %17, align 8, !tbaa !129
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = tail call fastcc zeroext i8 @seq_is_predecessor(ptr noundef nonnull %18, ptr noundef %1) #17, !range !96
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %20, %16
  %24 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 35
  %25 = load ptr, ptr %24, align 8, !tbaa !130
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = tail call fastcc zeroext i8 @seq_is_predecessor(ptr noundef nonnull %25, ptr noundef %1) #17, !range !96
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %23
  br label %31

31:                                               ; preds = %27, %20, %13, %6, %2, %30
  %32 = phi i8 [ 0, %30 ], [ 0, %2 ], [ 1, %6 ], [ 1, %13 ], [ 1, %20 ], [ 1, %27 ]
  ret i8 %32
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @seq_is_parent(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #4 !PGOFuncName !284 {
  %3 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 33
  %4 = load ptr, ptr %3, align 8, !tbaa !128
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 34
  %8 = load ptr, ptr %7, align 8, !tbaa !129
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 35
  %12 = load ptr, ptr %11, align 8, !tbaa !130
  %13 = icmp eq ptr %12, %1
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %10, %6, %2
  %16 = phi i8 [ 1, %6 ], [ 1, %2 ], [ %14, %10 ]
  ret i8 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @mouse_frame_side(ptr noundef %0, i16 noundef signext %1, i32 noundef %2) unnamed_addr #1 !PGOFuncName !285 {
  %4 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %5 = sitofp i16 %1 to float
  %6 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef %0, float noundef %5, float noundef 0.000000e+00, ptr noundef nonnull %4, ptr noundef nonnull %6) #15
  %7 = load float, ptr %4, align 4, !tbaa !78
  %8 = sitofp i32 %2 to float
  %9 = fcmp ogt float %7, %8
  %10 = select i1 %9, i32 2, i32 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret i32 %10
}

; Function Attrs: optsize
declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @cut_seq_list(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #1 !PGOFuncName !286 {
  %5 = load ptr, ptr %1, align 8, !tbaa !174
  %6 = icmp eq ptr %5, null
  br i1 %6, label %41, label %7

7:                                                ; preds = %4, %33
  %8 = phi ptr [ %10, %33 ], [ %5, %4 ]
  %9 = phi ptr [ %34, %33 ], [ null, %4 ]
  %10 = load ptr, ptr %8, align 8, !tbaa !175
  %11 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 2
  store ptr null, ptr %11, align 8, !tbaa !287
  %12 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !79
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %33, label %16

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 15
  %18 = load i32, ptr %17, align 8, !tbaa !80
  %19 = icmp slt i32 %18, %2
  %20 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 16
  %21 = load i32, ptr %20, align 4, !tbaa !51
  %22 = icmp sgt i32 %21, %2
  br i1 %19, label %23, label %27

23:                                               ; preds = %16
  br i1 %22, label %24, label %33

24:                                               ; preds = %23
  %25 = tail call ptr %3(ptr noundef %0, ptr noundef nonnull %8, i32 noundef %2) #15, !callees !288
  %26 = icmp eq ptr %25, null
  br i1 %26, label %33, label %29

27:                                               ; preds = %16
  br i1 %22, label %28, label %33

28:                                               ; preds = %27
  tail call void @BLI_remlink(ptr noundef nonnull %1, ptr noundef nonnull %8) #15
  br label %29

29:                                               ; preds = %24, %28
  %30 = phi ptr [ %8, %28 ], [ %25, %24 ]
  tail call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef nonnull %30) #15
  %31 = icmp eq ptr %9, null
  %32 = select i1 %31, ptr %30, ptr %9
  br label %33

33:                                               ; preds = %29, %23, %27, %24, %7
  %34 = phi ptr [ %9, %7 ], [ %9, %24 ], [ %9, %27 ], [ %9, %23 ], [ %32, %29 ]
  %35 = icmp ne ptr %10, null
  %36 = icmp ne ptr %10, %34
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %7, label %38, !llvm.loop !289

38:                                               ; preds = %33
  %39 = icmp ne ptr %34, null
  %40 = zext i1 %39 to i8
  br label %41

41:                                               ; preds = %38, %4
  %42 = phi i8 [ 0, %4 ], [ %40, %38 ]
  ret i8 %42
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @cut_seq_hard(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 !PGOFuncName !290 {
  %4 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 8
  %5 = load i32, ptr %4, align 4, !tbaa !49
  %6 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 11
  %7 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 12
  %8 = load i32, ptr %7, align 4, !tbaa !48
  %9 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 15
  %10 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 16
  %11 = load i32, ptr %10, align 4, !tbaa !51
  %12 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 10
  %13 = load i32, ptr %12, align 4, !tbaa !291
  %14 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 45
  %15 = load i32, ptr %14, align 4, !tbaa !263
  %16 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 7
  %17 = load i32, ptr %16, align 8, !tbaa !50
  %18 = load i32, ptr %6, align 8, !tbaa !34
  %19 = icmp ne i32 %18, 0
  %20 = icmp sgt i32 %5, %2
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %22, label %35

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %24 = load i32, ptr %23, align 4, !tbaa !102
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = sub nsw i32 %5, %2
  store i32 %27, ptr %6, align 8, !tbaa !34
  br label %103

28:                                               ; preds = %22
  %29 = add nsw i32 %2, -1
  store i32 %29, ptr %4, align 4, !tbaa !49
  %30 = load i32, ptr %9, align 8, !tbaa !80
  %31 = xor i32 %30, -1
  %32 = add i32 %31, %2
  store i32 %32, ptr %6, align 8, !tbaa !34
  %33 = add nsw i32 %17, -1
  %34 = add nsw i32 %33, %15
  store i32 %34, ptr %14, align 4, !tbaa !263
  store i32 0, ptr %7, align 4, !tbaa !48
  br label %52

35:                                               ; preds = %3
  %36 = add nsw i32 %17, %5
  %37 = icmp slt i32 %36, %2
  %38 = select i1 %20, i1 true, i1 %37
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  store i32 0, ptr %12, align 4, !tbaa !291
  store i32 0, ptr %7, align 4, !tbaa !48
  %40 = sub i32 %15, %2
  %41 = add i32 %40, %36
  store i32 %41, ptr %14, align 4, !tbaa !263
  br label %52

42:                                               ; preds = %35
  %43 = icmp sge i32 %36, %2
  %44 = icmp eq i32 %8, 0
  %45 = select i1 %43, i1 true, i1 %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %42
  %47 = add i32 %8, %2
  %48 = sub i32 %47, %11
  store i32 %48, ptr %7, align 4, !tbaa !48
  %49 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %50 = load i32, ptr %49, align 4, !tbaa !102
  %51 = icmp eq i32 %50, 1
  tail call void @BKE_sequence_reload_new_file(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext 0) #15
  tail call void @BKE_sequence_calc(ptr noundef %0, ptr noundef nonnull %1) #15
  br i1 %51, label %106, label %53

52:                                               ; preds = %42, %39, %28
  tail call void @BKE_sequence_reload_new_file(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext 0) #15
  tail call void @BKE_sequence_calc(ptr noundef %0, ptr noundef nonnull %1) #15
  br label %53

53:                                               ; preds = %46, %52
  %54 = tail call ptr @BKE_sequence_dupli_recursive(ptr noundef %0, ptr noundef null, ptr noundef nonnull %1, i32 noundef 5) #15
  %55 = icmp eq ptr %54, null
  br i1 %55, label %106, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.Sequence, ptr %54, i64 0, i32 5
  %58 = load i32, ptr %57, align 8, !tbaa !79
  %59 = or i32 %58, 1
  store i32 %59, ptr %57, align 8, !tbaa !79
  %60 = getelementptr inbounds %struct.Sequence, ptr %54, i64 0, i32 11
  %61 = load i32, ptr %60, align 8, !tbaa !34
  %62 = icmp ne i32 %61, 0
  %63 = getelementptr inbounds %struct.Sequence, ptr %54, i64 0, i32 8
  %64 = load i32, ptr %63, align 4, !tbaa !49
  %65 = add nsw i32 %64, 1
  %66 = icmp eq i32 %65, %2
  %67 = select i1 %62, i1 %66, i1 false
  br i1 %67, label %68, label %72

68:                                               ; preds = %56
  store i32 %5, ptr %63, align 4, !tbaa !49
  %69 = sub nsw i32 %5, %2
  store i32 %69, ptr %60, align 8, !tbaa !34
  %70 = getelementptr inbounds %struct.Sequence, ptr %54, i64 0, i32 45
  store i32 %15, ptr %70, align 4, !tbaa !263
  %71 = getelementptr inbounds %struct.Sequence, ptr %54, i64 0, i32 12
  store i32 %8, ptr %71, align 4, !tbaa !48
  br label %103

72:                                               ; preds = %56
  %73 = getelementptr inbounds %struct.Sequence, ptr %54, i64 0, i32 8
  %74 = icmp sgt i32 %64, %2
  %75 = getelementptr inbounds %struct.Sequence, ptr %54, i64 0, i32 7
  %76 = load i32, ptr %75, align 8, !tbaa !50
  %77 = add nsw i32 %76, %64
  %78 = icmp slt i32 %77, %2
  %79 = select i1 %74, i1 true, i1 %78
  br i1 %79, label %89, label %80

80:                                               ; preds = %72
  store i32 %2, ptr %73, align 4, !tbaa !49
  store i32 0, ptr %60, align 8, !tbaa !34
  %81 = getelementptr inbounds %struct.Sequence, ptr %54, i64 0, i32 9
  store i32 0, ptr %81, align 8, !tbaa !126
  %82 = getelementptr inbounds %struct.Sequence, ptr %54, i64 0, i32 10
  store i32 %13, ptr %82, align 4, !tbaa !291
  %83 = sub i32 %2, %5
  %84 = getelementptr inbounds %struct.Sequence, ptr %54, i64 0, i32 44
  %85 = load i32, ptr %84, align 8, !tbaa !264
  %86 = add nsw i32 %83, %85
  store i32 %86, ptr %84, align 8, !tbaa !264
  %87 = getelementptr inbounds %struct.Sequence, ptr %54, i64 0, i32 45
  store i32 %15, ptr %87, align 4, !tbaa !263
  %88 = getelementptr inbounds %struct.Sequence, ptr %54, i64 0, i32 12
  store i32 %8, ptr %88, align 4, !tbaa !48
  br label %103

89:                                               ; preds = %72
  %90 = icmp slt i32 %77, %2
  br i1 %90, label %91, label %103

91:                                               ; preds = %89
  %92 = getelementptr inbounds %struct.Sequence, ptr %54, i64 0, i32 12
  %93 = load i32, ptr %92, align 4, !tbaa !48
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %91
  store i32 %2, ptr %73, align 4, !tbaa !49
  %96 = getelementptr inbounds %struct.Sequence, ptr %54, i64 0, i32 9
  store i32 0, ptr %96, align 8, !tbaa !126
  %97 = add nsw i32 %17, -1
  %98 = getelementptr inbounds %struct.Sequence, ptr %54, i64 0, i32 44
  %99 = load i32, ptr %98, align 8, !tbaa !264
  %100 = add nsw i32 %97, %99
  store i32 %100, ptr %98, align 8, !tbaa !264
  %101 = xor i32 %2, -1
  %102 = add i32 %11, %101
  store i32 %102, ptr %92, align 4, !tbaa !48
  store i32 0, ptr %60, align 8, !tbaa !34
  br label %103

103:                                              ; preds = %68, %89, %91, %95, %80, %26
  %104 = phi ptr [ %1, %26 ], [ %54, %80 ], [ %54, %95 ], [ %54, %91 ], [ %54, %89 ], [ %54, %68 ]
  %105 = phi ptr [ null, %26 ], [ %54, %80 ], [ %54, %95 ], [ %54, %91 ], [ %54, %89 ], [ %54, %68 ]
  tail call void @BKE_sequence_reload_new_file(ptr noundef %0, ptr noundef nonnull %104, i8 noundef zeroext 0) #15
  tail call void @BKE_sequence_calc(ptr noundef %0, ptr noundef nonnull %104) #15
  br label %106

106:                                              ; preds = %103, %46, %53
  %107 = phi ptr [ null, %53 ], [ null, %46 ], [ %105, %103 ]
  ret ptr %107
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @cut_seq_soft(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 !PGOFuncName !292 {
  %4 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 8
  %5 = load i32, ptr %4, align 4, !tbaa !49
  %6 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 11
  %7 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 12
  %8 = load i32, ptr %7, align 4, !tbaa !48
  %9 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 15
  %10 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 16
  %11 = load i32, ptr %10, align 4, !tbaa !51
  %12 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 10
  %13 = load i32, ptr %12, align 4, !tbaa !291
  %14 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !50
  %16 = load i32, ptr %6, align 8, !tbaa !34
  %17 = icmp ne i32 %16, 0
  %18 = icmp sgt i32 %5, %2
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %20, label %32

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %22 = load i32, ptr %21, align 4, !tbaa !102
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = sub nsw i32 %5, %2
  store i32 %25, ptr %6, align 8, !tbaa !34
  br label %94

26:                                               ; preds = %20
  %27 = add nsw i32 %2, -1
  store i32 %27, ptr %4, align 4, !tbaa !49
  %28 = load i32, ptr %9, align 8, !tbaa !80
  %29 = xor i32 %28, -1
  %30 = add i32 %29, %2
  store i32 %30, ptr %6, align 8, !tbaa !34
  %31 = add nsw i32 %15, -1
  store i32 %31, ptr %12, align 4, !tbaa !291
  store i32 0, ptr %7, align 4, !tbaa !48
  br label %48

32:                                               ; preds = %3
  %33 = add nsw i32 %15, %5
  %34 = icmp slt i32 %33, %2
  %35 = select i1 %18, i1 true, i1 %34
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = sub nsw i32 %33, %2
  store i32 %37, ptr %12, align 4, !tbaa !291
  br label %48

38:                                               ; preds = %32
  %39 = icmp sge i32 %33, %2
  %40 = icmp eq i32 %8, 0
  %41 = select i1 %39, i1 true, i1 %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %38
  %43 = add i32 %8, %2
  %44 = sub i32 %43, %11
  store i32 %44, ptr %7, align 4, !tbaa !48
  %45 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %46 = load i32, ptr %45, align 4, !tbaa !102
  %47 = icmp eq i32 %46, 1
  tail call void @BKE_sequence_calc(ptr noundef %0, ptr noundef nonnull %1) #15
  br i1 %47, label %97, label %49

48:                                               ; preds = %38, %36, %26
  tail call void @BKE_sequence_calc(ptr noundef %0, ptr noundef nonnull %1) #15
  br label %49

49:                                               ; preds = %42, %48
  %50 = tail call ptr @BKE_sequence_dupli_recursive(ptr noundef %0, ptr noundef null, ptr noundef nonnull %1, i32 noundef 5) #15
  %51 = icmp eq ptr %50, null
  br i1 %51, label %97, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.Sequence, ptr %50, i64 0, i32 5
  %54 = load i32, ptr %53, align 8, !tbaa !79
  %55 = or i32 %54, 1
  store i32 %55, ptr %53, align 8, !tbaa !79
  %56 = getelementptr inbounds %struct.Sequence, ptr %50, i64 0, i32 11
  %57 = load i32, ptr %56, align 8, !tbaa !34
  %58 = icmp ne i32 %57, 0
  %59 = getelementptr inbounds %struct.Sequence, ptr %50, i64 0, i32 8
  %60 = load i32, ptr %59, align 4, !tbaa !49
  %61 = add nsw i32 %60, 1
  %62 = icmp eq i32 %61, %2
  %63 = select i1 %58, i1 %62, i1 false
  br i1 %63, label %64, label %68

64:                                               ; preds = %52
  store i32 %5, ptr %59, align 4, !tbaa !49
  %65 = sub nsw i32 %5, %2
  store i32 %65, ptr %56, align 8, !tbaa !34
  %66 = getelementptr inbounds %struct.Sequence, ptr %50, i64 0, i32 10
  store i32 %13, ptr %66, align 4, !tbaa !291
  %67 = getelementptr inbounds %struct.Sequence, ptr %50, i64 0, i32 12
  store i32 %8, ptr %67, align 4, !tbaa !48
  br label %94

68:                                               ; preds = %52
  %69 = getelementptr inbounds %struct.Sequence, ptr %50, i64 0, i32 8
  %70 = icmp sgt i32 %60, %2
  %71 = getelementptr inbounds %struct.Sequence, ptr %50, i64 0, i32 7
  %72 = load i32, ptr %71, align 8, !tbaa !50
  %73 = add nsw i32 %72, %60
  %74 = icmp slt i32 %73, %2
  %75 = select i1 %70, i1 true, i1 %74
  br i1 %75, label %81, label %76

76:                                               ; preds = %68
  store i32 0, ptr %56, align 8, !tbaa !34
  %77 = sub nsw i32 %2, %5
  %78 = getelementptr inbounds %struct.Sequence, ptr %50, i64 0, i32 9
  store i32 %77, ptr %78, align 8, !tbaa !126
  %79 = getelementptr inbounds %struct.Sequence, ptr %50, i64 0, i32 10
  store i32 %13, ptr %79, align 4, !tbaa !291
  %80 = getelementptr inbounds %struct.Sequence, ptr %50, i64 0, i32 12
  store i32 %8, ptr %80, align 4, !tbaa !48
  br label %94

81:                                               ; preds = %68
  %82 = icmp slt i32 %73, %2
  br i1 %82, label %83, label %94

83:                                               ; preds = %81
  %84 = getelementptr inbounds %struct.Sequence, ptr %50, i64 0, i32 12
  %85 = load i32, ptr %84, align 4, !tbaa !48
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %83
  %88 = add i32 %2, 1
  %89 = sub i32 %88, %15
  store i32 %89, ptr %69, align 4, !tbaa !49
  %90 = add nsw i32 %15, -1
  %91 = getelementptr inbounds %struct.Sequence, ptr %50, i64 0, i32 9
  store i32 %90, ptr %91, align 8, !tbaa !126
  %92 = xor i32 %2, -1
  %93 = add i32 %11, %92
  store i32 %93, ptr %84, align 4, !tbaa !48
  store i32 0, ptr %56, align 8, !tbaa !34
  br label %94

94:                                               ; preds = %64, %81, %83, %87, %76, %24
  %95 = phi ptr [ %1, %24 ], [ %50, %76 ], [ %50, %87 ], [ %50, %83 ], [ %50, %81 ], [ %50, %64 ]
  %96 = phi ptr [ null, %24 ], [ %50, %76 ], [ %50, %87 ], [ %50, %83 ], [ %50, %81 ], [ %50, %64 ]
  tail call void @BKE_sequence_calc(ptr noundef %0, ptr noundef nonnull %95) #15
  br label %97

97:                                               ; preds = %94, %42, %49
  %98 = phi ptr [ null, %49 ], [ null, %42 ], [ %96, %94 ]
  ret ptr %98
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_sequence_dupli_recursive(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: optsize
declare void @BKE_sequence_base_dupli_recursive(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_movelisttolist(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BKE_sequencer_recursive_apply(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @apply_unique_name_cb(ptr noundef %0, ptr noundef %1) #1 !PGOFuncName !293 {
  %3 = alloca [62 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 62, ptr nonnull %3) #16
  %4 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 4, i64 2
  %5 = call ptr @BLI_strncpy_utf8(ptr noundef nonnull %3, ptr noundef nonnull %4, i64 noundef 62) #15
  %6 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !204
  %8 = getelementptr inbounds %struct.Editing, ptr %7, i64 0, i32 1
  call void @BKE_sequence_base_unique_name_recursive(ptr noundef nonnull %8, ptr noundef %0) #15
  call void @BKE_sequencer_dupe_animdata(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 62, ptr nonnull %3) #16
  ret i32 1
}

; Function Attrs: optsize
declare ptr @BLI_strncpy_utf8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_sequence_base_unique_name_recursive(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_sequencer_dupe_animdata(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @WM_operator_confirm(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @del_seq_find_replace_recurs(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !PGOFuncName !294 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %69, label %4

4:                                                ; preds = %2, %65
  %5 = phi ptr [ %67, %65 ], [ %1, %2 ]
  %6 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !102
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !79
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %9, label %14, label %16

14:                                               ; preds = %4
  %15 = select i1 %13, ptr %5, ptr null
  br label %69

16:                                               ; preds = %4
  br i1 %13, label %17, label %51

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 33
  %19 = load ptr, ptr %18, align 8, !tbaa !128
  %20 = tail call fastcc ptr @del_seq_find_replace_recurs(ptr noundef %0, ptr noundef %19) #17
  %21 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 34
  %22 = load ptr, ptr %21, align 8, !tbaa !129
  %23 = tail call fastcc ptr @del_seq_find_replace_recurs(ptr noundef %0, ptr noundef %22) #17
  %24 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 35
  %25 = load ptr, ptr %24, align 8, !tbaa !130
  %26 = tail call fastcc ptr @del_seq_find_replace_recurs(ptr noundef %0, ptr noundef %25) #17
  %27 = load ptr, ptr %18, align 8, !tbaa !128
  %28 = icmp eq ptr %20, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %17
  %30 = load ptr, ptr %21, align 8, !tbaa !129
  %31 = icmp eq ptr %23, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load ptr, ptr %24, align 8, !tbaa !130
  %34 = icmp eq ptr %26, %33
  br i1 %34, label %51, label %35

35:                                               ; preds = %32, %29, %17
  %36 = icmp ne ptr %20, null
  %37 = icmp ne ptr %23, null
  %38 = select i1 %36, i1 true, i1 %37
  %39 = icmp ne ptr %26, null
  %40 = select i1 %38, i1 true, i1 %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = select i1 %37, ptr %23, ptr %26
  %43 = select i1 %36, ptr %20, ptr %42
  store ptr %43, ptr %18, align 8, !tbaa !128
  %44 = select i1 %36, ptr %20, ptr %26
  %45 = select i1 %37, ptr %23, ptr %44
  store ptr %45, ptr %21, align 8, !tbaa !129
  %46 = select i1 %36, ptr %20, ptr %23
  %47 = select i1 %39, ptr %26, ptr %46
  store ptr %47, ptr %24, align 8, !tbaa !130
  tail call void @BKE_sequencer_update_changed_seq_and_deps(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 1) #15
  br label %51

48:                                               ; preds = %35
  %49 = load i32, ptr %10, align 8, !tbaa !79
  %50 = or i32 %49, 1
  store i32 %50, ptr %10, align 8, !tbaa !79
  br label %51

51:                                               ; preds = %32, %48, %41, %16
  %52 = load i32, ptr %10, align 8, !tbaa !79
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %69, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 33
  %57 = load ptr, ptr %56, align 8, !tbaa !128
  %58 = tail call fastcc ptr @del_seq_find_replace_recurs(ptr noundef %0, ptr noundef %57) #17
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %69

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 34
  %62 = load ptr, ptr %61, align 8, !tbaa !129
  %63 = tail call fastcc ptr @del_seq_find_replace_recurs(ptr noundef %0, ptr noundef %62) #17
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 35
  %67 = load ptr, ptr %66, align 8, !tbaa !130
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %4

69:                                               ; preds = %65, %55, %60, %51, %2, %14
  %70 = phi ptr [ %15, %14 ], [ null, %2 ], [ null, %65 ], [ %58, %55 ], [ %63, %60 ], [ %5, %51 ]
  ret ptr %70
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @del_seq_clear_modifiers_recurs(ptr noundef %0, ptr noundef readnone %1) unnamed_addr #1 !PGOFuncName !295 {
  %3 = alloca %struct.SeqIterator, align 8
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %0, i8 noundef zeroext 0) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  call void @BKE_sequence_iterator_begin(ptr noundef %4, ptr noundef nonnull %3, i8 noundef zeroext 1) #15
  %5 = getelementptr inbounds %struct.SeqIterator, ptr %3, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !89
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %34, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.SeqIterator, ptr %3, i64 0, i32 3
  br label %10

10:                                               ; preds = %8, %31
  %11 = load ptr, ptr %9, align 8, !tbaa !91
  %12 = getelementptr inbounds %struct.Sequence, ptr %11, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !79
  %14 = and i32 %13, 1
  %15 = icmp ne i32 %14, 0
  %16 = icmp eq ptr %11, %1
  %17 = or i1 %16, %15
  br i1 %17, label %31, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.Sequence, ptr %11, i64 0, i32 51
  %20 = load ptr, ptr %19, align 8, !tbaa !75
  %21 = icmp eq ptr %20, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %18, %28
  %23 = phi ptr [ %29, %28 ], [ %20, %18 ]
  %24 = getelementptr inbounds %struct.SequenceModifierData, ptr %23, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !296
  %26 = icmp eq ptr %25, %1
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store ptr null, ptr %24, align 8, !tbaa !296
  br label %28

28:                                               ; preds = %22, %27
  %29 = load ptr, ptr %23, align 8, !tbaa !75
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %22, !llvm.loop !298

31:                                               ; preds = %28, %18, %10
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %3) #15
  %32 = load i32, ptr %5, align 8, !tbaa !89
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %10, !llvm.loop !299

34:                                               ; preds = %31, %2
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @recurs_del_seq_flag(ptr noundef %0, ptr noundef %1, i16 noundef signext %2, i16 noundef signext %3) unnamed_addr #1 !PGOFuncName !300 {
  %5 = tail call ptr @BKE_sequencer_active_get(ptr noundef %0) #15
  %6 = load ptr, ptr %1, align 8, !tbaa !174
  %7 = icmp eq ptr %6, null
  br i1 %7, label %31, label %8

8:                                                ; preds = %4
  %9 = zext nneg i16 %2 to i32
  %10 = icmp ne i16 %3, 0
  br label %11

11:                                               ; preds = %8, %29
  %12 = phi ptr [ %6, %8 ], [ %13, %29 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !175
  %14 = getelementptr inbounds %struct.Sequence, ptr %12, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !79
  %16 = and i32 %15, %9
  %17 = icmp ne i32 %16, 0
  %18 = or i1 %10, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %11
  tail call void @BLI_remlink(ptr noundef nonnull %1, ptr noundef nonnull %12) #15
  %20 = icmp eq ptr %12, %5
  br i1 %20, label %21, label %22

21:                                               ; preds = %19
  tail call void @BKE_sequencer_active_set(ptr noundef %0, ptr noundef null) #15
  br label %22

22:                                               ; preds = %21, %19
  %23 = getelementptr inbounds %struct.Sequence, ptr %12, i64 0, i32 6
  %24 = load i32, ptr %23, align 4, !tbaa !102
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.Sequence, ptr %12, i64 0, i32 36
  tail call fastcc void @recurs_del_seq_flag(ptr noundef %0, ptr noundef nonnull %27, i16 noundef signext %2, i16 noundef signext 1) #17
  br label %28

28:                                               ; preds = %26, %22
  tail call void @BKE_sequence_free(ptr noundef %0, ptr noundef nonnull %12) #15
  br label %29

29:                                               ; preds = %11, %28
  %30 = icmp eq ptr %13, null
  br i1 %30, label %31, label %11, !llvm.loop !301

31:                                               ; preds = %29, %4
  ret void
}

; Function Attrs: optsize
declare void @BKE_sequencer_active_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_sequence_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BKE_sequence_tx_get_final_left(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BKE_sequence_tx_get_final_right(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_sequencer_give_stripelem(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !302 {
  %2 = load ptr, ptr %0, align 8, !tbaa !174
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @BKE_sequence_base_isolated_sel_check(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_sequence_alloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_sequence_invalidate_cache(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #11 !PGOFuncName !303 {
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 %0)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #7 !PGOFuncName !304 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @seq_depends_on_meta(ptr noundef readonly %0, ptr noundef readnone %1) unnamed_addr #8 !PGOFuncName !305 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %26, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 33
  %6 = load ptr, ptr %5, align 8, !tbaa !128
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = tail call fastcc i32 @seq_depends_on_meta(ptr noundef nonnull %6, ptr noundef %1) #17, !range !95
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %8, %4
  %12 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 34
  %13 = load ptr, ptr %12, align 8, !tbaa !129
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = tail call fastcc i32 @seq_depends_on_meta(ptr noundef nonnull %13, ptr noundef %1) #17, !range !95
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %15, %11
  %19 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 35
  %20 = load ptr, ptr %19, align 8, !tbaa !130
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = tail call fastcc i32 @seq_depends_on_meta(ptr noundef nonnull %20, ptr noundef %1) #17, !range !95
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %18
  br label %26

26:                                               ; preds = %22, %15, %8, %2, %25
  %27 = phi i32 [ 0, %25 ], [ 1, %2 ], [ 1, %8 ], [ 1, %15 ], [ 1, %22 ]
  ret i32 %27
}

; Function Attrs: optsize
declare i32 @WM_operator_smooth_viewtx_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_view2d_smooth_view(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: optsize
declare void @UI_view2d_curRect_validate(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_view2d_sync(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_y(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !306 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !307
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !308
  %6 = sub nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: optsize
declare void @BLI_rctf_resize(ptr noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #5

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_wm_space_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_area_tag_refresh(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @min_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #11 !PGOFuncName !309 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_y(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !310 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %3 = load float, ptr %2, align 4, !tbaa !52
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !47
  %6 = fsub float %3, %5
  ret float %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_cent_y(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !311 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %3 = load float, ptr %2, align 4, !tbaa !47
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %5 = load float, ptr %4, align 4, !tbaa !52
  %6 = fadd float %3, %5
  %7 = fmul float %6, 5.000000e-01
  ret float %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @strip_jump_internal(ptr noundef %0, i16 noundef signext %1, i8 noundef zeroext %2) unnamed_addr #1 !PGOFuncName !312 {
  %4 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !116
  %6 = tail call fastcc i32 @find_next_prev_edit(ptr noundef %0, i32 noundef %5, i16 noundef signext %1, i8 noundef zeroext %2) #17
  %7 = icmp eq i32 %6, %5
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  store i32 %6, ptr %4, align 8, !tbaa !116
  br label %9

9:                                                ; preds = %8, %3
  %10 = phi i8 [ 1, %8 ], [ 0, %3 ]
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @find_next_prev_edit(ptr noundef %0, i32 noundef %1, i16 noundef signext %2, i8 noundef zeroext %3) unnamed_addr #1 !PGOFuncName !313 {
  %5 = alloca [2 x i32], align 4
  %6 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %0, i8 noundef zeroext 0) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %62, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !73
  %10 = load ptr, ptr %9, align 8, !tbaa !75
  %11 = icmp eq ptr %10, null
  br i1 %11, label %62, label %12

12:                                               ; preds = %8
  %13 = icmp eq i8 %3, 0
  %14 = getelementptr inbounds [2 x i32], ptr %5, i64 0, i64 1
  %15 = icmp eq i16 %2, 1
  br label %16

16:                                               ; preds = %12, %57
  %17 = phi ptr [ %10, %12 ], [ %60, %57 ]
  %18 = phi i32 [ %1, %12 ], [ %59, %57 ]
  %19 = phi i32 [ 600000, %12 ], [ %58, %57 ]
  %20 = getelementptr inbounds %struct.Sequence, ptr %17, i64 0, i32 5
  %21 = load i32, ptr %20, align 8, !tbaa !79
  %22 = and i32 %21, 32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %57

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.Sequence, ptr %17, i64 0, i32 15
  %26 = load i32, ptr %25, align 8, !tbaa !80
  %27 = getelementptr inbounds %struct.Sequence, ptr %17, i64 0, i32 16
  %28 = load i32, ptr %27, align 4, !tbaa !51
  br i1 %13, label %32, label %29

29:                                               ; preds = %24
  %30 = add nsw i32 %28, %26
  %31 = sdiv i32 %30, 2
  br label %33

32:                                               ; preds = %24
  store i32 %28, ptr %14, align 4, !tbaa !43
  br label %33

33:                                               ; preds = %32, %29
  %34 = phi i32 [ %26, %32 ], [ %31, %29 ]
  %35 = phi i64 [ 2, %32 ], [ 1, %29 ]
  store i32 %34, ptr %5, align 4
  br label %36

36:                                               ; preds = %33, %50
  %37 = phi i64 [ 0, %33 ], [ %55, %50 ]
  %38 = phi i32 [ %18, %33 ], [ %54, %50 ]
  %39 = phi i32 [ %19, %33 ], [ %53, %50 ]
  %40 = getelementptr inbounds [2 x i32], ptr %5, i64 0, i64 %37
  %41 = load i32, ptr %40, align 4, !tbaa !43
  br i1 %15, label %42, label %46

42:                                               ; preds = %36
  %43 = icmp slt i32 %41, %1
  %44 = sub nsw i32 %1, %41
  %45 = select i1 %43, i32 %44, i32 600000
  br label %50

46:                                               ; preds = %36
  %47 = icmp sgt i32 %41, %1
  %48 = sub nsw i32 %41, %1
  %49 = select i1 %47, i32 %48, i32 600000
  br label %50

50:                                               ; preds = %46, %42
  %51 = phi i32 [ %45, %42 ], [ %49, %46 ]
  %52 = icmp slt i32 %51, %39
  %53 = tail call i32 @llvm.smin.i32(i32 %51, i32 %39)
  %54 = select i1 %52, i32 %41, i32 %38
  %55 = add nuw nsw i64 %37, 1
  %56 = icmp eq i64 %55, %35
  br i1 %56, label %57, label %36, !llvm.loop !314

57:                                               ; preds = %50, %16
  %58 = phi i32 [ %19, %16 ], [ %53, %50 ]
  %59 = phi i32 [ %18, %16 ], [ %54, %50 ]
  %60 = load ptr, ptr %17, align 8, !tbaa !75
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %16, !llvm.loop !315

62:                                               ; preds = %57, %8, %4
  %63 = phi i32 [ %1, %4 ], [ %1, %8 ], [ %59, %57 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  ret i32 %63
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_next_prev_sequence(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) unnamed_addr #1 !PGOFuncName !316 {
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %0, i8 noundef zeroext 0) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %60, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %4, align 8, !tbaa !73
  %8 = load ptr, ptr %7, align 8, !tbaa !75
  %9 = icmp eq ptr %8, null
  br i1 %9, label %60, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 13
  %12 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 14
  %13 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 16
  %14 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 15
  br label %15

15:                                               ; preds = %10, %55
  %16 = phi ptr [ %8, %10 ], [ %58, %55 ]
  %17 = phi i32 [ 600000, %10 ], [ %57, %55 ]
  %18 = phi ptr [ null, %10 ], [ %56, %55 ]
  %19 = icmp eq ptr %16, %1
  br i1 %19, label %55, label %20

20:                                               ; preds = %15
  %21 = load i32, ptr %11, align 8, !tbaa !46
  %22 = getelementptr inbounds %struct.Sequence, ptr %16, i64 0, i32 13
  %23 = load i32, ptr %22, align 8, !tbaa !46
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %55

25:                                               ; preds = %20
  %26 = load i32, ptr %12, align 4, !tbaa !125
  %27 = getelementptr inbounds %struct.Sequence, ptr %16, i64 0, i32 14
  %28 = load i32, ptr %27, align 4, !tbaa !125
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %55

30:                                               ; preds = %25
  switch i32 %2, label %50 [
    i32 1, label %31
    i32 2, label %41
  ]

31:                                               ; preds = %30
  %32 = getelementptr inbounds %struct.Sequence, ptr %16, i64 0, i32 16
  %33 = load i32, ptr %32, align 4, !tbaa !51
  %34 = load i32, ptr %14, align 8, !tbaa !80
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %50, label %36

36:                                               ; preds = %31
  %37 = load i32, ptr %13, align 4, !tbaa !51
  %38 = getelementptr inbounds %struct.Sequence, ptr %16, i64 0, i32 15
  %39 = load i32, ptr %38, align 8, !tbaa !80
  %40 = sub nsw i32 %37, %39
  br label %47

41:                                               ; preds = %30
  %42 = getelementptr inbounds %struct.Sequence, ptr %16, i64 0, i32 15
  %43 = load i32, ptr %42, align 8, !tbaa !80
  %44 = load i32, ptr %13, align 4, !tbaa !51
  %45 = icmp slt i32 %43, %44
  %46 = sub nsw i32 %43, %44
  br i1 %45, label %50, label %47

47:                                               ; preds = %41, %36
  %48 = phi i32 [ %40, %36 ], [ %46, %41 ]
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %41, %31, %30, %47
  %51 = phi i32 [ %48, %47 ], [ 600000, %30 ], [ 600000, %31 ], [ 600000, %41 ]
  %52 = icmp slt i32 %51, %17
  %53 = select i1 %52, ptr %16, ptr %18
  %54 = tail call i32 @llvm.smin.i32(i32 %51, i32 %17)
  br label %55

55:                                               ; preds = %50, %25, %20, %15
  %56 = phi ptr [ %18, %25 ], [ %18, %20 ], [ %18, %15 ], [ %53, %50 ]
  %57 = phi i32 [ %17, %25 ], [ %17, %20 ], [ %17, %15 ], [ %54, %50 ]
  %58 = load ptr, ptr %16, align 8, !tbaa !75
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %15, !llvm.loop !317

60:                                               ; preds = %47, %55, %6, %3
  %61 = phi ptr [ null, %3 ], [ null, %6 ], [ %16, %47 ], [ %56, %55 ]
  ret ptr %61
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @swap_sequence(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 !PGOFuncName !318 {
  %4 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 15
  %5 = load i32, ptr %4, align 8, !tbaa !80
  %6 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 16
  %7 = load i32, ptr %6, align 4, !tbaa !51
  %8 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 15
  %9 = load i32, ptr %8, align 8, !tbaa !80
  %10 = sub i32 %9, %5
  tail call void @BKE_sequence_translate(ptr noundef %0, ptr noundef %2, i32 noundef %10) #15
  tail call void @BKE_sequence_calc(ptr noundef %0, ptr noundef %2) #15
  %11 = load i32, ptr %8, align 8, !tbaa !80
  %12 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 16
  %13 = load i32, ptr %12, align 4, !tbaa !51
  %14 = add i32 %7, %11
  %15 = sub i32 %5, %14
  %16 = add i32 %15, %13
  tail call void @BKE_sequence_translate(ptr noundef %0, ptr noundef %1, i32 noundef %16) #15
  tail call void @BKE_sequence_calc(ptr noundef %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: optsize
declare void @BKE_sequencer_free_clipboard() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @seq_copy_del_sound(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #1 !PGOFuncName !319 {
  %3 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !102
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 36
  %8 = load ptr, ptr %7, align 8, !tbaa !75
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %6, %10
  %11 = phi ptr [ %12, %10 ], [ %8, %6 ]
  tail call fastcc void @seq_copy_del_sound(ptr noundef %0, ptr noundef nonnull %11) #17
  %12 = load ptr, ptr %11, align 8, !tbaa !75
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %10, !llvm.loop !320

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 38
  %16 = load ptr, ptr %15, align 8, !tbaa !246
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @sound_remove_scene_sound(ptr noundef %0, ptr noundef nonnull %16) #15
  store ptr null, ptr %15, align 8, !tbaa !246
  br label %19

19:                                               ; preds = %10, %6, %14, %18
  ret void
}

; Function Attrs: optsize
declare void @BKE_sequencer_base_clipboard_pointers_store(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @sound_remove_scene_sound(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_sequencer_base_clipboard_pointers_restore(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_sequence_sound_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BKE_sequencer_active_get_pair(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BKE_sequence_swap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @sound_add_scene_sound_defaults(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_operator_properties_border_to_rctf(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_view2d_region_to_view_rctf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @seq_proxy_build_job(ptr noundef %0) unnamed_addr #1 !PGOFuncName !321 {
  %2 = alloca %struct.SeqIterator, align 8
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 0) #15
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #15
  %6 = tail call ptr @CTX_wm_manager(ptr noundef %0) #15
  %7 = tail call ptr @CTX_wm_window(ptr noundef %0) #15
  %8 = tail call ptr @WM_jobs_get(ptr noundef %6, ptr noundef %7, ptr noundef %5, ptr noundef nonnull @.str.217, i32 noundef 4, i32 noundef 14) #15
  %9 = tail call ptr @WM_jobs_customdata_get(ptr noundef %8) #15
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !75
  %13 = tail call ptr %12(i64 noundef 40, ptr noundef nonnull @.str.218) #15
  store ptr %3, ptr %13, align 8, !tbaa !322
  %14 = tail call ptr @CTX_data_main(ptr noundef %0) #15
  %15 = getelementptr inbounds %struct.ProxyBuildJob, ptr %13, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !324
  tail call void @WM_jobs_customdata_set(ptr noundef %8, ptr noundef nonnull %13, ptr noundef nonnull @proxy_freejob) #15
  tail call void @WM_jobs_timer(ptr noundef %8, double noundef 1.000000e-01, i32 noundef 67502080, i32 noundef 67502080) #15
  tail call void @WM_jobs_callbacks(ptr noundef %8, ptr noundef nonnull @proxy_startjob, ptr noundef null, ptr noundef null, ptr noundef nonnull @proxy_endjob) #15
  br label %16

16:                                               ; preds = %11, %1
  %17 = phi ptr [ %9, %1 ], [ %13, %11 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #16
  call void @BKE_sequence_iterator_begin(ptr noundef %4, ptr noundef nonnull %2, i8 noundef zeroext 1) #15
  %18 = getelementptr inbounds %struct.SeqIterator, ptr %2, i64 0, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !89
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %39, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.SeqIterator, ptr %2, i64 0, i32 3
  %23 = getelementptr inbounds %struct.ProxyBuildJob, ptr %17, i64 0, i32 1
  %24 = getelementptr inbounds %struct.ProxyBuildJob, ptr %17, i64 0, i32 2
  br label %25

25:                                               ; preds = %21, %36
  %26 = load ptr, ptr %22, align 8, !tbaa !91
  %27 = getelementptr inbounds %struct.Sequence, ptr %26, i64 0, i32 5
  %28 = load i32, ptr %27, align 8, !tbaa !79
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %25
  %32 = load ptr, ptr %23, align 8, !tbaa !324
  %33 = load ptr, ptr %17, align 8, !tbaa !322
  %34 = call ptr @BKE_sequencer_proxy_rebuild_context(ptr noundef %32, ptr noundef %33, ptr noundef nonnull %26) #15
  %35 = call ptr @BLI_genericNodeN(ptr noundef %34) #15
  call void @BLI_addtail(ptr noundef nonnull %24, ptr noundef %35) #15
  br label %36

36:                                               ; preds = %25, %31
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %2) #15
  %37 = load i32, ptr %18, align 8, !tbaa !89
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %25, !llvm.loop !325

39:                                               ; preds = %36, %16
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %2) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #16
  %40 = call zeroext i8 @WM_jobs_is_running(ptr noundef %8) #15
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !326
  %43 = call ptr @CTX_wm_manager(ptr noundef %0) #15
  call void @WM_jobs_start(ptr noundef %43, ptr noundef %8) #15
  br label %44

44:                                               ; preds = %42, %39
  call void @ED_area_tag_redraw(ptr noundef %5) #15
  ret void
}

; Function Attrs: optsize
declare ptr @WM_jobs_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @WM_jobs_customdata_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_jobs_customdata_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @proxy_freejob(ptr noundef %0) #1 !PGOFuncName !327 {
  %2 = getelementptr inbounds %struct.ProxyBuildJob, ptr %0, i64 0, i32 2
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #15
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  tail call void %3(ptr noundef %0) #15
  ret void
}

; Function Attrs: optsize
declare void @WM_jobs_timer(ptr noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_jobs_callbacks(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @proxy_startjob(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #1 !PGOFuncName !328 {
  %5 = getelementptr inbounds %struct.ProxyBuildJob, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %4, %8
  %9 = phi ptr [ %12, %8 ], [ %6, %4 ]
  %10 = getelementptr inbounds %struct.LinkData, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !329
  tail call void @BKE_sequencer_proxy_rebuild(ptr noundef %11, ptr noundef %1, ptr noundef %2, ptr noundef %3) #15
  %12 = load ptr, ptr %9, align 8, !tbaa !75
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %8, !llvm.loop !331

14:                                               ; preds = %8, %4
  %15 = load i16, ptr %1, align 2, !tbaa !332
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.ProxyBuildJob, ptr %0, i64 0, i32 3
  store i32 1, ptr %18, align 8, !tbaa !333
  %19 = load ptr, ptr @stderr, align 8, !tbaa !75
  %20 = tail call i64 @fwrite(ptr nonnull @.str.219, i64 44, i64 1, ptr %19) #18
  br label %21

21:                                               ; preds = %17, %14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @proxy_endjob(ptr nocapture noundef readonly %0) #1 !PGOFuncName !334 {
  %2 = load ptr, ptr %0, align 8, !tbaa !322
  %3 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %2, i8 noundef zeroext 0) #15
  %4 = getelementptr inbounds %struct.ProxyBuildJob, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !75
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ProxyBuildJob, ptr %0, i64 0, i32 3
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi ptr [ %5, %7 ], [ %15, %9 ]
  %11 = getelementptr inbounds %struct.LinkData, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !329
  %13 = load i32, ptr %8, align 8, !tbaa !333
  %14 = trunc i32 %13 to i8
  tail call void @BKE_sequencer_proxy_rebuild_finish(ptr noundef %12, i8 noundef zeroext %14) #15
  %15 = load ptr, ptr %10, align 8, !tbaa !75
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %9, !llvm.loop !335

17:                                               ; preds = %9, %1
  %18 = load ptr, ptr %0, align 8, !tbaa !322
  %19 = getelementptr inbounds %struct.Editing, ptr %3, i64 0, i32 1
  tail call void @BKE_sequencer_free_imbuf(ptr noundef %18, ptr noundef nonnull %19, i8 noundef zeroext 0) #15
  %20 = load ptr, ptr %0, align 8, !tbaa !322
  tail call void @WM_main_add_notifier(i32 noundef 67502080, ptr noundef %20) #15
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_sequencer_proxy_rebuild_context(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_genericNodeN(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @WM_jobs_is_running(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_jobs_start(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_sequencer_proxy_rebuild(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_sequencer_proxy_rebuild_finish(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_sequence_get_effect(ptr dead_on_unwind writable sret(%struct.SeqEffectHandle) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RNA_property_collection_length(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_path_rel(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_collection_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RNA_string_get_alloc(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_property_collection_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_property_collection_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_property_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_property_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_join_dirfile(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_event_add_fileselect(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #13

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nofree nounwind }
attributes #15 = { nounwind optsize }
attributes #16 = { nounwind }
attributes #17 = { optsize }
attributes #18 = { cold }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
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
!52 = !{!45, !40, i64 12}
!53 = !{!54, !39, i64 688}
!54 = !{!"Scene", !55, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !42, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !39, i64 232, !39, i64 236, !39, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !56, i64 280, !64, i64 4264, !42, i64 4296, !42, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !39, i64 4380, !42, i64 4384, !65, i64 4400, !66, i64 4416, !69, i64 4600, !36, i64 4608, !70, i64 4616, !36, i64 4640, !71, i64 4648, !71, i64 4656, !58, i64 4664, !59, i64 4824, !72, i64 4888, !36, i64 4952}
!55 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112}
!56 = !{!"RenderData", !57, i64 0, !36, i64 248, !36, i64 256, !60, i64 264, !61, i64 328, !39, i64 400, !39, i64 404, !39, i64 408, !40, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !39, i64 428, !41, i64 432, !41, i64 434, !40, i64 436, !40, i64 440, !40, i64 444, !40, i64 448, !40, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !39, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !39, i64 484, !39, i64 488, !41, i64 492, !41, i64 494, !39, i64 496, !39, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !39, i64 516, !39, i64 520, !39, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !45, i64 544, !45, i64 560, !62, i64 576, !42, i64 592, !41, i64 608, !41, i64 610, !40, i64 612, !40, i64 616, !40, i64 620, !40, i64 624, !39, i64 628, !40, i64 632, !40, i64 636, !40, i64 640, !40, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !40, i64 660, !40, i64 664, !41, i64 668, !41, i64 670, !40, i64 672, !40, i64 676, !37, i64 680, !39, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !39, i64 2520, !41, i64 2524, !41, i64 2526, !40, i64 2528, !40, i64 2532, !41, i64 2536, !41, i64 2538, !40, i64 2540, !41, i64 2544, !41, i64 2546, !39, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !40, i64 2560, !40, i64 2564, !36, i64 2568, !39, i64 2576, !40, i64 2580, !37, i64 2584, !63, i64 2616, !39, i64 3976, !39, i64 3980}
!57 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !40, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !58, i64 24, !59, i64 184}
!58 = !{!"ColorManagedViewSettings", !39, i64 0, !39, i64 4, !37, i64 8, !37, i64 72, !40, i64 136, !40, i64 140, !36, i64 144, !36, i64 152}
!59 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!60 = !{!"QuicktimeCodecSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !41, i64 48, !41, i64 50, !39, i64 52, !39, i64 56, !39, i64 60}
!61 = !{!"FFMpegCodecData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !40, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !36, i64 64}
!62 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!63 = !{!"BakeData", !57, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !40, i64 1280, !40, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!64 = !{!"AudioData", !39, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !39, i64 16, !41, i64 20, !41, i64 22, !40, i64 24, !40, i64 28}
!65 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!66 = !{!"GameData", !65, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !67, i64 40, !41, i64 64, !41, i64 66, !40, i64 68, !68, i64 72, !40, i64 128, !40, i64 132, !39, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180}
!67 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !40, i64 8, !40, i64 12, !36, i64 16}
!68 = !{!"RecastData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !39, i64 40, !40, i64 44, !40, i64 48, !41, i64 52, !41, i64 54}
!69 = !{!"UnitSettings", !40, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!70 = !{!"PhysicsSettings", !37, i64 0, !39, i64 12, !39, i64 16, !39, i64 20}
!71 = !{!"long", !37, i64 0}
!72 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!73 = !{!74, !36, i64 0}
!74 = !{!"Editing", !36, i64 0, !42, i64 8, !42, i64 24, !36, i64 40, !37, i64 48, !37, i64 1072, !39, i64 2096, !39, i64 2100, !39, i64 2104, !39, i64 2108, !45, i64 2112}
!75 = !{!36, !36, i64 0}
!76 = distinct !{!76, !77}
!77 = !{!"llvm.loop.mustprogress"}
!78 = !{!40, !40, i64 0}
!79 = !{!35, !39, i64 96}
!80 = !{!35, !39, i64 136}
!81 = distinct !{!81, !77}
!82 = !{!35, !40, i64 152}
!83 = distinct !{!83, !77}
!84 = !{!"sequencer_edit.c:BLI_rctf_size_x"}
!85 = !{!45, !40, i64 4}
!86 = !{!"sequencer_edit.c:BLI_rcti_size_x"}
!87 = !{!62, !39, i64 4}
!88 = !{!62, !39, i64 0}
!89 = !{!90, !39, i64 24}
!90 = !{!"SeqIterator", !36, i64 0, !39, i64 8, !39, i64 12, !36, i64 16, !39, i64 24}
!91 = !{!90, !36, i64 16}
!92 = distinct !{!92, !77}
!93 = !{!35, !36, i64 256}
!94 = distinct !{!94, !77}
!95 = !{i32 0, i32 2}
!96 = !{i8 0, i8 2}
!97 = !{!98, !41, i64 224}
!98 = !{!"SpaceSeq", !36, i64 0, !36, i64 8, !42, i64 16, !39, i64 32, !40, i64 36, !37, i64 40, !99, i64 56, !40, i64 216, !40, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !39, i64 232, !40, i64 236, !39, i64 240, !39, i64 244, !36, i64 248, !100, i64 256}
!99 = !{!"View2D", !45, i64 0, !45, i64 16, !62, i64 32, !62, i64 48, !62, i64 64, !37, i64 80, !37, i64 88, !40, i64 96, !40, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !39, i64 136, !39, i64 140, !36, i64 144, !36, i64 152}
!100 = !{!"SequencerScopes", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40}
!101 = !{!98, !39, i64 240}
!102 = !{!35, !39, i64 100}
!103 = distinct !{!103, !77}
!104 = !{!105, !36, i64 0}
!105 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !42, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !106, i64 152, !41, i64 184}
!106 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!107 = !{!105, !36, i64 8}
!108 = !{!105, !36, i64 24}
!109 = !{!105, !36, i64 32}
!110 = !{!105, !36, i64 72}
!111 = !{!105, !41, i64 184}
!112 = !{!105, !36, i64 88}
!113 = !{!"sequencer_edit.c:sequencer_gap_remove_exec"}
!114 = !{!115, !36, i64 112}
!115 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !42, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!116 = !{!54, !39, i64 680}
!117 = distinct !{!117, !77}
!118 = distinct !{!118, !77}
!119 = distinct !{!119, !77}
!120 = !{!"sequencer_edit.c:sequencer_gap_insert_exec"}
!121 = !{!74, !36, i64 40}
!122 = !{!105, !36, i64 48}
!123 = !{!"sequencer_edit.c:sequencer_snap_invoke"}
!124 = !{!"sequencer_edit.c:sequencer_snap_exec"}
!125 = !{!35, !39, i64 132}
!126 = !{!35, !39, i64 112}
!127 = distinct !{!127, !77}
!128 = !{!35, !36, i64 232}
!129 = !{!35, !36, i64 240}
!130 = !{!35, !36, i64 248}
!131 = distinct !{!131, !77}
!132 = !{!105, !36, i64 64}
!133 = !{!"sequencer_edit.c:sequencer_slip_invoke"}
!134 = !{!115, !36, i64 96}
!135 = !{!136, !36, i64 16}
!136 = !{!"SlipData", !37, i64 0, !37, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !39, i64 40, !37, i64 44, !39, i64 48}
!137 = !{!136, !36, i64 24}
!138 = !{!136, !36, i64 32}
!139 = !{!136, !39, i64 40}
!140 = distinct !{!140, !77}
!141 = !{!136, !37, i64 44}
!142 = !{!"sequencer_edit.c:sequencer_slip_modal"}
!143 = !{!144, !41, i64 16}
!144 = !{!"wmEvent", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 18, !39, i64 20, !39, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !41, i64 44, !41, i64 46, !39, i64 48, !39, i64 52, !145, i64 56, !39, i64 64, !39, i64 68, !41, i64 72, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 106, !39, i64 108, !36, i64 112}
!145 = !{!"double", !37, i64 0}
!146 = !{!136, !39, i64 48}
!147 = distinct !{!147, !77}
!148 = distinct !{!148, !77}
!149 = !{!144, !41, i64 18}
!150 = !{!"sequencer_edit.c:sequencer_slip_exec"}
!151 = distinct !{!151, !77}
!152 = !{!"sequencer_edit.c:sequencer_mute_exec"}
!153 = distinct !{!153, !77}
!154 = !{!"sequencer_edit.c:sequencer_unmute_exec"}
!155 = distinct !{!155, !77}
!156 = !{!"sequencer_edit.c:sequencer_lock_exec"}
!157 = distinct !{!157, !77}
!158 = !{!"sequencer_edit.c:sequencer_unlock_exec"}
!159 = distinct !{!159, !77}
!160 = !{!"sequencer_edit.c:sequencer_reload_exec"}
!161 = distinct !{!161, !77}
!162 = !{!"sequencer_edit.c:sequencer_refresh_all_exec"}
!163 = !{!"sequencer_edit.c:sequencer_reassign_inputs_exec"}
!164 = !{!115, !36, i64 120}
!165 = !{!"sequencer_edit.c:sequencer_effect_poll"}
!166 = !{!"sequencer_edit.c:sequencer_swap_inputs_exec"}
!167 = !{!"sequencer_edit.c:sequencer_cut_invoke"}
!168 = !{i32 1, i32 3}
!169 = !{i32 2, i32 5}
!170 = !{!"sequencer_edit.c:sequencer_cut_exec"}
!171 = distinct !{!171, !77}
!172 = distinct !{!172, !77}
!173 = !{!"sequencer_edit.c:sequencer_add_duplicate_exec"}
!174 = !{!42, !36, i64 0}
!175 = !{!35, !36, i64 0}
!176 = distinct !{!176, !77}
!177 = !{!"sequencer_edit.c:sequencer_delete_invoke"}
!178 = !{!179, !41, i64 214}
!179 = !{!"ARegion", !36, i64 0, !36, i64 8, !99, i64 16, !62, i64 176, !62, i64 192, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !41, i64 216, !41, i64 218, !40, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !36, i64 240, !42, i64 248, !42, i64 264, !42, i64 280, !42, i64 296, !42, i64 312, !42, i64 328, !42, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!180 = !{!"sequencer_edit.c:sequencer_delete_exec"}
!181 = distinct !{!181, !77}
!182 = distinct !{!182, !77}
!183 = distinct !{!183, !77}
!184 = !{!185, !36, i64 24}
!185 = !{!"MetaStack", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32}
!186 = distinct !{!186, !77}
!187 = !{!"sequencer_edit.c:sequencer_offset_clear_exec"}
!188 = distinct !{!188, !77}
!189 = distinct !{!189, !77}
!190 = distinct !{!190, !77}
!191 = !{!"sequencer_edit.c:sequencer_separate_images_exec"}
!192 = !{!35, !36, i64 168}
!193 = !{!194, !39, i64 16}
!194 = !{!"Strip", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !36, i64 32, !37, i64 40, !36, i64 808, !36, i64 816, !36, i64 824, !36, i64 832, !72, i64 840}
!195 = !{!194, !36, i64 32}
!196 = distinct !{!196, !77}
!197 = distinct !{!197, !77}
!198 = !{!"sequencer_edit.c:sequencer_meta_toggle_exec"}
!199 = !{!185, !36, i64 16}
!200 = !{!74, !36, i64 32}
!201 = distinct !{!201, !77}
!202 = !{!"sequencer_edit.c:sequencer_meta_make_exec"}
!203 = distinct !{!203, !77}
!204 = !{!54, !36, i64 256}
!205 = !{!"sequencer_edit.c:sequencer_meta_separate_exec"}
!206 = distinct !{!206, !77}
!207 = distinct !{!207, !77}
!208 = distinct !{!208, !77}
!209 = !{!"sequencer_edit.c:sequencer_view_all_exec"}
!210 = !{!"sequencer_edit.c:sequencer_view_all_preview_exec"}
!211 = !{i64 0, i64 4, !78, i64 4, i64 4, !78, i64 8, i64 4, !78, i64 12, i64 4, !78}
!212 = !{!"sequencer_edit.c:sequencer_view_zoom_ratio_exec"}
!213 = !{!56, !41, i64 478}
!214 = !{!56, !39, i64 484}
!215 = !{!56, !39, i64 488}
!216 = !{!"sequencer_edit.c:sequencer_view_toggle_exec"}
!217 = !{!"sequencer_edit.c:sequencer_view_selected_exec"}
!218 = !{!54, !41, i64 820}
!219 = !{!54, !40, i64 900}
!220 = distinct !{!220, !77}
!221 = !{!"sequencer_edit.c:sequencer_strip_jump_exec"}
!222 = !{!"sequencer_edit.c:sequencer_strip_jump_poll"}
!223 = !{!224, !37, i64 2090}
!224 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !42, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !39, i64 2096, !39, i64 2100, !37, i64 2104, !39, i64 2108, !39, i64 2112, !37, i64 2116}
!225 = !{!"sequencer_edit.c:sequencer_swap_exec"}
!226 = !{!35, !36, i64 304}
!227 = distinct !{!227, !77}
!228 = distinct !{!228, !77}
!229 = !{!"sequencer_edit.c:sequencer_rendersize_exec"}
!230 = !{!231, !39, i64 256}
!231 = !{!"StripElem", !37, i64 0, !39, i64 256, !39, i64 260}
!232 = !{!231, !39, i64 260}
!233 = !{!54, !39, i64 764}
!234 = !{!54, !39, i64 768}
!235 = !{!"sequencer_edit.c:sequencer_copy_exec"}
!236 = distinct !{!236, !77}
!237 = !{!42, !36, i64 8}
!238 = !{!35, !36, i64 8}
!239 = distinct !{!239, !77}
!240 = !{!"sequencer_edit.c:sequencer_paste_exec"}
!241 = distinct !{!241, !77}
!242 = distinct !{!242, !77}
!243 = distinct !{!243, !77}
!244 = distinct !{!244, !77}
!245 = !{!"sequencer_edit.c:sequencer_swap_data_exec"}
!246 = !{!35, !36, i64 280}
!247 = !{!35, !36, i64 272}
!248 = !{!105, !36, i64 56}
!249 = !{!"sequencer_edit.c:view_ghost_border_exec"}
!250 = !{!"sequencer_edit.c:sequencer_rebuild_proxy_exec"}
!251 = !{!105, !36, i64 104}
!252 = !{!"sequencer_edit.c:sequencer_change_effect_input_exec"}
!253 = !{!"sequencer_edit.c:sequencer_change_effect_type_exec"}
!254 = !{i64 0, i64 8, !75, i64 8, i64 8, !75, i64 16, i64 8, !75, i64 24, i64 8, !75, i64 32, i64 8, !75, i64 40, i64 8, !75, i64 48, i64 8, !75}
!255 = !{i64 0, i64 8, !75, i64 8, i64 8, !75, i64 16, i64 8, !75, i64 24, i64 8, !75, i64 32, i64 8, !75, i64 40, i64 8, !75, i64 48, i64 8, !75, i64 56, i64 8, !75, i64 64, i64 8, !75, i64 72, i64 8, !75, i64 80, i64 8, !75}
!256 = !{!"sequencer_edit.c:sequencer_change_path_exec"}
!257 = !{!258, !39, i64 128}
!258 = !{!"CollectionPropertyIterator", !259, i64 0, !259, i64 24, !36, i64 48, !37, i64 56, !39, i64 96, !39, i64 100, !259, i64 104, !39, i64 128}
!259 = !{!"PointerRNA", !260, i64 0, !36, i64 8, !36, i64 16}
!260 = !{!"", !36, i64 0}
!261 = !{i64 0, i64 8, !75, i64 8, i64 8, !75, i64 16, i64 8, !75}
!262 = distinct !{!262, !77}
!263 = !{!35, !39, i64 316}
!264 = !{!35, !39, i64 312}
!265 = !{!"sequencer_edit.c:sequencer_change_path_invoke"}
!266 = !{!"sequencer_edit.c:sequence_offset_after_frame"}
!267 = distinct !{!267, !77}
!268 = !{!"sequencer_edit.c:slip_count_sequences_rec"}
!269 = distinct !{!269, !77}
!270 = !{!"sequencer_edit.c:slip_add_sequences_rec"}
!271 = !{!37, !37, i64 0}
!272 = distinct !{!272, !77}
!273 = !{!"sequencer_edit.c:transseq_backup"}
!274 = !{!275, !39, i64 0}
!275 = !{!"TransSeq", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40}
!276 = !{!275, !39, i64 4}
!277 = !{!275, !39, i64 40}
!278 = !{!"sequencer_edit.c:copy_v2_v2_int"}
!279 = !{!"sequencer_edit.c:copy_v2_v2"}
!280 = !{!"sequencer_edit.c:sequencer_slip_recursively"}
!281 = distinct !{!281, !77}
!282 = !{!"sequencer_edit.c:transseq_restore"}
!283 = !{!"sequencer_edit.c:seq_is_predecessor"}
!284 = !{!"sequencer_edit.c:seq_is_parent"}
!285 = !{!"sequencer_edit.c:mouse_frame_side"}
!286 = !{!"sequencer_edit.c:cut_seq_list"}
!287 = !{!35, !36, i64 16}
!288 = !{ptr @cut_seq_hard, ptr @cut_seq_soft}
!289 = distinct !{!289, !77}
!290 = !{!"sequencer_edit.c:cut_seq_hard"}
!291 = !{!35, !39, i64 116}
!292 = !{!"sequencer_edit.c:cut_seq_soft"}
!293 = !{!"sequencer_edit.c:apply_unique_name_cb"}
!294 = !{!"sequencer_edit.c:del_seq_find_replace_recurs"}
!295 = !{!"sequencer_edit.c:del_seq_clear_modifiers_recurs"}
!296 = !{!297, !36, i64 96}
!297 = !{!"SequenceModifierData", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !37, i64 24, !39, i64 88, !39, i64 92, !36, i64 96, !36, i64 104}
!298 = distinct !{!298, !77}
!299 = distinct !{!299, !77}
!300 = !{!"sequencer_edit.c:recurs_del_seq_flag"}
!301 = distinct !{!301, !77}
!302 = !{!"sequencer_edit.c:BLI_listbase_is_empty"}
!303 = !{!"sequencer_edit.c:max_ii"}
!304 = !{!"sequencer_edit.c:BLI_listbase_clear"}
!305 = !{!"sequencer_edit.c:seq_depends_on_meta"}
!306 = !{!"sequencer_edit.c:BLI_rcti_size_y"}
!307 = !{!62, !39, i64 12}
!308 = !{!62, !39, i64 8}
!309 = !{!"sequencer_edit.c:min_ii"}
!310 = !{!"sequencer_edit.c:BLI_rctf_size_y"}
!311 = !{!"sequencer_edit.c:BLI_rctf_cent_y"}
!312 = !{!"sequencer_edit.c:strip_jump_internal"}
!313 = !{!"sequencer_edit.c:find_next_prev_edit"}
!314 = distinct !{!314, !77}
!315 = distinct !{!315, !77}
!316 = !{!"sequencer_edit.c:find_next_prev_sequence"}
!317 = distinct !{!317, !77}
!318 = !{!"sequencer_edit.c:swap_sequence"}
!319 = !{!"sequencer_edit.c:seq_copy_del_sound"}
!320 = distinct !{!320, !77}
!321 = !{!"sequencer_edit.c:seq_proxy_build_job"}
!322 = !{!323, !36, i64 0}
!323 = !{!"ProxyBuildJob", !36, i64 0, !36, i64 8, !42, i64 16, !39, i64 32}
!324 = !{!323, !36, i64 8}
!325 = distinct !{!325, !77}
!326 = !{!224, !37, i64 2080}
!327 = !{!"sequencer_edit.c:proxy_freejob"}
!328 = !{!"sequencer_edit.c:proxy_startjob"}
!329 = !{!330, !36, i64 16}
!330 = !{!"LinkData", !36, i64 0, !36, i64 8, !36, i64 16}
!331 = distinct !{!331, !77}
!332 = !{!41, !41, i64 0}
!333 = !{!323, !39, i64 32}
!334 = !{!"sequencer_edit.c:proxy_endjob"}
!335 = distinct !{!335, !77}
