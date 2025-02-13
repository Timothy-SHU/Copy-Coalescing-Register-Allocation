; ModuleID = 'blender/source/blender/blenkernel/intern/customdata_file.c'
source_filename = "blender/source/blender/blenkernel/intern/customdata_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.CDataFile = type { i32, %struct.CDataFileHeader, %union.anon, ptr, i32, ptr, ptr, i32, i64 }
%struct.CDataFileHeader = type { [4 x i8], i8, i8, i8, i8, i32, i32, i32 }
%union.anon = type { %struct.CDataFileImageHeader }
%struct.CDataFileImageHeader = type { i32, i32, i32, i32 }
%struct.CDataFileLayer = type { i32, i32, i64, i32, [64 x i8] }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [10 x i8] c"CDataFile\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"CDataFileLayer\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"BCDF\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @cdf_create(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 88, ptr noundef nonnull @.str) #11
  store i32 %0, ptr %3, align 8, !tbaa !38
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cdf_free(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @cdf_read_close(ptr noundef %0) #12
  tail call void @cdf_write_close(ptr noundef %0) #12
  %2 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %6(ptr noundef nonnull %3) #11
  br label %7

7:                                                ; preds = %5, %1
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %8(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @cdf_read_close(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @fclose(ptr noundef nonnull %3) #12
  store ptr null, ptr %2, align 8, !tbaa !44
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @cdf_write_close(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @fclose(ptr noundef nonnull %3) #12
  store ptr null, ptr %2, align 8, !tbaa !45
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @cdf_read_open(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BLI_fopen(ptr noundef %1, ptr noundef nonnull @.str.1) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 5
  store ptr %3, ptr %6, align 8, !tbaa !44
  %7 = tail call fastcc i32 @cdf_read_header(ptr noundef %0) #12, !range !46
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 1, i32 6
  %11 = load i32, ptr %10, align 4, !tbaa !47
  %12 = load i32, ptr %0, align 8, !tbaa !38
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %9, %5
  tail call void @cdf_read_close(ptr noundef nonnull %0) #12
  br label %15

15:                                               ; preds = %14, %9, %2
  %16 = phi i32 [ 0, %2 ], [ 1, %9 ], [ 0, %14 ]
  ret i32 %16
}

; Function Attrs: optsize
declare ptr @BLI_fopen(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @cdf_read_header(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !48 {
  %2 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  %4 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 1
  %5 = tail call i64 @fread(ptr noundef nonnull %4, i64 noundef 20, i64 noundef 1, ptr noundef %3) #12
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %110, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %4, ptr noundef nonnull dereferenceable(4) @.str.4, i64 4)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %110

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 1, i32 2
  %12 = load i8, ptr %11, align 1, !tbaa !49
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %110

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 1, i32 1
  %16 = load i8, ptr %15, align 4, !tbaa !50
  %17 = icmp ne i8 %16, 0
  %18 = zext i1 %17 to i32
  %19 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 7
  store i32 %18, ptr %19, align 8, !tbaa !51
  store i8 0, ptr %15, align 4, !tbaa !50
  br i1 %17, label %20, label %24

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 1, i32 6
  tail call fastcc void @BLI_endian_switch_int32(ptr noundef nonnull %21) #12
  %22 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 1, i32 7
  tail call fastcc void @BLI_endian_switch_int32(ptr noundef nonnull %22) #12
  %23 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 1, i32 5
  tail call fastcc void @BLI_endian_switch_int32(ptr noundef nonnull %23) #12
  br label %24

24:                                               ; preds = %20, %14
  %25 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 1, i32 6
  %26 = load i32, ptr %25, align 4, !tbaa !52
  %27 = icmp ult i32 %26, 2
  br i1 %27, label %28, label %110

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 1, i32 5
  %30 = load i32, ptr %29, align 4, !tbaa !53
  %31 = sext i32 %30 to i64
  store i32 20, ptr %29, align 4, !tbaa !53
  %32 = tail call i32 @fseek(ptr noundef %3, i64 noundef %31, i32 noundef 0) #12
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %110

34:                                               ; preds = %28
  %35 = load i32, ptr %25, align 4, !tbaa !52
  switch i32 %35, label %63 [
    i32 0, label %36
    i32 1, label %51
  ]

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 2
  %38 = tail call i64 @fread(ptr noundef nonnull %37, i64 noundef 16, i64 noundef 1, ptr noundef %3) #12
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %110, label %40

40:                                               ; preds = %36
  %41 = load i32, ptr %19, align 8, !tbaa !51
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 2, i32 0, i32 1
  tail call fastcc void @BLI_endian_switch_int32(ptr noundef nonnull %44) #12
  %45 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 2, i32 0, i32 2
  tail call fastcc void @BLI_endian_switch_int32(ptr noundef nonnull %45) #12
  %46 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 2, i32 0, i32 3
  tail call fastcc void @BLI_endian_switch_int32(ptr noundef nonnull %46) #12
  tail call fastcc void @BLI_endian_switch_int32(ptr noundef nonnull %37) #12
  br label %47

47:                                               ; preds = %43, %40
  %48 = load i32, ptr %37, align 4, !tbaa !54
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %31
  store i32 16, ptr %37, align 4, !tbaa !54
  br label %63

51:                                               ; preds = %34
  %52 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 2
  %53 = tail call i64 @fread(ptr noundef nonnull %52, i64 noundef 4, i64 noundef 1, ptr noundef %3) #12
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %110, label %55

55:                                               ; preds = %51
  %56 = load i32, ptr %19, align 8, !tbaa !51
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  tail call fastcc void @BLI_endian_switch_int32(ptr noundef nonnull %52) #12
  br label %59

59:                                               ; preds = %58, %55
  %60 = load i32, ptr %52, align 4, !tbaa !56
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %61, %31
  store i32 4, ptr %52, align 4, !tbaa !56
  br label %63

63:                                               ; preds = %34, %59, %47
  %64 = phi i64 [ %50, %47 ], [ %62, %59 ], [ %31, %34 ]
  %65 = tail call i32 @fseek(ptr noundef %3, i64 noundef %64, i32 noundef 0) #12
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %110

67:                                               ; preds = %63
  %68 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %69 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 1, i32 7
  %70 = load i32, ptr %69, align 4, !tbaa !58
  %71 = sext i32 %70 to i64
  %72 = mul nsw i64 %71, 88
  %73 = tail call ptr %68(i64 noundef %72, ptr noundef nonnull @.str.3) #11
  %74 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 3
  store ptr %73, ptr %74, align 8, !tbaa !43
  %75 = load i32, ptr %69, align 4, !tbaa !58
  %76 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 4
  store i32 %75, ptr %76, align 8, !tbaa !59
  %77 = icmp sgt i32 %75, 0
  br i1 %77, label %83, label %107

78:                                               ; preds = %101
  %79 = add nuw nsw i64 %84, 1
  %80 = load i32, ptr %69, align 4, !tbaa !58
  %81 = sext i32 %80 to i64
  %82 = icmp slt i64 %79, %81
  br i1 %82, label %83, label %107, !llvm.loop !60

83:                                               ; preds = %67, %78
  %84 = phi i64 [ %79, %78 ], [ 0, %67 ]
  %85 = phi i64 [ %104, %78 ], [ %64, %67 ]
  %86 = load ptr, ptr %74, align 8, !tbaa !43
  %87 = getelementptr inbounds %struct.CDataFileLayer, ptr %86, i64 %84
  %88 = tail call i64 @fread(ptr noundef %87, i64 noundef 88, i64 noundef 1, ptr noundef %3) #12
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %110, label %90

90:                                               ; preds = %83
  %91 = load i32, ptr %19, align 8, !tbaa !51
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.CDataFileLayer, ptr %86, i64 %84, i32 3
  tail call fastcc void @BLI_endian_switch_int32(ptr noundef nonnull %94) #12
  %95 = getelementptr inbounds %struct.CDataFileLayer, ptr %86, i64 %84, i32 1
  tail call fastcc void @BLI_endian_switch_int32(ptr noundef nonnull %95) #12
  %96 = getelementptr inbounds %struct.CDataFileLayer, ptr %86, i64 %84, i32 2
  tail call fastcc void @BLI_endian_switch_uint64(ptr noundef nonnull %96) #12
  tail call fastcc void @BLI_endian_switch_int32(ptr noundef %87) #12
  br label %97

97:                                               ; preds = %93, %90
  %98 = getelementptr inbounds %struct.CDataFileLayer, ptr %86, i64 %84, i32 1
  %99 = load i32, ptr %98, align 4, !tbaa !62
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %97
  %102 = load i32, ptr %87, align 8, !tbaa !64
  %103 = sext i32 %102 to i64
  %104 = add i64 %85, %103
  store i32 88, ptr %87, align 8, !tbaa !64
  %105 = tail call i32 @fseek(ptr noundef %3, i64 noundef %104, i32 noundef 0) #12
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %78, label %110

107:                                              ; preds = %78, %67
  %108 = phi i64 [ %64, %67 ], [ %104, %78 ]
  %109 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 8
  store i64 %108, ptr %109, align 8, !tbaa !65
  br label %110

110:                                              ; preds = %101, %97, %83, %24, %63, %51, %36, %28, %10, %7, %1, %107
  %111 = phi i32 [ 1, %107 ], [ 0, %1 ], [ 0, %7 ], [ 0, %10 ], [ 0, %24 ], [ 0, %28 ], [ 0, %36 ], [ 0, %51 ], [ 0, %63 ], [ 0, %83 ], [ 0, %97 ], [ 0, %101 ]
  ret i32 %111
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef i32 @cdf_read_layer(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 8
  %4 = load i64, ptr %3, align 8, !tbaa !65
  %5 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !59
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = zext nneg i32 %6 to i64
  br label %12

12:                                               ; preds = %8, %17
  %13 = phi i64 [ 0, %8 ], [ %21, %17 ]
  %14 = phi i64 [ %4, %8 ], [ %20, %17 ]
  %15 = getelementptr inbounds %struct.CDataFileLayer, ptr %10, i64 %13
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.CDataFileLayer, ptr %10, i64 %13, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !66
  %20 = add i64 %19, %14
  %21 = add nuw nsw i64 %13, 1
  %22 = icmp eq i64 %21, %11
  br i1 %22, label %23, label %12, !llvm.loop !67

23:                                               ; preds = %17, %12, %2
  %24 = phi i64 [ %4, %2 ], [ %14, %12 ], [ %20, %17 ]
  %25 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !44
  %27 = tail call i32 @fseek(ptr noundef %26, i64 noundef %24, i32 noundef 0) #12
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i32
  ret i32 %29
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @cdf_read_data(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = tail call i64 @fread(ptr noundef %2, i64 noundef %4, i64 noundef 1, ptr noundef %6) #12
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !51
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = lshr i32 %1, 2
  tail call void @BLI_endian_switch_float_array(ptr noundef %2, i32 noundef %14) #11
  br label %15

15:                                               ; preds = %9, %13, %3
  %16 = phi i32 [ 0, %3 ], [ 1, %13 ], [ 1, %9 ]
  ret i32 %16
}

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_endian_switch_float_array(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @cdf_write_open(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BLI_fopen(ptr noundef %1, ptr noundef nonnull @.str.2) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 6
  store ptr %3, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 1
  store <4 x i8> <i8 66, i8 67, i8 68, i8 70>, ptr %7, align 4, !tbaa !68
  %8 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 1, i32 1
  store i8 0, ptr %8, align 4, !tbaa !50
  %9 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 1, i32 2
  store i8 0, ptr %9, align 1, !tbaa !49
  %10 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 1, i32 3
  store i8 0, ptr %10, align 2, !tbaa !69
  %11 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 1, i32 5
  store i32 20, ptr %11, align 4, !tbaa !53
  %12 = load i32, ptr %0, align 8, !tbaa !38
  %13 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 1, i32 6
  store i32 %12, ptr %13, align 4, !tbaa !52
  %14 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !59
  %16 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 1, i32 7
  store i32 %15, ptr %16, align 4, !tbaa !58
  switch i32 %12, label %22 [
    i32 0, label %17
    i32 1, label %20
  ]

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 2
  store i32 16, ptr %18, align 4, !tbaa !54
  %19 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 2, i32 0, i32 3
  store i32 64, ptr %19, align 4, !tbaa !70
  br label %22

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 2
  store i32 4, ptr %21, align 4, !tbaa !56
  br label %22

22:                                               ; preds = %5, %20, %17
  tail call fastcc void @cdf_write_header(ptr noundef nonnull %0) #12
  br label %23

23:                                               ; preds = %2, %22
  %24 = phi i32 [ 1, %22 ], [ 0, %2 ]
  ret i32 %24
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @cdf_write_header(ptr nocapture noundef %0) unnamed_addr #1 !PGOFuncName !71 {
  %2 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 1
  %5 = tail call i64 @fwrite(ptr noundef nonnull %4, i64 noundef 20, i64 noundef 1, ptr noundef %3) #12
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %34, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 1, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !52
  switch i32 %9, label %18 [
    i32 0, label %10
    i32 1, label %14
  ]

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 2
  %12 = tail call i64 @fwrite(ptr noundef nonnull %11, i64 noundef 16, i64 noundef 1, ptr noundef %3) #12
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %34, label %18

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 2
  %16 = tail call i64 @fwrite(ptr noundef nonnull %15, i64 noundef 4, i64 noundef 1, ptr noundef %3) #12
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %34, label %18

18:                                               ; preds = %7, %14, %10
  %19 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 3
  %20 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 1, i32 7
  %21 = load i32, ptr %20, align 4, !tbaa !58
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %28, label %34

23:                                               ; preds = %28
  %24 = add nuw nsw i64 %29, 1
  %25 = load i32, ptr %20, align 4, !tbaa !58
  %26 = sext i32 %25 to i64
  %27 = icmp slt i64 %24, %26
  br i1 %27, label %28, label %34, !llvm.loop !72

28:                                               ; preds = %18, %23
  %29 = phi i64 [ %24, %23 ], [ 0, %18 ]
  %30 = load ptr, ptr %19, align 8, !tbaa !43
  %31 = getelementptr inbounds %struct.CDataFileLayer, ptr %30, i64 %29
  %32 = tail call i64 @fwrite(ptr noundef %31, i64 noundef 88, i64 noundef 1, ptr noundef %3) #12
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %23

34:                                               ; preds = %28, %23, %18, %14, %10, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @cdf_write_layer(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #4 {
  ret i32 1
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef i32 @cdf_write_data(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #1 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = tail call i64 @fwrite(ptr noundef %2, i64 noundef %4, i64 noundef 1, ptr noundef %6) #12
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i32
  ret i32 %9
}

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cdf_remove(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @BLI_delete(ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  ret void
}

; Function Attrs: optsize
declare i32 @BLI_delete(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @cdf_layer_find(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !59
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = zext nneg i32 %5 to i64
  br label %11

11:                                               ; preds = %7, %20
  %12 = phi i64 [ 0, %7 ], [ %21, %20 ]
  %13 = getelementptr inbounds %struct.CDataFileLayer, ptr %9, i64 %12, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !73
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.CDataFileLayer, ptr %9, i64 %12, i32 4
  %18 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(1) %2) #13
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %11, %16
  %21 = add nuw nsw i64 %12, 1
  %22 = icmp eq i64 %21, %10
  br i1 %22, label %25, label %11, !llvm.loop !74

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.CDataFileLayer, ptr %9, i64 %12
  br label %25

25:                                               ; preds = %20, %3, %23
  %26 = phi ptr [ %24, %23 ], [ null, %3 ], [ null, %20 ]
  ret ptr %26
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @cdf_layer_add(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !59
  %8 = add nsw i32 %7, 1
  %9 = sext i32 %8 to i64
  %10 = mul nsw i64 %9, 88
  %11 = tail call ptr %5(i64 noundef %10, ptr noundef nonnull @.str.3) #11
  %12 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  %14 = load i32, ptr %6, align 8, !tbaa !59
  %15 = sext i32 %14 to i64
  %16 = mul nsw i64 %15, 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %11, ptr align 8 %13, i64 %16, i1 false)
  store ptr %11, ptr %12, align 8, !tbaa !43
  %17 = load i32, ptr %6, align 8, !tbaa !59
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr %6, align 8, !tbaa !59
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds %struct.CDataFileLayer, ptr %11, i64 %19
  store i32 88, ptr %20, align 8, !tbaa !64
  %21 = getelementptr inbounds %struct.CDataFileLayer, ptr %11, i64 %19, i32 1
  store i32 0, ptr %21, align 4, !tbaa !62
  %22 = getelementptr inbounds %struct.CDataFileLayer, ptr %11, i64 %19, i32 2
  store i64 %3, ptr %22, align 8, !tbaa !66
  %23 = getelementptr inbounds %struct.CDataFileLayer, ptr %11, i64 %19, i32 3
  store i32 %1, ptr %23, align 8, !tbaa !73
  %24 = getelementptr inbounds %struct.CDataFileLayer, ptr %11, i64 %19, i32 4
  %25 = tail call ptr @BLI_strncpy(ptr noundef nonnull %24, ptr noundef %2, i64 noundef 64) #11
  ret ptr %20
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @BLI_endian_switch_int32(ptr nocapture noundef %0) unnamed_addr #8 !PGOFuncName !75 {
  tail call fastcc void @BLI_endian_switch_uint32(ptr noundef %0) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @BLI_endian_switch_uint64(ptr nocapture noundef %0) unnamed_addr #8 !PGOFuncName !76 {
  %2 = load i64, ptr %0, align 8, !tbaa !77
  %3 = tail call i64 @llvm.bswap.i64(i64 %2)
  store i64 %3, ptr %0, align 8, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @BLI_endian_switch_uint32(ptr nocapture noundef %0) unnamed_addr #8 !PGOFuncName !78 {
  %2 = load i32, ptr %0, align 4, !tbaa !79
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  store i32 %3, ptr %0, align 4, !tbaa !79
  ret void
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind willreturn memory(argmem: read) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind optsize }
attributes #12 = { optsize }
attributes #13 = { nounwind optsize willreturn memory(read) }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !40, i64 0}
!39 = !{!"CDataFile", !40, i64 0, !41, i64 4, !36, i64 24, !35, i64 40, !40, i64 48, !35, i64 56, !35, i64 64, !40, i64 72, !42, i64 80}
!40 = !{!"int", !36, i64 0}
!41 = !{!"CDataFileHeader", !36, i64 0, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !40, i64 8, !40, i64 12, !40, i64 16}
!42 = !{!"long", !36, i64 0}
!43 = !{!39, !35, i64 40}
!44 = !{!39, !35, i64 56}
!45 = !{!39, !35, i64 64}
!46 = !{i32 0, i32 2}
!47 = !{!39, !40, i64 16}
!48 = !{!"customdata_file.c:cdf_read_header"}
!49 = !{!41, !36, i64 5}
!50 = !{!41, !36, i64 4}
!51 = !{!39, !40, i64 72}
!52 = !{!41, !40, i64 12}
!53 = !{!41, !40, i64 8}
!54 = !{!55, !40, i64 0}
!55 = !{!"CDataFileImageHeader", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!56 = !{!57, !40, i64 0}
!57 = !{!"CDataFileMeshHeader", !40, i64 0}
!58 = !{!41, !40, i64 16}
!59 = !{!39, !40, i64 48}
!60 = distinct !{!60, !61}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!63, !40, i64 4}
!63 = !{!"CDataFileLayer", !40, i64 0, !40, i64 4, !42, i64 8, !40, i64 16, !36, i64 20}
!64 = !{!63, !40, i64 0}
!65 = !{!39, !42, i64 80}
!66 = !{!63, !42, i64 8}
!67 = distinct !{!67, !61}
!68 = !{!36, !36, i64 0}
!69 = !{!41, !36, i64 6}
!70 = !{!55, !40, i64 12}
!71 = !{!"customdata_file.c:cdf_write_header"}
!72 = distinct !{!72, !61}
!73 = !{!63, !40, i64 16}
!74 = distinct !{!74, !61}
!75 = !{!"customdata_file.c:BLI_endian_switch_int32"}
!76 = !{!"customdata_file.c:BLI_endian_switch_uint64"}
!77 = !{!42, !42, i64 0}
!78 = !{!"customdata_file.c:BLI_endian_switch_uint32"}
!79 = !{!40, !40, i64 0}
