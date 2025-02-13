; ModuleID = 'blender/source/blender/blenkernel/intern/mball.c'
source_filename = "blender/source/blender/blenkernel/intern/mball.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.MetaBall = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, i16, i16, [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.MetaElem = type { ptr, ptr, ptr, i16, i16, i16, i16, float, float, float, [4 x float], float, float, float, float, float, float, float, ptr, ptr }
%struct.DispList = type { ptr, ptr, i16, i16, i32, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr }
%struct.SceneBaseIter = type { ptr, ptr, [4 x [4 x float]], ptr, i32 }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.intlists = type { ptr, ptr }
%struct.intlist = type { i32, ptr }
%struct.process = type { float, i32, ptr, ptr, ptr, float, float, i32, ptr, %struct.vertices, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.ListBase }
%struct.vertices = type { i32, i32, ptr }
%struct.octal_node = type { [8 x ptr], ptr, %struct.ListBase, float, float, float, float, float, float, float, float, float, i32, i32, i32 }
%struct.vertex = type { [3 x float], [3 x float] }
%struct.octal_tree = type { ptr, i32, i32, i16 }
%struct.ml_pointer = type { ptr, ptr, ptr }
%struct.pgn_elements = type { ptr, ptr, ptr }
%struct.cube = type { i32, i32, i32, [8 x ptr] }
%struct.cubes = type { %struct.cube, ptr }
%struct.corner = type { i32, i32, i32, [3 x float], float, ptr }
%struct.centerlist = type { i32, i32, i32, ptr }
%struct.edgelist = type { i32, i32, i32, i32, i32, i32, i32, ptr }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@G = external local_unnamed_addr global %struct.Global, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [9 x i8] c"metaelem\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"mb boundbox\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"MballOrco\00", align 1
@cubetable = internal unnamed_addr global [256 x ptr] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [6 x i8] c"mainb\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"mbaldisp\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"mballverts\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"mballnors\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"metaball_octal_tree\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"metaball_octal_node\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"ml_pointer\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"octal_node\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"newpgn\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"mbproc->centers\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"mbproc->corners\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"mbproc->edges\00", align 1
@makecubetable.is_done = internal unnamed_addr global i1 false, align 1
@corner1 = internal unnamed_addr constant [12 x i32] [i32 0, i32 2, i32 0, i32 1, i32 4, i32 6, i32 4, i32 5, i32 0, i32 1, i32 2, i32 3], align 16
@corner2 = internal unnamed_addr constant [12 x i32] [i32 1, i32 3, i32 2, i32 3, i32 5, i32 7, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7], align 16
@.str.16 = private unnamed_addr constant [14 x i8] c"mball_intlist\00", align 1
@rightface = internal unnamed_addr constant [12 x i32] [i32 0, i32 3, i32 4, i32 0, i32 2, i32 1, i32 1, i32 5, i32 2, i32 5, i32 4, i32 3], align 16
@leftface = internal unnamed_addr constant [12 x i32] [i32 2, i32 0, i32 0, i32 5, i32 1, i32 3, i32 4, i32 1, i32 4, i32 2, i32 3, i32 5], align 16
@__const.find_first_points.index = private unnamed_addr constant [3 x i32] [i32 1, i32 0, i32 -1], align 4
@.str.17 = private unnamed_addr constant [14 x i8] c"addtovertices\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"vertindex\00", align 1
@str = private unnamed_addr constant [33 x i8] c"incorrect use of new_pgn_element\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_mball_unlink(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 9
  %3 = load i16, ptr %2, align 2, !tbaa !34
  %4 = icmp sgt i16 %3, 0
  br i1 %4, label %5, label %21

5:                                                ; preds = %1
  %6 = zext nneg i16 %3 to i64
  %7 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 6
  br label %8

8:                                                ; preds = %5, %18
  %9 = phi i64 [ 0, %5 ], [ %19, %18 ]
  %10 = load ptr, ptr %7, align 8, !tbaa !44
  %11 = getelementptr inbounds ptr, ptr %10, i64 %9
  %12 = load ptr, ptr %11, align 8, !tbaa !45
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ID, ptr %12, i64 0, i32 6
  %16 = load i32, ptr %15, align 4, !tbaa !46
  %17 = add nsw i32 %16, -1
  store i32 %17, ptr %15, align 4, !tbaa !46
  br label %18

18:                                               ; preds = %14, %8
  store ptr null, ptr %11, align 8, !tbaa !45
  %19 = add nuw nsw i64 %9, 1
  %20 = icmp eq i64 %19, %6
  br i1 %20, label %21, label %8, !llvm.loop !50

21:                                               ; preds = %18, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mball_free(ptr noundef %0) local_unnamed_addr #2 {
  tail call void @BKE_mball_unlink(ptr noundef %0) #19
  %2 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @BKE_free_animdata(ptr noundef nonnull %0) #20
  store ptr null, ptr %2, align 8, !tbaa !52
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %11(ptr noundef nonnull %8) #20
  br label %12

12:                                               ; preds = %10, %6
  %13 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 2
  tail call void @BLI_freelistN(ptr noundef nonnull %13) #20
  %14 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !53
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  tail call void @BKE_displist_free(ptr noundef nonnull %14) #20
  br label %18

18:                                               ; preds = %17, %12
  ret void
}

; Function Attrs: optsize
declare void @BKE_free_animdata(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_displist_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_mball_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = tail call ptr @BKE_libblock_alloc(ptr noundef %0, i16 noundef signext 16973, ptr noundef %1) #20
  %4 = getelementptr inbounds %struct.MetaBall, ptr %3, i64 0, i32 13
  %5 = getelementptr inbounds %struct.MetaBall, ptr %3, i64 0, i32 13, i64 2
  store float 1.000000e+00, ptr %5, align 4, !tbaa !54
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %4, align 4, !tbaa !54
  %6 = getelementptr inbounds %struct.MetaBall, ptr %3, i64 0, i32 10
  store i16 1, ptr %6, align 4, !tbaa !55
  %7 = getelementptr inbounds %struct.MetaBall, ptr %3, i64 0, i32 15
  store <2 x float> <float 0x3FD99999A0000000, float 0x3FC99999A0000000>, ptr %7, align 4, !tbaa !54
  %8 = getelementptr inbounds %struct.MetaBall, ptr %3, i64 0, i32 17
  store float 0x3FE3333340000000, ptr %8, align 4, !tbaa !56
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_mball_copy(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call ptr @BKE_libblock_copy(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.MetaBall, ptr %2, i64 0, i32 2
  %4 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 2
  tail call void @BLI_duplicatelist(ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  %5 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  %8 = tail call ptr %5(ptr noundef %7) #20
  %9 = getelementptr inbounds %struct.MetaBall, ptr %2, i64 0, i32 6
  store ptr %8, ptr %9, align 8, !tbaa !44
  %10 = getelementptr inbounds %struct.MetaBall, ptr %2, i64 0, i32 9
  %11 = load i16, ptr %10, align 2, !tbaa !34
  %12 = icmp sgt i16 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %1, %13
  %14 = phi i64 [ %18, %13 ], [ 0, %1 ]
  %15 = load ptr, ptr %9, align 8, !tbaa !44
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !45
  tail call void @id_us_plus(ptr noundef %17) #20
  %18 = add nuw nsw i64 %14, 1
  %19 = load i16, ptr %10, align 2, !tbaa !34
  %20 = sext i16 %19 to i64
  %21 = icmp slt i64 %18, %20
  br i1 %21, label %13, label %22, !llvm.loop !57

22:                                               ; preds = %13, %1
  %23 = getelementptr inbounds %struct.MetaBall, ptr %2, i64 0, i32 4
  store ptr null, ptr %23, align 8, !tbaa !58
  %24 = getelementptr inbounds %struct.MetaBall, ptr %2, i64 0, i32 18
  store ptr null, ptr %24, align 8, !tbaa !59
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @BKE_libblock_copy(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_duplicatelist(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @id_us_plus(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mball_make_local(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr @G, align 8, !tbaa !60
  %3 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !62
  %5 = icmp eq ptr %4, null
  br i1 %5, label %72, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !63
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @id_clear_lib_data(ptr noundef %2, ptr noundef nonnull %0) #20
  tail call fastcc void @extern_local_mball(ptr noundef nonnull %0) #19
  br label %72

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %13 = load ptr, ptr %12, align 8, !tbaa !45
  %14 = icmp eq ptr %13, null
  br i1 %14, label %72, label %15

15:                                               ; preds = %11, %32
  %16 = phi ptr [ %35, %32 ], [ %13, %11 ]
  %17 = phi i8 [ %34, %32 ], [ 0, %11 ]
  %18 = phi i8 [ %33, %32 ], [ 0, %11 ]
  %19 = icmp eq i8 %17, 0
  %20 = icmp eq i8 %18, 0
  %21 = select i1 %19, i1 true, i1 %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 19
  %24 = load ptr, ptr %23, align 8, !tbaa !64
  %25 = icmp eq ptr %24, %0
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ID, ptr %16, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !68
  %29 = icmp eq ptr %28, null
  %30 = select i1 %29, i8 1, i8 %18
  %31 = select i1 %29, i8 %17, i8 1
  br label %32

32:                                               ; preds = %26, %22
  %33 = phi i8 [ %18, %22 ], [ %30, %26 ]
  %34 = phi i8 [ %17, %22 ], [ %31, %26 ]
  %35 = load ptr, ptr %16, align 8, !tbaa !45
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %15, !llvm.loop !69

37:                                               ; preds = %32
  %38 = icmp ne i8 %33, 0
  %39 = icmp eq i8 %34, 0
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  tail call void @id_clear_lib_data(ptr noundef %2, ptr noundef %0) #20
  tail call fastcc void @extern_local_mball(ptr noundef %0) #19
  br label %72

42:                                               ; preds = %15, %37
  %43 = phi i8 [ %34, %37 ], [ %17, %15 ]
  %44 = phi i1 [ %38, %37 ], [ true, %15 ]
  %45 = icmp ne i8 %43, 0
  %46 = select i1 %44, i1 %45, i1 false
  br i1 %46, label %47, label %72

47:                                               ; preds = %42
  %48 = tail call ptr @BKE_mball_copy(ptr noundef %0) #19
  %49 = getelementptr inbounds %struct.ID, ptr %48, i64 0, i32 6
  store i32 0, ptr %49, align 4, !tbaa !63
  %50 = load ptr, ptr %3, align 8, !tbaa !62
  tail call void @BKE_id_lib_local_paths(ptr noundef %2, ptr noundef %50, ptr noundef %48) #20
  %51 = load ptr, ptr @G, align 8, !tbaa !60
  %52 = getelementptr inbounds %struct.Main, ptr %51, i64 0, i32 13
  %53 = load ptr, ptr %52, align 8, !tbaa !45
  %54 = icmp eq ptr %53, null
  br i1 %54, label %72, label %55

55:                                               ; preds = %47, %69
  %56 = phi ptr [ %70, %69 ], [ %53, %47 ]
  %57 = getelementptr inbounds %struct.Object, ptr %56, i64 0, i32 19
  %58 = load ptr, ptr %57, align 8, !tbaa !64
  %59 = icmp eq ptr %58, %0
  br i1 %59, label %60, label %69

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.ID, ptr %56, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !68
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  store ptr %48, ptr %57, align 8, !tbaa !64
  %65 = load i32, ptr %49, align 4, !tbaa !63
  %66 = add nsw i32 %65, 1
  store i32 %66, ptr %49, align 4, !tbaa !63
  %67 = load i32, ptr %7, align 4, !tbaa !63
  %68 = add nsw i32 %67, -1
  store i32 %68, ptr %7, align 4, !tbaa !63
  br label %69

69:                                               ; preds = %55, %64, %60
  %70 = load ptr, ptr %56, align 8, !tbaa !45
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %55, !llvm.loop !70

72:                                               ; preds = %69, %11, %47, %41, %42, %1, %10
  ret void
}

; Function Attrs: optsize
declare void @id_clear_lib_data(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @extern_local_mball(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !71 {
  %2 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 9
  %7 = load i16, ptr %6, align 2, !tbaa !34
  tail call void @extern_local_matarar(ptr noundef nonnull %3, i16 noundef signext %7) #20
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare void @BKE_id_lib_local_paths(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_mball_element_add(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %4 = tail call ptr %3(i64 noundef 104, ptr noundef nonnull @.str) #20
  %5 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 10
  tail call void @unit_qt(ptr noundef nonnull %5) #20
  %6 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 14
  store float 2.000000e+00, ptr %6, align 8, !tbaa !72
  %7 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 16
  store float 2.000000e+00, ptr %7, align 8, !tbaa !74
  %8 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 4
  store i16 16, ptr %8, align 2, !tbaa !75
  switch i32 %1, label %31 [
    i32 0, label %9
    i32 4, label %13
    i32 5, label %17
    i32 6, label %21
    i32 7, label %25
  ]

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 3
  store i16 0, ptr %10, align 8, !tbaa !76
  %11 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 12
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %11, align 8, !tbaa !54
  %12 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 11
  br label %29

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 3
  store i16 4, ptr %14, align 8, !tbaa !76
  %15 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 12
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %15, align 8, !tbaa !54
  %16 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 11
  br label %29

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 3
  store i16 5, ptr %18, align 8, !tbaa !76
  %19 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 12
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %19, align 8, !tbaa !54
  %20 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 11
  br label %29

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 3
  store i16 6, ptr %22, align 8, !tbaa !76
  %23 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 11
  store <2 x float> <float 0x3FF3333340000000, float 0x3FE99999A0000000>, ptr %23, align 4, !tbaa !54
  %24 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 13
  br label %29

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 3
  store i16 7, ptr %26, align 8, !tbaa !76
  %27 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 12
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %27, align 8, !tbaa !54
  %28 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 11
  br label %29

29:                                               ; preds = %9, %13, %17, %21, %25
  %30 = phi ptr [ %28, %25 ], [ %24, %21 ], [ %20, %17 ], [ %16, %13 ], [ %12, %9 ]
  store float 1.000000e+00, ptr %30, align 4, !tbaa !54
  br label %31

31:                                               ; preds = %29, %2
  %32 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %32, ptr noundef nonnull %4) #20
  ret ptr %4
}

; Function Attrs: optsize
declare void @unit_qt(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mball_texspace_calc(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = alloca [3 x float], align 8
  %3 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #21
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 15
  %5 = load ptr, ptr %4, align 8, !tbaa !77
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %9 = tail call ptr %8(i64 noundef 104, ptr noundef nonnull @.str.1) #20
  store ptr %9, ptr %4, align 8, !tbaa !77
  br label %10

10:                                               ; preds = %7, %1
  %11 = phi ptr [ %9, %7 ], [ %5, %1 ]
  %12 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 2
  store float 0x46293E5940000000, ptr %12, align 8, !tbaa !54
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %2, align 8, !tbaa !54
  %13 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %13, align 8, !tbaa !54
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %3, align 8, !tbaa !54
  %14 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 118
  %15 = load ptr, ptr %14, align 8, !tbaa !78
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  %17 = icmp eq ptr %16, null
  br i1 %17, label %39, label %21

18:                                               ; preds = %31, %21
  %19 = load ptr, ptr %22, align 8, !tbaa !45
  %20 = icmp eq ptr %19, null
  br i1 %20, label %37, label %21, !llvm.loop !79

21:                                               ; preds = %10, %18
  %22 = phi ptr [ %19, %18 ], [ %16, %10 ]
  %23 = phi i8 [ %27, %18 ], [ 0, %10 ]
  %24 = getelementptr inbounds %struct.DispList, ptr %22, i64 0, i32 5
  %25 = load i32, ptr %24, align 8, !tbaa !80
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i8 %23, i8 1
  br i1 %26, label %18, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.DispList, ptr %22, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !82
  br label %31

31:                                               ; preds = %28, %31
  %32 = phi i32 [ %34, %31 ], [ %25, %28 ]
  %33 = phi ptr [ %35, %31 ], [ %30, %28 ]
  %34 = add nsw i32 %32, -1
  call void @minmax_v3v3_v3(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %33) #20
  %35 = getelementptr inbounds float, ptr %33, i64 3
  %36 = icmp eq i32 %34, 0
  br i1 %36, label %18, label %31, !llvm.loop !83

37:                                               ; preds = %18
  %38 = icmp eq i8 %27, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %10, %37
  store float -1.000000e+00, ptr %12, align 8, !tbaa !54
  store <2 x float> <float -1.000000e+00, float -1.000000e+00>, ptr %2, align 8, !tbaa !54
  store float 1.000000e+00, ptr %13, align 8, !tbaa !54
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %3, align 8, !tbaa !54
  br label %40

40:                                               ; preds = %39, %37
  call void @BKE_boundbox_init_from_minmax(ptr noundef %11, ptr noundef nonnull %2, ptr noundef nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #21
  ret void
}

; Function Attrs: optsize
declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_boundbox_init_from_minmax(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_mball_make_orco(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 15
  %4 = load ptr, ptr %3, align 8, !tbaa !77
  %5 = load float, ptr %4, align 4, !tbaa !54
  %6 = getelementptr inbounds [8 x [3 x float]], ptr %4, i64 0, i64 4
  %7 = load float, ptr %6, align 4, !tbaa !54
  %8 = fadd float %5, %7
  %9 = fmul float %8, 5.000000e-01
  %10 = fsub float %7, %9
  %11 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !54
  %13 = getelementptr inbounds [8 x [3 x float]], ptr %4, i64 0, i64 2, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !54
  %15 = fadd float %12, %14
  %16 = fmul float %15, 5.000000e-01
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !54
  %20 = getelementptr inbounds [8 x [3 x float]], ptr %4, i64 0, i64 1, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !54
  %22 = fadd float %19, %21
  %23 = fmul float %22, 5.000000e-01
  %24 = fsub float %21, %23
  %25 = load ptr, ptr %1, align 8, !tbaa !84
  %26 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %27 = getelementptr inbounds %struct.DispList, ptr %25, i64 0, i32 5
  %28 = load i32, ptr %27, align 8, !tbaa !80
  %29 = sext i32 %28 to i64
  %30 = mul nsw i64 %29, 12
  %31 = tail call ptr %26(i64 noundef %30, ptr noundef nonnull @.str.2) #20
  %32 = load i32, ptr %27, align 8, !tbaa !80
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %58, label %34

34:                                               ; preds = %2
  %35 = getelementptr inbounds %struct.DispList, ptr %25, i64 0, i32 8
  %36 = load ptr, ptr %35, align 8, !tbaa !82
  br label %37

37:                                               ; preds = %34, %37
  %38 = phi i32 [ %41, %37 ], [ %32, %34 ]
  %39 = phi ptr [ %55, %37 ], [ %36, %34 ]
  %40 = phi ptr [ %56, %37 ], [ %31, %34 ]
  %41 = add nsw i32 %38, -1
  %42 = load float, ptr %39, align 4, !tbaa !54
  %43 = fsub float %42, %9
  %44 = fdiv float %43, %10
  store float %44, ptr %40, align 4, !tbaa !54
  %45 = getelementptr inbounds float, ptr %39, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !54
  %47 = fsub float %46, %16
  %48 = fdiv float %47, %17
  %49 = getelementptr inbounds float, ptr %40, i64 1
  store float %48, ptr %49, align 4, !tbaa !54
  %50 = getelementptr inbounds float, ptr %39, i64 2
  %51 = load float, ptr %50, align 4, !tbaa !54
  %52 = fsub float %51, %23
  %53 = fdiv float %52, %24
  %54 = getelementptr inbounds float, ptr %40, i64 2
  store float %53, ptr %54, align 4, !tbaa !54
  %55 = getelementptr inbounds float, ptr %39, i64 3
  %56 = getelementptr inbounds float, ptr %40, i64 3
  %57 = icmp eq i32 %41, 0
  br i1 %57, label %58, label %37, !llvm.loop !85

58:                                               ; preds = %37, %2
  ret ptr %31
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BKE_mball_is_basis(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #22
  %4 = tail call ptr @__ctype_b_loc() #23
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = shl i64 %3, 32
  %7 = add i64 %6, -4294967296
  %8 = ashr exact i64 %7, 32
  %9 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !86
  %11 = zext i8 %10 to i64
  %12 = getelementptr inbounds i16, ptr %5, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !87
  %14 = and i16 %13, 2048
  %15 = icmp eq i16 %14, 0
  %16 = zext i1 %15 to i8
  ret i8 %16
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @BKE_mball_is_basis_for(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [66 x i8], align 16
  %6 = alloca [66 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %6) #21
  %7 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  %8 = call i32 @BLI_split_name_num(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %7, i8 noundef zeroext 46) #20
  %9 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4, i64 2
  %10 = call i32 @BLI_split_name_num(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %9, i8 noundef zeroext 46) #20
  %11 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %6) #22
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call zeroext i8 @BKE_mball_is_basis(ptr noundef %0) #19, !range !88
  br label %15

15:                                               ; preds = %2, %13
  %16 = phi i8 [ %14, %13 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  ret i8 %16
}

; Function Attrs: optsize
declare i32 @BLI_split_name_num(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mball_properties_copy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [66 x i8], align 16
  %9 = alloca [66 x i8], align 16
  %10 = alloca %struct.SceneBaseIter, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  store ptr %0, ptr %3, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  %11 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %10) #21
  %13 = load ptr, ptr @G, align 8, !tbaa !60
  %14 = getelementptr inbounds %struct.Main, ptr %13, i64 0, i32 46
  %15 = load ptr, ptr %14, align 8, !tbaa !89
  %16 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4, i64 2
  %17 = call i32 @BLI_split_name_num(ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %16, i8 noundef zeroext 46) #20
  %18 = call i32 @BKE_scene_base_iter_next(ptr noundef %15, ptr noundef nonnull %10, ptr noundef nonnull %3, i32 noundef 0, ptr noundef null, ptr noundef null) #20
  %19 = call i32 @BKE_scene_base_iter_next(ptr noundef %15, ptr noundef nonnull %10, ptr noundef nonnull %3, i32 noundef 1, ptr noundef nonnull %4, ptr noundef nonnull %5) #20
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %50, label %21

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.MetaBall, ptr %12, i64 0, i32 15
  %23 = getelementptr inbounds %struct.MetaBall, ptr %12, i64 0, i32 17
  %24 = getelementptr inbounds %struct.MetaBall, ptr %12, i64 0, i32 7
  br label %25

25:                                               ; preds = %21, %47
  %26 = load ptr, ptr %5, align 8, !tbaa !45
  %27 = getelementptr inbounds %struct.Object, ptr %26, i64 0, i32 3
  %28 = load i16, ptr %27, align 8, !tbaa !91
  %29 = icmp ne i16 %28, 5
  %30 = icmp eq ptr %26, %1
  %31 = or i1 %30, %29
  br i1 %31, label %47, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.ID, ptr %26, i64 0, i32 4, i64 2
  %34 = call i32 @BLI_split_name_num(ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef nonnull %33, i8 noundef zeroext 46) #20
  %35 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %8) #22
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load ptr, ptr %5, align 8, !tbaa !45
  %39 = getelementptr inbounds %struct.Object, ptr %38, i64 0, i32 19
  %40 = load ptr, ptr %39, align 8, !tbaa !64
  %41 = getelementptr inbounds %struct.MetaBall, ptr %40, i64 0, i32 15
  %42 = load <2 x float>, ptr %22, align 4, !tbaa !54
  store <2 x float> %42, ptr %41, align 4, !tbaa !54
  %43 = load float, ptr %23, align 4, !tbaa !56
  %44 = getelementptr inbounds %struct.MetaBall, ptr %40, i64 0, i32 17
  store float %43, ptr %44, align 4, !tbaa !56
  %45 = load i8, ptr %24, align 8, !tbaa !92
  %46 = getelementptr inbounds %struct.MetaBall, ptr %40, i64 0, i32 7
  store i8 %45, ptr %46, align 8, !tbaa !92
  br label %47

47:                                               ; preds = %37, %32, %25
  %48 = call i32 @BKE_scene_base_iter_next(ptr noundef %15, ptr noundef nonnull %10, ptr noundef nonnull %3, i32 noundef 1, ptr noundef nonnull %4, ptr noundef nonnull %5) #20
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %25, !llvm.loop !93

50:                                               ; preds = %47, %2
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret void
}

; Function Attrs: optsize
declare i32 @BKE_scene_base_iter_next(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_mball_basis_find(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [66 x i8], align 16
  %9 = alloca [66 x i8], align 16
  %10 = alloca %struct.SceneBaseIter, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  store ptr %0, ptr %3, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %10) #21
  %11 = load ptr, ptr @G, align 8, !tbaa !60
  %12 = getelementptr inbounds %struct.Main, ptr %11, i64 0, i32 46
  %13 = load ptr, ptr %12, align 8, !tbaa !89
  %14 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4, i64 2
  %15 = call i32 @BLI_split_name_num(ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %14, i8 noundef zeroext 46) #20
  %16 = call i32 @BKE_scene_base_iter_next(ptr noundef %13, ptr noundef nonnull %10, ptr noundef nonnull %3, i32 noundef 0, ptr noundef null, ptr noundef null) #20
  %17 = call i32 @BKE_scene_base_iter_next(ptr noundef %13, ptr noundef nonnull %10, ptr noundef nonnull %3, i32 noundef 1, ptr noundef nonnull %4, ptr noundef nonnull %5) #20
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %48, label %19

19:                                               ; preds = %2, %44
  %20 = phi ptr [ %45, %44 ], [ %1, %2 ]
  %21 = load ptr, ptr %5, align 8, !tbaa !45
  %22 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 3
  %23 = load i16, ptr %22, align 8, !tbaa !91
  %24 = icmp eq i16 %23, 5
  br i1 %24, label %25, label %44

25:                                               ; preds = %19
  %26 = load ptr, ptr %4, align 8, !tbaa !45
  %27 = getelementptr inbounds %struct.Base, ptr %26, i64 0, i32 4
  %28 = load i32, ptr %27, align 8, !tbaa !94
  %29 = and i32 %28, 512
  %30 = icmp ne i32 %29, 0
  %31 = icmp eq ptr %21, %1
  %32 = or i1 %31, %30
  br i1 %32, label %44, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.ID, ptr %21, i64 0, i32 4, i64 2
  %35 = call i32 @BLI_split_name_num(ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef nonnull %34, i8 noundef zeroext 46) #20
  %36 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %8) #22
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load i32, ptr %7, align 4, !tbaa !96
  %40 = load i32, ptr %6, align 4, !tbaa !96
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load ptr, ptr %5, align 8, !tbaa !45
  store i32 %39, ptr %6, align 4, !tbaa !96
  br label %44

44:                                               ; preds = %38, %42, %33, %25, %19
  %45 = phi ptr [ %20, %25 ], [ %43, %42 ], [ %20, %38 ], [ %20, %33 ], [ %20, %19 ]
  %46 = call i32 @BKE_scene_base_iter_next(ptr noundef %13, ptr noundef nonnull %10, ptr noundef nonnull %3, i32 noundef 1, ptr noundef nonnull %4, ptr noundef nonnull %5) #20
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %19, !llvm.loop !97

48:                                               ; preds = %44, %2
  %49 = phi ptr [ %1, %2 ], [ %45, %44 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret ptr %49
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mball_cubeTable_free() local_unnamed_addr #2 {
  br label %1

1:                                                ; preds = %0, %21
  %2 = phi i64 [ 0, %0 ], [ %22, %21 ]
  %3 = getelementptr inbounds [256 x ptr], ptr @cubetable, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %1, %18
  %7 = phi ptr [ %9, %18 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.intlists, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !98
  %10 = load ptr, ptr %7, align 8, !tbaa !100
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %6, %12
  %13 = phi ptr [ %15, %12 ], [ %10, %6 ]
  %14 = getelementptr inbounds %struct.intlist, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !101
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %16(ptr noundef nonnull %13) #20
  %17 = icmp eq ptr %15, null
  br i1 %17, label %18, label %12, !llvm.loop !103

18:                                               ; preds = %12, %6
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %19(ptr noundef nonnull %7) #20
  %20 = icmp eq ptr %9, null
  br i1 %20, label %21, label %6, !llvm.loop !104

21:                                               ; preds = %18, %1
  store ptr null, ptr %3, align 8, !tbaa !45
  %22 = add nuw nsw i64 %2, 1
  %23 = icmp eq i64 %22, 256
  br i1 %23, label %24, label %1, !llvm.loop !105

24:                                               ; preds = %21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mball_polygonize(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
  %5 = alloca %struct.process, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %5) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %5, i8 0, i64 144, i1 false)
  %6 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !64
  call fastcc void @mball_count(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2) #19
  %8 = getelementptr inbounds %struct.process, ptr %5, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !106
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %184, label %11

11:                                               ; preds = %4
  %12 = load i32, ptr %0, align 4, !tbaa !109
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.MetaBall, ptr %7, i64 0, i32 7
  %16 = load i8, ptr %15, align 8, !tbaa !92
  %17 = icmp eq i8 %16, 3
  br i1 %17, label %184, label %18

18:                                               ; preds = %14, %11
  %19 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 10), align 4, !tbaa !111
  %20 = and i16 %19, 3
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.MetaBall, ptr %7, i64 0, i32 7
  %24 = load i8, ptr %23, align 8, !tbaa !92
  %25 = icmp eq i8 %24, 2
  br i1 %25, label %184, label %26

26:                                               ; preds = %22, %18
  %27 = getelementptr inbounds %struct.MetaBall, ptr %7, i64 0, i32 17
  %28 = load float, ptr %27, align 4, !tbaa !56
  store float %28, ptr %5, align 8, !tbaa !112
  %29 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %30 = sext i32 %9 to i64
  %31 = shl nsw i64 %30, 3
  %32 = tail call ptr %29(i64 noundef %31, ptr noundef nonnull @.str.3) #20
  %33 = getelementptr inbounds %struct.process, ptr %5, i64 0, i32 2
  store ptr %32, ptr %33, align 8, !tbaa !113
  %34 = call fastcc float @init_meta(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull %2) #19
  %35 = load i32, ptr %8, align 4
  %36 = add i32 %35, -2
  %37 = icmp ult i32 %36, 63
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  call fastcc void @init_metaball_octal_tree(ptr noundef nonnull %5, i32 noundef 1) #19
  %39 = load i32, ptr %8, align 4
  br label %40

40:                                               ; preds = %38, %26
  %41 = phi i32 [ %39, %38 ], [ %35, %26 ]
  %42 = add i32 %41, -65
  %43 = icmp ult i32 %42, 64
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  call fastcc void @init_metaball_octal_tree(ptr noundef nonnull %5, i32 noundef 2) #19
  %45 = load i32, ptr %8, align 4
  br label %46

46:                                               ; preds = %44, %40
  %47 = phi i32 [ %45, %44 ], [ %41, %40 ]
  %48 = add i32 %47, -129
  %49 = icmp ult i32 %48, 384
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  call fastcc void @init_metaball_octal_tree(ptr noundef nonnull %5, i32 noundef 3) #19
  %51 = load i32, ptr %8, align 4
  br label %52

52:                                               ; preds = %50, %46
  %53 = phi i32 [ %51, %50 ], [ %47, %46 ]
  %54 = add i32 %53, -513
  %55 = icmp ult i32 %54, 512
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  call fastcc void @init_metaball_octal_tree(ptr noundef nonnull %5, i32 noundef 4) #19
  %57 = load i32, ptr %8, align 4, !tbaa !106
  br label %58

58:                                               ; preds = %56, %52
  %59 = phi i32 [ %57, %56 ], [ %53, %52 ]
  %60 = icmp sgt i32 %59, 1024
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  call fastcc void @init_metaball_octal_tree(ptr noundef nonnull %5, i32 noundef 5) #19
  br label %62

62:                                               ; preds = %61, %58
  %63 = getelementptr inbounds %struct.process, ptr %5, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !114
  %65 = icmp eq ptr %64, null
  br i1 %65, label %105, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 36
  %68 = load float, ptr %67, align 4, !tbaa !54
  %69 = load ptr, ptr %64, align 8, !tbaa !115
  %70 = getelementptr inbounds %struct.octal_node, ptr %69, i64 0, i32 6
  %71 = load float, ptr %70, align 4, !tbaa !117
  %72 = getelementptr inbounds %struct.octal_node, ptr %69, i64 0, i32 3
  %73 = load float, ptr %72, align 8, !tbaa !119
  %74 = fsub float %71, %73
  %75 = fmul float %74, 0x3EE4F8B580000000
  %76 = fcmp ugt float %68, %75
  br i1 %76, label %77, label %97

77:                                               ; preds = %66
  %78 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 36, i64 1
  %79 = load float, ptr %78, align 4, !tbaa !54
  %80 = getelementptr inbounds %struct.octal_node, ptr %69, i64 0, i32 7
  %81 = load float, ptr %80, align 8, !tbaa !120
  %82 = getelementptr inbounds %struct.octal_node, ptr %69, i64 0, i32 4
  %83 = load float, ptr %82, align 4, !tbaa !121
  %84 = fsub float %81, %83
  %85 = fmul float %84, 0x3EE4F8B580000000
  %86 = fcmp ugt float %79, %85
  br i1 %86, label %87, label %97

87:                                               ; preds = %77
  %88 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 36, i64 2
  %89 = load float, ptr %88, align 4, !tbaa !54
  %90 = getelementptr inbounds %struct.octal_node, ptr %69, i64 0, i32 8
  %91 = load float, ptr %90, align 4, !tbaa !122
  %92 = getelementptr inbounds %struct.octal_node, ptr %69, i64 0, i32 5
  %93 = load float, ptr %92, align 8, !tbaa !123
  %94 = fsub float %91, %93
  %95 = fmul float %94, 0x3EE4F8B580000000
  %96 = fcmp ugt float %89, %95
  br i1 %96, label %105, label %97

97:                                               ; preds = %87, %77, %66
  %98 = call fastcc ptr @new_pgn_element(ptr noundef nonnull %5, i32 noundef -1) #19
  %99 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %100 = load ptr, ptr %33, align 8, !tbaa !113
  call void %99(ptr noundef %100) #20
  %101 = load ptr, ptr %63, align 8, !tbaa !114
  %102 = load ptr, ptr %101, align 8, !tbaa !115
  call fastcc void @free_metaball_octal_node(ptr noundef %102) #19
  %103 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %104 = load ptr, ptr %63, align 8, !tbaa !114
  call void %103(ptr noundef %104) #20
  br label %184

105:                                              ; preds = %87, %62
  %106 = load i32, ptr %0, align 4, !tbaa !109
  %107 = icmp eq i32 %106, 2
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.MetaBall, ptr %7, i64 0, i32 16
  %110 = load float, ptr %109, align 8, !tbaa !124
  br label %123

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.MetaBall, ptr %7, i64 0, i32 15
  %113 = load float, ptr %112, align 4, !tbaa !125
  %114 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 10), align 4, !tbaa !111
  %115 = and i16 %114, 3
  %116 = icmp eq i16 %115, 0
  br i1 %116, label %123, label %117

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.MetaBall, ptr %7, i64 0, i32 7
  %119 = load i8, ptr %118, align 8, !tbaa !92
  %120 = icmp eq i8 %119, 1
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = fmul float %113, 2.000000e+00
  br label %123

123:                                              ; preds = %111, %117, %121, %108
  %124 = phi float [ %110, %108 ], [ %122, %121 ], [ %113, %117 ], [ %113, %111 ]
  %125 = fdiv float %34, %124
  %126 = fadd float %125, 5.000000e-01
  %127 = fptosi float %126 to i32
  %128 = getelementptr inbounds %struct.process, ptr %5, i64 0, i32 4
  store ptr @metaball, ptr %128, align 8, !tbaa !126
  %129 = getelementptr inbounds %struct.process, ptr %5, i64 0, i32 5
  store float %124, ptr %129, align 8, !tbaa !127
  %130 = getelementptr inbounds %struct.process, ptr %5, i64 0, i32 7
  store i32 %127, ptr %130, align 8, !tbaa !128
  %131 = getelementptr inbounds %struct.process, ptr %5, i64 0, i32 8
  store ptr null, ptr %131, align 8, !tbaa !129
  %132 = fdiv float %124, 1.440000e+02
  %133 = getelementptr inbounds %struct.process, ptr %5, i64 0, i32 6
  store float %132, ptr %133, align 4, !tbaa !130
  call fastcc void @polygonize(ptr noundef nonnull %5, ptr noundef nonnull %7) #19
  %134 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %135 = load ptr, ptr %33, align 8, !tbaa !113
  call void %134(ptr noundef %135) #20
  %136 = load i32, ptr %8, align 4, !tbaa !106
  %137 = icmp sgt i32 %136, 1
  br i1 %137, label %138, label %143

138:                                              ; preds = %123
  %139 = load ptr, ptr %63, align 8, !tbaa !114
  %140 = load ptr, ptr %139, align 8, !tbaa !115
  call fastcc void @free_metaball_octal_node(ptr noundef %140) #19
  %141 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %142 = load ptr, ptr %63, align 8, !tbaa !114
  call void %141(ptr noundef %142) #20
  store ptr null, ptr %63, align 8, !tbaa !114
  br label %143

143:                                              ; preds = %138, %123
  %144 = getelementptr inbounds %struct.process, ptr %5, i64 0, i32 15
  %145 = load i32, ptr %144, align 4, !tbaa !131
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %183, label %147

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.process, ptr %5, i64 0, i32 9
  %149 = getelementptr inbounds %struct.process, ptr %5, i64 0, i32 9, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !132
  %151 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %152 = call ptr %151(i64 noundef 72, ptr noundef nonnull @.str.4) #20
  call void @BLI_addtail(ptr noundef %3, ptr noundef %152) #20
  %153 = getelementptr inbounds %struct.DispList, ptr %152, i64 0, i32 2
  store i16 5, ptr %153, align 8, !tbaa !133
  %154 = load i32, ptr %148, align 8, !tbaa !134
  %155 = getelementptr inbounds %struct.DispList, ptr %152, i64 0, i32 5
  store i32 %154, ptr %155, align 8, !tbaa !80
  %156 = load i32, ptr %144, align 4, !tbaa !131
  %157 = getelementptr inbounds %struct.DispList, ptr %152, i64 0, i32 4
  store i32 %156, ptr %157, align 4, !tbaa !135
  %158 = getelementptr inbounds %struct.process, ptr %5, i64 0, i32 13
  %159 = load ptr, ptr %158, align 8, !tbaa !136
  %160 = getelementptr inbounds %struct.DispList, ptr %152, i64 0, i32 10
  store ptr %159, ptr %160, align 8, !tbaa !137
  store ptr null, ptr %158, align 8, !tbaa !136
  %161 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %162 = sext i32 %154 to i64
  %163 = mul nsw i64 %162, 12
  %164 = call ptr %161(i64 noundef %163, ptr noundef nonnull @.str.5) #20
  %165 = getelementptr inbounds %struct.DispList, ptr %152, i64 0, i32 8
  store ptr %164, ptr %165, align 8, !tbaa !82
  %166 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %167 = call ptr %166(i64 noundef %163, ptr noundef nonnull @.str.6) #20
  %168 = getelementptr inbounds %struct.DispList, ptr %152, i64 0, i32 9
  store ptr %167, ptr %168, align 8, !tbaa !138
  %169 = load i32, ptr %148, align 8, !tbaa !134
  %170 = icmp sgt i32 %169, 0
  br i1 %170, label %171, label %183

171:                                              ; preds = %147, %171
  %172 = phi ptr [ %177, %171 ], [ %150, %147 ]
  %173 = phi i32 [ %178, %171 ], [ 0, %147 ]
  %174 = phi ptr [ %179, %171 ], [ %167, %147 ]
  %175 = phi ptr [ %180, %171 ], [ %164, %147 ]
  call fastcc void @copy_v3_v3(ptr noundef %175, ptr noundef %172) #19
  %176 = getelementptr inbounds %struct.vertex, ptr %172, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef %174, ptr noundef nonnull %176) #19
  %177 = getelementptr inbounds %struct.vertex, ptr %172, i64 1
  %178 = add nuw nsw i32 %173, 1
  %179 = getelementptr inbounds float, ptr %174, i64 3
  %180 = getelementptr inbounds float, ptr %175, i64 3
  %181 = load i32, ptr %148, align 8, !tbaa !134
  %182 = icmp slt i32 %178, %181
  br i1 %182, label %171, label %183, !llvm.loop !139

183:                                              ; preds = %171, %147, %143
  call fastcc void @freepolygonize(ptr noundef nonnull %5) #19
  br label %184

184:                                              ; preds = %22, %14, %4, %183, %97
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %5) #21
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mball_count(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 !PGOFuncName !140 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [66 x i8], align 16
  %11 = alloca [66 x i8], align 16
  %12 = alloca %struct.SceneBaseIter, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  store ptr %2, ptr %5, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %12) #21
  %13 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 4, i64 2
  %14 = call i32 @BLI_split_name_num(ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %13, i8 noundef zeroext 46) #20
  %15 = getelementptr inbounds %struct.process, ptr %1, i64 0, i32 1
  store i32 0, ptr %15, align 4, !tbaa !106
  %16 = call i32 @BKE_scene_base_iter_next(ptr noundef %0, ptr noundef nonnull %12, ptr noundef nonnull %5, i32 noundef 0, ptr noundef null, ptr noundef null) #20
  %17 = call i32 @BKE_scene_base_iter_next(ptr noundef %0, ptr noundef nonnull %12, ptr noundef nonnull %5, i32 noundef 1, ptr noundef nonnull %6, ptr noundef nonnull %7) #20
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %59, label %19

19:                                               ; preds = %4, %56
  %20 = load ptr, ptr %7, align 8, !tbaa !45
  %21 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 3
  %22 = load i16, ptr %21, align 8, !tbaa !91
  %23 = icmp eq i16 %22, 5
  br i1 %23, label %24, label %56

24:                                               ; preds = %19
  %25 = icmp eq ptr %20, %3
  br i1 %25, label %33, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.ID, ptr %20, i64 0, i32 4, i64 2
  %28 = call i32 @BLI_split_name_num(ptr noundef nonnull %11, ptr noundef nonnull %9, ptr noundef nonnull %27, i8 noundef zeroext 46) #20
  %29 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) %10) #22
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %26
  %32 = load ptr, ptr %7, align 8, !tbaa !45
  br label %33

33:                                               ; preds = %24, %31
  %34 = phi ptr [ %32, %31 ], [ %3, %24 ]
  %35 = getelementptr inbounds %struct.Object, ptr %34, i64 0, i32 19
  %36 = load ptr, ptr %35, align 8, !tbaa !64
  %37 = getelementptr inbounds %struct.MetaBall, ptr %36, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !58
  %39 = icmp eq ptr %38, null
  %40 = getelementptr inbounds %struct.MetaBall, ptr %36, i64 0, i32 2
  %41 = select i1 %39, ptr %40, ptr %38
  %42 = load ptr, ptr %41, align 8, !tbaa !84
  %43 = icmp eq ptr %42, null
  br i1 %43, label %56, label %44

44:                                               ; preds = %33, %53
  %45 = phi ptr [ %54, %53 ], [ %42, %33 ]
  %46 = getelementptr inbounds %struct.MetaElem, ptr %45, i64 0, i32 4
  %47 = load i16, ptr %46, align 2, !tbaa !75
  %48 = and i16 %47, 8
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, ptr %15, align 4, !tbaa !106
  %52 = add nsw i32 %51, 1
  store i32 %52, ptr %15, align 4, !tbaa !106
  br label %53

53:                                               ; preds = %44, %50
  %54 = load ptr, ptr %45, align 8, !tbaa !141
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %44, !llvm.loop !142

56:                                               ; preds = %53, %26, %33, %19
  %57 = call i32 @BKE_scene_base_iter_next(ptr noundef %0, ptr noundef nonnull %12, ptr noundef nonnull %5, i32 noundef 1, ptr noundef nonnull %6, ptr noundef nonnull %7) #20
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %19, !llvm.loop !143

59:                                               ; preds = %56, %4
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @init_meta(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 !PGOFuncName !144 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [3 x float], align 8
  %11 = alloca i32, align 4
  %12 = alloca [66 x i8], align 16
  %13 = alloca %struct.SceneBaseIter, align 8
  %14 = alloca [66 x i8], align 16
  %15 = alloca i32, align 4
  %16 = alloca [4 x [4 x float]], align 16
  %17 = alloca [4 x [4 x float]], align 16
  %18 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  store ptr %2, ptr %5, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %12) #21
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %13) #21
  %19 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %9, ptr noundef nonnull %19) #20
  %20 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %8, ptr noundef nonnull %19) #20
  %21 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 4, i64 2
  %22 = call i32 @BLI_split_name_num(ptr noundef nonnull %12, ptr noundef nonnull %11, ptr noundef nonnull %21, i8 noundef zeroext 46) #20
  %23 = call i32 @BKE_scene_base_iter_next(ptr noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %5, i32 noundef 0, ptr noundef null, ptr noundef null) #20
  %24 = call i32 @BKE_scene_base_iter_next(ptr noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %5, i32 noundef 1, ptr noundef nonnull %6, ptr noundef nonnull %7) #20
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %4
  %27 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %28 = getelementptr inbounds %struct.process, ptr %1, i64 0, i32 1
  %29 = getelementptr inbounds [4 x [4 x float]], ptr %17, i64 0, i64 3
  %30 = getelementptr inbounds [4 x [4 x float]], ptr %17, i64 0, i64 3, i64 1
  %31 = getelementptr inbounds [4 x [4 x float]], ptr %17, i64 0, i64 3, i64 2
  %32 = getelementptr inbounds %struct.process, ptr %1, i64 0, i32 2
  br label %41

33:                                               ; preds = %293, %4
  %34 = getelementptr inbounds %struct.process, ptr %1, i64 0, i32 1
  %35 = load i32, ptr %34, align 4, !tbaa !106
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %381

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.process, ptr %1, i64 0, i32 2
  %39 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  %40 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  br label %302

41:                                               ; preds = %26, %293
  %42 = phi i32 [ 0, %26 ], [ %294, %293 ]
  %43 = load ptr, ptr %7, align 8, !tbaa !45
  %44 = getelementptr inbounds %struct.Object, ptr %43, i64 0, i32 3
  %45 = load i16, ptr %44, align 8, !tbaa !91
  %46 = icmp eq i16 %45, 5
  br i1 %46, label %47, label %293

47:                                               ; preds = %41
  %48 = icmp eq ptr %43, %3
  br i1 %48, label %49, label %65

49:                                               ; preds = %47
  %50 = load ptr, ptr %6, align 8, !tbaa !45
  %51 = getelementptr inbounds %struct.Base, ptr %50, i64 0, i32 4
  %52 = load i32, ptr %51, align 8, !tbaa !94
  %53 = and i32 %52, 512
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %49
  %56 = load ptr, ptr %27, align 8, !tbaa !64
  %57 = getelementptr inbounds %struct.MetaBall, ptr %56, i64 0, i32 4
  %58 = load ptr, ptr %57, align 8, !tbaa !58
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %55
  %61 = load ptr, ptr %58, align 8, !tbaa !84
  br label %82

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.MetaBall, ptr %56, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !145
  br label %82

65:                                               ; preds = %49, %47
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %14) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #21
  %66 = getelementptr inbounds %struct.ID, ptr %43, i64 0, i32 4, i64 2
  %67 = call i32 @BLI_split_name_num(ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %66, i8 noundef zeroext 46) #20
  %68 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %14) #22
  %69 = icmp eq i32 %68, 0
  %70 = load ptr, ptr %7, align 8, !tbaa !45
  br i1 %69, label %71, label %80

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.Object, ptr %70, i64 0, i32 19
  %73 = load ptr, ptr %72, align 8, !tbaa !64
  %74 = getelementptr inbounds %struct.MetaBall, ptr %73, i64 0, i32 4
  %75 = load ptr, ptr %74, align 8, !tbaa !58
  %76 = icmp eq ptr %75, null
  %77 = getelementptr inbounds %struct.MetaBall, ptr %73, i64 0, i32 2
  %78 = select i1 %76, ptr %77, ptr %75
  %79 = load ptr, ptr %78, align 8, !tbaa !84
  br label %80

80:                                               ; preds = %71, %65
  %81 = phi ptr [ null, %65 ], [ %79, %71 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #21
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %14) #21
  br label %82

82:                                               ; preds = %60, %62, %80
  %83 = phi ptr [ %3, %60 ], [ %3, %62 ], [ %70, %80 ]
  %84 = phi ptr [ %61, %60 ], [ %64, %62 ], [ %81, %80 ]
  %85 = getelementptr inbounds %struct.Object, ptr %83, i64 0, i32 47
  %86 = call zeroext i8 @has_zero_axis_m4(ptr noundef nonnull %85) #20
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %102

88:                                               ; preds = %82
  %89 = load ptr, ptr %7, align 8, !tbaa !45
  %90 = getelementptr inbounds %struct.Object, ptr %89, i64 0, i32 9
  %91 = load ptr, ptr %90, align 8, !tbaa !146
  %92 = icmp eq ptr %91, null
  br i1 %92, label %114, label %93

93:                                               ; preds = %88, %98
  %94 = phi ptr [ %100, %98 ], [ %91, %88 ]
  %95 = getelementptr inbounds %struct.Object, ptr %94, i64 0, i32 47
  %96 = call zeroext i8 @has_zero_axis_m4(ptr noundef nonnull %95) #20
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.Object, ptr %94, i64 0, i32 9
  %100 = load ptr, ptr %99, align 8, !tbaa !146
  %101 = icmp eq ptr %100, null
  br i1 %101, label %114, label %93, !llvm.loop !147

102:                                              ; preds = %93, %82
  %103 = icmp eq ptr %84, null
  br i1 %103, label %110, label %104

104:                                              ; preds = %102, %104
  %105 = phi i32 [ %107, %104 ], [ 0, %102 ]
  %106 = phi ptr [ %108, %104 ], [ %84, %102 ]
  %107 = add i32 %105, 1
  %108 = load ptr, ptr %106, align 8, !tbaa !141
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %104, !llvm.loop !148

110:                                              ; preds = %104, %102
  %111 = phi i32 [ 0, %102 ], [ %107, %104 ]
  %112 = load i32, ptr %28, align 4, !tbaa !106
  %113 = sub i32 %112, %111
  store i32 %113, ptr %28, align 4, !tbaa !106
  br label %293

114:                                              ; preds = %98, %88
  %115 = icmp eq ptr %84, null
  br i1 %115, label %293, label %116

116:                                              ; preds = %114, %289
  %117 = phi i32 [ %290, %289 ], [ %42, %114 ]
  %118 = phi ptr [ %291, %289 ], [ %84, %114 ]
  %119 = getelementptr inbounds %struct.MetaElem, ptr %118, i64 0, i32 4
  %120 = load i16, ptr %119, align 2, !tbaa !75
  %121 = and i16 %120, 8
  %122 = icmp eq i16 %121, 0
  br i1 %122, label %123, label %289

123:                                              ; preds = %116
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %16) #21
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %17) #21
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %18) #21
  %124 = getelementptr inbounds %struct.MetaElem, ptr %118, i64 0, i32 16
  %125 = load float, ptr %124, align 8, !tbaa !74
  %126 = fcmp ogt float %125, 1.000000e+01
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  store float 1.000000e+01, ptr %124, align 8, !tbaa !74
  br label %128

