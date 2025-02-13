; ModuleID = 'utils.cpp'
source_filename = "utils.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gamestate_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1000 x i32], [1000 x %struct.move_x], i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.move_x = type { i32, i32, i32, i32, i64, i64 }
%struct.state_t = type { i32, [64 x i32], i64, i64, i64, [13 x i64], i32, i32, [13 x i32], i32, i32, i32, i32, i32, i32, i32, i64, i64, [64 x %struct.move_x], [64 x i32], [64 x i32], [64 x %struct.anon], i64, i64, i32, [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1000 x i64] }
%struct.anon = type { i32, i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@root_scores = dso_local local_unnamed_addr global [240 x i32] zeroinitializer, align 16
@multipv_strings = dso_local global [240 x [512 x i8]] zeroinitializer, align 16
@multipv_scores = dso_local local_unnamed_addr global [240 x i32] zeroinitializer, align 16
@uci_mode = external local_unnamed_addr global i32, align 4
@gamestate = external local_unnamed_addr global %struct.gamestate_t, align 8
@allow_pondering = external local_unnamed_addr global i32, align 4
@__const._Z11comp_to_sanP7state_tiPc.type_to_char = private unnamed_addr constant [14 x i8] c"FPPNNKKRRQQBBE", align 1
@.str = private unnamed_addr constant [5 x i8] c"%c%d\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%c%d=%c\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%cx%c%d\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"%cx%c%d=%c\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"O-O-O\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"%c%c%c%d\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"%c%d%c%d\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"%c%cx%c%d\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"%c%dx%c%d\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"%c%c%d\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"illg\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"0000\00", align 1
@uci_chess960_mode = external local_unnamed_addr global i32, align 4
@.str.15 = private unnamed_addr constant [10 x i8] c"%c%d%c%dn\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"%c%d%c%dr\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"%c%d%c%db\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"%c%d%c%dq\00", align 1
@.str.19 = private unnamed_addr constant [42 x i8] c"+----+----+----+----+----+----+----+----+\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"!!\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c" P\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"*P\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c" N\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"*N\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c" K\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"*K\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c" R\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"*R\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c" Q\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"*Q\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c" B\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"*B\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@__const._Z13display_boardP7state_ti.piece_rep = private unnamed_addr constant [14 x ptr] [ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], align 16
@.str.34 = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"%d |\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c" %s |\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"\0A  %s\0A\00", align 1
@.str.38 = private unnamed_addr constant [45 x i8] c"\0A     a    b    c    d    e    f    g    h\0A\0A\00", align 1
@.str.39 = private unnamed_addr constant [45 x i8] c"\0A     h    g    f    e    d    c    b    a\0A\0A\00", align 1
@_ZZ9init_gameP11gamestate_tP7state_tE10init_board = internal unnamed_addr constant [64 x i32] [i32 8, i32 4, i32 12, i32 10, i32 6, i32 12, i32 4, i32 8, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 7, i32 3, i32 11, i32 9, i32 5, i32 11, i32 3, i32 7], align 16
@.str.41 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.42 = private unnamed_addr constant [20 x i8] c"%2d %7d %5d %8llu  \00", align 1
@.str.43 = private unnamed_addr constant [36 x i8] c"info currmove %s currmovenumber %d\0A\00", align 1
@.str.44 = private unnamed_addr constant [81 x i8] c"info depth %d seldepth %d time %d nodes %llu tbhits %d score cp %d multipv 1 pv \00", align 1
@EGTBHits = external local_unnamed_addr global i32, align 4
@.str.45 = private unnamed_addr constant [83 x i8] c"info depth %d seldepth %d time %d nodes %llu tbhits %d score mate %d multipv 1 pv \00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.47 = private unnamed_addr constant [92 x i8] c"info depth %d seldepth %d time %d nodes %llu tbhits %d score cp %d lowerbound multipv 1 pv \00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"%s !!\00", align 1
@.str.49 = private unnamed_addr constant [35 x i8] c"info currmove %s currmovenumber %d\00", align 1
@.str.50 = private unnamed_addr constant [92 x i8] c"info depth %d seldepth %d time %d nodes %llu tbhits %d score cp %d upperbound multipv 1 pv \00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"%s ??\00", align 1
@.str.52 = private unnamed_addr constant [66 x i8] c"depth %d seldepth %d time %d nodes %llu tbhits %d score cp %d pv \00", align 1
@.str.53 = private unnamed_addr constant [68 x i8] c"depth %d seldepth %d time %d nodes %llu tbhits %d score mate %d pv \00", align 1
@uci_multipv = external global i32, align 4
@.str.54 = private unnamed_addr constant [17 x i8] c"info multipv %d \00", align 1
@material = external local_unnamed_addr constant [14 x i32], align 16
@Mask = external local_unnamed_addr global [64 x i64], align 16
@cfg_logging = external local_unnamed_addr global i32, align 4
@cfg_logfile = external global [512 x i8], align 16
@.str.55 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@buffered_count = external local_unnamed_addr global i32, align 4
@is_pondering = external local_unnamed_addr global i32, align 4
@buffered_command = external global [20 x [8192 x i8]], align 16
@.str.56 = private unnamed_addr constant [6 x i8] c"< %s\0A\00", align 1
@.str.57 = private unnamed_addr constant [32 x i8] c"Nothing at other end - exiting\0A\00", align 1
@.str.58 = private unnamed_addr constant [74 x i8] c"Deep Sjeng version 3.2 SPEC, Copyright (C) 2000-2009 Gian-Carlo Pascutto\0A\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@.str.59 = private unnamed_addr constant [75 x i8] c"info string Time for move: %ds, elapsed: %ds, left: %ds, early break: %ds\0A\00", align 1
@.str.60 = private unnamed_addr constant [57 x i8] c"info string Time for move: %ds, elapsed: %ds, left: %ds\0A\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"otim\00", align 1
@.str.64 = private unnamed_addr constant [29 x i8] c"setoption name MultiPV value\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"value %d\00", align 1
@.str.66 = private unnamed_addr constant [30 x i8] c"WARNING: no move match: -%s-\0A\00", align 1
@_ZL2s1 = internal unnamed_addr global i32 0, align 4
@_ZL2s2 = internal unnamed_addr global i32 0, align 4
@_ZL2s3 = internal unnamed_addr global i32 0, align 4
@_ZZL15hash_extract_pvP7state_tiPcE10levelstack = internal unnamed_addr global [65 x i64] zeroinitializer, align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_Z12elo_to_depthi(i32 noundef %0) local_unnamed_addr #0 !prof !85 {
  %2 = icmp sgt i32 %0, 2399
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = icmp sgt i32 %0, 2199
  br i1 %4, label %14, label %5

5:                                                ; preds = %3
  %6 = icmp sgt i32 %0, 1999
  br i1 %6, label %14, label %7

7:                                                ; preds = %5
  %8 = icmp sgt i32 %0, 1799
  br i1 %8, label %14, label %9

9:                                                ; preds = %7
  %10 = icmp sgt i32 %0, 1399
  br i1 %10, label %14, label %11

11:                                               ; preds = %9
  %12 = icmp sgt i32 %0, 999
  %13 = select i1 %12, i32 3, i32 2
  br label %14

14:                                               ; preds = %11, %9, %7, %5, %3, %1
  %15 = phi i32 [ 60, %1 ], [ 10, %3 ], [ 8, %5 ], [ 6, %7 ], [ 4, %9 ], [ %13, %11 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_Z14elo_to_blunderi(i32 noundef %0) local_unnamed_addr #0 !prof !85 {
  %2 = icmp sgt i32 %0, 2399
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = icmp sgt i32 %0, 2199
  br i1 %4, label %14, label %5

5:                                                ; preds = %3
  %6 = icmp sgt i32 %0, 1999
  br i1 %6, label %14, label %7

7:                                                ; preds = %5
  %8 = icmp sgt i32 %0, 1599
  br i1 %8, label %14, label %9

9:                                                ; preds = %7
  %10 = icmp sgt i32 %0, 1199
  br i1 %10, label %14, label %11

11:                                               ; preds = %9
  %12 = icmp sgt i32 %0, 799
  %13 = select i1 %12, i32 50, i32 0
  br label %14

14:                                               ; preds = %11, %9, %7, %5, %3, %1
  %15 = phi i32 [ 100, %1 ], [ 90, %3 ], [ 80, %5 ], [ 70, %7 ], [ 60, %9 ], [ %13, %11 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i16 @_Z12compact_movei(i32 noundef %0) local_unnamed_addr #0 !prof !86 {
  %2 = lshr i32 %0, 12
  %3 = and i32 %2, 15
  %4 = lshr i32 %0, 4
  %5 = and i32 %4, 28672
  %6 = and i32 %0, 4095
  %7 = or disjoint i32 %5, %6
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %14, label %9, !prof !87

9:                                                ; preds = %1
  %10 = shl nuw nsw i32 %3, 11
  %11 = add nuw nsw i32 %10, 2048
  %12 = and i32 %11, 61440
  %13 = or i32 %12, %7
  br label %14

14:                                               ; preds = %9, %1
  %15 = phi i32 [ %13, %9 ], [ %7, %1 ]
  %16 = trunc i32 %15 to i16
  ret i16 %16
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_Z4logLi(i32 noundef %0) local_unnamed_addr #0 !prof !85 {
  %2 = icmp ult i32 %0, 2
  br i1 %2, label %9, label %3

3:                                                ; preds = %1, %3
  %4 = phi i32 [ %7, %3 ], [ 0, %1 ]
  %5 = phi i32 [ %6, %3 ], [ %0, %1 ]
  %6 = ashr i32 %5, 1
  %7 = add nuw nsw i32 %4, 1
  %8 = icmp ult i32 %6, 2
  br i1 %8, label %9, label %3, !llvm.loop !88

9:                                                ; preds = %3, %1
  %10 = phi i32 [ 0, %1 ], [ %7, %3 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_Z14dumpsearchstatP7state_t(ptr nocapture noundef readnone %0) local_unnamed_addr #0 !prof !90 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_Z13allocate_timeP11gamestate_ti(ptr nocapture readnone %0, i32 %1) local_unnamed_addr #2 !prof !85 {
  %3 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 6), align 8, !tbaa !91
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %35

5:                                                ; preds = %2
  %6 = load i32, ptr @allow_pondering, align 4, !tbaa !97
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, double 2.400000e+01, double 2.100000e+01
  %9 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 9), align 4
  %10 = icmp eq i32 %9, 0
  %11 = fadd double %8, -9.000000e+00
  %12 = select i1 %10, double %8, double %11
  %13 = icmp ne i32 %6, 0
  %14 = icmp ne i32 %9, 0
  %15 = and i1 %13, %14
  %16 = fadd double %12, -2.000000e+00
  %17 = select i1 %15, double %16, double %12
  %18 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 10), align 8, !tbaa !98
  %19 = sitofp i32 %18 to double
  %20 = fdiv double %19, %17
  br i1 %10, label %66, label %21

21:                                               ; preds = %5
  %22 = fsub double %19, %20
  %23 = sitofp i32 %9 to double
  %24 = fsub double %22, %23
  %25 = fcmp ogt double %24, 5.000000e+02
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = fadd double %20, %23
  br label %66

28:                                               ; preds = %21
  %29 = fmul double %23, 2.000000e+00
  %30 = fdiv double %29, 3.000000e+00
  %31 = fsub double %22, %30
  %32 = fcmp ogt double %31, 1.000000e+02
  br i1 %32, label %33, label %66

33:                                               ; preds = %28
  %34 = fadd double %30, %20
  br label %66

35:                                               ; preds = %2
  %36 = sitofp i32 %3 to double
  %37 = fadd double %36, 1.000000e+00
  %38 = fcmp ogt double %37, 2.400000e+01
  %39 = select i1 %38, double 2.500000e+01, double %37
  %40 = load i32, ptr @uci_mode, align 4, !tbaa !97
  %41 = icmp eq i32 %40, 0
  %42 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 10), align 8, !tbaa !98
  %43 = sitofp i32 %42 to double
  %44 = fadd double %43, -1.000000e+02
  br i1 %41, label %45, label %51

45:                                               ; preds = %35
  %46 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 15), align 4, !tbaa !99
  %47 = sdiv i32 %46, 2
  %48 = srem i32 %47, %3
  %49 = sitofp i32 %48 to double
  %50 = fsub double %39, %49
  br label %51

