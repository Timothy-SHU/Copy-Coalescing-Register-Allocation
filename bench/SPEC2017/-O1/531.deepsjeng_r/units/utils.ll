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
@stdout = external local_unnamed_addr global ptr, align 8

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z12elo_to_depthi(i32 noundef %0) local_unnamed_addr #0 !prof !77 {
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

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z14elo_to_blunderi(i32 noundef %0) local_unnamed_addr #0 !prof !77 {
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

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i16 @_Z12compact_movei(i32 noundef %0) local_unnamed_addr #1 !prof !78 {
  %2 = lshr i32 %0, 4
  %3 = and i32 %2, 28672
  %4 = and i32 %0, 4095
  %5 = or disjoint i32 %3, %4
  %6 = lshr i32 %0, 1
  %7 = and i32 %6, 30720
  %8 = add nuw nsw i32 %7, 2048
  %9 = and i32 %8, 61440
  %10 = or i32 %5, %9
  %11 = trunc i32 %10 to i16
  ret i16 %11
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z4logLi(i32 noundef %0) local_unnamed_addr #0 !prof !77 {
  %2 = icmp ult i32 %0, 2
  br i1 %2, label %9, label %3

3:                                                ; preds = %1, %3
  %4 = phi i32 [ %7, %3 ], [ 0, %1 ]
  %5 = phi i32 [ %6, %3 ], [ %0, %1 ]
  %6 = ashr i32 %5, 1
  %7 = add nuw nsw i32 %4, 1
  %8 = icmp ult i32 %6, 2
  br i1 %8, label %9, label %3, !llvm.loop !79

9:                                                ; preds = %3, %1
  %10 = phi i32 [ 0, %1 ], [ %7, %3 ]
  ret i32 %10
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_Z14dumpsearchstatP7state_t(ptr nocapture noundef readnone %0) local_unnamed_addr #0 !prof !82 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_Z13allocate_timeP11gamestate_ti(ptr nocapture readnone %0, i32 %1) local_unnamed_addr #3 !prof !77 {
  %3 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 6), align 8, !tbaa !83
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %35

5:                                                ; preds = %2
  %6 = load i32, ptr @allow_pondering, align 4, !tbaa !89
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
  %18 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 10), align 8, !tbaa !90
  %19 = sitofp i32 %18 to double
  %20 = fdiv double %19, %17
  br i1 %10, label %67, label %21

21:                                               ; preds = %5
  %22 = fsub double %19, %20
  %23 = sitofp i32 %9 to double
  %24 = fsub double %22, %23
  %25 = fcmp ogt double %24, 5.000000e+02
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = fadd double %20, %23
  br label %67

28:                                               ; preds = %21
  %29 = fmul double %23, 2.000000e+00
  %30 = fdiv double %29, 3.000000e+00
  %31 = fsub double %22, %30
  %32 = fcmp ogt double %31, 1.000000e+02
  br i1 %32, label %33, label %67

33:                                               ; preds = %28
  %34 = fadd double %30, %20
  br label %67

35:                                               ; preds = %2
  %36 = sitofp i32 %3 to double
  %37 = fadd double %36, 1.000000e+00
  %38 = fcmp ogt double %37, 2.400000e+01
  %39 = select i1 %38, double 2.500000e+01, double %37
  %40 = load i32, ptr @uci_mode, align 4, !tbaa !89
  %41 = icmp eq i32 %40, 0
  %42 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 10), align 8, !tbaa !90
  %43 = sitofp i32 %42 to double
  %44 = fadd double %43, -1.000000e+02
  br i1 %41, label %45, label %51

45:                                               ; preds = %35
  %46 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 15), align 4, !tbaa !91
  %47 = sdiv i32 %46, 2
  %48 = srem i32 %47, %3
  %49 = sitofp i32 %48 to double
  %50 = fsub double %39, %49
  br label %51

51:                                               ; preds = %35, %45
  %52 = phi double [ %50, %45 ], [ %39, %35 ]
  %53 = fdiv double %44, %52
  %54 = load i32, ptr @allow_pondering, align 4, !tbaa !89
  %55 = icmp eq i32 %54, 0
  %56 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 10), align 8, !tbaa !90
  %57 = add nsw i32 %56, -100
  %58 = sitofp i32 %57 to double
  br i1 %55, label %63, label %59

59:                                               ; preds = %51
  %60 = fmul double %53, 2.500000e+00
  %61 = fcmp olt double %60, %58
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  br label %67

63:                                               ; preds = %51
  %64 = fmul double %53, 1.500000e+00
  %65 = fcmp olt double %64, %58
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %67

67:                                               ; preds = %62, %59, %66, %63, %5, %28, %33, %26
  %68 = phi double [ %60, %62 ], [ %53, %59 ], [ %64, %66 ], [ %53, %63 ], [ %27, %26 ], [ %34, %33 ], [ %20, %28 ], [ %20, %5 ]
  %69 = fptosi double %68 to i32
  ret i32 %69
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z11comp_to_sanP7state_tiPc(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #4 !prof !92 {
  %4 = alloca [240 x i32], align 16
  %5 = alloca [240 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 960, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 960, ptr nonnull %5) #22
  %6 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1
  %7 = lshr i32 %1, 6
  %8 = and i32 %7, 63
  %9 = tail call noundef i32 @_Z4ranki(i32 noundef %8)
  %10 = and i32 %1, 63
  %11 = tail call noundef i32 @_Z4ranki(i32 noundef %10)
  %12 = tail call noundef i32 @_Z4filei(i32 noundef %8)
  %13 = trunc i32 %12 to i8
  %14 = add i8 %13, 96
  %15 = tail call noundef i32 @_Z4filei(i32 noundef %10)
  %16 = trunc i32 %15 to i8
  %17 = add i8 %16, 96
  %18 = zext nneg i32 %8 to i64
  %19 = getelementptr inbounds i32, ptr %6, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !89
  %21 = add i32 %20, -1
  %22 = icmp ult i32 %21, 2
  br i1 %22, label %23, label %55, !prof !93

23:                                               ; preds = %3
  %24 = zext nneg i32 %10 to i64
  %25 = getelementptr inbounds i32, ptr %6, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !89
  %27 = icmp eq i32 %26, 13
  %28 = and i32 %1, 8388608
  %29 = icmp eq i32 %28, 0
  %30 = and i1 %29, %27
  %31 = lshr i32 %1, 12
  %32 = and i32 %31, 15
  %33 = icmp eq i32 %32, 0
  br i1 %30, label %34, label %44, !prof !94

34:                                               ; preds = %23
  %35 = sext i8 %17 to i32
  br i1 %33, label %36, label %38, !prof !95

36:                                               ; preds = %34
  %37 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %35, i32 noundef %11) #22
  br label %143

38:                                               ; preds = %34
  %39 = zext nneg i32 %32 to i64
  %40 = getelementptr inbounds [14 x i8], ptr @__const._Z11comp_to_sanP7state_tiPc.type_to_char, i64 0, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !96
  %42 = sext i8 %41 to i32
  %43 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %35, i32 noundef %11, i32 noundef %42) #22
  br label %143

44:                                               ; preds = %23
  %45 = sext i8 %14 to i32
  %46 = sext i8 %17 to i32
  br i1 %33, label %47, label %49, !prof !97

47:                                               ; preds = %44
  %48 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %45, i32 noundef %46, i32 noundef %11) #22
  br label %143

49:                                               ; preds = %44
  %50 = zext nneg i32 %32 to i64
  %51 = getelementptr inbounds [14 x i8], ptr @__const._Z11comp_to_sanP7state_tiPc.type_to_char, i64 0, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !96
  %53 = sext i8 %52 to i32
  %54 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %45, i32 noundef %46, i32 noundef %11, i32 noundef %53) #22
  br label %143

55:                                               ; preds = %3
  %56 = lshr i32 %1, 16
  %57 = and i32 %56, 7
  switch i32 %57, label %59 [
    i32 0, label %60
    i32 1, label %58
    i32 3, label %58
  ], !prof !98

58:                                               ; preds = %55, %55
  store i32 5188943, ptr %2, align 1
  br label %143

59:                                               ; preds = %55
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %2, ptr noundef nonnull align 1 dereferenceable(6) @.str.5, i64 6, i1 false)
  br label %143

60:                                               ; preds = %55
  %61 = call noundef i32 @_Z3genP7state_tPi(ptr noundef %0, ptr noundef nonnull %4)
  %62 = call noundef i32 @_Z8in_checkP7state_t(ptr noundef %0)
  %63 = icmp sgt i32 %61, 0
  br i1 %63, label %64, label %95, !prof !99

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %18
  %66 = zext nneg i32 %61 to i64
  br label %67

67:                                               ; preds = %64, %92
  %68 = phi i64 [ 0, %64 ], [ %93, %92 ]
  %69 = getelementptr inbounds [240 x i32], ptr %4, i64 0, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !89
  %71 = and i32 %70, 63
  %72 = icmp eq i32 %71, %10
  br i1 %72, label %73, label %92, !prof !100

73:                                               ; preds = %67
  %74 = lshr i32 %70, 6
  %75 = and i32 %74, 63
  %76 = zext nneg i32 %75 to i64
  %77 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !89
  %79 = load i32, ptr %65, align 4, !tbaa !89
  %80 = icmp ne i32 %78, %79
  %81 = icmp eq i32 %75, %8
  %82 = or i1 %81, %80
  br i1 %82, label %92, label %83, !prof !101

83:                                               ; preds = %73
  call void @_Z4makeP7state_ti(ptr noundef %0, i32 noundef %70)
  %84 = load i32, ptr %69, align 4, !tbaa !89
  %85 = call noundef i32 @_Z11check_legalP7state_ti(ptr noundef %0, i32 noundef %84)
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %90, label %87, !prof !102

87:                                               ; preds = %83
  %88 = trunc i64 %68 to i32
  %89 = load i32, ptr %69, align 4, !tbaa !89
  call void @_Z6unmakeP7state_ti(ptr noundef %0, i32 noundef %89)
  br label %95

90:                                               ; preds = %83
  %91 = load i32, ptr %69, align 4, !tbaa !89
  call void @_Z6unmakeP7state_ti(ptr noundef %0, i32 noundef %91)
  br label %92

92:                                               ; preds = %67, %73, %90
  %93 = add nuw nsw i64 %68, 1
  %94 = icmp eq i64 %93, %66
  br i1 %94, label %95, label %67, !prof !103, !llvm.loop !104