128:                                              ; preds = %127, %123
  %129 = getelementptr inbounds %struct.MetaElem, ptr %118, i64 0, i32 10
  call void @quat_to_mat4(ptr noundef nonnull %18, ptr noundef nonnull %129) #20
  call void @unit_m4(ptr noundef nonnull %17) #20
  %130 = getelementptr inbounds %struct.MetaElem, ptr %118, i64 0, i32 7
  %131 = load float, ptr %130, align 8, !tbaa !149
  store float %131, ptr %29, align 16, !tbaa !54
  %132 = getelementptr inbounds %struct.MetaElem, ptr %118, i64 0, i32 8
  %133 = load float, ptr %132, align 4, !tbaa !150
  store float %133, ptr %30, align 4, !tbaa !54
  %134 = getelementptr inbounds %struct.MetaElem, ptr %118, i64 0, i32 9
  %135 = load float, ptr %134, align 8, !tbaa !151
  store float %135, ptr %31, align 8, !tbaa !54
  call void @mul_m4_m4m4(ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %18) #20
  %136 = call fastcc ptr @new_pgn_element(ptr noundef %1, i32 noundef 104) #19
  %137 = load ptr, ptr %32, align 8, !tbaa !113
  %138 = sext i32 %117 to i64
  %139 = getelementptr inbounds ptr, ptr %137, i64 %138
  store ptr %136, ptr %139, align 8, !tbaa !45
  %140 = load ptr, ptr %32, align 8, !tbaa !113
  %141 = getelementptr inbounds ptr, ptr %140, i64 %138
  %142 = load ptr, ptr %141, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %142, ptr noundef nonnull align 8 dereferenceable(104) %118, i64 104, i1 false), !tbaa.struct !152
  %143 = call fastcc ptr @new_pgn_element(ptr noundef %1, i32 noundef 104) #19
  %144 = load ptr, ptr %32, align 8, !tbaa !113
  %145 = getelementptr inbounds ptr, ptr %144, i64 %138
  %146 = load ptr, ptr %145, align 8, !tbaa !45
  %147 = getelementptr inbounds %struct.MetaElem, ptr %146, i64 0, i32 2
  store ptr %143, ptr %147, align 8, !tbaa !153
  %148 = call fastcc ptr @new_pgn_element(ptr noundef %1, i32 noundef 64) #19
  %149 = call fastcc ptr @new_pgn_element(ptr noundef %1, i32 noundef 64) #19
  %150 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %8, ptr noundef nonnull %9) #20
  %151 = load ptr, ptr %7, align 8, !tbaa !45
  %152 = getelementptr inbounds %struct.Object, ptr %151, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %17, ptr noundef nonnull %8, ptr noundef nonnull %152) #20
  call void @mul_m4_m4m4(ptr noundef %148, ptr noundef nonnull %17, ptr noundef nonnull %16) #20
  %153 = call zeroext i8 @invert_m4_m4(ptr noundef %149, ptr noundef %148) #20
  %154 = getelementptr inbounds %struct.MetaElem, ptr %118, i64 0, i32 14
  %155 = load float, ptr %154, align 8, !tbaa !72
  %156 = fmul float %155, %155
  %157 = load ptr, ptr %32, align 8, !tbaa !113
  %158 = getelementptr inbounds ptr, ptr %157, i64 %138
  %159 = load ptr, ptr %158, align 8, !tbaa !45
  %160 = getelementptr inbounds %struct.MetaElem, ptr %159, i64 0, i32 15
  store float %156, ptr %160, align 4, !tbaa !154
  %161 = getelementptr inbounds %struct.MetaElem, ptr %159, i64 0, i32 18
  store ptr %148, ptr %161, align 8, !tbaa !155
  %162 = load ptr, ptr %158, align 8, !tbaa !45
  %163 = getelementptr inbounds %struct.MetaElem, ptr %162, i64 0, i32 19
  store ptr %149, ptr %163, align 8, !tbaa !156
  %164 = getelementptr inbounds %struct.MetaElem, ptr %118, i64 0, i32 3
  %165 = load i16, ptr %164, align 8, !tbaa !76
  %166 = icmp eq i16 %165, 6
  %167 = getelementptr inbounds %struct.MetaElem, ptr %118, i64 0, i32 11
  %168 = load float, ptr %167, align 4, !tbaa !157
  br i1 %166, label %172, label %169

169:                                              ; preds = %128
  %170 = getelementptr inbounds %struct.MetaElem, ptr %118, i64 0, i32 12
  %171 = load <2 x float>, ptr %170, align 8, !tbaa !54
  br label %177

172:                                              ; preds = %128
  %173 = fmul float %168, %168
  %174 = getelementptr inbounds %struct.MetaElem, ptr %118, i64 0, i32 12
  %175 = load <2 x float>, ptr %174, align 8, !tbaa !54
  %176 = fmul <2 x float> %175, %175
  br label %177

177:                                              ; preds = %172, %169
  %178 = phi float [ %173, %172 ], [ %168, %169 ]
  %179 = phi <2 x float> [ %176, %172 ], [ %171, %169 ]
  %180 = load ptr, ptr %158, align 8, !tbaa !45
  %181 = getelementptr inbounds %struct.MetaElem, ptr %180, i64 0, i32 2
  %182 = load ptr, ptr %181, align 8, !tbaa !153
  %183 = fneg float %178
  %184 = extractelement <2 x float> %179, i64 0
  %185 = fneg float %184
  %186 = extractelement <2 x float> %179, i64 1
  %187 = fneg float %186
  call fastcc void @copy_v3_fl3(ptr noundef %182, float noundef %183, float noundef %185, float noundef %187) #19
  %188 = load ptr, ptr %32, align 8, !tbaa !113
  %189 = getelementptr inbounds ptr, ptr %188, i64 %138
  %190 = load ptr, ptr %189, align 8, !tbaa !45
  %191 = getelementptr inbounds %struct.MetaElem, ptr %190, i64 0, i32 2
  %192 = load ptr, ptr %191, align 8, !tbaa !153
  %193 = getelementptr inbounds [8 x [3 x float]], ptr %192, i64 0, i64 1
  call fastcc void @copy_v3_fl3(ptr noundef nonnull %193, float noundef %178, float noundef %185, float noundef %187) #19
  %194 = load ptr, ptr %32, align 8, !tbaa !113
  %195 = getelementptr inbounds ptr, ptr %194, i64 %138
  %196 = load ptr, ptr %195, align 8, !tbaa !45
  %197 = getelementptr inbounds %struct.MetaElem, ptr %196, i64 0, i32 2
  %198 = load ptr, ptr %197, align 8, !tbaa !153
  %199 = getelementptr inbounds [8 x [3 x float]], ptr %198, i64 0, i64 2
  call fastcc void @copy_v3_fl3(ptr noundef nonnull %199, float noundef %178, float noundef %184, float noundef %187) #19
  %200 = load ptr, ptr %32, align 8, !tbaa !113
  %201 = getelementptr inbounds ptr, ptr %200, i64 %138
  %202 = load ptr, ptr %201, align 8, !tbaa !45
  %203 = getelementptr inbounds %struct.MetaElem, ptr %202, i64 0, i32 2
  %204 = load ptr, ptr %203, align 8, !tbaa !153
  %205 = getelementptr inbounds [8 x [3 x float]], ptr %204, i64 0, i64 3
  call fastcc void @copy_v3_fl3(ptr noundef nonnull %205, float noundef %183, float noundef %184, float noundef %187) #19
  %206 = load ptr, ptr %32, align 8, !tbaa !113
  %207 = getelementptr inbounds ptr, ptr %206, i64 %138
  %208 = load ptr, ptr %207, align 8, !tbaa !45
  %209 = getelementptr inbounds %struct.MetaElem, ptr %208, i64 0, i32 2
  %210 = load ptr, ptr %209, align 8, !tbaa !153
  %211 = getelementptr inbounds [8 x [3 x float]], ptr %210, i64 0, i64 4
  call fastcc void @copy_v3_fl3(ptr noundef nonnull %211, float noundef %183, float noundef %185, float noundef %186) #19
  %212 = load ptr, ptr %32, align 8, !tbaa !113
  %213 = getelementptr inbounds ptr, ptr %212, i64 %138
  %214 = load ptr, ptr %213, align 8, !tbaa !45
  %215 = getelementptr inbounds %struct.MetaElem, ptr %214, i64 0, i32 2
  %216 = load ptr, ptr %215, align 8, !tbaa !153
  %217 = getelementptr inbounds [8 x [3 x float]], ptr %216, i64 0, i64 5
  call fastcc void @copy_v3_fl3(ptr noundef nonnull %217, float noundef %178, float noundef %185, float noundef %186) #19
  %218 = load ptr, ptr %32, align 8, !tbaa !113
  %219 = getelementptr inbounds ptr, ptr %218, i64 %138
  %220 = load ptr, ptr %219, align 8, !tbaa !45
  %221 = getelementptr inbounds %struct.MetaElem, ptr %220, i64 0, i32 2
  %222 = load ptr, ptr %221, align 8, !tbaa !153
  %223 = getelementptr inbounds [8 x [3 x float]], ptr %222, i64 0, i64 6
  call fastcc void @copy_v3_fl3(ptr noundef nonnull %223, float noundef %178, float noundef %184, float noundef %186) #19
  %224 = load ptr, ptr %32, align 8, !tbaa !113
  %225 = getelementptr inbounds ptr, ptr %224, i64 %138
  %226 = load ptr, ptr %225, align 8, !tbaa !45
  %227 = getelementptr inbounds %struct.MetaElem, ptr %226, i64 0, i32 2
  %228 = load ptr, ptr %227, align 8, !tbaa !153
  %229 = getelementptr inbounds [8 x [3 x float]], ptr %228, i64 0, i64 7
  call fastcc void @copy_v3_fl3(ptr noundef nonnull %229, float noundef %183, float noundef %184, float noundef %186) #19
  br label %236