51:                                               ; preds = %35, %45
  %52 = phi double [ %50, %45 ], [ %39, %35 ]
  %53 = fdiv double %44, %52
  %54 = load i32, ptr @allow_pondering, align 4, !tbaa !97
  %55 = icmp eq i32 %54, 0
  %56 = add nsw i32 %42, -100
  %57 = sitofp i32 %56 to double
  br i1 %55, label %62, label %58

58:                                               ; preds = %51
  %59 = fmul double %53, 2.500000e+00
  %60 = fcmp olt double %59, %57
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  br label %66

62:                                               ; preds = %51
  %63 = fmul double %53, 1.500000e+00
  %64 = fcmp olt double %63, %57
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %66

66:                                               ; preds = %61, %58, %65, %62, %5, %28, %33, %26
  %67 = phi double [ %59, %61 ], [ %53, %58 ], [ %63, %65 ], [ %53, %62 ], [ %27, %26 ], [ %34, %33 ], [ %20, %28 ], [ %20, %5 ]
  %68 = fptosi double %67 to i32
  ret i32 %68
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z11comp_to_sanP7state_tiPc(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #3 !prof !100 {
  %4 = alloca [240 x i32], align 16
  %5 = alloca [240 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 960, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 960, ptr nonnull %5) #20
  %6 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1
  %7 = lshr i32 %1, 6
  %8 = and i32 %7, 63
  %9 = tail call noundef i32 @_Z4ranki(i32 noundef %8) #21
  %10 = and i32 %1, 63
  %11 = tail call noundef i32 @_Z4ranki(i32 noundef %10) #21
  %12 = tail call noundef i32 @_Z4filei(i32 noundef %8) #21
  %13 = trunc i32 %12 to i8
  %14 = add i8 %13, 96
  %15 = tail call noundef i32 @_Z4filei(i32 noundef %10) #21
  %16 = trunc i32 %15 to i8
  %17 = add i8 %16, 96
  %18 = zext nneg i32 %8 to i64
  %19 = getelementptr inbounds i32, ptr %6, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !97
  %21 = add i32 %20, -1
  %22 = icmp ult i32 %21, 2
  br i1 %22, label %23, label %55, !prof !101

23:                                               ; preds = %3
  %24 = zext nneg i32 %10 to i64
  %25 = getelementptr inbounds i32, ptr %6, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !97
  %27 = icmp eq i32 %26, 13
  %28 = and i32 %1, 8388608
  %29 = icmp eq i32 %28, 0
  %30 = and i1 %29, %27
  %31 = lshr i32 %1, 12
  %32 = and i32 %31, 15
  %33 = icmp eq i32 %32, 0
  br i1 %30, label %34, label %44, !prof !102

34:                                               ; preds = %23
  %35 = sext i8 %17 to i32
  br i1 %33, label %36, label %38, !prof !103

36:                                               ; preds = %34
  %37 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %35, i32 noundef %11) #22
  br label %140

38:                                               ; preds = %34
  %39 = zext nneg i32 %32 to i64
  %40 = getelementptr inbounds [14 x i8], ptr @__const._Z11comp_to_sanP7state_tiPc.type_to_char, i64 0, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !104
  %42 = sext i8 %41 to i32
  %43 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %35, i32 noundef %11, i32 noundef %42) #22
  br label %140

44:                                               ; preds = %23
  %45 = sext i8 %14 to i32
  %46 = sext i8 %17 to i32
  br i1 %33, label %47, label %49, !prof !105

47:                                               ; preds = %44
  %48 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %45, i32 noundef %46, i32 noundef %11) #22
  br label %140

49:                                               ; preds = %44
  %50 = zext nneg i32 %32 to i64
  %51 = getelementptr inbounds [14 x i8], ptr @__const._Z11comp_to_sanP7state_tiPc.type_to_char, i64 0, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !104
  %53 = sext i8 %52 to i32
  %54 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %45, i32 noundef %46, i32 noundef %11, i32 noundef %53) #22
  br label %140

55:                                               ; preds = %3
  %56 = lshr i32 %1, 16
  %57 = and i32 %56, 7
  switch i32 %57, label %59 [
    i32 0, label %60
    i32 1, label %58
    i32 3, label %58
  ], !prof !106

58:                                               ; preds = %55, %55
  store i32 5188943, ptr %2, align 1
  br label %140

59:                                               ; preds = %55
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %2, ptr noundef nonnull align 1 dereferenceable(6) @.str.5, i64 6, i1 false)
  br label %140

60:                                               ; preds = %55
  %61 = call noundef i32 @_Z3genP7state_tPi(ptr noundef nonnull %0, ptr noundef nonnull %4) #21
  %62 = call noundef i32 @_Z8in_checkP7state_t(ptr noundef nonnull %0) #21
  %63 = icmp sgt i32 %61, 0
  br i1 %63, label %64, label %125, !prof !107

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %18
  %66 = zext nneg i32 %61 to i64
  br label %67

67:                                               ; preds = %64, %88
  %68 = phi i64 [ 0, %64 ], [ %89, %88 ]
  %69 = getelementptr inbounds [240 x i32], ptr %4, i64 0, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !97
  %71 = and i32 %70, 63
  %72 = icmp eq i32 %71, %10
  br i1 %72, label %73, label %88, !prof !108

73:                                               ; preds = %67
  %74 = lshr i32 %70, 6
  %75 = and i32 %74, 63
  %76 = zext nneg i32 %75 to i64
  %77 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !97
  %79 = load i32, ptr %65, align 4, !tbaa !97
  %80 = icmp ne i32 %78, %79
  %81 = icmp eq i32 %75, %8
  %82 = or i1 %81, %80
  br i1 %82, label %88, label %83, !prof !109

83:                                               ; preds = %73
  call void @_Z4makeP7state_ti(ptr noundef nonnull %0, i32 noundef %70) #21
  %84 = load i32, ptr %69, align 4, !tbaa !97
  %85 = call noundef i32 @_Z11check_legalP7state_ti(ptr noundef nonnull %0, i32 noundef %84) #21
  %86 = icmp eq i32 %85, 0
  %87 = load i32, ptr %69, align 4, !tbaa !97
  call void @_Z6unmakeP7state_ti(ptr noundef nonnull %0, i32 noundef %87) #21
  br i1 %86, label %88, label %91, !prof !110

88:                                               ; preds = %83, %67, %73
  %89 = add nuw nsw i64 %68, 1
  %90 = icmp eq i64 %89, %66
  br i1 %90, label %125, label %67, !prof !111, !llvm.loop !112

91:                                               ; preds = %83
  %92 = zext nneg i32 %10 to i64
  %93 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %92
  %94 = load i32, ptr %93, align 4, !tbaa !97
  %95 = icmp eq i32 %94, 13
  %96 = and i64 %68, 4294967295
  %97 = getelementptr inbounds [240 x i32], ptr %4, i64 0, i64 %96
  %98 = load i32, ptr %97, align 4, !tbaa !97
  %99 = lshr i32 %98, 6
  %100 = and i32 %99, 63
  %101 = call noundef i32 @_Z4filei(i32 noundef %100) #21
  %102 = call noundef i32 @_Z4filei(i32 noundef %8) #21
  %103 = icmp eq i32 %101, %102
  %104 = load i32, ptr %19, align 4, !tbaa !97
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [14 x i8], ptr @__const._Z11comp_to_sanP7state_tiPc.type_to_char, i64 0, i64 %105
  %107 = load i8, ptr %106, align 1, !tbaa !104
  %108 = sext i8 %107 to i32
  br i1 %95, label %109, label %117, !prof !113

109:                                              ; preds = %91
  br i1 %103, label %114, label %110, !prof !114

110:                                              ; preds = %109
  %111 = sext i8 %14 to i32
  %112 = sext i8 %17 to i32
  %113 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %108, i32 noundef %111, i32 noundef %112, i32 noundef %11) #22
  br label %140

114:                                              ; preds = %109
  %115 = sext i8 %17 to i32
  %116 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %108, i32 noundef %9, i32 noundef %115, i32 noundef %11) #22
  br label %140

117:                                              ; preds = %91
  br i1 %103, label %122, label %118, !prof !115

118:                                              ; preds = %117
  %119 = sext i8 %14 to i32
  %120 = sext i8 %17 to i32
  %121 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %108, i32 noundef %119, i32 noundef %120, i32 noundef %11) #22
  br label %140

122:                                              ; preds = %117
  %123 = sext i8 %17 to i32
  %124 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %108, i32 noundef %9, i32 noundef %123, i32 noundef %11) #22
  br label %140

125:                                              ; preds = %88, %60
  %126 = zext nneg i32 %10 to i64
  %127 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %126
  %128 = load i32, ptr %127, align 4, !tbaa !97
  %129 = icmp eq i32 %128, 13
  %130 = load i32, ptr %19, align 4, !tbaa !97
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [14 x i8], ptr @__const._Z11comp_to_sanP7state_tiPc.type_to_char, i64 0, i64 %131
  %133 = load i8, ptr %132, align 1, !tbaa !104
  %134 = sext i8 %133 to i32
  %135 = sext i8 %17 to i32
  br i1 %129, label %136, label %138, !prof !116

136:                                              ; preds = %125
  %137 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %134, i32 noundef %135, i32 noundef %11) #22
  br label %140

138:                                              ; preds = %125
  %139 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %134, i32 noundef %135, i32 noundef %11) #22
  br label %140

140:                                              ; preds = %59, %58, %136, %138, %114, %110, %122, %118, %38, %36, %49, %47
  call void @_Z4makeP7state_ti(ptr noundef nonnull %0, i32 noundef %1) #21
  %141 = call noundef i32 @_Z11check_legalP7state_ti(ptr noundef nonnull %0, i32 noundef %1) #21
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %144, !prof !117

143:                                              ; preds = %140
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %2, ptr noundef nonnull align 1 dereferenceable(5) @.str.11, i64 5, i1 false) #22
  call void @_Z6unmakeP7state_ti(ptr noundef nonnull %0, i32 noundef %1) #21
  br label %168

144:                                              ; preds = %140
  %145 = call noundef i32 @_Z8in_checkP7state_t(ptr noundef nonnull %0) #21
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %167, label %147, !prof !118

147:                                              ; preds = %144
  %148 = call noundef i32 @_Z3genP7state_tPi(ptr noundef nonnull %0, ptr noundef nonnull %5) #21
  %149 = icmp sgt i32 %148, 0
  br i1 %149, label %150, label %163, !prof !119

150:                                              ; preds = %147
  %151 = zext nneg i32 %148 to i64
  br label %152

152:                                              ; preds = %150, %160
  %153 = phi i64 [ 0, %150 ], [ %161, %160 ]
  %154 = getelementptr inbounds [240 x i32], ptr %5, i64 0, i64 %153
  %155 = load i32, ptr %154, align 4, !tbaa !97
  call void @_Z4makeP7state_ti(ptr noundef %0, i32 noundef %155) #21
  %156 = load i32, ptr %154, align 4, !tbaa !97
  %157 = call noundef i32 @_Z11check_legalP7state_ti(ptr noundef %0, i32 noundef %156) #21
  %158 = icmp eq i32 %157, 0
  %159 = load i32, ptr %154, align 4, !tbaa !97
  call void @_Z6unmakeP7state_ti(ptr noundef %0, i32 noundef %159) #21
  br i1 %158, label %160, label %163, !prof !120

160:                                              ; preds = %152
  %161 = add nuw nsw i64 %153, 1
  %162 = icmp eq i64 %161, %151
  br i1 %162, label %163, label %152, !prof !121, !llvm.loop !122

163:                                              ; preds = %160, %152, %147
  %164 = phi i16 [ 35, %147 ], [ 35, %160 ], [ 43, %152 ]
  %165 = call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %166 = getelementptr inbounds i8, ptr %2, i64 %165
  store i16 %164, ptr %166, align 1
  br label %167

167:                                              ; preds = %163, %144
  call void @_Z6unmakeP7state_ti(ptr noundef %0, i32 noundef %1) #21
  br label %168

