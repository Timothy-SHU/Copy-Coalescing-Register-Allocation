; ModuleID = 'blender/source/blender/imbuf/intern/allocimbuf.c'
source_filename = "blender/source/blender/imbuf/intern/allocimbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }

@refcounter_spin = internal global i32 0, align 4
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_mapallocN = external local_unnamed_addr global ptr, align 8
@__func__.addzbufImBuf = private unnamed_addr constant [13 x i8] c"addzbufImBuf\00", align 1
@__func__.addzbuffloatImBuf = private unnamed_addr constant [18 x i8] c"addzbuffloatImBuf\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.imb_addencodedbufferImBuf = private unnamed_addr constant [26 x i8] c"imb_addencodedbufferImBuf\00", align 1
@.str = private unnamed_addr constant [25 x i8] c"%s: error in parameters\0A\00", align 1
@__func__.imb_enlargeencodedbufferImBuf = private unnamed_addr constant [30 x i8] c"imb_enlargeencodedbufferImBuf\00", align 1
@__func__.imb_addrectfloatImBuf = private unnamed_addr constant [22 x i8] c"imb_addrectfloatImBuf\00", align 1
@__func__.imb_addrectImBuf = private unnamed_addr constant [17 x i8] c"imb_addrectImBuf\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"imb_tiles\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"ImBuf_struct\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @imb_refcounter_lock_init() local_unnamed_addr #0 {
  tail call void @BLI_spin_init(ptr noundef nonnull @refcounter_spin) #9
  ret void
}

; Function Attrs: optsize
declare void @BLI_spin_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @imb_refcounter_lock_exit() local_unnamed_addr #0 {
  tail call void @BLI_spin_end(ptr noundef nonnull @refcounter_spin) #9
  ret void
}

