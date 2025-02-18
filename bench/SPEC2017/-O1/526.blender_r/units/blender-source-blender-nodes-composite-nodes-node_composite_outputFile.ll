; ModuleID = 'blender/source/blender/nodes/composite/nodes/node_composite_outputFile.c'
source_filename = "blender/source/blender/nodes/composite/nodes/node_composite_outputFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bNodeType = type { ptr, ptr, i16, [64 x i8], i32, [64 x i8], [256 x i8], i32, float, float, float, float, float, float, i16, i16, i16, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.StructRNA = type opaque
%struct.anon = type { ptr, ptr }
%struct.bNodeSocket = type { ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], ptr, i16, i16, i16, i16, ptr, [64 x i8], float, float, ptr, i16, i16, i32, ptr, i32, i32, ptr, ptr, %struct.bNodeStack }
%struct.bNodeStack = type { [4 x float], float, float, ptr, i16, i16, i16, i16, i16, i16, [2 x i16] }
%struct.NodeImageMultiFileSocket = type { i16, i16, i32, [1024 x i8], %struct.ImageFormatData, [30 x i8], [2 x i8] }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.ColorManagedViewSettings = type { i32, i32, [64 x i8], [64 x i8], float, float, ptr, ptr }
%struct.ColorManagedDisplaySettings = type { [64 x i8] }
%struct.anon.1 = type { ptr, ptr }
%struct.anon.0 = type { ptr, ptr }
%struct.anon.2 = type { ptr, ptr }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.NodeImageMultiFile = type { [1024 x i8], %struct.ImageFormatData, i32, i32, i32, i32 }
%struct.PointerRNA = type { %struct.anon.3, ptr, ptr }
%struct.anon.3 = type { ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
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
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.bNodeLink = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [20 x i8] c"socket image format\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@register_node_type_cmp_output_file.ntype = internal global %struct.bNodeType zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"File Output\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"NodeImageMultiFile\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"node image multi file\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Image\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@RNA_NodeSocket = external global %struct.StructRNA, align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"type\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @ntreeCompositOutputFileUniquePath(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca %struct.anon, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  store ptr %0, ptr %5, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.anon, ptr %5, i64 0, i32 1
  store ptr %1, ptr %6, align 8, !tbaa !39
  %7 = icmp eq ptr %1, null
  %8 = icmp eq ptr %2, null
  %9 = or i1 %7, %8
  br i1 %9, label %15, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !40
  %13 = getelementptr inbounds %struct.NodeImageMultiFileSocket, ptr %12, i64 0, i32 3
  %14 = call zeroext i8 @BLI_uniquename_cb(ptr noundef nonnull @unique_path_unique_check, ptr noundef nonnull %5, ptr noundef %2, i8 noundef zeroext %3, ptr noundef nonnull %13, i32 noundef 1024) #6
  br label %15

15:                                               ; preds = %4, %10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare zeroext i8 @BLI_uniquename_cb(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define internal noundef zeroext i8 @unique_path_unique_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.anon.1, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !39
  br label %9

9:                                                ; preds = %6, %18
  %10 = phi ptr [ %4, %6 ], [ %19, %18 ]
  %11 = icmp eq ptr %10, %8
  br i1 %11, label %18, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.bNodeSocket, ptr %10, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !40
  %15 = getelementptr inbounds %struct.NodeImageMultiFileSocket, ptr %14, i64 0, i32 3
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(1) %1) #7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %9, %12
  %19 = load ptr, ptr %10, align 8, !tbaa !46
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %9, !llvm.loop !47

21:                                               ; preds = %12, %18, %2
  %22 = phi i8 [ 0, %2 ], [ 1, %12 ], [ 0, %18 ]
  ret i8 %22
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @ntreeCompositOutputFileUniqueLayer(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca %struct.anon.0, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  store ptr %0, ptr %5, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.anon.0, ptr %5, i64 0, i32 1
  store ptr %1, ptr %6, align 8, !tbaa !39
  %7 = icmp eq ptr %1, null
  %8 = icmp eq ptr %2, null
  %9 = or i1 %7, %8
  br i1 %9, label %15, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !40
  %13 = getelementptr inbounds %struct.NodeImageMultiFileSocket, ptr %12, i64 0, i32 5
  %14 = call zeroext i8 @BLI_uniquename_cb(ptr noundef nonnull @unique_layer_unique_check, ptr noundef nonnull %5, ptr noundef %2, i8 noundef zeroext %3, ptr noundef nonnull %13, i32 noundef 30) #6
  br label %15

15:                                               ; preds = %4, %10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  ret void
}

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define internal noundef zeroext i8 @unique_layer_unique_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.anon.2, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !39
  br label %9

9:                                                ; preds = %6, %18
  %10 = phi ptr [ %4, %6 ], [ %19, %18 ]
  %11 = icmp eq ptr %10, %8
  br i1 %11, label %18, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.bNodeSocket, ptr %10, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !40
  %15 = getelementptr inbounds %struct.NodeImageMultiFileSocket, ptr %14, i64 0, i32 5
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(1) %1) #7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %9, %12
  %19 = load ptr, ptr %10, align 8, !tbaa !46
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %9, !llvm.loop !50