230:                                              ; preds = %236
  %231 = load ptr, ptr %32, align 8, !tbaa !113
  %232 = getelementptr inbounds ptr, ptr %231, i64 %138
  %233 = load ptr, ptr %232, align 8, !tbaa !45
  %234 = getelementptr inbounds %struct.MetaElem, ptr %233, i64 0, i32 2
  %235 = load ptr, ptr %234, align 8, !tbaa !153
  br label %246

236:                                              ; preds = %177, %236
  %237 = phi i64 [ 0, %177 ], [ %244, %236 ]
  %238 = load ptr, ptr %32, align 8, !tbaa !113
  %239 = getelementptr inbounds ptr, ptr %238, i64 %138
  %240 = load ptr, ptr %239, align 8, !tbaa !45
  %241 = getelementptr inbounds %struct.MetaElem, ptr %240, i64 0, i32 2
  %242 = load ptr, ptr %241, align 8, !tbaa !153
  %243 = getelementptr inbounds [8 x [3 x float]], ptr %242, i64 0, i64 %237
  call void @mul_m4_v3(ptr noundef %148, ptr noundef %243) #20
  %244 = add nuw nsw i64 %237, 1
  %245 = icmp eq i64 %244, 8
  br i1 %245, label %230, label %236, !llvm.loop !158

246:                                              ; preds = %230, %246
  %247 = phi i64 [ 0, %230 ], [ %264, %246 ]
  %248 = phi float [ 0x47EFF933C0000000, %230 ], [ %263, %246 ]
  %249 = phi float [ 0xC7EFF933C0000000, %230 ], [ %259, %246 ]
  %250 = phi <2 x float> [ <float 0xC7EFF933C0000000, float 0xC7EFF933C0000000>, %230 ], [ %255, %246 ]
  %251 = phi <2 x float> [ <float 0x47EFF933C0000000, float 0x47EFF933C0000000>, %230 ], [ %261, %246 ]
  %252 = getelementptr inbounds [8 x [3 x float]], ptr %235, i64 0, i64 %247
  %253 = load <2 x float>, ptr %252, align 4, !tbaa !54
  %254 = fcmp ogt <2 x float> %253, %250
  %255 = select <2 x i1> %254, <2 x float> %253, <2 x float> %250
  %256 = getelementptr inbounds [8 x [3 x float]], ptr %235, i64 0, i64 %247, i64 2
  %257 = load float, ptr %256, align 4, !tbaa !54
  %258 = fcmp ogt float %257, %249
  %259 = select i1 %258, float %257, float %249
  %260 = fcmp olt <2 x float> %253, %251
  %261 = select <2 x i1> %260, <2 x float> %253, <2 x float> %251
  %262 = fcmp olt float %257, %248
  %263 = select i1 %262, float %257, float %248
  %264 = add nuw nsw i64 %247, 1
  %265 = icmp eq i64 %264, 8
  br i1 %265, label %266, label %246, !llvm.loop !159

266:                                              ; preds = %246
  %267 = load float, ptr %154, align 8, !tbaa !72
  %268 = extractelement <2 x float> %261, i64 0
  %269 = fsub float %268, %267
  store float %269, ptr %235, align 4, !tbaa !54
  %270 = load float, ptr %154, align 8, !tbaa !72
  %271 = extractelement <2 x float> %261, i64 1
  %272 = fsub float %271, %270
  %273 = getelementptr inbounds [3 x float], ptr %235, i64 0, i64 1
  store float %272, ptr %273, align 4, !tbaa !54
  %274 = load float, ptr %154, align 8, !tbaa !72
  %275 = fsub float %263, %274
  %276 = getelementptr inbounds [3 x float], ptr %235, i64 0, i64 2
  store float %275, ptr %276, align 4, !tbaa !54
  %277 = load float, ptr %154, align 8, !tbaa !72
  %278 = extractelement <2 x float> %255, i64 0
  %279 = fadd float %278, %277
  %280 = getelementptr inbounds [8 x [3 x float]], ptr %235, i64 0, i64 6
  store float %279, ptr %280, align 4, !tbaa !54
  %281 = load float, ptr %154, align 8, !tbaa !72
  %282 = extractelement <2 x float> %255, i64 1
  %283 = fadd float %282, %281
  %284 = getelementptr inbounds [8 x [3 x float]], ptr %235, i64 0, i64 6, i64 1
  store float %283, ptr %284, align 4, !tbaa !54
  %285 = load float, ptr %154, align 8, !tbaa !72
  %286 = fadd float %259, %285
  %287 = getelementptr inbounds [8 x [3 x float]], ptr %235, i64 0, i64 6, i64 2
  store float %286, ptr %287, align 4, !tbaa !54
  %288 = add nsw i32 %117, 1
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %18) #21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %17) #21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %16) #21
  br label %289

289:                                              ; preds = %266, %116
  %290 = phi i32 [ %117, %116 ], [ %288, %266 ]
  %291 = load ptr, ptr %118, align 8, !tbaa !141
  %292 = icmp eq ptr %291, null
  br i1 %292, label %293, label %116, !llvm.loop !160

293:                                              ; preds = %289, %114, %110, %41
  %294 = phi i32 [ %42, %110 ], [ %42, %41 ], [ %42, %114 ], [ %290, %289 ]
  %295 = call i32 @BKE_scene_base_iter_next(ptr noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %5, i32 noundef 1, ptr noundef nonnull %6, ptr noundef nonnull %7) #20
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %33, label %41, !llvm.loop !161

297:                                              ; preds = %302
  %298 = icmp sgt i32 %366, 0
  br i1 %298, label %299, label %381

299:                                              ; preds = %297
  %300 = getelementptr inbounds %struct.process, ptr %1, i64 0, i32 2
  %301 = fmul float %364, 2.000000e+00
  br label %369

302:                                              ; preds = %37, %302
  %303 = phi i64 [ 0, %37 ], [ %365, %302 ]
  %304 = phi float [ 0.000000e+00, %37 ], [ %364, %302 ]
  %305 = load ptr, ptr %38, align 8, !tbaa !113
  %306 = getelementptr inbounds ptr, ptr %305, i64 %303
  %307 = load ptr, ptr %306, align 8, !tbaa !45
  %308 = getelementptr inbounds %struct.MetaElem, ptr %307, i64 0, i32 7
  %309 = load float, ptr %308, align 8, !tbaa !149
  %310 = getelementptr inbounds %struct.MetaElem, ptr %307, i64 0, i32 14
  %311 = load float, ptr %310, align 8, !tbaa !72
  %312 = getelementptr inbounds %struct.MetaElem, ptr %307, i64 0, i32 11
  %313 = getelementptr inbounds %struct.MetaElem, ptr %307, i64 0, i32 8
  %314 = load float, ptr %313, align 4, !tbaa !150
  %315 = insertelement <2 x float> poison, float %309, i64 0
  %316 = insertelement <2 x float> %315, float %311, i64 1
  %317 = insertelement <2 x float> poison, float %311, i64 0
  %318 = insertelement <2 x float> %317, float %314, i64 1
  %319 = fadd <2 x float> %316, %318
  %320 = load <2 x float>, ptr %312, align 4, !tbaa !54
  %321 = fadd <2 x float> %319, %320
  store <2 x float> %321, ptr %10, align 8, !tbaa !54
  %322 = getelementptr inbounds %struct.MetaElem, ptr %307, i64 0, i32 9
  %323 = load float, ptr %322, align 8, !tbaa !151
  %324 = fadd float %311, %323
  %325 = getelementptr inbounds %struct.MetaElem, ptr %307, i64 0, i32 13
  %326 = load float, ptr %325, align 4, !tbaa !162
  %327 = fadd float %324, %326
  store float %327, ptr %40, align 8, !tbaa !54
  call fastcc void @calc_mballco(ptr noundef %307, ptr noundef nonnull %10) #19
  %328 = load float, ptr %10, align 8, !tbaa !54
  %329 = call float @llvm.fabs.f32(float %328)
  %330 = fcmp ogt float %329, %304
  %331 = select i1 %330, float %329, float %304
  %332 = load float, ptr %39, align 4, !tbaa !54
  %333 = call float @llvm.fabs.f32(float %332)
  %334 = fcmp ogt float %333, %331
  %335 = select i1 %334, float %333, float %331
  %336 = load float, ptr %40, align 8, !tbaa !54
  %337 = call float @llvm.fabs.f32(float %336)
  %338 = fcmp ogt float %337, %335
  %339 = select i1 %338, float %337, float %335
  %340 = load ptr, ptr %38, align 8, !tbaa !113
  %341 = getelementptr inbounds ptr, ptr %340, i64 %303
  %342 = load ptr, ptr %341, align 8, !tbaa !45
  %343 = getelementptr inbounds %struct.MetaElem, ptr %342, i64 0, i32 7
  %344 = getelementptr inbounds %struct.MetaElem, ptr %342, i64 0, i32 14
  %345 = load float, ptr %344, align 8, !tbaa !72
  %346 = load <2 x float>, ptr %343, align 8, !tbaa !54
  %347 = insertelement <2 x float> poison, float %345, i64 0
  %348 = shufflevector <2 x float> %347, <2 x float> poison, <2 x i32> zeroinitializer
  %349 = fsub <2 x float> %346, %348
  store <2 x float> %349, ptr %10, align 8, !tbaa !54
  %350 = getelementptr inbounds %struct.MetaElem, ptr %342, i64 0, i32 9
  %351 = load float, ptr %350, align 8, !tbaa !151
  %352 = fsub float %351, %345
  store float %352, ptr %40, align 8, !tbaa !54
  call fastcc void @calc_mballco(ptr noundef %342, ptr noundef nonnull %10) #19
  %353 = load float, ptr %10, align 8, !tbaa !54
  %354 = call float @llvm.fabs.f32(float %353)
  %355 = fcmp ogt float %354, %339
  %356 = select i1 %355, float %354, float %339
  %357 = load float, ptr %39, align 4, !tbaa !54
  %358 = call float @llvm.fabs.f32(float %357)
  %359 = fcmp ogt float %358, %356
  %360 = select i1 %359, float %358, float %356
  %361 = load float, ptr %40, align 8, !tbaa !54
  %362 = call float @llvm.fabs.f32(float %361)
  %363 = fcmp ogt float %362, %360
  %364 = select i1 %363, float %362, float %360
  %365 = add nuw nsw i64 %303, 1
  %366 = load i32, ptr %34, align 4, !tbaa !106
  %367 = sext i32 %366 to i64
  %368 = icmp slt i64 %365, %367
  br i1 %368, label %302, label %297, !llvm.loop !163

369:                                              ; preds = %299, %369
  %370 = phi i64 [ 0, %299 ], [ %377, %369 ]
  %371 = load ptr, ptr %300, align 8, !tbaa !113
  %372 = getelementptr inbounds ptr, ptr %371, i64 %370
  %373 = load ptr, ptr %372, align 8, !tbaa !45
  %374 = call fastcc float @densfunc(ptr noundef %373, float noundef %301, float noundef %301, float noundef %301) #19
  %375 = load float, ptr %1, align 8, !tbaa !112
  %376 = fadd float %374, %375
  store float %376, ptr %1, align 8, !tbaa !112
  %377 = add nuw nsw i64 %370, 1
  %378 = load i32, ptr %34, align 4, !tbaa !106
  %379 = sext i32 %378 to i64
  %380 = icmp slt i64 %377, %379
  br i1 %380, label %369, label %381, !llvm.loop !164

381:                                              ; preds = %369, %33, %297
  %382 = phi float [ %364, %297 ], [ 0.000000e+00, %33 ], [ %364, %369 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  ret float %382
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_metaball_octal_tree(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #2 !PGOFuncName !165 {
  %3 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %4 = tail call ptr %3(i64 noundef 24, ptr noundef nonnull @.str.7) #20
  %5 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !114
  %6 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %7 = tail call ptr %6(i64 noundef 136, ptr noundef nonnull @.str.8) #20
  %8 = load ptr, ptr %5, align 8, !tbaa !114
  store ptr %7, ptr %8, align 8, !tbaa !115
  %9 = trunc i32 %1 to i16
  %10 = getelementptr inbounds %struct.octal_tree, ptr %8, i64 0, i32 3
  store i16 %9, ptr %10, align 8, !tbaa !166
  %11 = getelementptr inbounds %struct.octal_node, ptr %7, i64 0, i32 13
  store i32 0, ptr %11, align 8, !tbaa !167
  %12 = getelementptr inbounds %struct.octal_tree, ptr %8, i64 0, i32 2
  store i32 0, ptr %12, align 4, !tbaa !168
  %13 = getelementptr inbounds %struct.octal_node, ptr %7, i64 0, i32 12
  store i32 0, ptr %13, align 4, !tbaa !169
  %14 = getelementptr inbounds %struct.octal_tree, ptr %8, i64 0, i32 1
  store i32 0, ptr %14, align 8, !tbaa !170
  %15 = getelementptr inbounds %struct.octal_node, ptr %7, i64 0, i32 2
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %15) #19
  %16 = getelementptr inbounds %struct.octal_node, ptr %7, i64 0, i32 14
  store i32 0, ptr %16, align 4, !tbaa !171
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 0, i64 64, i1 false), !tbaa !45
  %17 = getelementptr inbounds %struct.octal_node, ptr %7, i64 0, i32 5
  %18 = getelementptr inbounds %struct.octal_node, ptr %7, i64 0, i32 4
  %19 = getelementptr inbounds %struct.octal_node, ptr %7, i64 0, i32 3
  %20 = getelementptr inbounds %struct.octal_node, ptr %7, i64 0, i32 8
  %21 = getelementptr inbounds %struct.octal_node, ptr %7, i64 0, i32 7
  store <2 x float> <float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000>, ptr %21, align 8, !tbaa !54
  %22 = getelementptr inbounds %struct.octal_node, ptr %7, i64 0, i32 6
  store <4 x float> <float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000>, ptr %19, align 8, !tbaa !54
  %23 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !106
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %2
  %27 = load ptr, ptr %5, align 8, !tbaa !114
  br label %107

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !113
  br label %31

31:                                               ; preds = %28, %95
  %32 = phi ptr [ %30, %28 ], [ %79, %95 ]
  %33 = phi i64 [ 0, %28 ], [ %96, %95 ]
  %34 = getelementptr inbounds ptr, ptr %32, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !45
  %36 = getelementptr inbounds %struct.MetaElem, ptr %35, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !153
  %38 = load float, ptr %37, align 4, !tbaa !54
  %39 = load float, ptr %19, align 8, !tbaa !119
  %40 = fcmp olt float %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  store float %38, ptr %19, align 8, !tbaa !119
  br label %42

42:                                               ; preds = %41, %31
  %43 = getelementptr inbounds [3 x float], ptr %37, i64 0, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !54
  %45 = load float, ptr %18, align 4, !tbaa !121
  %46 = fcmp olt float %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store float %44, ptr %18, align 4, !tbaa !121
  br label %48

48:                                               ; preds = %47, %42
  %49 = getelementptr inbounds [3 x float], ptr %37, i64 0, i64 2
  %50 = load float, ptr %49, align 4, !tbaa !54
  %51 = load float, ptr %17, align 8, !tbaa !123
  %52 = fcmp olt float %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store float %50, ptr %17, align 8, !tbaa !123
  br label %54

54:                                               ; preds = %53, %48
  %55 = getelementptr inbounds [8 x [3 x float]], ptr %37, i64 0, i64 6
  %56 = load float, ptr %55, align 4, !tbaa !54
  %57 = load float, ptr %22, align 4, !tbaa !117
  %58 = fcmp ogt float %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store float %56, ptr %22, align 4, !tbaa !117
  br label %60

60:                                               ; preds = %59, %54
  %61 = getelementptr inbounds [8 x [3 x float]], ptr %37, i64 0, i64 6, i64 1
  %62 = load float, ptr %61, align 4, !tbaa !54
  %63 = load float, ptr %21, align 8, !tbaa !120
  %64 = fcmp ogt float %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store float %62, ptr %21, align 8, !tbaa !120
  br label %66

66:                                               ; preds = %65, %60
  %67 = getelementptr inbounds [8 x [3 x float]], ptr %37, i64 0, i64 6, i64 2
  %68 = load float, ptr %67, align 4, !tbaa !54
  %69 = load float, ptr %20, align 4, !tbaa !122
  %70 = fcmp ogt float %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store float %68, ptr %20, align 4, !tbaa !122
  br label %72

72:                                               ; preds = %71, %66
  %73 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %74 = tail call ptr %73(i64 noundef 24, ptr noundef nonnull @.str.9) #20
  %75 = load ptr, ptr %29, align 8, !tbaa !113
  %76 = getelementptr inbounds ptr, ptr %75, i64 %33
  %77 = load ptr, ptr %76, align 8, !tbaa !45
  %78 = getelementptr inbounds %struct.ml_pointer, ptr %74, i64 0, i32 2
  store ptr %77, ptr %78, align 8, !tbaa !172
  tail call void @BLI_addtail(ptr noundef nonnull %15, ptr noundef %74) #20
  %79 = load ptr, ptr %29, align 8, !tbaa !113
  %80 = getelementptr inbounds ptr, ptr %79, i64 %33
  %81 = load ptr, ptr %80, align 8, !tbaa !45
  %82 = getelementptr inbounds %struct.MetaElem, ptr %81, i64 0, i32 4
  %83 = load i16, ptr %82, align 2, !tbaa !75
  %84 = and i16 %83, 2
  %85 = icmp eq i16 %84, 0
  %86 = load ptr, ptr %5, align 8, !tbaa !114
  br i1 %85, label %87, label %91

87:                                               ; preds = %72
  %88 = getelementptr inbounds %struct.octal_tree, ptr %86, i64 0, i32 1
  %89 = load i32, ptr %88, align 8, !tbaa !170
  %90 = add nsw i32 %89, 1
  store i32 %90, ptr %88, align 8, !tbaa !170
  br label %95

91:                                               ; preds = %72
  %92 = getelementptr inbounds %struct.octal_tree, ptr %86, i64 0, i32 2
  %93 = load i32, ptr %92, align 4, !tbaa !168
  %94 = add nsw i32 %93, 1
  store i32 %94, ptr %92, align 4, !tbaa !168
  br label %95

95:                                               ; preds = %87, %91
  %96 = add nuw nsw i64 %33, 1
  %97 = load i32, ptr %23, align 4, !tbaa !106
  %98 = sext i32 %97 to i64
  %99 = icmp slt i64 %96, %98
  br i1 %99, label %31, label %100, !llvm.loop !174

100:                                              ; preds = %95
  %101 = load float, ptr %22, align 4, !tbaa !117
  %102 = load float, ptr %19, align 8, !tbaa !119
  %103 = load <2 x float>, ptr %21, align 8, !tbaa !54
  %104 = load <2 x float>, ptr %18, align 4, !tbaa !54
  %105 = fsub float %101, %102
  %106 = fsub <2 x float> %103, %104
  br label %107

107:                                              ; preds = %26, %100
  %108 = phi ptr [ %86, %100 ], [ %27, %26 ]
  %109 = phi float [ %105, %100 ], [ 0xFFF0000000000000, %26 ]
  %110 = phi <2 x float> [ %106, %100 ], [ <float 0xFFF0000000000000, float 0xFFF0000000000000>, %26 ]
  %111 = getelementptr inbounds %struct.octal_tree, ptr %108, i64 0, i32 3
  %112 = load i16, ptr %111, align 8, !tbaa !166
  %113 = extractelement <2 x float> %110, i64 0
  %114 = extractelement <2 x float> %110, i64 1
  tail call fastcc void @subdivide_metaball_octal_node(ptr noundef nonnull %7, float noundef %109, float noundef %113, float noundef %114, i16 noundef signext %112) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @new_pgn_element(ptr noundef %0, i32 noundef %1) unnamed_addr #2 !PGOFuncName !175 {
  switch i32 %1, label %17 [
    i32 0, label %3
    i32 -1, label %5
  ]

3:                                                ; preds = %2
  %4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %17

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %5, %9
  %10 = phi ptr [ %14, %9 ], [ %7, %5 ]
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %12 = getelementptr inbounds %struct.pgn_elements, ptr %10, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !176
  tail call void %11(ptr noundef %13) #20
  %14 = load ptr, ptr %10, align 8, !tbaa !45
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %9, !llvm.loop !178

16:                                               ; preds = %9, %5
  tail call void @BLI_freelistN(ptr noundef nonnull %6) #20
  br label %45

17:                                               ; preds = %2, %3
  %18 = add nsw i32 %1, 3
  %19 = and i32 %18, -4
  %20 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 17
  %21 = load ptr, ptr %20, align 8, !tbaa !179
  %22 = icmp eq ptr %21, null
  br i1 %22, label %33, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 16
  %25 = load i32, ptr %24, align 8, !tbaa !180
  %26 = add nsw i32 %25, %19
  %27 = icmp slt i32 %26, 16384
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.pgn_elements, ptr %21, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !176
  %31 = sext i32 %25 to i64
  %32 = getelementptr inbounds i8, ptr %30, i64 %31
  store i32 %26, ptr %24, align 8, !tbaa !180
  br label %45

33:                                               ; preds = %23, %17
  %34 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %35 = tail call ptr %34(i64 noundef 24, ptr noundef nonnull @.str.12) #20
  store ptr %35, ptr %20, align 8, !tbaa !179
  %36 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %37 = tail call ptr %36(i64 noundef 16384, ptr noundef nonnull @.str.12) #20
  %38 = load ptr, ptr %20, align 8, !tbaa !179
  %39 = getelementptr inbounds %struct.pgn_elements, ptr %38, i64 0, i32 2
  store ptr %37, ptr %39, align 8, !tbaa !176
  %40 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 18
  tail call void @BLI_addtail(ptr noundef nonnull %40, ptr noundef %38) #20
  %41 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 16
  store i32 %19, ptr %41, align 8, !tbaa !180
  %42 = load ptr, ptr %20, align 8, !tbaa !179
  %43 = getelementptr inbounds %struct.pgn_elements, ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !176
  br label %45

45:                                               ; preds = %33, %28, %16
  %46 = phi ptr [ %32, %28 ], [ %44, %33 ], [ null, %16 ]
  ret ptr %46
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_metaball_octal_node(ptr noundef %0) unnamed_addr #2 !PGOFuncName !181 {
  br label %2

2:                                                ; preds = %1, %8
  %3 = phi i64 [ 0, %1 ], [ %9, %8 ]
  %4 = getelementptr inbounds [8 x ptr], ptr %0, i64 0, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call fastcc void @free_metaball_octal_node(ptr noundef nonnull %5) #19
  br label %8