; Function Attrs: optsize
declare void @BLI_spin_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @imb_freemipmapImBuf(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 20
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp sgt i32 %3, 1
  br i1 %4, label %5, label %19

5:                                                ; preds = %1, %14
  %6 = phi i32 [ %15, %14 ], [ %3, %1 ]
  %7 = phi i64 [ %16, %14 ], [ 1, %1 ]
  %8 = add nsw i64 %7, -1
  %9 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 19, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %5
  tail call void @IMB_freeImBuf(ptr noundef nonnull %10) #10
  %13 = load i32, ptr %2, align 8, !tbaa !34
  br label %14

14:                                               ; preds = %12, %5
  %15 = phi i32 [ %13, %12 ], [ %6, %5 ]
  store ptr null, ptr %9, align 8, !tbaa !43
  %16 = add nuw nsw i64 %7, 1
  %17 = sext i32 %15 to i64
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %5, label %19, !llvm.loop !44

19:                                               ; preds = %14, %1
  store i32 0, ptr %2, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_freeImBuf(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  tail call void @BLI_spin_lock(ptr noundef nonnull @refcounter_spin) #9
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 30
  %5 = load i32, ptr %4, align 8, !tbaa !46
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = add nsw i32 %5, -1
  store i32 %8, ptr %4, align 8, !tbaa !46
  tail call void @BLI_spin_unlock(ptr noundef nonnull @refcounter_spin) #9
  br label %16

9:                                                ; preds = %3
  tail call void @BLI_spin_unlock(ptr noundef nonnull @refcounter_spin) #9
  tail call void @imb_freerectImBuf(ptr noundef nonnull %0) #10
  tail call void @imb_freerectfloatImBuf(ptr noundef nonnull %0) #10
  tail call void @imb_freetilesImBuf(ptr noundef nonnull %0) #10
  tail call void @IMB_freezbufImBuf(ptr noundef nonnull %0) #10
  tail call void @IMB_freezbuffloatImBuf(ptr noundef nonnull %0) #10
  tail call fastcc void @freeencodedbufferImBuf(ptr noundef nonnull %0) #10
  tail call void @IMB_metadata_free(ptr noundef nonnull %0) #9
  tail call void @colormanage_cache_free(ptr noundef nonnull %0) #9
  %10 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 40, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !47
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @free(ptr noundef nonnull %11) #9
  br label %14

14:                                               ; preds = %13, %9
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %15(ptr noundef nonnull %0) #9
  br label %16

16:                                               ; preds = %7, %14, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @imb_freerectfloatImBuf(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 4, !tbaa !49
  %10 = and i32 %9, 32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %13(ptr noundef nonnull %5) #9
  store ptr null, ptr %4, align 8, !tbaa !48
  br label %14

14:                                               ; preds = %12, %7, %3
  tail call void @imb_freemipmapImBuf(ptr noundef nonnull %0) #10
  store ptr null, ptr %4, align 8, !tbaa !48
  %15 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %16 = load i32, ptr %15, align 4, !tbaa !49
  %17 = and i32 %16, -33
  store i32 %17, ptr %15, align 4, !tbaa !49
  br label %18

18:                                               ; preds = %1, %14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @imb_freerectImBuf(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 4, !tbaa !49
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %13(ptr noundef nonnull %5) #9
  br label %14

14:                                               ; preds = %12, %7, %3
  store ptr null, ptr %4, align 8, !tbaa !50
  tail call void @imb_freemipmapImBuf(ptr noundef nonnull %0) #10
  %15 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %16 = load i32, ptr %15, align 4, !tbaa !49
  %17 = and i32 %16, -2
  store i32 %17, ptr %15, align 4, !tbaa !49
  br label %18

18:                                               ; preds = %1, %14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @imb_freetilesImBuf(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %67, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 15
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  %6 = icmp eq ptr %5, null
  br i1 %6, label %63, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 4, !tbaa !49
  %10 = and i32 %9, 1024
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %63, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 14
  %14 = load i32, ptr %13, align 4, !tbaa !52
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %60

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 13
  %18 = load i32, ptr %17, align 8, !tbaa !53
  br label %19

19:                                               ; preds = %16, %52
  %20 = phi i32 [ %14, %16 ], [ %53, %52 ]
  %21 = phi i32 [ %18, %16 ], [ %54, %52 ]
  %22 = phi i32 [ %18, %16 ], [ %55, %52 ]
  %23 = phi i32 [ 0, %16 ], [ %56, %52 ]
  %24 = icmp sgt i32 %22, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %19, %46
  %26 = phi i32 [ %47, %46 ], [ %21, %19 ]
  %27 = phi i32 [ %47, %46 ], [ %22, %19 ]
  %28 = phi i32 [ %48, %46 ], [ 0, %19 ]
  %29 = load ptr, ptr %4, align 8, !tbaa !51
  %30 = mul nsw i32 %27, %23
  %31 = add nsw i32 %30, %28
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds ptr, ptr %29, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !43
  %35 = icmp eq ptr %34, null
  br i1 %35, label %46, label %36

36:                                               ; preds = %25
  tail call void @imb_tile_cache_tile_free(ptr noundef nonnull %0, i32 noundef %28, i32 noundef %23) #9
  %37 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  %38 = load ptr, ptr %4, align 8, !tbaa !51
  %39 = load i32, ptr %17, align 8, !tbaa !53
  %40 = mul nsw i32 %39, %23
  %41 = add nsw i32 %40, %28
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds ptr, ptr %38, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !43
  tail call void %37(ptr noundef %44) #9
  %45 = load i32, ptr %17, align 8, !tbaa !53
  br label %46

46:                                               ; preds = %25, %36
  %47 = phi i32 [ %26, %25 ], [ %45, %36 ]
  %48 = add nuw nsw i32 %28, 1
  %49 = icmp slt i32 %48, %47
  br i1 %49, label %25, label %50, !llvm.loop !54

50:                                               ; preds = %46
  %51 = load i32, ptr %13, align 4, !tbaa !52
  br label %52

52:                                               ; preds = %50, %19
  %53 = phi i32 [ %51, %50 ], [ %20, %19 ]
  %54 = phi i32 [ %47, %50 ], [ %21, %19 ]
  %55 = phi i32 [ %47, %50 ], [ %22, %19 ]
  %56 = add nuw nsw i32 %23, 1
  %57 = icmp slt i32 %56, %53
  br i1 %57, label %19, label %58, !llvm.loop !55

58:                                               ; preds = %52
  %59 = load ptr, ptr %4, align 8, !tbaa !51
  br label %60

60:                                               ; preds = %58, %12
  %61 = phi ptr [ %59, %58 ], [ %5, %12 ]
  %62 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %62(ptr noundef %61) #9
  br label %63

63:                                               ; preds = %60, %7, %3
  store ptr null, ptr %4, align 8, !tbaa !51
  %64 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %65 = load i32, ptr %64, align 4, !tbaa !49
  %66 = and i32 %65, -1025
  store i32 %66, ptr %64, align 4, !tbaa !49
  br label %67

67:                                               ; preds = %1, %63
  ret void
}

; Function Attrs: optsize
declare void @imb_tile_cache_tile_free(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_freezbufImBuf(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 4, !tbaa !49
  %10 = and i32 %9, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %13(ptr noundef nonnull %5) #9
  br label %14

14:                                               ; preds = %12, %7, %3
  store ptr null, ptr %4, align 8, !tbaa !56
  %15 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %16 = load i32, ptr %15, align 4, !tbaa !49
  %17 = and i32 %16, -9
  store i32 %17, ptr %15, align 4, !tbaa !49
  br label %18

18:                                               ; preds = %1, %14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_freezbuffloatImBuf(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 4, !tbaa !49
  %10 = and i32 %9, 64
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %13(ptr noundef nonnull %5) #9
  br label %14

14:                                               ; preds = %12, %7, %3
  store ptr null, ptr %4, align 8, !tbaa !57
  %15 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %16 = load i32, ptr %15, align 4, !tbaa !49
  %17 = and i32 %16, -65
  store i32 %17, ptr %15, align 4, !tbaa !49
  br label %18

18:                                               ; preds = %1, %14
  ret void
}

; Function Attrs: optsize
declare void @BLI_spin_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_spin_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @freeencodedbufferImBuf(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !58 {
  %2 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 31
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %7 = load i32, ptr %6, align 4, !tbaa !49
  %8 = and i32 %7, 16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %11(ptr noundef nonnull %3) #9
  br label %12

12:                                               ; preds = %10, %5, %1
  %13 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %14 = load i32, ptr %13, align 4, !tbaa !49
  %15 = and i32 %14, -17
  store i32 %15, ptr %13, align 4, !tbaa !49
  ret void
}

; Function Attrs: optsize
declare void @IMB_metadata_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @colormanage_cache_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_refImBuf(ptr nocapture noundef %0) local_unnamed_addr #0 {
  tail call void @BLI_spin_lock(ptr noundef nonnull @refcounter_spin) #9
  %2 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 30
  %3 = load i32, ptr %2, align 8, !tbaa !46
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !46
  tail call void @BLI_spin_unlock(ptr noundef nonnull @refcounter_spin) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @IMB_makeSingleUser(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 30
  %5 = load i32, ptr %4, align 8, !tbaa !46
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @IMB_dupImBuf(ptr noundef nonnull %0) #10
  tail call void @IMB_freeImBuf(ptr noundef nonnull %0) #10
  br label %9

9:                                                ; preds = %1, %3, %7
  %10 = phi ptr [ %8, %7 ], [ %0, %3 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @IMB_dupImBuf(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca { [2 x double], i32, i32, i32, i32, ptr }, align 8
  %3 = alloca [20 x ptr], align 8
  %4 = alloca { i32, i32, i32, i32 }, align 8
  %5 = alloca { ptr, i32, [1024 x i8], [1024 x i8] }, align 8
  %6 = alloca { i32, i32, ptr, ptr }, align 8
  %7 = alloca [32 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2)
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %3)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4)
  call void @llvm.lifetime.start.p0(i64 2064, ptr nonnull %5)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7)
  %8 = icmp eq ptr %0, null
  br i1 %8, label %102, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  %12 = icmp ne ptr %11, null
  %13 = zext i1 %12 to i32
  %14 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !48
  %16 = icmp eq ptr %15, null
  %17 = or disjoint i32 %13, 32
  %18 = select i1 %16, i32 %13, i32 %17
  %19 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !60
  %21 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !61
  %23 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 6
  %24 = load i32, ptr %23, align 8, !tbaa !62
  %25 = lshr i32 %24, 2
  %26 = and i32 %25, 1
  %27 = shl i32 %22, %26
  %28 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 4
  %29 = load i8, ptr %28, align 8, !tbaa !63
  %30 = tail call ptr @IMB_allocImBuf(i32 noundef %20, i32 noundef %27, i8 noundef zeroext %29, i32 noundef %18) #10
  %31 = icmp eq ptr %30, null
  br i1 %31, label %102, label %32

32:                                               ; preds = %9
  br i1 %12, label %33, label %40

33:                                               ; preds = %32
  %34 = getelementptr inbounds %struct.ImBuf, ptr %30, i64 0, i32 8
  %35 = load ptr, ptr %34, align 8, !tbaa !50
  %36 = load ptr, ptr %10, align 8, !tbaa !50
  %37 = mul nsw i32 %27, %20
  %38 = sext i32 %37 to i64
  %39 = shl nsw i64 %38, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %35, ptr align 4 %36, i64 %39, i1 false)
  br label %40

40:                                               ; preds = %33, %32
  br i1 %16, label %51, label %41

41:                                               ; preds = %40
  %42 = getelementptr inbounds %struct.ImBuf, ptr %30, i64 0, i32 9
  %43 = load ptr, ptr %42, align 8, !tbaa !48
  %44 = load ptr, ptr %14, align 8, !tbaa !48
  %45 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 5
  %46 = load i32, ptr %45, align 4, !tbaa !64
  %47 = mul i32 %27, %20
  %48 = mul i32 %47, %46
  %49 = sext i32 %48 to i64
  %50 = shl nsw i64 %49, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %43, ptr align 4 %44, i64 %50, i1 false)
  br label %51

51:                                               ; preds = %41, %40
  %52 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 31
  %53 = load ptr, ptr %52, align 8, !tbaa !59
  %54 = icmp eq ptr %53, null
  br i1 %54, label %69, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 33
  %57 = load i32, ptr %56, align 4, !tbaa !65
  %58 = getelementptr inbounds %struct.ImBuf, ptr %30, i64 0, i32 33
  store i32 %57, ptr %58, align 4, !tbaa !65
  %59 = tail call zeroext i8 @imb_addencodedbufferImBuf(ptr noundef nonnull %30) #10, !range !66
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  tail call void @IMB_freeImBuf(ptr noundef nonnull %30) #10
  br label %102

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.ImBuf, ptr %30, i64 0, i32 31
  %64 = load ptr, ptr %63, align 8, !tbaa !59
  %65 = load ptr, ptr %52, align 8, !tbaa !59
  %66 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 32
  %67 = load i32, ptr %66, align 8, !tbaa !67
  %68 = zext i32 %67 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %64, ptr align 1 %65, i64 %68, i1 false)
  br label %69

69:                                               ; preds = %62, %51
  %70 = getelementptr inbounds i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %70, i64 40, i1 false), !tbaa.struct !68
  %71 = getelementptr inbounds i8, ptr %0, i64 112
  %72 = load i64, ptr %71, align 8
  %73 = getelementptr inbounds i8, ptr %0, i64 280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %73, i64 16, i1 false), !tbaa.struct !72
  %74 = getelementptr inbounds i8, ptr %0, i64 304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2064) %5, ptr noundef nonnull align 8 dereferenceable(2064) %74, i64 2064, i1 false), !tbaa.struct !73
  %75 = getelementptr inbounds i8, ptr %0, i64 2380
  %76 = load i32, ptr %75, align 4, !tbaa.struct !74
  %77 = getelementptr inbounds i8, ptr %0, i64 2392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %77, i64 24, i1 false), !tbaa.struct !75
  %78 = getelementptr inbounds i8, ptr %0, i64 2432
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %78, i64 32, i1 false), !tbaa.struct !76
  %79 = getelementptr inbounds i8, ptr %0, i64 2472
  %80 = load i64, ptr %79, align 8, !tbaa.struct !77
  %81 = getelementptr inbounds %struct.ImBuf, ptr %30, i64 0, i32 8
  %82 = getelementptr inbounds %struct.ImBuf, ptr %30, i64 0, i32 31
  %83 = load ptr, ptr %82, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %3, i8 0, i64 160, i1 false), !tbaa !43
  %84 = getelementptr inbounds %struct.ImBuf, ptr %30, i64 0, i32 7
  %85 = load i32, ptr %84, align 4, !tbaa !49
  %86 = load <2 x ptr>, ptr %81, align 8, !tbaa !43
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %30, ptr noundef nonnull align 8 dereferenceable(36) %0, i64 36, i1 false)
  store i32 %85, ptr %84, align 4, !tbaa.struct !78
  store <2 x ptr> %86, ptr %81, align 8
  %87 = getelementptr inbounds i8, ptr %30, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %87, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !68
  %88 = getelementptr inbounds i8, ptr %30, i64 96
  %89 = getelementptr inbounds i8, ptr %30, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %88, i8 0, i64 16, i1 false)
  store i64 %72, ptr %89, align 8, !tbaa.struct !79
  %90 = getelementptr inbounds i8, ptr %30, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %90, ptr noundef nonnull align 8 dereferenceable(160) %3, i64 160, i1 false), !tbaa.struct !80
  %91 = getelementptr inbounds i8, ptr %30, i64 280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %91, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !72
  %92 = getelementptr inbounds i8, ptr %30, i64 296
  store ptr null, ptr %92, align 8, !tbaa.struct !81
  %93 = getelementptr inbounds i8, ptr %30, i64 304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2064) %93, ptr noundef nonnull align 8 dereferenceable(2064) %5, i64 2064, i1 false), !tbaa.struct !73
  %94 = getelementptr inbounds i8, ptr %30, i64 2368
  store ptr null, ptr %94, align 8, !tbaa.struct !82
  %95 = getelementptr inbounds i8, ptr %30, i64 2376
  store i32 0, ptr %95, align 8, !tbaa.struct !83
  %96 = getelementptr inbounds i8, ptr %30, i64 2380
  store i32 %76, ptr %96, align 4, !tbaa.struct !74
  store ptr %83, ptr %82, align 8, !tbaa.struct !84
  %97 = getelementptr inbounds i8, ptr %30, i64 2392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %97, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !75
  %98 = getelementptr inbounds i8, ptr %30, i64 2416
  %99 = getelementptr inbounds i8, ptr %30, i64 2432
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %98, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %99, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !76
  %100 = getelementptr inbounds i8, ptr %30, i64 2464
  store ptr null, ptr %100, align 8, !tbaa.struct !85
  %101 = getelementptr inbounds i8, ptr %30, i64 2472
  store i64 %80, ptr %101, align 8, !tbaa.struct !77
  br label %102