21:                                               ; preds = %12, %18, %2
  %22 = phi i8 [ 0, %2 ], [ 1, %12 ], [ 0, %18 ]
  ret i8 %22
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ntreeCompositOutputFileAddSocket(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly %3) local_unnamed_addr #0 {
  %5 = alloca %struct.anon.0, align 8
  %6 = alloca %struct.anon, align 8
  %7 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 21
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = tail call ptr @nodeAddStaticSocket(ptr noundef %0, ptr noundef %1, i32 noundef 1, i32 noundef 2, i32 noundef 0, ptr noundef null, ptr noundef %2) #6
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %11 = tail call ptr %10(i64 noundef 1312, ptr noundef nonnull @.str) #6
  %12 = getelementptr inbounds %struct.bNodeSocket, ptr %9, i64 0, i32 6
  store ptr %11, ptr %12, align 8, !tbaa !40
  %13 = getelementptr inbounds %struct.NodeImageMultiFileSocket, ptr %11, i64 0, i32 3
  %14 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %13, ptr noundef %2, i64 noundef 1024) #6
  %15 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6
  store ptr %15, ptr %6, align 8, !tbaa !34
  %16 = getelementptr inbounds %struct.anon, ptr %6, i64 0, i32 1
  store ptr %9, ptr %16, align 8, !tbaa !39
  %17 = icmp eq ptr %9, null
  %18 = icmp eq ptr %2, null
  %19 = or i1 %18, %17
  br i1 %19, label %30, label %20

20:                                               ; preds = %4
  %21 = load ptr, ptr %12, align 8, !tbaa !40
  %22 = getelementptr inbounds %struct.NodeImageMultiFileSocket, ptr %21, i64 0, i32 3
  %23 = call zeroext i8 @BLI_uniquename_cb(ptr noundef nonnull @unique_path_unique_check, ptr noundef nonnull %6, ptr noundef %2, i8 noundef zeroext 95, ptr noundef nonnull %22, i32 noundef 1024) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6
  %24 = getelementptr inbounds %struct.NodeImageMultiFileSocket, ptr %11, i64 0, i32 5
  %25 = call ptr @BLI_strncpy_utf8(ptr noundef nonnull %24, ptr noundef %2, i64 noundef 30) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  store ptr %15, ptr %5, align 8, !tbaa !34
  %26 = getelementptr inbounds %struct.anon.0, ptr %5, i64 0, i32 1
  store ptr %9, ptr %26, align 8, !tbaa !39
  %27 = load ptr, ptr %12, align 8, !tbaa !40
  %28 = getelementptr inbounds %struct.NodeImageMultiFileSocket, ptr %27, i64 0, i32 5
  %29 = call zeroext i8 @BLI_uniquename_cb(ptr noundef nonnull @unique_layer_unique_check, ptr noundef nonnull %5, ptr noundef %2, i8 noundef zeroext 95, ptr noundef nonnull %28, i32 noundef 30) #6
  br label %34

30:                                               ; preds = %4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6
  %31 = getelementptr inbounds %struct.NodeImageMultiFileSocket, ptr %11, i64 0, i32 5
  %32 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %31, ptr noundef %2, i64 noundef 30) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  store ptr %15, ptr %5, align 8, !tbaa !34
  %33 = getelementptr inbounds %struct.anon.0, ptr %5, i64 0, i32 1
  store ptr %9, ptr %33, align 8, !tbaa !39
  br label %34