8:                                                ; preds = %2, %7
  %9 = add nuw nsw i64 %3, 1
  %10 = icmp eq i64 %9, 8
  br i1 %10, label %11, label %2, !llvm.loop !182

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.octal_node, ptr %0, i64 0, i32 2
  tail call void @BLI_freelistN(ptr noundef nonnull %12) #20
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %13(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal float @metaball(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, float noundef %3) #2 !PGOFuncName !183 {
  %5 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !114
  %7 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !106
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %59

10:                                               ; preds = %4
  %11 = load ptr, ptr %6, align 8, !tbaa !115
  %12 = getelementptr inbounds %struct.octal_tree, ptr %6, i64 0, i32 3
  %13 = load i16, ptr %12, align 8, !tbaa !166
  %14 = tail call fastcc ptr @find_metaball_octal_node(ptr noundef %11, float noundef %1, float noundef %2, float noundef %3, i16 noundef signext %13) #19
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 2
  br label %47

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.octal_node, ptr %14, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !45
  %21 = icmp eq ptr %20, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %18, %22
  %23 = phi ptr [ %29, %22 ], [ %20, %18 ]
  %24 = phi float [ %28, %22 ], [ 0.000000e+00, %18 ]
  %25 = getelementptr inbounds %struct.ml_pointer, ptr %23, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !172
  %27 = tail call fastcc float @densfunc(ptr noundef %26, float noundef %1, float noundef %2, float noundef %3) #19
  %28 = fadd float %24, %27
  %29 = load ptr, ptr %23, align 8, !tbaa !45
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %22, !llvm.loop !184

31:                                               ; preds = %22, %18
  %32 = phi float [ 0.000000e+00, %18 ], [ %28, %22 ]
  %33 = getelementptr inbounds %struct.octal_tree, ptr %6, i64 0, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !170
  %35 = getelementptr inbounds %struct.octal_node, ptr %14, i64 0, i32 12
  %36 = load i32, ptr %35, align 4, !tbaa !169
  %37 = sub nsw i32 %34, %36
  %38 = sitofp i32 %37 to float
  %39 = tail call float @llvm.fmuladd.f32(float %38, float -5.000000e-01, float %32)
  %40 = getelementptr inbounds %struct.octal_tree, ptr %6, i64 0, i32 2
  %41 = load i32, ptr %40, align 4, !tbaa !168
  %42 = getelementptr inbounds %struct.octal_node, ptr %14, i64 0, i32 13
  %43 = load i32, ptr %42, align 8, !tbaa !167
  %44 = sub nsw i32 %41, %43
  %45 = sitofp i32 %44 to float
  %46 = tail call float @llvm.fmuladd.f32(float %45, float 5.000000e-01, float %39)
  br label %65

47:                                               ; preds = %16, %47
  %48 = phi i64 [ 0, %16 ], [ %55, %47 ]
  %49 = phi float [ 0.000000e+00, %16 ], [ %54, %47 ]
  %50 = load ptr, ptr %17, align 8, !tbaa !113
  %51 = getelementptr inbounds ptr, ptr %50, i64 %48
  %52 = load ptr, ptr %51, align 8, !tbaa !45
  %53 = tail call fastcc float @densfunc(ptr noundef %52, float noundef %1, float noundef %2, float noundef %3) #19
  %54 = fadd float %49, %53
  %55 = add nuw nsw i64 %48, 1
  %56 = load i32, ptr %7, align 4, !tbaa !106
  %57 = sext i32 %56 to i64
  %58 = icmp slt i64 %55, %57
  br i1 %58, label %47, label %65, !llvm.loop !185

59:                                               ; preds = %4
  %60 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !113
  %62 = load ptr, ptr %61, align 8, !tbaa !45
  %63 = tail call fastcc float @densfunc(ptr noundef %62, float noundef %1, float noundef %2, float noundef %3) #19
  %64 = fadd float %63, 0.000000e+00
  br label %65

65:                                               ; preds = %47, %31, %59
  %66 = phi float [ %46, %31 ], [ %64, %59 ], [ %54, %47 ]
  %67 = load float, ptr %0, align 8, !tbaa !112
  %68 = fsub float %67, %66
  ret float %68
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @polygonize(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !186 {
  %3 = alloca %struct.cube, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #21
  %4 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %6 = tail call ptr %5(i64 noundef 262144, ptr noundef nonnull @.str.13) #20
  %7 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 10
  store ptr %6, ptr %7, align 8, !tbaa !187
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %9 = tail call ptr %8(i64 noundef 262144, ptr noundef nonnull @.str.14) #20
  %10 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 11
  store ptr %9, ptr %10, align 8, !tbaa !188
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %12 = tail call ptr %11(i64 noundef 524288, ptr noundef nonnull @.str.15) #20
  %13 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 12
  store ptr %12, ptr %13, align 8, !tbaa !189
  tail call fastcc void @makecubetable() #19
  %14 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !106
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %24, %2
  %18 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !129
  %20 = icmp eq ptr %19, null
  br i1 %20, label %45, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.cube, ptr %3, i64 0, i32 1
  %23 = getelementptr inbounds %struct.cube, ptr %3, i64 0, i32 2
  br label %29

24:                                               ; preds = %2, %24
  %25 = phi i32 [ %26, %24 ], [ 0, %2 ]
  tail call fastcc void @find_first_points(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %25) #19
  %26 = add nuw nsw i32 %25, 1
  %27 = load i32, ptr %14, align 4, !tbaa !106
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %24, label %17, !llvm.loop !190

29:                                               ; preds = %21, %29
  %30 = phi ptr [ %19, %21 ], [ %43, %29 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(80) %30, i64 80, i1 false), !tbaa.struct !191
  call fastcc void @docube(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef %1) #19
  %31 = load ptr, ptr %18, align 8, !tbaa !129
  %32 = getelementptr inbounds %struct.cubes, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !192
  store ptr %33, ptr %18, align 8, !tbaa !129
  %34 = load i32, ptr %3, align 8, !tbaa !195
  %35 = add nsw i32 %34, -1
  %36 = load i32, ptr %22, align 4, !tbaa !196
  %37 = load i32, ptr %23, align 8, !tbaa !197
  call fastcc void @testface(ptr noundef nonnull %0, i32 noundef %35, i32 noundef %36, i32 noundef %37, ptr noundef nonnull %3, i32 noundef 2, i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 3) #19
  %38 = add nsw i32 %34, 1
  call fastcc void @testface(ptr noundef nonnull %0, i32 noundef %38, i32 noundef %36, i32 noundef %37, ptr noundef nonnull %3, i32 noundef 2, i32 noundef 4, i32 noundef 5, i32 noundef 6, i32 noundef 7) #19
  %39 = add nsw i32 %36, -1
  call fastcc void @testface(ptr noundef nonnull %0, i32 noundef %34, i32 noundef %39, i32 noundef %37, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0, i32 noundef 1, i32 noundef 4, i32 noundef 5) #19
  %40 = add nsw i32 %36, 1
  call fastcc void @testface(ptr noundef nonnull %0, i32 noundef %34, i32 noundef %40, i32 noundef %37, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 6, i32 noundef 7) #19
  %41 = add nsw i32 %37, -1
  call fastcc void @testface(ptr noundef nonnull %0, i32 noundef %34, i32 noundef %36, i32 noundef %41, ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 4, i32 noundef 6) #19
  %42 = add nsw i32 %37, 1
  call fastcc void @testface(ptr noundef nonnull %0, i32 noundef %34, i32 noundef %36, i32 noundef %42, ptr noundef nonnull %3, i32 noundef 0, i32 noundef 1, i32 noundef 3, i32 noundef 5, i32 noundef 7) #19
  %43 = load ptr, ptr %18, align 8, !tbaa !129
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %29, !llvm.loop !198

45:                                               ; preds = %29, %17
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !199 {
  %3 = load float, ptr %1, align 4, !tbaa !54
  store float %3, ptr %0, align 4, !tbaa !54
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !54
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !54
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !54
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !54
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @freepolygonize(ptr noundef %0) unnamed_addr #2 !PGOFuncName !200 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !188
  tail call void %2(ptr noundef %4) #20
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !189
  tail call void %5(ptr noundef %7) #20
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %9 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !187
  tail call void %8(ptr noundef %10) #20
  %11 = tail call fastcc ptr @new_pgn_element(ptr noundef %0, i32 noundef -1) #19
  %12 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 9, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !132
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %16(ptr noundef nonnull %13) #20
  br label %17

17:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @BKE_mball_minmax_ex(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i16 noundef signext %4) local_unnamed_addr #2 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = icmp eq ptr %3, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call float @mat4_to_scale(ptr noundef nonnull %3) #20
  br label %11

11:                                               ; preds = %5, %9
  %12 = phi float [ %10, %9 ], [ 1.000000e+00, %5 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #21
  %13 = getelementptr inbounds float, ptr %1, i64 2
  store float 0x46293E5940000000, ptr %13, align 4, !tbaa !54
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %1, align 4, !tbaa !54
  %14 = getelementptr inbounds float, ptr %2, i64 2
  store float 0xC6293E5940000000, ptr %14, align 4, !tbaa !54
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %2, align 4, !tbaa !54
  %15 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  %17 = icmp eq ptr %16, null
  br i1 %17, label %44, label %18

18:                                               ; preds = %11, %40
  %19 = phi ptr [ %42, %40 ], [ %16, %11 ]
  %20 = phi i8 [ %41, %40 ], [ 0, %11 ]
  %21 = getelementptr inbounds %struct.MetaElem, ptr %19, i64 0, i32 4
  %22 = load i16, ptr %21, align 2, !tbaa !75
  %23 = and i16 %22, %4
  %24 = icmp eq i16 %23, %4
  br i1 %24, label %25, label %40

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.MetaElem, ptr %19, i64 0, i32 14
  %27 = load float, ptr %26, align 8, !tbaa !72
  %28 = fmul float %27, 5.000000e-01
  %29 = fmul float %12, %28
  %30 = getelementptr inbounds %struct.MetaElem, ptr %19, i64 0, i32 7
  br i1 %8, label %32, label %31

31:                                               ; preds = %25
  call void @mul_v3_m4v3(ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %30) #20
  br label %33

32:                                               ; preds = %25
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %30) #19
  br label %33

33:                                               ; preds = %32, %31
  br label %34

34:                                               ; preds = %33, %34
  %35 = phi i32 [ %38, %34 ], [ -1, %33 ]
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %6) #19
  %36 = sitofp i32 %35 to float
  %37 = fmul float %29, %36
  call fastcc void @add_v3_fl(ptr noundef nonnull %7, float noundef %37) #19
  call void @minmax_v3v3_v3(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %7) #20
  %38 = add nsw i32 %35, 2
  %39 = icmp eq i32 %38, 3
  br i1 %39, label %40, label %34, !llvm.loop !201

40:                                               ; preds = %34, %18
  %41 = phi i8 [ %20, %18 ], [ 1, %34 ]
  %42 = load ptr, ptr %19, align 8, !tbaa !45
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %18, !llvm.loop !202

44:                                               ; preds = %40, %11
  %45 = phi i8 [ 0, %11 ], [ %41, %40 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #21
  ret i8 %45
}

; Function Attrs: optsize
declare float @mat4_to_scale(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #8 !PGOFuncName !203 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !54
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fadd <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !54
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !54
  %9 = fadd float %8, %1
  store float %9, ptr %7, align 4, !tbaa !54
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @BKE_mball_minmax(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds float, ptr %1, i64 2
  store float 0x46293E5940000000, ptr %4, align 4, !tbaa !54
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %1, align 4, !tbaa !54
  %5 = getelementptr inbounds float, ptr %2, i64 2
  store float 0xC6293E5940000000, ptr %5, align 4, !tbaa !54
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %2, align 4, !tbaa !54
  %6 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %3, %9
  %10 = phi ptr [ %12, %9 ], [ %7, %3 ]
  %11 = getelementptr inbounds %struct.MetaElem, ptr %10, i64 0, i32 7
  tail call void @minmax_v3v3_v3(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %11) #20
  %12 = load ptr, ptr %10, align 8, !tbaa !45
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %9, !llvm.loop !204

14:                                               ; preds = %9, %3
  %15 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %6) #19, !range !88
  %16 = xor i8 %15, 1
  ret i8 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #9 !PGOFuncName !205 {
  %2 = load ptr, ptr %0, align 8, !tbaa !84
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BKE_mball_center_median(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @zero_v3(ptr noundef %1) #19
  %3 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp ne ptr %4, null
  br i1 %5, label %6, label %16

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %11, %6 ], [ %4, %2 ]
  %8 = phi i32 [ %10, %6 ], [ 0, %2 ]
  %9 = getelementptr inbounds %struct.MetaElem, ptr %7, i64 0, i32 7
  tail call fastcc void @add_v3_v3(ptr noundef %1, ptr noundef nonnull %9) #19
  %10 = add nuw nsw i32 %8, 1
  %11 = load ptr, ptr %7, align 8, !tbaa !45
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %6, !llvm.loop !206

13:                                               ; preds = %6
  %14 = sitofp i32 %10 to float
  %15 = fdiv float 1.000000e+00, %14
  tail call fastcc void @mul_v3_fl(ptr noundef %1, float noundef %15) #19
  br label %16

16:                                               ; preds = %2, %13
  %17 = zext i1 %5 to i8
  ret i8 %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #10 !PGOFuncName !207 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !54
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !208 {
  %3 = load float, ptr %1, align 4, !tbaa !54
  %4 = load float, ptr %0, align 4, !tbaa !54
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !54
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !54
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !54
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !54
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !54
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !54
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #8 !PGOFuncName !209 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !54
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !54
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !54
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !54
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BKE_mball_center_bounds(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #21
  %5 = call zeroext i8 @BKE_mball_minmax(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #19, !range !88
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  call void @mid_v3_v3v3(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  br label %8

8:                                                ; preds = %2, %7
  %9 = phi i8 [ 1, %7 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #21
  ret i8 %9
}

; Function Attrs: optsize
declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mball_transform(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #21
  %4 = tail call float @mat4_to_scale(ptr noundef %1) #20
  %5 = tail call float @sqrtf(float noundef %4) #20
  call void @mat4_to_quat(ptr noundef nonnull %3, ptr noundef %1) #20
  %6 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = icmp eq ptr %7, null
  br i1 %8, label %23, label %9

9:                                                ; preds = %2, %9
  %10 = phi ptr [ %21, %9 ], [ %7, %2 ]
  %11 = getelementptr inbounds %struct.MetaElem, ptr %10, i64 0, i32 7
  call void @mul_m4_v3(ptr noundef %1, ptr noundef nonnull %11) #20
  %12 = getelementptr inbounds %struct.MetaElem, ptr %10, i64 0, i32 10
  call void @mul_qt_qtqt(ptr noundef nonnull %12, ptr noundef nonnull %3, ptr noundef nonnull %12) #20
  %13 = getelementptr inbounds %struct.MetaElem, ptr %10, i64 0, i32 14
  %14 = load float, ptr %13, align 8, !tbaa !72
  %15 = fmul float %4, %14
  store float %15, ptr %13, align 8, !tbaa !72
  %16 = getelementptr inbounds %struct.MetaElem, ptr %10, i64 0, i32 3
  %17 = load i16, ptr %16, align 8, !tbaa !76
  %18 = icmp eq i16 %17, 6
  %19 = getelementptr inbounds %struct.MetaElem, ptr %10, i64 0, i32 11
  %20 = select i1 %18, float %5, float %4
  call fastcc void @mul_v3_fl(ptr noundef nonnull %19, float noundef %20) #19
  %21 = load ptr, ptr %10, align 8, !tbaa !45
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %9, !llvm.loop !210

23:                                               ; preds = %9, %2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #21
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare void @mat4_to_quat(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mul_qt_qtqt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_mball_translate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %9, %6 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.MetaElem, ptr %7, i64 0, i32 7
  tail call fastcc void @add_v3_v3(ptr noundef nonnull %8, ptr noundef %1) #19
  %9 = load ptr, ptr %7, align 8, !tbaa !45
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %6, !llvm.loop !211

11:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_mball_select_all(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %1, %6
  %7 = phi ptr [ %11, %6 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.MetaElem, ptr %7, i64 0, i32 4
  %9 = load i16, ptr %8, align 2, !tbaa !75
  %10 = or i16 %9, 1
  store i16 %10, ptr %8, align 2, !tbaa !75
  %11 = load ptr, ptr %7, align 8, !tbaa !45
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %6, !llvm.loop !212

13:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_mball_deselect_all(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %1, %6
  %7 = phi ptr [ %11, %6 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.MetaElem, ptr %7, i64 0, i32 4
  %9 = load i16, ptr %8, align 2, !tbaa !75
  %10 = and i16 %9, -2
  store i16 %10, ptr %8, align 2, !tbaa !75
  %11 = load ptr, ptr %7, align 8, !tbaa !45
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %6, !llvm.loop !213

13:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_mball_select_swap(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %1, %6
  %7 = phi ptr [ %11, %6 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.MetaElem, ptr %7, i64 0, i32 4
  %9 = load i16, ptr %8, align 2, !tbaa !75
  %10 = xor i16 %9, 1
  store i16 %10, ptr %8, align 2, !tbaa !75
  %11 = load ptr, ptr %7, align 8, !tbaa !45
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %6, !llvm.loop !214

13:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare void @extern_local_matarar(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @has_zero_axis_m4(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @quat_to_mat4(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @unit_m4(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @copy_v3_fl3(ptr nocapture noundef writeonly %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #10 !PGOFuncName !215 {
  store float %1, ptr %0, align 4, !tbaa !54
  %5 = getelementptr inbounds float, ptr %0, i64 1
  store float %2, ptr %5, align 4, !tbaa !54
  %6 = getelementptr inbounds float, ptr %0, i64 2
  store float %3, ptr %6, align 4, !tbaa !54
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @calc_mballco(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #2 !PGOFuncName !216 {
  %3 = getelementptr inbounds %struct.MetaElem, ptr %0, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !155
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @mul_m4_v3(ptr noundef nonnull %4, ptr noundef %1) #20
  br label %7

7:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #13

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @densfunc(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #2 !PGOFuncName !217 {
  %5 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #21
  store float %1, ptr %5, align 8, !tbaa !54
  %6 = getelementptr inbounds float, ptr %5, i64 1
  store float %2, ptr %6, align 4, !tbaa !54
  %7 = getelementptr inbounds float, ptr %5, i64 2
  store float %3, ptr %7, align 8, !tbaa !54
  %8 = getelementptr inbounds %struct.MetaElem, ptr %0, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !156
  call void @mul_m4_v3(ptr noundef %9, ptr noundef nonnull %5) #20
  %10 = getelementptr inbounds %struct.MetaElem, ptr %0, i64 0, i32 3
  %11 = load i16, ptr %10, align 8, !tbaa !76
  switch i16 %11, label %138 [
    i16 3, label %125
    i16 4, label %12
    i16 5, label %25
    i16 6, label %51
    i16 7, label %60
    i16 1, label %99
    i16 2, label %112
  ]

12:                                               ; preds = %4
  %13 = load float, ptr %5, align 8, !tbaa !54
  %14 = getelementptr inbounds %struct.MetaElem, ptr %0, i64 0, i32 11
  %15 = load float, ptr %14, align 4, !tbaa !157
  %16 = fcmp ogt float %13, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = fsub float %13, %15
  store float %18, ptr %5, align 8, !tbaa !54
  br label %138

19:                                               ; preds = %12
  %20 = fneg float %15
  %21 = fcmp olt float %13, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = fadd float %13, %15
  store float %23, ptr %5, align 8, !tbaa !54
  br label %138

24:                                               ; preds = %19
  store float 0.000000e+00, ptr %5, align 8, !tbaa !54
  br label %138

25:                                               ; preds = %4
  %26 = load float, ptr %5, align 8, !tbaa !54
  %27 = getelementptr inbounds %struct.MetaElem, ptr %0, i64 0, i32 11
  %28 = load float, ptr %27, align 4, !tbaa !157
  %29 = fcmp ogt float %26, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = fsub float %26, %28
  store float %31, ptr %5, align 8, !tbaa !54
  br label %38

32:                                               ; preds = %25
  %33 = fneg float %28
  %34 = fcmp olt float %26, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = fadd float %26, %28
  store float %36, ptr %5, align 8, !tbaa !54
  br label %38

37:                                               ; preds = %32
  store float 0.000000e+00, ptr %5, align 8, !tbaa !54
  br label %38

38:                                               ; preds = %35, %37, %30
  %39 = load float, ptr %6, align 4, !tbaa !54
  %40 = getelementptr inbounds %struct.MetaElem, ptr %0, i64 0, i32 12
  %41 = load float, ptr %40, align 8, !tbaa !218
  %42 = fcmp ogt float %39, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = fsub float %39, %41
  store float %44, ptr %6, align 4, !tbaa !54
  br label %138

45:                                               ; preds = %38
  %46 = fneg float %41
  %47 = fcmp olt float %39, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = fadd float %39, %41
  store float %49, ptr %6, align 4, !tbaa !54
  br label %138

50:                                               ; preds = %45
  store float 0.000000e+00, ptr %6, align 4, !tbaa !54
  br label %138

51:                                               ; preds = %4
  %52 = getelementptr inbounds %struct.MetaElem, ptr %0, i64 0, i32 11
  %53 = load <2 x float>, ptr %52, align 4, !tbaa !54
  %54 = load <2 x float>, ptr %5, align 8, !tbaa !54
  %55 = fdiv <2 x float> %54, %53
  store <2 x float> %55, ptr %5, align 8, !tbaa !54
  %56 = getelementptr inbounds %struct.MetaElem, ptr %0, i64 0, i32 13
  %57 = load float, ptr %56, align 4, !tbaa !162
  %58 = load float, ptr %7, align 8, !tbaa !54
  %59 = fdiv float %58, %57
  store float %59, ptr %7, align 8, !tbaa !54
  br label %138

60:                                               ; preds = %4
  %61 = load float, ptr %5, align 8, !tbaa !54
  %62 = getelementptr inbounds %struct.MetaElem, ptr %0, i64 0, i32 11
  %63 = load float, ptr %62, align 4, !tbaa !157
  %64 = fcmp ogt float %61, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = fsub float %61, %63
  store float %66, ptr %5, align 8, !tbaa !54
  br label %73

67:                                               ; preds = %60
  %68 = fneg float %63
  %69 = fcmp olt float %61, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = fadd float %61, %63
  store float %71, ptr %5, align 8, !tbaa !54
  br label %73

72:                                               ; preds = %67
  store float 0.000000e+00, ptr %5, align 8, !tbaa !54
  br label %73

73:                                               ; preds = %70, %72, %65
  %74 = load float, ptr %6, align 4, !tbaa !54
  %75 = getelementptr inbounds %struct.MetaElem, ptr %0, i64 0, i32 12
  %76 = load float, ptr %75, align 8, !tbaa !218
  %77 = fcmp ogt float %74, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = fsub float %74, %76
  br label %85

80:                                               ; preds = %73
  %81 = fneg float %76
  %82 = fcmp olt float %74, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = fadd float %74, %76
  br label %85

85:                                               ; preds = %80, %83, %78
  %86 = phi float [ %84, %83 ], [ %79, %78 ], [ 0.000000e+00, %80 ]
  store float %86, ptr %6, align 4, !tbaa !54
  %87 = load float, ptr %7, align 8, !tbaa !54
  %88 = getelementptr inbounds %struct.MetaElem, ptr %0, i64 0, i32 13
  %89 = load float, ptr %88, align 4, !tbaa !162
  %90 = fcmp ogt float %87, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = fsub float %87, %89
  store float %92, ptr %7, align 8, !tbaa !54
  br label %138

93:                                               ; preds = %85
  %94 = fneg float %89
  %95 = fcmp olt float %87, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = fadd float %87, %89
  store float %97, ptr %7, align 8, !tbaa !54
  br label %138

98:                                               ; preds = %93
  store float 0.000000e+00, ptr %7, align 8, !tbaa !54
  br label %138

99:                                               ; preds = %4
  %100 = load float, ptr %5, align 8, !tbaa !54
  %101 = getelementptr inbounds %struct.MetaElem, ptr %0, i64 0, i32 17
  %102 = load float, ptr %101, align 4, !tbaa !219
  %103 = fcmp ogt float %100, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = fsub float %100, %102
  store float %105, ptr %5, align 8, !tbaa !54
  br label %138

106:                                              ; preds = %99
  %107 = fneg float %102
  %108 = fcmp olt float %100, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = fadd float %100, %102
  store float %110, ptr %5, align 8, !tbaa !54
  br label %138

111:                                              ; preds = %106
  store float 0.000000e+00, ptr %5, align 8, !tbaa !54
  br label %138

112:                                              ; preds = %4
  %113 = load float, ptr %6, align 4, !tbaa !54
  %114 = getelementptr inbounds %struct.MetaElem, ptr %0, i64 0, i32 17
  %115 = load float, ptr %114, align 4, !tbaa !219
  %116 = fcmp ogt float %113, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  %118 = fsub float %113, %115
  store float %118, ptr %6, align 4, !tbaa !54
  br label %138

119:                                              ; preds = %112
  %120 = fneg float %115
  %121 = fcmp olt float %113, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = fadd float %113, %115
  store float %123, ptr %6, align 4, !tbaa !54
  br label %138

124:                                              ; preds = %119
  store float 0.000000e+00, ptr %6, align 4, !tbaa !54
  br label %138

125:                                              ; preds = %4
  %126 = load float, ptr %7, align 8, !tbaa !54
  %127 = getelementptr inbounds %struct.MetaElem, ptr %0, i64 0, i32 17
  %128 = load float, ptr %127, align 4, !tbaa !219
  %129 = fcmp ogt float %126, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %125
  %131 = fsub float %126, %128
  store float %131, ptr %7, align 8, !tbaa !54
  br label %138

132:                                              ; preds = %125
  %133 = fneg float %128
  %134 = fcmp olt float %126, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %132
  %136 = fadd float %126, %128
  store float %136, ptr %7, align 8, !tbaa !54
  br label %138

137:                                              ; preds = %132
  store float 0.000000e+00, ptr %7, align 8, !tbaa !54
  br label %138

138:                                              ; preds = %130, %137, %135, %117, %124, %122, %104, %111, %109, %91, %98, %96, %43, %50, %48, %17, %24, %22, %4, %51
  %139 = call fastcc float @len_squared_v3(ptr noundef nonnull %5) #19
  %140 = getelementptr inbounds %struct.MetaElem, ptr %0, i64 0, i32 15
  %141 = load float, ptr %140, align 4, !tbaa !154
  %142 = fdiv float %139, %141
  %143 = fsub float 1.000000e+00, %142
  %144 = getelementptr inbounds %struct.MetaElem, ptr %0, i64 0, i32 4
  %145 = load i16, ptr %144, align 2, !tbaa !75
  %146 = and i16 %145, 2
  %147 = icmp eq i16 %146, 0
  %148 = fcmp olt float %143, 0.000000e+00
  br i1 %147, label %149, label %156

149:                                              ; preds = %138
  br i1 %148, label %164, label %150

150:                                              ; preds = %149
  %151 = getelementptr inbounds %struct.MetaElem, ptr %0, i64 0, i32 16
  %152 = load float, ptr %151, align 8, !tbaa !74
  %153 = fmul float %143, %152
  %154 = fmul float %143, %153
  %155 = call float @llvm.fmuladd.f32(float %154, float %143, float -5.000000e-01)
  br label %164

156:                                              ; preds = %138
  br i1 %148, label %164, label %157

157:                                              ; preds = %156
  %158 = getelementptr inbounds %struct.MetaElem, ptr %0, i64 0, i32 16
  %159 = load float, ptr %158, align 8, !tbaa !74
  %160 = fneg float %159
  %161 = fmul float %143, %160
  %162 = fmul float %143, %161
  %163 = call float @llvm.fmuladd.f32(float %162, float %143, float 5.000000e-01)
  br label %164

164:                                              ; preds = %157, %156, %150, %149
  %165 = phi float [ %155, %150 ], [ -5.000000e-01, %149 ], [ %163, %157 ], [ 5.000000e-01, %156 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #21
  ret float %165
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_squared_v3(ptr nocapture noundef readonly %0) unnamed_addr #9 !PGOFuncName !220 {
  %2 = load float, ptr %0, align 4, !tbaa !54
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !54
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !54
  %9 = tail call float @llvm.fmuladd.f32(float %8, float %8, float %6)
  ret float %9
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #13

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #10 !PGOFuncName !221 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @subdivide_metaball_octal_node(ptr noundef %0, float noundef %1, float noundef %2, float noundef %3, i16 noundef signext %4) unnamed_addr #2 !PGOFuncName !222 {
  br label %6

6:                                                ; preds = %5, %17
  %7 = phi i64 [ 0, %5 ], [ %26, %17 ]
  %8 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %9 = tail call ptr %8(i64 noundef 136, ptr noundef nonnull @.str.10) #20
  %10 = getelementptr inbounds [8 x ptr], ptr %0, i64 0, i64 %7
  store ptr %9, ptr %10, align 8, !tbaa !45
  br label %11

11:                                               ; preds = %6, %11
  %12 = phi i64 [ 0, %6 ], [ %15, %11 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !45
  %14 = getelementptr inbounds [8 x ptr], ptr %13, i64 0, i64 %12
  store ptr null, ptr %14, align 8, !tbaa !45
  %15 = add nuw nsw i64 %12, 1
  %16 = icmp eq i64 %15, 8
  br i1 %16, label %17, label %11, !llvm.loop !223

17:                                               ; preds = %11
  %18 = load ptr, ptr %10, align 8, !tbaa !45
  %19 = getelementptr inbounds %struct.octal_node, ptr %18, i64 0, i32 1
  store ptr %0, ptr %19, align 8, !tbaa !224
  %20 = load ptr, ptr %10, align 8, !tbaa !45
  %21 = getelementptr inbounds %struct.octal_node, ptr %20, i64 0, i32 2
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %21) #19
  %22 = load ptr, ptr %10, align 8, !tbaa !45
  %23 = getelementptr inbounds %struct.octal_node, ptr %22, i64 0, i32 14
  store i32 0, ptr %23, align 4, !tbaa !171
  %24 = getelementptr inbounds %struct.octal_node, ptr %22, i64 0, i32 13
  store i32 0, ptr %24, align 8, !tbaa !167
  %25 = getelementptr inbounds %struct.octal_node, ptr %22, i64 0, i32 12
  store i32 0, ptr %25, align 4, !tbaa !169
  %26 = add nuw nsw i64 %7, 1
  %27 = icmp eq i64 %26, 8
  br i1 %27, label %28, label %6, !llvm.loop !225

28:                                               ; preds = %17
  %29 = insertelement <2 x float> poison, float %1, i64 0
  %30 = insertelement <2 x float> %29, float %2, i64 1
  %31 = fmul <2 x float> %30, <float 5.000000e-01, float 5.000000e-01>
  %32 = fmul float %3, 5.000000e-01
  %33 = getelementptr inbounds %struct.octal_node, ptr %0, i64 0, i32 3
  %34 = getelementptr inbounds %struct.octal_node, ptr %0, i64 0, i32 9
  %35 = load <2 x float>, ptr %33, align 8, !tbaa !54
  %36 = fadd <2 x float> %31, %35
  store <2 x float> %36, ptr %34, align 8, !tbaa !54
  %37 = getelementptr inbounds %struct.octal_node, ptr %0, i64 0, i32 5
  %38 = load float, ptr %37, align 8, !tbaa !123
  %39 = fadd float %32, %38
  %40 = getelementptr inbounds %struct.octal_node, ptr %0, i64 0, i32 11
  store float %39, ptr %40, align 8, !tbaa !226
  %41 = load ptr, ptr %0, align 8, !tbaa !45
  %42 = getelementptr inbounds %struct.octal_node, ptr %41, i64 0, i32 3
  store <2 x float> %35, ptr %42, align 8, !tbaa !54
  %43 = getelementptr inbounds %struct.octal_node, ptr %41, i64 0, i32 5
  store float %38, ptr %43, align 8, !tbaa !123
  %44 = getelementptr inbounds %struct.octal_node, ptr %41, i64 0, i32 9
  %45 = fmul <2 x float> %31, <float 5.000000e-01, float 5.000000e-01>
  %46 = fadd <2 x float> %45, %35
  store <2 x float> %46, ptr %44, align 8, !tbaa !54
  %47 = fmul float %32, 5.000000e-01
  %48 = fadd float %47, %38
  %49 = getelementptr inbounds %struct.octal_node, ptr %41, i64 0, i32 11
  store float %48, ptr %49, align 8, !tbaa !226
  %50 = getelementptr inbounds [8 x ptr], ptr %0, i64 0, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !45
  %52 = getelementptr inbounds %struct.octal_node, ptr %51, i64 0, i32 3
  %53 = extractelement <2 x float> %36, i64 0
  store float %53, ptr %52, align 8, !tbaa !119
  %54 = getelementptr inbounds %struct.octal_node, ptr %51, i64 0, i32 4
  %55 = extractelement <2 x float> %35, i64 1
  store float %55, ptr %54, align 4, !tbaa !121
  %56 = getelementptr inbounds %struct.octal_node, ptr %51, i64 0, i32 5
  store float %38, ptr %56, align 8, !tbaa !123
  %57 = getelementptr inbounds %struct.octal_node, ptr %51, i64 0, i32 9
  %58 = getelementptr inbounds %struct.octal_node, ptr %51, i64 0, i32 10
  %59 = extractelement <2 x float> %46, i64 1
  store float %59, ptr %58, align 4, !tbaa !227
  %60 = getelementptr inbounds %struct.octal_node, ptr %51, i64 0, i32 11
  store float %48, ptr %60, align 8, !tbaa !226
  %61 = getelementptr inbounds [8 x ptr], ptr %0, i64 0, i64 2
  %62 = load ptr, ptr %61, align 8, !tbaa !45
  %63 = getelementptr inbounds %struct.octal_node, ptr %62, i64 0, i32 3
  store <2 x float> %36, ptr %63, align 8, !tbaa !54
  %64 = load float, ptr %37, align 8, !tbaa !123
  %65 = getelementptr inbounds %struct.octal_node, ptr %62, i64 0, i32 5
  store float %64, ptr %65, align 8, !tbaa !123
  %66 = getelementptr inbounds %struct.octal_node, ptr %62, i64 0, i32 9
  %67 = fadd <2 x float> %45, %36
  %68 = extractelement <2 x float> %67, i64 0
  store float %68, ptr %57, align 8, !tbaa !228
  store <2 x float> %67, ptr %66, align 8, !tbaa !54
  %69 = fadd float %47, %64
  %70 = getelementptr inbounds %struct.octal_node, ptr %62, i64 0, i32 11
  store float %69, ptr %70, align 8, !tbaa !226
  %71 = getelementptr inbounds [8 x ptr], ptr %0, i64 0, i64 3
  %72 = load ptr, ptr %71, align 8, !tbaa !45
  %73 = getelementptr inbounds %struct.octal_node, ptr %72, i64 0, i32 3
  %74 = getelementptr inbounds %struct.octal_node, ptr %72, i64 0, i32 4
  %75 = extractelement <2 x float> %36, i64 1
  store float %75, ptr %74, align 4, !tbaa !121
  %76 = getelementptr inbounds %struct.octal_node, ptr %72, i64 0, i32 5
  store float %64, ptr %76, align 8, !tbaa !123
  %77 = getelementptr inbounds %struct.octal_node, ptr %72, i64 0, i32 9
  %78 = getelementptr inbounds %struct.octal_node, ptr %72, i64 0, i32 10
  %79 = extractelement <2 x float> %67, i64 1
  store float %79, ptr %78, align 4, !tbaa !227
  %80 = getelementptr inbounds %struct.octal_node, ptr %72, i64 0, i32 11
  store float %69, ptr %80, align 8, !tbaa !226
  %81 = getelementptr inbounds [8 x ptr], ptr %0, i64 0, i64 4
  %82 = load ptr, ptr %81, align 8, !tbaa !45
  %83 = getelementptr inbounds %struct.octal_node, ptr %82, i64 0, i32 3
  %84 = getelementptr inbounds %struct.octal_node, ptr %82, i64 0, i32 5
  store float %39, ptr %84, align 8, !tbaa !123
  %85 = getelementptr inbounds %struct.octal_node, ptr %82, i64 0, i32 9
  %86 = load <2 x float>, ptr %33, align 8, !tbaa !54
  %87 = extractelement <2 x float> %86, i64 0
  store float %87, ptr %73, align 8, !tbaa !119
  %88 = fadd <2 x float> %45, %86
  %89 = extractelement <2 x float> %88, i64 0
  store float %89, ptr %77, align 8, !tbaa !228
  store <2 x float> %86, ptr %83, align 8, !tbaa !54
  store <2 x float> %88, ptr %85, align 8, !tbaa !54
  %90 = fadd float %47, %39
  %91 = getelementptr inbounds %struct.octal_node, ptr %82, i64 0, i32 11
  store float %90, ptr %91, align 8, !tbaa !226
  %92 = getelementptr inbounds [8 x ptr], ptr %0, i64 0, i64 5
  %93 = load ptr, ptr %92, align 8, !tbaa !45
  %94 = getelementptr inbounds %struct.octal_node, ptr %93, i64 0, i32 3
  store float %53, ptr %94, align 8, !tbaa !119
  %95 = getelementptr inbounds %struct.octal_node, ptr %93, i64 0, i32 4
  %96 = extractelement <2 x float> %86, i64 1
  store float %96, ptr %95, align 4, !tbaa !121
  %97 = getelementptr inbounds %struct.octal_node, ptr %93, i64 0, i32 5
  store float %39, ptr %97, align 8, !tbaa !123
  %98 = getelementptr inbounds %struct.octal_node, ptr %93, i64 0, i32 9
  store float %68, ptr %98, align 8, !tbaa !228
  %99 = getelementptr inbounds %struct.octal_node, ptr %93, i64 0, i32 10
  %100 = extractelement <2 x float> %88, i64 1
  store float %100, ptr %99, align 4, !tbaa !227
  %101 = getelementptr inbounds %struct.octal_node, ptr %93, i64 0, i32 11
  store float %90, ptr %101, align 8, !tbaa !226
  %102 = getelementptr inbounds [8 x ptr], ptr %0, i64 0, i64 6
  %103 = load ptr, ptr %102, align 8, !tbaa !45
  %104 = getelementptr inbounds %struct.octal_node, ptr %103, i64 0, i32 3
  store <2 x float> %36, ptr %104, align 8, !tbaa !54
  %105 = getelementptr inbounds %struct.octal_node, ptr %103, i64 0, i32 5
  store float %39, ptr %105, align 8, !tbaa !123
  %106 = getelementptr inbounds %struct.octal_node, ptr %103, i64 0, i32 9
  store <2 x float> %67, ptr %106, align 8, !tbaa !54
  %107 = getelementptr inbounds %struct.octal_node, ptr %103, i64 0, i32 11
  store float %90, ptr %107, align 8, !tbaa !226
  %108 = load float, ptr %33, align 8, !tbaa !119
  %109 = getelementptr inbounds [8 x ptr], ptr %0, i64 0, i64 7
  %110 = load ptr, ptr %109, align 8, !tbaa !45
  %111 = getelementptr inbounds %struct.octal_node, ptr %110, i64 0, i32 3
  store float %108, ptr %111, align 8, !tbaa !119
  %112 = getelementptr inbounds %struct.octal_node, ptr %110, i64 0, i32 4
  store float %75, ptr %112, align 4, !tbaa !121
  %113 = getelementptr inbounds %struct.octal_node, ptr %110, i64 0, i32 5
  store float %39, ptr %113, align 8, !tbaa !123
  %114 = extractelement <2 x float> %45, i64 0
  %115 = fadd float %114, %108
  %116 = getelementptr inbounds %struct.octal_node, ptr %110, i64 0, i32 9
  store float %115, ptr %116, align 8, !tbaa !228
  %117 = getelementptr inbounds %struct.octal_node, ptr %110, i64 0, i32 10
  store float %79, ptr %117, align 4, !tbaa !227
  %118 = getelementptr inbounds %struct.octal_node, ptr %110, i64 0, i32 11
  store float %90, ptr %118, align 8, !tbaa !226
  %119 = getelementptr inbounds %struct.octal_node, ptr %0, i64 0, i32 2
  %120 = load ptr, ptr %119, align 8, !tbaa !45
  %121 = icmp eq ptr %120, null
  br i1 %121, label %282, label %122

122:                                              ; preds = %28, %279
  %123 = phi ptr [ %280, %279 ], [ %120, %28 ]
  %124 = getelementptr inbounds %struct.ml_pointer, ptr %123, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !172
  %126 = getelementptr inbounds %struct.MetaElem, ptr %125, i64 0, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !153
  %128 = getelementptr inbounds [3 x float], ptr %127, i64 0, i64 2
  %129 = load float, ptr %128, align 4, !tbaa !54
  %130 = fcmp olt float %129, %39
  %131 = getelementptr inbounds [3 x float], ptr %127, i64 0, i64 1
  %132 = load float, ptr %131, align 4, !tbaa !54
  %133 = fcmp olt float %132, %75
  %134 = load float, ptr %127, align 4, !tbaa !54
  %135 = fcmp olt float %134, %53
  br i1 %130, label %136, label %233

136:                                              ; preds = %122
  br i1 %133, label %137, label %200

137:                                              ; preds = %136
  br i1 %135, label %138, label %183

138:                                              ; preds = %137
  tail call fastcc void @fill_metaball_octal_node(ptr noundef nonnull %0, ptr noundef nonnull %125, i16 noundef signext 0) #19
  %139 = load ptr, ptr %126, align 8, !tbaa !153
  %140 = getelementptr inbounds [8 x [3 x float]], ptr %139, i64 0, i64 6, i64 1
  %141 = load float, ptr %140, align 4, !tbaa !54
  %142 = fcmp ult float %141, %75
  br i1 %142, label %150, label %143

143:                                              ; preds = %138
  tail call fastcc void @fill_metaball_octal_node(ptr noundef nonnull %0, ptr noundef nonnull %125, i16 noundef signext 3) #19
  %144 = load ptr, ptr %126, align 8, !tbaa !153
  %145 = getelementptr inbounds [8 x [3 x float]], ptr %144, i64 0, i64 6, i64 2
  %146 = load float, ptr %145, align 4, !tbaa !54
  %147 = fcmp ult float %146, %39
  br i1 %147, label %150, label %148

148:                                              ; preds = %143
  tail call fastcc void @fill_metaball_octal_node(ptr noundef nonnull %0, ptr noundef nonnull %125, i16 noundef signext 7) #19
  %149 = load ptr, ptr %126, align 8, !tbaa !153
  br label %150

150:                                              ; preds = %143, %148, %138
  %151 = phi ptr [ %144, %143 ], [ %149, %148 ], [ %139, %138 ]
  %152 = getelementptr inbounds [8 x [3 x float]], ptr %151, i64 0, i64 6
  %153 = load float, ptr %152, align 4, !tbaa !54
  %154 = fcmp ult float %153, %53
  br i1 %154, label %162, label %155

155:                                              ; preds = %150
  tail call fastcc void @fill_metaball_octal_node(ptr noundef nonnull %0, ptr noundef nonnull %125, i16 noundef signext 1) #19
  %156 = load ptr, ptr %126, align 8, !tbaa !153
  %157 = getelementptr inbounds [8 x [3 x float]], ptr %156, i64 0, i64 6, i64 2
  %158 = load float, ptr %157, align 4, !tbaa !54
  %159 = fcmp ult float %158, %39
  br i1 %159, label %162, label %160

160:                                              ; preds = %155
  tail call fastcc void @fill_metaball_octal_node(ptr noundef nonnull %0, ptr noundef nonnull %125, i16 noundef signext 5) #19
  %161 = load ptr, ptr %126, align 8, !tbaa !153
  br label %162

162:                                              ; preds = %155, %160, %150
  %163 = phi ptr [ %156, %155 ], [ %161, %160 ], [ %151, %150 ]
  %164 = getelementptr inbounds [8 x [3 x float]], ptr %163, i64 0, i64 6
  %165 = load float, ptr %164, align 4, !tbaa !54
  %166 = fcmp ult float %165, %53
  br i1 %166, label %178, label %167

167:                                              ; preds = %162
  %168 = getelementptr inbounds [8 x [3 x float]], ptr %163, i64 0, i64 6, i64 1
  %169 = load float, ptr %168, align 4, !tbaa !54
  %170 = fcmp ult float %169, %75
  br i1 %170, label %178, label %171

171:                                              ; preds = %167
  tail call fastcc void @fill_metaball_octal_node(ptr noundef nonnull %0, ptr noundef nonnull %125, i16 noundef signext 2) #19
  %172 = load ptr, ptr %126, align 8, !tbaa !153
  %173 = getelementptr inbounds [8 x [3 x float]], ptr %172, i64 0, i64 6, i64 2
  %174 = load float, ptr %173, align 4, !tbaa !54
  %175 = fcmp ult float %174, %39
  br i1 %175, label %178, label %176

176:                                              ; preds = %171
  tail call fastcc void @fill_metaball_octal_node(ptr noundef nonnull %0, ptr noundef nonnull %125, i16 noundef signext 6) #19
  %177 = load ptr, ptr %126, align 8, !tbaa !153
  br label %178

178:                                              ; preds = %171, %176, %167, %162
  %179 = phi ptr [ %172, %171 ], [ %177, %176 ], [ %163, %167 ], [ %163, %162 ]
  %180 = getelementptr inbounds [8 x [3 x float]], ptr %179, i64 0, i64 6, i64 2
  %181 = load float, ptr %180, align 4, !tbaa !54
  %182 = fcmp ult float %181, %39
  br i1 %182, label %220, label %218

183:                                              ; preds = %137
  tail call fastcc void @fill_metaball_octal_node(ptr noundef nonnull %0, ptr noundef nonnull %125, i16 noundef signext 1) #19
  %184 = load ptr, ptr %126, align 8, !tbaa !153
  %185 = getelementptr inbounds [8 x [3 x float]], ptr %184, i64 0, i64 6, i64 1
  %186 = load float, ptr %185, align 4, !tbaa !54
  %187 = fcmp ult float %186, %75
  br i1 %187, label %195, label %188

188:                                              ; preds = %183
  tail call fastcc void @fill_metaball_octal_node(ptr noundef nonnull %0, ptr noundef nonnull %125, i16 noundef signext 2) #19
  %189 = load ptr, ptr %126, align 8, !tbaa !153
  %190 = getelementptr inbounds [8 x [3 x float]], ptr %189, i64 0, i64 6, i64 2
  %191 = load float, ptr %190, align 4, !tbaa !54
  %192 = fcmp ult float %191, %39
  br i1 %192, label %195, label %193

193:                                              ; preds = %188
  tail call fastcc void @fill_metaball_octal_node(ptr noundef nonnull %0, ptr noundef nonnull %125, i16 noundef signext 6) #19
  %194 = load ptr, ptr %126, align 8, !tbaa !153
  br label %195

195:                                              ; preds = %188, %193, %183
  %196 = phi ptr [ %189, %188 ], [ %194, %193 ], [ %184, %183 ]
  %197 = getelementptr inbounds [8 x [3 x float]], ptr %196, i64 0, i64 6, i64 2
  %198 = load float, ptr %197, align 4, !tbaa !54
  %199 = fcmp ult float %198, %39
  br i1 %199, label %220, label %218

200:                                              ; preds = %136
  br i1 %135, label %201, label %220

201:                                              ; preds = %200
  tail call fastcc void @fill_metaball_octal_node(ptr noundef nonnull %0, ptr noundef nonnull %125, i16 noundef signext 3) #19
  %202 = load ptr, ptr %126, align 8, !tbaa !153
  %203 = getelementptr inbounds [8 x [3 x float]], ptr %202, i64 0, i64 6, i64 2
  %204 = load float, ptr %203, align 4, !tbaa !54
  %205 = fcmp ult float %204, %39
  br i1 %205, label %208, label %206

206:                                              ; preds = %201
  tail call fastcc void @fill_metaball_octal_node(ptr noundef nonnull %0, ptr noundef nonnull %125, i16 noundef signext 7) #19
  %207 = load ptr, ptr %126, align 8, !tbaa !153
  br label %208

208:                                              ; preds = %206, %201
  %209 = phi ptr [ %207, %206 ], [ %202, %201 ]
  %210 = getelementptr inbounds [8 x [3 x float]], ptr %209, i64 0, i64 6
  %211 = load float, ptr %210, align 4, !tbaa !54
  %212 = fcmp ult float %211, %53
  br i1 %212, label %220, label %213

213:                                              ; preds = %208
  tail call fastcc void @fill_metaball_octal_node(ptr noundef nonnull %0, ptr noundef nonnull %125, i16 noundef signext 2) #19
  %214 = load ptr, ptr %126, align 8, !tbaa !153
  %215 = getelementptr inbounds [8 x [3 x float]], ptr %214, i64 0, i64 6, i64 2
  %216 = load float, ptr %215, align 4, !tbaa !54
  %217 = fcmp ult float %216, %39
  br i1 %217, label %220, label %218

218:                                              ; preds = %213, %195, %178
  %219 = phi i16 [ 4, %178 ], [ 5, %195 ], [ 6, %213 ]
  tail call fastcc void @fill_metaball_octal_node(ptr noundef nonnull %0, ptr noundef nonnull %125, i16 noundef signext %219) #19
  br label %220

220:                                              ; preds = %218, %200, %213, %208, %178, %195
  %221 = load ptr, ptr %126, align 8, !tbaa !153
  %222 = load float, ptr %221, align 4, !tbaa !54
  %223 = fcmp ult float %222, %53
  br i1 %223, label %279, label %224

224:                                              ; preds = %220
  %225 = getelementptr inbounds [3 x float], ptr %221, i64 0, i64 1
  %226 = load float, ptr %225, align 4, !tbaa !54
  %227 = fcmp ult float %226, %75
  br i1 %227, label %279, label %228

228:                                              ; preds = %224
  tail call fastcc void @fill_metaball_octal_node(ptr noundef nonnull %0, ptr noundef nonnull %125, i16 noundef signext 2) #19
  %229 = load ptr, ptr %126, align 8, !tbaa !153
  %230 = getelementptr inbounds [8 x [3 x float]], ptr %229, i64 0, i64 6, i64 2
  %231 = load float, ptr %230, align 4, !tbaa !54
  %232 = fcmp ult float %231, %39
  br i1 %232, label %279, label %278

233:                                              ; preds = %122
  br i1 %133, label %234, label %263

234:                                              ; preds = %233
  br i1 %135, label %235, label %258

235:                                              ; preds = %234
  tail call fastcc void @fill_metaball_octal_node(ptr noundef nonnull %0, ptr noundef nonnull %125, i16 noundef signext 4) #19
  %236 = load ptr, ptr %126, align 8, !tbaa !153
  %237 = getelementptr inbounds [8 x [3 x float]], ptr %236, i64 0, i64 6
  %238 = load float, ptr %237, align 4, !tbaa !54
  %239 = fcmp ult float %238, %53
  br i1 %239, label %242, label %240

240:                                              ; preds = %235
  tail call fastcc void @fill_metaball_octal_node(ptr noundef nonnull %0, ptr noundef nonnull %125, i16 noundef signext 5) #19
  %241 = load ptr, ptr %126, align 8, !tbaa !153
  br label %242

242:                                              ; preds = %240, %235
  %243 = phi ptr [ %241, %240 ], [ %236, %235 ]
  %244 = getelementptr inbounds [8 x [3 x float]], ptr %243, i64 0, i64 6, i64 1
  %245 = load float, ptr %244, align 4, !tbaa !54
  %246 = fcmp ult float %245, %75
  br i1 %246, label %249, label %247

247:                                              ; preds = %242
  tail call fastcc void @fill_metaball_octal_node(ptr noundef nonnull %0, ptr noundef nonnull %125, i16 noundef signext 7) #19
  %248 = load ptr, ptr %126, align 8, !tbaa !153
  br label %249

249:                                              ; preds = %247, %242
  %250 = phi ptr [ %248, %247 ], [ %243, %242 ]
  %251 = getelementptr inbounds [8 x [3 x float]], ptr %250, i64 0, i64 6
  %252 = load float, ptr %251, align 4, !tbaa !54
  %253 = fcmp ult float %252, %53
  br i1 %253, label %270, label %254

254:                                              ; preds = %249
  %255 = getelementptr inbounds [8 x [3 x float]], ptr %250, i64 0, i64 6, i64 1
  %256 = load float, ptr %255, align 4, !tbaa !54
  %257 = fcmp ult float %256, %75
  br i1 %257, label %270, label %269

258:                                              ; preds = %234
  tail call fastcc void @fill_metaball_octal_node(ptr noundef nonnull %0, ptr noundef nonnull %125, i16 noundef signext 5) #19
  %259 = load ptr, ptr %126, align 8, !tbaa !153
  %260 = getelementptr inbounds [8 x [3 x float]], ptr %259, i64 0, i64 6, i64 1
  %261 = load float, ptr %260, align 4, !tbaa !54
  %262 = fcmp ult float %261, %75
  br i1 %262, label %270, label %269

263:                                              ; preds = %233
  br i1 %135, label %264, label %270

264:                                              ; preds = %263
  tail call fastcc void @fill_metaball_octal_node(ptr noundef nonnull %0, ptr noundef nonnull %125, i16 noundef signext 7) #19
  %265 = load ptr, ptr %126, align 8, !tbaa !153
  %266 = getelementptr inbounds [8 x [3 x float]], ptr %265, i64 0, i64 6
  %267 = load float, ptr %266, align 4, !tbaa !54
  %268 = fcmp ult float %267, %53
  br i1 %268, label %270, label %269

269:                                              ; preds = %264, %258, %254
  tail call fastcc void @fill_metaball_octal_node(ptr noundef nonnull %0, ptr noundef nonnull %125, i16 noundef signext 6) #19
  br label %270

270:                                              ; preds = %269, %263, %264, %254, %249, %258
  %271 = load ptr, ptr %126, align 8, !tbaa !153
  %272 = load float, ptr %271, align 4, !tbaa !54
  %273 = fcmp ult float %272, %53
  br i1 %273, label %279, label %274

274:                                              ; preds = %270
  %275 = getelementptr inbounds [3 x float], ptr %271, i64 0, i64 1
  %276 = load float, ptr %275, align 4, !tbaa !54
  %277 = fcmp ult float %276, %75
  br i1 %277, label %279, label %278

278:                                              ; preds = %274, %228
  tail call fastcc void @fill_metaball_octal_node(ptr noundef nonnull %0, ptr noundef nonnull %125, i16 noundef signext 6) #19
  br label %279

279:                                              ; preds = %278, %270, %274, %220, %224, %228
  %280 = load ptr, ptr %123, align 8, !tbaa !45
  %281 = icmp eq ptr %280, null
  br i1 %281, label %282, label %122, !llvm.loop !229

282:                                              ; preds = %279, %28
  tail call void @BLI_freelistN(ptr noundef nonnull %119) #20
  %283 = add i16 %4, -1
  %284 = icmp sgt i16 %283, 0
  br i1 %284, label %285, label %299

285:                                              ; preds = %282
  %286 = extractelement <2 x float> %31, i64 0
  %287 = extractelement <2 x float> %31, i64 1
  br label %288

288:                                              ; preds = %285, %296
  %289 = phi i64 [ %297, %296 ], [ 0, %285 ]
  %290 = getelementptr inbounds [8 x ptr], ptr %0, i64 0, i64 %289
  %291 = load ptr, ptr %290, align 8, !tbaa !45
  %292 = getelementptr inbounds %struct.octal_node, ptr %291, i64 0, i32 14
  %293 = load i32, ptr %292, align 4, !tbaa !171
  %294 = icmp sgt i32 %293, 0
  br i1 %294, label %295, label %296

295:                                              ; preds = %288
  tail call fastcc void @subdivide_metaball_octal_node(ptr noundef nonnull %291, float noundef %286, float noundef %287, float noundef %32, i16 noundef signext %283) #19
  br label %296

296:                                              ; preds = %288, %295
  %297 = add nuw nsw i64 %289, 1
  %298 = icmp eq i64 %297, 8
  br i1 %298, label %299, label %288, !llvm.loop !230

299:                                              ; preds = %296, %282
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fill_metaball_octal_node(ptr nocapture noundef %0, ptr noundef %1, i16 noundef signext %2) unnamed_addr #2 !PGOFuncName !231 {
  %4 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %5 = tail call ptr %4(i64 noundef 24, ptr noundef nonnull @.str.9) #20
  %6 = getelementptr inbounds %struct.ml_pointer, ptr %5, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !172
  %7 = zext nneg i16 %2 to i64
  %8 = getelementptr inbounds [8 x ptr], ptr %0, i64 0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = getelementptr inbounds %struct.octal_node, ptr %9, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %10, ptr noundef %5) #20
  %11 = getelementptr inbounds %struct.octal_node, ptr %0, i64 0, i32 14
  %12 = load i32, ptr %11, align 4, !tbaa !171
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr %11, align 4, !tbaa !171
  %14 = getelementptr inbounds %struct.MetaElem, ptr %1, i64 0, i32 4
  %15 = load i16, ptr %14, align 2, !tbaa !75
  %16 = and i16 %15, 2
  %17 = icmp eq i16 %16, 0
  %18 = load ptr, ptr %8, align 8, !tbaa !45
  br i1 %17, label %19, label %23

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.octal_node, ptr %18, i64 0, i32 12
  %21 = load i32, ptr %20, align 4, !tbaa !169
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %20, align 4, !tbaa !169
  br label %27

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.octal_node, ptr %18, i64 0, i32 13
  %25 = load i32, ptr %24, align 8, !tbaa !167
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %24, align 8, !tbaa !167
  br label %27

27:                                               ; preds = %23, %19
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @find_metaball_octal_node(ptr noundef readonly %0, float noundef %1, float noundef %2, float noundef %3, i16 noundef signext %4) unnamed_addr #14 !PGOFuncName !232 {
  %6 = icmp eq i16 %4, 0
  br i1 %6, label %57, label %7

7:                                                ; preds = %5, %23
  %8 = phi ptr [ %24, %23 ], [ %0, %5 ]
  %9 = getelementptr inbounds %struct.octal_node, ptr %8, i64 0, i32 11
  %10 = load float, ptr %9, align 8, !tbaa !226
  %11 = fcmp ogt float %10, %3
  %12 = getelementptr inbounds %struct.octal_node, ptr %8, i64 0, i32 10
  %13 = load float, ptr %12, align 4, !tbaa !227
  %14 = fcmp ogt float %13, %2
  %15 = getelementptr inbounds %struct.octal_node, ptr %8, i64 0, i32 9
  %16 = load float, ptr %15, align 8, !tbaa !228
  %17 = fcmp ogt float %16, %1
  br i1 %11, label %18, label %38

18:                                               ; preds = %7
  br i1 %14, label %19, label %29

19:                                               ; preds = %18
  br i1 %17, label %20, label %25

20:                                               ; preds = %19
  %21 = load ptr, ptr %8, align 8, !tbaa !45
  %22 = icmp eq ptr %21, null
  br i1 %22, label %57, label %23

23:                                               ; preds = %20, %25, %30, %34, %40, %44, %49, %53
  %24 = phi ptr [ %21, %20 ], [ %27, %25 ], [ %32, %30 ], [ %36, %34 ], [ %42, %40 ], [ %46, %44 ], [ %51, %49 ], [ %55, %53 ]
  br label %7

25:                                               ; preds = %19
  %26 = getelementptr inbounds [8 x ptr], ptr %8, i64 0, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !45
  %28 = icmp eq ptr %27, null
  br i1 %28, label %57, label %23

29:                                               ; preds = %18
  br i1 %17, label %30, label %34

30:                                               ; preds = %29
  %31 = getelementptr inbounds [8 x ptr], ptr %8, i64 0, i64 3
  %32 = load ptr, ptr %31, align 8, !tbaa !45
  %33 = icmp eq ptr %32, null
  br i1 %33, label %57, label %23

34:                                               ; preds = %29
  %35 = getelementptr inbounds [8 x ptr], ptr %8, i64 0, i64 2
  %36 = load ptr, ptr %35, align 8, !tbaa !45
  %37 = icmp eq ptr %36, null
  br i1 %37, label %57, label %23

38:                                               ; preds = %7
  br i1 %14, label %39, label %48

39:                                               ; preds = %38
  br i1 %17, label %40, label %44

40:                                               ; preds = %39
  %41 = getelementptr inbounds [8 x ptr], ptr %8, i64 0, i64 4
  %42 = load ptr, ptr %41, align 8, !tbaa !45
  %43 = icmp eq ptr %42, null
  br i1 %43, label %57, label %23

44:                                               ; preds = %39
  %45 = getelementptr inbounds [8 x ptr], ptr %8, i64 0, i64 5
  %46 = load ptr, ptr %45, align 8, !tbaa !45
  %47 = icmp eq ptr %46, null
  br i1 %47, label %57, label %23

48:                                               ; preds = %38
  br i1 %17, label %49, label %53

49:                                               ; preds = %48
  %50 = getelementptr inbounds [8 x ptr], ptr %8, i64 0, i64 7
  %51 = load ptr, ptr %50, align 8, !tbaa !45
  %52 = icmp eq ptr %51, null
  br i1 %52, label %57, label %23

53:                                               ; preds = %48
  %54 = getelementptr inbounds [8 x ptr], ptr %8, i64 0, i64 6
  %55 = load ptr, ptr %54, align 8, !tbaa !45
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %23

57:                                               ; preds = %20, %25, %30, %34, %40, %44, %49, %53, %5
  %58 = phi ptr [ %0, %5 ], [ %8, %53 ], [ %8, %49 ], [ %8, %44 ], [ %8, %40 ], [ %8, %34 ], [ %8, %30 ], [ %8, %25 ], [ %8, %20 ]
  ret ptr %58
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @makecubetable() unnamed_addr #2 !PGOFuncName !233 {
  %1 = alloca [12 x i32], align 16
  %2 = alloca [8 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #21
  %3 = load i1, ptr @makecubetable.is_done, align 1
  br i1 %3, label %82, label %4

4:                                                ; preds = %0
  store i1 true, ptr @makecubetable.is_done, align 1
  br label %5

5:                                                ; preds = %4, %79
  %6 = phi i64 [ 0, %4 ], [ %80, %79 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %1, i8 0, i64 48, i1 false), !tbaa !96
  %7 = trunc i64 %6 to i32
  %8 = insertelement <4 x i32> poison, i32 %7, i64 0
  %9 = shufflevector <4 x i32> %8, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %10

10:                                               ; preds = %10, %5
  %11 = phi i64 [ 0, %5 ], [ %16, %10 ]
  %12 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %5 ], [ %17, %10 ]
  %13 = lshr <4 x i32> %9, %12
  %14 = and <4 x i32> %13, <i32 1, i32 1, i32 1, i32 1>
  %15 = getelementptr inbounds [8 x i32], ptr %2, i64 0, i64 %11
  store <4 x i32> %14, ptr %15, align 16, !tbaa !96
  %16 = add nuw i64 %11, 4
  %17 = add <4 x i32> %12, <i32 4, i32 4, i32 4, i32 4>
  %18 = icmp eq i64 %16, 8
  br i1 %18, label %19, label %10, !llvm.loop !234

19:                                               ; preds = %10
  %20 = getelementptr inbounds [256 x ptr], ptr @cubetable, i64 0, i64 %6
  br label %21

21:                                               ; preds = %19, %76
  %22 = phi i64 [ 0, %19 ], [ %77, %76 ]
  %23 = getelementptr inbounds [12 x i32], ptr %1, i64 0, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !96
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %76

26:                                               ; preds = %21
  %27 = getelementptr inbounds [12 x i32], ptr @corner1, i64 0, i64 %22
  %28 = load i32, ptr %27, align 4, !tbaa !96
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [8 x i32], ptr %2, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !96
  %32 = getelementptr inbounds [12 x i32], ptr @corner2, i64 0, i64 %22
  %33 = load i32, ptr %32, align 4, !tbaa !96
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i32], ptr %2, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !96
  %37 = icmp eq i32 %31, %36
  br i1 %37, label %76, label %38

38:                                               ; preds = %26
  %39 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %40 = tail call ptr %39(i64 noundef 16, ptr noundef nonnull @.str.16) #20
  %41 = icmp eq i32 %31, 0
  %42 = select i1 %41, ptr @leftface, ptr @rightface
  %43 = getelementptr inbounds [12 x i32], ptr %42, i64 0, i64 %22
  %44 = load i32, ptr %43, align 4, !tbaa !96
  %45 = trunc i64 %22 to i32
  br label %46

46:                                               ; preds = %71, %38
  %47 = phi ptr [ %68, %71 ], [ null, %38 ]
  %48 = phi i32 [ %52, %71 ], [ %45, %38 ]
  %49 = phi i32 [ %72, %71 ], [ %44, %38 ]
  br label %50

50:                                               ; preds = %46, %50
  %51 = phi i32 [ %52, %50 ], [ %48, %46 ]
  %52 = tail call fastcc i32 @nextcwedge(i32 noundef %51, i32 noundef %49) #19, !range !237
  %53 = zext nneg i32 %52 to i64
  %54 = getelementptr inbounds [12 x i32], ptr %1, i64 0, i64 %53
  store i32 1, ptr %54, align 4, !tbaa !96
  %55 = getelementptr inbounds [12 x i32], ptr @corner1, i64 0, i64 %53
  %56 = load i32, ptr %55, align 4, !tbaa !96
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [8 x i32], ptr %2, i64 0, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !96
  %60 = getelementptr inbounds [12 x i32], ptr @corner2, i64 0, i64 %53
  %61 = load i32, ptr %60, align 4, !tbaa !96
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [8 x i32], ptr %2, i64 0, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !96
  %65 = icmp eq i32 %59, %64
  br i1 %65, label %50, label %66

66:                                               ; preds = %50
  %67 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %68 = tail call ptr %67(i64 noundef 16, ptr noundef nonnull @.str.16) #20
  store i32 %52, ptr %68, align 8, !tbaa !238
  %69 = getelementptr inbounds %struct.intlist, ptr %68, i64 0, i32 1
  store ptr %47, ptr %69, align 8, !tbaa !101
  %70 = icmp eq i64 %22, %53
  br i1 %70, label %73, label %71

71:                                               ; preds = %66
  %72 = tail call fastcc i32 @otherface(i32 noundef %52, i32 noundef %49) #19
  br label %46

73:                                               ; preds = %66
  store ptr %68, ptr %40, align 8, !tbaa !100
  %74 = load ptr, ptr %20, align 8, !tbaa !45
  %75 = getelementptr inbounds %struct.intlists, ptr %40, i64 0, i32 1
  store ptr %74, ptr %75, align 8, !tbaa !98
  store ptr %40, ptr %20, align 8, !tbaa !45
  br label %76

76:                                               ; preds = %21, %26, %73
  %77 = add nuw nsw i64 %22, 1
  %78 = icmp eq i64 %77, 12
  br i1 %78, label %79, label %21, !llvm.loop !239

79:                                               ; preds = %76
  %80 = add nuw nsw i64 %6, 1
  %81 = icmp eq i64 %80, 256
  br i1 %81, label %82, label %5, !llvm.loop !240

82:                                               ; preds = %79, %0
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_first_points(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #2 !PGOFuncName !241 {
  %4 = alloca [3 x float], align 8
  %5 = alloca [3 x float], align 8
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 8
  %8 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !113
  %10 = sext i32 %2 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !45
  %13 = getelementptr inbounds %struct.MetaBall, ptr %1, i64 0, i32 17
  %14 = load float, ptr %13, align 4, !tbaa !56
  %15 = getelementptr inbounds %struct.MetaElem, ptr %12, i64 0, i32 16
  %16 = load float, ptr %15, align 8, !tbaa !74
  %17 = fdiv float %14, %16
  %18 = fsub float 1.000000e+00, %17
  %19 = fcmp ogt float %18, 0.000000e+00
  br i1 %19, label %20, label %168

20:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #21
  call fastcc void @calc_mballco(ptr noundef nonnull %12, ptr noundef nonnull %4) #19
  %21 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !126
  %23 = load float, ptr %4, align 8, !tbaa !54
  %24 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !54
  %26 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %27 = load float, ptr %26, align 8, !tbaa !54
  %28 = call float %22(ptr noundef nonnull %0, float noundef %23, float noundef %25, float noundef %27) #20
  %29 = getelementptr inbounds %struct.MetaElem, ptr %12, i64 0, i32 3
  %30 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %31 = getelementptr inbounds %struct.MetaElem, ptr %12, i64 0, i32 13
  %32 = getelementptr inbounds %struct.MetaElem, ptr %12, i64 0, i32 14
  %33 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %34 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 5
  %35 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %36 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %37 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %38 = getelementptr inbounds %struct.MetaElem, ptr %12, i64 0, i32 4
  %39 = getelementptr inbounds %struct.MetaElem, ptr %12, i64 0, i32 12
  %40 = getelementptr inbounds %struct.MetaElem, ptr %12, i64 0, i32 11
  br label %41

41:                                               ; preds = %20, %164
  %42 = phi i64 [ 0, %20 ], [ %165, %164 ]
  %43 = phi float [ 0.000000e+00, %20 ], [ %61, %164 ]
  %44 = phi float [ 0.000000e+00, %20 ], [ %81, %164 ]
  %45 = load i16, ptr %29, align 8, !tbaa !76
  switch i16 %45, label %60 [
    i16 0, label %46
    i16 4, label %52
    i16 5, label %52
    i16 6, label %52
    i16 7, label %52
  ]

46:                                               ; preds = %41
  %47 = getelementptr inbounds [3 x i32], ptr @__const.find_first_points.index, i64 0, i64 %42
  %48 = load i32, ptr %47, align 4, !tbaa !96
  %49 = sitofp i32 %48 to float
  %50 = load float, ptr %32, align 8, !tbaa !72
  %51 = call float @llvm.fmuladd.f32(float %49, float %50, float 0.000000e+00)
  br label %60

52:                                               ; preds = %41, %41, %41, %41
  %53 = getelementptr inbounds [3 x i32], ptr @__const.find_first_points.index, i64 0, i64 %42
  %54 = load i32, ptr %53, align 4, !tbaa !96
  %55 = sitofp i32 %54 to float
  %56 = load float, ptr %40, align 4, !tbaa !157
  %57 = load float, ptr %32, align 8, !tbaa !72
  %58 = fadd float %56, %57
  %59 = call float @llvm.fmuladd.f32(float %55, float %58, float 0.000000e+00)
  br label %60

60:                                               ; preds = %41, %52, %46
  %61 = phi float [ %43, %41 ], [ %59, %52 ], [ %51, %46 ]
  br label %62

62:                                               ; preds = %60, %161
  %63 = phi i64 [ 0, %60 ], [ %162, %161 ]
  %64 = phi float [ %44, %60 ], [ %81, %161 ]
  %65 = load i16, ptr %29, align 8, !tbaa !76
  switch i16 %65, label %80 [
    i16 0, label %66
    i16 4, label %72
    i16 5, label %72
    i16 6, label %72
    i16 7, label %72
  ]

66:                                               ; preds = %62
  %67 = getelementptr inbounds [3 x i32], ptr @__const.find_first_points.index, i64 0, i64 %63
  %68 = load i32, ptr %67, align 4, !tbaa !96
  %69 = sitofp i32 %68 to float
  %70 = load float, ptr %32, align 8, !tbaa !72
  %71 = call float @llvm.fmuladd.f32(float %69, float %70, float 0.000000e+00)
  br label %80

72:                                               ; preds = %62, %62, %62, %62
  %73 = getelementptr inbounds [3 x i32], ptr @__const.find_first_points.index, i64 0, i64 %63
  %74 = load i32, ptr %73, align 4, !tbaa !96
  %75 = sitofp i32 %74 to float
  %76 = load float, ptr %39, align 8, !tbaa !218
  %77 = load float, ptr %32, align 8, !tbaa !72
  %78 = fadd float %76, %77
  %79 = call float @llvm.fmuladd.f32(float %75, float %78, float 0.000000e+00)
  br label %80

80:                                               ; preds = %62, %72, %66
  %81 = phi float [ %64, %62 ], [ %79, %72 ], [ %71, %66 ]
  br label %82

82:                                               ; preds = %80, %158
  %83 = phi i64 [ 0, %80 ], [ %159, %158 ]
  store float %61, ptr %5, align 8, !tbaa !54
  store float %81, ptr %30, align 4, !tbaa !54
  %84 = load i16, ptr %29, align 8, !tbaa !76
  switch i16 %84, label %101 [
    i16 0, label %85
    i16 4, label %85
    i16 5, label %85
    i16 6, label %91
    i16 7, label %91
  ]

85:                                               ; preds = %82, %82, %82
  %86 = getelementptr inbounds [3 x i32], ptr @__const.find_first_points.index, i64 0, i64 %83
  %87 = load i32, ptr %86, align 4, !tbaa !96
  %88 = sitofp i32 %87 to float
  %89 = load float, ptr %32, align 8, !tbaa !72
  %90 = call float @llvm.fmuladd.f32(float %88, float %89, float 0.000000e+00)
  br label %99

91:                                               ; preds = %82, %82
  %92 = getelementptr inbounds [3 x i32], ptr @__const.find_first_points.index, i64 0, i64 %83
  %93 = load i32, ptr %92, align 4, !tbaa !96
  %94 = sitofp i32 %93 to float
  %95 = load float, ptr %31, align 4, !tbaa !162
  %96 = load float, ptr %32, align 8, !tbaa !72
  %97 = fadd float %95, %96
  %98 = call float @llvm.fmuladd.f32(float %94, float %97, float 0.000000e+00)
  br label %99

99:                                               ; preds = %85, %91
  %100 = phi float [ %98, %91 ], [ %90, %85 ]
  store float %100, ptr %33, align 8, !tbaa !54
  br label %101

101:                                              ; preds = %99, %82
  call fastcc void @calc_mballco(ptr noundef nonnull %12, ptr noundef nonnull %5) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %4) #19
  %102 = call fastcc float @len_squared_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %4) #19
  %103 = load float, ptr %34, align 8, !tbaa !127
  %104 = load <2 x float>, ptr %5, align 8, !tbaa !54
  %105 = load <2 x float>, ptr %4, align 8, !tbaa !54
  %106 = fsub <2 x float> %104, %105
  %107 = extractelement <2 x float> %106, i64 0
  %108 = fdiv float %107, %103
  %109 = call float @llvm.fabs.f32(float %108)
  %110 = extractelement <2 x float> %106, i64 1
  %111 = fdiv float %110, %103
  %112 = call float @llvm.fabs.f32(float %111)
  %113 = load float, ptr %33, align 8, !tbaa !54
  %114 = load float, ptr %26, align 8, !tbaa !54
  %115 = fsub float %113, %114
  %116 = fdiv float %115, %103
  %117 = call float @llvm.fabs.f32(float %116)
  %118 = call fastcc float @max_fff(float noundef %109, float noundef %112, float noundef %117) #19
  %119 = fcmp une float %118, 0.000000e+00
  br i1 %119, label %120, label %158

120:                                              ; preds = %101
  %121 = insertelement <2 x float> poison, float %118, i64 0
  %122 = shufflevector <2 x float> %121, <2 x float> poison, <2 x i32> zeroinitializer
  %123 = fdiv <2 x float> %106, %122
  store <2 x float> %123, ptr %7, align 8, !tbaa !54
  %124 = fdiv float %115, %118
  store float %124, ptr %35, align 8, !tbaa !54
  %125 = fcmp ult float %102, 0.000000e+00
  br i1 %125, label %158, label %126

126:                                              ; preds = %120, %155
  %127 = phi float [ %132, %155 ], [ %28, %120 ]
  call fastcc void @add_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %7) #19
  %128 = load ptr, ptr %21, align 8, !tbaa !126
  %129 = load float, ptr %6, align 4, !tbaa !54
  %130 = load float, ptr %36, align 4, !tbaa !54
  %131 = load float, ptr %37, align 4, !tbaa !54
  %132 = call float %128(ptr noundef nonnull %0, float noundef %129, float noundef %130, float noundef %131) #20
  %133 = fcmp olt float %132, 0.000000e+00
  %134 = fcmp oge float %127, 0.000000e+00
  %135 = select i1 %133, i1 %134, i1 false
  br i1 %135, label %140, label %136

136:                                              ; preds = %126
  %137 = fcmp ogt float %132, 0.000000e+00
  %138 = fcmp ole float %127, 0.000000e+00
  %139 = select i1 %137, i1 %138, i1 false
  br i1 %139, label %140, label %155

140:                                              ; preds = %136, %126
  %141 = load float, ptr %34, align 8, !tbaa !127
  %142 = fdiv float %129, %141
  %143 = call float @llvm.floor.f32(float %142)
  %144 = fptosi float %143 to i32
  %145 = fdiv float %130, %141
  %146 = call float @llvm.floor.f32(float %145)
  %147 = fptosi float %146 to i32
  %148 = fdiv float %131, %141
  %149 = call float @llvm.floor.f32(float %148)
  %150 = fptosi float %149 to i32
  %151 = load i16, ptr %38, align 2, !tbaa !75
  %152 = and i16 %151, 2
  %153 = icmp eq i16 %152, 0
  %154 = select i1 %153, i32 1, i32 2
  call fastcc void @add_cube(ptr noundef nonnull %0, i32 noundef %144, i32 noundef %147, i32 noundef %150, i32 noundef %154) #19
  br label %155

155:                                              ; preds = %140, %136
  %156 = call fastcc float @len_squared_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %4) #19
  %157 = fcmp ugt float %156, %102
  br i1 %157, label %158, label %126, !llvm.loop !242

158:                                              ; preds = %155, %120, %101
  %159 = add nuw nsw i64 %83, 1
  %160 = icmp eq i64 %159, 3
  br i1 %160, label %161, label %82, !llvm.loop !243

161:                                              ; preds = %158
  %162 = add nuw nsw i64 %63, 1
  %163 = icmp eq i64 %162, 3
  br i1 %163, label %164, label %62, !llvm.loop !244

164:                                              ; preds = %161
  %165 = add nuw nsw i64 %42, 1
  %166 = icmp eq i64 %165, 3
  br i1 %166, label %167, label %41, !llvm.loop !245

167:                                              ; preds = %164
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #21
  br label %168

168:                                              ; preds = %167, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @docube(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !246 {
  %4 = alloca [8 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  br label %5

5:                                                ; preds = %3, %5
  %6 = phi i64 [ 0, %3 ], [ %17, %5 ]
  %7 = phi i32 [ 0, %3 ], [ %16, %5 ]
  %8 = getelementptr inbounds %struct.cube, ptr %1, i64 0, i32 3, i64 %6
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = getelementptr inbounds %struct.corner, ptr %9, i64 0, i32 4
  %11 = load float, ptr %10, align 8, !tbaa !247
  %12 = fcmp ogt float %11, 0.000000e+00
  %13 = trunc i64 %6 to i32
  %14 = shl nuw nsw i32 1, %13
  %15 = select i1 %12, i32 %14, i32 0
  %16 = add nuw nsw i32 %15, %7
  %17 = add nuw nsw i64 %6, 1
  %18 = icmp eq i64 %17, 8
  br i1 %18, label %19, label %5, !llvm.loop !249

19:                                               ; preds = %5
  %20 = zext nneg i32 %16 to i64
  %21 = getelementptr inbounds [256 x ptr], ptr @cubetable, i64 0, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !45
  %23 = icmp eq ptr %22, null
  br i1 %23, label %113, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds [8 x i32], ptr %4, i64 0, i64 3
  %26 = getelementptr inbounds [8 x i32], ptr %4, i64 0, i64 2
  %27 = getelementptr inbounds [8 x i32], ptr %4, i64 0, i64 1
  %28 = getelementptr inbounds [8 x i32], ptr %4, i64 0, i64 5
  %29 = getelementptr inbounds [8 x i32], ptr %4, i64 0, i64 4
  %30 = getelementptr inbounds [8 x i32], ptr %4, i64 0, i64 6
  br label %31

31:                                               ; preds = %24, %109
  %32 = phi ptr [ %22, %24 ], [ %111, %109 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !45
  %34 = icmp eq ptr %33, null
  br i1 %34, label %109, label %35

35:                                               ; preds = %31, %35
  %36 = phi i64 [ %52, %35 ], [ 0, %31 ]
  %37 = phi ptr [ %54, %35 ], [ %33, %31 ]
  %38 = load i32, ptr %37, align 8, !tbaa !238
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [12 x i32], ptr @corner1, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !96
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.cube, ptr %1, i64 0, i32 3, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !45
  %45 = getelementptr inbounds [12 x i32], ptr @corner2, i64 0, i64 %39
  %46 = load i32, ptr %45, align 4, !tbaa !96
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.cube, ptr %1, i64 0, i32 3, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !45
  %50 = tail call fastcc i32 @vertid(ptr noundef %0, ptr noundef %44, ptr noundef %49, ptr noundef %2) #19
  %51 = getelementptr inbounds [8 x i32], ptr %4, i64 0, i64 %36
  store i32 %50, ptr %51, align 4, !tbaa !96
  %52 = add nuw i64 %36, 1
  %53 = getelementptr inbounds %struct.intlist, ptr %37, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !45
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %35, !llvm.loop !250

56:                                               ; preds = %35
  %57 = trunc i64 %52 to i32
  %58 = icmp ugt i32 %57, 2
  br i1 %58, label %59, label %109

59:                                               ; preds = %56
  switch i32 %57, label %109 [
    i32 3, label %60
    i32 4, label %64
    i32 5, label %72
    i32 6, label %82
    i32 7, label %94
  ]

60:                                               ; preds = %59
  %61 = load i32, ptr %26, align 8, !tbaa !96
  %62 = load i32, ptr %27, align 4, !tbaa !96
  %63 = load i32, ptr %4, align 16, !tbaa !96
  tail call fastcc void @accum_mballfaces(ptr noundef %0, i32 noundef %61, i32 noundef %62, i32 noundef %63, i32 noundef 0) #19
  br label %109

64:                                               ; preds = %59
  %65 = load i32, ptr %4, align 16, !tbaa !96
  %66 = icmp eq i32 %65, 0
  %67 = load i32, ptr %25, align 4, !tbaa !96
  %68 = load i32, ptr %26, align 8, !tbaa !96
  %69 = load i32, ptr %27, align 4, !tbaa !96
  br i1 %66, label %70, label %71

70:                                               ; preds = %64
  tail call fastcc void @accum_mballfaces(ptr noundef %0, i32 noundef 0, i32 noundef %67, i32 noundef %68, i32 noundef %69) #19
  br label %109

71:                                               ; preds = %64
  tail call fastcc void @accum_mballfaces(ptr noundef %0, i32 noundef %67, i32 noundef %68, i32 noundef %69, i32 noundef %65) #19
  br label %109

72:                                               ; preds = %59
  %73 = load i32, ptr %4, align 16, !tbaa !96
  %74 = icmp eq i32 %73, 0
  %75 = load i32, ptr %25, align 4, !tbaa !96
  %76 = load i32, ptr %26, align 8, !tbaa !96
  %77 = load i32, ptr %27, align 4, !tbaa !96
  br i1 %74, label %78, label %79

78:                                               ; preds = %72
  tail call fastcc void @accum_mballfaces(ptr noundef %0, i32 noundef 0, i32 noundef %75, i32 noundef %76, i32 noundef %77) #19
  br label %80

79:                                               ; preds = %72
  tail call fastcc void @accum_mballfaces(ptr noundef %0, i32 noundef %75, i32 noundef %76, i32 noundef %77, i32 noundef %73) #19
  br label %80

80:                                               ; preds = %79, %78
  %81 = load i32, ptr %29, align 16, !tbaa !96
  tail call fastcc void @accum_mballfaces(ptr noundef %0, i32 noundef %81, i32 noundef %75, i32 noundef %73, i32 noundef 0) #19
  br label %109

82:                                               ; preds = %59
  %83 = load i32, ptr %4, align 16, !tbaa !96
  %84 = icmp eq i32 %83, 0
  %85 = load i32, ptr %25, align 4, !tbaa !96
  %86 = load i32, ptr %26, align 8, !tbaa !96
  %87 = load i32, ptr %27, align 4, !tbaa !96
  br i1 %84, label %88, label %91

88:                                               ; preds = %82
  tail call fastcc void @accum_mballfaces(ptr noundef %0, i32 noundef 0, i32 noundef %85, i32 noundef %86, i32 noundef %87) #19
  %89 = load i32, ptr %28, align 4, !tbaa !96
  %90 = load i32, ptr %29, align 16, !tbaa !96
  tail call fastcc void @accum_mballfaces(ptr noundef %0, i32 noundef 0, i32 noundef %89, i32 noundef %90, i32 noundef %85) #19
  br label %109

91:                                               ; preds = %82
  tail call fastcc void @accum_mballfaces(ptr noundef %0, i32 noundef %85, i32 noundef %86, i32 noundef %87, i32 noundef %83) #19
  %92 = load i32, ptr %28, align 4, !tbaa !96
  %93 = load i32, ptr %29, align 16, !tbaa !96
  tail call fastcc void @accum_mballfaces(ptr noundef %0, i32 noundef %92, i32 noundef %93, i32 noundef %85, i32 noundef %83) #19
  br label %109

94:                                               ; preds = %59
  %95 = load i32, ptr %4, align 16, !tbaa !96
  %96 = icmp eq i32 %95, 0
  %97 = load i32, ptr %25, align 4, !tbaa !96
  %98 = load i32, ptr %26, align 8, !tbaa !96
  %99 = load i32, ptr %27, align 4, !tbaa !96
  br i1 %96, label %100, label %103

100:                                              ; preds = %94
  tail call fastcc void @accum_mballfaces(ptr noundef %0, i32 noundef 0, i32 noundef %97, i32 noundef %98, i32 noundef %99) #19
  %101 = load i32, ptr %28, align 4, !tbaa !96
  %102 = load i32, ptr %29, align 16, !tbaa !96
  tail call fastcc void @accum_mballfaces(ptr noundef %0, i32 noundef 0, i32 noundef %101, i32 noundef %102, i32 noundef %97) #19
  br label %106

103:                                              ; preds = %94
  tail call fastcc void @accum_mballfaces(ptr noundef %0, i32 noundef %97, i32 noundef %98, i32 noundef %99, i32 noundef %95) #19
  %104 = load i32, ptr %28, align 4, !tbaa !96
  %105 = load i32, ptr %29, align 16, !tbaa !96
  tail call fastcc void @accum_mballfaces(ptr noundef %0, i32 noundef %104, i32 noundef %105, i32 noundef %97, i32 noundef %95) #19
  br label %106

106:                                              ; preds = %103, %100
  %107 = phi i32 [ %104, %103 ], [ %101, %100 ]
  %108 = load i32, ptr %30, align 8, !tbaa !96
  tail call fastcc void @accum_mballfaces(ptr noundef %0, i32 noundef %108, i32 noundef %107, i32 noundef %95, i32 noundef 0) #19
  br label %109

109:                                              ; preds = %31, %60, %80, %106, %59, %71, %70, %91, %88, %56
  %110 = getelementptr inbounds %struct.intlists, ptr %32, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !45
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %31, !llvm.loop !251

113:                                              ; preds = %109, %19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @testface(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) unnamed_addr #2 !PGOFuncName !252 {
  %11 = alloca %struct.cube, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %11) #21
  %12 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !129
  %14 = zext nneg i32 %6 to i64
  %15 = getelementptr inbounds %struct.cube, ptr %4, i64 0, i32 3, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  %17 = zext nneg i32 %7 to i64
  %18 = getelementptr inbounds %struct.cube, ptr %4, i64 0, i32 3, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !45
  %20 = zext nneg i32 %8 to i64
  %21 = getelementptr inbounds %struct.cube, ptr %4, i64 0, i32 3, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !45
  %23 = zext nneg i32 %9 to i64
  %24 = getelementptr inbounds %struct.cube, ptr %4, i64 0, i32 3, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !45
  %26 = getelementptr inbounds %struct.corner, ptr %16, i64 0, i32 4
  %27 = load float, ptr %26, align 8, !tbaa !247
  %28 = fcmp ogt float %27, 0.000000e+00
  %29 = getelementptr inbounds %struct.corner, ptr %19, i64 0, i32 4
  %30 = load float, ptr %29, align 8, !tbaa !247
  %31 = fcmp ule float %30, 0.000000e+00
  %32 = xor i1 %28, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %10
  %34 = getelementptr inbounds %struct.corner, ptr %22, i64 0, i32 4
  %35 = load float, ptr %34, align 8, !tbaa !247
  %36 = fcmp ule float %35, 0.000000e+00
  %37 = xor i1 %28, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.corner, ptr %25, i64 0, i32 4
  %40 = load float, ptr %39, align 8, !tbaa !247
  %41 = fcmp ule float %40, 0.000000e+00
  %42 = xor i1 %28, %41
  br i1 %42, label %127, label %43

43:                                               ; preds = %38, %33, %10
  %44 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 10
  %45 = load ptr, ptr %44, align 8, !tbaa !187
  %46 = tail call fastcc i32 @setcenter(ptr noundef nonnull %0, ptr noundef %45, i32 noundef %1, i32 noundef %2, i32 noundef %3) #19, !range !253
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %127

48:                                               ; preds = %43
  %49 = tail call fastcc ptr @new_pgn_element(ptr noundef nonnull %0, i32 noundef 88) #19
  store ptr %49, ptr %12, align 8, !tbaa !129
  %50 = getelementptr inbounds %struct.cubes, ptr %49, i64 0, i32 1
  store ptr %13, ptr %50, align 8, !tbaa !192
  store i32 %1, ptr %11, align 8, !tbaa !195
  %51 = getelementptr inbounds %struct.cube, ptr %11, i64 0, i32 1
  store i32 %2, ptr %51, align 4, !tbaa !196
  %52 = getelementptr inbounds %struct.cube, ptr %11, i64 0, i32 2
  store i32 %3, ptr %52, align 8, !tbaa !197
  %53 = getelementptr inbounds i8, ptr %11, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %53, i8 0, i64 64, i1 false), !tbaa !45
  %54 = shl nuw nsw i32 1, %5
  %55 = xor i32 %54, %6
  %56 = zext nneg i32 %55 to i64
  %57 = getelementptr inbounds %struct.cube, ptr %11, i64 0, i32 3, i64 %56
  store ptr %16, ptr %57, align 8, !tbaa !45
  %58 = xor i32 %54, %7
  %59 = zext nneg i32 %58 to i64
  %60 = getelementptr inbounds %struct.cube, ptr %11, i64 0, i32 3, i64 %59
  store ptr %19, ptr %60, align 8, !tbaa !45
  %61 = xor i32 %54, %8
  %62 = zext nneg i32 %61 to i64
  %63 = getelementptr inbounds %struct.cube, ptr %11, i64 0, i32 3, i64 %62
  store ptr %22, ptr %63, align 8, !tbaa !45
  %64 = xor i32 %54, %9
  %65 = zext nneg i32 %64 to i64
  %66 = getelementptr inbounds %struct.cube, ptr %11, i64 0, i32 3, i64 %65
  store ptr %25, ptr %66, align 8, !tbaa !45
  %67 = load ptr, ptr %53, align 8, !tbaa !45
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %48
  %70 = tail call fastcc ptr @setcorner(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #19
  store ptr %70, ptr %53, align 8, !tbaa !45
  br label %71

71:                                               ; preds = %69, %48
  %72 = getelementptr inbounds %struct.cube, ptr %11, i64 0, i32 3, i64 1
  %73 = load ptr, ptr %72, align 8, !tbaa !45
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = add nsw i32 %3, 1
  %77 = tail call fastcc ptr @setcorner(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %76) #19
  store ptr %77, ptr %72, align 8, !tbaa !45
  br label %78

78:                                               ; preds = %75, %71
  %79 = getelementptr inbounds %struct.cube, ptr %11, i64 0, i32 3, i64 2
  %80 = load ptr, ptr %79, align 8, !tbaa !45
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = add nsw i32 %2, 1
  %84 = tail call fastcc ptr @setcorner(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %83, i32 noundef %3) #19
  store ptr %84, ptr %79, align 8, !tbaa !45
  br label %85

85:                                               ; preds = %82, %78
  %86 = getelementptr inbounds %struct.cube, ptr %11, i64 0, i32 3, i64 3
  %87 = load ptr, ptr %86, align 8, !tbaa !45
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = add nsw i32 %2, 1
  %91 = add nsw i32 %3, 1
  %92 = tail call fastcc ptr @setcorner(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %90, i32 noundef %91) #19
  store ptr %92, ptr %86, align 8, !tbaa !45
  br label %93

93:                                               ; preds = %89, %85
  %94 = getelementptr inbounds %struct.cube, ptr %11, i64 0, i32 3, i64 4
  %95 = load ptr, ptr %94, align 8, !tbaa !45
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = add nsw i32 %1, 1
  %99 = tail call fastcc ptr @setcorner(ptr noundef nonnull %0, i32 noundef %98, i32 noundef %2, i32 noundef %3) #19
  store ptr %99, ptr %94, align 8, !tbaa !45
  br label %100

100:                                              ; preds = %97, %93
  %101 = getelementptr inbounds %struct.cube, ptr %11, i64 0, i32 3, i64 5
  %102 = load ptr, ptr %101, align 8, !tbaa !45
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = add nsw i32 %1, 1
  %106 = add nsw i32 %3, 1
  %107 = tail call fastcc ptr @setcorner(ptr noundef nonnull %0, i32 noundef %105, i32 noundef %2, i32 noundef %106) #19
  store ptr %107, ptr %101, align 8, !tbaa !45
  br label %108

108:                                              ; preds = %104, %100
  %109 = getelementptr inbounds %struct.cube, ptr %11, i64 0, i32 3, i64 6
  %110 = load ptr, ptr %109, align 8, !tbaa !45
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = add nsw i32 %1, 1
  %114 = add nsw i32 %2, 1
  %115 = tail call fastcc ptr @setcorner(ptr noundef nonnull %0, i32 noundef %113, i32 noundef %114, i32 noundef %3) #19
  store ptr %115, ptr %109, align 8, !tbaa !45
  br label %116

116:                                              ; preds = %112, %108
  %117 = getelementptr inbounds %struct.cube, ptr %11, i64 0, i32 3, i64 7
  %118 = load ptr, ptr %117, align 8, !tbaa !45
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %125

120:                                              ; preds = %116
  %121 = add nsw i32 %1, 1
  %122 = add nsw i32 %2, 1
  %123 = add nsw i32 %3, 1
  %124 = tail call fastcc ptr @setcorner(ptr noundef nonnull %0, i32 noundef %121, i32 noundef %122, i32 noundef %123) #19
  store ptr %124, ptr %117, align 8, !tbaa !45
  br label %125

125:                                              ; preds = %120, %116
  %126 = load ptr, ptr %12, align 8, !tbaa !129
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %126, ptr noundef nonnull align 8 dereferenceable(80) %11, i64 80, i1 false), !tbaa.struct !191
  br label %127

127:                                              ; preds = %43, %38, %125
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %11) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @nextcwedge(i32 noundef %0, i32 noundef %1) unnamed_addr #15 !PGOFuncName !254 {
  switch i32 %0, label %39 [
    i32 0, label %3
    i32 1, label %6
    i32 2, label %9
    i32 3, label %12
    i32 4, label %15
    i32 5, label %18
    i32 6, label %21
    i32 7, label %24
    i32 8, label %27
    i32 9, label %30
    i32 10, label %33
    i32 11, label %36
  ]

3:                                                ; preds = %2
  %4 = icmp eq i32 %1, 0
  %5 = select i1 %4, i32 3, i32 8
  br label %39

6:                                                ; preds = %2
  %7 = icmp eq i32 %1, 0
  %8 = select i1 %7, i32 2, i32 11
  br label %39

9:                                                ; preds = %2
  %10 = icmp eq i32 %1, 0
  %11 = select i1 %10, i32 0, i32 10
  br label %39

12:                                               ; preds = %2
  %13 = icmp eq i32 %1, 0
  %14 = select i1 %13, i32 1, i32 9
  br label %39

15:                                               ; preds = %2
  %16 = icmp eq i32 %1, 1
  %17 = select i1 %16, i32 6, i32 9
  br label %39

18:                                               ; preds = %2
  %19 = icmp eq i32 %1, 1
  %20 = select i1 %19, i32 7, i32 10
  br label %39

21:                                               ; preds = %2
  %22 = icmp eq i32 %1, 1
  %23 = select i1 %22, i32 5, i32 8
  br label %39

24:                                               ; preds = %2
  %25 = icmp eq i32 %1, 1
  %26 = select i1 %25, i32 4, i32 11
  br label %39

27:                                               ; preds = %2
  %28 = icmp eq i32 %1, 2
  %29 = select i1 %28, i32 4, i32 2
  br label %39

30:                                               ; preds = %2
  %31 = icmp eq i32 %1, 2
  %32 = select i1 %31, i32 0, i32 7
  br label %39

33:                                               ; preds = %2
  %34 = icmp eq i32 %1, 3
  %35 = select i1 %34, i32 1, i32 6
  br label %39

36:                                               ; preds = %2
  %37 = icmp eq i32 %1, 3
  %38 = select i1 %37, i32 5, i32 3
  br label %39

39:                                               ; preds = %2, %36, %33, %30, %27, %24, %21, %18, %15, %12, %9, %6, %3
  %40 = phi i32 [ %38, %36 ], [ %35, %33 ], [ %32, %30 ], [ %29, %27 ], [ %26, %24 ], [ %23, %21 ], [ %20, %18 ], [ %17, %15 ], [ %14, %12 ], [ %11, %9 ], [ %8, %6 ], [ %5, %3 ], [ 0, %2 ]
  ret i32 %40
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @otherface(i32 noundef %0, i32 noundef %1) unnamed_addr #15 !PGOFuncName !255 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [12 x i32], ptr @leftface, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !96
  %6 = icmp eq i32 %5, %1
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = getelementptr inbounds [12 x i32], ptr @rightface, i64 0, i64 %3
  %9 = load i32, ptr %8, align 4, !tbaa !96
  br label %10

10:                                               ; preds = %2, %7
  %11 = phi i32 [ %9, %7 ], [ %5, %2 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !256 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #21
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #19
  %4 = call fastcc float @dot_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #21
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_fff(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #15 !PGOFuncName !257 {
  %4 = tail call fastcc float @max_ff(float noundef %0, float noundef %1) #19
  %5 = tail call fastcc float @max_ff(float noundef %4, float noundef %2) #19
  ret float %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_cube(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #2 !PGOFuncName !258 {
  %6 = icmp sgt i32 %4, -1
  br i1 %6, label %7, label %57

7:                                                ; preds = %5
  %8 = add i32 %4, %1
  %9 = add nsw i32 %1, -1
  %10 = add nsw i32 %2, -1
  %11 = add i32 %4, %2
  %12 = add nsw i32 %3, -1
  %13 = add i32 %4, %3
  %14 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 10
  %15 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 8
  %16 = tail call i32 @llvm.smax.i32(i32 %3, i32 %13)
  %17 = tail call i32 @llvm.smax.i32(i32 %2, i32 %11)
  %18 = tail call i32 @llvm.smax.i32(i32 %1, i32 %8)
  br label %19

19:                                               ; preds = %54, %7
  %20 = phi i32 [ %9, %7 ], [ %55, %54 ]
  br label %21

21:                                               ; preds = %51, %19
  %22 = phi i32 [ %52, %51 ], [ %10, %19 ]
  br label %23

23:                                               ; preds = %21, %48
  %24 = phi i32 [ %49, %48 ], [ %12, %21 ]
  %25 = load ptr, ptr %14, align 8, !tbaa !187
  %26 = tail call fastcc i32 @setcenter(ptr noundef %0, ptr noundef %25, i32 noundef %20, i32 noundef %22, i32 noundef %24) #19, !range !253
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %23
  %29 = tail call fastcc ptr @new_pgn_element(ptr noundef nonnull %0, i32 noundef 88) #19
  %30 = load ptr, ptr %15, align 8, !tbaa !129
  %31 = getelementptr inbounds %struct.cubes, ptr %29, i64 0, i32 1
  store ptr %30, ptr %31, align 8, !tbaa !192
  store ptr %29, ptr %15, align 8, !tbaa !129
  store i32 %20, ptr %29, align 8, !tbaa !259
  %32 = getelementptr inbounds %struct.cube, ptr %29, i64 0, i32 1
  store i32 %22, ptr %32, align 4, !tbaa !260
  %33 = getelementptr inbounds %struct.cube, ptr %29, i64 0, i32 2
  store i32 %24, ptr %33, align 8, !tbaa !261
  br label %34

34:                                               ; preds = %28, %34
  %35 = phi i64 [ 0, %28 ], [ %46, %34 ]
  %36 = trunc i64 %35 to i32
  %37 = lshr i32 %36, 2
  %38 = add nsw i32 %37, %20
  %39 = lshr i32 %36, 1
  %40 = and i32 %39, 1
  %41 = add nsw i32 %40, %22
  %42 = and i32 %36, 1
  %43 = add nsw i32 %42, %24
  %44 = tail call fastcc ptr @setcorner(ptr noundef %0, i32 noundef %38, i32 noundef %41, i32 noundef %43) #19
  %45 = getelementptr inbounds %struct.cube, ptr %29, i64 0, i32 3, i64 %35
  store ptr %44, ptr %45, align 8, !tbaa !45
  %46 = add nuw nsw i64 %35, 1
  %47 = icmp eq i64 %46, 8
  br i1 %47, label %48, label %34, !llvm.loop !262

48:                                               ; preds = %34, %23
  %49 = add i32 %24, 1
  %50 = icmp eq i32 %49, %16
  br i1 %50, label %51, label %23, !llvm.loop !263

51:                                               ; preds = %48
  %52 = add i32 %22, 1
  %53 = icmp eq i32 %52, %17
  br i1 %53, label %54, label %21, !llvm.loop !264

54:                                               ; preds = %51
  %55 = add i32 %20, 1
  %56 = icmp eq i32 %55, %18
  br i1 %56, label %57, label %19, !llvm.loop !265

57:                                               ; preds = %54, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #8 !PGOFuncName !266 {
  %4 = load float, ptr %1, align 4, !tbaa !54
  %5 = load float, ptr %2, align 4, !tbaa !54
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !54
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !54
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !54
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !54
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !54
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !54
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !267 {
  %3 = load float, ptr %0, align 4, !tbaa !54
  %4 = load float, ptr %1, align 4, !tbaa !54
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !54
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !54
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !54
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !54
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #15 !PGOFuncName !268 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @setcenter(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #2 !PGOFuncName !269 {
  %6 = shl i32 %2, 5
  %7 = and i32 %6, 992
  %8 = and i32 %3, 31
  %9 = or disjoint i32 %7, %8
  %10 = shl nuw nsw i32 %9, 5
  %11 = and i32 %4, 31
  %12 = or disjoint i32 %10, %11
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds ptr, ptr %1, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !45
  %16 = icmp eq ptr %15, null
  br i1 %16, label %33, label %17

17:                                               ; preds = %5, %29
  %18 = phi ptr [ %31, %29 ], [ %15, %5 ]
  %19 = load i32, ptr %18, align 8, !tbaa !270
  %20 = icmp eq i32 %19, %2
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.centerlist, ptr %18, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !272
  %24 = icmp eq i32 %23, %3
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.centerlist, ptr %18, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !273
  %28 = icmp eq i32 %27, %4
  br i1 %28, label %38, label %29

29:                                               ; preds = %17, %21, %25
  %30 = getelementptr inbounds %struct.centerlist, ptr %18, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !274
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %17, !llvm.loop !275

33:                                               ; preds = %29, %5
  %34 = tail call fastcc ptr @new_pgn_element(ptr noundef %0, i32 noundef 24) #19
  store i32 %2, ptr %34, align 8, !tbaa !270
  %35 = getelementptr inbounds %struct.centerlist, ptr %34, i64 0, i32 1
  store i32 %3, ptr %35, align 4, !tbaa !272
  %36 = getelementptr inbounds %struct.centerlist, ptr %34, i64 0, i32 2
  store i32 %4, ptr %36, align 8, !tbaa !273
  %37 = getelementptr inbounds %struct.centerlist, ptr %34, i64 0, i32 3
  store ptr %15, ptr %37, align 8, !tbaa !274
  store ptr %34, ptr %14, align 8, !tbaa !45
  br label %38

38:                                               ; preds = %25, %33
  %39 = phi i32 [ 0, %33 ], [ 1, %25 ]
  ret i32 %39
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @setcorner(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 !PGOFuncName !276 {
  %5 = shl i32 %1, 5
  %6 = and i32 %5, 992
  %7 = and i32 %2, 31
  %8 = or disjoint i32 %6, %7
  %9 = shl nuw nsw i32 %8, 5
  %10 = and i32 %3, 31
  %11 = or disjoint i32 %9, %10
  %12 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !188
  %14 = zext nneg i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  %17 = icmp eq ptr %16, null
  br i1 %17, label %34, label %18

18:                                               ; preds = %4, %30
  %19 = phi ptr [ %32, %30 ], [ %16, %4 ]
  %20 = load i32, ptr %19, align 8, !tbaa !277
  %21 = icmp eq i32 %20, %1
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.corner, ptr %19, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !278
  %25 = icmp eq i32 %24, %2
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.corner, ptr %19, i64 0, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !279
  %29 = icmp eq i32 %28, %3
  br i1 %29, label %62, label %30

30:                                               ; preds = %18, %22, %26
  %31 = getelementptr inbounds %struct.corner, ptr %19, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !45
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %18, !llvm.loop !280

34:                                               ; preds = %30, %4
  %35 = tail call fastcc ptr @new_pgn_element(ptr noundef %0, i32 noundef 40) #19
  store i32 %1, ptr %35, align 8, !tbaa !277
  %36 = sitofp i32 %1 to float
  %37 = fadd float %36, -5.000000e-01
  %38 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 5
  %39 = load float, ptr %38, align 8, !tbaa !127
  %40 = fmul float %37, %39
  %41 = getelementptr inbounds %struct.corner, ptr %35, i64 0, i32 3
  store float %40, ptr %41, align 4, !tbaa !54
  %42 = getelementptr inbounds %struct.corner, ptr %35, i64 0, i32 1
  store i32 %2, ptr %42, align 4, !tbaa !278
  %43 = sitofp i32 %2 to float
  %44 = fadd float %43, -5.000000e-01
  %45 = load float, ptr %38, align 8, !tbaa !127
  %46 = fmul float %44, %45
  %47 = getelementptr inbounds %struct.corner, ptr %35, i64 0, i32 3, i64 1
  store float %46, ptr %47, align 4, !tbaa !54
  %48 = getelementptr inbounds %struct.corner, ptr %35, i64 0, i32 2
  store i32 %3, ptr %48, align 8, !tbaa !279
  %49 = sitofp i32 %3 to float
  %50 = fadd float %49, -5.000000e-01
  %51 = load float, ptr %38, align 8, !tbaa !127
  %52 = fmul float %50, %51
  %53 = getelementptr inbounds %struct.corner, ptr %35, i64 0, i32 3, i64 2
  store float %52, ptr %53, align 4, !tbaa !54
  %54 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 4
  %55 = load ptr, ptr %54, align 8, !tbaa !126
  %56 = tail call float %55(ptr noundef %0, float noundef %40, float noundef %46, float noundef %52) #20
  %57 = getelementptr inbounds %struct.corner, ptr %35, i64 0, i32 4
  store float %56, ptr %57, align 8, !tbaa !247
  %58 = load ptr, ptr %12, align 8, !tbaa !188
  %59 = getelementptr inbounds ptr, ptr %58, i64 %14
  %60 = load ptr, ptr %59, align 8, !tbaa !45
  %61 = getelementptr inbounds %struct.corner, ptr %35, i64 0, i32 5
  store ptr %60, ptr %61, align 8, !tbaa !281
  store ptr %35, ptr %59, align 8, !tbaa !45
  br label %62

62:                                               ; preds = %26, %34
  %63 = phi ptr [ %35, %34 ], [ %19, %26 ]
  ret ptr %63
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @vertid(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #2 !PGOFuncName !282 {
  %5 = alloca %struct.vertex, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #21
  %6 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !189
  %8 = load i32, ptr %1, align 8, !tbaa !277
  %9 = getelementptr inbounds %struct.corner, ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !278
  %11 = getelementptr inbounds %struct.corner, ptr %1, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !279
  %13 = load i32, ptr %2, align 8, !tbaa !277
  %14 = getelementptr inbounds %struct.corner, ptr %2, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !278
  %16 = getelementptr inbounds %struct.corner, ptr %2, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !279
  %18 = tail call fastcc i32 @getedge(ptr noundef %7, i32 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %13, i32 noundef %15, i32 noundef %17) #19
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %38

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.corner, ptr %1, i64 0, i32 3
  %22 = getelementptr inbounds %struct.corner, ptr %2, i64 0, i32 3
  %23 = getelementptr inbounds %struct.corner, ptr %1, i64 0, i32 4
  %24 = load float, ptr %23, align 8, !tbaa !247
  %25 = getelementptr inbounds %struct.corner, ptr %2, i64 0, i32 4
  %26 = load float, ptr %25, align 8, !tbaa !247
  call fastcc void @converge(ptr noundef nonnull %0, ptr noundef nonnull %21, ptr noundef nonnull %22, float noundef %24, float noundef %26, ptr noundef nonnull %5, ptr noundef %3) #19
  %27 = getelementptr inbounds %struct.vertex, ptr %5, i64 0, i32 1
  call fastcc void @vnormal(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %27) #19
  %28 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 9
  call fastcc void @addtovertices(ptr noundef nonnull %28, ptr noundef nonnull byval(%struct.vertex) align 8 %5) #19
  %29 = load i32, ptr %28, align 8, !tbaa !134
  %30 = add nsw i32 %29, -1
  %31 = load ptr, ptr %6, align 8, !tbaa !189
  %32 = load i32, ptr %1, align 8, !tbaa !277
  %33 = load i32, ptr %9, align 4, !tbaa !278
  %34 = load i32, ptr %11, align 8, !tbaa !279
  %35 = load i32, ptr %2, align 8, !tbaa !277
  %36 = load i32, ptr %14, align 4, !tbaa !278
  %37 = load i32, ptr %16, align 8, !tbaa !279
  call fastcc void @setedge(ptr noundef nonnull %0, ptr noundef %31, i32 noundef %32, i32 noundef %33, i32 noundef %34, i32 noundef %35, i32 noundef %36, i32 noundef %37, i32 noundef %30) #19
  br label %38

38:                                               ; preds = %4, %20
  %39 = phi i32 [ %30, %20 ], [ %18, %4 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #21
  ret i32 %39
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @accum_mballfaces(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #2 !PGOFuncName !283 {
  %6 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 14
  %7 = load i32, ptr %6, align 8, !tbaa !284
  %8 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 15
  %9 = load i32, ptr %8, align 4, !tbaa !131
  %10 = icmp eq i32 %7, %9
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 13
  %13 = load ptr, ptr %12, align 8, !tbaa !136
  br label %32

14:                                               ; preds = %5
  %15 = add nsw i32 %7, 256
  store i32 %15, ptr %6, align 8, !tbaa !284
  %16 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %17 = sext i32 %15 to i64
  %18 = shl nsw i64 %17, 4
  %19 = tail call ptr %16(i64 noundef %18, ptr noundef nonnull @.str.18) #20
  %20 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 13
  %21 = load ptr, ptr %20, align 8, !tbaa !136
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %14
  %24 = load i32, ptr %6, align 8, !tbaa !284
  %25 = add nsw i32 %24, -256
  %26 = sext i32 %25 to i64
  %27 = shl nsw i64 %26, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %19, ptr nonnull align 4 %21, i64 %27, i1 false)
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %29 = load ptr, ptr %20, align 8, !tbaa !136
  tail call void %28(ptr noundef %29) #20
  br label %30

30:                                               ; preds = %23, %14
  store ptr %19, ptr %20, align 8, !tbaa !136
  %31 = load i32, ptr %8, align 4, !tbaa !131
  br label %32

32:                                               ; preds = %11, %30
  %33 = phi i32 [ %9, %11 ], [ %31, %30 ]
  %34 = phi ptr [ %13, %11 ], [ %19, %30 ]
  %35 = shl nsw i32 %33, 2
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, ptr %34, i64 %36
  store i32 %1, ptr %37, align 4, !tbaa !96
  %38 = getelementptr inbounds i32, ptr %37, i64 1
  store i32 %2, ptr %38, align 4, !tbaa !96
  %39 = getelementptr inbounds i32, ptr %37, i64 2
  store i32 %3, ptr %39, align 4, !tbaa !96
  %40 = icmp eq i32 %4, 0
  %41 = select i1 %40, i32 %3, i32 %4
  %42 = getelementptr inbounds i32, ptr %37, i64 3
  store i32 %41, ptr %42, align 4
  %43 = load i32, ptr %8, align 4, !tbaa !131
  %44 = add nsw i32 %43, 1
  store i32 %44, ptr %8, align 4, !tbaa !131
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @getedge(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #14 !PGOFuncName !285 {
  %8 = icmp sgt i32 %1, %4
  br i1 %8, label %17, label %9

9:                                                ; preds = %7
  %10 = icmp eq i32 %1, %4
  br i1 %10, label %11, label %18

11:                                               ; preds = %9
  %12 = icmp sgt i32 %2, %5
  br i1 %12, label %17, label %13

13:                                               ; preds = %11
  %14 = icmp eq i32 %2, %5
  %15 = icmp sgt i32 %3, %6
  %16 = and i1 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %11, %7
  br label %18

18:                                               ; preds = %17, %13, %9
  %19 = phi i32 [ %4, %17 ], [ %1, %13 ], [ %1, %9 ]
  %20 = phi i32 [ %5, %17 ], [ %2, %13 ], [ %2, %9 ]
  %21 = phi i32 [ %6, %17 ], [ %3, %13 ], [ %3, %9 ]
  %22 = phi i32 [ %1, %17 ], [ %1, %13 ], [ %4, %9 ]
  %23 = phi i32 [ %2, %17 ], [ %5, %13 ], [ %5, %9 ]
  %24 = phi i32 [ %3, %17 ], [ %6, %13 ], [ %6, %9 ]
  %25 = shl i32 %19, 5
  %26 = and i32 %25, 992
  %27 = and i32 %20, 31
  %28 = or disjoint i32 %26, %27
  %29 = shl nuw nsw i32 %28, 5
  %30 = and i32 %21, 31
  %31 = shl i32 %22, 5
  %32 = and i32 %31, 992
  %33 = and i32 %23, 31
  %34 = or disjoint i32 %32, %33
  %35 = shl nuw nsw i32 %34, 5
  %36 = and i32 %24, 31
  %37 = or disjoint i32 %29, %30
  %38 = add nuw nsw i32 %37, %36
  %39 = add nuw nsw i32 %38, %35
  %40 = zext nneg i32 %39 to i64
  %41 = getelementptr inbounds ptr, ptr %0, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !45
  %43 = icmp eq ptr %42, null
  br i1 %43, label %75, label %44

44:                                               ; preds = %18, %71
  %45 = phi ptr [ %73, %71 ], [ %42, %18 ]
  %46 = load i32, ptr %45, align 8, !tbaa !286
  %47 = icmp eq i32 %46, %19
  br i1 %47, label %48, label %71

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.edgelist, ptr %45, i64 0, i32 1
  %50 = load i32, ptr %49, align 4, !tbaa !288
  %51 = icmp eq i32 %50, %20
  br i1 %51, label %52, label %71

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.edgelist, ptr %45, i64 0, i32 2
  %54 = load i32, ptr %53, align 8, !tbaa !289
  %55 = icmp eq i32 %54, %21
  br i1 %55, label %56, label %71

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.edgelist, ptr %45, i64 0, i32 3
  %58 = load i32, ptr %57, align 4, !tbaa !290
  %59 = icmp eq i32 %58, %22
  br i1 %59, label %60, label %71

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.edgelist, ptr %45, i64 0, i32 4
  %62 = load i32, ptr %61, align 8, !tbaa !291
  %63 = icmp eq i32 %62, %23
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.edgelist, ptr %45, i64 0, i32 5
  %66 = load i32, ptr %65, align 4, !tbaa !292
  %67 = icmp eq i32 %66, %24
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.edgelist, ptr %45, i64 0, i32 6
  %70 = load i32, ptr %69, align 8, !tbaa !293
  br label %75

71:                                               ; preds = %44, %48, %52, %56, %60, %64
  %72 = getelementptr inbounds %struct.edgelist, ptr %45, i64 0, i32 7
  %73 = load ptr, ptr %72, align 8, !tbaa !45
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %44, !llvm.loop !294

75:                                               ; preds = %71, %18, %68
  %76 = phi i32 [ %70, %68 ], [ -1, %18 ], [ -1, %71 ]
  ret i32 %76
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @converge(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3, float noundef %4, ptr noundef %5, ptr nocapture noundef readonly %6) unnamed_addr #2 !PGOFuncName !295 {
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 8
  %10 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #21
  %11 = fcmp olt float %3, 0.000000e+00
  %12 = select i1 %11, ptr %2, ptr %1
  %13 = select i1 %11, ptr %1, ptr %2
  %14 = select i1 %11, float %4, float %3
  %15 = select i1 %11, float %3, float %4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef %12) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef %13) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %9) #19
  %16 = getelementptr inbounds %struct.MetaBall, ptr %6, i64 0, i32 17
  %17 = load float, ptr %16, align 4, !tbaa !56
  %18 = fcmp ogt float %17, 0x3FC99999A0000000
  %19 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  %20 = load float, ptr %19, align 4
  br i1 %18, label %24, label %21

21:                                               ; preds = %7
  %22 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %23 = load float, ptr %22, align 4
  br label %67

24:                                               ; preds = %7
  %25 = fcmp oeq float %20, 0.000000e+00
  %26 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %27 = load float, ptr %26, align 4
  %28 = fcmp oeq float %27, 0.000000e+00
  %29 = select i1 %25, i1 %28, i1 false
  br i1 %29, label %30, label %42

30:                                               ; preds = %24
  %31 = load float, ptr %9, align 8, !tbaa !54
  %32 = load float, ptr %10, align 4, !tbaa !54
  %33 = fmul float %15, %32
  %34 = fsub float %14, %15
  %35 = fdiv float %33, %34
  %36 = fsub float %31, %35
  store float %36, ptr %5, align 4, !tbaa !54
  %37 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !54
  %39 = getelementptr inbounds float, ptr %5, i64 1
  store float %38, ptr %39, align 4, !tbaa !54
  %40 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %41 = load float, ptr %40, align 8, !tbaa !54
  br label %169

42:                                               ; preds = %24
  %43 = load float, ptr %10, align 4, !tbaa !54
  %44 = fcmp oeq float %43, 0.000000e+00
  %45 = select i1 %44, i1 %28, i1 false
  br i1 %45, label %46, label %57

46:                                               ; preds = %42
  %47 = load float, ptr %9, align 8, !tbaa !54
  store float %47, ptr %5, align 4, !tbaa !54
  %48 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !54
  %50 = fmul float %15, %20
  %51 = fsub float %14, %15
  %52 = fdiv float %50, %51
  %53 = fsub float %49, %52
  %54 = getelementptr inbounds float, ptr %5, i64 1
  store float %53, ptr %54, align 4, !tbaa !54
  %55 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %56 = load float, ptr %55, align 8, !tbaa !54
  br label %169

57:                                               ; preds = %42
  %58 = and i1 %25, %44
  br i1 %58, label %59, label %67

59:                                               ; preds = %57
  %60 = load <2 x float>, ptr %9, align 8, !tbaa !54
  store <2 x float> %60, ptr %5, align 4, !tbaa !54
  %61 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %62 = load float, ptr %61, align 8, !tbaa !54
  %63 = fmul float %15, %27
  %64 = fsub float %14, %15
  %65 = fdiv float %63, %64
  %66 = fsub float %62, %65
  br label %169

67:                                               ; preds = %21, %57
  %68 = phi float [ %23, %21 ], [ %27, %57 ]
  %69 = fcmp oeq float %20, 0.000000e+00
  %70 = fcmp oeq float %68, 0.000000e+00
  %71 = select i1 %69, i1 %70, i1 false
  br i1 %71, label %72, label %96

72:                                               ; preds = %67
  %73 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  %74 = getelementptr inbounds float, ptr %5, i64 1
  %75 = getelementptr inbounds float, ptr %5, i64 2
  %76 = load <2 x float>, ptr %73, align 4, !tbaa !54
  store <2 x float> %76, ptr %74, align 4, !tbaa !54
  %77 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 4
  %78 = load float, ptr %8, align 4, !tbaa !54
  %79 = load float, ptr %9, align 8, !tbaa !54
  br label %80

80:                                               ; preds = %72, %80
  %81 = phi i32 [ 1, %72 ], [ %94, %80 ]
  %82 = phi float [ %78, %72 ], [ %93, %80 ]
  %83 = phi float [ %79, %72 ], [ %92, %80 ]
  %84 = fadd float %82, %83
  %85 = fmul float %84, 5.000000e-01
  store float %85, ptr %5, align 4, !tbaa !54
  %86 = load ptr, ptr %77, align 8, !tbaa !126
  %87 = load float, ptr %74, align 4, !tbaa !54
  %88 = load float, ptr %75, align 4, !tbaa !54
  %89 = tail call float %86(ptr noundef %0, float noundef %85, float noundef %87, float noundef %88) #20
  %90 = fcmp ogt float %89, 0.000000e+00
  %91 = load float, ptr %5, align 4, !tbaa !54
  %92 = select i1 %90, float %83, float %91
  %93 = select i1 %90, float %91, float %82
  %94 = add nuw nsw i32 %81, 1
  %95 = icmp eq i32 %81, 12
  br i1 %95, label %172, label %80

96:                                               ; preds = %67
  %97 = load float, ptr %10, align 4, !tbaa !54
  %98 = fcmp oeq float %97, 0.000000e+00
  %99 = select i1 %98, i1 %70, i1 false
  br i1 %99, label %100, label %127

100:                                              ; preds = %96
  %101 = load float, ptr %9, align 8, !tbaa !54
  store float %101, ptr %5, align 4, !tbaa !54
  %102 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %103 = load float, ptr %102, align 8, !tbaa !54
  %104 = getelementptr inbounds float, ptr %5, i64 2
  store float %103, ptr %104, align 4, !tbaa !54
  %105 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  %106 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  %107 = getelementptr inbounds float, ptr %5, i64 1
  %108 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 4
  %109 = load float, ptr %105, align 4, !tbaa !54
  %110 = load float, ptr %106, align 4, !tbaa !54
  br label %111

111:                                              ; preds = %100, %111
  %112 = phi i32 [ 1, %100 ], [ %125, %111 ]
  %113 = phi float [ %109, %100 ], [ %124, %111 ]
  %114 = phi float [ %110, %100 ], [ %123, %111 ]
  %115 = fadd float %113, %114
  %116 = fmul float %115, 5.000000e-01
  store float %116, ptr %107, align 4, !tbaa !54
  %117 = load ptr, ptr %108, align 8, !tbaa !126
  %118 = load float, ptr %5, align 4, !tbaa !54
  %119 = load float, ptr %104, align 4, !tbaa !54
  %120 = tail call float %117(ptr noundef %0, float noundef %118, float noundef %116, float noundef %119) #20
  %121 = fcmp ogt float %120, 0.000000e+00
  %122 = load float, ptr %107, align 4, !tbaa !54
  %123 = select i1 %121, float %114, float %122
  %124 = select i1 %121, float %122, float %113
  %125 = add nuw nsw i32 %112, 1
  %126 = icmp eq i32 %112, 12
  br i1 %126, label %172, label %111

127:                                              ; preds = %96
  %128 = and i1 %69, %98
  br i1 %128, label %133, label %129

129:                                              ; preds = %127
  call void @mid_v3_v3v3(ptr noundef %5, ptr noundef nonnull %8, ptr noundef nonnull %9) #20
  %130 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 4
  %131 = getelementptr inbounds float, ptr %5, i64 1
  %132 = getelementptr inbounds float, ptr %5, i64 2
  br label %158

133:                                              ; preds = %127
  %134 = getelementptr inbounds float, ptr %5, i64 1
  %135 = load <2 x float>, ptr %9, align 8, !tbaa !54
  store <2 x float> %135, ptr %5, align 4, !tbaa !54
  %136 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %137 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %138 = getelementptr inbounds float, ptr %5, i64 2
  %139 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 4
  %140 = load float, ptr %136, align 4, !tbaa !54
  %141 = load float, ptr %137, align 8, !tbaa !54
  br label %142

142:                                              ; preds = %133, %142
  %143 = phi i32 [ 1, %133 ], [ %156, %142 ]
  %144 = phi float [ %140, %133 ], [ %155, %142 ]
  %145 = phi float [ %141, %133 ], [ %154, %142 ]
  %146 = fadd float %144, %145
  %147 = fmul float %146, 5.000000e-01
  store float %147, ptr %138, align 4, !tbaa !54
  %148 = load ptr, ptr %139, align 8, !tbaa !126
  %149 = load float, ptr %5, align 4, !tbaa !54
  %150 = load float, ptr %134, align 4, !tbaa !54
  %151 = tail call float %148(ptr noundef %0, float noundef %149, float noundef %150, float noundef %147) #20
  %152 = fcmp ogt float %151, 0.000000e+00
  %153 = load float, ptr %138, align 4, !tbaa !54
  %154 = select i1 %152, float %145, float %153
  %155 = select i1 %152, float %153, float %144
  %156 = add nuw nsw i32 %143, 1
  %157 = icmp eq i32 %143, 12
  br i1 %157, label %172, label %142

158:                                              ; preds = %129, %158
  %159 = phi i32 [ 1, %129 ], [ %167, %158 ]
  %160 = load ptr, ptr %130, align 8, !tbaa !126
  %161 = load float, ptr %5, align 4, !tbaa !54
  %162 = load float, ptr %131, align 4, !tbaa !54
  %163 = load float, ptr %132, align 4, !tbaa !54
  %164 = call float %160(ptr noundef %0, float noundef %161, float noundef %162, float noundef %163) #20
  %165 = fcmp ogt float %164, 0.000000e+00
  %166 = select i1 %165, ptr %8, ptr %9
  call fastcc void @copy_v3_v3(ptr noundef nonnull %166, ptr noundef nonnull %5) #19
  call void @mid_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %8, ptr noundef nonnull %9) #20
  %167 = add nuw nsw i32 %159, 1
  %168 = icmp eq i32 %159, 12
  br i1 %168, label %172, label %158

169:                                              ; preds = %30, %46, %59
  %170 = phi float [ %66, %59 ], [ %56, %46 ], [ %41, %30 ]
  %171 = getelementptr inbounds float, ptr %5, i64 2
  store float %170, ptr %171, align 4, !tbaa !54
  br label %172

172:                                              ; preds = %158, %142, %111, %80, %169
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vnormal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #2 !PGOFuncName !296 {
  %4 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 6
  %5 = load float, ptr %4, align 4, !tbaa !130
  %6 = fmul float %5, 0x3FC99999A0000000
  %7 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !126
  %9 = load float, ptr %1, align 4, !tbaa !54
  %10 = getelementptr inbounds float, ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !54
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !54
  %14 = tail call float %8(ptr noundef %0, float noundef %9, float noundef %11, float noundef %13) #20
  %15 = load ptr, ptr %7, align 8, !tbaa !126
  %16 = load float, ptr %1, align 4, !tbaa !54
  %17 = fadd float %6, %16
  %18 = load float, ptr %10, align 4, !tbaa !54
  %19 = load float, ptr %12, align 4, !tbaa !54
  %20 = tail call float %15(ptr noundef %0, float noundef %17, float noundef %18, float noundef %19) #20
  %21 = fsub float %20, %14
  store float %21, ptr %2, align 4, !tbaa !54
  %22 = load ptr, ptr %7, align 8, !tbaa !126
  %23 = load float, ptr %1, align 4, !tbaa !54
  %24 = load float, ptr %10, align 4, !tbaa !54
  %25 = fadd float %6, %24
  %26 = load float, ptr %12, align 4, !tbaa !54
  %27 = tail call float %22(ptr noundef %0, float noundef %23, float noundef %25, float noundef %26) #20
  %28 = fsub float %27, %14
  %29 = getelementptr inbounds float, ptr %2, i64 1
  store float %28, ptr %29, align 4, !tbaa !54
  %30 = load ptr, ptr %7, align 8, !tbaa !126
  %31 = load float, ptr %1, align 4, !tbaa !54
  %32 = load float, ptr %10, align 4, !tbaa !54
  %33 = load float, ptr %12, align 4, !tbaa !54
  %34 = fadd float %6, %33
  %35 = tail call float %30(ptr noundef %0, float noundef %31, float noundef %32, float noundef %34) #20
  %36 = fsub float %35, %14
  %37 = getelementptr inbounds float, ptr %2, i64 2
  store float %36, ptr %37, align 4, !tbaa !54
  tail call fastcc void @normalize_v3(ptr noundef nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @addtovertices(ptr nocapture noundef %0, ptr nocapture noundef readonly byval(%struct.vertex) align 8 %1) unnamed_addr #2 !PGOFuncName !297 {
  %3 = load i32, ptr %0, align 8, !tbaa !298
  %4 = getelementptr inbounds %struct.vertices, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !299
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.vertices, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !300
  br label %41

10:                                               ; preds = %2
  %11 = icmp eq i32 %3, 0
  %12 = shl nsw i32 %3, 1
  %13 = select i1 %11, i32 10, i32 %12
  store i32 %13, ptr %4, align 4, !tbaa !299
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %15 = sext i32 %13 to i64
  %16 = mul nsw i64 %15, 24
  %17 = tail call ptr %14(i64 noundef %16, ptr noundef nonnull @.str.17) #20
  %18 = load i32, ptr %0, align 8, !tbaa !298
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.vertices, ptr %0, i64 0, i32 2
  br label %22

22:                                               ; preds = %20, %22
  %23 = phi i64 [ 0, %20 ], [ %27, %22 ]
  %24 = getelementptr inbounds %struct.vertex, ptr %17, i64 %23
  %25 = load ptr, ptr %21, align 8, !tbaa !300
  %26 = getelementptr inbounds %struct.vertex, ptr %25, i64 %23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %24, ptr noundef nonnull align 4 dereferenceable(24) %26, i64 24, i1 false), !tbaa.struct !301
  %27 = add nuw nsw i64 %23, 1
  %28 = load i32, ptr %0, align 8, !tbaa !298
  %29 = sext i32 %28 to i64
  %30 = icmp slt i64 %27, %29
  br i1 %30, label %22, label %31, !llvm.loop !302

31:                                               ; preds = %22, %10
  %32 = phi i32 [ %18, %10 ], [ %28, %22 ]
  %33 = getelementptr inbounds %struct.vertices, ptr %0, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !300
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %37(ptr noundef nonnull %34) #20
  %38 = load i32, ptr %0, align 8, !tbaa !298
  br label %39

39:                                               ; preds = %36, %31
  %40 = phi i32 [ %38, %36 ], [ %32, %31 ]
  store ptr %17, ptr %33, align 8, !tbaa !300
  br label %41

41:                                               ; preds = %7, %39
  %42 = phi i32 [ %3, %7 ], [ %40, %39 ]
  %43 = phi ptr [ %9, %7 ], [ %17, %39 ]
  %44 = add nsw i32 %42, 1
  store i32 %44, ptr %0, align 8, !tbaa !298
  %45 = sext i32 %42 to i64
  %46 = getelementptr inbounds %struct.vertex, ptr %43, i64 %45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %46, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !301
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setedge(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #2 !PGOFuncName !303 {
  %10 = icmp sgt i32 %2, %5
  br i1 %10, label %19, label %11

11:                                               ; preds = %9
  %12 = icmp eq i32 %2, %5
  br i1 %12, label %13, label %20

13:                                               ; preds = %11
  %14 = icmp sgt i32 %3, %6
  br i1 %14, label %19, label %15

15:                                               ; preds = %13
  %16 = icmp eq i32 %3, %6
  %17 = icmp sgt i32 %4, %7
  %18 = and i1 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %13, %9
  br label %20

20:                                               ; preds = %19, %15, %11
  %21 = phi i32 [ %3, %19 ], [ %6, %15 ], [ %6, %11 ]
  %22 = phi i32 [ %4, %19 ], [ %7, %15 ], [ %7, %11 ]
  %23 = phi i32 [ %2, %19 ], [ %2, %15 ], [ %5, %11 ]
  %24 = phi i32 [ %7, %19 ], [ %4, %15 ], [ %4, %11 ]
  %25 = phi i32 [ %6, %19 ], [ %3, %15 ], [ %3, %11 ]
  %26 = phi i32 [ %5, %19 ], [ %2, %15 ], [ %2, %11 ]
  %27 = shl i32 %26, 5
  %28 = and i32 %27, 992
  %29 = and i32 %25, 31
  %30 = or disjoint i32 %28, %29
  %31 = shl nuw nsw i32 %30, 5
  %32 = and i32 %24, 31
  %33 = shl i32 %23, 5
  %34 = and i32 %33, 992
  %35 = and i32 %21, 31
  %36 = or disjoint i32 %34, %35
  %37 = shl nuw nsw i32 %36, 5
  %38 = and i32 %22, 31
  %39 = add nuw nsw i32 %32, %38
  %40 = add nuw nsw i32 %39, %37
  %41 = add nuw nsw i32 %40, %31
  %42 = tail call fastcc ptr @new_pgn_element(ptr noundef %0, i32 noundef 40) #19
  store i32 %26, ptr %42, align 8, !tbaa !286
  %43 = getelementptr inbounds %struct.edgelist, ptr %42, i64 0, i32 1
  store i32 %25, ptr %43, align 4, !tbaa !288
  %44 = getelementptr inbounds %struct.edgelist, ptr %42, i64 0, i32 2
  store i32 %24, ptr %44, align 8, !tbaa !289
  %45 = getelementptr inbounds %struct.edgelist, ptr %42, i64 0, i32 3
  store i32 %23, ptr %45, align 4, !tbaa !290
  %46 = getelementptr inbounds %struct.edgelist, ptr %42, i64 0, i32 4
  store i32 %21, ptr %46, align 8, !tbaa !291
  %47 = getelementptr inbounds %struct.edgelist, ptr %42, i64 0, i32 5
  store i32 %22, ptr %47, align 4, !tbaa !292
  %48 = getelementptr inbounds %struct.edgelist, ptr %42, i64 0, i32 6
  store i32 %8, ptr %48, align 8, !tbaa !293
  %49 = zext nneg i32 %41 to i64
  %50 = getelementptr inbounds ptr, ptr %1, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !45
  %52 = getelementptr inbounds %struct.edgelist, ptr %42, i64 0, i32 7
  store ptr %51, ptr %52, align 8, !tbaa !304
  store ptr %42, ptr %50, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #16 !PGOFuncName !305 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #16 !PGOFuncName !306 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #19
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #20
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #19
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #19
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #8 !PGOFuncName !307 {
  %4 = load float, ptr %1, align 4, !tbaa !54
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !54
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !54
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !54
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !54
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !54
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { optsize }
attributes #20 = { nounwind optsize }
attributes #21 = { nounwind }
attributes #22 = { nounwind optsize willreturn memory(read) }
attributes #23 = { nounwind optsize willreturn memory(none) }

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
!34 = !{!35, !40, i64 186}
!35 = !{!"MetaBall", !36, i64 0, !37, i64 120, !42, i64 128, !42, i64 144, !37, i64 160, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 185, !40, i64 186, !40, i64 188, !40, i64 190, !38, i64 192, !38, i64 204, !38, i64 216, !43, i64 228, !43, i64 232, !43, i64 236, !37, i64 240}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"ListBase", !37, i64 0, !37, i64 8}
!43 = !{!"float", !38, i64 0}
!44 = !{!35, !37, i64 176}
!45 = !{!37, !37, i64 0}
!46 = !{!47, !41, i64 100}
!47 = !{!"Material", !36, i64 0, !37, i64 120, !40, i64 128, !40, i64 130, !43, i64 132, !43, i64 136, !43, i64 140, !43, i64 144, !43, i64 148, !43, i64 152, !43, i64 156, !43, i64 160, !43, i64 164, !43, i64 168, !43, i64 172, !43, i64 176, !43, i64 180, !43, i64 184, !43, i64 188, !43, i64 192, !43, i64 196, !43, i64 200, !43, i64 204, !43, i64 208, !43, i64 212, !43, i64 216, !43, i64 220, !48, i64 224, !49, i64 312, !43, i64 328, !43, i64 332, !43, i64 336, !43, i64 340, !43, i64 344, !43, i64 348, !43, i64 352, !40, i64 356, !40, i64 358, !40, i64 360, !38, i64 362, !38, i64 363, !43, i64 364, !43, i64 368, !40, i64 372, !40, i64 374, !43, i64 376, !43, i64 380, !43, i64 384, !43, i64 388, !40, i64 392, !40, i64 394, !41, i64 396, !41, i64 400, !41, i64 404, !41, i64 408, !40, i64 412, !40, i64 414, !40, i64 416, !40, i64 418, !43, i64 420, !43, i64 424, !43, i64 428, !43, i64 432, !43, i64 436, !43, i64 440, !43, i64 444, !43, i64 448, !43, i64 452, !43, i64 456, !38, i64 460, !43, i64 524, !43, i64 528, !43, i64 532, !41, i64 536, !38, i64 540, !38, i64 541, !38, i64 542, !38, i64 543, !40, i64 544, !40, i64 546, !40, i64 548, !38, i64 550, !38, i64 551, !40, i64 552, !40, i64 554, !43, i64 556, !43, i64 560, !38, i64 564, !43, i64 580, !43, i64 584, !40, i64 588, !40, i64 590, !37, i64 592, !37, i64 600, !38, i64 608, !38, i64 609, !38, i64 610, !38, i64 611, !40, i64 612, !40, i64 614, !43, i64 616, !43, i64 620, !38, i64 624, !37, i64 768, !37, i64 776, !37, i64 784, !37, i64 792, !43, i64 800, !43, i64 804, !43, i64 808, !43, i64 812, !43, i64 816, !40, i64 820, !40, i64 822, !38, i64 824, !38, i64 836, !43, i64 848, !43, i64 852, !43, i64 856, !43, i64 860, !43, i64 864, !43, i64 868, !43, i64 872, !40, i64 876, !40, i64 878, !41, i64 880, !40, i64 884, !40, i64 886, !38, i64 888, !40, i64 904, !40, i64 906, !40, i64 908, !40, i64 910, !40, i64 912, !38, i64 914, !37, i64 920, !42, i64 928}
!48 = !{!"VolumeSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !38, i64 16, !38, i64 28, !38, i64 40, !43, i64 52, !43, i64 56, !43, i64 60, !40, i64 64, !40, i64 66, !40, i64 68, !40, i64 70, !43, i64 72, !43, i64 76, !43, i64 80, !43, i64 84}
!49 = !{!"GameSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!35, !37, i64 120}
!53 = !{!35, !37, i64 144}
!54 = !{!43, !43, i64 0}
!55 = !{!35, !40, i64 188}
!56 = !{!35, !43, i64 236}
!57 = distinct !{!57, !51}
!58 = !{!35, !37, i64 160}
!59 = !{!35, !37, i64 240}
!60 = !{!61, !37, i64 0}
!61 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !42, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !38, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !38, i64 2104, !41, i64 2108, !41, i64 2112, !38, i64 2116}
!62 = !{!35, !37, i64 24}
!63 = !{!35, !41, i64 100}
!64 = !{!65, !37, i64 296}
!65 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !66, i64 312, !37, i64 360, !42, i64 368, !42, i64 384, !42, i64 400, !42, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !43, i64 616, !43, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !43, i64 988, !43, i64 992, !43, i64 996, !43, i64 1000, !43, i64 1004, !43, i64 1008, !43, i64 1012, !43, i64 1016, !43, i64 1020, !43, i64 1024, !43, i64 1028, !43, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !43, i64 1048, !43, i64 1052, !42, i64 1056, !42, i64 1072, !42, i64 1088, !42, i64 1104, !43, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !42, i64 1176, !42, i64 1192, !42, i64 1208, !42, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !43, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !67, i64 1304, !67, i64 1312, !41, i64 1320, !41, i64 1324, !42, i64 1328, !42, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !42, i64 1400, !37, i64 1416}
!66 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!67 = !{!"long", !38, i64 0}
!68 = !{!65, !37, i64 24}
!69 = distinct !{!69, !51}
!70 = distinct !{!70, !51}
!71 = !{!"mball.c:extern_local_mball"}
!72 = !{!73, !43, i64 72}
!73 = !{!"MetaElem", !37, i64 0, !37, i64 8, !37, i64 16, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !43, i64 32, !43, i64 36, !43, i64 40, !38, i64 44, !43, i64 60, !43, i64 64, !43, i64 68, !43, i64 72, !43, i64 76, !43, i64 80, !43, i64 84, !37, i64 88, !37, i64 96}
!74 = !{!73, !43, i64 80}
!75 = !{!73, !40, i64 26}
!76 = !{!73, !40, i64 24}
!77 = !{!65, !37, i64 264}
!78 = !{!65, !37, i64 1280}
!79 = distinct !{!79, !51}
!80 = !{!81, !41, i64 24}
!81 = !{!"DispList", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 18, !41, i64 20, !41, i64 24, !40, i64 28, !40, i64 30, !37, i64 32, !37, i64 40, !37, i64 48, !41, i64 56, !41, i64 60, !37, i64 64}
!82 = !{!81, !37, i64 32}
!83 = distinct !{!83, !51}
!84 = !{!42, !37, i64 0}
!85 = distinct !{!85, !51}
!86 = !{!38, !38, i64 0}
!87 = !{!40, !40, i64 0}
!88 = !{i8 0, i8 2}
!89 = !{!90, !37, i64 1888}
!90 = !{!"Main", !37, i64 0, !37, i64 8, !38, i64 16, !40, i64 1040, !40, i64 1042, !40, i64 1044, !40, i64 1046, !67, i64 1048, !38, i64 1056, !40, i64 1072, !37, i64 1080, !42, i64 1088, !42, i64 1104, !42, i64 1120, !42, i64 1136, !42, i64 1152, !42, i64 1168, !42, i64 1184, !42, i64 1200, !42, i64 1216, !42, i64 1232, !42, i64 1248, !42, i64 1264, !42, i64 1280, !42, i64 1296, !42, i64 1312, !42, i64 1328, !42, i64 1344, !42, i64 1360, !42, i64 1376, !42, i64 1392, !42, i64 1408, !42, i64 1424, !42, i64 1440, !42, i64 1456, !42, i64 1472, !42, i64 1488, !42, i64 1504, !42, i64 1520, !42, i64 1536, !42, i64 1552, !42, i64 1568, !42, i64 1584, !42, i64 1600, !42, i64 1616, !38, i64 1632, !37, i64 1888, !37, i64 1896}
!91 = !{!65, !40, i64 136}
!92 = !{!35, !38, i64 184}
!93 = distinct !{!93, !51}
!94 = !{!95, !41, i64 24}
!95 = !{!"Base", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !40, i64 28, !40, i64 30, !37, i64 32}
!96 = !{!41, !41, i64 0}
!97 = distinct !{!97, !51}
!98 = !{!99, !37, i64 8}
!99 = !{!"intlists", !37, i64 0, !37, i64 8}
!100 = !{!99, !37, i64 0}
!101 = !{!102, !37, i64 8}
!102 = !{!"intlist", !41, i64 0, !37, i64 8}
!103 = distinct !{!103, !51}
!104 = distinct !{!104, !51}
!105 = distinct !{!105, !51}
!106 = !{!107, !41, i64 4}
!107 = !{!"process", !43, i64 0, !41, i64 4, !37, i64 8, !37, i64 16, !37, i64 24, !43, i64 32, !43, i64 36, !41, i64 40, !37, i64 48, !108, i64 56, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !41, i64 104, !41, i64 108, !41, i64 112, !37, i64 120, !42, i64 128}
!108 = !{!"vertices", !41, i64 0, !41, i64 4, !37, i64 8}
!109 = !{!110, !41, i64 0}
!110 = !{!"EvaluationContext", !41, i64 0}
!111 = !{!61, !40, i64 2084}
!112 = !{!107, !43, i64 0}
!113 = !{!107, !37, i64 8}
!114 = !{!107, !37, i64 16}
!115 = !{!116, !37, i64 0}
!116 = !{!"octal_tree", !37, i64 0, !41, i64 8, !41, i64 12, !40, i64 16}
!117 = !{!118, !43, i64 100}
!118 = !{!"octal_node", !38, i64 0, !37, i64 64, !42, i64 72, !43, i64 88, !43, i64 92, !43, i64 96, !43, i64 100, !43, i64 104, !43, i64 108, !43, i64 112, !43, i64 116, !43, i64 120, !41, i64 124, !41, i64 128, !41, i64 132}
!119 = !{!118, !43, i64 88}
!120 = !{!118, !43, i64 104}
!121 = !{!118, !43, i64 92}
!122 = !{!118, !43, i64 108}
!123 = !{!118, !43, i64 96}
!124 = !{!35, !43, i64 232}
!125 = !{!35, !43, i64 228}
!126 = !{!107, !37, i64 24}
!127 = !{!107, !43, i64 32}
!128 = !{!107, !41, i64 40}
!129 = !{!107, !37, i64 48}
!130 = !{!107, !43, i64 36}
!131 = !{!107, !41, i64 108}
!132 = !{!107, !37, i64 64}
!133 = !{!81, !40, i64 16}
!134 = !{!107, !41, i64 56}
!135 = !{!81, !41, i64 20}
!136 = !{!107, !37, i64 96}
!137 = !{!81, !37, i64 48}
!138 = !{!81, !37, i64 40}
!139 = distinct !{!139, !51}
!140 = !{!"mball.c:mball_count"}
!141 = !{!73, !37, i64 0}
!142 = distinct !{!142, !51}
!143 = distinct !{!143, !51}
!144 = !{!"mball.c:init_meta"}
!145 = !{!35, !37, i64 128}
!146 = !{!65, !37, i64 216}
!147 = distinct !{!147, !51}
!148 = distinct !{!148, !51}
!149 = !{!73, !43, i64 32}
!150 = !{!73, !43, i64 36}
!151 = !{!73, !43, i64 40}
!152 = !{i64 0, i64 8, !45, i64 8, i64 8, !45, i64 16, i64 8, !45, i64 24, i64 2, !87, i64 26, i64 2, !87, i64 28, i64 2, !87, i64 30, i64 2, !87, i64 32, i64 4, !54, i64 36, i64 4, !54, i64 40, i64 4, !54, i64 44, i64 16, !86, i64 60, i64 4, !54, i64 64, i64 4, !54, i64 68, i64 4, !54, i64 72, i64 4, !54, i64 76, i64 4, !54, i64 80, i64 4, !54, i64 84, i64 4, !54, i64 88, i64 8, !45, i64 96, i64 8, !45}
!153 = !{!73, !37, i64 16}
!154 = !{!73, !43, i64 76}
!155 = !{!73, !37, i64 88}
!156 = !{!73, !37, i64 96}
!157 = !{!73, !43, i64 60}
!158 = distinct !{!158, !51}
!159 = distinct !{!159, !51}
!160 = distinct !{!160, !51}
!161 = distinct !{!161, !51}
!162 = !{!73, !43, i64 68}
!163 = distinct !{!163, !51}
!164 = distinct !{!164, !51}
!165 = !{!"mball.c:init_metaball_octal_tree"}
!166 = !{!116, !40, i64 16}
!167 = !{!118, !41, i64 128}
!168 = !{!116, !41, i64 12}
!169 = !{!118, !41, i64 124}
!170 = !{!116, !41, i64 8}
!171 = !{!118, !41, i64 132}
!172 = !{!173, !37, i64 16}
!173 = !{!"ml_pointer", !37, i64 0, !37, i64 8, !37, i64 16}
!174 = distinct !{!174, !51}
!175 = !{!"mball.c:new_pgn_element"}
!176 = !{!177, !37, i64 16}
!177 = !{!"pgn_elements", !37, i64 0, !37, i64 8, !37, i64 16}
!178 = distinct !{!178, !51}
!179 = !{!107, !37, i64 120}
!180 = !{!107, !41, i64 112}
!181 = !{!"mball.c:free_metaball_octal_node"}
!182 = distinct !{!182, !51}
!183 = !{!"mball.c:metaball"}
!184 = distinct !{!184, !51}
!185 = distinct !{!185, !51}
!186 = !{!"mball.c:polygonize"}
!187 = !{!107, !37, i64 72}
!188 = !{!107, !37, i64 80}
!189 = !{!107, !37, i64 88}
!190 = distinct !{!190, !51}
!191 = !{i64 0, i64 4, !96, i64 4, i64 4, !96, i64 8, i64 4, !96, i64 16, i64 64, !86}
!192 = !{!193, !37, i64 80}
!193 = !{!"cubes", !194, i64 0, !37, i64 80}
!194 = !{!"cube", !41, i64 0, !41, i64 4, !41, i64 8, !38, i64 16}
!195 = !{!194, !41, i64 0}
!196 = !{!194, !41, i64 4}
!197 = !{!194, !41, i64 8}
!198 = distinct !{!198, !51}
!199 = !{!"mball.c:copy_v3_v3"}
!200 = !{!"mball.c:freepolygonize"}
!201 = distinct !{!201, !51}
!202 = distinct !{!202, !51}
!203 = !{!"mball.c:add_v3_fl"}
!204 = distinct !{!204, !51}
!205 = !{!"mball.c:BLI_listbase_is_empty"}
!206 = distinct !{!206, !51}
!207 = !{!"mball.c:zero_v3"}
!208 = !{!"mball.c:add_v3_v3"}
!209 = !{!"mball.c:mul_v3_fl"}
!210 = distinct !{!210, !51}
!211 = distinct !{!211, !51}
!212 = distinct !{!212, !51}
!213 = distinct !{!213, !51}
!214 = distinct !{!214, !51}
!215 = !{!"mball.c:copy_v3_fl3"}
!216 = !{!"mball.c:calc_mballco"}
!217 = !{!"mball.c:densfunc"}
!218 = !{!73, !43, i64 64}
!219 = !{!73, !43, i64 84}
!220 = !{!"mball.c:len_squared_v3"}
!221 = !{!"mball.c:BLI_listbase_clear"}
!222 = !{!"mball.c:subdivide_metaball_octal_node"}
!223 = distinct !{!223, !51}
!224 = !{!118, !37, i64 64}
!225 = distinct !{!225, !51}
!226 = !{!118, !43, i64 120}
!227 = !{!118, !43, i64 116}
!228 = !{!118, !43, i64 112}
!229 = distinct !{!229, !51}
!230 = distinct !{!230, !51}
!231 = !{!"mball.c:fill_metaball_octal_node"}
!232 = !{!"mball.c:find_metaball_octal_node"}
!233 = !{!"mball.c:makecubetable"}
!234 = distinct !{!234, !51, !235, !236}
!235 = !{!"llvm.loop.isvectorized", i32 1}
!236 = !{!"llvm.loop.unroll.runtime.disable"}
!237 = !{i32 0, i32 12}
!238 = !{!102, !41, i64 0}
!239 = distinct !{!239, !51}
!240 = distinct !{!240, !51}
!241 = !{!"mball.c:find_first_points"}
!242 = distinct !{!242, !51}
!243 = distinct !{!243, !51}
!244 = distinct !{!244, !51}
!245 = distinct !{!245, !51}
!246 = !{!"mball.c:docube"}
!247 = !{!248, !43, i64 24}
!248 = !{!"corner", !41, i64 0, !41, i64 4, !41, i64 8, !38, i64 12, !43, i64 24, !37, i64 32}
!249 = distinct !{!249, !51}
!250 = distinct !{!250, !51}
!251 = distinct !{!251, !51}
!252 = !{!"mball.c:testface"}
!253 = !{i32 0, i32 2}
!254 = !{!"mball.c:nextcwedge"}
!255 = !{!"mball.c:otherface"}
!256 = !{!"mball.c:len_squared_v3v3"}
!257 = !{!"mball.c:max_fff"}
!258 = !{!"mball.c:add_cube"}
!259 = !{!193, !41, i64 0}
!260 = !{!193, !41, i64 4}
!261 = !{!193, !41, i64 8}
!262 = distinct !{!262, !51}
!263 = distinct !{!263, !51}
!264 = distinct !{!264, !51}
!265 = distinct !{!265, !51}
!266 = !{!"mball.c:sub_v3_v3v3"}
!267 = !{!"mball.c:dot_v3v3"}
!268 = !{!"mball.c:max_ff"}
!269 = !{!"mball.c:setcenter"}
!270 = !{!271, !41, i64 0}
!271 = !{!"centerlist", !41, i64 0, !41, i64 4, !41, i64 8, !37, i64 16}
!272 = !{!271, !41, i64 4}
!273 = !{!271, !41, i64 8}
!274 = !{!271, !37, i64 16}
!275 = distinct !{!275, !51}
!276 = !{!"mball.c:setcorner"}
!277 = !{!248, !41, i64 0}
!278 = !{!248, !41, i64 4}
!279 = !{!248, !41, i64 8}
!280 = distinct !{!280, !51}
!281 = !{!248, !37, i64 32}
!282 = !{!"mball.c:vertid"}
!283 = !{!"mball.c:accum_mballfaces"}
!284 = !{!107, !41, i64 104}
!285 = !{!"mball.c:getedge"}
!286 = !{!287, !41, i64 0}
!287 = !{!"edgelist", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !37, i64 32}
!288 = !{!287, !41, i64 4}
!289 = !{!287, !41, i64 8}
!290 = !{!287, !41, i64 12}
!291 = !{!287, !41, i64 16}
!292 = !{!287, !41, i64 20}
!293 = !{!287, !41, i64 24}
!294 = distinct !{!294, !51}
!295 = !{!"mball.c:converge"}
!296 = !{!"mball.c:vnormal"}
!297 = !{!"mball.c:addtovertices"}
!298 = !{!108, !41, i64 0}
!299 = !{!108, !41, i64 4}
!300 = !{!108, !37, i64 8}
!301 = !{i64 0, i64 12, !86, i64 12, i64 12, !86}
!302 = distinct !{!302, !51}
!303 = !{!"mball.c:setedge"}
!304 = !{!287, !37, i64 32}
!305 = !{!"mball.c:normalize_v3"}
!306 = !{!"mball.c:normalize_v3_v3"}
!307 = !{!"mball.c:mul_v3_v3fl"}