102:                                              ; preds = %9, %1, %69, %61
  %103 = phi ptr [ null, %61 ], [ %30, %69 ], [ null, %1 ], [ null, %9 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 2064, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7)
  ret ptr %103
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @addzbufImBuf(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %20, label %3

3:                                                ; preds = %1
  tail call void @IMB_freezbufImBuf(ptr noundef nonnull %0) #10
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !60
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !61
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %6, 2
  %11 = mul i64 %10, %9
  %12 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !43
  %13 = tail call ptr %12(i64 noundef %11, ptr noundef nonnull @__func__.addzbufImBuf) #9
  %14 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 16
  store ptr %13, ptr %14, align 8, !tbaa !56
  %15 = icmp eq ptr %13, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 6
  %18 = load <2 x i32>, ptr %17, align 8, !tbaa !70
  %19 = or <2 x i32> %18, <i32 8, i32 8>
  store <2 x i32> %19, ptr %17, align 8, !tbaa !70
  br label %20

20:                                               ; preds = %3, %1, %16
  %21 = phi i8 [ 1, %16 ], [ 0, %1 ], [ 0, %3 ]
  ret i8 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @addzbuffloatImBuf(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %20, label %3

3:                                                ; preds = %1
  tail call void @IMB_freezbuffloatImBuf(ptr noundef nonnull %0) #10
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !60
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !61
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %6, 2
  %11 = mul i64 %10, %9
  %12 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !43
  %13 = tail call ptr %12(i64 noundef %11, ptr noundef nonnull @__func__.addzbuffloatImBuf) #9
  %14 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 17
  store ptr %13, ptr %14, align 8, !tbaa !57
  %15 = icmp eq ptr %13, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 6
  %18 = load <2 x i32>, ptr %17, align 8, !tbaa !70
  %19 = or <2 x i32> %18, <i32 64, i32 64>
  store <2 x i32> %19, ptr %17, align 8, !tbaa !70
  br label %20

20:                                               ; preds = %3, %1, %16
  %21 = phi i8 [ 1, %16 ], [ 0, %1 ], [ 0, %3 ]
  ret i8 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @imb_addencodedbufferImBuf(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %20, label %3

3:                                                ; preds = %1
  tail call fastcc void @freeencodedbufferImBuf(ptr noundef nonnull %0) #10
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 33
  %5 = load i32, ptr %4, align 4, !tbaa !65
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store i32 10000, ptr %4, align 4, !tbaa !65
  br label %8

8:                                                ; preds = %7, %3
  %9 = phi i32 [ 10000, %7 ], [ %5, %3 ]
  %10 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 32
  store i32 0, ptr %10, align 8, !tbaa !67
  %11 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !43
  %12 = zext i32 %9 to i64
  %13 = tail call ptr %11(i64 noundef %12, ptr noundef nonnull @__func__.imb_addencodedbufferImBuf) #9
  %14 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 31
  store ptr %13, ptr %14, align 8, !tbaa !59
  %15 = icmp eq ptr %13, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 6
  %18 = load <2 x i32>, ptr %17, align 8, !tbaa !70
  %19 = or <2 x i32> %18, <i32 16, i32 16>
  store <2 x i32> %19, ptr %17, align 8, !tbaa !70
  br label %20

20:                                               ; preds = %8, %1, %16
  %21 = phi i8 [ 1, %16 ], [ 0, %1 ], [ 0, %8 ]
  ret i8 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @imb_enlargeencodedbufferImBuf(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %32, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 33
  %5 = load i32, ptr %4, align 4, !tbaa !65
  %6 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 32
  %7 = load i32, ptr %6, align 8, !tbaa !67
  %8 = icmp ult i32 %5, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @__func__.imb_enlargeencodedbufferImBuf) #10
  br label %32

11:                                               ; preds = %3
  %12 = shl i32 %5, 1
  %13 = tail call i32 @llvm.umax.i32(i32 %12, i32 10000)
  %14 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !43
  %15 = zext i32 %13 to i64
  %16 = tail call ptr %14(i64 noundef %15, ptr noundef nonnull @__func__.imb_enlargeencodedbufferImBuf) #9
  %17 = icmp eq ptr %16, null
  br i1 %17, label %32, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 31
  %20 = load ptr, ptr %19, align 8, !tbaa !59
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i32, ptr %6, align 8, !tbaa !67
  %24 = zext i32 %23 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %16, ptr nonnull align 1 %20, i64 %24, i1 false)
  %25 = load i32, ptr %6, align 8, !tbaa !67
  br label %27

26:                                               ; preds = %18
  store i32 0, ptr %6, align 8, !tbaa !67
  br label %27

27:                                               ; preds = %26, %22
  %28 = phi i32 [ 0, %26 ], [ %25, %22 ]
  tail call fastcc void @freeencodedbufferImBuf(ptr noundef nonnull %0) #10
  store i32 %13, ptr %4, align 4, !tbaa !65
  store i32 %28, ptr %6, align 8, !tbaa !67
  store ptr %16, ptr %19, align 8, !tbaa !59
  %29 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 6
  %30 = load <2 x i32>, ptr %29, align 8, !tbaa !70
  %31 = or <2 x i32> %30, <i32 16, i32 16>
  store <2 x i32> %31, ptr %29, align 8, !tbaa !70
  br label %32

32:                                               ; preds = %11, %1, %27, %9
  %33 = phi i8 [ 0, %9 ], [ 1, %27 ], [ 0, %1 ], [ 0, %11 ]
  ret i8 %33
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @imb_addrectfloatImBuf(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %25, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @imb_freerectfloatImBuf(ptr noundef nonnull %0) #10
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !60
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !61
  %14 = sext i32 %13 to i64
  %15 = shl nsw i64 %11, 4
  %16 = mul i64 %15, %14
  %17 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 5
  store i32 4, ptr %17, align 4, !tbaa !64
  %18 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !43
  %19 = tail call ptr %18(i64 noundef %16, ptr noundef nonnull @__func__.imb_addrectfloatImBuf) #9
  store ptr %19, ptr %4, align 8, !tbaa !48
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %8
  %22 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 6
  %23 = load <2 x i32>, ptr %22, align 8, !tbaa !70
  %24 = or <2 x i32> %23, <i32 32, i32 32>
  store <2 x i32> %24, ptr %22, align 8, !tbaa !70
  br label %25

25:                                               ; preds = %8, %1, %21
  %26 = phi i8 [ 1, %21 ], [ 0, %1 ], [ 0, %8 ]
  ret i8 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @imb_addrectImBuf(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %35, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 4, !tbaa !49
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %13(ptr noundef nonnull %5) #9
  br label %14

14:                                               ; preds = %12, %7, %3
  store ptr null, ptr %4, align 8, !tbaa !50
  %15 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !60
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !61
  %20 = sext i32 %19 to i64
  %21 = shl nsw i64 %17, 2
  %22 = mul i64 %21, %20
  %23 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !43
  %24 = tail call ptr %23(i64 noundef %22, ptr noundef nonnull @__func__.imb_addrectImBuf) #9
  store ptr %24, ptr %4, align 8, !tbaa !50
  %25 = icmp eq ptr %24, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %14
  %27 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 6
  %28 = load <2 x i32>, ptr %27, align 8, !tbaa !70
  %29 = or <2 x i32> %28, <i32 1, i32 1>
  store <2 x i32> %29, ptr %27, align 8, !tbaa !70
  %30 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 4
  %31 = load i8, ptr %30, align 8, !tbaa !63
  %32 = icmp ugt i8 %31, 32
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = tail call zeroext i8 @addzbufImBuf(ptr noundef nonnull %0) #10, !range !66
  br label %35

35:                                               ; preds = %14, %26, %1, %33
  %36 = phi i8 [ %34, %33 ], [ 0, %1 ], [ 1, %26 ], [ 0, %14 ]
  ret i8 %36
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @imb_addtilesImBuf(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %23, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 15
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %23

7:                                                ; preds = %3
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %9 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 13
  %10 = load i32, ptr %9, align 8, !tbaa !53
  %11 = sext i32 %10 to i64
  %12 = shl nsw i64 %11, 3
  %13 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 14
  %14 = load i32, ptr %13, align 4, !tbaa !52
  %15 = sext i32 %14 to i64
  %16 = mul i64 %12, %15
  %17 = tail call ptr %8(i64 noundef %16, ptr noundef nonnull @.str.1) #9
  store ptr %17, ptr %4, align 8, !tbaa !51
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %21 = load i32, ptr %20, align 4, !tbaa !49
  %22 = or i32 %21, 1024
  store i32 %22, ptr %20, align 4, !tbaa !49
  br label %23

23:                                               ; preds = %3, %19, %7, %1
  %24 = phi i8 [ 0, %1 ], [ 0, %7 ], [ 1, %19 ], [ 1, %3 ]
  ret i8 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @IMB_allocImBuf(i32 noundef %0, i32 noundef %1, i8 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %6 = tail call ptr %5(i64 noundef 2480, ptr noundef nonnull @.str.2) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %43, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 2
  store i32 %0, ptr %9, align 8, !tbaa !60
  %10 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 3
  store i32 %1, ptr %10, align 4, !tbaa !61
  %11 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 4
  store i8 %2, ptr %11, align 8, !tbaa !63
  %12 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 26
  store i32 1073741839, ptr %12, align 8, !tbaa !86
  %13 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 5
  store i32 4, ptr %13, align 4, !tbaa !64
  %14 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 10
  store <2 x double> <double 0x40A6254AA0000000, double 0x40A6254AA0000000>, ptr %14, align 8, !tbaa !87
  %15 = and i32 %3, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %8
  %18 = tail call zeroext i8 @imb_addrectImBuf(ptr noundef nonnull %6) #10, !range !66
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  tail call void @IMB_freeImBuf(ptr noundef nonnull %6) #10
  br label %43

21:                                               ; preds = %17, %8
  %22 = and i32 %3, 32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = tail call zeroext i8 @imb_addrectfloatImBuf(ptr noundef nonnull %6) #10, !range !66
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  tail call void @IMB_freeImBuf(ptr noundef nonnull %6) #10
  br label %43

28:                                               ; preds = %24, %21
  %29 = and i32 %3, 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = tail call zeroext i8 @addzbufImBuf(ptr noundef nonnull %6) #10, !range !66
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  tail call void @IMB_freeImBuf(ptr noundef nonnull %6) #10
  br label %43

35:                                               ; preds = %31, %28
  %36 = and i32 %3, 64
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = tail call zeroext i8 @addzbuffloatImBuf(ptr noundef nonnull %6) #10, !range !66
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  tail call void @IMB_freeImBuf(ptr noundef nonnull %6) #10
  br label %43

42:                                               ; preds = %38, %35
  tail call void @colormanage_imbuf_set_default_spaces(ptr noundef nonnull %6) #9
  br label %43

43:                                               ; preds = %4, %42, %41, %34, %27, %20
  %44 = phi ptr [ null, %20 ], [ null, %27 ], [ null, %34 ], [ null, %41 ], [ %6, %42 ], [ null, %4 ]
  ret ptr %44
}

; Function Attrs: optsize
declare void @colormanage_imbuf_set_default_spaces(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #8

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }

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
!34 = !{!35, !39, i64 280}
!35 = !{!"ImBuf", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !37, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !40, i64 112, !37, i64 120, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !36, i64 296, !36, i64 304, !39, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !39, i64 2376, !36, i64 2384, !39, i64 2392, !39, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !39, i64 2432, !41, i64 2436, !42, i64 2456}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"float", !37, i64 0}
!41 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!42 = !{!"DDSData", !39, i64 0, !39, i64 4, !36, i64 8, !39, i64 16}
!43 = !{!36, !36, i64 0}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!35, !39, i64 2376}
!47 = !{!35, !36, i64 2464}
!48 = !{!35, !36, i64 48}
!49 = !{!35, !39, i64 36}
!50 = !{!35, !36, i64 40}
!51 = !{!35, !36, i64 88}
!52 = !{!35, !39, i64 84}
!53 = !{!35, !39, i64 80}
!54 = distinct !{!54, !45}
!55 = distinct !{!55, !45}
!56 = !{!35, !36, i64 96}
!57 = !{!35, !36, i64 104}
!58 = !{!"allocimbuf.c:freeencodedbufferImBuf"}
!59 = !{!35, !36, i64 2384}
!60 = !{!35, !39, i64 16}
!61 = !{!35, !39, i64 20}
!62 = !{!35, !39, i64 32}
!63 = !{!35, !37, i64 24}
!64 = !{!35, !39, i64 28}
!65 = !{!35, !39, i64 2396}
!66 = !{i8 0, i8 2}
!67 = !{!35, !39, i64 2392}
!68 = !{i64 0, i64 16, !69, i64 16, i64 4, !70, i64 20, i64 4, !70, i64 24, i64 4, !70, i64 28, i64 4, !70, i64 32, i64 8, !43, i64 40, i64 8, !43, i64 48, i64 8, !43, i64 56, i64 4, !71, i64 64, i64 160, !69, i64 224, i64 4, !70, i64 228, i64 4, !70, i64 232, i64 4, !70, i64 236, i64 4, !70, i64 240, i64 8, !43, i64 248, i64 8, !43, i64 256, i64 4, !70, i64 260, i64 1024, !69, i64 1284, i64 1024, !69, i64 2312, i64 8, !43, i64 2320, i64 4, !70, i64 2328, i64 8, !43, i64 2336, i64 4, !70, i64 2340, i64 4, !70, i64 2344, i64 8, !43, i64 2352, i64 8, !43, i64 2360, i64 8, !43, i64 2368, i64 8, !43, i64 2376, i64 4, !70, i64 2380, i64 4, !70, i64 2384, i64 4, !70, i64 2388, i64 4, !70, i64 2392, i64 4, !70, i64 2400, i64 4, !70, i64 2404, i64 4, !70, i64 2408, i64 8, !43, i64 2416, i64 4, !70}
!69 = !{!37, !37, i64 0}
!70 = !{!39, !39, i64 0}
!71 = !{!40, !40, i64 0}
!72 = !{i64 0, i64 4, !70, i64 4, i64 4, !70, i64 8, i64 4, !70, i64 12, i64 4, !70, i64 16, i64 8, !43, i64 24, i64 8, !43, i64 32, i64 4, !70, i64 36, i64 1024, !69, i64 1060, i64 1024, !69, i64 2088, i64 8, !43, i64 2096, i64 4, !70, i64 2104, i64 8, !43, i64 2112, i64 4, !70, i64 2116, i64 4, !70, i64 2120, i64 8, !43, i64 2128, i64 8, !43, i64 2136, i64 8, !43, i64 2144, i64 8, !43, i64 2152, i64 4, !70, i64 2156, i64 4, !70, i64 2160, i64 4, !70, i64 2164, i64 4, !70, i64 2168, i64 4, !70, i64 2176, i64 4, !70, i64 2180, i64 4, !70, i64 2184, i64 8, !43, i64 2192, i64 4, !70}
!73 = !{i64 0, i64 8, !43, i64 8, i64 4, !70, i64 12, i64 1024, !69, i64 1036, i64 1024, !69, i64 2064, i64 8, !43, i64 2072, i64 4, !70, i64 2080, i64 8, !43, i64 2088, i64 4, !70, i64 2092, i64 4, !70, i64 2096, i64 8, !43, i64 2104, i64 8, !43, i64 2112, i64 8, !43, i64 2120, i64 8, !43, i64 2128, i64 4, !70, i64 2132, i64 4, !70, i64 2136, i64 4, !70, i64 2140, i64 4, !70, i64 2144, i64 4, !70, i64 2152, i64 4, !70, i64 2156, i64 4, !70, i64 2160, i64 8, !43, i64 2168, i64 4, !70}
!74 = !{i64 4, i64 8, !43, i64 12, i64 4, !70, i64 16, i64 4, !70, i64 20, i64 8, !43, i64 28, i64 8, !43, i64 36, i64 8, !43, i64 44, i64 8, !43, i64 52, i64 4, !70, i64 56, i64 4, !70, i64 60, i64 4, !70, i64 64, i64 4, !70, i64 68, i64 4, !70, i64 76, i64 4, !70, i64 80, i64 4, !70, i64 84, i64 8, !43, i64 92, i64 4, !70}
!75 = !{i64 0, i64 4, !70, i64 4, i64 4, !70, i64 8, i64 8, !43, i64 16, i64 8, !43, i64 24, i64 8, !43, i64 32, i64 8, !43, i64 40, i64 4, !70, i64 44, i64 4, !70, i64 48, i64 4, !70, i64 52, i64 4, !70, i64 56, i64 4, !70, i64 64, i64 4, !70, i64 68, i64 4, !70, i64 72, i64 8, !43, i64 80, i64 4, !70}
!76 = !{i64 0, i64 4, !70, i64 4, i64 4, !70, i64 8, i64 4, !70, i64 12, i64 4, !70, i64 16, i64 4, !70, i64 24, i64 4, !70, i64 28, i64 4, !70, i64 32, i64 8, !43, i64 40, i64 4, !70}
!77 = !{i64 0, i64 4, !70}
!78 = !{i64 0, i64 4, !70, i64 4, i64 8, !43, i64 12, i64 8, !43, i64 20, i64 16, !69, i64 36, i64 4, !70, i64 40, i64 4, !70, i64 44, i64 4, !70, i64 48, i64 4, !70, i64 52, i64 8, !43, i64 60, i64 8, !43, i64 68, i64 8, !43, i64 76, i64 4, !71, i64 84, i64 160, !69, i64 244, i64 4, !70, i64 248, i64 4, !70, i64 252, i64 4, !70, i64 256, i64 4, !70, i64 260, i64 8, !43, i64 268, i64 8, !43, i64 276, i64 4, !70, i64 280, i64 1024, !69, i64 1304, i64 1024, !69, i64 2332, i64 8, !43, i64 2340, i64 4, !70, i64 2348, i64 8, !43, i64 2356, i64 4, !70, i64 2360, i64 4, !70, i64 2364, i64 8, !43, i64 2372, i64 8, !43, i64 2380, i64 8, !43, i64 2388, i64 8, !43, i64 2396, i64 4, !70, i64 2400, i64 4, !70, i64 2404, i64 4, !70, i64 2408, i64 4, !70, i64 2412, i64 4, !70, i64 2420, i64 4, !70, i64 2424, i64 4, !70, i64 2428, i64 8, !43, i64 2436, i64 4, !70}
!79 = !{i64 0, i64 4, !71, i64 8, i64 160, !69, i64 168, i64 4, !70, i64 172, i64 4, !70, i64 176, i64 4, !70, i64 180, i64 4, !70, i64 184, i64 8, !43, i64 192, i64 8, !43, i64 200, i64 4, !70, i64 204, i64 1024, !69, i64 1228, i64 1024, !69, i64 2256, i64 8, !43, i64 2264, i64 4, !70, i64 2272, i64 8, !43, i64 2280, i64 4, !70, i64 2284, i64 4, !70, i64 2288, i64 8, !43, i64 2296, i64 8, !43, i64 2304, i64 8, !43, i64 2312, i64 8, !43, i64 2320, i64 4, !70, i64 2324, i64 4, !70, i64 2328, i64 4, !70, i64 2332, i64 4, !70, i64 2336, i64 4, !70, i64 2344, i64 4, !70, i64 2348, i64 4, !70, i64 2352, i64 8, !43, i64 2360, i64 4, !70}
!80 = !{i64 0, i64 160, !69, i64 160, i64 4, !70, i64 164, i64 4, !70, i64 168, i64 4, !70, i64 172, i64 4, !70, i64 176, i64 8, !43, i64 184, i64 8, !43, i64 192, i64 4, !70, i64 196, i64 1024, !69, i64 1220, i64 1024, !69, i64 2248, i64 8, !43, i64 2256, i64 4, !70, i64 2264, i64 8, !43, i64 2272, i64 4, !70, i64 2276, i64 4, !70, i64 2280, i64 8, !43, i64 2288, i64 8, !43, i64 2296, i64 8, !43, i64 2304, i64 8, !43, i64 2312, i64 4, !70, i64 2316, i64 4, !70, i64 2320, i64 4, !70, i64 2324, i64 4, !70, i64 2328, i64 4, !70, i64 2336, i64 4, !70, i64 2340, i64 4, !70, i64 2344, i64 8, !43, i64 2352, i64 4, !70}
!81 = !{i64 0, i64 8, !43, i64 8, i64 8, !43, i64 16, i64 4, !70, i64 20, i64 1024, !69, i64 1044, i64 1024, !69, i64 2072, i64 8, !43, i64 2080, i64 4, !70, i64 2088, i64 8, !43, i64 2096, i64 4, !70, i64 2100, i64 4, !70, i64 2104, i64 8, !43, i64 2112, i64 8, !43, i64 2120, i64 8, !43, i64 2128, i64 8, !43, i64 2136, i64 4, !70, i64 2140, i64 4, !70, i64 2144, i64 4, !70, i64 2148, i64 4, !70, i64 2152, i64 4, !70, i64 2160, i64 4, !70, i64 2164, i64 4, !70, i64 2168, i64 8, !43, i64 2176, i64 4, !70}
!82 = !{i64 0, i64 8, !43, i64 8, i64 4, !70, i64 16, i64 8, !43, i64 24, i64 4, !70, i64 28, i64 4, !70, i64 32, i64 8, !43, i64 40, i64 8, !43, i64 48, i64 8, !43, i64 56, i64 8, !43, i64 64, i64 4, !70, i64 68, i64 4, !70, i64 72, i64 4, !70, i64 76, i64 4, !70, i64 80, i64 4, !70, i64 88, i64 4, !70, i64 92, i64 4, !70, i64 96, i64 8, !43, i64 104, i64 4, !70}
!83 = !{i64 0, i64 4, !70, i64 8, i64 8, !43, i64 16, i64 4, !70, i64 20, i64 4, !70, i64 24, i64 8, !43, i64 32, i64 8, !43, i64 40, i64 8, !43, i64 48, i64 8, !43, i64 56, i64 4, !70, i64 60, i64 4, !70, i64 64, i64 4, !70, i64 68, i64 4, !70, i64 72, i64 4, !70, i64 80, i64 4, !70, i64 84, i64 4, !70, i64 88, i64 8, !43, i64 96, i64 4, !70}
!84 = !{i64 0, i64 8, !43, i64 8, i64 4, !70, i64 12, i64 4, !70, i64 16, i64 8, !43, i64 24, i64 8, !43, i64 32, i64 8, !43, i64 40, i64 8, !43, i64 48, i64 4, !70, i64 52, i64 4, !70, i64 56, i64 4, !70, i64 60, i64 4, !70, i64 64, i64 4, !70, i64 72, i64 4, !70, i64 76, i64 4, !70, i64 80, i64 8, !43, i64 88, i64 4, !70}
!85 = !{i64 0, i64 8, !43, i64 8, i64 4, !70}
!86 = !{!35, !39, i64 312}
!87 = !{!88, !88, i64 0}
!88 = !{!"double", !37, i64 0}