95:                                               ; preds = %92, %60, %87
  %96 = phi i32 [ %88, %87 ], [ -1, %60 ], [ -1, %92 ]
  %97 = icmp eq i32 %96, -1
  %98 = zext nneg i32 %10 to i64
  %99 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %98
  %100 = load i32, ptr %99, align 4, !tbaa !89
  %101 = icmp eq i32 %100, 13
  br i1 %97, label %132, label %102, !prof !105

102:                                              ; preds = %95
  %103 = sext i32 %96 to i64
  %104 = getelementptr inbounds [240 x i32], ptr %4, i64 0, i64 %103
  %105 = load i32, ptr %104, align 4, !tbaa !89
  %106 = lshr i32 %105, 6
  %107 = and i32 %106, 63
  %108 = call noundef i32 @_Z4filei(i32 noundef %107)
  %109 = call noundef i32 @_Z4filei(i32 noundef %8)
  %110 = icmp eq i32 %108, %109
  %111 = load i32, ptr %19, align 4, !tbaa !89
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [14 x i8], ptr @__const._Z11comp_to_sanP7state_tiPc.type_to_char, i64 0, i64 %112
  %114 = load i8, ptr %113, align 1, !tbaa !96
  %115 = sext i8 %114 to i32
  br i1 %101, label %116, label %124, !prof !106

116:                                              ; preds = %102
  br i1 %110, label %121, label %117, !prof !107

117:                                              ; preds = %116
  %118 = sext i8 %14 to i32
  %119 = sext i8 %17 to i32
  %120 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %115, i32 noundef %118, i32 noundef %119, i32 noundef %11) #22
  br label %143

121:                                              ; preds = %116
  %122 = sext i8 %17 to i32
  %123 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %115, i32 noundef %9, i32 noundef %122, i32 noundef %11) #22
  br label %143

124:                                              ; preds = %102
  br i1 %110, label %129, label %125, !prof !108

125:                                              ; preds = %124
  %126 = sext i8 %14 to i32
  %127 = sext i8 %17 to i32
  %128 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %115, i32 noundef %126, i32 noundef %127, i32 noundef %11) #22
  br label %143

129:                                              ; preds = %124
  %130 = sext i8 %17 to i32
  %131 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %115, i32 noundef %9, i32 noundef %130, i32 noundef %11) #22
  br label %143

132:                                              ; preds = %95
  %133 = load i32, ptr %19, align 4, !tbaa !89
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [14 x i8], ptr @__const._Z11comp_to_sanP7state_tiPc.type_to_char, i64 0, i64 %134
  %136 = load i8, ptr %135, align 1, !tbaa !96
  %137 = sext i8 %136 to i32
  %138 = sext i8 %17 to i32
  br i1 %101, label %139, label %141, !prof !109

139:                                              ; preds = %132
  %140 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %137, i32 noundef %138, i32 noundef %11) #22
  br label %143

141:                                              ; preds = %132
  %142 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %137, i32 noundef %138, i32 noundef %11) #22
  br label %143

143:                                              ; preds = %59, %58, %139, %141, %121, %117, %129, %125, %38, %36, %49, %47
  call void @_Z4makeP7state_ti(ptr noundef %0, i32 noundef %1)
  %144 = call noundef i32 @_Z11check_legalP7state_ti(ptr noundef %0, i32 noundef %1)
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %147, !prof !110

146:                                              ; preds = %143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %2, ptr noundef nonnull align 1 dereferenceable(5) @.str.11, i64 5, i1 false) #22
  br label %170

147:                                              ; preds = %143
  %148 = call noundef i32 @_Z8in_checkP7state_t(ptr noundef %0)
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %170, label %150, !prof !111

150:                                              ; preds = %147
  %151 = call noundef i32 @_Z3genP7state_tPi(ptr noundef %0, ptr noundef nonnull %5)
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %153, label %166, !prof !112

153:                                              ; preds = %150
  %154 = zext nneg i32 %151 to i64
  br label %155

155:                                              ; preds = %153, %163
  %156 = phi i64 [ 0, %153 ], [ %164, %163 ]
  %157 = getelementptr inbounds [240 x i32], ptr %5, i64 0, i64 %156
  %158 = load i32, ptr %157, align 4, !tbaa !89
  call void @_Z4makeP7state_ti(ptr noundef %0, i32 noundef %158)
  %159 = load i32, ptr %157, align 4, !tbaa !89
  %160 = call noundef i32 @_Z11check_legalP7state_ti(ptr noundef %0, i32 noundef %159)
  %161 = icmp eq i32 %160, 0
  %162 = load i32, ptr %157, align 4, !tbaa !89
  call void @_Z6unmakeP7state_ti(ptr noundef %0, i32 noundef %162)
  br i1 %161, label %163, label %166, !prof !113

163:                                              ; preds = %155
  %164 = add nuw nsw i64 %156, 1
  %165 = icmp eq i64 %164, %154
  br i1 %165, label %166, label %155, !prof !114, !llvm.loop !115

166:                                              ; preds = %163, %155, %150
  %167 = phi i16 [ 35, %150 ], [ 35, %163 ], [ 43, %155 ]
  %168 = call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %169 = getelementptr inbounds i8, ptr %2, i64 %168
  store i16 %167, ptr %169, align 1
  br label %170

170:                                              ; preds = %147, %166, %146
  call void @_Z6unmakeP7state_ti(ptr noundef %0, i32 noundef %1)
  call void @llvm.lifetime.end.p0(i64 960, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 960, ptr nonnull %4) #22
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare noundef i32 @_Z4ranki(i32 noundef) local_unnamed_addr #6

declare noundef i32 @_Z4filei(i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

declare noundef i32 @_Z3genP7state_tPi(ptr noundef, ptr noundef) local_unnamed_addr #6

declare noundef i32 @_Z8in_checkP7state_t(ptr noundef) local_unnamed_addr #6

declare void @_Z4makeP7state_ti(ptr noundef, i32 noundef) local_unnamed_addr #6

declare noundef i32 @_Z11check_legalP7state_ti(ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @_Z6unmakeP7state_ti(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: cold mustprogress uwtable
define dso_local void @_Z13comp_to_coordP7state_tiPc(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #9 !prof !77 {
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
  %16 = tail call noundef i32 @_Z4ranki(i32 noundef %15)
  %17 = tail call noundef i32 @_Z4ranki(i32 noundef %7)
  %18 = tail call noundef i32 @_Z4filei(i32 noundef %15)
  %19 = trunc i32 %18 to i8
  %20 = add i8 %19, 96
  %21 = tail call noundef i32 @_Z4filei(i32 noundef %7)
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
  %31 = load i32, ptr %30, align 8, !tbaa !116
  br label %41

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 32
  %34 = load i32, ptr %33, align 4, !tbaa !118
  br label %41

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 35
  %37 = load i32, ptr %36, align 8, !tbaa !119
  br label %41

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 34
  %40 = load i32, ptr %39, align 4, !tbaa !120
  br label %41

41:                                               ; preds = %28, %32, %38, %35, %29
  %42 = phi i32 [ %31, %29 ], [ %34, %32 ], [ %37, %35 ], [ %40, %38 ], [ %7, %28 ]
  %43 = tail call noundef i32 @_Z4filei(i32 noundef %42)
  %44 = tail call noundef i32 @_Z4ranki(i32 noundef %42)
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

; Function Attrs: cold mustprogress nofree nounwind uwtable
define dso_local void @_Z13display_boardP7state_ti(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 !prof !82 {
  %3 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1
  %4 = and i32 %1, 1
  %5 = icmp eq i32 %4, 0
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.19)
  br i1 %5, label %24, label %6, !prof !121

6:                                                ; preds = %2, %21
  %7 = phi i64 [ %22, %21 ], [ 0, %2 ]
  %8 = trunc i64 %7 to i32
  %9 = sub i32 8, %8
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.35, i32 noundef %9)
  %10 = shl nuw nsw i64 %7, 3
  %11 = getelementptr i32, ptr %3, i64 %10
  br label %12

12:                                               ; preds = %6, %12
  %13 = phi i64 [ 0, %6 ], [ %19, %12 ]
  %14 = getelementptr i32, ptr %11, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !89
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [14 x ptr], ptr @__const._Z13display_boardP7state_ti.piece_rep, i64 0, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !122
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.36, ptr noundef %18)
  %19 = add nuw nsw i64 %13, 1
  %20 = icmp eq i64 %19, 8
  br i1 %20, label %21, label %12, !prof !124, !llvm.loop !125

21:                                               ; preds = %12
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.19)
  %22 = add nuw nsw i64 %7, 1
  %23 = icmp eq i64 %22, 8
  br i1 %23, label %42, label %6, !prof !126, !llvm.loop !127

24:                                               ; preds = %2, %39
  %25 = phi i64 [ %40, %39 ], [ 7, %2 ]
  %26 = trunc i64 %25 to i32
  %27 = add i32 %26, 1
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.35, i32 noundef %27)
  %28 = shl nsw i64 %25, 3
  %29 = getelementptr i32, ptr %3, i64 %28
  br label %30

30:                                               ; preds = %24, %30
  %31 = phi i64 [ 7, %24 ], [ %37, %30 ]
  %32 = getelementptr i32, ptr %29, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !89
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [14 x ptr], ptr @__const._Z13display_boardP7state_ti.piece_rep, i64 0, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !122
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.36, ptr noundef %36)
  %37 = add nsw i64 %31, -1
  %38 = icmp eq i64 %31, 0
  br i1 %38, label %39, label %30, !llvm.loop !128

39:                                               ; preds = %30
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.19)
  %40 = add nsw i64 %25, -1
  %41 = icmp eq i64 %25, 0
  br i1 %41, label %42, label %24, !llvm.loop !129

42:                                               ; preds = %21, %39
  %43 = phi ptr [ @.str.39, %39 ], [ @.str.38, %21 ]
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull %43)
  ret void
}

; Function Attrs: cold mustprogress nofree nounwind uwtable
define dso_local void @_Z8myprintfPKcz(ptr nocapture noundef readonly %0, ...) local_unnamed_addr #10 !prof !130 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #22
  call void @llvm.va_start(ptr nonnull %2)
  %3 = load ptr, ptr @stdout, align 8, !tbaa !122, !noalias !131
  %4 = call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef nonnull %2)
  %5 = load i32, ptr @cfg_logging, align 4, !tbaa !89
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7, !prof !134

7:                                                ; preds = %1
  %8 = call noalias ptr @fopen(ptr noundef nonnull @cfg_logfile, ptr noundef nonnull @.str.55)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = call i32 @vfprintf(ptr noundef nonnull %8, ptr noundef %0, ptr noundef nonnull %2)
  %12 = call i32 @fclose(ptr noundef nonnull %8)
  br label %13