34:                                               ; preds = %30, %20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  %35 = icmp eq ptr %3, null
  %36 = getelementptr inbounds %struct.NodeImageMultiFileSocket, ptr %11, i64 0, i32 4
  br i1 %35, label %42, label %37

37:                                               ; preds = %34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %36, ptr noundef nonnull align 8 dereferenceable(248) %3, i64 248, i1 false), !tbaa.struct !55
  %38 = load i8, ptr %36, align 8, !tbaa !60
  %39 = call zeroext i8 @BKE_imtype_is_movie(i8 noundef zeroext %38) #6
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  store i8 23, ptr %36, align 8, !tbaa !60
  br label %43

42:                                               ; preds = %34
  call void @BKE_imformat_defaults(ptr noundef nonnull %36) #6
  br label %43

43:                                               ; preds = %37, %41, %42
  %44 = getelementptr inbounds %struct.NodeImageMultiFileSocket, ptr %11, i64 0, i32 1
  store i16 1, ptr %44, align 2, !tbaa !65
  %45 = call i32 @BLI_findindex(ptr noundef nonnull %15, ptr noundef %9) #6
  %46 = getelementptr inbounds %struct.NodeImageMultiFile, ptr %8, i64 0, i32 4
  store i32 %45, ptr %46, align 8, !tbaa !66
  ret ptr %9
}

declare ptr @nodeAddStaticSocket(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_strncpy_utf8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare zeroext i8 @BKE_imtype_is_movie(i8 noundef zeroext) local_unnamed_addr #2

declare void @BKE_imformat_defaults(ptr noundef) local_unnamed_addr #2

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ntreeCompositOutputFileRemoveActiveSocket(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 21
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 17
  %6 = getelementptr inbounds %struct.NodeImageMultiFile, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !66
  %8 = tail call ptr @BLI_findlink(ptr noundef nonnull %5, i32 noundef %7) #6
  %9 = tail call i32 @BLI_countlist(ptr noundef nonnull %5) #6
  %10 = icmp eq ptr %8, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %2
  %12 = load i32, ptr %6, align 8, !tbaa !66
  %13 = add nsw i32 %9, -1
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = add nsw i32 %12, -1
  store i32 %16, ptr %6, align 8, !tbaa !66
  br label %17

17:                                               ; preds = %15, %11
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  %19 = getelementptr inbounds %struct.bNodeSocket, ptr %8, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !40
  tail call void %18(ptr noundef %20) #6
  tail call void @nodeRemoveSocket(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8) #6
  br label %21

21:                                               ; preds = %2, %17
  %22 = phi i32 [ 1, %17 ], [ 0, %2 ]
  ret i32 %22
}

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

declare void @nodeRemoveSocket(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ntreeCompositOutputFileSetPath(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.anon, align 8
  %5 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = getelementptr inbounds %struct.NodeImageMultiFileSocket, ptr %6, i64 0, i32 3
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %7, ptr noundef %2, i64 noundef 1024) #6
  %9 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  store ptr %9, ptr %4, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.anon, ptr %4, i64 0, i32 1
  store ptr %1, ptr %10, align 8, !tbaa !39
  %11 = icmp eq ptr %1, null
  %12 = icmp eq ptr %2, null
  %13 = or i1 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load ptr, ptr %5, align 8, !tbaa !40
  %16 = getelementptr inbounds %struct.NodeImageMultiFileSocket, ptr %15, i64 0, i32 3
  %17 = call zeroext i8 @BLI_uniquename_cb(ptr noundef nonnull @unique_path_unique_check, ptr noundef nonnull %4, ptr noundef %2, i8 noundef zeroext 95, ptr noundef nonnull %16, i32 noundef 1024) #6
  br label %18

18:                                               ; preds = %3, %14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ntreeCompositOutputFileSetLayer(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.anon.0, align 8
  %5 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = getelementptr inbounds %struct.NodeImageMultiFileSocket, ptr %6, i64 0, i32 5
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %7, ptr noundef %2, i64 noundef 30) #6
  %9 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  store ptr %9, ptr %4, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.anon.0, ptr %4, i64 0, i32 1
  store ptr %1, ptr %10, align 8, !tbaa !39
  %11 = icmp eq ptr %1, null
  %12 = icmp eq ptr %2, null
  %13 = or i1 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load ptr, ptr %5, align 8, !tbaa !40
  %16 = getelementptr inbounds %struct.NodeImageMultiFileSocket, ptr %15, i64 0, i32 5
  %17 = call zeroext i8 @BLI_uniquename_cb(ptr noundef nonnull @unique_layer_unique_check, ptr noundef nonnull %4, ptr noundef %2, i8 noundef zeroext 95, ptr noundef nonnull %16, i32 noundef 30) #6
  br label %18

18:                                               ; preds = %3, %14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @register_node_type_cmp_output_file() local_unnamed_addr #0 {
  tail call void @cmp_node_type_base(ptr noundef nonnull @register_node_type_cmp_output_file.ntype, i32 noundef 223, ptr noundef nonnull @.str.1, i16 noundef signext 1, i16 noundef signext 4) #6
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_cmp_output_file.ntype, ptr noundef null, ptr noundef null) #6
  store ptr @init_output_file, ptr getelementptr inbounds (%struct.bNodeType, ptr @register_node_type_cmp_output_file.ntype, i64 0, i32 34), align 8, !tbaa !68
  tail call void @node_type_storage(ptr noundef nonnull @register_node_type_cmp_output_file.ntype, ptr noundef nonnull @.str.2, ptr noundef nonnull @free_output_file, ptr noundef nonnull @copy_output_file) #6
  tail call void @node_type_update(ptr noundef nonnull @register_node_type_cmp_output_file.ntype, ptr noundef nonnull @update_output_file, ptr noundef null) #6
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_cmp_output_file.ntype) #6
  ret void
}

