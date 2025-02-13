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
@switch.table.convert_cursor = private unnamed_addr constant [10 x i32] [i32 1, i32 8, i32 10, i32 12, i32 11, i32 5, i32 0, i32 0, i32 23, i32 21], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_cursor_set(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1
  %5 = icmp ne i8 %4, 0
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %61, label %7

7:                                                ; preds = %2
  %8 = icmp eq i32 %1, 1007
  br i1 %8, label %9, label %13

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = tail call i32 @GHOST_SetCursorVisibility(ptr noundef %11, i32 noundef 0) #6
  br label %61

13:                                               ; preds = %7
  %14 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 73), align 8, !tbaa !42
  %15 = icmp ne i16 %14, 0
  %16 = icmp eq i32 %1, 1002
  %17 = and i1 %16, %15
  %18 = select i1 %17, i32 6, i32 %1
  %19 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  %21 = tail call i32 @GHOST_SetCursorVisibility(ptr noundef %20, i32 noundef 1) #6
  %22 = icmp eq i32 %18, 1006
  br i1 %22, label %23, label %30

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 15
  %25 = load i16, ptr %24, align 2, !tbaa !47
  %26 = icmp eq i16 %25, 0
  %27 = sext i16 %25 to i32
  br i1 %26, label %28, label %30

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 13
  store i16 1006, ptr %29, align 2, !tbaa !48
  br label %35

30:                                               ; preds = %23, %13
  %31 = phi i32 [ %18, %13 ], [ %27, %23 ]
  %32 = trunc i32 %31 to i16
  %33 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 13
  store i16 %32, ptr %33, align 2, !tbaa !48
  %34 = icmp sgt i32 %31, 999
  br i1 %34, label %35, label %40

35:                                               ; preds = %28, %30
  %36 = phi i32 [ 1006, %28 ], [ %31, %30 ]
  %37 = load ptr, ptr %19, align 8, !tbaa !34
  %38 = tail call fastcc i32 @convert_cursor(i32 noundef %36) #7, !range !49
  %39 = tail call i32 @GHOST_SetCursorShape(ptr noundef %37, i32 noundef %38) #6
  br label %61

40:                                               ; preds = %30
  %41 = add i32 %31, -19
  %42 = icmp ult i32 %41, -18
  br i1 %42, label %61, label %43

43:                                               ; preds = %40
  %44 = icmp eq i32 %31, 1
  br i1 %44, label %45, label %49

45:                                               ; preds = %43
  %46 = load ptr, ptr %19, align 8, !tbaa !34
  %47 = tail call fastcc i32 @convert_cursor(i32 noundef 1006) #7, !range !49
  %48 = tail call i32 @GHOST_SetCursorShape(ptr noundef %46, i32 noundef %47) #6
  br label %61

49:                                               ; preds = %43
  %50 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 73), align 8, !tbaa !42
  %51 = icmp eq i16 %50, 0
  %52 = zext nneg i32 %31 to i64
  %53 = getelementptr inbounds [19 x ptr], ptr @BlenderCursor, i64 0, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !50
  br i1 %51, label %59, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.BCursor, ptr %54, i64 0, i32 6
  %57 = load ptr, ptr %56, align 8, !tbaa !51
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %49, %55
  tail call fastcc void @window_set_custom_cursor_ex(ptr noundef nonnull %0, ptr noundef %54, i32 noundef 0) #7
  br label %61

60:                                               ; preds = %55
  tail call fastcc void @window_set_custom_cursor_ex(ptr noundef nonnull %0, ptr noundef nonnull %54, i32 noundef 1) #7
  br label %61

61:                                               ; preds = %45, %60, %59, %40, %2, %9, %35
  ret void
}