13:                                               ; preds = %7, %10, %1
  call void @llvm.va_end(ptr %2)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #22
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_Z9init_gameP11gamestate_tP7state_t(ptr nocapture noundef readnone %0, ptr noundef %1) local_unnamed_addr #9 !prof !135 {
  %3 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %3, ptr noundef nonnull align 16 dereferenceable(256) @_ZZ9init_gameP11gamestate_tP7state_tE10init_board, i64 256, i1 false)
  %4 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 11
  store i32 1, ptr %4, align 4, !tbaa !136
  %5 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 10
  store i32 0, ptr %5, align 8, !tbaa !137
  %6 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 9
  store i32 30, ptr %6, align 4, !tbaa !138
  %7 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 12
  store i32 60, ptr %7, align 8, !tbaa !139
  %8 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 13
  store i32 4, ptr %8, align 4, !tbaa !140
  %9 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 30
  store i32 60, ptr %9, align 4, !tbaa !141
  %10 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 31
  store i32 4, ptr %10, align 8, !tbaa !142
  %11 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 32
  store i32 56, ptr %11, align 4, !tbaa !118
  %12 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 33
  store i32 63, ptr %12, align 8, !tbaa !116
  %13 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 34
  store i32 0, ptr %13, align 4, !tbaa !120
  %14 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 35
  store i32 7, ptr %14, align 8, !tbaa !119
  tail call void @_Z16SetupCastleMasksP7state_t(ptr noundef %1)
  store i32 0, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 4), align 8, !tbaa !143
  %15 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 6
  store i32 0, ptr %15, align 8, !tbaa !144
  tail call void @_Z18reset_piece_squareP7state_t(ptr noundef %1)
  %16 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 15
  store i32 0, ptr %16, align 4, !tbaa !145
  %17 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 14
  store i32 0, ptr %17, align 8, !tbaa !146
  store i32 0, ptr %1, align 8, !tbaa !147
  store i32 0, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 1), align 4, !tbaa !148
  ret void
}

declare void @_Z16SetupCastleMasksP7state_t(ptr noundef) local_unnamed_addr #6

; Function Attrs: cold mustprogress uwtable
define dso_local void @_Z18reset_piece_squareP7state_t(ptr noundef %0) local_unnamed_addr #9 !prof !149 {
  %2 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 6
  store i32 0, ptr %2, align 8, !tbaa !144
  %3 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %3, i8 0, i64 52, i1 false)
  br label %4

4:                                                ; preds = %1, %30
  %5 = phi i64 [ 0, %1 ], [ %31, %30 ]
  %6 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !89
  %8 = icmp ne i32 %7, 0
  %9 = icmp slt i32 %7, 13
  %10 = and i1 %8, %9
  br i1 %10, label %11, label %30, !prof !150

11:                                               ; preds = %4
  switch i32 %7, label %18 [
    i32 5, label %12
    i32 6, label %15
  ], !prof !151

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 12
  %14 = trunc i64 %5 to i32
  store i32 %14, ptr %13, align 8, !tbaa !139
  br label %18

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 13
  %17 = trunc i64 %5 to i32
  store i32 %17, ptr %16, align 4, !tbaa !140
  br label %18

18:                                               ; preds = %11, %15, %12
  %19 = load i32, ptr %6, align 4, !tbaa !89
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [14 x i32], ptr @material, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !89
  %23 = load i32, ptr %2, align 8, !tbaa !144
  %24 = add nsw i32 %23, %22
  store i32 %24, ptr %2, align 8, !tbaa !144
  %25 = load i32, ptr %6, align 4, !tbaa !89
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !89
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %27, align 4, !tbaa !89
  br label %30

30:                                               ; preds = %4, %18
  %31 = add nuw nsw i64 %5, 1
  %32 = icmp eq i64 %31, 64
  br i1 %32, label %33, label %4, !prof !152, !llvm.loop !153

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
  %40 = load i32, ptr %39, align 4, !tbaa !89
  %41 = icmp eq i32 %40, 13
  br i1 %41, label %55, label %42, !prof !154

42:                                               ; preds = %37
  %43 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %38
  %44 = load i64, ptr %43, align 8, !tbaa !155
  %45 = sext i32 %40 to i64
  %46 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 %45
  %47 = load i64, ptr %46, align 8, !tbaa !155
  %48 = or i64 %47, %44
  store i64 %48, ptr %46, align 8, !tbaa !155
  %49 = and i32 %40, 1
  %50 = icmp eq i32 %49, 0
  %51 = load i64, ptr %43, align 8, !tbaa !155
  %52 = select i1 %50, ptr %34, ptr %35, !prof !156
  %53 = load i64, ptr %52, align 8, !tbaa !155
  %54 = or i64 %53, %51
  store i64 %54, ptr %52, align 8, !tbaa !155
  br label %55

55:                                               ; preds = %42, %37
  %56 = add nuw nsw i64 %38, 1
  %57 = icmp eq i64 %56, 64
  br i1 %57, label %58, label %37, !prof !152, !llvm.loop !157

58:                                               ; preds = %55
  %59 = load i64, ptr %35, align 8, !tbaa !158
  %60 = load i64, ptr %34, align 8, !tbaa !159
  %61 = or i64 %60, %59
  %62 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  store i64 %61, ptr %62, align 8, !tbaa !160
  tail call void @_Z14init_psq_scoreP7state_t(ptr noundef %0)
  ret void
}

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local noundef i32 @_Z7is_movePc(ptr nocapture noundef readonly %0) local_unnamed_addr #11 !prof !77 {
  %2 = load i8, ptr %0, align 1, !tbaa !96
  %3 = sext i8 %2 to i32
  %4 = tail call i32 @isalpha(i32 noundef %3) #23
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, ptr %0, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !96
  %9 = sext i8 %8 to i32
  %10 = add nsw i32 %9, -48
  %11 = icmp ult i32 %10, 10
  br i1 %11, label %12, label %24

12:                                               ; preds = %6
  %13 = getelementptr inbounds i8, ptr %0, i64 2
  %14 = load i8, ptr %13, align 1, !tbaa !96
  %15 = sext i8 %14 to i32
  %16 = tail call i32 @isalpha(i32 noundef %15) #23
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds i8, ptr %0, i64 3
  %20 = load i8, ptr %19, align 1, !tbaa !96
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

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isalpha(i32 noundef) local_unnamed_addr #12

; Function Attrs: cold mustprogress uwtable
define dso_local void @_Z20extract_current_pathP7state_t(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !77 {
  %2 = alloca [10 x i8], align 1
  %3 = alloca [640 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 640, ptr nonnull %3) #22
  store i8 0, ptr %3, align 16, !tbaa !96
  %4 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 14
  %5 = load i32, ptr %4, align 8, !tbaa !146
  %6 = icmp sgt i32 %5, 1
  br i1 %6, label %7, label %25

7:                                                ; preds = %1, %18
  %8 = phi i64 [ %21, %18 ], [ 1, %1 ]
  %9 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 19, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !89
  %11 = and i32 %10, 4095
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = call i64 @strlen(ptr nonnull dereferenceable(1) %3)
  %15 = getelementptr inbounds i8, ptr %3, i64 %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %15, ptr noundef nonnull align 1 dereferenceable(5) @.str.14, i64 5, i1 false)
  br label %18

16:                                               ; preds = %7
  call void @_Z13comp_to_coordP7state_tiPc(ptr noundef %0, i32 noundef %10, ptr noundef nonnull %2)
  %17 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %2) #22
  br label %18

18:                                               ; preds = %16, %13
  %19 = call i64 @strlen(ptr nonnull dereferenceable(1) %3)
  %20 = getelementptr inbounds i8, ptr %3, i64 %19
  store i16 32, ptr %20, align 1
  %21 = add nuw nsw i64 %8, 1
  %22 = load i32, ptr %4, align 8, !tbaa !146
  %23 = sext i32 %22 to i64
  %24 = icmp slt i64 %21, %23
  br i1 %24, label %7, label %25, !llvm.loop !161

25:                                               ; preds = %18, %1
  %26 = call i64 @strlen(ptr nonnull dereferenceable(1) %3)
  %27 = getelementptr inbounds i8, ptr %3, i64 %26
  store i16 10, ptr %27, align 1
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(i64 640, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %2) #22
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_Z19extract_ponder_moveP7state_t(ptr noundef %0) local_unnamed_addr #9 !prof !77 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [240 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 960, ptr nonnull %4) #22
  %5 = call noundef i32 @_Z7ProbeTTP7state_tPiiiPjS1_S1_S1_S1_i(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef nonnull %3, i32 noundef 0)
  %6 = icmp eq i32 %5, 4
  br i1 %6, label %55, label %7

7:                                                ; preds = %1
  %8 = call noundef i32 @_Z8in_checkP7state_t(ptr noundef %0)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = call noundef i32 @_Z8in_checkP7state_t(ptr noundef %0)
  %12 = call noundef i32 @_Z12gen_evasionsP7state_tPii(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %11)
  br label %15

13:                                               ; preds = %7
  %14 = call noundef i32 @_Z3genP7state_tPi(ptr noundef %0, ptr noundef nonnull %4)
  br label %15

15:                                               ; preds = %13, %10
  %16 = phi i32 [ %12, %10 ], [ %14, %13 ]
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %15
  %19 = load i32, ptr %2, align 4, !tbaa !89
  %20 = zext nneg i32 %16 to i64
  br label %21

21:                                               ; preds = %18, %21
  %22 = phi i64 [ 0, %18 ], [ %38, %21 ]
  %23 = phi i32 [ -1, %18 ], [ %37, %21 ]
  %24 = getelementptr inbounds [240 x i32], ptr %4, i64 0, i64 %22
  %25 = load i32, ptr %24, align 4, !tbaa !89
  %26 = lshr i32 %25, 4
  %27 = and i32 %26, 28672
  %28 = and i32 %25, 4095
  %29 = or disjoint i32 %27, %28
  %30 = lshr i32 %25, 1
  %31 = and i32 %30, 30720
  %32 = add nuw nsw i32 %31, 2048
  %33 = and i32 %32, 61440
  %34 = or i32 %29, %33
  %35 = icmp eq i32 %19, %34
  %36 = trunc i64 %22 to i32
  %37 = select i1 %35, i32 %36, i32 %23
  %38 = add nuw nsw i64 %22, 1
  %39 = icmp eq i64 %38, %20
  br i1 %39, label %40, label %21, !llvm.loop !162

40:                                               ; preds = %21, %15
  %41 = phi i32 [ -1, %15 ], [ %37, %21 ]
  %42 = icmp sgt i32 %41, -1
  br i1 %42, label %43, label %55