168:                                              ; preds = %167, %143
  call void @llvm.lifetime.end.p0(i64 960, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 960, ptr nonnull %4) #20
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: optsize
declare noundef i32 @_Z4ranki(i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef i32 @_Z4filei(i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef i32 @_Z3genP7state_tPi(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef i32 @_Z8in_checkP7state_t(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_Z4makeP7state_ti(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef i32 @_Z11check_legalP7state_ti(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_Z6unmakeP7state_ti(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z13comp_to_coordP7state_tiPc(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #3 !prof !85 {
  %4 = lshr i32 %1, 12
  %5 = and i32 %4, 15
  %6 = lshr i32 %1, 6
  %7 = and i32 %1, 63
  %8 = lshr i32 %1, 16
  %9 = and i32 %8, 7
  %10 = or i32 %6, %1
  %11 = and i32 %10, 63
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %2, ptr noundef nonnull align 1 dereferenceable(5) @.str.14, i64 5, i1 false)
  br label %69

14:                                               ; preds = %3
  %15 = and i32 %6, 63
  %16 = tail call noundef i32 @_Z4ranki(i32 noundef %15) #21
  %17 = tail call noundef i32 @_Z4ranki(i32 noundef %7) #21
  %18 = tail call noundef i32 @_Z4filei(i32 noundef %15) #21
  %19 = trunc i32 %18 to i8
  %20 = add i8 %19, 96
  %21 = tail call noundef i32 @_Z4filei(i32 noundef %7) #21
  %22 = trunc i32 %21 to i8
  %23 = add i8 %22, 96
  %24 = icmp ne i32 %9, 0
  %25 = load i32, ptr @uci_chess960_mode, align 4
  %26 = icmp ne i32 %25, 0
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %50

28:                                               ; preds = %14
  switch i32 %9, label %41 [
    i32 1, label %29
    i32 2, label %32
    i32 3, label %35
    i32 4, label %38
  ]

29:                                               ; preds = %28
  %30 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 33
  %31 = load i32, ptr %30, align 8, !tbaa !123
  br label %41

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 32
  %34 = load i32, ptr %33, align 4, !tbaa !125
  br label %41

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 35
  %37 = load i32, ptr %36, align 8, !tbaa !126
  br label %41

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 34
  %40 = load i32, ptr %39, align 4, !tbaa !127
  br label %41

41:                                               ; preds = %28, %32, %38, %35, %29
  %42 = phi i32 [ %31, %29 ], [ %34, %32 ], [ %37, %35 ], [ %40, %38 ], [ %7, %28 ]
  %43 = tail call noundef i32 @_Z4filei(i32 noundef %42) #21
  %44 = tail call noundef i32 @_Z4ranki(i32 noundef %42) #21
  %45 = sext i8 %20 to i32
  %46 = shl i32 %43, 24
  %47 = add i32 %46, 1610612736
  %48 = ashr exact i32 %47, 24
  %49 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %45, i32 noundef %16, i32 noundef %48, i32 noundef %44) #22
  br label %69

50:                                               ; preds = %14
  %51 = icmp eq i32 %5, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %50
  %53 = sext i8 %20 to i32
  %54 = sext i8 %23 to i32
  %55 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %53, i32 noundef %16, i32 noundef %54, i32 noundef %17) #22
  br label %69

56:                                               ; preds = %50
  %57 = add nuw nsw i32 %5, 1
  %58 = lshr i32 %57, 1
  %59 = sext i8 %20 to i32
  %60 = sext i8 %23 to i32
  switch i32 %58, label %67 [
    i32 2, label %61
    i32 4, label %63
    i32 6, label %65
  ]

61:                                               ; preds = %56
  %62 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %59, i32 noundef %16, i32 noundef %60, i32 noundef %17) #22
  br label %69

63:                                               ; preds = %56
  %64 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %59, i32 noundef %16, i32 noundef %60, i32 noundef %17) #22
  br label %69

65:                                               ; preds = %56
  %66 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %59, i32 noundef %16, i32 noundef %60, i32 noundef %17) #22
  br label %69

67:                                               ; preds = %56
  %68 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %59, i32 noundef %16, i32 noundef %60, i32 noundef %17) #22
  br label %69

69:                                               ; preds = %41, %61, %65, %67, %63, %52, %13
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize uwtable
define dso_local void @_Z13display_boardP7state_ti(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #8 !prof !90 {
  %3 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1
  %4 = and i32 %1, 1
  %5 = icmp eq i32 %4, 0
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.19) #21
  br i1 %5, label %24, label %6, !prof !128

6:                                                ; preds = %2, %21
  %7 = phi i64 [ %22, %21 ], [ 0, %2 ]
  %8 = trunc i64 %7 to i32
  %9 = sub i32 8, %8
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.35, i32 noundef %9) #21
  %10 = shl nuw nsw i64 %7, 3
  %11 = getelementptr i32, ptr %3, i64 %10
  br label %12

12:                                               ; preds = %6, %12
  %13 = phi i64 [ 0, %6 ], [ %19, %12 ]
  %14 = getelementptr i32, ptr %11, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !97
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [14 x ptr], ptr @__const._Z13display_boardP7state_ti.piece_rep, i64 0, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !129
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.36, ptr noundef %18) #21
  %19 = add nuw nsw i64 %13, 1
  %20 = icmp eq i64 %19, 8
  br i1 %20, label %21, label %12, !prof !131, !llvm.loop !132

21:                                               ; preds = %12
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.19) #21
  %22 = add nuw nsw i64 %7, 1
  %23 = icmp eq i64 %22, 8
  br i1 %23, label %42, label %6, !prof !133, !llvm.loop !134

24:                                               ; preds = %2, %39
  %25 = phi i64 [ %40, %39 ], [ 7, %2 ]
  %26 = trunc i64 %25 to i32
  %27 = add i32 %26, 1
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.35, i32 noundef %27) #21
  %28 = shl nsw i64 %25, 3
  %29 = getelementptr i32, ptr %3, i64 %28
  br label %30

30:                                               ; preds = %24, %30
  %31 = phi i64 [ 7, %24 ], [ %37, %30 ]
  %32 = getelementptr i32, ptr %29, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !97
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [14 x ptr], ptr @__const._Z13display_boardP7state_ti.piece_rep, i64 0, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !129
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.36, ptr noundef %36) #21
  %37 = add nsw i64 %31, -1
  %38 = icmp eq i64 %31, 0
  br i1 %38, label %39, label %30, !llvm.loop !135

39:                                               ; preds = %30
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.19) #21
  %40 = add nsw i64 %25, -1
  %41 = icmp eq i64 %25, 0
  br i1 %41, label %42, label %24, !llvm.loop !136

42:                                               ; preds = %21, %39
  %43 = phi ptr [ @.str.39, %39 ], [ @.str.38, %21 ]
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull %43) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize uwtable
define dso_local void @_Z8myprintfPKcz(ptr nocapture noundef readonly %0, ...) local_unnamed_addr #8 !prof !137 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #20
  call void @llvm.va_start(ptr nonnull %2)
  %3 = call i32 @vprintf(ptr noundef %0, ptr noundef nonnull %2) #21
  %4 = load i32, ptr @cfg_logging, align 4, !tbaa !97
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6, !prof !138

6:                                                ; preds = %1
  %7 = call noalias ptr @fopen(ptr noundef nonnull @cfg_logfile, ptr noundef nonnull @.str.55) #21
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = call i32 @vfprintf(ptr noundef nonnull %7, ptr noundef %0, ptr noundef nonnull %2) #21
  %11 = call i32 @fclose(ptr noundef nonnull %7) #21
  br label %12

12:                                               ; preds = %6, %9, %1
  call void @llvm.va_end(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z9init_gameP11gamestate_tP7state_t(ptr nocapture noundef readnone %0, ptr noundef %1) local_unnamed_addr #3 !prof !139 {
  %3 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %3, ptr noundef nonnull align 16 dereferenceable(256) @_ZZ9init_gameP11gamestate_tP7state_tE10init_board, i64 256, i1 false)
  %4 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 9
  store <4 x i32> <i32 30, i32 0, i32 1, i32 60>, ptr %4, align 4, !tbaa !97
  %5 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 13
  store i32 4, ptr %5, align 4, !tbaa !140
  %6 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 30
  store <4 x i32> <i32 60, i32 4, i32 56, i32 63>, ptr %6, align 4, !tbaa !97
  %7 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 34
  store i32 0, ptr %7, align 4, !tbaa !127
  %8 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 35
  store i32 7, ptr %8, align 8, !tbaa !126
  tail call void @_Z16SetupCastleMasksP7state_t(ptr noundef %1) #21
  store i32 0, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 4), align 8, !tbaa !141
  %9 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 6
  store i32 0, ptr %9, align 8, !tbaa !142
  tail call void @_Z18reset_piece_squareP7state_t(ptr noundef %1) #21
  %10 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 15
  store i32 0, ptr %10, align 4, !tbaa !143
  %11 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 14
  store i32 0, ptr %11, align 8, !tbaa !144
  store i32 0, ptr %1, align 8, !tbaa !145
  store i32 0, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 1), align 4, !tbaa !146
  ret void
}

; Function Attrs: optsize
declare void @_Z16SetupCastleMasksP7state_t(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z18reset_piece_squareP7state_t(ptr noundef %0) local_unnamed_addr #3 !prof !147 {
  %2 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 6
  store i32 0, ptr %2, align 8, !tbaa !142
  %3 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %3, i8 0, i64 52, i1 false)
  br label %4

4:                                                ; preds = %1, %30
  %5 = phi i64 [ 0, %1 ], [ %31, %30 ]
  %6 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !97
  %8 = icmp ne i32 %7, 0
  %9 = icmp slt i32 %7, 13
  %10 = and i1 %8, %9
  br i1 %10, label %11, label %30, !prof !148

11:                                               ; preds = %4
  switch i32 %7, label %18 [
    i32 5, label %12
    i32 6, label %15
  ], !prof !149

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 12
  %14 = trunc i64 %5 to i32
  store i32 %14, ptr %13, align 8, !tbaa !150
  br label %18

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 13
  %17 = trunc i64 %5 to i32
  store i32 %17, ptr %16, align 4, !tbaa !140
  br label %18

18:                                               ; preds = %11, %15, %12
  %19 = load i32, ptr %6, align 4, !tbaa !97
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [14 x i32], ptr @material, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !97
  %23 = load i32, ptr %2, align 8, !tbaa !142
  %24 = add nsw i32 %23, %22
  store i32 %24, ptr %2, align 8, !tbaa !142
  %25 = load i32, ptr %6, align 4, !tbaa !97
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !97
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %27, align 4, !tbaa !97
  br label %30

30:                                               ; preds = %4, %18
  %31 = add nuw nsw i64 %5, 1
  %32 = icmp eq i64 %31, 64
  br i1 %32, label %33, label %4, !prof !151, !llvm.loop !152

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 3
  %35 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 4
  %36 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %34, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %36, i8 0, i64 96, i1 false)
  br label %37

37:                                               ; preds = %33, %55
  %38 = phi i64 [ 0, %33 ], [ %56, %55 ]
  %39 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !97
  %41 = icmp eq i32 %40, 13
  br i1 %41, label %55, label %42, !prof !153

42:                                               ; preds = %37
  %43 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %38
  %44 = load i64, ptr %43, align 8, !tbaa !154
  %45 = sext i32 %40 to i64
  %46 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 %45
  %47 = load i64, ptr %46, align 8, !tbaa !154
  %48 = or i64 %47, %44
  store i64 %48, ptr %46, align 8, !tbaa !154
  %49 = and i32 %40, 1
  %50 = icmp eq i32 %49, 0
  %51 = load i64, ptr %43, align 8, !tbaa !154
  %52 = select i1 %50, ptr %34, ptr %35, !prof !155
  %53 = load i64, ptr %52, align 8, !tbaa !154
  %54 = or i64 %53, %51
  store i64 %54, ptr %52, align 8, !tbaa !154
  br label %55

55:                                               ; preds = %42, %37
  %56 = add nuw nsw i64 %38, 1
  %57 = icmp eq i64 %56, 64
  br i1 %57, label %58, label %37, !prof !151, !llvm.loop !156