; Function Attrs: optsize
declare i32 @GHOST_SetCursorVisibility(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @GHOST_SetCursorShape(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @convert_cursor(i32 noundef %0) unnamed_addr #2 !PGOFuncName !53 {
  %2 = add i32 %0, -1000
  %3 = icmp ult i32 %2, 10
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = zext nneg i32 %2 to i64
  %6 = getelementptr inbounds [10 x i32], ptr @switch.table.convert_cursor, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i32 [ 0, %1 ], [ %7, %4 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @window_set_custom_cursor_ex(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !54 {
  %4 = icmp eq i32 %2, 0
  %5 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  br i1 %4, label %31, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.BCursor, ptr %1, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !51
  %10 = getelementptr inbounds %struct.BCursor, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !55
  %12 = getelementptr inbounds %struct.BCursor, ptr %1, i64 0, i32 8
  %13 = load i8, ptr %12, align 8, !tbaa !56
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds %struct.BCursor, ptr %1, i64 0, i32 9
  %16 = load i8, ptr %15, align 1, !tbaa !57
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds %struct.BCursor, ptr %1, i64 0, i32 10
  %19 = load i8, ptr %18, align 2, !tbaa !58
  %20 = zext i8 %19 to i32
  %21 = getelementptr inbounds %struct.BCursor, ptr %1, i64 0, i32 11
  %22 = load i8, ptr %21, align 1, !tbaa !59
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds %struct.BCursor, ptr %1, i64 0, i32 12
  %25 = load i8, ptr %24, align 4, !tbaa !60
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds %struct.BCursor, ptr %1, i64 0, i32 13
  %28 = load i8, ptr %27, align 1, !tbaa !61
  %29 = zext i8 %28 to i32
  %30 = tail call i32 @GHOST_SetCustomCursorShapeEx(ptr noundef %6, ptr noundef %9, ptr noundef %11, i32 noundef %14, i32 noundef %17, i32 noundef %20, i32 noundef %23, i32 noundef %26, i32 noundef %29) #6
  br label %54

31:                                               ; preds = %3
  %32 = load ptr, ptr %1, align 8, !tbaa !62
  %33 = getelementptr inbounds %struct.BCursor, ptr %1, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !63
  %35 = getelementptr inbounds %struct.BCursor, ptr %1, i64 0, i32 2
  %36 = load i8, ptr %35, align 8, !tbaa !64
  %37 = zext i8 %36 to i32
  %38 = getelementptr inbounds %struct.BCursor, ptr %1, i64 0, i32 3
  %39 = load i8, ptr %38, align 1, !tbaa !65
  %40 = zext i8 %39 to i32
  %41 = getelementptr inbounds %struct.BCursor, ptr %1, i64 0, i32 4
  %42 = load i8, ptr %41, align 2, !tbaa !66
  %43 = zext i8 %42 to i32
  %44 = getelementptr inbounds %struct.BCursor, ptr %1, i64 0, i32 5
  %45 = load i8, ptr %44, align 1, !tbaa !67
  %46 = zext i8 %45 to i32
  %47 = getelementptr inbounds %struct.BCursor, ptr %1, i64 0, i32 12
  %48 = load i8, ptr %47, align 4, !tbaa !60
  %49 = zext i8 %48 to i32
  %50 = getelementptr inbounds %struct.BCursor, ptr %1, i64 0, i32 13
  %51 = load i8, ptr %50, align 1, !tbaa !61
  %52 = zext i8 %51 to i32
  %53 = tail call i32 @GHOST_SetCustomCursorShapeEx(ptr noundef %6, ptr noundef %32, ptr noundef %34, i32 noundef %37, i32 noundef %40, i32 noundef %43, i32 noundef %46, i32 noundef %49, i32 noundef %52) #6
  br label %54

54:                                               ; preds = %31, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_cursor_modal_set(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 14
  %4 = load i16, ptr %3, align 8, !tbaa !68
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 13
  %8 = load i16, ptr %7, align 2, !tbaa !48
  store i16 %8, ptr %3, align 8, !tbaa !68
  br label %9

9:                                                ; preds = %6, %2
  %10 = trunc i32 %1 to i16
  %11 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 15
  store i16 %10, ptr %11, align 2, !tbaa !47
  tail call void @WM_cursor_set(ptr noundef nonnull %0, i32 noundef %1) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_cursor_modal_restore(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 15
  store i16 0, ptr %2, align 2, !tbaa !47
  %3 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 14
  %4 = load i16, ptr %3, align 8, !tbaa !68
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = sext i16 %4 to i32
  tail call void @WM_cursor_set(ptr noundef nonnull %0, i32 noundef %7) #7
  br label %8

8:                                                ; preds = %6, %1
  store i16 0, ptr %3, align 8, !tbaa !68
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_cursor_wait(i8 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !69
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %22

4:                                                ; preds = %1
  %5 = load ptr, ptr @G, align 8, !tbaa !71
  %6 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 40
  %7 = load ptr, ptr %6, align 8, !tbaa !72
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.wmWindowManager, ptr %7, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !75
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %9
  %14 = icmp eq i8 %0, 0
  br label %15

15:                                               ; preds = %13, %19
  %16 = phi ptr [ %11, %13 ], [ %20, %19 ]
  br i1 %14, label %18, label %17

17:                                               ; preds = %15
  tail call void @WM_cursor_modal_set(ptr noundef nonnull %16, i32 noundef 5) #7
  br label %19

18:                                               ; preds = %15
  tail call void @WM_cursor_modal_restore(ptr noundef nonnull %16) #7
  br label %19

19:                                               ; preds = %17, %18
  %20 = load ptr, ptr %16, align 8, !tbaa !79
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %15, !llvm.loop !80

22:                                               ; preds = %19, %4, %9, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_cursor_grab_enable(ptr nocapture noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = tail call float @GHOST_GetNativePixelSize(ptr noundef %6) #6
  %8 = icmp eq ptr %3, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = load <4 x i32>, ptr %3, align 4, !tbaa !82
  %11 = sitofp <4 x i32> %10 to <4 x float>
  %12 = insertelement <4 x float> poison, float %7, i64 0
  %13 = shufflevector <4 x float> %12, <4 x float> poison, <4 x i32> zeroinitializer
  %14 = fdiv <4 x float> %11, %13
  %15 = fptosi <4 x float> %14 to <4 x i32>
  store <4 x i32> %15, ptr %3, align 4, !tbaa !82
  br label %16

16:                                               ; preds = %9, %4
  %17 = icmp eq i8 %2, 0
  %18 = icmp eq i8 %1, 0
  %19 = select i1 %18, i32 1, i32 2
  %20 = select i1 %17, i32 %19, i32 3
  %21 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !83
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %16
  %25 = load ptr, ptr %5, align 8, !tbaa !34
  %26 = icmp eq ptr %25, null
  br i1 %26, label %39, label %27

27:                                               ; preds = %24
  %28 = tail call ptr @GHOST_GetTabletData(ptr noundef nonnull %25) #6
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, ptr %28, align 4, !tbaa !84
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30, %27
  %34 = load ptr, ptr %5, align 8, !tbaa !34
  %35 = tail call i32 @GHOST_SetCursorGrab(ptr noundef %34, i32 noundef %20, ptr noundef %3, ptr noundef null) #6
  br label %36

36:                                               ; preds = %33, %30
  %37 = trunc i32 %20 to i16
  %38 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 16
  store i16 %37, ptr %38, align 4, !tbaa !86
  br label %39

39:                                               ; preds = %24, %36, %16
  ret void
}

; Function Attrs: optsize
declare float @GHOST_GetNativePixelSize(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GHOST_GetTabletData(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @GHOST_SetCursorGrab(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_cursor_grab_disable(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !83
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
  %13 = tail call i32 @GHOST_SetCursorGrab(ptr noundef nonnull %10, i32 noundef 0, ptr noundef null, ptr noundef %1) #6
  %14 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 16
  store i16 0, ptr %14, align 4, !tbaa !86
  br label %15

15:                                               ; preds = %8, %12, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @wm_cursor_arrow_move(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  %6 = load i16, ptr %5, align 2, !tbaa !87
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %10 = load i16, ptr %9, align 8, !tbaa !90
  switch i16 %10, label %15 [
    i16 140, label %11
    i16 138, label %12
    i16 137, label %13
    i16 139, label %14
  ]

11:                                               ; preds = %8
  tail call fastcc void @wm_cursor_warp_relative(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 1) #7
  br label %15

12:                                               ; preds = %8
  tail call fastcc void @wm_cursor_warp_relative(ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1) #7
  br label %15

13:                                               ; preds = %8
  tail call fastcc void @wm_cursor_warp_relative(ptr noundef nonnull %0, i32 noundef -1, i32 noundef 0) #7
  br label %15

14:                                               ; preds = %8
  tail call fastcc void @wm_cursor_warp_relative(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 0) #7
  br label %15

15:                                               ; preds = %2, %4, %8, %14, %13, %12, %11
  %16 = phi i32 [ 1, %11 ], [ 1, %12 ], [ 1, %13 ], [ 1, %14 ], [ 0, %8 ], [ 0, %4 ], [ 0, %2 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_cursor_warp_relative(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !91 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  call void @wm_get_cursor_position(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #6
  %6 = load i32, ptr %4, align 4, !tbaa !82
  %7 = add nsw i32 %6, %1
  %8 = load i32, ptr %5, align 4, !tbaa !82
  %9 = add nsw i32 %8, %2
  call void @WM_cursor_warp(ptr noundef %0, i32 noundef %7, i32 noundef %9) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_cursor_time(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [16 x [2 x i8]], align 16
  %4 = alloca [16 x [2 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %5 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 14
  %6 = load i16, ptr %5, align 8, !tbaa !68
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 13
  %10 = load i16, ptr %9, align 2, !tbaa !48
  store i16 %10, ptr %5, align 8, !tbaa !68
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
  %28 = load i8, ptr %27, align 1, !tbaa !92
  %29 = or disjoint i64 %26, %24
  %30 = getelementptr inbounds [16 x [2 x i8]], ptr %4, i64 0, i64 %29, i64 %23
  store i8 %28, ptr %30, align 1, !tbaa !92
  %31 = add nuw nsw i64 %26, 1
  %32 = icmp eq i64 %31, 8
  br i1 %32, label %33, label %25, !llvm.loop !93

33:                                               ; preds = %25
  %34 = add nsw i32 %15, -1
  %35 = add i32 %14, -10
  %36 = icmp ult i32 %35, -19
  %37 = icmp ne i32 %15, 0
  %38 = and i1 %36, %37
  br i1 %38, label %13, label %39, !llvm.loop !94

39:                                               ; preds = %33, %11
  call fastcc void @window_set_custom_cursor(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @window_set_custom_cursor(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !95 {
  %4 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = tail call i32 @GHOST_SetCustomCursorShape(ptr noundef %5, ptr noundef %2, ptr noundef %1, i32 noundef 7, i32 noundef 7) #6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @wm_init_cursor_data() local_unnamed_addr #5 {
  store ptr @wm_init_cursor_data.NWArrowCursor, ptr getelementptr inbounds ([19 x ptr], ptr @BlenderCursor, i64 0, i64 2), align 16, !tbaa !50
  store ptr @wm_init_cursor_data.NSArrowCursor, ptr getelementptr inbounds ([19 x ptr], ptr @BlenderCursor, i64 0, i64 3), align 8, !tbaa !50
  store ptr @wm_init_cursor_data.EWArrowCursor, ptr getelementptr inbounds ([19 x ptr], ptr @BlenderCursor, i64 0, i64 4), align 16, !tbaa !50
  store ptr @wm_init_cursor_data.WaitCursor, ptr getelementptr inbounds ([19 x ptr], ptr @BlenderCursor, i64 0, i64 5), align 8, !tbaa !50
  store ptr @wm_init_cursor_data.CrossCursor, ptr getelementptr inbounds ([19 x ptr], ptr @BlenderCursor, i64 0, i64 6), align 16, !tbaa !50
  store ptr @wm_init_cursor_data.EditCrossCursor, ptr getelementptr inbounds ([19 x ptr], ptr @BlenderCursor, i64 0, i64 7), align 8, !tbaa !50
  store ptr @wm_init_cursor_data.BoxSelCursor, ptr getelementptr inbounds ([19 x ptr], ptr @BlenderCursor, i64 0, i64 8), align 16, !tbaa !50
  store ptr @wm_init_cursor_data.KnifeCursor, ptr getelementptr inbounds ([19 x ptr], ptr @BlenderCursor, i64 0, i64 9), align 8, !tbaa !50
  store ptr @wm_init_cursor_data.VLoopCursor, ptr getelementptr inbounds ([19 x ptr], ptr @BlenderCursor, i64 0, i64 10), align 16, !tbaa !50
  store ptr @wm_init_cursor_data.TextEditCursor, ptr getelementptr inbounds ([19 x ptr], ptr @BlenderCursor, i64 0, i64 11), align 8, !tbaa !50
  store ptr @wm_init_cursor_data.PaintBrushCursor, ptr getelementptr inbounds ([19 x ptr], ptr @BlenderCursor, i64 0, i64 12), align 16, !tbaa !50
  store ptr @wm_init_cursor_data.HandCursor, ptr getelementptr inbounds ([19 x ptr], ptr @BlenderCursor, i64 0, i64 13), align 8, !tbaa !50
  store ptr @wm_init_cursor_data.NSEWScrollCursor, ptr getelementptr inbounds ([19 x ptr], ptr @BlenderCursor, i64 0, i64 14), align 16, !tbaa !50
  store ptr @wm_init_cursor_data.NSScrollCursor, ptr getelementptr inbounds ([19 x ptr], ptr @BlenderCursor, i64 0, i64 15), align 8, !tbaa !50
  store ptr @wm_init_cursor_data.EWScrollCursor, ptr getelementptr inbounds ([19 x ptr], ptr @BlenderCursor, i64 0, i64 16), align 16, !tbaa !50
  store ptr @wm_init_cursor_data.EyedropperCursor, ptr getelementptr inbounds ([19 x ptr], ptr @BlenderCursor, i64 0, i64 17), align 8, !tbaa !50
  store ptr @wm_init_cursor_data.SwapCursor, ptr getelementptr inbounds ([19 x ptr], ptr @BlenderCursor, i64 0, i64 18), align 16, !tbaa !50
  ret void
}

; Function Attrs: optsize
declare i32 @GHOST_SetCustomCursorShapeEx(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @wm_get_cursor_position(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_cursor_warp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @GHOST_SetCustomCursorShape(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { nounwind }

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
!49 = !{i32 0, i32 24}
!50 = !{!36, !36, i64 0}
!51 = !{!52, !36, i64 24}
!52 = !{!"BCursor", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 17, !37, i64 18, !37, i64 19, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 41, !37, i64 42, !37, i64 43, !37, i64 44, !37, i64 45}
!53 = !{!"wm_cursors.c:convert_cursor"}
!54 = !{!"wm_cursors.c:window_set_custom_cursor_ex"}
!55 = !{!52, !36, i64 32}
!56 = !{!52, !37, i64 40}
!57 = !{!52, !37, i64 41}
!58 = !{!52, !37, i64 42}
!59 = !{!52, !37, i64 43}
!60 = !{!52, !37, i64 44}
!61 = !{!52, !37, i64 45}
!62 = !{!52, !36, i64 0}
!63 = !{!52, !36, i64 8}
!64 = !{!52, !37, i64 16}
!65 = !{!52, !37, i64 17}
!66 = !{!52, !37, i64 18}
!67 = !{!52, !37, i64 19}
!68 = !{!35, !39, i64 120}
!69 = !{!70, !37, i64 2081}
!70 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !41, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !39, i64 2084, !39, i64 2086, !39, i64 2088, !37, i64 2090, !39, i64 2092, !40, i64 2096, !40, i64 2100, !37, i64 2104, !40, i64 2108, !40, i64 2112, !37, i64 2116}
!71 = !{!70, !36, i64 0}
!72 = !{!73, !36, i64 1552}
!73 = !{!"Main", !36, i64 0, !36, i64 8, !37, i64 16, !39, i64 1040, !39, i64 1042, !39, i64 1044, !39, i64 1046, !74, i64 1048, !37, i64 1056, !39, i64 1072, !36, i64 1080, !41, i64 1088, !41, i64 1104, !41, i64 1120, !41, i64 1136, !41, i64 1152, !41, i64 1168, !41, i64 1184, !41, i64 1200, !41, i64 1216, !41, i64 1232, !41, i64 1248, !41, i64 1264, !41, i64 1280, !41, i64 1296, !41, i64 1312, !41, i64 1328, !41, i64 1344, !41, i64 1360, !41, i64 1376, !41, i64 1392, !41, i64 1408, !41, i64 1424, !41, i64 1440, !41, i64 1456, !41, i64 1472, !41, i64 1488, !41, i64 1504, !41, i64 1520, !41, i64 1536, !41, i64 1552, !41, i64 1568, !41, i64 1584, !41, i64 1600, !41, i64 1616, !37, i64 1632, !36, i64 1888, !36, i64 1896}
!74 = !{!"long", !37, i64 0}
!75 = !{!76, !36, i64 136}
!76 = !{!"wmWindowManager", !77, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !40, i64 152, !39, i64 156, !39, i64 158, !41, i64 160, !41, i64 176, !78, i64 192, !41, i64 232, !41, i64 248, !41, i64 264, !41, i64 280, !36, i64 296, !36, i64 304, !36, i64 312, !41, i64 320, !36, i64 336, !37, i64 344, !37, i64 345}
!77 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !39, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !36, i64 112}
!78 = !{!"ReportList", !41, i64 0, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !36, i64 32}
!79 = !{!35, !36, i64 0}
!80 = distinct !{!80, !81}
!81 = !{!"llvm.loop.mustprogress"}
!82 = !{!40, !40, i64 0}
!83 = !{!70, !40, i64 2100}
!84 = !{!85, !40, i64 0}
!85 = !{!"GHOST_TabletData", !40, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!86 = !{!35, !39, i64 124}
!87 = !{!88, !39, i64 18}
!88 = !{!"wmEvent", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 18, !40, i64 20, !40, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !39, i64 44, !39, i64 46, !40, i64 48, !40, i64 52, !89, i64 56, !40, i64 64, !40, i64 68, !39, i64 72, !39, i64 74, !39, i64 76, !39, i64 78, !39, i64 80, !39, i64 82, !36, i64 88, !36, i64 96, !39, i64 104, !39, i64 106, !40, i64 108, !36, i64 112}
!89 = !{!"double", !37, i64 0}
!90 = !{!88, !39, i64 16}
!91 = !{!"wm_cursors.c:wm_cursor_warp_relative"}
!92 = !{!37, !37, i64 0}
!93 = distinct !{!93, !81}
!94 = distinct !{!94, !81}
!95 = !{!"wm_cursors.c:window_set_custom_cursor"}