43:                                               ; preds = %40
  %44 = zext nneg i32 %41 to i64
  %45 = getelementptr inbounds [240 x i32], ptr %4, i64 0, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !89
  call void @_Z4makeP7state_ti(ptr noundef %0, i32 noundef %46)
  %47 = load i32, ptr %45, align 4, !tbaa !89
  %48 = call noundef i32 @_Z11check_legalP7state_ti(ptr noundef %0, i32 noundef %47)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %43
  %51 = load i32, ptr %45, align 4, !tbaa !89
  br label %52

52:                                               ; preds = %50, %43
  %53 = phi i32 [ %51, %50 ], [ 0, %43 ]
  %54 = load i32, ptr %45, align 4, !tbaa !89
  call void @_Z6unmakeP7state_ti(ptr noundef %0, i32 noundef %54)
  br label %55

55:                                               ; preds = %40, %52, %1
  %56 = phi i32 [ %53, %52 ], [ 0, %40 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 960, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  ret i32 %56
}

declare noundef i32 @_Z7ProbeTTP7state_tPiiiPjS1_S1_S1_S1_i(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare noundef i32 @_Z12gen_evasionsP7state_tPii(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold mustprogress uwtable
define dso_local void @_Z24extract_current_bestlineP7state_t(ptr noundef %0) local_unnamed_addr #9 !prof !77 {
  %2 = alloca [640 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 640, ptr nonnull %2) #22
  store i8 0, ptr %2, align 16, !tbaa !96
  call fastcc void @_ZL15hash_extract_pvP7state_tiPc(ptr noundef %0, i32 noundef 60, ptr noundef nonnull %2)
  %3 = call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %4 = getelementptr inbounds i8, ptr %2, i64 %3
  store i16 10, ptr %4, align 1
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(i64 640, ptr nonnull %2) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL15hash_extract_pvP7state_tiPc(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #4 !prof !163 !PGOFuncName !164 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [240 x i32], align 16
  %7 = alloca [512 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 960, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %7) #22
  %8 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 16
  %9 = load i64, ptr %8, align 8, !tbaa !165
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds [65 x i64], ptr @_ZZL15hash_extract_pvP7state_tiPcE10levelstack, i64 0, i64 %10
  store i64 %9, ptr %11, align 8, !tbaa !155
  %12 = sext i32 %1 to i64
  %13 = tail call i32 @llvm.smax.i32(i32 %1, i32 64)
  %14 = zext nneg i32 %13 to i64
  br label %15

15:                                               ; preds = %18, %3
  %16 = phi i64 [ %19, %18 ], [ %12, %3 ]
  %17 = icmp eq i64 %16, %14
  br i1 %17, label %23, label %18, !prof !166

18:                                               ; preds = %15
  %19 = add nsw i64 %16, 1
  %20 = getelementptr inbounds [65 x i64], ptr @_ZZL15hash_extract_pvP7state_tiPcE10levelstack, i64 0, i64 %19
  %21 = load i64, ptr %20, align 8, !tbaa !155
  %22 = icmp eq i64 %21, %9
  br i1 %22, label %88, label %15, !prof !167, !llvm.loop !168

23:                                               ; preds = %15
  %24 = add nsw i32 %1, -1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %88, label %26, !prof !169

26:                                               ; preds = %23
  %27 = call noundef i32 @_Z7ProbeTTP7state_tPiiiPjS1_S1_S1_S1_i(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull %4, i32 noundef 0)
  %28 = icmp eq i32 %27, 4
  br i1 %28, label %88, label %29, !prof !170

29:                                               ; preds = %26
  %30 = call noundef i32 @_Z8in_checkP7state_t(ptr noundef %0)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32, !prof !171

32:                                               ; preds = %29
  %33 = call noundef i32 @_Z8in_checkP7state_t(ptr noundef %0)
  %34 = call noundef i32 @_Z12gen_evasionsP7state_tPii(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %33)
  br label %37

35:                                               ; preds = %29
  %36 = call noundef i32 @_Z3genP7state_tPi(ptr noundef %0, ptr noundef nonnull %6)
  br label %37

37:                                               ; preds = %35, %32
  %38 = phi i32 [ %34, %32 ], [ %36, %35 ]
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %62, !prof !172

40:                                               ; preds = %37
  %41 = load i32, ptr %5, align 4, !tbaa !89
  %42 = zext nneg i32 %38 to i64
  br label %43

43:                                               ; preds = %40, %43
  %44 = phi i64 [ 0, %40 ], [ %60, %43 ]
  %45 = phi i32 [ -1, %40 ], [ %59, %43 ]
  %46 = getelementptr inbounds [240 x i32], ptr %6, i64 0, i64 %44
  %47 = load i32, ptr %46, align 4, !tbaa !89
  %48 = lshr i32 %47, 4
  %49 = and i32 %48, 28672
  %50 = and i32 %47, 4095
  %51 = or disjoint i32 %49, %50
  %52 = lshr i32 %47, 1
  %53 = and i32 %52, 30720
  %54 = add nuw nsw i32 %53, 2048
  %55 = and i32 %54, 61440
  %56 = or i32 %51, %55
  %57 = icmp eq i32 %41, %56
  %58 = trunc i64 %44 to i32
  %59 = select i1 %57, i32 %58, i32 %45, !prof !173
  %60 = add nuw nsw i64 %44, 1
  %61 = icmp eq i64 %60, %42
  br i1 %61, label %62, label %43, !prof !174, !llvm.loop !175

62:                                               ; preds = %43, %37
  %63 = phi i32 [ -1, %37 ], [ %59, %43 ]
  %64 = icmp sgt i32 %63, -1
  %65 = icmp slt i32 %63, %38
  %66 = and i1 %64, %65
  br i1 %66, label %67, label %88, !prof !176

67:                                               ; preds = %62
  %68 = load i32, ptr @uci_mode, align 4, !tbaa !89
  %69 = icmp eq i32 %68, 0
  %70 = zext nneg i32 %63 to i64
  %71 = getelementptr inbounds [240 x i32], ptr %6, i64 0, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !89
  br i1 %69, label %73, label %74, !prof !177

73:                                               ; preds = %67
  call void @_Z11comp_to_sanP7state_tiPc(ptr noundef %0, i32 noundef %72, ptr noundef nonnull %7)
  br label %75

74:                                               ; preds = %67
  call void @_Z13comp_to_coordP7state_tiPc(ptr noundef %0, i32 noundef %72, ptr noundef nonnull %7)
  br label %75

75:                                               ; preds = %74, %73
  %76 = zext nneg i32 %63 to i64
  %77 = getelementptr inbounds [240 x i32], ptr %6, i64 0, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !89
  call void @_Z4makeP7state_ti(ptr noundef %0, i32 noundef %78)
  %79 = load i32, ptr %77, align 4, !tbaa !89
  %80 = call noundef i32 @_Z11check_legalP7state_ti(ptr noundef %0, i32 noundef %79)
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %86, label %82, !prof !178

82:                                               ; preds = %75
  %83 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %7) #22
  %84 = call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %85 = getelementptr inbounds i8, ptr %2, i64 %84
  store i16 32, ptr %85, align 1
  call fastcc void @_ZL15hash_extract_pvP7state_tiPc(ptr noundef %0, i32 noundef %24, ptr noundef %2)
  br label %86

86:                                               ; preds = %82, %75
  %87 = load i32, ptr %77, align 4, !tbaa !89
  call void @_Z6unmakeP7state_ti(ptr noundef %0, i32 noundef %87)
  br label %88

88:                                               ; preds = %18, %26, %86, %62, %23
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 960, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_Z12stringize_pvP7state_tPc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !77 {
  store i8 0, ptr %1, align 1, !tbaa !96
  tail call fastcc void @_ZL15hash_extract_pvP7state_tiPc(ptr noundef %0, i32 noundef 60, ptr noundef nonnull %1)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_Z13post_thinkingP7state_tiiPci(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #9 !prof !179 {
  %6 = alloca [512 x i8], align 16
  %7 = alloca [512 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %6) #22
  %8 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4, !tbaa !180
  %9 = icmp slt i32 %8, 3
  %10 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 14), align 8
  %11 = icmp sgt i32 %10, 2
  %12 = select i1 %9, i1 %11, i1 false, !prof !181
  br i1 %12, label %51, label %13, !prof !181

13:                                               ; preds = %5
  %14 = load i32, ptr @uci_mode, align 4, !tbaa !89
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19, !prof !182

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 22
  %18 = load i64, ptr %17, align 8, !tbaa !183
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.42, i32 noundef %8, i32 noundef %1, i32 noundef 0, i64 noundef %18)
  br label %35

19:                                               ; preds = %13
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.43, ptr noundef %3, i32 noundef %4)
  %20 = tail call i32 @llvm.abs.i32(i32 %1, i1 true)
  %21 = icmp ult i32 %20, 10000
  %22 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4, !tbaa !180
  %23 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 24
  %24 = load i32, ptr %23, align 8, !tbaa !184
  %25 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 22
  %26 = load i64, ptr %25, align 8, !tbaa !183
  %27 = load i32, ptr @EGTBHits, align 4, !tbaa !89
  br i1 %21, label %28, label %29

28:                                               ; preds = %19
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.44, i32 noundef %22, i32 noundef %24, i32 noundef 0, i64 noundef %26, i32 noundef %27, i32 noundef %1)
  br label %35

29:                                               ; preds = %19
  %30 = sub nsw i32 32000, %20
  %31 = sdiv i32 %30, 2
  %32 = sub nsw i32 0, %31
  %33 = icmp slt i32 %1, 0
  %34 = select i1 %33, i32 %32, i32 %31
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.45, i32 noundef %22, i32 noundef %24, i32 noundef 0, i64 noundef %26, i32 noundef %27, i32 noundef %34)
  br label %35

35:                                               ; preds = %28, %29, %16
  %36 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 14
  %37 = load i32, ptr %36, align 8, !tbaa !146
  %38 = icmp slt i32 %37, 2
  br i1 %38, label %40, label %39, !prof !185

39:                                               ; preds = %35
  tail call void @_Z6unmakeP7state_ti(ptr noundef %0, i32 noundef %2)
  br label %40

40:                                               ; preds = %39, %35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %6, i8 0, i64 512, i1 false)
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %7) #22
  %41 = load i32, ptr @uci_mode, align 4, !tbaa !89
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44, !prof !182

43:                                               ; preds = %40
  call void @_Z11comp_to_sanP7state_tiPc(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %7)
  br label %45