58:                                               ; preds = %55
  %59 = load i64, ptr %35, align 8, !tbaa !157
  %60 = load i64, ptr %34, align 8, !tbaa !158
  %61 = or i64 %60, %59
  %62 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  store i64 %61, ptr %62, align 8, !tbaa !159
  tail call void @_Z14init_psq_scoreP7state_t(ptr noundef nonnull %0) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read) uwtable
define dso_local noundef i32 @_Z7is_movePc(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !85 {
  %2 = load i8, ptr %0, align 1, !tbaa !104
  %3 = sext i8 %2 to i32
  %4 = tail call i32 @isalpha(i32 noundef %3) #23
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, ptr %0, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !104
  %9 = sext i8 %8 to i32
  %10 = add nsw i32 %9, -48
  %11 = icmp ult i32 %10, 10
  br i1 %11, label %12, label %24

12:                                               ; preds = %6
  %13 = getelementptr inbounds i8, ptr %0, i64 2
  %14 = load i8, ptr %13, align 1, !tbaa !104
  %15 = sext i8 %14 to i32
  %16 = tail call i32 @isalpha(i32 noundef %15) #23
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds i8, ptr %0, i64 3
  %20 = load i8, ptr %19, align 1, !tbaa !104
  %21 = sext i8 %20 to i32
  %22 = add nsw i32 %21, -48
  %23 = icmp ult i32 %22, 10
  br i1 %23, label %25, label %24

24:                                               ; preds = %18, %12, %6, %1
  br label %25

25:                                               ; preds = %18, %24
  %26 = phi i32 [ 0, %24 ], [ 1, %18 ]
  ret i32 %26
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @isalpha(i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z20extract_current_pathP7state_t(ptr nocapture noundef readonly %0) local_unnamed_addr #3 !prof !85 {
  %2 = alloca [10 x i8], align 1
  %3 = alloca [640 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 640, ptr nonnull %3) #20
  store i8 0, ptr %3, align 16, !tbaa !104
  %4 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 14
  %5 = load i32, ptr %4, align 8, !tbaa !144
  %6 = icmp sgt i32 %5, 1
  br i1 %6, label %7, label %27

7:                                                ; preds = %1, %20
  %8 = phi i32 [ %21, %20 ], [ %5, %1 ]
  %9 = phi i64 [ %24, %20 ], [ 1, %1 ]
  %10 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 19, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !97
  %12 = and i32 %11, 4095
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = call i64 @strlen(ptr nonnull dereferenceable(1) %3)
  %16 = getelementptr inbounds i8, ptr %3, i64 %15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %16, ptr noundef nonnull align 1 dereferenceable(5) @.str.14, i64 5, i1 false)
  br label %20

17:                                               ; preds = %7
  call void @_Z13comp_to_coordP7state_tiPc(ptr noundef nonnull %0, i32 noundef %11, ptr noundef nonnull %2) #21
  %18 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %2) #22
  %19 = load i32, ptr %4, align 8, !tbaa !144
  br label %20

20:                                               ; preds = %17, %14
  %21 = phi i32 [ %19, %17 ], [ %8, %14 ]
  %22 = call i64 @strlen(ptr nonnull dereferenceable(1) %3)
  %23 = getelementptr inbounds i8, ptr %3, i64 %22
  store i16 32, ptr %23, align 1
  %24 = add nuw nsw i64 %9, 1
  %25 = sext i32 %21 to i64
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %7, label %27, !llvm.loop !160

27:                                               ; preds = %20, %1
  %28 = call i64 @strlen(ptr nonnull dereferenceable(1) %3)
  %29 = getelementptr inbounds i8, ptr %3, i64 %28
  store i16 10, ptr %29, align 1
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 640, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %2) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_Z19extract_ponder_moveP7state_t(ptr noundef %0) local_unnamed_addr #3 !prof !85 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [240 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 960, ptr nonnull %4) #20
  %5 = call noundef i32 @_Z7ProbeTTP7state_tPiiiPjS1_S1_S1_S1_i(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef nonnull %3, i32 noundef 0) #21
  %6 = icmp eq i32 %5, 4
  br i1 %6, label %44, label %7

7:                                                ; preds = %1
  %8 = call noundef i32 @_Z8in_checkP7state_t(ptr noundef %0) #21
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = call noundef i32 @_Z8in_checkP7state_t(ptr noundef %0) #21
  %12 = call noundef i32 @_Z12gen_evasionsP7state_tPii(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %11) #21
  br label %15

13:                                               ; preds = %7
  %14 = call noundef i32 @_Z3genP7state_tPi(ptr noundef %0, ptr noundef nonnull %4) #21
  br label %15

15:                                               ; preds = %13, %10
  %16 = phi i32 [ %12, %10 ], [ %14, %13 ]
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %44

18:                                               ; preds = %15
  %19 = load i32, ptr %2, align 4, !tbaa !97
  %20 = zext nneg i32 %16 to i64
  br label %21

21:                                               ; preds = %18, %21
  %22 = phi i64 [ 0, %18 ], [ %31, %21 ]
  %23 = phi i32 [ -1, %18 ], [ %30, %21 ]
  %24 = getelementptr inbounds [240 x i32], ptr %4, i64 0, i64 %22
  %25 = load i32, ptr %24, align 4, !tbaa !97
  %26 = call noundef zeroext i16 @_Z12compact_movei(i32 noundef %25) #21
  %27 = zext i16 %26 to i32
  %28 = icmp eq i32 %19, %27
  %29 = trunc i64 %22 to i32
  %30 = select i1 %28, i32 %29, i32 %23
  %31 = add nuw nsw i64 %22, 1
  %32 = icmp eq i64 %31, %20
  br i1 %32, label %33, label %21, !llvm.loop !161

33:                                               ; preds = %21
  %34 = icmp sgt i32 %30, -1
  br i1 %34, label %35, label %44

35:                                               ; preds = %33
  %36 = zext nneg i32 %30 to i64
  %37 = getelementptr inbounds [240 x i32], ptr %4, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !97
  call void @_Z4makeP7state_ti(ptr noundef %0, i32 noundef %38) #21
  %39 = load i32, ptr %37, align 4, !tbaa !97
  %40 = call noundef i32 @_Z11check_legalP7state_ti(ptr noundef %0, i32 noundef %39) #21
  %41 = icmp eq i32 %40, 0
  %42 = load i32, ptr %37, align 4, !tbaa !97
  %43 = select i1 %41, i32 0, i32 %42
  call void @_Z6unmakeP7state_ti(ptr noundef %0, i32 noundef %42) #21
  br label %44

44:                                               ; preds = %15, %33, %35, %1
  %45 = phi i32 [ %43, %35 ], [ 0, %33 ], [ 0, %1 ], [ 0, %15 ]
  call void @llvm.lifetime.end.p0(i64 960, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #20
  ret i32 %45
}

; Function Attrs: optsize
declare noundef i32 @_Z7ProbeTTP7state_tPiiiPjS1_S1_S1_S1_i(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef i32 @_Z12gen_evasionsP7state_tPii(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z24extract_current_bestlineP7state_t(ptr noundef %0) local_unnamed_addr #3 !prof !85 {
  %2 = alloca [640 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 640, ptr nonnull %2) #20
  store i8 0, ptr %2, align 16, !tbaa !104
  call fastcc void @_ZL15hash_extract_pvP7state_tiPc(ptr noundef %0, i32 noundef 60, ptr noundef nonnull %2) #21
  %3 = call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %4 = getelementptr inbounds i8, ptr %2, i64 %3
  store i16 10, ptr %4, align 1
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull %2) #21
  call void @llvm.lifetime.end.p0(i64 640, ptr nonnull %2) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZL15hash_extract_pvP7state_tiPc(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #3 !prof !162 !PGOFuncName !163 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [240 x i32], align 16
  %7 = alloca [512 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 960, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %7) #20
  %8 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 16
  %9 = load i64, ptr %8, align 8, !tbaa !164
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds [65 x i64], ptr @_ZZL15hash_extract_pvP7state_tiPcE10levelstack, i64 0, i64 %10
  store i64 %9, ptr %11, align 8, !tbaa !154
  %12 = tail call i32 @llvm.smax.i32(i32 %1, i32 64)
  %13 = zext nneg i32 %12 to i64
  br label %14

14:                                               ; preds = %17, %3
  %15 = phi i64 [ %18, %17 ], [ %10, %3 ]
  %16 = icmp eq i64 %15, %13
  br i1 %16, label %22, label %17, !prof !165

17:                                               ; preds = %14
  %18 = add nsw i64 %15, 1
  %19 = getelementptr inbounds [65 x i64], ptr @_ZZL15hash_extract_pvP7state_tiPcE10levelstack, i64 0, i64 %18
  %20 = load i64, ptr %19, align 8, !tbaa !154
  %21 = icmp eq i64 %20, %9
  br i1 %21, label %76, label %14, !prof !166, !llvm.loop !167

22:                                               ; preds = %14
  %23 = add nsw i32 %1, -1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %76, label %25, !prof !168

25:                                               ; preds = %22
  %26 = call noundef i32 @_Z7ProbeTTP7state_tPiiiPjS1_S1_S1_S1_i(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull %4, i32 noundef 0) #21
  %27 = icmp eq i32 %26, 4
  br i1 %27, label %76, label %28, !prof !169

28:                                               ; preds = %25
  %29 = call noundef i32 @_Z8in_checkP7state_t(ptr noundef %0) #21
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31, !prof !170

31:                                               ; preds = %28
  %32 = call noundef i32 @_Z8in_checkP7state_t(ptr noundef %0) #21
  %33 = call noundef i32 @_Z12gen_evasionsP7state_tPii(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %32) #21
  br label %36

34:                                               ; preds = %28
  %35 = call noundef i32 @_Z3genP7state_tPi(ptr noundef %0, ptr noundef nonnull %6) #21
  br label %36

36:                                               ; preds = %34, %31
  %37 = phi i32 [ %33, %31 ], [ %35, %34 ]
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %76, !prof !171

39:                                               ; preds = %36
  %40 = load i32, ptr %5, align 4, !tbaa !97
  %41 = zext nneg i32 %37 to i64
  br label %42

42:                                               ; preds = %39, %42
  %43 = phi i64 [ 0, %39 ], [ %52, %42 ]
  %44 = phi i32 [ -1, %39 ], [ %51, %42 ]
  %45 = getelementptr inbounds [240 x i32], ptr %6, i64 0, i64 %43
  %46 = load i32, ptr %45, align 4, !tbaa !97
  %47 = call noundef zeroext i16 @_Z12compact_movei(i32 noundef %46) #21
  %48 = zext i16 %47 to i32
  %49 = icmp eq i32 %40, %48
  %50 = trunc i64 %43 to i32
  %51 = select i1 %49, i32 %50, i32 %44, !prof !172
  %52 = add nuw nsw i64 %43, 1
  %53 = icmp eq i64 %52, %41
  br i1 %53, label %54, label %42, !prof !173, !llvm.loop !174

54:                                               ; preds = %42
  %55 = icmp ult i32 %51, %37
  br i1 %55, label %56, label %76, !prof !175

56:                                               ; preds = %54
  %57 = load i32, ptr @uci_mode, align 4, !tbaa !97
  %58 = icmp eq i32 %57, 0
  %59 = zext nneg i32 %51 to i64
  %60 = getelementptr inbounds [240 x i32], ptr %6, i64 0, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !97
  br i1 %58, label %62, label %63, !prof !176

62:                                               ; preds = %56
  call void @_Z11comp_to_sanP7state_tiPc(ptr noundef %0, i32 noundef %61, ptr noundef nonnull %7) #21
  br label %64

63:                                               ; preds = %56
  call void @_Z13comp_to_coordP7state_tiPc(ptr noundef %0, i32 noundef %61, ptr noundef nonnull %7) #21
  br label %64

64:                                               ; preds = %63, %62
  %65 = getelementptr inbounds [240 x i32], ptr %6, i64 0, i64 %59
  %66 = load i32, ptr %65, align 4, !tbaa !97
  call void @_Z4makeP7state_ti(ptr noundef %0, i32 noundef %66) #21
  %67 = load i32, ptr %65, align 4, !tbaa !97
  %68 = call noundef i32 @_Z11check_legalP7state_ti(ptr noundef %0, i32 noundef %67) #21
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %74, label %70, !prof !177

70:                                               ; preds = %64
  %71 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %7) #22
  %72 = call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %73 = getelementptr inbounds i8, ptr %2, i64 %72
  store i16 32, ptr %73, align 1
  call fastcc void @_ZL15hash_extract_pvP7state_tiPc(ptr noundef %0, i32 noundef %23, ptr noundef %2) #21
  br label %74

74:                                               ; preds = %70, %64
  %75 = load i32, ptr %65, align 4, !tbaa !97
  call void @_Z6unmakeP7state_ti(ptr noundef %0, i32 noundef %75) #21
  br label %76

76:                                               ; preds = %17, %36, %25, %74, %54, %22
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 960, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z12stringize_pvP7state_tPc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 !prof !85 {
  store i8 0, ptr %1, align 1, !tbaa !104
  tail call fastcc void @_ZL15hash_extract_pvP7state_tiPc(ptr noundef %0, i32 noundef 60, ptr noundef nonnull %1) #21
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z13post_thinkingP7state_tiiPci(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #3 !prof !178 {
  %6 = alloca [512 x i8], align 16
  %7 = alloca [512 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %6) #20
  %8 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4, !tbaa !179
  %9 = icmp slt i32 %8, 3
  %10 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 14), align 8
  %11 = icmp sgt i32 %10, 2
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %51, label %13, !prof !180

13:                                               ; preds = %5
  %14 = load i32, ptr @uci_mode, align 4, !tbaa !97
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19, !prof !181

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 22
  %18 = load i64, ptr %17, align 8, !tbaa !182
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.42, i32 noundef %8, i32 noundef %1, i32 noundef 0, i64 noundef %18) #21
  br label %35

19:                                               ; preds = %13
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.43, ptr noundef %3, i32 noundef %4) #21
  %20 = tail call i32 @llvm.abs.i32(i32 %1, i1 true)
  %21 = icmp ult i32 %20, 10000
  %22 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4, !tbaa !179
  %23 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 24
  %24 = load i32, ptr %23, align 8, !tbaa !183
  %25 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 22
  %26 = load i64, ptr %25, align 8, !tbaa !182
  %27 = load i32, ptr @EGTBHits, align 4, !tbaa !97
  br i1 %21, label %28, label %29