declare void @cmp_node_type_base(ptr noundef, i32 noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

declare void @node_type_socket_templates(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @init_output_file(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %4 = load ptr, ptr %1, align 8, !tbaa !71
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !74
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %8 = tail call ptr %7(i64 noundef 1288, ptr noundef nonnull @.str.3) #6
  %9 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 21
  store ptr %8, ptr %9, align 8, !tbaa !51
  %10 = icmp eq ptr %3, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22
  %13 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 84
  %14 = tail call ptr @BLI_strncpy(ptr noundef %8, ptr noundef nonnull %13, i64 noundef 1024) #6
  %15 = getelementptr inbounds %struct.NodeImageMultiFile, ptr %8, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %15, ptr noundef nonnull align 8 dereferenceable(248) %12, i64 248, i1 false), !tbaa.struct !55
  %16 = load i8, ptr %15, align 8, !tbaa !75
  %17 = tail call zeroext i8 @BKE_imtype_is_movie(i8 noundef zeroext %16) #6
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %11
  store i8 23, ptr %15, align 8, !tbaa !75
  br label %22

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.NodeImageMultiFile, ptr %8, i64 0, i32 1
  tail call void @BKE_imformat_defaults(ptr noundef nonnull %21) #6
  br label %22

22:                                               ; preds = %11, %19, %20
  %23 = phi ptr [ null, %20 ], [ %15, %19 ], [ %15, %11 ]
  %24 = tail call ptr @ntreeCompositOutputFileAddSocket(ptr noundef %4, ptr noundef %6, ptr noundef nonnull @.str.4, ptr noundef %23)
  ret void
}

declare void @node_type_storage(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @free_output_file(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %10, %5 ], [ %3, %1 ]
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.bNodeSocket, ptr %6, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !40
  tail call void %7(ptr noundef %9) #6
  %10 = load ptr, ptr %6, align 8, !tbaa !46
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %5, !llvm.loop !76

12:                                               ; preds = %5, %1
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  %14 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 21
  %15 = load ptr, ptr %14, align 8, !tbaa !51
  tail call void %13(ptr noundef %15) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @copy_output_file(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 21
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = tail call ptr %4(ptr noundef %6) #6
  %8 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 21
  store ptr %7, ptr %8, align 8, !tbaa !51
  %9 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 17
  %10 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 17
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = load ptr, ptr %9, align 8, !tbaa !46
  %13 = icmp ne ptr %12, null
  %14 = icmp ne ptr %11, null
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %16, label %29

16:                                               ; preds = %3, %16
  %17 = phi ptr [ %25, %16 ], [ %12, %3 ]
  %18 = phi ptr [ %24, %16 ], [ %11, %3 ]
  %19 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !46
  %20 = getelementptr inbounds %struct.bNodeSocket, ptr %17, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !40
  %22 = tail call ptr %19(ptr noundef %21) #6
  %23 = getelementptr inbounds %struct.bNodeSocket, ptr %18, i64 0, i32 6
  store ptr %22, ptr %23, align 8, !tbaa !40
  %24 = load ptr, ptr %18, align 8, !tbaa !46
  %25 = load ptr, ptr %17, align 8, !tbaa !46
  %26 = icmp ne ptr %25, null
  %27 = icmp ne ptr %24, null
  %28 = select i1 %26, i1 %27, i1 false
  br i1 %28, label %16, label %29, !llvm.loop !77

29:                                               ; preds = %16, %3
  ret void
}

declare void @node_type_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @update_output_file(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  %4 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !78
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %2, %14
  %8 = phi ptr [ %9, %14 ], [ %5, %2 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !79
  %10 = getelementptr inbounds %struct.bNodeSocket, ptr %8, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !40
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  tail call void @nodeRemoveSocket(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8) #6
  br label %14

14:                                               ; preds = %7, %13
  %15 = icmp eq ptr %9, null
  br i1 %15, label %16, label %7, !llvm.loop !80

16:                                               ; preds = %14, %2
  %17 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 18
  %18 = load ptr, ptr %17, align 8, !tbaa !81
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %16, %20
  %21 = phi ptr [ %22, %20 ], [ %18, %16 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !79
  tail call void @nodeRemoveSocket(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %21) #6
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %20, !llvm.loop !82

24:                                               ; preds = %20, %16
  tail call void @cmp_node_update_default(ptr noundef %0, ptr noundef %1) #6
  %25 = load ptr, ptr %4, align 8, !tbaa !46
  %26 = icmp eq ptr %25, null
  br i1 %26, label %42, label %27

27:                                               ; preds = %24, %39
  %28 = phi ptr [ %40, %39 ], [ %25, %24 ]
  %29 = getelementptr inbounds %struct.bNodeSocket, ptr %28, i64 0, i32 23
  %30 = load ptr, ptr %29, align 8, !tbaa !83
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %27
  call void @RNA_pointer_create(ptr noundef %0, ptr noundef nonnull @RNA_NodeSocket, ptr noundef nonnull %28, ptr noundef nonnull %3) #6
  %33 = load ptr, ptr %29, align 8, !tbaa !83
  %34 = getelementptr inbounds %struct.bNodeLink, ptr %33, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !84
  %36 = getelementptr inbounds %struct.bNodeSocket, ptr %35, i64 0, i32 7
  %37 = load i16, ptr %36, align 8, !tbaa !86
  %38 = sext i16 %37 to i32
  call void @RNA_enum_set(ptr noundef nonnull %3, ptr noundef nonnull @.str.5, i32 noundef %38) #6
  br label %39

39:                                               ; preds = %27, %32
  %40 = load ptr, ptr %28, align 8, !tbaa !46
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %27, !llvm.loop !87

42:                                               ; preds = %39, %24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  ret void
}

declare void @nodeRegisterType(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @cmp_node_update_default(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"", !36, i64 0, !36, i64 8}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!35, !36, i64 8}
!40 = !{!41, !36, i64 160}
!41 = !{!"bNodeSocket", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !37, i64 96, !36, i64 160, !42, i64 168, !42, i64 170, !42, i64 172, !42, i64 174, !36, i64 176, !37, i64 184, !43, i64 248, !43, i64 252, !36, i64 256, !42, i64 264, !42, i64 266, !44, i64 268, !36, i64 272, !44, i64 280, !44, i64 284, !36, i64 288, !36, i64 296, !45, i64 304}
!42 = !{!"short", !37, i64 0}
!43 = !{!"float", !37, i64 0}
!44 = !{!"int", !37, i64 0}
!45 = !{!"bNodeStack", !37, i64 0, !43, i64 16, !43, i64 20, !36, i64 24, !42, i64 32, !42, i64 34, !42, i64 36, !42, i64 38, !42, i64 40, !42, i64 42, !37, i64 44}
!46 = !{!36, !36, i64 0}
!47 = distinct !{!47, !48, !49}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = distinct !{!50, !48, !49}
!51 = !{!52, !36, i64 248}
!52 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !44, i64 168, !42, i64 172, !42, i64 174, !42, i64 176, !42, i64 178, !42, i64 180, !42, i64 182, !42, i64 184, !42, i64 186, !37, i64 188, !53, i64 200, !53, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !53, i64 264, !43, i64 280, !43, i64 284, !43, i64 288, !43, i64 292, !43, i64 296, !43, i64 300, !43, i64 304, !44, i64 308, !37, i64 312, !42, i64 376, !42, i64 378, !43, i64 380, !43, i64 384, !42, i64 388, !42, i64 390, !36, i64 392, !54, i64 400, !54, i64 416, !54, i64 432, !42, i64 448, !42, i64 450, !44, i64 452, !36, i64 456}
!53 = !{!"ListBase", !36, i64 0, !36, i64 8}
!54 = !{!"rctf", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!55 = !{i64 0, i64 1, !56, i64 1, i64 1, !56, i64 2, i64 1, !56, i64 3, i64 1, !56, i64 4, i64 1, !56, i64 5, i64 1, !56, i64 6, i64 1, !56, i64 7, i64 1, !56, i64 8, i64 2, !57, i64 10, i64 2, !57, i64 12, i64 4, !58, i64 16, i64 1, !56, i64 17, i64 1, !56, i64 18, i64 6, !56, i64 24, i64 4, !59, i64 28, i64 4, !59, i64 32, i64 64, !56, i64 96, i64 64, !56, i64 160, i64 4, !58, i64 164, i64 4, !58, i64 168, i64 8, !46, i64 176, i64 8, !46, i64 184, i64 64, !56}
!56 = !{!37, !37, i64 0}
!57 = !{!42, !42, i64 0}
!58 = !{!43, !43, i64 0}
!59 = !{!44, !44, i64 0}
!60 = !{!61, !37, i64 1032}
!61 = !{!"NodeImageMultiFileSocket", !42, i64 0, !42, i64 2, !44, i64 4, !37, i64 8, !62, i64 1032, !37, i64 1280, !37, i64 1310}
!62 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !42, i64 8, !42, i64 10, !43, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !63, i64 24, !64, i64 184}
!63 = !{!"ColorManagedViewSettings", !44, i64 0, !44, i64 4, !37, i64 8, !37, i64 72, !43, i64 136, !43, i64 140, !36, i64 144, !36, i64 152}
!64 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!65 = !{!61, !42, i64 2}
!66 = !{!67, !44, i64 1280}
!67 = !{!"NodeImageMultiFile", !37, i64 0, !62, i64 1024, !44, i64 1272, !44, i64 1276, !44, i64 1280, !44, i64 1284}
!68 = !{!69, !36, i64 640}
!69 = !{!"bNodeType", !36, i64 0, !36, i64 8, !42, i64 16, !37, i64 18, !44, i64 84, !37, i64 88, !37, i64 152, !44, i64 408, !43, i64 412, !43, i64 416, !43, i64 420, !43, i64 424, !43, i64 428, !43, i64 432, !42, i64 436, !42, i64 438, !42, i64 440, !36, i64 448, !36, i64 456, !37, i64 464, !36, i64 528, !36, i64 536, !36, i64 544, !36, i64 552, !36, i64 560, !36, i64 568, !36, i64 576, !36, i64 584, !36, i64 592, !36, i64 600, !36, i64 608, !36, i64 616, !36, i64 624, !36, i64 632, !36, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !36, i64 672, !36, i64 680, !36, i64 688, !36, i64 696, !36, i64 704, !36, i64 712, !70, i64 720}
!70 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!71 = !{!72, !36, i64 0}
!72 = !{!"PointerRNA", !73, i64 0, !36, i64 8, !36, i64 16}
!73 = !{!"", !36, i64 0}
!74 = !{!72, !36, i64 16}
!75 = !{!67, !37, i64 1024}
!76 = distinct !{!76, !48, !49}
!77 = distinct !{!77, !48, !49}
!78 = !{!52, !36, i64 200}
!79 = !{!41, !36, i64 0}
!80 = distinct !{!80, !48, !49}
!81 = !{!52, !36, i64 216}
!82 = distinct !{!82, !48, !49}
!83 = !{!41, !36, i64 296}
!84 = !{!85, !36, i64 32}
!85 = !{!"bNodeLink", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !44, i64 48, !44, i64 52}
!86 = !{!41, !42, i64 168}
!87 = distinct !{!87, !48, !49}