44:                                               ; preds = %40
  call void @_Z13comp_to_coordP7state_tiPc(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %7)
  br label %45

45:                                               ; preds = %44, %43
  %46 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %7) #22
  %47 = call i64 @strlen(ptr nonnull dereferenceable(1) %6)
  %48 = getelementptr inbounds i8, ptr %6, i64 %47
  store i16 32, ptr %48, align 1
  call void @_Z4makeP7state_ti(ptr noundef %0, i32 noundef %2)
  call fastcc void @_ZL15hash_extract_pvP7state_tiPc(ptr noundef %0, i32 noundef 60, ptr noundef nonnull %6)
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.46, ptr noundef nonnull %6)
  call void @_Z6unmakeP7state_ti(ptr noundef %0, i32 noundef %2)
  br i1 %38, label %50, label %49, !prof !185

49:                                               ; preds = %45
  call void @_Z4makeP7state_ti(ptr noundef %0, i32 noundef %2)
  br label %50

50:                                               ; preds = %49, %45
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.41)
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %7) #22
  br label %51

51:                                               ; preds = %5, %50
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %6) #22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z9rdifftimeii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #13 !prof !186 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z5rtimev() local_unnamed_addr #13 !prof !187 {
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #14

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: cold mustprogress uwtable
define dso_local void @_Z16post_fh_thinkingP7state_tiiPci(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3, i32 noundef %4) local_unnamed_addr #9 !prof !188 {
  %6 = alloca [512 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %6) #22
  %7 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4, !tbaa !180
  %8 = icmp slt i32 %7, 3
  %9 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 14), align 8
  %10 = icmp sgt i32 %9, 2
  %11 = select i1 %8, i1 %10, i1 false, !prof !189
  br i1 %11, label %44, label %12, !prof !189

12:                                               ; preds = %5
  %13 = load i32, ptr @uci_mode, align 4, !tbaa !89
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18, !prof !190

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 22
  %17 = load i64, ptr %16, align 8, !tbaa !183
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.42, i32 noundef %7, i32 noundef %1, i32 noundef 0, i64 noundef %17)
  br label %33

18:                                               ; preds = %12
  %19 = tail call i32 @llvm.abs.i32(i32 %1, i1 true)
  %20 = icmp ult i32 %19, 10000
  %21 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 24
  %22 = load i32, ptr %21, align 8, !tbaa !184
  %23 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 22
  %24 = load i64, ptr %23, align 8, !tbaa !183
  %25 = load i32, ptr @EGTBHits, align 4, !tbaa !89
  br i1 %20, label %26, label %27

26:                                               ; preds = %18
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.47, i32 noundef %7, i32 noundef %22, i32 noundef 0, i64 noundef %24, i32 noundef %25, i32 noundef %1)
  br label %33

27:                                               ; preds = %18
  %28 = sub nsw i32 32000, %19
  %29 = sdiv i32 %28, 2
  %30 = sub nsw i32 0, %29
  %31 = icmp slt i32 %1, 0
  %32 = select i1 %31, i32 %30, i32 %29
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.47, i32 noundef %7, i32 noundef %22, i32 noundef 0, i64 noundef %24, i32 noundef %25, i32 noundef %32)
  br label %33

33:                                               ; preds = %26, %27, %15
  tail call void @_Z6unmakeP7state_ti(ptr noundef %0, i32 noundef %2)
  %34 = load i32, ptr @uci_mode, align 4, !tbaa !89
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37, !prof !190

36:                                               ; preds = %33
  call void @_Z11comp_to_sanP7state_tiPc(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %6)
  br label %38

37:                                               ; preds = %33
  call void @_Z13comp_to_coordP7state_tiPc(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %6)
  br label %38

38:                                               ; preds = %37, %36
  tail call void @_Z4makeP7state_ti(ptr noundef %0, i32 noundef %2)
  %39 = load i32, ptr @uci_mode, align 4, !tbaa !89
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42, !prof !190

41:                                               ; preds = %38
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.48, ptr noundef nonnull %6)
  br label %43

42:                                               ; preds = %38
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.46, ptr noundef nonnull %6)
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.41)
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.49, ptr noundef nonnull %6, i32 noundef %4)
  br label %43

43:                                               ; preds = %42, %41
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.41)
  br label %44

44:                                               ; preds = %5, %43
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %6) #22
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_Z16post_fl_thinkingP7state_tiiPci(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #9 !prof !191 {
  %6 = alloca [512 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %6) #22
  %7 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4, !tbaa !180
  %8 = icmp slt i32 %7, 3
  %9 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 14), align 8
  %10 = icmp sgt i32 %9, 2
  %11 = select i1 %8, i1 %10, i1 false, !prof !192
  br i1 %11, label %43, label %12, !prof !192

12:                                               ; preds = %5
  %13 = load i32, ptr @uci_mode, align 4, !tbaa !89
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18, !prof !193

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 22
  %17 = load i64, ptr %16, align 8, !tbaa !183
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.42, i32 noundef %7, i32 noundef %1, i32 noundef 0, i64 noundef %17)
  br label %34

18:                                               ; preds = %12
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.43, ptr noundef %3, i32 noundef %4)
  %19 = tail call i32 @llvm.abs.i32(i32 %1, i1 true)
  %20 = icmp ult i32 %19, 10000
  %21 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4, !tbaa !180
  %22 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 24
  %23 = load i32, ptr %22, align 8, !tbaa !184
  %24 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 22
  %25 = load i64, ptr %24, align 8, !tbaa !183
  %26 = load i32, ptr @EGTBHits, align 4, !tbaa !89
  br i1 %20, label %27, label %28

27:                                               ; preds = %18
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.50, i32 noundef %21, i32 noundef %23, i32 noundef 0, i64 noundef %25, i32 noundef %26, i32 noundef %1)
  br label %34

28:                                               ; preds = %18
  %29 = sub nsw i32 32000, %19
  %30 = sdiv i32 %29, 2
  %31 = sub nsw i32 0, %30
  %32 = icmp slt i32 %1, 0
  %33 = select i1 %32, i32 %31, i32 %30
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.50, i32 noundef %21, i32 noundef %23, i32 noundef 0, i64 noundef %25, i32 noundef %26, i32 noundef %33)
  br label %34

34:                                               ; preds = %27, %28, %15
  tail call void @_Z6unmakeP7state_ti(ptr noundef %0, i32 noundef %2)
  %35 = load i32, ptr @uci_mode, align 4, !tbaa !89
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38, !prof !193

37:                                               ; preds = %34
  call void @_Z11comp_to_sanP7state_tiPc(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %6)
  br label %39

38:                                               ; preds = %34
  call void @_Z13comp_to_coordP7state_tiPc(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %6)
  br label %39

39:                                               ; preds = %38, %37
  tail call void @_Z4makeP7state_ti(ptr noundef %0, i32 noundef %2)
  %40 = load i32, ptr @uci_mode, align 4, !tbaa !89
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, ptr @.str.51, ptr @.str.46, !prof !193
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull %42, ptr noundef nonnull %6)
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.41)
  br label %43

43:                                               ; preds = %5, %39
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %6) #22
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_Z21post_multipv_thinkingP7state_tiii(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 !prof !77 {
  %5 = alloca [512 x i8], align 16
  %6 = alloca [10 x i8], align 1
  %7 = alloca [512 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %7) #22
  %8 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4, !tbaa !180
  %9 = icmp slt i32 %8, 3
  %10 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 14), align 8
  %11 = icmp sgt i32 %10, 2
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %83, label %13

13:                                               ; preds = %4
  %14 = sext i32 %2 to i64
  %15 = getelementptr inbounds [240 x [512 x i8]], ptr @multipv_strings, i64 0, i64 %14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %15, i8 0, i64 512, i1 false)
  %16 = getelementptr inbounds [240 x i32], ptr @multipv_scores, i64 0, i64 %14
  store i32 %1, ptr %16, align 4, !tbaa !89
  %17 = tail call i32 @llvm.abs.i32(i32 %1, i1 true)
  %18 = icmp ult i32 %17, 10000
  %19 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 24
  %20 = load i32, ptr %19, align 8, !tbaa !184
  %21 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 22
  %22 = load i64, ptr %21, align 8, !tbaa !183
  %23 = load i32, ptr @EGTBHits, align 4, !tbaa !89
  br i1 %18, label %24, label %26

24:                                               ; preds = %13
  %25 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(1) @.str.52, i32 noundef %8, i32 noundef %20, i32 noundef 0, i64 noundef %22, i32 noundef %23, i32 noundef %1) #22
  br label %33

26:                                               ; preds = %13
  %27 = sub nsw i32 32000, %17
  %28 = sdiv i32 %27, 2
  %29 = sub nsw i32 0, %28
  %30 = icmp slt i32 %1, 0
  %31 = select i1 %30, i32 %29, i32 %28
  %32 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(1) @.str.53, i32 noundef %8, i32 noundef %20, i32 noundef 0, i64 noundef %22, i32 noundef %23, i32 noundef %31) #22
  br label %33

33:                                               ; preds = %26, %24
  call void @_Z13comp_to_coordP7state_tiPc(ptr noundef %0, i32 noundef %3, ptr noundef nonnull %6)
  %34 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(1) %6) #22
  %35 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %15)
  %36 = getelementptr inbounds i8, ptr %15, i64 %35
  store i16 32, ptr %36, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %7, i8 0, i64 512, i1 false)
  call fastcc void @_ZL15hash_extract_pvP7state_tiPc(ptr noundef %0, i32 noundef 60, ptr noundef nonnull %7)
  %37 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(1) %7) #22
  %38 = call i64 @strlen(ptr nonnull dereferenceable(1) %15)
  %39 = getelementptr inbounds i8, ptr %15, i64 %38
  store i16 10, ptr %39, align 1
  %40 = load i32, ptr %16, align 4, !tbaa !89
  %41 = load i32, ptr @uci_multipv, align 4, !tbaa !89
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [240 x i32], ptr @multipv_scores, i64 0, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !89
  %45 = icmp slt i32 %40, %44
  %46 = icmp slt i32 %41, %2
  %47 = and i1 %46, %45
  br i1 %47, label %83, label %48

48:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %5) #22
  br label %49

49:                                               ; preds = %48, %67
  %50 = phi i64 [ 1, %48 ], [ %68, %67 ]
  %51 = getelementptr inbounds [240 x i32], ptr @multipv_scores, i64 0, i64 %50
  %52 = getelementptr [240 x [512 x i8]], ptr @multipv_strings, i64 0, i64 %50
  br label %53