28:                                               ; preds = %19
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.44, i32 noundef %22, i32 noundef %24, i32 noundef 0, i64 noundef %26, i32 noundef %27, i32 noundef %1) #21
  br label %35

29:                                               ; preds = %19
  %30 = sub nsw i32 32000, %20
  %31 = sdiv i32 %30, 2
  %32 = sub nsw i32 0, %31
  %33 = icmp slt i32 %1, 0
  %34 = select i1 %33, i32 %32, i32 %31
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.45, i32 noundef %22, i32 noundef %24, i32 noundef 0, i64 noundef %26, i32 noundef %27, i32 noundef %34) #21
  br label %35

35:                                               ; preds = %28, %29, %16
  %36 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 14
  %37 = load i32, ptr %36, align 8, !tbaa !144
  %38 = icmp slt i32 %37, 2
  br i1 %38, label %40, label %39, !prof !184

39:                                               ; preds = %35
  tail call void @_Z6unmakeP7state_ti(ptr noundef nonnull %0, i32 noundef %2) #21
  br label %40

40:                                               ; preds = %39, %35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %6, i8 0, i64 512, i1 false)
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %7) #20
  %41 = load i32, ptr @uci_mode, align 4, !tbaa !97
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44, !prof !181

43:                                               ; preds = %40
  call void @_Z11comp_to_sanP7state_tiPc(ptr noundef nonnull %0, i32 noundef %2, ptr noundef nonnull %7) #21
  br label %45

44:                                               ; preds = %40
  call void @_Z13comp_to_coordP7state_tiPc(ptr noundef nonnull %0, i32 noundef %2, ptr noundef nonnull %7) #21
  br label %45

45:                                               ; preds = %44, %43
  %46 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %7) #22
  %47 = call i64 @strlen(ptr nonnull dereferenceable(1) %6)
  %48 = getelementptr inbounds i8, ptr %6, i64 %47
  store i16 32, ptr %48, align 1
  call void @_Z4makeP7state_ti(ptr noundef nonnull %0, i32 noundef %2) #21
  call fastcc void @_ZL15hash_extract_pvP7state_tiPc(ptr noundef nonnull %0, i32 noundef 60, ptr noundef nonnull %6) #21
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.46, ptr noundef nonnull %6) #21
  call void @_Z6unmakeP7state_ti(ptr noundef nonnull %0, i32 noundef %2) #21
  br i1 %38, label %50, label %49, !prof !184

49:                                               ; preds = %45
  call void @_Z4makeP7state_ti(ptr noundef nonnull %0, i32 noundef %2) #21
  br label %50

50:                                               ; preds = %49, %45
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.41) #21
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %7) #20
  br label %51

51:                                               ; preds = %5, %50
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %6) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_Z9rdifftimeii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !185 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_Z5rtimev() local_unnamed_addr #0 !prof !186 {
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z16post_fh_thinkingP7state_tiiPci(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3, i32 noundef %4) local_unnamed_addr #3 !prof !187 {
  %6 = alloca [512 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %6) #20
  %7 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4, !tbaa !179
  %8 = icmp slt i32 %7, 3
  %9 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 14), align 8
  %10 = icmp sgt i32 %9, 2
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %44, label %12, !prof !188

12:                                               ; preds = %5
  %13 = load i32, ptr @uci_mode, align 4, !tbaa !97
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18, !prof !189

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 22
  %17 = load i64, ptr %16, align 8, !tbaa !182
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.42, i32 noundef %7, i32 noundef %1, i32 noundef 0, i64 noundef %17) #21
  br label %33

18:                                               ; preds = %12
  %19 = tail call i32 @llvm.abs.i32(i32 %1, i1 true)
  %20 = icmp ult i32 %19, 10000
  %21 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 24
  %22 = load i32, ptr %21, align 8, !tbaa !183
  %23 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 22
  %24 = load i64, ptr %23, align 8, !tbaa !182
  %25 = load i32, ptr @EGTBHits, align 4, !tbaa !97
  br i1 %20, label %26, label %27

26:                                               ; preds = %18
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.47, i32 noundef %7, i32 noundef %22, i32 noundef 0, i64 noundef %24, i32 noundef %25, i32 noundef %1) #21
  br label %33

27:                                               ; preds = %18
  %28 = sub nsw i32 32000, %19
  %29 = sdiv i32 %28, 2
  %30 = sub nsw i32 0, %29
  %31 = icmp slt i32 %1, 0
  %32 = select i1 %31, i32 %30, i32 %29
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.47, i32 noundef %7, i32 noundef %22, i32 noundef 0, i64 noundef %24, i32 noundef %25, i32 noundef %32) #21
  br label %33

33:                                               ; preds = %26, %27, %15
  tail call void @_Z6unmakeP7state_ti(ptr noundef nonnull %0, i32 noundef %2) #21
  %34 = load i32, ptr @uci_mode, align 4, !tbaa !97
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37, !prof !189

36:                                               ; preds = %33
  call void @_Z11comp_to_sanP7state_tiPc(ptr noundef nonnull %0, i32 noundef %2, ptr noundef nonnull %6) #21
  br label %38

37:                                               ; preds = %33
  call void @_Z13comp_to_coordP7state_tiPc(ptr noundef nonnull %0, i32 noundef %2, ptr noundef nonnull %6) #21
  br label %38

38:                                               ; preds = %37, %36
  tail call void @_Z4makeP7state_ti(ptr noundef nonnull %0, i32 noundef %2) #21
  %39 = load i32, ptr @uci_mode, align 4, !tbaa !97
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42, !prof !189

41:                                               ; preds = %38
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.48, ptr noundef nonnull %6) #21
  br label %43

42:                                               ; preds = %38
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.46, ptr noundef nonnull %6) #21
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.41) #21
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.49, ptr noundef nonnull %6, i32 noundef %4) #21
  br label %43

43:                                               ; preds = %42, %41
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.41) #21
  br label %44

44:                                               ; preds = %5, %43
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %6) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z16post_fl_thinkingP7state_tiiPci(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #3 !prof !190 {
  %6 = alloca [512 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %6) #20
  %7 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4, !tbaa !179
  %8 = icmp slt i32 %7, 3
  %9 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 14), align 8
  %10 = icmp sgt i32 %9, 2
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %43, label %12, !prof !191

12:                                               ; preds = %5
  %13 = load i32, ptr @uci_mode, align 4, !tbaa !97
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18, !prof !192

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 22
  %17 = load i64, ptr %16, align 8, !tbaa !182
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.42, i32 noundef %7, i32 noundef %1, i32 noundef 0, i64 noundef %17) #21
  br label %34

18:                                               ; preds = %12
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.43, ptr noundef %3, i32 noundef %4) #21
  %19 = tail call i32 @llvm.abs.i32(i32 %1, i1 true)
  %20 = icmp ult i32 %19, 10000
  %21 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4, !tbaa !179
  %22 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 24
  %23 = load i32, ptr %22, align 8, !tbaa !183
  %24 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 22
  %25 = load i64, ptr %24, align 8, !tbaa !182
  %26 = load i32, ptr @EGTBHits, align 4, !tbaa !97
  br i1 %20, label %27, label %28

27:                                               ; preds = %18
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.50, i32 noundef %21, i32 noundef %23, i32 noundef 0, i64 noundef %25, i32 noundef %26, i32 noundef %1) #21
  br label %34

28:                                               ; preds = %18
  %29 = sub nsw i32 32000, %19
  %30 = sdiv i32 %29, 2
  %31 = sub nsw i32 0, %30
  %32 = icmp slt i32 %1, 0
  %33 = select i1 %32, i32 %31, i32 %30
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.50, i32 noundef %21, i32 noundef %23, i32 noundef 0, i64 noundef %25, i32 noundef %26, i32 noundef %33) #21
  br label %34

34:                                               ; preds = %27, %28, %15
  tail call void @_Z6unmakeP7state_ti(ptr noundef nonnull %0, i32 noundef %2) #21
  %35 = load i32, ptr @uci_mode, align 4, !tbaa !97
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38, !prof !192

37:                                               ; preds = %34
  call void @_Z11comp_to_sanP7state_tiPc(ptr noundef nonnull %0, i32 noundef %2, ptr noundef nonnull %6) #21
  br label %39

38:                                               ; preds = %34
  call void @_Z13comp_to_coordP7state_tiPc(ptr noundef nonnull %0, i32 noundef %2, ptr noundef nonnull %6) #21
  br label %39

39:                                               ; preds = %38, %37
  tail call void @_Z4makeP7state_ti(ptr noundef nonnull %0, i32 noundef %2) #21
  %40 = load i32, ptr @uci_mode, align 4, !tbaa !97
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, ptr @.str.51, ptr @.str.46, !prof !192
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull %42, ptr noundef nonnull %6) #21
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.41) #21
  br label %43

43:                                               ; preds = %5, %39
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %6) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z21post_multipv_thinkingP7state_tiii(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 !prof !85 {
  %5 = alloca [10 x i8], align 1
  %6 = alloca [512 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %6) #20
  %7 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4, !tbaa !179
  %8 = icmp slt i32 %7, 3
  %9 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 14), align 8
  %10 = icmp sgt i32 %9, 2
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %60, label %12

12:                                               ; preds = %4
  %13 = sext i32 %2 to i64
  %14 = getelementptr inbounds [240 x [512 x i8]], ptr @multipv_strings, i64 0, i64 %13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %14, i8 0, i64 512, i1 false)
  %15 = getelementptr inbounds [240 x i32], ptr @multipv_scores, i64 0, i64 %13
  store i32 %1, ptr %15, align 4, !tbaa !97
  %16 = tail call i32 @llvm.abs.i32(i32 %1, i1 true)
  %17 = icmp ult i32 %16, 10000
  %18 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 24
  %19 = load i32, ptr %18, align 8, !tbaa !183
  %20 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 22
  %21 = load i64, ptr %20, align 8, !tbaa !182
  %22 = load i32, ptr @EGTBHits, align 4, !tbaa !97
  br i1 %17, label %23, label %25

23:                                               ; preds = %12
  %24 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) @.str.52, i32 noundef %7, i32 noundef %19, i32 noundef 0, i64 noundef %21, i32 noundef %22, i32 noundef %1) #22
  br label %32

