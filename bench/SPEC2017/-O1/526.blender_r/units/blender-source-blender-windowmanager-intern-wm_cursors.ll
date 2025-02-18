; ModuleID = 'blender/source/blender/windowmanager/intern/wm_cursors.c'
source_filename = "blender/source/blender/windowmanager/intern/wm_cursors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.BCursor = type { ptr, ptr, i8, i8, i8, i8, ptr, ptr, i8, i8, i8, i8, i8, i8 }
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }

@G = external local_unnamed_addr global %struct.Global, align 8
@U = external local_unnamed_addr global %struct.UserDef, align 8
@BlenderCursor = internal unnamed_addr global [19 x ptr] zeroinitializer, align 16
@__const.WM_cursor_time.number_bitmaps = private unnamed_addr constant [10 x [8 x i8]] [[8 x i8] c"\008DDDDD8", [8 x i8] c"\00\18\10\10\10\10\108", [8 x i8] c"\00<B \10\08\04~", [8 x i8] c"\00| \108@B<", [8 x i8] c"\00 0($~  ", [8 x i8] c"\00|\04<@@D8", [8 x i8] c"\008\04\04<DD8", [8 x i8] c"\00|@ \10\08\08\08", [8 x i8] c"\00<BB<BB<", [8 x i8] c"\008DDx@D8"], align 16
@wm_init_cursor_data.nw_sbm = internal global [32 x i8] c"\03\00\05\00\09\00\11\00!\00A\00\81\00\01\01\01\02\C1\03I\00\8D\00\8B\00\10\01\90\01`\00", align 16
@wm_init_cursor_data.nw_smsk = internal global [32 x i8] c"\03\00\07\00\0F\00\1F\00?\00\7F\00\FF\00\FF\01\FF\03\FF\03\7F\00\FF\00\FB\00\F0\01\F0\01`\00", align 16
@wm_init_cursor_data.NWArrowCursor = internal global %struct.BCursor { ptr @wm_init_cursor_data.nw_sbm, ptr @wm_init_cursor_data.nw_smsk, i8 16, i8 16, i8 6, i8 7, ptr null, ptr null, i8 32, i8 32, i8 15, i8 15, i8 0, i8 1 }, align 8
@wm_init_cursor_data.ns_sbm = internal global [32 x i8] c"@\01 \02\10\04\08\08\04\10<\1E \02 \02 \02 \02<\1E\04\10\08\08\10\04 \02@\01", align 16
@wm_init_cursor_data.ns_smsk = internal global [32 x i8] c"\C0\01\E0\03\F0\07\F8\0F\FC\1F\FC\1F\E0\03\E0\03\E0\03\E0\03\FC\1F\FC\1F\F8\0F\F0\07\E0\03\C0\01", align 16
@wm_init_cursor_data.NSArrowCursor = internal global %struct.BCursor { ptr @wm_init_cursor_data.ns_sbm, ptr @wm_init_cursor_data.ns_smsk, i8 16, i8 16, i8 6, i8 7, ptr null, ptr null, i8 32, i8 32, i8 15, i8 15, i8 0, i8 1 }, align 8
@wm_init_cursor_data.ew_sbm = internal global [32 x i8] c"\00\00\00\00\10\088\1C,4\E6g\03\C0\01\80\03\C0\E6g,48\1C\10\08\00\00\00\00\00\00", align 16
@wm_init_cursor_data.ew_smsk = internal global [32 x i8] c"\00\00\00\00\10\088\1C<<\FE\7F\FF\FF\FF\FF\FF\FF\FE\7F<<8\1C\10\08\00\00\00\00\00\00", align 16
@wm_init_cursor_data.EWArrowCursor = internal global %struct.BCursor { ptr @wm_init_cursor_data.ew_sbm, ptr @wm_init_cursor_data.ew_smsk, i8 16, i8 16, i8 7, i8 6, ptr null, ptr null, i8 32, i8 32, i8 15, i8 15, i8 0, i8 1 }, align 8
@wm_init_cursor_data.wait_sbm = internal global [32 x i8] c"\FE\7F\02@\02@\84!\C8\13\D0\0B\A0\04 \05\A0\04\10\09\88\11\C4#\E2G\FA_\02@\FE\7F", align 16
@wm_init_cursor_data.wait_smsk = internal global [32 x i8] c"\FE\7F\FE\7F\06`\8C1\D8\1B\F0\0F\E0\06`\07\E0\060\0D\98\19\CC3\E6g\FE\7F\FE\7F\FE\7F", align 16
@wm_init_cursor_data.wait_lbm = internal global [128 x i8] c"\FC\FF\FF?\FC\FF\FF?\0C\00\000\0C\00\000\0C\00\000\0C\00\00\18\18\C0\03\0C0 \07\06`\F0\0F\03\C0\D0\8D\01\80y\CF\00\00\F3g\00\00f7\00\00\8C3\00\00\0C2\00\00\CC3\00\00\8C0\00\00Fa\00\00\03\C3\00\80\01\83\01\C0\C0\03\03`\A0\05\060\F0\0F\0C\18\F8\1D\18\0C\\?0\0C\FF_0\0C\F7\FE1\CC\FB\9F3\0C\00\000\0C\00\000\FC\FF\FF?\FC\FF\FF?", align 16
@wm_init_cursor_data.wait_lmsk = internal global [128 x i8] c"\FC\FF\FF?\FC\FF\FF?\FC\FF\FF?\FC\FF\FF?<\00\00<<\00\00\1Ex\C0\03\0F\F0\A0\87\07\E0\F1\CF\03\C0\F3\EF\01\80\FF\FF\00\00\FF\7F\00\00\FE?\00\00\FC?\00\00<?\00\00\FC?\00\00\BC<\00\00\DEy\00\00\0F\F3\00\80\07\E3\01\C0\C3\C3\03\E0\E1\87\07\F0\F0\0F\0Fx\F8\1F\1E<|?<<\FF\7F<\BC\FF\FF=\FC\FB\BF?\FC\FF\FF?\FC\FF\FF?\FC\FF\FF?\FC\FF\FF?", align 16
@wm_init_cursor_data.WaitCursor = internal global %struct.BCursor { ptr @wm_init_cursor_data.wait_sbm, ptr @wm_init_cursor_data.wait_smsk, i8 16, i8 16, i8 7, i8 7, ptr @wm_init_cursor_data.wait_lbm, ptr @wm_init_cursor_data.wait_lmsk, i8 32, i8 32, i8 15, i8 15, i8 0, i8 1 }, align 8
@wm_init_cursor_data.cross_sbm = internal global [32 x i8] c"\00\00\80\01\80\01\80\01\80\01\80\01\80\01~~~~\80\01\80\01\80\01\80\01\80\01\80\01\00\00", align 16
@wm_init_cursor_data.cross_smsk = internal global [32 x i8] c"\80\01\80\01\80\01\80\01\80\01\80\01\C0\03\7F\FE\7F\FE\C0\03\80\01\80\01\80\01\80\01\80\01\80\01", align 16
@wm_init_cursor_data.cross_lbm = internal global <{ [119 x i8], [9 x i8] }> <{ [119 x i8] c"\00\00\00\00\00\00\00\00\00\80\01\00\00\80\01\00\00\80\01\00\00\80\01\00\00\80\01\00\00\80\01\00\00\80\01\00\00\80\01\00\00\80\01\00\00\C0\03\00\00\C0\03\00\00@\02\00\00x\1E\00\FC\1F\F8?\FC\1F\F8?\00x\1E\00\00@\02\00\00\C0\03\00\00\C0\03\00\00\80\01\00\00\80\01\00\00\80\01\00\00\80\01\00\00\80\01\00\00\80\01\00\00\80\01\00\00\80\01\00\00\80\01", [9 x i8] zeroinitializer }>, align 16
@wm_init_cursor_data.cross_lmsk = internal global [128 x i8] c"\00\80\01\00\00\80\01\00\00\80\01\00\00\80\01\00\00\80\01\00\00\80\01\00\00\80\01\00\00\80\01\00\00\80\01\00\00\80\01\00\00\80\01\00\00\C0\03\00\00\E0\07\00\00p\0E\00\00x\1E\00\FF\1F\F8\FF\FF\1F\F8\FF\00x\1E\00\00p\0E\00\00\E0\07\00\00\C0\03\00\00\80\01\00\00\80\01\00\00\80\01\00\00\80\01\00\00\80\01\00\00\80\01\00\00\80\01\00\00\80\01\00\00\80\01\00\00\80\01\00\00\80\01\00", align 16
@wm_init_cursor_data.CrossCursor = internal global %struct.BCursor { ptr @wm_init_cursor_data.cross_sbm, ptr @wm_init_cursor_data.cross_smsk, i8 16, i8 16, i8 7, i8 7, ptr @wm_init_cursor_data.cross_lbm, ptr @wm_init_cursor_data.cross_lmsk, i8 32, i8 32, i8 15, i8 15, i8 0, i8 1 }, align 8
@wm_init_cursor_data.editcross_sbm = internal global [32 x i8] c"\0E\00\11\00\1D\00\19\03\1D\03\11\03\0E\03\00\03\F8|\F8|\00\03\00\03\00\03\00\03\00\03\00\00", align 16
@wm_init_cursor_data.editcross_smsk = internal global [32 x i8] c"\0E\00\1F\00\1F\03\1F\03\1F\03\1F\03\0E\03\80\07\FC\FC\FC\FC\80\07\00\03\00\03\00\03\00\03\00\03", align 16
@wm_init_cursor_data.EditCrossCursor = internal global %struct.BCursor { ptr @wm_init_cursor_data.editcross_sbm, ptr @wm_init_cursor_data.editcross_smsk, i8 16, i8 16, i8 9, i8 8, ptr null, ptr null, i8 32, i8 32, i8 15, i8 15, i8 0, i8 1 }, align 8
@wm_init_cursor_data.box_sbm = internal global [32 x i8] c"\7F\00A\00A\00A\06A\06A\06\7F\06\00\06\E0y\E0y\00\06\00\06\00\06\00\06\00\06\00\00", align 16
@wm_init_cursor_data.box_smsk = internal global [32 x i8] c"\7F\00\7F\00c\06c\06c\06\7F\06\7F\06\00\0F\F0\F9\F0\F9\00\0F\00\06\00\06\00\06\00\06\00\06", align 16
@wm_init_cursor_data.BoxSelCursor = internal global %struct.BCursor { ptr @wm_init_cursor_data.box_sbm, ptr @wm_init_cursor_data.box_smsk, i8 16, i8 16, i8 9, i8 8, ptr null, ptr null, i8 32, i8 32, i8 15, i8 15, i8 0, i8 1 }, align 8
@wm_init_cursor_data.knife_sbm = internal global [32 x i8] c"\00\00\00\00\00\10\00,\00Z\004\00*\00\17\80\06@\03\A0\03\D0\01h\00\1C\00\06\00\00\00", align 16
@wm_init_cursor_data.knife_smsk = internal global [32 x i8] c"\00`\00\F0\00\FC\00\FE\00\FE\00~\00\7F\80?\C0\0E`\07\B0\07\D8\03\EC\01~\00\1F\00\07\00", align 16
@wm_init_cursor_data.knife_lbm = internal global <{ [117 x i8], [11 x i8] }> <{ [117 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00\00\00\1C\00\00\00>\00\00\00\7F\00\00\80\BF\00\00\C0_\00\00\C0o\00\00\C07\00\00\A8\1B\00\00T\0D\00\00\A8\00\00\00T\00\00\00\A8\00\00\00S\00\00\C0\07\00\00\E0\0F\00\00\D0\0F\00\00\E8\07\00\00\F4\07\00\00\FA\00\00\00=\00\00\80\0E\00\00\C0\03\00\00\E0\00\00\000\00\00\00\08", [11 x i8] zeroinitializer }>, align 16
@wm_init_cursor_data.knife_lmsk = internal global [128 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\18\00\00\00<\00\00\00~\00\00\00\FF\00\00\80\FF\00\00\C0\BF\00\00\E0\DF\00\00\E0\EF\00\00\F8w\00\00\FC;\00\00\FE\1D\00\00\FE\0F\00\00\FE\01\00\00\FF\01\00\C0\FF\00\00\E0\7F\00\00\F0\1F\00\00\D8\1F\00\00\EC\0F\00\00\F6\0F\00\00\FB\06\00\80\BD\01\00\C0n\00\00\E0\1B\00\00\F0\06\00\00\B8\01\00\00l\00\00\00\1C\00\00\00\00\00\00\00", align 16
@wm_init_cursor_data.KnifeCursor = internal global %struct.BCursor { ptr @wm_init_cursor_data.knife_sbm, ptr @wm_init_cursor_data.knife_smsk, i8 16, i8 16, i8 0, i8 15, ptr @wm_init_cursor_data.knife_lbm, ptr @wm_init_cursor_data.knife_lmsk, i8 32, i8 32, i8 0, i8 31, i8 0, i8 1 }, align 8
@wm_init_cursor_data.vloop_sbm = internal global [32 x i8] c"\00\00~\00>\00\1E\00\0E\00f`bo\00\00        \00\00```o\00\00", align 16
@wm_init_cursor_data.vloop_smsk = internal global [32 x i8] c"\FF\01\FF\00\7F\00?\00\FF\F0\FF\FF\F7\FF\F3\F0a```````\F0\F0\F0\FF\F0\FF\F0\F0", align 16
@wm_init_cursor_data.vloop_lbm = internal global <{ [120 x i8], [8 x i8] }> <{ [120 x i8] c"\00\00\00\00\00\00\00\00\FC?\00\00\FC?\00\00\FC\0F\00\00\FC\0F\00\00\FC\03\00\00\FC\03\00\00\FC\00\00\00\FC\00\00\00<<\00<<<\00<\0C<\FF<\0C<\FF<\00\00\00\00\00\00\00\00\00\0C\00\0C\00\0C\00\0C\00\0C\00\0C\00\0C\00\0C\00\0C\00\0C\00\0C\00\0C\00\0C\00\0C\00\0C\00\0C\00\00\00\00\00\00\00\00\00<\00<\00<\00<\00<\FF<\00<\FF<", [8 x i8] zeroinitializer }>, align 16
@wm_init_cursor_data.vloop_lmsk = internal global [128 x i8] c"\FF\FF\03\00\FF\FF\03\00\FF\FF\00\00\FF\FF\00\00\FF?\00\00\FF?\00\00\FF\0F\00\00\FF\0F\00\00\FF\FF\00\FF\FF\FF\00\FF\FF\FF\FF\FF\FF\FF\FF\FF?\FF\FF\FF?\FF\FF\FF\0F\FF\00\FF\0F\FF\00\FF\03<\00<\03<\00<\00<\00<\00<\00<\00<\00<\00<\00<\00<\00<\00<\00<\00\FF\00\FF\00\FF\00\FF\00\FF\FF\FF\00\FF\FF\FF\00\FF\FF\FF\00\FF\FF\FF\00\FF\00\FF\00\FF\00\FF", align 16
@wm_init_cursor_data.VLoopCursor = internal global %struct.BCursor { ptr @wm_init_cursor_data.vloop_sbm, ptr @wm_init_cursor_data.vloop_smsk, i8 16, i8 16, i8 0, i8 0, ptr @wm_init_cursor_data.vloop_lbm, ptr @wm_init_cursor_data.vloop_lmsk, i8 32, i8 32, i8 0, i8 0, i8 0, i8 1 }, align 8
@wm_init_cursor_data.textedit_sbm = internal global [32 x i8] c"\E0\03\10\04`\03@\01@\01@\01@\01@\01@\01@\01@\01@\01@\01`\03\10\04\E0\03", align 16
@wm_init_cursor_data.textedit_smsk = internal global [32 x i8] c"\E0\03\F0\07\E0\03\C0\01\C0\01\C0\01\C0\01\C0\01\C0\01\C0\01\C0\01\C0\01\C0\01\E0\03\F0\07\E0\03", align 16
@wm_init_cursor_data.TextEditCursor = internal global %struct.BCursor { ptr @wm_init_cursor_data.textedit_sbm, ptr @wm_init_cursor_data.textedit_smsk, i8 16, i8 16, i8 9, i8 8, ptr null, ptr null, i8 32, i8 32, i8 15, i8 15, i8 0, i8 1 }, align 8
@wm_init_cursor_data.paintbrush_sbm = internal global [32 x i8] c"\00\E0\00\98\00D\00B\00!\80 @\13@\17\A0\0B\98\05\04\02\02\01\02\01\02\01\81\00\7F\00", align 16
@wm_init_cursor_data.paintbrush_smsk = internal global [32 x i8] c"\00\E0\00\F8\00|\00~\00?\80?\C0\1F\C0\1F\E0\0F\F8\07\FC\03\FE\01\FE\01\FE\01\FF\00\7F\00", align 16
@wm_init_cursor_data.PaintBrushCursor = internal global %struct.BCursor { ptr @wm_init_cursor_data.paintbrush_sbm, ptr @wm_init_cursor_data.paintbrush_smsk, i8 16, i8 16, i8 0, i8 15, ptr null, ptr null, i8 32, i8 32, i8 15, i8 15, i8 0, i8 1 }, align 8
@wm_init_cursor_data.hand_sbm = internal global [32 x i8] c"\00\00\00\00\80\01\80\0D\98m\98m\B0m\B0m\E0o\E6\7F\EE\7F\FC?\F8?\F0\1F\C0\1F\C0\1F", align 16
@wm_init_cursor_data.hand_smsk = internal global [32 x i8] c"\00\00\80\01\C0\0F\D8\7F\FC\FF\FC\FF\F8\FF\F8\FF\F6\FF\FF\FF\FF\FF\FE\7F\FC\7F\F8?\F0?\E0?", align 16
@wm_init_cursor_data.HandCursor = internal global %struct.BCursor { ptr @wm_init_cursor_data.hand_sbm, ptr @wm_init_cursor_data.hand_smsk, i8 16, i8 16, i8 8, i8 8, ptr null, ptr null, i8 32, i8 32, i8 15, i8 15, i8 0, i8 1 }, align 8
@wm_init_cursor_data.nsewscroll_sbm = internal global [32 x i8] c"\00\00\80\01\C0\03\C0\03\00\00\00\00\0C0\0Ep\0Ep\0C0\00\00\00\00\C0\03\C0\03\80\01\00\00", align 16
@wm_init_cursor_data.nsewscroll_smsk = internal global [32 x i8] c"\80\01\C0\03\E0\07\E0\07\C0\03\0C0\1Ex\1F\F8\1F\F8\1Ex\0C0\C0\03\E0\07\E0\07\C0\03\80\01", align 16
@wm_init_cursor_data.NSEWScrollCursor = internal global %struct.BCursor { ptr @wm_init_cursor_data.nsewscroll_sbm, ptr @wm_init_cursor_data.nsewscroll_smsk, i8 16, i8 16, i8 8, i8 8, ptr null, ptr null, i8 32, i8 32, i8 15, i8 15, i8 0, i8 1 }, align 8
@wm_init_cursor_data.nsscroll_sbm = internal global [32 x i8] c"\00\00\80\01\C0\03\C0\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\C0\03\C0\03\80\01\00\00", align 16
@wm_init_cursor_data.nsscroll_smsk = internal global [32 x i8] c"\80\01\C0\03\E0\07\E0\07\C0\03\00\00\00\00\00\00\00\00\00\00\00\00\C0\03\E0\07\E0\07\C0\03\80\01", align 16
@wm_init_cursor_data.NSScrollCursor = internal global %struct.BCursor { ptr @wm_init_cursor_data.nsscroll_sbm, ptr @wm_init_cursor_data.nsscroll_smsk, i8 16, i8 16, i8 8, i8 8, ptr null, ptr null, i8 32, i8 32, i8 15, i8 15, i8 0, i8 1 }, align 8
@wm_init_cursor_data.ewscroll_sbm = internal global <{ [20 x i8], [12 x i8] }> <{ [20 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\0C0\0Ep\0Ep\0C0", [12 x i8] zeroinitializer }>, align 16
@wm_init_cursor_data.ewscroll_smsk = internal global <{ [22 x i8], [10 x i8] }> <{ [22 x i8] c"\00\00\00\00\00\00\00\00\00\00\0C0\1Ex\1F\F8\1F\F8\1Ex\0C0", [10 x i8] zeroinitializer }>, align 16
@wm_init_cursor_data.EWScrollCursor = internal global %struct.BCursor { ptr @wm_init_cursor_data.ewscroll_sbm, ptr @wm_init_cursor_data.ewscroll_smsk, i8 16, i8 16, i8 8, i8 8, ptr null, ptr null, i8 32, i8 32, i8 15, i8 15, i8 0, i8 1 }, align 8
@wm_init_cursor_data.eyedropper_sbm = internal global [32 x i8] c"\000\00H\00\85\80\82@@\80 @\11\A0#\D0\15\E8\0At\01\B4\00J\005\00\08\00\04\00", align 16
@wm_init_cursor_data.eyedropper_smsk = internal global [32 x i8] c"\000\00x\00\FD\80\FF\C0\7F\80?\C0\1F\E0?\F0\1F\F8\0B\FC\01\FC\00~\00?\00\0C\00\04\00", align 16
@wm_init_cursor_data.EyedropperCursor = internal global %struct.BCursor { ptr @wm_init_cursor_data.eyedropper_sbm, ptr @wm_init_cursor_data.eyedropper_smsk, i8 16, i8 16, i8 1, i8 15, ptr null, ptr null, i8 32, i8 32, i8 15, i8 15, i8 0, i8 1 }, align 8
@wm_init_cursor_data.swap_sbm = internal global [32 x i8] c"\C0\FF@\80@\80@\9C@\98@\94\00\82\FE\80~\FD\BE\01\DA\01\E2\01\E2\01\C2\01\FE\01\00\00", align 16
@wm_init_cursor_data.swap_smsk = internal global [32 x i8] c"\C0\FF\C0\FF\C0\FF\C0\FF\C0\FF\C0\FF\FF\FF\FF\FF\FF\FF\FF\03\FF\03\FF\03\FF\03\FF\03\FF\03\FF\03", align 16
@wm_init_cursor_data.SwapCursor = internal global %struct.BCursor { ptr @wm_init_cursor_data.swap_sbm, ptr @wm_init_cursor_data.swap_smsk, i8 16, i8 16, i8 8, i8 8, ptr null, ptr null, i8 32, i8 32, i8 15, i8 15, i8 5, i8 3 }, align 8
@switch.table.WM_cursor_set = private unnamed_addr constant [10 x i32] [i32 1, i32 8, i32 10, i32 12, i32 11, i32 5, i32 0, i32 0, i32 23, i32 21], align 4

; Function Attrs: nounwind uwtable
define dso_local void @WM_cursor_set(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1
  %5 = icmp ne i8 %4, 0
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %113, label %7

7:                                                ; preds = %2
  %8 = icmp eq i32 %1, 1007
  br i1 %8, label %9, label %13

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = tail call i32 @GHOST_SetCursorVisibility(ptr noundef %11, i32 noundef 0) #5
  br label %113

13:                                               ; preds = %7
  %14 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 73), align 8, !tbaa !42
  %15 = icmp ne i16 %14, 0
  %16 = icmp eq i32 %1, 1002
  %17 = and i1 %16, %15
  %18 = select i1 %17, i32 6, i32 %1
  %19 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  %21 = tail call i32 @GHOST_SetCursorVisibility(ptr noundef %20, i32 noundef 1) #5
  %22 = icmp eq i32 %18, 1006
  br i1 %22, label %23, label %29

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 15
  %25 = load i16, ptr %24, align 2, !tbaa !47
  %26 = icmp eq i16 %25, 0
  %27 = select i1 %26, i16 1006, i16 %25
  %28 = sext i16 %27 to i32
  br label %29

29:                                               ; preds = %23, %13
  %30 = phi i32 [ %18, %13 ], [ %28, %23 ]
  %31 = trunc i32 %30 to i16
  %32 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 13
  store i16 %31, ptr %32, align 2, !tbaa !48
  %33 = icmp sgt i32 %30, 999
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load ptr, ptr %19, align 8, !tbaa !34
  %36 = add nsw i32 %30, -1000
  %37 = icmp ult i32 %36, 10
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = zext nneg i32 %36 to i64
  %40 = getelementptr inbounds [10 x i32], ptr @switch.table.WM_cursor_set, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4
  br label %42

42:                                               ; preds = %38, %34
  %43 = phi i32 [ 0, %34 ], [ %41, %38 ]
  %44 = tail call i32 @GHOST_SetCursorShape(ptr noundef %35, i32 noundef %43) #5
  br label %113

45:                                               ; preds = %29
  %46 = add i32 %30, -19
  %47 = icmp ult i32 %46, -18
  br i1 %47, label %113, label %48

48:                                               ; preds = %45
  %49 = icmp eq i32 %30, 1
  br i1 %49, label %50, label %53

50:                                               ; preds = %48
  %51 = load ptr, ptr %19, align 8, !tbaa !34
  %52 = tail call i32 @GHOST_SetCursorShape(ptr noundef %51, i32 noundef 0) #5
  br label %113

53:                                               ; preds = %48
  %54 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 73), align 8, !tbaa !42
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %53
  %57 = zext nneg i32 %30 to i64
  %58 = getelementptr inbounds [19 x ptr], ptr @BlenderCursor, i64 0, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !49
  %60 = getelementptr inbounds %struct.BCursor, ptr %59, i64 0, i32 6
  %61 = load ptr, ptr %60, align 8, !tbaa !50
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %90

63:                                               ; preds = %56, %53
  %64 = zext nneg i32 %30 to i64
  %65 = getelementptr inbounds [19 x ptr], ptr @BlenderCursor, i64 0, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !49
  %67 = load ptr, ptr %19, align 8, !tbaa !34
  %68 = load ptr, ptr %66, align 8, !tbaa !52
  %69 = getelementptr inbounds %struct.BCursor, ptr %66, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !53
  %71 = getelementptr inbounds %struct.BCursor, ptr %66, i64 0, i32 2
  %72 = load i8, ptr %71, align 8, !tbaa !54
  %73 = zext i8 %72 to i32
  %74 = getelementptr inbounds %struct.BCursor, ptr %66, i64 0, i32 3
  %75 = load i8, ptr %74, align 1, !tbaa !55
  %76 = zext i8 %75 to i32
  %77 = getelementptr inbounds %struct.BCursor, ptr %66, i64 0, i32 4
  %78 = load i8, ptr %77, align 2, !tbaa !56
  %79 = zext i8 %78 to i32
  %80 = getelementptr inbounds %struct.BCursor, ptr %66, i64 0, i32 5
  %81 = load i8, ptr %80, align 1, !tbaa !57
  %82 = zext i8 %81 to i32
  %83 = getelementptr inbounds %struct.BCursor, ptr %66, i64 0, i32 12
  %84 = load i8, ptr %83, align 4, !tbaa !58
  %85 = zext i8 %84 to i32
  %86 = getelementptr inbounds %struct.BCursor, ptr %66, i64 0, i32 13
  %87 = load i8, ptr %86, align 1, !tbaa !59
  %88 = zext i8 %87 to i32
  %89 = tail call i32 @GHOST_SetCustomCursorShapeEx(ptr noundef %67, ptr noundef %68, ptr noundef %70, i32 noundef %73, i32 noundef %76, i32 noundef %79, i32 noundef %82, i32 noundef %85, i32 noundef %88) #5
  br label %113

90:                                               ; preds = %56
  %91 = load ptr, ptr %19, align 8, !tbaa !34
  %92 = getelementptr inbounds %struct.BCursor, ptr %59, i64 0, i32 7
  %93 = load ptr, ptr %92, align 8, !tbaa !60
  %94 = getelementptr inbounds %struct.BCursor, ptr %59, i64 0, i32 8
  %95 = load i8, ptr %94, align 8, !tbaa !61
  %96 = zext i8 %95 to i32
  %97 = getelementptr inbounds %struct.BCursor, ptr %59, i64 0, i32 9
  %98 = load i8, ptr %97, align 1, !tbaa !62
  %99 = zext i8 %98 to i32
  %100 = getelementptr inbounds %struct.BCursor, ptr %59, i64 0, i32 10
  %101 = load i8, ptr %100, align 2, !tbaa !63
  %102 = zext i8 %101 to i32
  %103 = getelementptr inbounds %struct.BCursor, ptr %59, i64 0, i32 11
  %104 = load i8, ptr %103, align 1, !tbaa !64
  %105 = zext i8 %104 to i32
  %106 = getelementptr inbounds %struct.BCursor, ptr %59, i64 0, i32 12
  %107 = load i8, ptr %106, align 4, !tbaa !58
  %108 = zext i8 %107 to i32
  %109 = getelementptr inbounds %struct.BCursor, ptr %59, i64 0, i32 13
  %110 = load i8, ptr %109, align 1, !tbaa !59
  %111 = zext i8 %110 to i32
  %112 = tail call i32 @GHOST_SetCustomCursorShapeEx(ptr noundef %91, ptr noundef nonnull %61, ptr noundef %93, i32 noundef %96, i32 noundef %99, i32 noundef %102, i32 noundef %105, i32 noundef %108, i32 noundef %111) #5
  br label %113

113:                                              ; preds = %50, %90, %63, %45, %2, %9, %42
  ret void
}

declare i32 @GHOST_SetCursorVisibility(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @GHOST_SetCursorShape(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @WM_cursor_modal_set(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 14
  %4 = load i16, ptr %3, align 8, !tbaa !65
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 13
  %8 = load i16, ptr %7, align 2, !tbaa !48
  store i16 %8, ptr %3, align 8, !tbaa !65
  br label %9

9:                                                ; preds = %6, %2
  %10 = trunc i32 %1 to i16
  %11 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 15
  store i16 %10, ptr %11, align 2, !tbaa !47
  tail call void @WM_cursor_set(ptr noundef %0, i32 noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @WM_cursor_modal_restore(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 15
  store i16 0, ptr %2, align 2, !tbaa !47
  %3 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 14
  %4 = load i16, ptr %3, align 8, !tbaa !65
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = sext i16 %4 to i32
  tail call void @WM_cursor_set(ptr noundef %0, i32 noundef %7)
  br label %8

8:                                                ; preds = %6, %1
  store i16 0, ptr %3, align 8, !tbaa !65
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @WM_cursor_wait(i8 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !66
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %39

4:                                                ; preds = %1
  %5 = load ptr, ptr @G, align 8, !tbaa !68
  %6 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 40
  %7 = load ptr, ptr %6, align 8, !tbaa !69
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.wmWindowManager, ptr %7, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !72
  br label %12

12:                                               ; preds = %4, %9
  %13 = phi ptr [ %11, %9 ], [ null, %4 ]
  %14 = icmp eq ptr %13, null
  br i1 %14, label %39, label %15

15:                                               ; preds = %12
  %16 = icmp eq i8 %0, 0
  br label %17

17:                                               ; preds = %15, %36
  %18 = phi ptr [ %13, %15 ], [ %37, %36 ]
  br i1 %16, label %28, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.wmWindow, ptr %18, i64 0, i32 14
  %21 = load i16, ptr %20, align 8, !tbaa !65
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.wmWindow, ptr %18, i64 0, i32 13
  %25 = load i16, ptr %24, align 2, !tbaa !48
  store i16 %25, ptr %20, align 8, !tbaa !65
  br label %26

26:                                               ; preds = %19, %23
  %27 = getelementptr inbounds %struct.wmWindow, ptr %18, i64 0, i32 15
  store i16 5, ptr %27, align 2, !tbaa !47
  tail call void @WM_cursor_set(ptr noundef nonnull %18, i32 noundef 5)
  br label %36

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.wmWindow, ptr %18, i64 0, i32 15
  store i16 0, ptr %29, align 2, !tbaa !47
  %30 = getelementptr inbounds %struct.wmWindow, ptr %18, i64 0, i32 14
  %31 = load i16, ptr %30, align 8, !tbaa !65
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = sext i16 %31 to i32
  tail call void @WM_cursor_set(ptr noundef nonnull %18, i32 noundef %34)
  br label %35

35:                                               ; preds = %28, %33
  store i16 0, ptr %30, align 8, !tbaa !65
  br label %36

36:                                               ; preds = %26, %35
  %37 = load ptr, ptr %18, align 8, !tbaa !76
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %17, !llvm.loop !77

39:                                               ; preds = %36, %12, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @WM_cursor_grab_enable(ptr nocapture noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = tail call float @GHOST_GetNativePixelSize(ptr noundef %6) #5
  %8 = icmp eq ptr %3, null
  br i1 %8, label %29, label %9

9:                                                ; preds = %4
  %10 = load i32, ptr %3, align 4, !tbaa !80
  %11 = sitofp i32 %10 to float
  %12 = fdiv float %11, %7
  %13 = fptosi float %12 to i32
  store i32 %13, ptr %3, align 4, !tbaa !80
  %14 = getelementptr inbounds i32, ptr %3, i64 1
  %15 = load i32, ptr %14, align 4, !tbaa !80
  %16 = sitofp i32 %15 to float
  %17 = fdiv float %16, %7
  %18 = fptosi float %17 to i32
  store i32 %18, ptr %14, align 4, !tbaa !80
  %19 = getelementptr inbounds i32, ptr %3, i64 2
  %20 = load i32, ptr %19, align 4, !tbaa !80
  %21 = sitofp i32 %20 to float
  %22 = fdiv float %21, %7
  %23 = fptosi float %22 to i32
  store i32 %23, ptr %19, align 4, !tbaa !80
  %24 = getelementptr inbounds i32, ptr %3, i64 3
  %25 = load i32, ptr %24, align 4, !tbaa !80
  %26 = sitofp i32 %25 to float
  %27 = fdiv float %26, %7
  %28 = fptosi float %27 to i32
  store i32 %28, ptr %24, align 4, !tbaa !80
  br label %29

29:                                               ; preds = %9, %4
  %30 = icmp eq i8 %2, 0
  %31 = icmp eq i8 %1, 0
  %32 = select i1 %31, i32 1, i32 2
  %33 = select i1 %30, i32 %32, i32 3
  %34 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !81
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %29
  %38 = load ptr, ptr %5, align 8, !tbaa !34
  %39 = icmp eq ptr %38, null
  br i1 %39, label %52, label %40

40:                                               ; preds = %37
  %41 = tail call ptr @GHOST_GetTabletData(ptr noundef nonnull %38) #5
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, ptr %41, align 4, !tbaa !82
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43, %40
  %47 = load ptr, ptr %5, align 8, !tbaa !34
  %48 = tail call i32 @GHOST_SetCursorGrab(ptr noundef %47, i32 noundef %33, ptr noundef %3, ptr noundef null) #5
  br label %49

49:                                               ; preds = %46, %43
  %50 = trunc i32 %33 to i16
  %51 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 16
  store i16 %50, ptr %51, align 4, !tbaa !84
  br label %52

52:                                               ; preds = %37, %49, %29
  ret void
}

declare float @GHOST_GetNativePixelSize(ptr noundef) local_unnamed_addr #1

declare ptr @GHOST_GetTabletData(ptr noundef) local_unnamed_addr #1

declare i32 @GHOST_SetCursorGrab(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @WM_cursor_grab_disable(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !81
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  %6 = icmp ne ptr %0, null
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = tail call i32 @GHOST_SetCursorGrab(ptr noundef nonnull %10, i32 noundef 0, ptr noundef null, ptr noundef %1) #5
  %14 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 16
  store i16 0, ptr %14, align 4, !tbaa !84
  br label %15

15:                                               ; preds = %8, %12, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @wm_cursor_arrow_move(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = icmp eq ptr %0, null
  br i1 %11, label %35, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  %14 = load i16, ptr %13, align 2, !tbaa !85
  %15 = icmp eq i16 %14, 1
  br i1 %15, label %16, label %35

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %18 = load i16, ptr %17, align 8, !tbaa !88
  switch i16 %18, label %35 [
    i16 140, label %19
    i16 138, label %23
    i16 137, label %27
    i16 139, label %31
  ]

19:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #5
  call void @wm_get_cursor_position(ptr noundef nonnull %0, ptr noundef nonnull %9, ptr noundef nonnull %10) #5
  %20 = load i32, ptr %9, align 4, !tbaa !80
  %21 = load i32, ptr %10, align 4, !tbaa !80
  %22 = add nsw i32 %21, 1
  call void @WM_cursor_warp(ptr noundef nonnull %0, i32 noundef %20, i32 noundef %22) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #5
  br label %35

23:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #5
  call void @wm_get_cursor_position(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef nonnull %8) #5
  %24 = load i32, ptr %7, align 4, !tbaa !80
  %25 = load i32, ptr %8, align 4, !tbaa !80
  %26 = add nsw i32 %25, -1
  call void @WM_cursor_warp(ptr noundef nonnull %0, i32 noundef %24, i32 noundef %26) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #5
  br label %35

27:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #5
  call void @wm_get_cursor_position(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #5
  %28 = load i32, ptr %5, align 4, !tbaa !80
  %29 = add nsw i32 %28, -1
  %30 = load i32, ptr %6, align 4, !tbaa !80
  call void @WM_cursor_warp(ptr noundef nonnull %0, i32 noundef %29, i32 noundef %30) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #5
  br label %35

31:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  call void @wm_get_cursor_position(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #5
  %32 = load i32, ptr %3, align 4, !tbaa !80
  %33 = add nsw i32 %32, 1
  %34 = load i32, ptr %4, align 4, !tbaa !80
  call void @WM_cursor_warp(ptr noundef nonnull %0, i32 noundef %33, i32 noundef %34) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  br label %35

35:                                               ; preds = %2, %12, %16, %31, %27, %23, %19
  %36 = phi i32 [ 1, %19 ], [ 1, %23 ], [ 1, %27 ], [ 1, %31 ], [ 0, %16 ], [ 0, %12 ], [ 0, %2 ]
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define dso_local void @WM_cursor_time(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [16 x [2 x i8]], align 16
  %4 = alloca [16 x [2 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %5 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 14
  %6 = load i16, ptr %5, align 8, !tbaa !65
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 13
  %10 = load i16, ptr %9, align 2, !tbaa !48
  store i16 %10, ptr %5, align 8, !tbaa !65
  br label %11

11:                                               ; preds = %8, %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, i8 -1, i64 32, i1 false)
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %39, label %13

13:                                               ; preds = %11, %33
  %14 = phi i32 [ %17, %33 ], [ %1, %11 ]
  %15 = phi i32 [ %34, %33 ], [ 3, %11 ]
  %16 = srem i32 %14, 10
  %17 = sdiv i32 %14, 10
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds [10 x [8 x i8]], ptr @__const.WM_cursor_time.number_bitmaps, i64 0, i64 %18
  %20 = and i32 %15, 1
  %21 = shl nuw nsw i32 %15, 2
  %22 = and i32 %21, 2147483640
  %23 = zext nneg i32 %20 to i64
  %24 = zext nneg i32 %22 to i64
  br label %25

25:                                               ; preds = %13, %25
  %26 = phi i64 [ 0, %13 ], [ %31, %25 ]
  %27 = getelementptr inbounds i8, ptr %19, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !89
  %29 = or disjoint i64 %26, %24
  %30 = getelementptr inbounds [16 x [2 x i8]], ptr %4, i64 0, i64 %29, i64 %23
  store i8 %28, ptr %30, align 1, !tbaa !89
  %31 = add nuw nsw i64 %26, 1
  %32 = icmp eq i64 %31, 8
  br i1 %32, label %33, label %25, !llvm.loop !90

33:                                               ; preds = %25
  %34 = add nsw i32 %15, -1
  %35 = add i32 %14, -10
  %36 = icmp ult i32 %35, -19
  %37 = icmp ne i32 %15, 0
  %38 = and i1 %36, %37
  br i1 %38, label %13, label %39, !llvm.loop !91

39:                                               ; preds = %33, %11
  %40 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !34
  %42 = call i32 @GHOST_SetCustomCursorShape(ptr noundef %41, ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 7, i32 noundef 7) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @wm_init_cursor_data() local_unnamed_addr #4 {
  store ptr @wm_init_cursor_data.NWArrowCursor, ptr getelementptr inbounds ([19 x ptr], ptr @BlenderCursor, i64 0, i64 2), align 16, !tbaa !49
  store ptr @wm_init_cursor_data.NSArrowCursor, ptr getelementptr inbounds ([19 x ptr], ptr @BlenderCursor, i64 0, i64 3), align 8, !tbaa !49
  store ptr @wm_init_cursor_data.EWArrowCursor, ptr getelementptr inbounds ([19 x ptr], ptr @BlenderCursor, i64 0, i64 4), align 16, !tbaa !49
  store ptr @wm_init_cursor_data.WaitCursor, ptr getelementptr inbounds ([19 x ptr], ptr @BlenderCursor, i64 0, i64 5), align 8, !tbaa !49
  store ptr @wm_init_cursor_data.CrossCursor, ptr getelementptr inbounds ([19 x ptr], ptr @BlenderCursor, i64 0, i64 6), align 16, !tbaa !49
  store ptr @wm_init_cursor_data.EditCrossCursor, ptr getelementptr inbounds ([19 x ptr], ptr @BlenderCursor, i64 0, i64 7), align 8, !tbaa !49
  store ptr @wm_init_cursor_data.BoxSelCursor, ptr getelementptr inbounds ([19 x ptr], ptr @BlenderCursor, i64 0, i64 8), align 16, !tbaa !49
  store ptr @wm_init_cursor_data.KnifeCursor, ptr getelementptr inbounds ([19 x ptr], ptr @BlenderCursor, i64 0, i64 9), align 8, !tbaa !49
  store ptr @wm_init_cursor_data.VLoopCursor, ptr getelementptr inbounds ([19 x ptr], ptr @BlenderCursor, i64 0, i64 10), align 16, !tbaa !49
  store ptr @wm_init_cursor_data.TextEditCursor, ptr getelementptr inbounds ([19 x ptr], ptr @BlenderCursor, i64 0, i64 11), align 8, !tbaa !49
  store ptr @wm_init_cursor_data.PaintBrushCursor, ptr getelementptr inbounds ([19 x ptr], ptr @BlenderCursor, i64 0, i64 12), align 16, !tbaa !49
  store ptr @wm_init_cursor_data.HandCursor, ptr getelementptr inbounds ([19 x ptr], ptr @BlenderCursor, i64 0, i64 13), align 8, !tbaa !49
  store ptr @wm_init_cursor_data.NSEWScrollCursor, ptr getelementptr inbounds ([19 x ptr], ptr @BlenderCursor, i64 0, i64 14), align 16, !tbaa !49
  store ptr @wm_init_cursor_data.NSScrollCursor, ptr getelementptr inbounds ([19 x ptr], ptr @BlenderCursor, i64 0, i64 15), align 8, !tbaa !49
  store ptr @wm_init_cursor_data.EWScrollCursor, ptr getelementptr inbounds ([19 x ptr], ptr @BlenderCursor, i64 0, i64 16), align 16, !tbaa !49
  store ptr @wm_init_cursor_data.EyedropperCursor, ptr getelementptr inbounds ([19 x ptr], ptr @BlenderCursor, i64 0, i64 17), align 8, !tbaa !49
  store ptr @wm_init_cursor_data.SwapCursor, ptr getelementptr inbounds ([19 x ptr], ptr @BlenderCursor, i64 0, i64 18), align 16, !tbaa !49
  ret void
}

declare i32 @GHOST_SetCustomCursorShapeEx(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @wm_get_cursor_position(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @WM_cursor_warp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @GHOST_SetCustomCursorShape(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!34 = !{!35, !36, i64 16}
!35 = !{!"wmWindow", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !39, i64 112, !39, i64 114, !39, i64 116, !39, i64 118, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !40, i64 128, !39, i64 132, !39, i64 134, !36, i64 136, !36, i64 144, !36, i64 152, !40, i64 160, !40, i64 164, !36, i64 168, !41, i64 176, !41, i64 192, !41, i64 208, !41, i64 224, !41, i64 240}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"short", !37, i64 0}
!40 = !{!"int", !37, i64 0}
!41 = !{!"ListBase", !36, i64 0, !36, i64 8}
!42 = !{!43, !39, i64 8936}
!43 = !{!"UserDef", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !40, i64 8468, !39, i64 8472, !39, i64 8474, !39, i64 8476, !39, i64 8478, !39, i64 8480, !39, i64 8482, !40, i64 8484, !40, i64 8488, !40, i64 8492, !39, i64 8496, !39, i64 8498, !40, i64 8500, !40, i64 8504, !40, i64 8508, !40, i64 8512, !40, i64 8516, !40, i64 8520, !40, i64 8524, !39, i64 8528, !39, i64 8530, !39, i64 8532, !39, i64 8534, !41, i64 8536, !41, i64 8552, !41, i64 8568, !41, i64 8584, !41, i64 8600, !41, i64 8616, !41, i64 8632, !37, i64 8648, !39, i64 8712, !39, i64 8714, !39, i64 8716, !39, i64 8718, !39, i64 8720, !39, i64 8722, !39, i64 8724, !39, i64 8726, !37, i64 8728, !39, i64 8896, !39, i64 8898, !39, i64 8900, !39, i64 8902, !39, i64 8904, !39, i64 8906, !39, i64 8908, !39, i64 8910, !40, i64 8912, !40, i64 8916, !39, i64 8920, !39, i64 8922, !39, i64 8924, !39, i64 8926, !39, i64 8928, !39, i64 8930, !39, i64 8932, !39, i64 8934, !39, i64 8936, !39, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !39, i64 8944, !39, i64 8946, !39, i64 8948, !39, i64 8950, !39, i64 8952, !39, i64 8954, !44, i64 8956, !44, i64 8960, !40, i64 8964, !39, i64 8968, !39, i64 8970, !44, i64 8972, !39, i64 8976, !39, i64 8978, !39, i64 8980, !39, i64 8982, !45, i64 8984, !37, i64 9760, !37, i64 9772, !39, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !40, i64 10896, !40, i64 10900, !44, i64 10904, !44, i64 10908, !40, i64 10912, !39, i64 10916, !39, i64 10918, !39, i64 10920, !39, i64 10922, !39, i64 10924, !39, i64 10926, !46, i64 10928}
!44 = !{!"float", !37, i64 0}
!45 = !{!"ColorBand", !39, i64 0, !39, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!46 = !{!"WalkNavigation", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !39, i64 24, !37, i64 26}
!47 = !{!35, !39, i64 122}
!48 = !{!35, !39, i64 118}
!49 = !{!36, !36, i64 0}
!50 = !{!51, !36, i64 24}
!51 = !{!"BCursor", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 17, !37, i64 18, !37, i64 19, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 41, !37, i64 42, !37, i64 43, !37, i64 44, !37, i64 45}
!52 = !{!51, !36, i64 0}
!53 = !{!51, !36, i64 8}
!54 = !{!51, !37, i64 16}
!55 = !{!51, !37, i64 17}
!56 = !{!51, !37, i64 18}
!57 = !{!51, !37, i64 19}
!58 = !{!51, !37, i64 44}
!59 = !{!51, !37, i64 45}
!60 = !{!51, !36, i64 32}
!61 = !{!51, !37, i64 40}
!62 = !{!51, !37, i64 41}
!63 = !{!51, !37, i64 42}
!64 = !{!51, !37, i64 43}
!65 = !{!35, !39, i64 120}
!66 = !{!67, !37, i64 2081}
!67 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !41, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !39, i64 2084, !39, i64 2086, !39, i64 2088, !37, i64 2090, !39, i64 2092, !40, i64 2096, !40, i64 2100, !37, i64 2104, !40, i64 2108, !40, i64 2112, !37, i64 2116}
!68 = !{!67, !36, i64 0}
!69 = !{!70, !36, i64 1552}
!70 = !{!"Main", !36, i64 0, !36, i64 8, !37, i64 16, !39, i64 1040, !39, i64 1042, !39, i64 1044, !39, i64 1046, !71, i64 1048, !37, i64 1056, !39, i64 1072, !36, i64 1080, !41, i64 1088, !41, i64 1104, !41, i64 1120, !41, i64 1136, !41, i64 1152, !41, i64 1168, !41, i64 1184, !41, i64 1200, !41, i64 1216, !41, i64 1232, !41, i64 1248, !41, i64 1264, !41, i64 1280, !41, i64 1296, !41, i64 1312, !41, i64 1328, !41, i64 1344, !41, i64 1360, !41, i64 1376, !41, i64 1392, !41, i64 1408, !41, i64 1424, !41, i64 1440, !41, i64 1456, !41, i64 1472, !41, i64 1488, !41, i64 1504, !41, i64 1520, !41, i64 1536, !41, i64 1552, !41, i64 1568, !41, i64 1584, !41, i64 1600, !41, i64 1616, !37, i64 1632, !36, i64 1888, !36, i64 1896}
!71 = !{!"long", !37, i64 0}
!72 = !{!73, !36, i64 136}
!73 = !{!"wmWindowManager", !74, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !40, i64 152, !39, i64 156, !39, i64 158, !41, i64 160, !41, i64 176, !75, i64 192, !41, i64 232, !41, i64 248, !41, i64 264, !41, i64 280, !36, i64 296, !36, i64 304, !36, i64 312, !41, i64 320, !36, i64 336, !37, i64 344, !37, i64 345}
!74 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !39, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !36, i64 112}
!75 = !{!"ReportList", !41, i64 0, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !36, i64 32}
!76 = !{!35, !36, i64 0}
!77 = distinct !{!77, !78, !79}
!78 = !{!"llvm.loop.mustprogress"}
!79 = !{!"llvm.loop.unroll.disable"}
!80 = !{!40, !40, i64 0}
!81 = !{!67, !40, i64 2100}
!82 = !{!83, !40, i64 0}
!83 = !{!"GHOST_TabletData", !40, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!84 = !{!35, !39, i64 124}
!85 = !{!86, !39, i64 18}
!86 = !{!"wmEvent", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 18, !40, i64 20, !40, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !39, i64 44, !39, i64 46, !40, i64 48, !40, i64 52, !87, i64 56, !40, i64 64, !40, i64 68, !39, i64 72, !39, i64 74, !39, i64 76, !39, i64 78, !39, i64 80, !39, i64 82, !36, i64 88, !36, i64 96, !39, i64 104, !39, i64 106, !40, i64 108, !36, i64 112}
!87 = !{!"double", !37, i64 0}
!88 = !{!86, !39, i64 16}
!89 = !{!37, !37, i64 0}
!90 = distinct !{!90, !78, !79}
!91 = distinct !{!91, !78, !79}