53:                                               ; preds = %49, %64
  %54 = phi i64 [ %50, %49 ], [ %65, %64 ]
  %55 = getelementptr inbounds [240 x i32], ptr @multipv_scores, i64 0, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !89
  %57 = load i32, ptr %51, align 4, !tbaa !89
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = getelementptr inbounds [240 x [512 x i8]], ptr @multipv_strings, i64 0, i64 %54
  %61 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %60) #22
  %62 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %60, ptr noundef nonnull dereferenceable(1) %52) #22
  %63 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %52, ptr noundef nonnull dereferenceable(1) %5) #22
  store i32 %57, ptr %55, align 4, !tbaa !89
  store i32 %56, ptr %51, align 4, !tbaa !89
  br label %64

64:                                               ; preds = %59, %53
  %65 = add nuw nsw i64 %54, 1
  %66 = icmp eq i64 %65, 240
  br i1 %66, label %67, label %53, !llvm.loop !194

67:                                               ; preds = %64
  %68 = add nuw nsw i64 %50, 1
  %69 = icmp eq i64 %68, 240
  br i1 %69, label %70, label %49, !llvm.loop !195

70:                                               ; preds = %67
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %5) #22
  %71 = load i32, ptr @uci_multipv, align 4, !tbaa !89
  %72 = icmp slt i32 %71, 1
  br i1 %72, label %83, label %73

73:                                               ; preds = %70, %73
  %74 = phi i64 [ %79, %73 ], [ 1, %70 ]
  %75 = trunc i64 %74 to i32
  %76 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.54, i32 noundef %75) #22
  %77 = getelementptr inbounds [240 x [512 x i8]], ptr @multipv_strings, i64 0, i64 %74
  %78 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %77) #22
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull %7)
  %79 = add nuw nsw i64 %74, 1
  %80 = load i32, ptr @uci_multipv, align 4, !tbaa !89
  %81 = sext i32 %80 to i64
  %82 = icmp slt i64 %74, %81
  br i1 %82, label %73, label %83, !llvm.loop !196

83:                                               ; preds = %73, %70, %33, %4
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %6) #22
  ret void
}

declare void @_Z14init_psq_scoreP7state_t(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #16

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #16

; Function Attrs: cold mustprogress uwtable
define dso_local void @_Z6rinputPciP8_IO_FILE(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #9 !prof !77 {
  %4 = load i32, ptr @buffered_count, align 4, !tbaa !89
  %5 = icmp eq i32 %4, 0
  %6 = load i32, ptr @is_pondering, align 4
  %7 = icmp ne i32 %6, 0
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = add nsw i32 %1, -1
  br label %11

11:                                               ; preds = %36, %9
  %12 = phi i32 [ %38, %36 ], [ 0, %9 ]
  %13 = icmp slt i32 %12, %10
  br label %33

14:                                               ; preds = %3
  %15 = sext i32 %1 to i64
  %16 = tail call ptr @strncpy(ptr noundef %0, ptr noundef nonnull @buffered_command, i64 noundef %15) #22
  %17 = load i32, ptr @buffered_count, align 4, !tbaa !89
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
  %30 = add nsw i32 %17, -1
  store i32 %30, ptr @buffered_count, align 4, !tbaa !89
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [20 x [8192 x i8]], ptr @buffered_command, i64 0, i64 %31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8192) %32, i8 0, i64 8192, i1 false)
  br label %55

33:                                               ; preds = %11, %35
  %34 = tail call i32 @getc(ptr noundef %2)
  switch i32 %34, label %35 [
    i32 -1, label %41
    i32 10, label %41
  ]

35:                                               ; preds = %33
  br i1 %13, label %36, label %33, !llvm.loop !198

36:                                               ; preds = %35
  %37 = trunc i32 %34 to i8
  %38 = add nuw nsw i32 %12, 1
  %39 = zext nneg i32 %12 to i64
  %40 = getelementptr inbounds i8, ptr %0, i64 %39
  store i8 %37, ptr %40, align 1, !tbaa !96
  br label %11, !llvm.loop !198

41:                                               ; preds = %33, %33
  %42 = zext nneg i32 %12 to i64
  %43 = getelementptr inbounds i8, ptr %0, i64 %42
  store i8 0, ptr %43, align 1, !tbaa !96
  %44 = load i32, ptr @cfg_logging, align 4, !tbaa !89
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %41
  %47 = tail call noalias ptr @fopen(ptr noundef nonnull @cfg_logfile, ptr noundef nonnull @.str.55)
  %48 = icmp eq ptr %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %47, ptr noundef nonnull @.str.56, ptr noundef %0)
  %51 = tail call i32 @fclose(ptr noundef nonnull %47)
  br label %52

52:                                               ; preds = %46, %49, %41
  %53 = icmp eq i32 %34, -1
  br i1 %53, label %54, label %55

54:                                               ; preds = %52
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.57)
  tail call void @_Z9free_hashv()
  tail call void @exit(i32 noundef 1) #24
  unreachable

55:                                               ; preds = %52, %29
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

declare void @_Z9free_hashv() local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #17

; Function Attrs: cold mustprogress nofree nounwind uwtable
define dso_local void @_Z8start_upv() local_unnamed_addr #10 !prof !199 {
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.58)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_Z12verify_coordP7state_tPcPi(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #9 !prof !77 {
  %4 = alloca [240 x i32], align 16
  %5 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 960, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #22
  %6 = call noundef i32 @_Z3genP7state_tPi(ptr noundef %0, ptr noundef nonnull %4)
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %33

8:                                                ; preds = %3
  %9 = zext nneg i32 %6 to i64
  br label %10

10:                                               ; preds = %8, %27
  %11 = phi i64 [ 0, %8 ], [ %29, %27 ]
  %12 = phi i32 [ 0, %8 ], [ %28, %27 ]
  %13 = getelementptr inbounds [240 x i32], ptr %4, i64 0, i64 %11
  %14 = load i32, ptr %13, align 4, !tbaa !89
  call void @_Z13comp_to_coordP7state_tiPc(ptr noundef %0, i32 noundef %14, ptr noundef nonnull %5)
  %15 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %5) #23
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %10
  %18 = load i32, ptr %13, align 4, !tbaa !89
  call void @_Z4makeP7state_ti(ptr noundef %0, i32 noundef %18)
  %19 = load i32, ptr %13, align 4, !tbaa !89
  %20 = call noundef i32 @_Z11check_legalP7state_ti(ptr noundef %0, i32 noundef %19)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = load i32, ptr %13, align 4, !tbaa !89
  store i32 %23, ptr %2, align 4, !tbaa !89
  br label %24

24:                                               ; preds = %22, %17
  %25 = phi i32 [ 1, %22 ], [ %12, %17 ]
  %26 = load i32, ptr %13, align 4, !tbaa !89
  call void @_Z6unmakeP7state_ti(ptr noundef %0, i32 noundef %26)
  br label %27

27:                                               ; preds = %10, %24
  %28 = phi i32 [ %12, %10 ], [ %25, %24 ]
  %29 = add nuw nsw i64 %11, 1
  %30 = icmp ult i64 %29, %9
  %31 = icmp eq i32 %28, 0
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %10, label %33, !llvm.loop !200

33:                                               ; preds = %27, %3
  %34 = phi i32 [ 0, %3 ], [ %28, %27 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 960, ptr nonnull %4) #22
  ret i32 %34
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_Z17input_causes_stopv() local_unnamed_addr #9 !prof !77 {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #22
  %2 = load ptr, ptr @stdin, align 8, !tbaa !122
  %3 = tail call i32 @getc(ptr noundef %2)
  %4 = icmp eq i32 %3, 112
  br i1 %4, label %5, label %24

5:                                                ; preds = %0
  %6 = tail call noundef i32 @_Z13allocate_timeP11gamestate_ti(ptr nonnull poison, i32 poison)
  store i32 %6, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !201
  %7 = load ptr, ptr @stdin, align 8, !tbaa !122
  %8 = tail call i32 @ungetc(i32 noundef 112, ptr noundef %7)
  %9 = load i32, ptr @buffered_count, align 4, !tbaa !89
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [20 x [8192 x i8]], ptr @buffered_command, i64 0, i64 %10
  %12 = load ptr, ptr @stdin, align 8, !tbaa !122
  tail call void @_Z6rinputPciP8_IO_FILE(ptr noundef nonnull %11, i32 noundef 8192, ptr noundef %12)
  %13 = load i32, ptr @buffered_count, align 4, !tbaa !89
  %14 = add nsw i32 %13, 1
  store i32 %14, ptr @buffered_count, align 4, !tbaa !89
  %15 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !201
  %16 = sitofp i32 %15 to double
  %17 = fdiv double %16, 2.500000e+00
  %18 = fdiv double %17, 1.000000e+02
  %19 = fptosi double %18 to i32
  %20 = icmp sgt i32 %19, -1
  %21 = sdiv i32 %15, 100
  br i1 %20, label %22, label %23

22:                                               ; preds = %5
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.59, i32 noundef %21, i32 noundef 0, i32 noundef %21, i32 noundef %19)
  br label %59

23:                                               ; preds = %5
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.60, i32 noundef %21, i32 noundef 0, i32 noundef %21)
  br label %59

24:                                               ; preds = %0
  %25 = load ptr, ptr @stdin, align 8, !tbaa !122
  %26 = tail call i32 @ungetc(i32 noundef %3, ptr noundef %25)
  %27 = load i32, ptr @uci_mode, align 4, !tbaa !89
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %59, label %29

29:                                               ; preds = %24
  %30 = load i32, ptr @buffered_count, align 4, !tbaa !89
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [20 x [8192 x i8]], ptr @buffered_command, i64 0, i64 %31
  %33 = load ptr, ptr @stdin, align 8, !tbaa !122
  tail call void @_Z6rinputPciP8_IO_FILE(ptr noundef nonnull %32, i32 noundef 8192, ptr noundef %33)
  %34 = load i32, ptr @buffered_count, align 4, !tbaa !89
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [20 x [8192 x i8]], ptr @buffered_command, i64 0, i64 %35
  %37 = load i8, ptr %36, align 16, !tbaa !96
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %59, label %39

39:                                               ; preds = %29
  %40 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %36, ptr noundef nonnull dereferenceable(5) @.str.61, i64 noundef 4) #23
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = getelementptr inbounds i8, ptr %36, i64 5
  %44 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %43, ptr noundef nonnull @.str.62, ptr noundef nonnull %1) #22
  %45 = load i32, ptr %1, align 4, !tbaa !89
  store i32 %45, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 10), align 8, !tbaa !90
  br label %59