25:                                               ; preds = %12
  %26 = sub nsw i32 32000, %16
  %27 = sdiv i32 %26, 2
  %28 = sub nsw i32 0, %27
  %29 = icmp slt i32 %1, 0
  %30 = select i1 %29, i32 %28, i32 %27
  %31 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) @.str.53, i32 noundef %7, i32 noundef %19, i32 noundef 0, i64 noundef %21, i32 noundef %22, i32 noundef %30) #22
  br label %32

32:                                               ; preds = %25, %23
  call void @_Z13comp_to_coordP7state_tiPc(ptr noundef nonnull %0, i32 noundef %3, ptr noundef nonnull %5) #21
  %33 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %5) #22
  %34 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %14)
  %35 = getelementptr inbounds i8, ptr %14, i64 %34
  store i16 32, ptr %35, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %6, i8 0, i64 512, i1 false)
  call fastcc void @_ZL15hash_extract_pvP7state_tiPc(ptr noundef nonnull %0, i32 noundef 60, ptr noundef nonnull %6) #21
  %36 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %6) #22
  %37 = call i64 @strlen(ptr nonnull dereferenceable(1) %14)
  %38 = getelementptr inbounds i8, ptr %14, i64 %37
  store i16 10, ptr %38, align 1
  %39 = load i32, ptr %15, align 4, !tbaa !97
  %40 = load i32, ptr @uci_multipv, align 4, !tbaa !97
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [240 x i32], ptr @multipv_scores, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !97
  %44 = icmp slt i32 %39, %43
  %45 = icmp slt i32 %40, %2
  %46 = and i1 %45, %44
  br i1 %46, label %60, label %47

47:                                               ; preds = %32
  call fastcc void @_ZL14resort_multipvv() #21
  %48 = load i32, ptr @uci_multipv, align 4, !tbaa !97
  %49 = icmp slt i32 %48, 1
  br i1 %49, label %60, label %50

50:                                               ; preds = %47, %50
  %51 = phi i64 [ %56, %50 ], [ 1, %47 ]
  %52 = trunc i64 %51 to i32
  %53 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.54, i32 noundef %52) #22
  %54 = getelementptr inbounds [240 x [512 x i8]], ptr @multipv_strings, i64 0, i64 %51
  %55 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %54) #22
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull %6) #21
  %56 = add nuw nsw i64 %51, 1
  %57 = load i32, ptr @uci_multipv, align 4, !tbaa !97
  %58 = sext i32 %57 to i64
  %59 = icmp slt i64 %51, %58
  br i1 %59, label %50, label %60, !llvm.loop !193

60:                                               ; preds = %50, %47, %32, %4
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %5) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @_ZL14resort_multipvv() unnamed_addr #13 !prof !85 !PGOFuncName !194 {
  %1 = alloca [512 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %1) #20
  br label %2

2:                                                ; preds = %0, %22
  %3 = phi i64 [ 1, %0 ], [ %23, %22 ]
  %4 = getelementptr inbounds [240 x i32], ptr @multipv_scores, i64 0, i64 %3
  %5 = getelementptr [240 x [512 x i8]], ptr @multipv_strings, i64 0, i64 %3
  %6 = load i32, ptr %4, align 4, !tbaa !97
  br label %7

7:                                                ; preds = %2, %18
  %8 = phi i32 [ %6, %2 ], [ %19, %18 ]
  %9 = phi i64 [ %3, %2 ], [ %20, %18 ]
  %10 = getelementptr inbounds [240 x i32], ptr @multipv_scores, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !97
  %12 = icmp sgt i32 %11, %8
  br i1 %12, label %13, label %18

13:                                               ; preds = %7
  %14 = getelementptr inbounds [240 x [512 x i8]], ptr @multipv_strings, i64 0, i64 %9
  %15 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %14) #22
  %16 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %5) #22
  %17 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %1) #22
  store i32 %8, ptr %10, align 4, !tbaa !97
  store i32 %11, ptr %4, align 4, !tbaa !97
  br label %18

18:                                               ; preds = %7, %13
  %19 = phi i32 [ %8, %7 ], [ %11, %13 ]
  %20 = add nuw nsw i64 %9, 1
  %21 = icmp eq i64 %20, 240
  br i1 %21, label %22, label %7, !llvm.loop !195

22:                                               ; preds = %18
  %23 = add nuw nsw i64 %3, 1
  %24 = icmp eq i64 %23, 240
  br i1 %24, label %25, label %2, !llvm.loop !196

25:                                               ; preds = %22
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %1) #20
  ret void
}

; Function Attrs: optsize
declare void @_Z14init_psq_scoreP7state_t(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #14

; Function Attrs: nofree nounwind optsize
declare noundef i32 @vprintf(ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #14

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z6rinputPciP8_IO_FILE(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #3 !prof !85 {
  %4 = load i32, ptr @buffered_count, align 4, !tbaa !97
  %5 = icmp eq i32 %4, 0
  %6 = load i32, ptr @is_pondering, align 4
  %7 = icmp ne i32 %6, 0
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = add nsw i32 %1, -1
  br label %11

11:                                               ; preds = %35, %9
  %12 = phi i32 [ %37, %35 ], [ 0, %9 ]
  %13 = icmp slt i32 %12, %10
  br label %32

14:                                               ; preds = %3
  %15 = sext i32 %1 to i64
  %16 = tail call ptr @strncpy(ptr noundef %0, ptr noundef nonnull @buffered_command, i64 noundef %15) #22
  %17 = load i32, ptr @buffered_count, align 4, !tbaa !97
  %18 = add nsw i32 %17, -1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %14, %20
  %21 = phi i64 [ %24, %20 ], [ 0, %14 ]
  %22 = phi i32 [ %27, %20 ], [ %18, %14 ]
  %23 = getelementptr inbounds [20 x [8192 x i8]], ptr @buffered_command, i64 0, i64 %21
  %24 = add nuw nsw i64 %21, 1
  %25 = getelementptr inbounds [20 x [8192 x i8]], ptr @buffered_command, i64 0, i64 %24
  %26 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) %25, i64 noundef 8192) #22
  %27 = add nsw i32 %22, -1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %20, !llvm.loop !197

29:                                               ; preds = %20, %14
  store i32 %18, ptr @buffered_count, align 4, !tbaa !97
  %30 = sext i32 %18 to i64
  %31 = getelementptr inbounds [20 x [8192 x i8]], ptr @buffered_command, i64 0, i64 %30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8192) %31, i8 0, i64 8192, i1 false)
  br label %54

32:                                               ; preds = %11, %34
  %33 = tail call i32 @getc(ptr noundef %2) #21
  switch i32 %33, label %34 [
    i32 -1, label %40
    i32 10, label %40
  ]

34:                                               ; preds = %32
  br i1 %13, label %35, label %32, !llvm.loop !198

35:                                               ; preds = %34
  %36 = trunc i32 %33 to i8
  %37 = add nuw nsw i32 %12, 1
  %38 = zext nneg i32 %12 to i64
  %39 = getelementptr inbounds i8, ptr %0, i64 %38
  store i8 %36, ptr %39, align 1, !tbaa !104
  br label %11, !llvm.loop !198

40:                                               ; preds = %32, %32
  %41 = zext nneg i32 %12 to i64
  %42 = getelementptr inbounds i8, ptr %0, i64 %41
  store i8 0, ptr %42, align 1, !tbaa !104
  %43 = load i32, ptr @cfg_logging, align 4, !tbaa !97
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = tail call noalias ptr @fopen(ptr noundef nonnull @cfg_logfile, ptr noundef nonnull @.str.55) #21
  %47 = icmp eq ptr %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %46, ptr noundef nonnull @.str.56, ptr noundef nonnull %0) #21
  %50 = tail call i32 @fclose(ptr noundef nonnull %46) #21
  br label %51

51:                                               ; preds = %45, %48, %40
  %52 = icmp eq i32 %33, -1
  br i1 %52, label %53, label %54

53:                                               ; preds = %51
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.57) #21
  tail call void @_Z9free_hashv() #21
  tail call void @exit(i32 noundef 1) #24
  unreachable

54:                                               ; preds = %51, %29
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind optsize
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_Z9free_hashv() local_unnamed_addr #5

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree noinline nounwind optsize uwtable
define dso_local void @_Z8start_upv() local_unnamed_addr #8 !prof !199 {
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.58) #21
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_Z12verify_coordP7state_tPcPi(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #3 !prof !85 {
  %4 = alloca [240 x i32], align 16
  %5 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 960, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #20
  %6 = call noundef i32 @_Z3genP7state_tPi(ptr noundef %0, ptr noundef nonnull %4) #21
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %31

8:                                                ; preds = %3
  %9 = zext nneg i32 %6 to i64
  br label %10

10:                                               ; preds = %8, %25
  %11 = phi i64 [ 0, %8 ], [ %27, %25 ]
  %12 = getelementptr inbounds [240 x i32], ptr %4, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !97
  call void @_Z13comp_to_coordP7state_tiPc(ptr noundef %0, i32 noundef %13, ptr noundef nonnull %5) #21
  %14 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %5) #23
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %10
  %17 = load i32, ptr %12, align 4, !tbaa !97
  call void @_Z4makeP7state_ti(ptr noundef %0, i32 noundef %17) #21
  %18 = load i32, ptr %12, align 4, !tbaa !97
  %19 = call noundef i32 @_Z11check_legalP7state_ti(ptr noundef %0, i32 noundef %18) #21
  %20 = icmp eq i32 %19, 0
  %21 = load i32, ptr %12, align 4, !tbaa !97
  br i1 %20, label %23, label %22

22:                                               ; preds = %16
  store i32 %21, ptr %2, align 4, !tbaa !97
  br label %23

23:                                               ; preds = %22, %16
  %24 = phi i32 [ 1, %22 ], [ 0, %16 ]
  call void @_Z6unmakeP7state_ti(ptr noundef %0, i32 noundef %21) #21
  br label %25

25:                                               ; preds = %10, %23
  %26 = phi i32 [ 0, %10 ], [ %24, %23 ]
  %27 = add nuw nsw i64 %11, 1
  %28 = icmp ult i64 %27, %9
  %29 = icmp eq i32 %26, 0
  %30 = and i1 %28, %29
  br i1 %30, label %10, label %31, !llvm.loop !200

31:                                               ; preds = %25, %3
  %32 = phi i32 [ 0, %3 ], [ %26, %25 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 960, ptr nonnull %4) #20
  ret i32 %32
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_Z17input_causes_stopv() local_unnamed_addr #3 !prof !85 {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #20
  %2 = load ptr, ptr @stdin, align 8, !tbaa !129
  %3 = tail call i32 @getc(ptr noundef %2) #21
  %4 = icmp eq i32 %3, 112
  br i1 %4, label %5, label %24

5:                                                ; preds = %0
  %6 = tail call noundef i32 @_Z13allocate_timeP11gamestate_ti(ptr nonnull poison, i32 poison) #21
  store i32 %6, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !201
  %7 = load ptr, ptr @stdin, align 8, !tbaa !129
  %8 = tail call i32 @ungetc(i32 noundef 112, ptr noundef %7) #21
  %9 = load i32, ptr @buffered_count, align 4, !tbaa !97
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [20 x [8192 x i8]], ptr @buffered_command, i64 0, i64 %10
  %12 = load ptr, ptr @stdin, align 8, !tbaa !129
  tail call void @_Z6rinputPciP8_IO_FILE(ptr noundef nonnull %11, i32 noundef 8192, ptr noundef %12) #21
  %13 = load i32, ptr @buffered_count, align 4, !tbaa !97
  %14 = add nsw i32 %13, 1
  store i32 %14, ptr @buffered_count, align 4, !tbaa !97
  %15 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !201
  %16 = sitofp i32 %15 to double
  %17 = fdiv double %16, 2.500000e+00
  %18 = fdiv double %17, 1.000000e+02
  %19 = fptosi double %18 to i32
  %20 = icmp sgt i32 %19, -1
  %21 = sdiv i32 %15, 100
  br i1 %20, label %22, label %23

22:                                               ; preds = %5
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.59, i32 noundef %21, i32 noundef 0, i32 noundef %21, i32 noundef %19) #21
  br label %59

