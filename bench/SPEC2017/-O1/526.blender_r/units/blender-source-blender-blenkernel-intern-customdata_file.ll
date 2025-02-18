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

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @cdf_create(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 88, ptr noundef nonnull @.str) #10
  store i32 %0, ptr %3, align 8, !tbaa !38
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local void @cdf_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @fclose(ptr noundef nonnull %3)
  store ptr null, ptr %2, align 8, !tbaa !43
  br label %7

7:                                                ; preds = %1, %5
  %8 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !44
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @fclose(ptr noundef nonnull %9)
  store ptr null, ptr %8, align 8, !tbaa !44
  br label %13

13:                                               ; preds = %7, %11
  %14 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !45
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %18(ptr noundef nonnull %15) #10
  br label %19

19:                                               ; preds = %17, %13
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %20(ptr noundef %0) #10
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @cdf_read_close(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @fclose(ptr noundef nonnull %3)
  store ptr null, ptr %2, align 8, !tbaa !43
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @cdf_write_close(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @fclose(ptr noundef nonnull %3)
  store ptr null, ptr %2, align 8, !tbaa !44
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @cdf_read_open(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BLI_fopen(ptr noundef %1, ptr noundef nonnull @.str.1) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %150, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 5
  store ptr %3, ptr %6, align 8, !tbaa !43
  %7 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 1
  %8 = tail call i64 @fread(ptr noundef nonnull %7, i64 noundef 20, i64 noundef 1, ptr noundef nonnull %3)
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %141, label %10

10:                                               ; preds = %5
  %11 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %7, ptr noundef nonnull dereferenceable(4) @.str.4, i64 4)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %141

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 1, i32 2
  %15 = load i8, ptr %14, align 1, !tbaa !46
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %141

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 1, i32 1
  %19 = load i8, ptr %18, align 4, !tbaa !47
  %20 = icmp ne i8 %19, 0
  %21 = zext i1 %20 to i32
  %22 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 7
  store i32 %21, ptr %22, align 8, !tbaa !48
  store i8 0, ptr %18, align 4, !tbaa !47
  br i1 %20, label %23, label %33

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 1, i32 6
  %25 = load i32, ptr %24, align 4, !tbaa !49
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  store i32 %26, ptr %24, align 4, !tbaa !49
  %27 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 1, i32 7
  %28 = load i32, ptr %27, align 4, !tbaa !49
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  store i32 %29, ptr %27, align 4, !tbaa !49
  %30 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 1, i32 5
  %31 = load i32, ptr %30, align 4, !tbaa !49
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  store i32 %32, ptr %30, align 4, !tbaa !49
  br label %33

33:                                               ; preds = %23, %17
  %34 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 1, i32 6
  %35 = load i32, ptr %34, align 4, !tbaa !50
  %36 = icmp ult i32 %35, 2
  br i1 %36, label %37, label %141

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 1, i32 5
  %39 = load i32, ptr %38, align 4, !tbaa !51
  %40 = sext i32 %39 to i64
  store i32 20, ptr %38, align 4, !tbaa !51
  %41 = tail call i32 @fseek(ptr noundef nonnull %3, i64 noundef %40, i32 noundef 0)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %141

43:                                               ; preds = %37
  %44 = load i32, ptr %34, align 4, !tbaa !50
  switch i32 %44, label %82 [
    i32 0, label %45
    i32 1, label %68
  ]

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 2
  %47 = tail call i64 @fread(ptr noundef nonnull %46, i64 noundef 16, i64 noundef 1, ptr noundef nonnull %3)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %141, label %49

49:                                               ; preds = %45
  %50 = load i32, ptr %22, align 8, !tbaa !48
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 2, i32 0, i32 1
  %54 = load i32, ptr %53, align 4, !tbaa !49
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  store i32 %55, ptr %53, align 4, !tbaa !49
  %56 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 2, i32 0, i32 2
  %57 = load i32, ptr %56, align 4, !tbaa !49
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  store i32 %58, ptr %56, align 4, !tbaa !49
  %59 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 2, i32 0, i32 3
  %60 = load i32, ptr %59, align 4, !tbaa !49
  %61 = tail call i32 @llvm.bswap.i32(i32 %60)
  store i32 %61, ptr %59, align 4, !tbaa !49
  %62 = load i32, ptr %46, align 4, !tbaa !49
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  store i32 %63, ptr %46, align 4, !tbaa !49
  br label %64

64:                                               ; preds = %52, %49
  %65 = load i32, ptr %46, align 4, !tbaa !52
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %40
  store i32 16, ptr %46, align 4, !tbaa !52
  br label %82

68:                                               ; preds = %43
  %69 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 2
  %70 = tail call i64 @fread(ptr noundef nonnull %69, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %3)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %141, label %72

72:                                               ; preds = %68
  %73 = load i32, ptr %22, align 8, !tbaa !48
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load i32, ptr %69, align 4, !tbaa !49
  %77 = tail call i32 @llvm.bswap.i32(i32 %76)
  store i32 %77, ptr %69, align 4, !tbaa !49
  br label %78

78:                                               ; preds = %75, %72
  %79 = load i32, ptr %69, align 4, !tbaa !54
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %80, %40
  store i32 4, ptr %69, align 4, !tbaa !54
  br label %82

82:                                               ; preds = %78, %64, %43
  %83 = phi i64 [ %67, %64 ], [ %81, %78 ], [ %40, %43 ]
  %84 = tail call i32 @fseek(ptr noundef nonnull %3, i64 noundef %83, i32 noundef 0)
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %141

86:                                               ; preds = %82
  %87 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %88 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 1, i32 7
  %89 = load i32, ptr %88, align 4, !tbaa !56
  %90 = sext i32 %89 to i64
  %91 = mul nsw i64 %90, 88
  %92 = tail call ptr %87(i64 noundef %91, ptr noundef nonnull @.str.3) #10
  %93 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 3
  store ptr %92, ptr %93, align 8, !tbaa !45
  %94 = load i32, ptr %88, align 4, !tbaa !56
  %95 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 4
  store i32 %94, ptr %95, align 8, !tbaa !57
  %96 = icmp sgt i32 %94, 0
  br i1 %96, label %102, label %134

97:                                               ; preds = %128
  %98 = add nuw nsw i64 %103, 1
  %99 = load i32, ptr %88, align 4, !tbaa !56
  %100 = sext i32 %99 to i64
  %101 = icmp slt i64 %98, %100
  br i1 %101, label %102, label %134, !llvm.loop !58

102:                                              ; preds = %86, %97
  %103 = phi i64 [ %98, %97 ], [ 0, %86 ]
  %104 = phi i64 [ %131, %97 ], [ %83, %86 ]
  %105 = load ptr, ptr %93, align 8, !tbaa !45
  %106 = getelementptr inbounds %struct.CDataFileLayer, ptr %105, i64 %103
  %107 = tail call i64 @fread(ptr noundef %106, i64 noundef 88, i64 noundef 1, ptr noundef nonnull %3)
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %141, label %109

109:                                              ; preds = %102
  %110 = load i32, ptr %22, align 8, !tbaa !48
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %124, label %112

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.CDataFileLayer, ptr %105, i64 %103, i32 3
  %114 = load i32, ptr %113, align 4, !tbaa !49
  %115 = tail call i32 @llvm.bswap.i32(i32 %114)
  store i32 %115, ptr %113, align 4, !tbaa !49
  %116 = getelementptr inbounds %struct.CDataFileLayer, ptr %105, i64 %103, i32 1
  %117 = load i32, ptr %116, align 4, !tbaa !49
  %118 = tail call i32 @llvm.bswap.i32(i32 %117)
  store i32 %118, ptr %116, align 4, !tbaa !49
  %119 = getelementptr inbounds %struct.CDataFileLayer, ptr %105, i64 %103, i32 2
  %120 = load i64, ptr %119, align 8, !tbaa !61
  %121 = tail call i64 @llvm.bswap.i64(i64 %120)
  store i64 %121, ptr %119, align 8, !tbaa !61
  %122 = load i32, ptr %106, align 4, !tbaa !49
  %123 = tail call i32 @llvm.bswap.i32(i32 %122)
  store i32 %123, ptr %106, align 4, !tbaa !49
  br label %124

124:                                              ; preds = %112, %109
  %125 = getelementptr inbounds %struct.CDataFileLayer, ptr %105, i64 %103, i32 1
  %126 = load i32, ptr %125, align 4, !tbaa !62
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %141

128:                                              ; preds = %124
  %129 = load i32, ptr %106, align 8, !tbaa !64
  %130 = sext i32 %129 to i64
  %131 = add i64 %104, %130
  store i32 88, ptr %106, align 8, !tbaa !64
  %132 = tail call i32 @fseek(ptr noundef nonnull %3, i64 noundef %131, i32 noundef 0)
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %97, label %141

134:                                              ; preds = %97, %86
  %135 = phi i64 [ %83, %86 ], [ %131, %97 ]
  %136 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 8
  store i64 %135, ptr %136, align 8, !tbaa !65
  %137 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 1, i32 6
  %138 = load i32, ptr %137, align 4, !tbaa !66
  %139 = load i32, ptr %0, align 8, !tbaa !38
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %150, label %144

141:                                              ; preds = %128, %124, %102, %82, %68, %45, %37, %33, %13, %10, %5
  %142 = load ptr, ptr %6, align 8, !tbaa !43
  %143 = icmp eq ptr %142, null
  br i1 %143, label %150, label %147

144:                                              ; preds = %134
  %145 = load ptr, ptr %6, align 8, !tbaa !43
  %146 = icmp eq ptr %145, null
  br i1 %146, label %150, label %147

147:                                              ; preds = %144, %141
  %148 = phi ptr [ %142, %141 ], [ %145, %144 ]
  %149 = tail call i32 @fclose(ptr noundef nonnull %148)
  store ptr null, ptr %6, align 8, !tbaa !43
  br label %150

150:                                              ; preds = %147, %144, %141, %134, %2
  %151 = phi i32 [ 0, %2 ], [ 1, %134 ], [ 0, %141 ], [ 0, %144 ], [ 0, %147 ]
  ret i32 %151
}

declare ptr @BLI_fopen(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @cdf_read_layer(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 8
  %4 = load i64, ptr %3, align 8, !tbaa !65
  %5 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !57
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !45
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
  %19 = load i64, ptr %18, align 8, !tbaa !67
  %20 = add i64 %19, %14
  %21 = add nuw nsw i64 %13, 1
  %22 = icmp eq i64 %21, %11
  br i1 %22, label %23, label %12, !llvm.loop !68

23:                                               ; preds = %17, %12, %2
  %24 = phi i64 [ %4, %2 ], [ %20, %17 ], [ %14, %12 ]
  %25 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !43
  %27 = tail call i32 @fseek(ptr noundef %26, i64 noundef %24, i32 noundef 0)
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i32
  ret i32 %29
}

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @cdf_read_data(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = tail call i64 @fread(ptr noundef %2, i64 noundef %4, i64 noundef 1, ptr noundef %6)
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !48
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = lshr i32 %1, 2
  tail call void @BLI_endian_switch_float_array(ptr noundef %2, i32 noundef %14) #10
  br label %15

15:                                               ; preds = %9, %13, %3
  %16 = phi i32 [ 0, %3 ], [ 1, %13 ], [ 1, %9 ]
  ret i32 %16
}

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

declare void @BLI_endian_switch_float_array(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @cdf_write_open(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BLI_fopen(ptr noundef %1, ptr noundef nonnull @.str.2) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %53, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 6
  store ptr %3, ptr %6, align 8, !tbaa !44
  %7 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 1
  store i8 66, ptr %7, align 4, !tbaa !69
  %8 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 1, i32 0, i64 1
  store i8 67, ptr %8, align 1, !tbaa !69
  %9 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 1, i32 0, i64 2
  store i8 68, ptr %9, align 2, !tbaa !69
  %10 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 1, i32 0, i64 3
  store i8 70, ptr %10, align 1, !tbaa !69
  %11 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 1, i32 1
  store i8 0, ptr %11, align 4, !tbaa !47
  %12 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 1, i32 2
  store i8 0, ptr %12, align 1, !tbaa !46
  %13 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 1, i32 3
  store i8 0, ptr %13, align 2, !tbaa !70
  %14 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 1, i32 5
  store i32 20, ptr %14, align 4, !tbaa !51
  %15 = load i32, ptr %0, align 8, !tbaa !38
  %16 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 1, i32 6
  store i32 %15, ptr %16, align 4, !tbaa !50
  %17 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 4
  %18 = load i32, ptr %17, align 8, !tbaa !57
  %19 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 1, i32 7
  store i32 %18, ptr %19, align 4, !tbaa !56
  switch i32 %15, label %25 [
    i32 0, label %20
    i32 1, label %23
  ]

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 2
  store i32 16, ptr %21, align 4, !tbaa !52
  %22 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 2, i32 0, i32 3
  store i32 64, ptr %22, align 4, !tbaa !71
  br label %25

23:                                               ; preds = %5
  %24 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 2
  store i32 4, ptr %24, align 4, !tbaa !54
  br label %25

25:                                               ; preds = %5, %23, %20
  %26 = tail call i64 @fwrite(ptr noundef nonnull %7, i64 noundef 20, i64 noundef 1, ptr noundef nonnull %3)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %53, label %28

28:                                               ; preds = %25
  %29 = load i32, ptr %16, align 4, !tbaa !50
  switch i32 %29, label %38 [
    i32 0, label %30
    i32 1, label %34
  ]

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 2
  %32 = tail call i64 @fwrite(ptr noundef nonnull %31, i64 noundef 16, i64 noundef 1, ptr noundef nonnull %3)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %53, label %38

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 2
  %36 = tail call i64 @fwrite(ptr noundef nonnull %35, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %3)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %53, label %38

38:                                               ; preds = %34, %30, %28
  %39 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 3
  %40 = load i32, ptr %19, align 4, !tbaa !56
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %47, label %53

42:                                               ; preds = %47
  %43 = add nuw nsw i64 %48, 1
  %44 = load i32, ptr %19, align 4, !tbaa !56
  %45 = sext i32 %44 to i64
  %46 = icmp slt i64 %43, %45
  br i1 %46, label %47, label %53, !llvm.loop !72

47:                                               ; preds = %38, %42
  %48 = phi i64 [ %43, %42 ], [ 0, %38 ]
  %49 = load ptr, ptr %39, align 8, !tbaa !45
  %50 = getelementptr inbounds %struct.CDataFileLayer, ptr %49, i64 %48
  %51 = tail call i64 @fwrite(ptr noundef %50, i64 noundef 88, i64 noundef 1, ptr noundef nonnull %3)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %42

53:                                               ; preds = %42, %47, %38, %34, %30, %25, %2
  %54 = phi i32 [ 0, %2 ], [ 1, %25 ], [ 1, %30 ], [ 1, %34 ], [ 1, %38 ], [ 1, %47 ], [ 1, %42 ]
  ret i32 %54
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @cdf_write_layer(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #4 {
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @cdf_write_data(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #1 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = tail call i64 @fwrite(ptr noundef %2, i64 noundef %4, i64 noundef 1, ptr noundef %6)
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i32
  ret i32 %9
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @cdf_remove(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @BLI_delete(ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  ret void
}

declare i32 @BLI_delete(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @cdf_layer_find(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !57
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !45
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
  %18 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(1) %2) #11
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

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @cdf_layer_add(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !57
  %8 = add nsw i32 %7, 1
  %9 = sext i32 %8 to i64
  %10 = mul nsw i64 %9, 88
  %11 = tail call ptr %5(i64 noundef %10, ptr noundef nonnull @.str.3) #10
  %12 = getelementptr inbounds %struct.CDataFile, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !45
  %14 = load i32, ptr %6, align 8, !tbaa !57
  %15 = sext i32 %14 to i64
  %16 = mul nsw i64 %15, 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %11, ptr align 8 %13, i64 %16, i1 false)
  store ptr %11, ptr %12, align 8, !tbaa !45
  %17 = load i32, ptr %6, align 8, !tbaa !57
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr %6, align 8, !tbaa !57
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds %struct.CDataFileLayer, ptr %11, i64 %19
  store i32 88, ptr %20, align 8, !tbaa !64
  %21 = getelementptr inbounds %struct.CDataFileLayer, ptr %11, i64 %19, i32 1
  store i32 0, ptr %21, align 4, !tbaa !62
  %22 = getelementptr inbounds %struct.CDataFileLayer, ptr %11, i64 %19, i32 2
  store i64 %3, ptr %22, align 8, !tbaa !67
  %23 = getelementptr inbounds %struct.CDataFileLayer, ptr %11, i64 %19, i32 3
  store i32 %1, ptr %23, align 8, !tbaa !73
  %24 = getelementptr inbounds %struct.CDataFileLayer, ptr %11, i64 %19, i32 4
  %25 = tail call ptr @BLI_strncpy(ptr noundef nonnull %24, ptr noundef %2, i64 noundef 64) #10
  ret ptr %20
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree nounwind willreturn memory(argmem: read) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !40, i64 0}
!39 = !{!"CDataFile", !40, i64 0, !41, i64 4, !36, i64 24, !35, i64 40, !40, i64 48, !35, i64 56, !35, i64 64, !40, i64 72, !42, i64 80}
!40 = !{!"int", !36, i64 0}
!41 = !{!"CDataFileHeader", !36, i64 0, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !40, i64 8, !40, i64 12, !40, i64 16}
!42 = !{!"long", !36, i64 0}
!43 = !{!39, !35, i64 56}
!44 = !{!39, !35, i64 64}
!45 = !{!39, !35, i64 40}
!46 = !{!41, !36, i64 5}
!47 = !{!41, !36, i64 4}
!48 = !{!39, !40, i64 72}
!49 = !{!40, !40, i64 0}
!50 = !{!41, !40, i64 12}
!51 = !{!41, !40, i64 8}
!52 = !{!53, !40, i64 0}
!53 = !{!"CDataFileImageHeader", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!54 = !{!55, !40, i64 0}
!55 = !{!"CDataFileMeshHeader", !40, i64 0}
!56 = !{!41, !40, i64 16}
!57 = !{!39, !40, i64 48}
!58 = distinct !{!58, !59, !60}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!"llvm.loop.unroll.disable"}
!61 = !{!42, !42, i64 0}
!62 = !{!63, !40, i64 4}
!63 = !{!"CDataFileLayer", !40, i64 0, !40, i64 4, !42, i64 8, !40, i64 16, !36, i64 20}
!64 = !{!63, !40, i64 0}
!65 = !{!39, !42, i64 80}
!66 = !{!39, !40, i64 16}
!67 = !{!63, !42, i64 8}
!68 = distinct !{!68, !59, !60}
!69 = !{!36, !36, i64 0}
!70 = !{!41, !36, i64 6}
!71 = !{!53, !40, i64 12}
!72 = distinct !{!72, !59, !60}
!73 = !{!63, !40, i64 16}
!74 = distinct !{!74, !59, !60}