46:                                               ; preds = %39
  %47 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %36, ptr noundef nonnull dereferenceable(5) @.str.63, i64 noundef 4) #23
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = add nsw i32 %34, 1
  store i32 %50, ptr @buffered_count, align 4, !tbaa !89
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
  store i32 %58, ptr @buffered_count, align 4, !tbaa !89
  br label %59

59:                                               ; preds = %57, %24, %29, %22, %23, %54, %49, %42
  %60 = phi i32 [ 0, %54 ], [ 0, %49 ], [ 0, %42 ], [ 0, %23 ], [ 0, %22 ], [ 0, %29 ], [ 1, %24 ], [ 1, %57 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #22
  ret i32 %60
}

; Function Attrs: nofree nounwind
declare noundef i32 @ungetc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z9interruptv() local_unnamed_addr #13 !prof !186 {
  ret i32 0
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_Z11reset_boardP7state_t(ptr noundef %0) local_unnamed_addr #9 !prof !77 {
  %2 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %2, i8 13, i64 256, i1 false)
  %3 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 10
  store i32 0, ptr %3, align 8, !tbaa !137
  %4 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 6
  store i32 0, ptr %4, align 8, !tbaa !144
  %5 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 15
  store i32 0, ptr %5, align 4, !tbaa !145
  %6 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 7
  store i32 0, ptr %6, align 4, !tbaa !202
  %7 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 9
  store i32 30, ptr %7, align 4, !tbaa !138
  store i32 0, ptr %0, align 8, !tbaa !147
  tail call void @_Z18reset_piece_squareP7state_t(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_Z15make_text_movesP11gamestate_tP7state_tPc(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #9 !prof !77 {
  %4 = alloca [512 x i8], align 16
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #22
  %6 = load i8, ptr %2, align 1, !tbaa !96
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
  %23 = call noundef i32 @_Z12verify_coordP7state_tPcPi(ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5), !range !203
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.66, ptr noundef nonnull %4)
  br label %46

26:                                               ; preds = %20
  %27 = trunc i64 %22 to i32
  %28 = add nsw i32 %16, 1
  %29 = add i32 %28, %27
  %30 = load i64, ptr %9, align 8, !tbaa !165
  %31 = load i32, ptr %10, align 4, !tbaa !91
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 36, i64 %32
  store i64 %30, ptr %33, align 8, !tbaa !155
  %34 = load i32, ptr %5, align 4, !tbaa !89
  %35 = getelementptr inbounds %struct.gamestate_t, ptr %0, i64 0, i32 16, i64 %32
  store i32 %34, ptr %35, align 4, !tbaa !89
  call void @_Z4makeP7state_ti(ptr noundef %1, i32 noundef %34)
  %36 = load i32, ptr %10, align 4, !tbaa !91
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr %10, align 4, !tbaa !91
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds %struct.gamestate_t, ptr %0, i64 0, i32 17, i64 %38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %39, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 32, i1 false), !tbaa.struct !204
  store i32 0, ptr %12, align 8, !tbaa !146
  %40 = load i32, ptr %13, align 8, !tbaa !205
  %41 = xor i32 %40, 1
  store i32 %41, ptr %13, align 8, !tbaa !205
  %42 = sext i32 %29 to i64
  %43 = getelementptr inbounds i8, ptr %2, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !96
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %14, !llvm.loop !206