23:                                               ; preds = %5
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.60, i32 noundef %21, i32 noundef 0, i32 noundef %21) #21
  br label %59

24:                                               ; preds = %0
  %25 = load ptr, ptr @stdin, align 8, !tbaa !129
  %26 = tail call i32 @ungetc(i32 noundef %3, ptr noundef %25) #21
  %27 = load i32, ptr @uci_mode, align 4, !tbaa !97
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %59, label %29

29:                                               ; preds = %24
  %30 = load i32, ptr @buffered_count, align 4, !tbaa !97
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [20 x [8192 x i8]], ptr @buffered_command, i64 0, i64 %31
  %33 = load ptr, ptr @stdin, align 8, !tbaa !129
  tail call void @_Z6rinputPciP8_IO_FILE(ptr noundef nonnull %32, i32 noundef 8192, ptr noundef %33) #21
  %34 = load i32, ptr @buffered_count, align 4, !tbaa !97
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [20 x [8192 x i8]], ptr @buffered_command, i64 0, i64 %35
  %37 = load i8, ptr %36, align 16, !tbaa !104
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %59, label %39

39:                                               ; preds = %29
  %40 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %36, ptr noundef nonnull dereferenceable(5) @.str.61, i64 noundef 4) #23
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = getelementptr inbounds i8, ptr %36, i64 5
  %44 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %43, ptr noundef nonnull @.str.62, ptr noundef nonnull %1) #22
  %45 = load i32, ptr %1, align 4, !tbaa !97
  store i32 %45, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 10), align 8, !tbaa !98
  br label %59

46:                                               ; preds = %39
  %47 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %36, ptr noundef nonnull dereferenceable(5) @.str.63, i64 noundef 4) #23
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = add nsw i32 %34, 1
  store i32 %50, ptr @buffered_count, align 4, !tbaa !97
  br label %59

51:                                               ; preds = %46
  %52 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %36, ptr noundef nonnull dereferenceable(29) @.str.64, i64 noundef 22) #23
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = getelementptr inbounds i8, ptr %36, i64 23
  %56 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %55, ptr noundef nonnull @.str.65, ptr noundef nonnull @uci_multipv) #22
  br label %59

57:                                               ; preds = %51
  %58 = add nsw i32 %34, 1
  store i32 %58, ptr @buffered_count, align 4, !tbaa !97
  br label %59

59:                                               ; preds = %57, %24, %29, %22, %23, %54, %49, %42
  %60 = phi i32 [ 0, %54 ], [ 0, %49 ], [ 0, %42 ], [ 0, %23 ], [ 0, %22 ], [ 0, %29 ], [ 1, %24 ], [ 1, %57 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #20
  ret i32 %60
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @ungetc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind optsize
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_Z9interruptv() local_unnamed_addr #0 !prof !202 {
  ret i32 0
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z11reset_boardP7state_t(ptr noundef %0) local_unnamed_addr #3 !prof !85 {
  %2 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %2, i8 13, i64 256, i1 false)
  %3 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 10
  store i32 0, ptr %3, align 8, !tbaa !203
  %4 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 6
  store i32 0, ptr %4, align 8, !tbaa !142
  %5 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 15
  store i32 0, ptr %5, align 4, !tbaa !143
  %6 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 7
  store i32 0, ptr %6, align 4, !tbaa !204
  %7 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 9
  store i32 30, ptr %7, align 4, !tbaa !205
  store i32 0, ptr %0, align 8, !tbaa !145
  tail call void @_Z18reset_piece_squareP7state_t(ptr noundef nonnull %0) #21
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z15make_text_movesP11gamestate_tP7state_tPc(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #3 !prof !85 {
  %4 = alloca [512 x i8], align 16
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  %6 = load i8, ptr %2, align 1, !tbaa !104
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %46, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 16
  %10 = getelementptr inbounds %struct.gamestate_t, ptr %0, i64 0, i32 15
  %11 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 18
  %12 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 14
  %13 = getelementptr inbounds %struct.gamestate_t, ptr %0, i64 0, i32 2
  br label %14

14:                                               ; preds = %8, %26
  %15 = phi ptr [ %2, %8 ], [ %43, %26 ]
  %16 = phi i32 [ 0, %8 ], [ %29, %26 ]
  %17 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #23
  %18 = trunc i64 %17 to i32
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %46

20:                                               ; preds = %14
  %21 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %15, ptr noundef nonnull @.str.46, ptr noundef nonnull %4) #22
  %22 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #23
  %23 = call noundef i32 @_Z12verify_coordP7state_tPcPi(ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #21, !range !206
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.66, ptr noundef nonnull %4) #21
  br label %46

26:                                               ; preds = %20
  %27 = trunc i64 %22 to i32
  %28 = add nsw i32 %16, 1
  %29 = add i32 %28, %27
  %30 = load i64, ptr %9, align 8, !tbaa !164
  %31 = load i32, ptr %10, align 4, !tbaa !99
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 36, i64 %32
  store i64 %30, ptr %33, align 8, !tbaa !154
  %34 = load i32, ptr %5, align 4, !tbaa !97
  %35 = getelementptr inbounds %struct.gamestate_t, ptr %0, i64 0, i32 16, i64 %32
  store i32 %34, ptr %35, align 4, !tbaa !97
  call void @_Z4makeP7state_ti(ptr noundef %1, i32 noundef %34) #21
  %36 = load i32, ptr %10, align 4, !tbaa !99
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr %10, align 4, !tbaa !99
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds %struct.gamestate_t, ptr %0, i64 0, i32 17, i64 %38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %39, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 32, i1 false), !tbaa.struct !207
  store i32 0, ptr %12, align 8, !tbaa !144
  %40 = load i32, ptr %13, align 8, !tbaa !208
  %41 = xor i32 %40, 1
  store i32 %41, ptr %13, align 8, !tbaa !208
  %42 = sext i32 %29 to i64
  %43 = getelementptr inbounds i8, ptr %2, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !104
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %14, !llvm.loop !209