46:                                               ; preds = %26, %14, %3, %25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %4) #22
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_Z8myrandomv() local_unnamed_addr #19 !prof !207 {
  %1 = load i32, ptr @_ZL2s1, align 4, !tbaa !89
  %2 = shl i32 %1, 13
  %3 = xor i32 %2, %1
  %4 = lshr i32 %3, 19
  %5 = shl i32 %1, 12
  %6 = and i32 %5, -8192
  %7 = or disjoint i32 %4, %6
  store i32 %7, ptr @_ZL2s1, align 4, !tbaa !89
  %8 = load i32, ptr @_ZL2s2, align 4, !tbaa !89
  %9 = shl i32 %8, 2
  %10 = xor i32 %9, %8
  %11 = lshr i32 %10, 25
  %12 = shl i32 %8, 4
  %13 = and i32 %12, -128
  %14 = or disjoint i32 %11, %13
  store i32 %14, ptr @_ZL2s2, align 4, !tbaa !89
  %15 = load i32, ptr @_ZL2s3, align 4, !tbaa !89
  %16 = shl i32 %15, 3
  %17 = xor i32 %16, %15
  %18 = lshr i32 %17, 11
  %19 = shl i32 %15, 17
  %20 = and i32 %19, -2097152
  %21 = or disjoint i32 %18, %20
  store i32 %21, ptr @_ZL2s3, align 4, !tbaa !89
  %22 = xor i32 %14, %7
  %23 = xor i32 %22, %21
  ret i32 %23
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z7mysrandj(i32 noundef %0) local_unnamed_addr #20 !prof !208 {
  %2 = tail call i32 @llvm.umax.i32(i32 %0, i32 1)
  %3 = mul i32 %2, 741103597
  store i32 %3, ptr @_ZL2s1, align 4, !tbaa !89
  %4 = mul i32 %2, -810880663
  store i32 %4, ptr @_ZL2s2, align 4, !tbaa !89
  %5 = mul i32 %2, -480760523
  store i32 %5, ptr @_ZL2s3, align 4, !tbaa !89
  %6 = or i32 %3, 2
  store i32 %6, ptr @_ZL2s1, align 4, !tbaa !89
  %7 = or i32 %4, 8
  store i32 %7, ptr @_ZL2s2, align 4, !tbaa !89
  %8 = or i32 %5, 16
  store i32 %8, ptr @_ZL2s3, align 4, !tbaa !89
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #17 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nounwind }
attributes #23 = { nounwind willreturn memory(read) }
attributes #24 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!76}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 128361366639}
!8 = !{!"MaxCount", i64 7592818589}
!9 = !{!"MaxInternalCount", i64 5393808666}
!10 = !{!"MaxFunctionCount", i64 7592818589}
!11 = !{!"NumCounts", i64 1723}
!12 = !{!"NumFunctions", i64 109}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 7592818589, i32 1}
!18 = !{i32 100000, i64 5393808666, i32 2}
!19 = !{i32 200000, i64 2869551984, i32 6}
!20 = !{i32 300000, i64 1728514292, i32 11}
!21 = !{i32 400000, i64 824050972, i32 24}
!22 = !{i32 500000, i64 588473769, i32 42}
!23 = !{i32 600000, i64 446369574, i32 68}
!24 = !{i32 700000, i64 286932458, i32 105}
!25 = !{i32 800000, i64 196614852, i32 160}
!26 = !{i32 900000, i64 107044397, i32 249}
!27 = !{i32 950000, i64 60101921, i32 326}
!28 = !{i32 990000, i64 15736932, i32 482}
!29 = !{i32 999000, i64 2025695, i32 659}
!30 = !{i32 999900, i64 318185, i32 779}
!31 = !{i32 999990, i64 50049, i32 848}
!32 = !{i32 999999, i64 3896, i32 923}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75}
!35 = !{ptr @_Z11comp_to_sanP7state_tiPc, ptr @_Z4ranki, i64 29550}
!36 = !{ptr @_Z11comp_to_sanP7state_tiPc, ptr @_Z4filei, i64 30970}
!37 = !{ptr @_Z11comp_to_sanP7state_tiPc, ptr @sprintf, i64 14689}
!38 = !{ptr @_Z11comp_to_sanP7state_tiPc, ptr @_Z3genP7state_tPi, i64 13029}
!39 = !{ptr @_Z11comp_to_sanP7state_tiPc, ptr @_Z8in_checkP7state_t, i64 27187}
!40 = !{ptr @_Z11comp_to_sanP7state_tiPc, ptr @_Z4makeP7state_ti, i64 29330}
!41 = !{ptr @_Z11comp_to_sanP7state_tiPc, ptr @_Z11check_legalP7state_ti, i64 29330}
!42 = !{ptr @_Z11comp_to_sanP7state_tiPc, ptr @_Z6unmakeP7state_ti, i64 29330}
!43 = !{ptr @_Z11comp_to_sanP7state_tiPc, ptr @strlen, i64 617}
!44 = !{ptr @_Z13display_boardP7state_ti, ptr @_Z8myprintfPKcz, i64 984}
!45 = !{ptr @_Z8myprintfPKcz, ptr @vfprintf, i64 2390}
!46 = !{ptr @_Z9init_gameP11gamestate_tP7state_t, ptr @_Z16SetupCastleMasksP7state_t, i64 13}
!47 = !{ptr @_Z9init_gameP11gamestate_tP7state_t, ptr @_Z18reset_piece_squareP7state_t, i64 13}
!48 = !{ptr @_Z18reset_piece_squareP7state_t, ptr @_Z14init_psq_scoreP7state_t, i64 25}
!49 = !{ptr @_ZL15hash_extract_pvP7state_tiPc, ptr @_Z7ProbeTTP7state_tPiiiPjS1_S1_S1_S1_i, i64 5123}
!50 = !{ptr @_ZL15hash_extract_pvP7state_tiPc, ptr @_Z8in_checkP7state_t, i64 5469}
!51 = !{ptr @_ZL15hash_extract_pvP7state_tiPc, ptr @_Z12gen_evasionsP7state_tPii, i64 358}
!52 = !{ptr @_ZL15hash_extract_pvP7state_tiPc, ptr @_Z3genP7state_tPi, i64 4753}
!53 = !{ptr @_ZL15hash_extract_pvP7state_tiPc, ptr @_Z11comp_to_sanP7state_tiPc, i64 4763}
!54 = !{ptr @_ZL15hash_extract_pvP7state_tiPc, ptr @_Z4makeP7state_ti, i64 4763}
!55 = !{ptr @_ZL15hash_extract_pvP7state_tiPc, ptr @_Z11check_legalP7state_ti, i64 4763}
!56 = !{ptr @_ZL15hash_extract_pvP7state_tiPc, ptr @strcat, i64 4763}
!57 = !{ptr @_ZL15hash_extract_pvP7state_tiPc, ptr @strlen, i64 4763}
!58 = !{ptr @_ZL15hash_extract_pvP7state_tiPc, ptr @_ZL15hash_extract_pvP7state_tiPc, i64 4763}
!59 = !{ptr @_ZL15hash_extract_pvP7state_tiPc, ptr @_Z6unmakeP7state_ti, i64 4763}
!60 = !{ptr @_Z13post_thinkingP7state_tiiPci, ptr @_Z8myprintfPKcz, i64 1170}
!61 = !{ptr @_Z13post_thinkingP7state_tiiPci, ptr @_Z6unmakeP7state_ti, i64 610}
!62 = !{ptr @_Z13post_thinkingP7state_tiiPci, ptr @_Z11comp_to_sanP7state_tiPc, i64 390}
!63 = !{ptr @_Z13post_thinkingP7state_tiiPci, ptr @strcpy, i64 390}
!64 = !{ptr @_Z13post_thinkingP7state_tiiPci, ptr @strlen, i64 390}
!65 = !{ptr @_Z13post_thinkingP7state_tiiPci, ptr @_Z4makeP7state_ti, i64 610}
!66 = !{ptr @_Z13post_thinkingP7state_tiiPci, ptr @_ZL15hash_extract_pvP7state_tiPc, i64 390}
!67 = !{ptr @_Z16post_fh_thinkingP7state_tiiPci, ptr @_Z8myprintfPKcz, i64 84}
!68 = !{ptr @_Z16post_fh_thinkingP7state_tiiPci, ptr @_Z6unmakeP7state_ti, i64 28}
!69 = !{ptr @_Z16post_fh_thinkingP7state_tiiPci, ptr @_Z11comp_to_sanP7state_tiPc, i64 28}
!70 = !{ptr @_Z16post_fh_thinkingP7state_tiiPci, ptr @_Z4makeP7state_ti, i64 28}
!71 = !{ptr @_Z16post_fl_thinkingP7state_tiiPci, ptr @_Z8myprintfPKcz, i64 90}
!72 = !{ptr @_Z16post_fl_thinkingP7state_tiiPci, ptr @_Z6unmakeP7state_ti, i64 30}
!73 = !{ptr @_Z16post_fl_thinkingP7state_tiiPci, ptr @_Z11comp_to_sanP7state_tiPc, i64 30}
!74 = !{ptr @_Z16post_fl_thinkingP7state_tiiPci, ptr @_Z4makeP7state_ti, i64 30}
!75 = !{ptr @_Z8start_upv, ptr @_Z8myprintfPKcz, i64 1}
!76 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!77 = !{!"function_entry_count", i64 0}
!78 = !{!"function_entry_count", i64 3322077682}
!79 = distinct !{!79, !80, !81}
!80 = !{!"llvm.loop.mustprogress"}
!81 = !{!"llvm.loop.unroll.disable"}
!82 = !{!"function_entry_count", i64 12}
!83 = !{!84, !85, i64 24}
!84 = !{!"_ZTS11gamestate_t", !85, i64 0, !85, i64 4, !85, i64 8, !85, i64 12, !85, i64 16, !85, i64 20, !85, i64 24, !85, i64 28, !85, i64 32, !85, i64 36, !85, i64 40, !85, i64 44, !85, i64 48, !85, i64 52, !85, i64 56, !85, i64 60, !86, i64 64, !86, i64 4064, !88, i64 36064, !85, i64 36072, !85, i64 36076, !85, i64 36080, !85, i64 36084, !85, i64 36088, !85, i64 36092, !85, i64 36096, !85, i64 36100}
!85 = !{!"int", !86, i64 0}
!86 = !{!"omnipotent char", !87, i64 0}
!87 = !{!"Simple C++ TBAA"}
!88 = !{!"long long", !86, i64 0}
!89 = !{!85, !85, i64 0}
!90 = !{!84, !85, i64 40}
!91 = !{!84, !85, i64 60}
!92 = !{!"function_entry_count", i64 14775}
!93 = !{!"branch_weights", i32 2277, i32 12498}
!94 = !{!"branch_weights", i32 2016, i32 261}
!95 = !{!"branch_weights", i32 2014, i32 2}
!96 = !{!86, !86, i64 0}
!97 = !{!"branch_weights", i32 261, i32 0}
!98 = !{!"branch_weights", i32 11, i32 12412, i32 20, i32 55}
!99 = !{!"branch_weights", i32 11701, i32 1}
!100 = !{!"branch_weights", i32 23695, i32 503778}
!101 = !{!"branch_weights", i32 22985, i32 710}
!102 = !{!"branch_weights", i32 0, i32 710}
!103 = !{!"branch_weights", i32 11701, i32 515772}
!104 = distinct !{!104, !80, !81}
!105 = !{!"branch_weights", i32 11702, i32 710}
!106 = !{!"branch_weights", i32 684, i32 26}
!107 = !{!"branch_weights", i32 10, i32 674}
!108 = !{!"branch_weights", i32 1, i32 25}
!109 = !{!"branch_weights", i32 9603, i32 2099}
!110 = !{!"branch_weights", i32 0, i32 14775}
!111 = !{!"branch_weights", i32 14158, i32 617}
!112 = !{!"branch_weights", i32 127, i32 1}
!113 = !{!"branch_weights", i32 13336, i32 616}
!114 = !{!"branch_weights", i32 127, i32 1785729}
!115 = distinct !{!115, !80, !81}
!116 = !{!117, !85, i64 4384}
!117 = !{!"_ZTS7state_t", !85, i64 0, !86, i64 4, !88, i64 264, !88, i64 272, !88, i64 280, !86, i64 288, !85, i64 392, !85, i64 396, !86, i64 400, !85, i64 452, !85, i64 456, !85, i64 460, !85, i64 464, !85, i64 468, !85, i64 472, !85, i64 476, !88, i64 480, !88, i64 488, !86, i64 496, !86, i64 2544, !86, i64 2800, !86, i64 3056, !88, i64 4080, !88, i64 4088, !85, i64 4096, !86, i64 4100, !85, i64 4356, !85, i64 4360, !85, i64 4364, !85, i64 4368, !85, i64 4372, !85, i64 4376, !85, i64 4380, !85, i64 4384, !85, i64 4388, !85, i64 4392, !86, i64 4400}
!118 = !{!117, !85, i64 4380}
!119 = !{!117, !85, i64 4392}
!120 = !{!117, !85, i64 4388}
!121 = !{!"branch_weights", i32 0, i32 12}
!122 = !{!123, !123, i64 0}
!123 = !{!"any pointer", !86, i64 0}
!124 = !{!"branch_weights", i32 96, i32 672}
!125 = distinct !{!125, !80, !81}
!126 = !{!"branch_weights", i32 12, i32 84}
!127 = distinct !{!127, !80, !81}
!128 = distinct !{!128, !80, !81}
!129 = distinct !{!129, !80, !81}
!130 = !{!"function_entry_count", i64 2390}
!131 = !{!132}
!132 = distinct !{!132, !133, !"vprintf: argument 0"}
!133 = distinct !{!133, !"vprintf"}
!134 = !{!"branch_weights", i32 2390, i32 0}
!135 = !{!"function_entry_count", i64 13}
!136 = !{!117, !85, i64 460}
!137 = !{!117, !85, i64 456}
!138 = !{!117, !85, i64 452}
!139 = !{!117, !85, i64 464}
!140 = !{!117, !85, i64 468}
!141 = !{!117, !85, i64 4372}
!142 = !{!117, !85, i64 4376}
!143 = !{!84, !85, i64 16}
!144 = !{!117, !85, i64 392}
!145 = !{!117, !85, i64 476}
!146 = !{!117, !85, i64 472}
!147 = !{!117, !85, i64 0}
!148 = !{!84, !85, i64 4}
!149 = !{!"function_entry_count", i64 25}
!150 = !{!"branch_weights", i32 728, i32 872}
!151 = !{!"branch_weights", i32 678, i32 25, i32 25}
!152 = !{!"branch_weights", i32 25, i32 1575}
!153 = distinct !{!153, !80, !81}
!154 = !{!"branch_weights", i32 872, i32 728}
!155 = !{!88, !88, i64 0}
!156 = !{!"branch_weights", i32 367, i32 361}
!157 = distinct !{!157, !80, !81}
!158 = !{!117, !88, i64 280}
!159 = !{!117, !88, i64 272}
!160 = !{!117, !88, i64 264}
!161 = distinct !{!161, !80, !81}
!162 = distinct !{!162, !80, !81}
!163 = !{!"function_entry_count", i64 5153}
!164 = !{!"utils.cpp;_ZL15hash_extract_pvP7state_tiPc"}
!165 = !{!117, !88, i64 480}
!166 = !{!"branch_weights", i32 5123, i32 63262}
!167 = !{!"branch_weights", i32 30, i32 63232}
!168 = distinct !{!168, !80, !81}
!169 = !{!"branch_weights", i32 0, i32 5123}
!170 = !{!"branch_weights", i32 12, i32 5111}
!171 = !{!"branch_weights", i32 4753, i32 358}
!172 = !{!"branch_weights", i32 5110, i32 1}
!173 = !{!"branch_weights", i32 4763, i32 180140}
!174 = !{!"branch_weights", i32 5110, i32 179793}
!175 = distinct !{!175, !80, !81}
!176 = !{!"branch_weights", i32 4763, i32 348}
!177 = !{!"branch_weights", i32 4763, i32 0}
!178 = !{!"branch_weights", i32 0, i32 4763}
!179 = !{!"function_entry_count", i64 472}
!180 = !{!84, !85, i64 20}
!181 = !{!"branch_weights", i32 82, i32 390}
!182 = !{!"branch_weights", i32 390, i32 0}
!183 = !{!117, !88, i64 4080}
!184 = !{!117, !85, i64 4096}
!185 = !{!"branch_weights", i32 170, i32 220}
!186 = !{!"function_entry_count", i64 31147}
!187 = !{!"function_entry_count", i64 31159}
!188 = !{!"function_entry_count", i64 34}
!189 = !{!"branch_weights", i32 6, i32 28}
!190 = !{!"branch_weights", i32 28, i32 0}
!191 = !{!"function_entry_count", i64 41}
!192 = !{!"branch_weights", i32 11, i32 30}
!193 = !{!"branch_weights", i32 30, i32 0}
!194 = distinct !{!194, !80, !81}
!195 = distinct !{!195, !80, !81}
!196 = distinct !{!196, !80, !81}
!197 = distinct !{!197, !80, !81}
!198 = distinct !{!198, !80, !81}
!199 = !{!"function_entry_count", i64 1}
!200 = distinct !{!200, !80, !81}
!201 = !{!84, !85, i64 48}
!202 = !{!117, !85, i64 396}
!203 = !{i32 0, i32 2}
!204 = !{i64 0, i64 4, !89, i64 4, i64 4, !89, i64 8, i64 4, !89, i64 12, i64 4, !89, i64 16, i64 8, !155, i64 24, i64 8, !155}
!205 = !{!84, !85, i64 8}
!206 = distinct !{!206, !80, !81}
!207 = !{!"function_entry_count", i64 1792}
!208 = !{!"function_entry_count", i64 2}