46:                                               ; preds = %26, %14, %3, %25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %4) #20
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_Z8myrandomv() local_unnamed_addr #17 !prof !210 {
  %1 = load i32, ptr @_ZL2s1, align 4, !tbaa !97
  %2 = shl i32 %1, 13
  %3 = xor i32 %2, %1
  %4 = lshr i32 %3, 19
  %5 = shl i32 %1, 12
  %6 = and i32 %5, -8192
  %7 = or disjoint i32 %4, %6
  store i32 %7, ptr @_ZL2s1, align 4, !tbaa !97
  %8 = load i32, ptr @_ZL2s2, align 4, !tbaa !97
  %9 = shl i32 %8, 2
  %10 = xor i32 %9, %8
  %11 = lshr i32 %10, 25
  %12 = shl i32 %8, 4
  %13 = and i32 %12, -128
  %14 = or disjoint i32 %11, %13
  store i32 %14, ptr @_ZL2s2, align 4, !tbaa !97
  %15 = load i32, ptr @_ZL2s3, align 4, !tbaa !97
  %16 = shl i32 %15, 3
  %17 = xor i32 %16, %15
  %18 = lshr i32 %17, 11
  %19 = shl i32 %15, 17
  %20 = and i32 %19, -2097152
  %21 = or disjoint i32 %18, %20
  store i32 %21, ptr @_ZL2s3, align 4, !tbaa !97
  %22 = xor i32 %14, %7
  %23 = xor i32 %22, %21
  ret i32 %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z7mysrandj(i32 noundef %0) local_unnamed_addr #18 !prof !211 {
  %2 = tail call i32 @llvm.umax.i32(i32 %0, i32 1)
  %3 = mul i32 %2, 741103597
  %4 = mul i32 %2, -810880663
  %5 = mul i32 %2, -480760523
  %6 = or i32 %3, 2
  store i32 %6, ptr @_ZL2s1, align 4, !tbaa !97
  %7 = or i32 %4, 8
  store i32 %7, ptr @_ZL2s2, align 4, !tbaa !97
  %8 = or i32 %5, 16
  store i32 %8, ptr @_ZL2s3, align 4, !tbaa !97
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline nounwind optsize willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nofree noinline nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #15 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nounwind }
attributes #21 = { optsize }
attributes #22 = { nounwind optsize }
attributes #23 = { nounwind optsize willreturn memory(read) }
attributes #24 = { noreturn nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!84}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 126727826429}
!4 = !{!"MaxCount", i64 7592818589}
!5 = !{!"MaxInternalCount", i64 4612963787}
!6 = !{!"MaxFunctionCount", i64 7592818589}
!7 = !{!"NumCounts", i64 1321}
!8 = !{!"NumFunctions", i64 93}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 7592818589, i32 1}
!14 = !{i32 100000, i64 5393808666, i32 2}
!15 = !{i32 200000, i64 3322262585, i32 6}
!16 = !{i32 300000, i64 2468518944, i32 10}
!17 = !{i32 400000, i64 1837796421, i32 16}
!18 = !{i32 500000, i64 887660800, i32 29}
!19 = !{i32 600000, i64 608930740, i32 46}
!20 = !{i32 700000, i64 396110762, i32 71}
!21 = !{i32 800000, i64 205990918, i32 118}
!22 = !{i32 900000, i64 105535903, i32 199}
!23 = !{i32 950000, i64 66857471, i32 270}
!24 = !{i32 990000, i64 20633230, i32 388}
!25 = !{i32 999000, i64 3210553, i32 503}
!26 = !{i32 999900, i64 480625, i32 581}
!27 = !{i32 999990, i64 63262, i32 633}
!28 = !{i32 999999, i64 5111, i32 689}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83}
!35 = !{ptr @_Z11comp_to_sanP7state_tiPc, ptr @_Z4ranki, i64 29550}
!36 = !{ptr @_Z11comp_to_sanP7state_tiPc, ptr @_Z4filei, i64 30972}
!37 = !{ptr @_Z11comp_to_sanP7state_tiPc, ptr @sprintf, i64 14689}
!38 = !{ptr @_Z11comp_to_sanP7state_tiPc, ptr @_Z3genP7state_tPi, i64 13027}
!39 = !{ptr @_Z11comp_to_sanP7state_tiPc, ptr @_Z8in_checkP7state_t, i64 27183}
!40 = !{ptr @_Z11comp_to_sanP7state_tiPc, ptr @_Z4makeP7state_ti, i64 29309}
!41 = !{ptr @_Z11comp_to_sanP7state_tiPc, ptr @_Z11check_legalP7state_ti, i64 29309}
!42 = !{ptr @_Z11comp_to_sanP7state_tiPc, ptr @_Z6unmakeP7state_ti, i64 29309}
!43 = !{ptr @_Z11comp_to_sanP7state_tiPc, ptr @strlen, i64 618}
!44 = !{ptr @_Z13display_boardP7state_ti, ptr @_Z8myprintfPKcz, i64 1781}
!45 = !{ptr @_Z8myprintfPKcz, ptr @vprintf, i64 2390}
!46 = !{ptr @_Z8myprintfPKcz, ptr @fopen, i64 1}
!47 = !{ptr @_Z8myprintfPKcz, ptr @vfprintf, i64 1}
!48 = !{ptr @_Z8myprintfPKcz, ptr @fclose, i64 1}
!49 = !{ptr @_Z9init_gameP11gamestate_tP7state_t, ptr @_Z16SetupCastleMasksP7state_t, i64 13}
!50 = !{ptr @_Z9init_gameP11gamestate_tP7state_t, ptr @_Z18reset_piece_squareP7state_t, i64 13}
!51 = !{ptr @_Z18reset_piece_squareP7state_t, ptr @_Z14init_psq_scoreP7state_t, i64 25}
!52 = !{ptr @_ZL15hash_extract_pvP7state_tiPc, ptr @_Z7ProbeTTP7state_tPiiiPjS1_S1_S1_S1_i, i64 5121}
!53 = !{ptr @_ZL15hash_extract_pvP7state_tiPc, ptr @_Z8in_checkP7state_t, i64 5467}
!54 = !{ptr @_ZL15hash_extract_pvP7state_tiPc, ptr @_Z12gen_evasionsP7state_tPii, i64 359}
!55 = !{ptr @_ZL15hash_extract_pvP7state_tiPc, ptr @_Z3genP7state_tPi, i64 4749}
!56 = !{ptr @_ZL15hash_extract_pvP7state_tiPc, ptr @_Z12compact_movei, i64 184760}
!57 = !{ptr @_ZL15hash_extract_pvP7state_tiPc, ptr @_Z11comp_to_sanP7state_tiPc, i64 4757}
!58 = !{ptr @_ZL15hash_extract_pvP7state_tiPc, ptr @_Z13comp_to_coordP7state_tiPc, i64 1}
!59 = !{ptr @_ZL15hash_extract_pvP7state_tiPc, ptr @_Z4makeP7state_ti, i64 4758}
!60 = !{ptr @_ZL15hash_extract_pvP7state_tiPc, ptr @_Z11check_legalP7state_ti, i64 4758}
!61 = !{ptr @_ZL15hash_extract_pvP7state_tiPc, ptr @strcat, i64 4757}
!62 = !{ptr @_ZL15hash_extract_pvP7state_tiPc, ptr @strlen, i64 4757}
!63 = !{ptr @_ZL15hash_extract_pvP7state_tiPc, ptr @_ZL15hash_extract_pvP7state_tiPc, i64 4757}
!64 = !{ptr @_ZL15hash_extract_pvP7state_tiPc, ptr @_Z6unmakeP7state_ti, i64 4758}
!65 = !{ptr @_Z13post_thinkingP7state_tiiPci, ptr @_Z8myprintfPKcz, i64 1170}
!66 = !{ptr @_Z13post_thinkingP7state_tiiPci, ptr @_Z6unmakeP7state_ti, i64 610}
!67 = !{ptr @_Z13post_thinkingP7state_tiiPci, ptr @_Z11comp_to_sanP7state_tiPc, i64 389}
!68 = !{ptr @_Z13post_thinkingP7state_tiiPci, ptr @_Z13comp_to_coordP7state_tiPc, i64 1}
!69 = !{ptr @_Z13post_thinkingP7state_tiiPci, ptr @strcpy, i64 390}
!70 = !{ptr @_Z13post_thinkingP7state_tiiPci, ptr @strlen, i64 390}
!71 = !{ptr @_Z13post_thinkingP7state_tiiPci, ptr @_Z4makeP7state_ti, i64 610}
!72 = !{ptr @_Z13post_thinkingP7state_tiiPci, ptr @_ZL15hash_extract_pvP7state_tiPc, i64 390}
!73 = !{ptr @_Z16post_fh_thinkingP7state_tiiPci, ptr @_Z8myprintfPKcz, i64 85}
!74 = !{ptr @_Z16post_fh_thinkingP7state_tiiPci, ptr @_Z6unmakeP7state_ti, i64 28}
!75 = !{ptr @_Z16post_fh_thinkingP7state_tiiPci, ptr @_Z11comp_to_sanP7state_tiPc, i64 27}
!76 = !{ptr @_Z16post_fh_thinkingP7state_tiiPci, ptr @_Z13comp_to_coordP7state_tiPc, i64 1}
!77 = !{ptr @_Z16post_fh_thinkingP7state_tiiPci, ptr @_Z4makeP7state_ti, i64 28}
!78 = !{ptr @_Z16post_fl_thinkingP7state_tiiPci, ptr @_Z8myprintfPKcz, i64 90}
!79 = !{ptr @_Z16post_fl_thinkingP7state_tiiPci, ptr @_Z6unmakeP7state_ti, i64 30}
!80 = !{ptr @_Z16post_fl_thinkingP7state_tiiPci, ptr @_Z11comp_to_sanP7state_tiPc, i64 29}
!81 = !{ptr @_Z16post_fl_thinkingP7state_tiiPci, ptr @_Z13comp_to_coordP7state_tiPc, i64 1}
!82 = !{ptr @_Z16post_fl_thinkingP7state_tiiPci, ptr @_Z4makeP7state_ti, i64 30}
!83 = !{ptr @_Z8start_upv, ptr @_Z8myprintfPKcz, i64 1}
!84 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!85 = !{!"function_entry_count", i64 0}
!86 = !{!"function_entry_count", i64 3322262585}
!87 = !{!"branch_weights", i32 -980150212, i32 7445503}
!88 = distinct !{!88, !89}
!89 = !{!"llvm.loop.mustprogress"}
!90 = !{!"function_entry_count", i64 12}
!91 = !{!92, !93, i64 24}
!92 = !{!"_ZTS11gamestate_t", !93, i64 0, !93, i64 4, !93, i64 8, !93, i64 12, !93, i64 16, !93, i64 20, !93, i64 24, !93, i64 28, !93, i64 32, !93, i64 36, !93, i64 40, !93, i64 44, !93, i64 48, !93, i64 52, !93, i64 56, !93, i64 60, !94, i64 64, !94, i64 4064, !96, i64 36064, !93, i64 36072, !93, i64 36076, !93, i64 36080, !93, i64 36084, !93, i64 36088, !93, i64 36092, !93, i64 36096, !93, i64 36100}
!93 = !{!"int", !94, i64 0}
!94 = !{!"omnipotent char", !95, i64 0}
!95 = !{!"Simple C++ TBAA"}
!96 = !{!"long long", !94, i64 0}
!97 = !{!93, !93, i64 0}
!98 = !{!92, !93, i64 40}
!99 = !{!92, !93, i64 60}
!100 = !{!"function_entry_count", i64 14775}
!101 = !{!"branch_weights", i32 30157273, i32 165386768}
!102 = !{!"branch_weights", i32 4072323, i32 531257}
!103 = !{!"branch_weights", i32 2015, i32 3}
!104 = !{!94, !94, i64 0}
!105 = !{!"branch_weights", i32 262, i32 1}
!106 = !{!"branch_weights", i32 69948, i32 74279392, i32 124236, i32 326424}
!107 = !{!"branch_weights", i32 11702, i32 1}
!108 = !{!"branch_weights", i32 23696, i32 503779}
!109 = !{!"branch_weights", i32 294198525, i32 9099378}
!110 = !{!"branch_weights", i32 1, i32 711}
!111 = !{!"branch_weights", i32 11702, i32 515772}
!112 = distinct !{!112, !89}
!113 = !{!"branch_weights", i32 685, i32 27}
!114 = !{!"branch_weights", i32 11, i32 675}
!115 = !{!"branch_weights", i32 2, i32 26}
!116 = !{!"branch_weights", i32 9604, i32 2100}
!117 = !{!"branch_weights", i32 1, i32 14776}
!118 = !{!"branch_weights", i32 14159, i32 618}
!119 = !{!"branch_weights", i32 127, i32 1}
!120 = !{!"branch_weights", i32 13337, i32 617}
!121 = !{!"branch_weights", i32 127, i32 892865}
!122 = distinct !{!122, !89}
!123 = !{!124, !93, i64 4384}
!124 = !{!"_ZTS7state_t", !93, i64 0, !94, i64 4, !96, i64 264, !96, i64 272, !96, i64 280, !94, i64 288, !93, i64 392, !93, i64 396, !94, i64 400, !93, i64 452, !93, i64 456, !93, i64 460, !93, i64 464, !93, i64 468, !93, i64 472, !93, i64 476, !96, i64 480, !96, i64 488, !94, i64 496, !94, i64 2544, !94, i64 2800, !94, i64 3056, !96, i64 4080, !96, i64 4088, !93, i64 4096, !94, i64 4100, !93, i64 4356, !93, i64 4360, !93, i64 4364, !93, i64 4368, !93, i64 4372, !93, i64 4376, !93, i64 4380, !93, i64 4384, !93, i64 4388, !93, i64 4392, !94, i64 4400}
!125 = !{!124, !93, i64 4380}
!126 = !{!124, !93, i64 4392}
!127 = !{!124, !93, i64 4388}
!128 = !{!"branch_weights", i32 1, i32 13}
!129 = !{!130, !130, i64 0}
!130 = !{!"any pointer", !94, i64 0}
!131 = !{!"branch_weights", i32 97, i32 672}
!132 = distinct !{!132, !89}
!133 = !{!"branch_weights", i32 13, i32 84}
!134 = distinct !{!134, !89}
!135 = distinct !{!135, !89}
!136 = distinct !{!136, !89}
!137 = !{!"function_entry_count", i64 2390}
!138 = !{!"branch_weights", i32 2391, i32 1}
!139 = !{!"function_entry_count", i64 13}
!140 = !{!124, !93, i64 468}
!141 = !{!92, !93, i64 16}
!142 = !{!124, !93, i64 392}
!143 = !{!124, !93, i64 476}
!144 = !{!124, !93, i64 472}
!145 = !{!124, !93, i64 0}
!146 = !{!92, !93, i64 4}
!147 = !{!"function_entry_count", i64 25}
!148 = !{!"branch_weights", i32 1167129, i32 1399275}
!149 = !{!"branch_weights", i32 478016, i32 18330, i32 18304}
!150 = !{!124, !93, i64 464}
!151 = !{!"branch_weights", i32 26, i32 1575}
!152 = distinct !{!152, !89}
!153 = !{!"branch_weights", i32 873, i32 729}
!154 = !{!96, !96, i64 0}
!155 = !{!"branch_weights", i32 368, i32 362}
!156 = distinct !{!156, !89}
!157 = !{!124, !96, i64 280}
!158 = !{!124, !96, i64 272}
!159 = !{!124, !96, i64 264}
!160 = distinct !{!160, !89}
!161 = distinct !{!161, !89}
!162 = !{!"function_entry_count", i64 5153}
!163 = !{!"utils.cpp:_ZL15hash_extract_pvP7state_tiPc"}
!164 = !{!124, !96, i64 480}
!165 = !{!"branch_weights", i32 5124, i32 63263}
!166 = !{!"branch_weights", i32 31, i32 63233}
!167 = distinct !{!167, !89}
!168 = !{!"branch_weights", i32 1, i32 5124}
!169 = !{!"branch_weights", i32 13, i32 5112}
!170 = !{!"branch_weights", i32 4754, i32 359}
!171 = !{!"branch_weights", i32 5111, i32 1}
!172 = !{!"branch_weights", i32 4764, i32 180141}
!173 = !{!"branch_weights", i32 5111, i32 179793}
!174 = distinct !{!174, !89}
!175 = !{!"branch_weights", i32 2000873524, i32 146610124}
!176 = !{!"branch_weights", i32 4764, i32 1}
!177 = !{!"branch_weights", i32 1, i32 4764}
!178 = !{!"function_entry_count", i64 472}
!179 = !{!92, !93, i64 20}
!180 = !{!"branch_weights", i32 6889, i32 32927}
!181 = !{!"branch_weights", i32 391, i32 1}
!182 = !{!124, !96, i64 4080}
!183 = !{!124, !93, i64 4096}
!184 = !{!"branch_weights", i32 171, i32 221}
!185 = !{!"function_entry_count", i64 31595}
!186 = !{!"function_entry_count", i64 31607}
!187 = !{!"function_entry_count", i64 34}
!188 = !{!"branch_weights", i32 49, i32 239}
!189 = !{!"branch_weights", i32 29, i32 1}
!190 = !{!"function_entry_count", i64 41}
!191 = !{!"branch_weights", i32 144, i32 415}
!192 = !{!"branch_weights", i32 31, i32 1}
!193 = distinct !{!193, !89}
!194 = !{!"utils.cpp:_ZL14resort_multipvv"}
!195 = distinct !{!195, !89}
!196 = distinct !{!196, !89}
!197 = distinct !{!197, !89}
!198 = distinct !{!198, !89}
!199 = !{!"function_entry_count", i64 1}
!200 = distinct !{!200, !89}
!201 = !{!92, !93, i64 48}
!202 = !{!"function_entry_count", i64 31147}
!203 = !{!124, !93, i64 456}
!204 = !{!124, !93, i64 396}
!205 = !{!124, !93, i64 452}
!206 = !{i32 0, i32 2}
!207 = !{i64 0, i64 4, !97, i64 4, i64 4, !97, i64 8, i64 4, !97, i64 12, i64 4, !97, i64 16, i64 8, !154, i64 24, i64 8, !154}
!208 = !{!92, !93, i64 8}
!209 = distinct !{!209, !89}
!210 = !{!"function_entry_count", i64 1792}
!211 = !{!"function_entry_count", i64 2}
