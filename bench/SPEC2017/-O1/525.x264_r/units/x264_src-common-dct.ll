; ModuleID = 'x264_src/common/dct.c'
source_filename = "x264_src/common/dct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.x264_dct_function_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.x264_zigzag_function_t = type { ptr, ptr, ptr, ptr, ptr, ptr }

@x264_dct4_weight2_tab = internal unnamed_addr constant [16 x i16] [i16 800, i16 320, i16 800, i16 320, i16 320, i16 128, i16 320, i16 128, i16 800, i16 320, i16 800, i16 320, i16 320, i16 128, i16 320, i16 128], align 16
@x264_zigzag_scan4 = internal unnamed_addr constant [2 x [16 x i8]] [[16 x i8] c"\00\04\01\02\05\08\0C\09\06\03\07\0A\0D\0E\0B\0F", [16 x i8] c"\00\01\04\02\03\05\06\07\08\09\0A\0B\0C\0D\0E\0F"], align 16
@x264_dct4_weight2_zigzag = dso_local local_unnamed_addr global [2 x [16 x i32]] zeroinitializer, align 16
@x264_dct8_weight2_tab = internal unnamed_addr constant [64 x i16] [i16 256, i16 227, i16 410, i16 227, i16 256, i16 227, i16 410, i16 227, i16 227, i16 201, i16 363, i16 201, i16 227, i16 201, i16 363, i16 201, i16 410, i16 363, i16 656, i16 363, i16 410, i16 363, i16 656, i16 363, i16 227, i16 201, i16 363, i16 201, i16 227, i16 201, i16 363, i16 201, i16 256, i16 227, i16 410, i16 227, i16 256, i16 227, i16 410, i16 227, i16 227, i16 201, i16 363, i16 201, i16 227, i16 201, i16 363, i16 201, i16 410, i16 363, i16 656, i16 363, i16 410, i16 363, i16 656, i16 363, i16 227, i16 201, i16 363, i16 201, i16 227, i16 201, i16 363, i16 201], align 16
@x264_zigzag_scan8 = internal unnamed_addr constant [2 x [64 x i8]] [[64 x i8] c"\00\08\01\02\09\10\18\11\0A\03\04\0B\12\19 (!\1A\13\0C\05\06\0D\14\1B\22)081*#\1C\15\0E\07\0F\16\1D$+29:3,%\1E\17\1F&-4;<5.'/6=>7?", [64 x i8] c"\00\01\02\08\09\03\04\0A\10\0B\05\06\07\0C\11\18\12\0D\0E\0F\13\19 \1A\14\15\16\17\1B!(\22\1C\1D\1E\1F#)0*$%&'+12,-./3894567:;<=>?"], align 16
@x264_dct8_weight2_zigzag = dso_local local_unnamed_addr global [2 x [64 x i32]] zeroinitializer, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_dct_init(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  store ptr @sub4x4_dct, ptr %1, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.x264_dct_function_t, ptr %1, i64 0, i32 1
  store ptr @add4x4_idct, ptr %3, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct.x264_dct_function_t, ptr %1, i64 0, i32 2
  store ptr @sub8x8_dct, ptr %4, align 8, !tbaa !40
  %5 = getelementptr inbounds %struct.x264_dct_function_t, ptr %1, i64 0, i32 3
  store ptr @sub8x8_dct_dc, ptr %5, align 8, !tbaa !41
  %6 = getelementptr inbounds %struct.x264_dct_function_t, ptr %1, i64 0, i32 4
  store ptr @add8x8_idct, ptr %6, align 8, !tbaa !42
  %7 = getelementptr inbounds %struct.x264_dct_function_t, ptr %1, i64 0, i32 5
  store ptr @add8x8_idct_dc, ptr %7, align 8, !tbaa !43
  %8 = getelementptr inbounds %struct.x264_dct_function_t, ptr %1, i64 0, i32 6
  store ptr @sub16x16_dct, ptr %8, align 8, !tbaa !44
  %9 = getelementptr inbounds %struct.x264_dct_function_t, ptr %1, i64 0, i32 7
  store ptr @add16x16_idct, ptr %9, align 8, !tbaa !45
  %10 = getelementptr inbounds %struct.x264_dct_function_t, ptr %1, i64 0, i32 8
  store ptr @add16x16_idct_dc, ptr %10, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.x264_dct_function_t, ptr %1, i64 0, i32 9
  store ptr @sub8x8_dct8, ptr %11, align 8, !tbaa !47
  %12 = getelementptr inbounds %struct.x264_dct_function_t, ptr %1, i64 0, i32 10
  store ptr @add8x8_idct8, ptr %12, align 8, !tbaa !48
  %13 = getelementptr inbounds %struct.x264_dct_function_t, ptr %1, i64 0, i32 11
  store ptr @sub16x16_dct8, ptr %13, align 8, !tbaa !49
  %14 = getelementptr inbounds %struct.x264_dct_function_t, ptr %1, i64 0, i32 12
  store ptr @add16x16_idct8, ptr %14, align 8, !tbaa !50
  %15 = getelementptr inbounds %struct.x264_dct_function_t, ptr %1, i64 0, i32 13
  store ptr @dct4x4dc, ptr %15, align 8, !tbaa !51
  %16 = getelementptr inbounds %struct.x264_dct_function_t, ptr %1, i64 0, i32 14
  store ptr @idct4x4dc, ptr %16, align 8, !tbaa !52
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @sub4x4_dct(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #1 {
  %4 = alloca [16 x i16], align 16
  %5 = alloca [16 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #7
  br label %6

6:                                                ; preds = %3, %12
  %7 = phi i64 [ 0, %3 ], [ %15, %12 ]
  %8 = phi ptr [ %1, %3 ], [ %13, %12 ]
  %9 = phi ptr [ %2, %3 ], [ %14, %12 ]
  %10 = shl nuw nsw i64 %7, 2
  %11 = getelementptr i16, ptr %4, i64 %10
  br label %17

12:                                               ; preds = %17
  %13 = getelementptr inbounds i8, ptr %8, i64 16
  %14 = getelementptr inbounds i8, ptr %9, i64 32
  %15 = add nuw nsw i64 %7, 1
  %16 = icmp eq i64 %15, 4
  br i1 %16, label %29, label %6, !llvm.loop !53

17:                                               ; preds = %6, %17
  %18 = phi i64 [ 0, %6 ], [ %27, %17 ]
  %19 = getelementptr inbounds i8, ptr %8, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !56
  %21 = zext i8 %20 to i16
  %22 = getelementptr inbounds i8, ptr %9, i64 %18
  %23 = load i8, ptr %22, align 1, !tbaa !56
  %24 = zext i8 %23 to i16
  %25 = sub nsw i16 %21, %24
  %26 = getelementptr i16, ptr %11, i64 %18
  store i16 %25, ptr %26, align 2, !tbaa !57
  %27 = add nuw nsw i64 %18, 1
  %28 = icmp eq i64 %27, 4
  br i1 %28, label %12, label %17, !llvm.loop !59

29:                                               ; preds = %12, %29
  %30 = phi i64 [ %68, %29 ], [ 0, %12 ]
  %31 = shl nuw nsw i64 %30, 2
  %32 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 %31
  %33 = load i16, ptr %32, align 8, !tbaa !57
  %34 = sext i16 %33 to i32
  %35 = or disjoint i64 %31, 3
  %36 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 %35
  %37 = load i16, ptr %36, align 2, !tbaa !57
  %38 = sext i16 %37 to i32
  %39 = add nsw i32 %38, %34
  %40 = or disjoint i64 %31, 1
  %41 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 %40
  %42 = load i16, ptr %41, align 2, !tbaa !57
  %43 = sext i16 %42 to i32
  %44 = or disjoint i64 %31, 2
  %45 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 %44
  %46 = load i16, ptr %45, align 4, !tbaa !57
  %47 = sext i16 %46 to i32
  %48 = add nsw i32 %47, %43
  %49 = sub nsw i32 %34, %38
  %50 = sub nsw i32 %43, %47
  %51 = add nsw i32 %48, %39
  %52 = trunc i32 %51 to i16
  %53 = getelementptr inbounds [16 x i16], ptr %5, i64 0, i64 %30
  store i16 %52, ptr %53, align 2, !tbaa !57
  %54 = shl nsw i32 %49, 1
  %55 = add nsw i32 %50, %54
  %56 = trunc i32 %55 to i16
  %57 = or disjoint i64 %30, 4
  %58 = getelementptr inbounds [16 x i16], ptr %5, i64 0, i64 %57
  store i16 %56, ptr %58, align 2, !tbaa !57
  %59 = sub nsw i32 %39, %48
  %60 = trunc i32 %59 to i16
  %61 = or disjoint i64 %30, 8
  %62 = getelementptr inbounds [16 x i16], ptr %5, i64 0, i64 %61
  store i16 %60, ptr %62, align 2, !tbaa !57
  %63 = shl nsw i32 %50, 1
  %64 = sub nsw i32 %49, %63
  %65 = trunc i32 %64 to i16
  %66 = or disjoint i64 %30, 12
  %67 = getelementptr inbounds [16 x i16], ptr %5, i64 0, i64 %66
  store i16 %65, ptr %67, align 2, !tbaa !57
  %68 = add nuw nsw i64 %30, 1
  %69 = icmp eq i64 %68, 4
  br i1 %69, label %71, label %29, !llvm.loop !60

70:                                               ; preds = %71
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #7
  ret void

71:                                               ; preds = %29, %71
  %72 = phi i64 [ %107, %71 ], [ 0, %29 ]
  %73 = shl nuw nsw i64 %72, 2
  %74 = getelementptr inbounds [16 x i16], ptr %5, i64 0, i64 %73
  %75 = load i16, ptr %74, align 8, !tbaa !57
  %76 = sext i16 %75 to i32
  %77 = or disjoint i64 %73, 3
  %78 = getelementptr inbounds [16 x i16], ptr %5, i64 0, i64 %77
  %79 = load i16, ptr %78, align 2, !tbaa !57
  %80 = sext i16 %79 to i32
  %81 = add nsw i32 %80, %76
  %82 = or disjoint i64 %73, 1
  %83 = getelementptr inbounds [16 x i16], ptr %5, i64 0, i64 %82
  %84 = load i16, ptr %83, align 2, !tbaa !57
  %85 = sext i16 %84 to i32
  %86 = or disjoint i64 %73, 2
  %87 = getelementptr inbounds [16 x i16], ptr %5, i64 0, i64 %86
  %88 = load i16, ptr %87, align 4, !tbaa !57
  %89 = sext i16 %88 to i32
  %90 = add nsw i32 %89, %85
  %91 = sub nsw i32 %76, %80
  %92 = sub nsw i32 %85, %89
  %93 = add nsw i32 %90, %81
  %94 = trunc i32 %93 to i16
  %95 = getelementptr inbounds i16, ptr %0, i64 %73
  store i16 %94, ptr %95, align 2, !tbaa !57
  %96 = shl nsw i32 %91, 1
  %97 = add nsw i32 %92, %96
  %98 = trunc i32 %97 to i16
  %99 = getelementptr inbounds i16, ptr %0, i64 %82
  store i16 %98, ptr %99, align 2, !tbaa !57
  %100 = sub nsw i32 %81, %90
  %101 = trunc i32 %100 to i16
  %102 = getelementptr inbounds i16, ptr %0, i64 %86
  store i16 %101, ptr %102, align 2, !tbaa !57
  %103 = shl nsw i32 %92, 1
  %104 = sub nsw i32 %91, %103
  %105 = trunc i32 %104 to i16
  %106 = getelementptr inbounds i16, ptr %0, i64 %77
  store i16 %105, ptr %106, align 2, !tbaa !57
  %107 = add nuw nsw i64 %72, 1
  %108 = icmp eq i64 %107, 4
  br i1 %108, label %70, label %71, !llvm.loop !61
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @add4x4_idct(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [16 x i16], align 16
  %4 = alloca [16 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #7
  br label %5

5:                                                ; preds = %2, %5
  %6 = phi i64 [ 0, %2 ], [ %44, %5 ]
  %7 = getelementptr inbounds i16, ptr %1, i64 %6
  %8 = load i16, ptr %7, align 2, !tbaa !57
  %9 = zext i16 %8 to i32
  %10 = or disjoint i64 %6, 8
  %11 = getelementptr inbounds i16, ptr %1, i64 %10
  %12 = load i16, ptr %11, align 2, !tbaa !57
  %13 = zext i16 %12 to i32
  %14 = add nuw nsw i32 %13, %9
  %15 = sub nsw i32 %9, %13
  %16 = or disjoint i64 %6, 4
  %17 = getelementptr inbounds i16, ptr %1, i64 %16
  %18 = load i16, ptr %17, align 2, !tbaa !57
  %19 = sext i16 %18 to i32
  %20 = or disjoint i64 %6, 12
  %21 = getelementptr inbounds i16, ptr %1, i64 %20
  %22 = load i16, ptr %21, align 2, !tbaa !57
  %23 = sext i16 %22 to i32
  %24 = ashr i32 %23, 1
  %25 = add nsw i32 %24, %19
  %26 = ashr i32 %19, 1
  %27 = sub nsw i32 %26, %23
  %28 = add nsw i32 %25, %14
  %29 = trunc i32 %28 to i16
  %30 = shl nuw nsw i64 %6, 2
  %31 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 %30
  store i16 %29, ptr %31, align 8, !tbaa !57
  %32 = add nsw i32 %27, %15
  %33 = trunc i32 %32 to i16
  %34 = or disjoint i64 %30, 1
  %35 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 %34
  store i16 %33, ptr %35, align 2, !tbaa !57
  %36 = sub nsw i32 %15, %27
  %37 = trunc i32 %36 to i16
  %38 = or disjoint i64 %30, 2
  %39 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 %38
  store i16 %37, ptr %39, align 4, !tbaa !57
  %40 = sub nsw i32 %14, %25
  %41 = trunc i32 %40 to i16
  %42 = or disjoint i64 %30, 3
  %43 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 %42
  store i16 %41, ptr %43, align 2, !tbaa !57
  %44 = add nuw nsw i64 %6, 1
  %45 = icmp eq i64 %44, 4
  br i1 %45, label %46, label %5, !llvm.loop !62

46:                                               ; preds = %5, %46
  %47 = phi i64 [ %89, %46 ], [ 0, %5 ]
  %48 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 %47
  %49 = load i16, ptr %48, align 2, !tbaa !57
  %50 = sext i16 %49 to i32
  %51 = or disjoint i64 %47, 8
  %52 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 %51
  %53 = load i16, ptr %52, align 2, !tbaa !57
  %54 = sext i16 %53 to i32
  %55 = add nsw i32 %54, %50
  %56 = sub nsw i32 %50, %54
  %57 = or disjoint i64 %47, 4
  %58 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 %57
  %59 = load i16, ptr %58, align 2, !tbaa !57
  %60 = sext i16 %59 to i32
  %61 = or disjoint i64 %47, 12
  %62 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 %61
  %63 = load i16, ptr %62, align 2, !tbaa !57
  %64 = sext i16 %63 to i32
  %65 = ashr i32 %64, 1
  %66 = add nsw i32 %65, %60
  %67 = ashr i32 %60, 1
  %68 = sub nsw i32 %67, %64
  %69 = add nsw i32 %55, 32
  %70 = add nsw i32 %69, %66
  %71 = lshr i32 %70, 6
  %72 = trunc i32 %71 to i16
  %73 = getelementptr inbounds [16 x i16], ptr %3, i64 0, i64 %47
  store i16 %72, ptr %73, align 2, !tbaa !57
  %74 = add nsw i32 %56, 32
  %75 = add nsw i32 %74, %68
  %76 = lshr i32 %75, 6
  %77 = trunc i32 %76 to i16
  %78 = getelementptr inbounds [16 x i16], ptr %3, i64 0, i64 %57
  store i16 %77, ptr %78, align 2, !tbaa !57
  %79 = add nsw i32 %56, 32
  %80 = sub nsw i32 %79, %68
  %81 = lshr i32 %80, 6
  %82 = trunc i32 %81 to i16
  %83 = getelementptr inbounds [16 x i16], ptr %3, i64 0, i64 %51
  store i16 %82, ptr %83, align 2, !tbaa !57
  %84 = add nsw i32 %55, 32
  %85 = sub nsw i32 %84, %66
  %86 = lshr i32 %85, 6
  %87 = trunc i32 %86 to i16
  %88 = getelementptr inbounds [16 x i16], ptr %3, i64 0, i64 %61
  store i16 %87, ptr %88, align 2, !tbaa !57
  %89 = add nuw nsw i64 %47, 1
  %90 = icmp eq i64 %89, 4
  br i1 %90, label %91, label %46, !llvm.loop !63

91:                                               ; preds = %46, %96
  %92 = phi i64 [ %98, %96 ], [ 0, %46 ]
  %93 = phi ptr [ %97, %96 ], [ %0, %46 ]
  %94 = shl nuw nsw i64 %92, 2
  br label %100

95:                                               ; preds = %96
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #7
  ret void

96:                                               ; preds = %100
  %97 = getelementptr inbounds i8, ptr %93, i64 32
  %98 = add nuw nsw i64 %92, 1
  %99 = icmp eq i64 %98, 4
  br i1 %99, label %95, label %91, !llvm.loop !64

100:                                              ; preds = %91, %100
  %101 = phi i64 [ 0, %91 ], [ %115, %100 ]
  %102 = getelementptr inbounds i8, ptr %93, i64 %101
  %103 = load i8, ptr %102, align 1, !tbaa !56
  %104 = zext i8 %103 to i32
  %105 = add nuw nsw i64 %101, %94
  %106 = getelementptr inbounds [16 x i16], ptr %3, i64 0, i64 %105
  %107 = load i16, ptr %106, align 2, !tbaa !57
  %108 = sext i16 %107 to i32
  %109 = add nsw i32 %108, %104
  %110 = icmp ult i32 %109, 256
  %111 = icmp sgt i32 %109, 0
  %112 = sext i1 %111 to i32
  %113 = select i1 %110, i32 %109, i32 %112
  %114 = trunc i32 %113 to i8
  store i8 %114, ptr %102, align 1, !tbaa !56
  %115 = add nuw nsw i64 %101, 1
  %116 = icmp eq i64 %115, 4
  br i1 %116, label %96, label %100, !llvm.loop !65
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @sub8x8_dct(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #1 {
  tail call void @sub4x4_dct(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %4 = getelementptr inbounds [16 x i16], ptr %0, i64 1
  %5 = getelementptr inbounds i8, ptr %1, i64 4
  %6 = getelementptr inbounds i8, ptr %2, i64 4
  tail call void @sub4x4_dct(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %7 = getelementptr inbounds [16 x i16], ptr %0, i64 2
  %8 = getelementptr inbounds i8, ptr %1, i64 64
  %9 = getelementptr inbounds i8, ptr %2, i64 128
  tail call void @sub4x4_dct(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9)
  %10 = getelementptr inbounds [16 x i16], ptr %0, i64 3
  %11 = getelementptr inbounds i8, ptr %1, i64 68
  %12 = getelementptr inbounds i8, ptr %2, i64 132
  tail call void @sub4x4_dct(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @sub8x8_dct_dc(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #1 {
  %4 = alloca [16 x i16], align 16
  %5 = alloca [16 x i16], align 16
  %6 = alloca [16 x i16], align 16
  %7 = alloca [16 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #7
  br label %8

8:                                                ; preds = %14, %3
  %9 = phi i64 [ 0, %3 ], [ %17, %14 ]
  %10 = phi ptr [ %1, %3 ], [ %15, %14 ]
  %11 = phi ptr [ %2, %3 ], [ %16, %14 ]
  %12 = shl nuw nsw i64 %9, 2
  %13 = getelementptr i16, ptr %7, i64 %12
  br label %19

14:                                               ; preds = %19
  %15 = getelementptr inbounds i8, ptr %10, i64 16
  %16 = getelementptr inbounds i8, ptr %11, i64 32
  %17 = add nuw nsw i64 %9, 1
  %18 = icmp eq i64 %17, 4
  br i1 %18, label %31, label %8, !llvm.loop !53

19:                                               ; preds = %19, %8
  %20 = phi i64 [ 0, %8 ], [ %29, %19 ]
  %21 = getelementptr inbounds i8, ptr %10, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !56
  %23 = zext i8 %22 to i16
  %24 = getelementptr inbounds i8, ptr %11, i64 %20
  %25 = load i8, ptr %24, align 1, !tbaa !56
  %26 = zext i8 %25 to i16
  %27 = sub nsw i16 %23, %26
  %28 = getelementptr i16, ptr %13, i64 %20
  store i16 %27, ptr %28, align 2, !tbaa !57
  %29 = add nuw nsw i64 %20, 1
  %30 = icmp eq i64 %29, 4
  br i1 %30, label %14, label %19, !llvm.loop !59

31:                                               ; preds = %14
  %32 = load i16, ptr %7, align 16, !tbaa !57
  %33 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 1
  %34 = load i16, ptr %33, align 2, !tbaa !57
  %35 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 2
  %36 = load i16, ptr %35, align 4, !tbaa !57
  %37 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 3
  %38 = load i16, ptr %37, align 2, !tbaa !57
  %39 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 4
  %40 = load i16, ptr %39, align 8, !tbaa !57
  %41 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 5
  %42 = load i16, ptr %41, align 2, !tbaa !57
  %43 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 6
  %44 = load i16, ptr %43, align 4, !tbaa !57
  %45 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 7
  %46 = load i16, ptr %45, align 2, !tbaa !57
  %47 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 8
  %48 = load i16, ptr %47, align 16, !tbaa !57
  %49 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 9
  %50 = load i16, ptr %49, align 2, !tbaa !57
  %51 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 10
  %52 = load i16, ptr %51, align 4, !tbaa !57
  %53 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 11
  %54 = load i16, ptr %53, align 2, !tbaa !57
  %55 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 12
  %56 = load i16, ptr %55, align 8, !tbaa !57
  %57 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 13
  %58 = load i16, ptr %57, align 2, !tbaa !57
  %59 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 14
  %60 = load i16, ptr %59, align 4, !tbaa !57
  %61 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 15
  %62 = load i16, ptr %61, align 2, !tbaa !57
  %63 = add i16 %34, %32
  %64 = add i16 %63, %36
  %65 = add i16 %64, %38
  %66 = add i16 %65, %40
  %67 = add i16 %66, %42
  %68 = add i16 %67, %44
  %69 = add i16 %68, %46
  %70 = add i16 %69, %48
  %71 = add i16 %70, %50
  %72 = add i16 %71, %52
  %73 = add i16 %72, %54
  %74 = add i16 %73, %56
  %75 = add i16 %74, %58
  %76 = add i16 %75, %60
  %77 = add i16 %76, %62
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #7
  store i16 %77, ptr %0, align 2, !tbaa !57
  %78 = getelementptr inbounds i8, ptr %1, i64 4
  %79 = getelementptr inbounds i8, ptr %2, i64 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #7
  br label %80

80:                                               ; preds = %86, %31
  %81 = phi i64 [ 0, %31 ], [ %89, %86 ]
  %82 = phi ptr [ %78, %31 ], [ %87, %86 ]
  %83 = phi ptr [ %79, %31 ], [ %88, %86 ]
  %84 = shl nuw nsw i64 %81, 2
  %85 = getelementptr i16, ptr %6, i64 %84
  br label %91

86:                                               ; preds = %91
  %87 = getelementptr inbounds i8, ptr %82, i64 16
  %88 = getelementptr inbounds i8, ptr %83, i64 32
  %89 = add nuw nsw i64 %81, 1
  %90 = icmp eq i64 %89, 4
  br i1 %90, label %103, label %80, !llvm.loop !53

91:                                               ; preds = %91, %80
  %92 = phi i64 [ 0, %80 ], [ %101, %91 ]
  %93 = getelementptr inbounds i8, ptr %82, i64 %92
  %94 = load i8, ptr %93, align 1, !tbaa !56
  %95 = zext i8 %94 to i16
  %96 = getelementptr inbounds i8, ptr %83, i64 %92
  %97 = load i8, ptr %96, align 1, !tbaa !56
  %98 = zext i8 %97 to i16
  %99 = sub nsw i16 %95, %98
  %100 = getelementptr i16, ptr %85, i64 %92
  store i16 %99, ptr %100, align 2, !tbaa !57
  %101 = add nuw nsw i64 %92, 1
  %102 = icmp eq i64 %101, 4
  br i1 %102, label %86, label %91, !llvm.loop !59

103:                                              ; preds = %86
  %104 = load i16, ptr %6, align 16, !tbaa !57
  %105 = getelementptr inbounds [16 x i16], ptr %6, i64 0, i64 1
  %106 = load i16, ptr %105, align 2, !tbaa !57
  %107 = getelementptr inbounds [16 x i16], ptr %6, i64 0, i64 2
  %108 = load i16, ptr %107, align 4, !tbaa !57
  %109 = getelementptr inbounds [16 x i16], ptr %6, i64 0, i64 3
  %110 = load i16, ptr %109, align 2, !tbaa !57
  %111 = getelementptr inbounds [16 x i16], ptr %6, i64 0, i64 4
  %112 = load i16, ptr %111, align 8, !tbaa !57
  %113 = getelementptr inbounds [16 x i16], ptr %6, i64 0, i64 5
  %114 = load i16, ptr %113, align 2, !tbaa !57
  %115 = getelementptr inbounds [16 x i16], ptr %6, i64 0, i64 6
  %116 = load i16, ptr %115, align 4, !tbaa !57
  %117 = getelementptr inbounds [16 x i16], ptr %6, i64 0, i64 7
  %118 = load i16, ptr %117, align 2, !tbaa !57
  %119 = getelementptr inbounds [16 x i16], ptr %6, i64 0, i64 8
  %120 = load i16, ptr %119, align 16, !tbaa !57
  %121 = getelementptr inbounds [16 x i16], ptr %6, i64 0, i64 9
  %122 = load i16, ptr %121, align 2, !tbaa !57
  %123 = getelementptr inbounds [16 x i16], ptr %6, i64 0, i64 10
  %124 = load i16, ptr %123, align 4, !tbaa !57
  %125 = getelementptr inbounds [16 x i16], ptr %6, i64 0, i64 11
  %126 = load i16, ptr %125, align 2, !tbaa !57
  %127 = getelementptr inbounds [16 x i16], ptr %6, i64 0, i64 12
  %128 = load i16, ptr %127, align 8, !tbaa !57
  %129 = getelementptr inbounds [16 x i16], ptr %6, i64 0, i64 13
  %130 = load i16, ptr %129, align 2, !tbaa !57
  %131 = getelementptr inbounds [16 x i16], ptr %6, i64 0, i64 14
  %132 = load i16, ptr %131, align 4, !tbaa !57
  %133 = getelementptr inbounds [16 x i16], ptr %6, i64 0, i64 15
  %134 = load i16, ptr %133, align 2, !tbaa !57
  %135 = add i16 %106, %104
  %136 = add i16 %135, %108
  %137 = add i16 %136, %110
  %138 = add i16 %137, %112
  %139 = add i16 %138, %114
  %140 = add i16 %139, %116
  %141 = add i16 %140, %118
  %142 = add i16 %141, %120
  %143 = add i16 %142, %122
  %144 = add i16 %143, %124
  %145 = add i16 %144, %126
  %146 = add i16 %145, %128
  %147 = add i16 %146, %130
  %148 = add i16 %147, %132
  %149 = add i16 %148, %134
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #7
  %150 = getelementptr inbounds i16, ptr %0, i64 1
  store i16 %149, ptr %150, align 2, !tbaa !57
  %151 = getelementptr inbounds i8, ptr %1, i64 64
  %152 = getelementptr inbounds i8, ptr %2, i64 128
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #7
  br label %153

153:                                              ; preds = %159, %103
  %154 = phi i64 [ 0, %103 ], [ %162, %159 ]
  %155 = phi ptr [ %151, %103 ], [ %160, %159 ]
  %156 = phi ptr [ %152, %103 ], [ %161, %159 ]
  %157 = shl nuw nsw i64 %154, 2
  %158 = getelementptr i16, ptr %5, i64 %157
  br label %164

159:                                              ; preds = %164
  %160 = getelementptr inbounds i8, ptr %155, i64 16
  %161 = getelementptr inbounds i8, ptr %156, i64 32
  %162 = add nuw nsw i64 %154, 1
  %163 = icmp eq i64 %162, 4
  br i1 %163, label %176, label %153, !llvm.loop !53

164:                                              ; preds = %164, %153
  %165 = phi i64 [ 0, %153 ], [ %174, %164 ]
  %166 = getelementptr inbounds i8, ptr %155, i64 %165
  %167 = load i8, ptr %166, align 1, !tbaa !56
  %168 = zext i8 %167 to i16
  %169 = getelementptr inbounds i8, ptr %156, i64 %165
  %170 = load i8, ptr %169, align 1, !tbaa !56
  %171 = zext i8 %170 to i16
  %172 = sub nsw i16 %168, %171
  %173 = getelementptr i16, ptr %158, i64 %165
  store i16 %172, ptr %173, align 2, !tbaa !57
  %174 = add nuw nsw i64 %165, 1
  %175 = icmp eq i64 %174, 4
  br i1 %175, label %159, label %164, !llvm.loop !59

176:                                              ; preds = %159
  %177 = load i16, ptr %5, align 16, !tbaa !57
  %178 = getelementptr inbounds [16 x i16], ptr %5, i64 0, i64 1
  %179 = load i16, ptr %178, align 2, !tbaa !57
  %180 = getelementptr inbounds [16 x i16], ptr %5, i64 0, i64 2
  %181 = load i16, ptr %180, align 4, !tbaa !57
  %182 = getelementptr inbounds [16 x i16], ptr %5, i64 0, i64 3
  %183 = load i16, ptr %182, align 2, !tbaa !57
  %184 = getelementptr inbounds [16 x i16], ptr %5, i64 0, i64 4
  %185 = load i16, ptr %184, align 8, !tbaa !57
  %186 = getelementptr inbounds [16 x i16], ptr %5, i64 0, i64 5
  %187 = load i16, ptr %186, align 2, !tbaa !57
  %188 = getelementptr inbounds [16 x i16], ptr %5, i64 0, i64 6
  %189 = load i16, ptr %188, align 4, !tbaa !57
  %190 = getelementptr inbounds [16 x i16], ptr %5, i64 0, i64 7
  %191 = load i16, ptr %190, align 2, !tbaa !57
  %192 = getelementptr inbounds [16 x i16], ptr %5, i64 0, i64 8
  %193 = load i16, ptr %192, align 16, !tbaa !57
  %194 = getelementptr inbounds [16 x i16], ptr %5, i64 0, i64 9
  %195 = load i16, ptr %194, align 2, !tbaa !57
  %196 = getelementptr inbounds [16 x i16], ptr %5, i64 0, i64 10
  %197 = load i16, ptr %196, align 4, !tbaa !57
  %198 = getelementptr inbounds [16 x i16], ptr %5, i64 0, i64 11
  %199 = load i16, ptr %198, align 2, !tbaa !57
  %200 = getelementptr inbounds [16 x i16], ptr %5, i64 0, i64 12
  %201 = load i16, ptr %200, align 8, !tbaa !57
  %202 = getelementptr inbounds [16 x i16], ptr %5, i64 0, i64 13
  %203 = load i16, ptr %202, align 2, !tbaa !57
  %204 = getelementptr inbounds [16 x i16], ptr %5, i64 0, i64 14
  %205 = load i16, ptr %204, align 4, !tbaa !57
  %206 = getelementptr inbounds [16 x i16], ptr %5, i64 0, i64 15
  %207 = load i16, ptr %206, align 2, !tbaa !57
  %208 = add i16 %179, %177
  %209 = add i16 %208, %181
  %210 = add i16 %209, %183
  %211 = add i16 %210, %185
  %212 = add i16 %211, %187
  %213 = add i16 %212, %189
  %214 = add i16 %213, %191
  %215 = add i16 %214, %193
  %216 = add i16 %215, %195
  %217 = add i16 %216, %197
  %218 = add i16 %217, %199
  %219 = add i16 %218, %201
  %220 = add i16 %219, %203
  %221 = add i16 %220, %205
  %222 = add i16 %221, %207
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #7
  %223 = getelementptr inbounds i16, ptr %0, i64 2
  store i16 %222, ptr %223, align 2, !tbaa !57
  %224 = getelementptr inbounds i8, ptr %1, i64 68
  %225 = getelementptr inbounds i8, ptr %2, i64 132
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #7
  br label %226

226:                                              ; preds = %232, %176
  %227 = phi i64 [ 0, %176 ], [ %235, %232 ]
  %228 = phi ptr [ %224, %176 ], [ %233, %232 ]
  %229 = phi ptr [ %225, %176 ], [ %234, %232 ]
  %230 = shl nuw nsw i64 %227, 2
  %231 = getelementptr i16, ptr %4, i64 %230
  br label %237

232:                                              ; preds = %237
  %233 = getelementptr inbounds i8, ptr %228, i64 16
  %234 = getelementptr inbounds i8, ptr %229, i64 32
  %235 = add nuw nsw i64 %227, 1
  %236 = icmp eq i64 %235, 4
  br i1 %236, label %249, label %226, !llvm.loop !53

237:                                              ; preds = %237, %226
  %238 = phi i64 [ 0, %226 ], [ %247, %237 ]
  %239 = getelementptr inbounds i8, ptr %228, i64 %238
  %240 = load i8, ptr %239, align 1, !tbaa !56
  %241 = zext i8 %240 to i16
  %242 = getelementptr inbounds i8, ptr %229, i64 %238
  %243 = load i8, ptr %242, align 1, !tbaa !56
  %244 = zext i8 %243 to i16
  %245 = sub nsw i16 %241, %244
  %246 = getelementptr i16, ptr %231, i64 %238
  store i16 %245, ptr %246, align 2, !tbaa !57
  %247 = add nuw nsw i64 %238, 1
  %248 = icmp eq i64 %247, 4
  br i1 %248, label %232, label %237, !llvm.loop !59

249:                                              ; preds = %232
  %250 = load i16, ptr %4, align 16, !tbaa !57
  %251 = zext i16 %250 to i32
  %252 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 1
  %253 = load i16, ptr %252, align 2, !tbaa !57
  %254 = zext i16 %253 to i32
  %255 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 2
  %256 = load i16, ptr %255, align 4, !tbaa !57
  %257 = zext i16 %256 to i32
  %258 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 3
  %259 = load i16, ptr %258, align 2, !tbaa !57
  %260 = zext i16 %259 to i32
  %261 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 4
  %262 = load i16, ptr %261, align 8, !tbaa !57
  %263 = zext i16 %262 to i32
  %264 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 5
  %265 = load i16, ptr %264, align 2, !tbaa !57
  %266 = zext i16 %265 to i32
  %267 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 6
  %268 = load i16, ptr %267, align 4, !tbaa !57
  %269 = zext i16 %268 to i32
  %270 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 7
  %271 = load i16, ptr %270, align 2, !tbaa !57
  %272 = zext i16 %271 to i32
  %273 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 8
  %274 = load i16, ptr %273, align 16, !tbaa !57
  %275 = zext i16 %274 to i32
  %276 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 9
  %277 = load i16, ptr %276, align 2, !tbaa !57
  %278 = zext i16 %277 to i32
  %279 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 10
  %280 = load i16, ptr %279, align 4, !tbaa !57
  %281 = zext i16 %280 to i32
  %282 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 11
  %283 = load i16, ptr %282, align 2, !tbaa !57
  %284 = zext i16 %283 to i32
  %285 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 12
  %286 = load i16, ptr %285, align 8, !tbaa !57
  %287 = zext i16 %286 to i32
  %288 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 13
  %289 = load i16, ptr %288, align 2, !tbaa !57
  %290 = zext i16 %289 to i32
  %291 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 14
  %292 = load i16, ptr %291, align 4, !tbaa !57
  %293 = zext i16 %292 to i32
  %294 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 15
  %295 = load i16, ptr %294, align 2, !tbaa !57
  %296 = zext i16 %295 to i32
  %297 = add nuw nsw i32 %254, %251
  %298 = add nuw nsw i32 %297, %257
  %299 = add nuw nsw i32 %298, %260
  %300 = add nuw nsw i32 %299, %263
  %301 = add nuw nsw i32 %300, %266
  %302 = add nuw nsw i32 %301, %269
  %303 = add i32 %302, %272
  %304 = add i32 %303, %275
  %305 = add i32 %304, %278
  %306 = add i32 %305, %281
  %307 = add i32 %306, %284
  %308 = add i32 %307, %287
  %309 = add i32 %308, %290
  %310 = add i32 %309, %293
  %311 = add i32 %310, %296
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #7
  %312 = trunc i32 %311 to i16
  %313 = getelementptr inbounds i16, ptr %0, i64 3
  store i16 %312, ptr %313, align 2, !tbaa !57
  %314 = zext i16 %77 to i32
  %315 = zext i16 %149 to i32
  %316 = add nuw nsw i32 %315, %314
  %317 = zext i16 %222 to i32
  %318 = shl i32 %311, 16
  %319 = ashr exact i32 %318, 16
  %320 = add nsw i32 %319, %317
  %321 = sub nsw i32 %314, %315
  %322 = sub nsw i32 %317, %319
  %323 = add nsw i32 %320, %316
  %324 = trunc i32 %323 to i16
  store i16 %324, ptr %0, align 2, !tbaa !57
  %325 = add nsw i32 %322, %321
  %326 = trunc i32 %325 to i16
  store i16 %326, ptr %223, align 2, !tbaa !57
  %327 = sub nsw i32 %316, %320
  %328 = trunc i32 %327 to i16
  store i16 %328, ptr %150, align 2, !tbaa !57
  %329 = sub nsw i32 %321, %322
  %330 = trunc i32 %329 to i16
  store i16 %330, ptr %313, align 2, !tbaa !57
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @add8x8_idct(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #2 {
  tail call void @add4x4_idct(ptr noundef %0, ptr noundef %1)
  %3 = getelementptr inbounds i8, ptr %0, i64 4
  %4 = getelementptr inbounds [16 x i16], ptr %1, i64 1
  tail call void @add4x4_idct(ptr noundef nonnull %3, ptr noundef nonnull %4)
  %5 = getelementptr inbounds i8, ptr %0, i64 128
  %6 = getelementptr inbounds [16 x i16], ptr %1, i64 2
  tail call void @add4x4_idct(ptr noundef nonnull %5, ptr noundef nonnull %6)
  %7 = getelementptr inbounds i8, ptr %0, i64 132
  %8 = getelementptr inbounds [16 x i16], ptr %1, i64 3
  tail call void @add4x4_idct(ptr noundef nonnull %7, ptr noundef nonnull %8)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @add8x8_idct_dc(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load i16, ptr %1, align 2, !tbaa !57
  %4 = sext i16 %3 to i32
  %5 = add nsw i32 %4, 32
  %6 = ashr i32 %5, 6
  br label %7

7:                                                ; preds = %2, %7
  %8 = phi i32 [ 0, %2 ], [ %45, %7 ]
  %9 = phi ptr [ %0, %2 ], [ %46, %7 ]
  %10 = load i8, ptr %9, align 1, !tbaa !56
  %11 = zext i8 %10 to i32
  %12 = add nsw i32 %6, %11
  %13 = icmp ult i32 %12, 256
  %14 = icmp sgt i32 %12, 0
  %15 = sext i1 %14 to i32
  %16 = select i1 %13, i32 %12, i32 %15
  %17 = trunc i32 %16 to i8
  store i8 %17, ptr %9, align 1, !tbaa !56
  %18 = getelementptr inbounds i8, ptr %9, i64 1
  %19 = load i8, ptr %18, align 1, !tbaa !56
  %20 = zext i8 %19 to i32
  %21 = add nsw i32 %6, %20
  %22 = icmp ult i32 %21, 256
  %23 = icmp sgt i32 %21, 0
  %24 = sext i1 %23 to i32
  %25 = select i1 %22, i32 %21, i32 %24
  %26 = trunc i32 %25 to i8
  store i8 %26, ptr %18, align 1, !tbaa !56
  %27 = getelementptr inbounds i8, ptr %9, i64 2
  %28 = load i8, ptr %27, align 1, !tbaa !56
  %29 = zext i8 %28 to i32
  %30 = add nsw i32 %6, %29
  %31 = icmp ult i32 %30, 256
  %32 = icmp sgt i32 %30, 0
  %33 = sext i1 %32 to i32
  %34 = select i1 %31, i32 %30, i32 %33
  %35 = trunc i32 %34 to i8
  store i8 %35, ptr %27, align 1, !tbaa !56
  %36 = getelementptr inbounds i8, ptr %9, i64 3
  %37 = load i8, ptr %36, align 1, !tbaa !56
  %38 = zext i8 %37 to i32
  %39 = add nsw i32 %6, %38
  %40 = icmp ult i32 %39, 256
  %41 = icmp sgt i32 %39, 0
  %42 = sext i1 %41 to i32
  %43 = select i1 %40, i32 %39, i32 %42
  %44 = trunc i32 %43 to i8
  store i8 %44, ptr %36, align 1, !tbaa !56
  %45 = add nuw nsw i32 %8, 1
  %46 = getelementptr inbounds i8, ptr %9, i64 32
  %47 = icmp eq i32 %45, 4
  br i1 %47, label %48, label %7, !llvm.loop !66

48:                                               ; preds = %7
  %49 = getelementptr inbounds i8, ptr %0, i64 4
  %50 = getelementptr inbounds i16, ptr %1, i64 1
  %51 = load i16, ptr %50, align 2, !tbaa !57
  %52 = sext i16 %51 to i32
  %53 = add nsw i32 %52, 32
  %54 = ashr i32 %53, 6
  br label %55

55:                                               ; preds = %48, %55
  %56 = phi i32 [ 0, %48 ], [ %93, %55 ]
  %57 = phi ptr [ %49, %48 ], [ %94, %55 ]
  %58 = load i8, ptr %57, align 1, !tbaa !56
  %59 = zext i8 %58 to i32
  %60 = add nsw i32 %54, %59
  %61 = icmp ult i32 %60, 256
  %62 = icmp sgt i32 %60, 0
  %63 = sext i1 %62 to i32
  %64 = select i1 %61, i32 %60, i32 %63
  %65 = trunc i32 %64 to i8
  store i8 %65, ptr %57, align 1, !tbaa !56
  %66 = getelementptr inbounds i8, ptr %57, i64 1
  %67 = load i8, ptr %66, align 1, !tbaa !56
  %68 = zext i8 %67 to i32
  %69 = add nsw i32 %54, %68
  %70 = icmp ult i32 %69, 256
  %71 = icmp sgt i32 %69, 0
  %72 = sext i1 %71 to i32
  %73 = select i1 %70, i32 %69, i32 %72
  %74 = trunc i32 %73 to i8
  store i8 %74, ptr %66, align 1, !tbaa !56
  %75 = getelementptr inbounds i8, ptr %57, i64 2
  %76 = load i8, ptr %75, align 1, !tbaa !56
  %77 = zext i8 %76 to i32
  %78 = add nsw i32 %54, %77
  %79 = icmp ult i32 %78, 256
  %80 = icmp sgt i32 %78, 0
  %81 = sext i1 %80 to i32
  %82 = select i1 %79, i32 %78, i32 %81
  %83 = trunc i32 %82 to i8
  store i8 %83, ptr %75, align 1, !tbaa !56
  %84 = getelementptr inbounds i8, ptr %57, i64 3
  %85 = load i8, ptr %84, align 1, !tbaa !56
  %86 = zext i8 %85 to i32
  %87 = add nsw i32 %54, %86
  %88 = icmp ult i32 %87, 256
  %89 = icmp sgt i32 %87, 0
  %90 = sext i1 %89 to i32
  %91 = select i1 %88, i32 %87, i32 %90
  %92 = trunc i32 %91 to i8
  store i8 %92, ptr %84, align 1, !tbaa !56
  %93 = add nuw nsw i32 %56, 1
  %94 = getelementptr inbounds i8, ptr %57, i64 32
  %95 = icmp eq i32 %93, 4
  br i1 %95, label %96, label %55, !llvm.loop !66

96:                                               ; preds = %55
  %97 = getelementptr inbounds i8, ptr %0, i64 128
  %98 = getelementptr inbounds i16, ptr %1, i64 2
  %99 = load i16, ptr %98, align 2, !tbaa !57
  %100 = sext i16 %99 to i32
  %101 = add nsw i32 %100, 32
  %102 = ashr i32 %101, 6
  br label %103

103:                                              ; preds = %96, %103
  %104 = phi i32 [ 0, %96 ], [ %141, %103 ]
  %105 = phi ptr [ %97, %96 ], [ %142, %103 ]
  %106 = load i8, ptr %105, align 1, !tbaa !56
  %107 = zext i8 %106 to i32
  %108 = add nsw i32 %102, %107
  %109 = icmp ult i32 %108, 256
  %110 = icmp sgt i32 %108, 0
  %111 = sext i1 %110 to i32
  %112 = select i1 %109, i32 %108, i32 %111
  %113 = trunc i32 %112 to i8
  store i8 %113, ptr %105, align 1, !tbaa !56
  %114 = getelementptr inbounds i8, ptr %105, i64 1
  %115 = load i8, ptr %114, align 1, !tbaa !56
  %116 = zext i8 %115 to i32
  %117 = add nsw i32 %102, %116
  %118 = icmp ult i32 %117, 256
  %119 = icmp sgt i32 %117, 0
  %120 = sext i1 %119 to i32
  %121 = select i1 %118, i32 %117, i32 %120
  %122 = trunc i32 %121 to i8
  store i8 %122, ptr %114, align 1, !tbaa !56
  %123 = getelementptr inbounds i8, ptr %105, i64 2
  %124 = load i8, ptr %123, align 1, !tbaa !56
  %125 = zext i8 %124 to i32
  %126 = add nsw i32 %102, %125
  %127 = icmp ult i32 %126, 256
  %128 = icmp sgt i32 %126, 0
  %129 = sext i1 %128 to i32
  %130 = select i1 %127, i32 %126, i32 %129
  %131 = trunc i32 %130 to i8
  store i8 %131, ptr %123, align 1, !tbaa !56
  %132 = getelementptr inbounds i8, ptr %105, i64 3
  %133 = load i8, ptr %132, align 1, !tbaa !56
  %134 = zext i8 %133 to i32
  %135 = add nsw i32 %102, %134
  %136 = icmp ult i32 %135, 256
  %137 = icmp sgt i32 %135, 0
  %138 = sext i1 %137 to i32
  %139 = select i1 %136, i32 %135, i32 %138
  %140 = trunc i32 %139 to i8
  store i8 %140, ptr %132, align 1, !tbaa !56
  %141 = add nuw nsw i32 %104, 1
  %142 = getelementptr inbounds i8, ptr %105, i64 32
  %143 = icmp eq i32 %141, 4
  br i1 %143, label %144, label %103, !llvm.loop !66

144:                                              ; preds = %103
  %145 = getelementptr inbounds i8, ptr %0, i64 132
  %146 = getelementptr inbounds i16, ptr %1, i64 3
  %147 = load i16, ptr %146, align 2, !tbaa !57
  %148 = sext i16 %147 to i32
  %149 = add nsw i32 %148, 32
  %150 = ashr i32 %149, 6
  br label %151

151:                                              ; preds = %144, %151
  %152 = phi i32 [ 0, %144 ], [ %189, %151 ]
  %153 = phi ptr [ %145, %144 ], [ %190, %151 ]
  %154 = load i8, ptr %153, align 1, !tbaa !56
  %155 = zext i8 %154 to i32
  %156 = add nsw i32 %150, %155
  %157 = icmp ult i32 %156, 256
  %158 = icmp sgt i32 %156, 0
  %159 = sext i1 %158 to i32
  %160 = select i1 %157, i32 %156, i32 %159
  %161 = trunc i32 %160 to i8
  store i8 %161, ptr %153, align 1, !tbaa !56
  %162 = getelementptr inbounds i8, ptr %153, i64 1
  %163 = load i8, ptr %162, align 1, !tbaa !56
  %164 = zext i8 %163 to i32
  %165 = add nsw i32 %150, %164
  %166 = icmp ult i32 %165, 256
  %167 = icmp sgt i32 %165, 0
  %168 = sext i1 %167 to i32
  %169 = select i1 %166, i32 %165, i32 %168
  %170 = trunc i32 %169 to i8
  store i8 %170, ptr %162, align 1, !tbaa !56
  %171 = getelementptr inbounds i8, ptr %153, i64 2
  %172 = load i8, ptr %171, align 1, !tbaa !56
  %173 = zext i8 %172 to i32
  %174 = add nsw i32 %150, %173
  %175 = icmp ult i32 %174, 256
  %176 = icmp sgt i32 %174, 0
  %177 = sext i1 %176 to i32
  %178 = select i1 %175, i32 %174, i32 %177
  %179 = trunc i32 %178 to i8
  store i8 %179, ptr %171, align 1, !tbaa !56
  %180 = getelementptr inbounds i8, ptr %153, i64 3
  %181 = load i8, ptr %180, align 1, !tbaa !56
  %182 = zext i8 %181 to i32
  %183 = add nsw i32 %150, %182
  %184 = icmp ult i32 %183, 256
  %185 = icmp sgt i32 %183, 0
  %186 = sext i1 %185 to i32
  %187 = select i1 %184, i32 %183, i32 %186
  %188 = trunc i32 %187 to i8
  store i8 %188, ptr %180, align 1, !tbaa !56
  %189 = add nuw nsw i32 %152, 1
  %190 = getelementptr inbounds i8, ptr %153, i64 32
  %191 = icmp eq i32 %189, 4
  br i1 %191, label %192, label %151, !llvm.loop !66

192:                                              ; preds = %151
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @sub16x16_dct(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #1 {
  tail call void @sub4x4_dct(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %4 = getelementptr inbounds [16 x i16], ptr %0, i64 1
  %5 = getelementptr inbounds i8, ptr %1, i64 4
  %6 = getelementptr inbounds i8, ptr %2, i64 4
  tail call void @sub4x4_dct(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %7 = getelementptr inbounds [16 x i16], ptr %0, i64 2
  %8 = getelementptr inbounds i8, ptr %1, i64 64
  %9 = getelementptr inbounds i8, ptr %2, i64 128
  tail call void @sub4x4_dct(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9)
  %10 = getelementptr inbounds [16 x i16], ptr %0, i64 3
  %11 = getelementptr inbounds i8, ptr %1, i64 68
  %12 = getelementptr inbounds i8, ptr %2, i64 132
  tail call void @sub4x4_dct(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12)
  %13 = getelementptr inbounds [16 x i16], ptr %0, i64 4
  %14 = getelementptr inbounds i8, ptr %1, i64 8
  %15 = getelementptr inbounds i8, ptr %2, i64 8
  tail call void @sub4x4_dct(ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15)
  %16 = getelementptr inbounds [16 x i16], ptr %0, i64 5
  %17 = getelementptr inbounds i8, ptr %1, i64 12
  %18 = getelementptr inbounds i8, ptr %2, i64 12
  tail call void @sub4x4_dct(ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %18)
  %19 = getelementptr inbounds [16 x i16], ptr %0, i64 6
  %20 = getelementptr inbounds i8, ptr %1, i64 72
  %21 = getelementptr inbounds i8, ptr %2, i64 136
  tail call void @sub4x4_dct(ptr noundef nonnull %19, ptr noundef nonnull %20, ptr noundef nonnull %21)
  %22 = getelementptr inbounds [16 x i16], ptr %0, i64 7
  %23 = getelementptr inbounds i8, ptr %1, i64 76
  %24 = getelementptr inbounds i8, ptr %2, i64 140
  tail call void @sub4x4_dct(ptr noundef nonnull %22, ptr noundef nonnull %23, ptr noundef nonnull %24)
  %25 = getelementptr inbounds [16 x i16], ptr %0, i64 8
  %26 = getelementptr inbounds i8, ptr %1, i64 128
  %27 = getelementptr inbounds i8, ptr %2, i64 256
  tail call void @sub4x4_dct(ptr noundef nonnull %25, ptr noundef nonnull %26, ptr noundef nonnull %27)
  %28 = getelementptr inbounds [16 x i16], ptr %0, i64 9
  %29 = getelementptr inbounds i8, ptr %1, i64 132
  %30 = getelementptr inbounds i8, ptr %2, i64 260
  tail call void @sub4x4_dct(ptr noundef nonnull %28, ptr noundef nonnull %29, ptr noundef nonnull %30)
  %31 = getelementptr inbounds [16 x i16], ptr %0, i64 10
  %32 = getelementptr inbounds i8, ptr %1, i64 192
  %33 = getelementptr inbounds i8, ptr %2, i64 384
  tail call void @sub4x4_dct(ptr noundef nonnull %31, ptr noundef nonnull %32, ptr noundef nonnull %33)
  %34 = getelementptr inbounds [16 x i16], ptr %0, i64 11
  %35 = getelementptr inbounds i8, ptr %1, i64 196
  %36 = getelementptr inbounds i8, ptr %2, i64 388
  tail call void @sub4x4_dct(ptr noundef nonnull %34, ptr noundef nonnull %35, ptr noundef nonnull %36)
  %37 = getelementptr inbounds [16 x i16], ptr %0, i64 12
  %38 = getelementptr inbounds i8, ptr %1, i64 136
  %39 = getelementptr inbounds i8, ptr %2, i64 264
  tail call void @sub4x4_dct(ptr noundef nonnull %37, ptr noundef nonnull %38, ptr noundef nonnull %39)
  %40 = getelementptr inbounds [16 x i16], ptr %0, i64 13
  %41 = getelementptr inbounds i8, ptr %1, i64 140
  %42 = getelementptr inbounds i8, ptr %2, i64 268
  tail call void @sub4x4_dct(ptr noundef nonnull %40, ptr noundef nonnull %41, ptr noundef nonnull %42)
  %43 = getelementptr inbounds [16 x i16], ptr %0, i64 14
  %44 = getelementptr inbounds i8, ptr %1, i64 200
  %45 = getelementptr inbounds i8, ptr %2, i64 392
  tail call void @sub4x4_dct(ptr noundef nonnull %43, ptr noundef nonnull %44, ptr noundef nonnull %45)
  %46 = getelementptr inbounds [16 x i16], ptr %0, i64 15
  %47 = getelementptr inbounds i8, ptr %1, i64 204
  %48 = getelementptr inbounds i8, ptr %2, i64 396
  tail call void @sub4x4_dct(ptr noundef nonnull %46, ptr noundef nonnull %47, ptr noundef nonnull %48)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @add16x16_idct(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #2 {
  tail call void @add4x4_idct(ptr noundef %0, ptr noundef %1)
  %3 = getelementptr inbounds i8, ptr %0, i64 4
  %4 = getelementptr inbounds [16 x i16], ptr %1, i64 1
  tail call void @add4x4_idct(ptr noundef nonnull %3, ptr noundef nonnull %4)
  %5 = getelementptr inbounds i8, ptr %0, i64 128
  %6 = getelementptr inbounds [16 x i16], ptr %1, i64 2
  tail call void @add4x4_idct(ptr noundef nonnull %5, ptr noundef nonnull %6)
  %7 = getelementptr inbounds i8, ptr %0, i64 132
  %8 = getelementptr inbounds [16 x i16], ptr %1, i64 3
  tail call void @add4x4_idct(ptr noundef nonnull %7, ptr noundef nonnull %8)
  %9 = getelementptr inbounds i8, ptr %0, i64 8
  %10 = getelementptr inbounds [16 x i16], ptr %1, i64 4
  tail call void @add4x4_idct(ptr noundef nonnull %9, ptr noundef nonnull %10)
  %11 = getelementptr inbounds i8, ptr %0, i64 12
  %12 = getelementptr inbounds [16 x i16], ptr %1, i64 5
  tail call void @add4x4_idct(ptr noundef nonnull %11, ptr noundef nonnull %12)
  %13 = getelementptr inbounds i8, ptr %0, i64 136
  %14 = getelementptr inbounds [16 x i16], ptr %1, i64 6
  tail call void @add4x4_idct(ptr noundef nonnull %13, ptr noundef nonnull %14)
  %15 = getelementptr inbounds i8, ptr %0, i64 140
  %16 = getelementptr inbounds [16 x i16], ptr %1, i64 7
  tail call void @add4x4_idct(ptr noundef nonnull %15, ptr noundef nonnull %16)
  %17 = getelementptr inbounds i8, ptr %0, i64 256
  %18 = getelementptr inbounds [16 x i16], ptr %1, i64 8
  tail call void @add4x4_idct(ptr noundef nonnull %17, ptr noundef nonnull %18)
  %19 = getelementptr inbounds i8, ptr %0, i64 260
  %20 = getelementptr inbounds [16 x i16], ptr %1, i64 9
  tail call void @add4x4_idct(ptr noundef nonnull %19, ptr noundef nonnull %20)
  %21 = getelementptr inbounds i8, ptr %0, i64 384
  %22 = getelementptr inbounds [16 x i16], ptr %1, i64 10
  tail call void @add4x4_idct(ptr noundef nonnull %21, ptr noundef nonnull %22)
  %23 = getelementptr inbounds i8, ptr %0, i64 388
  %24 = getelementptr inbounds [16 x i16], ptr %1, i64 11
  tail call void @add4x4_idct(ptr noundef nonnull %23, ptr noundef nonnull %24)
  %25 = getelementptr inbounds i8, ptr %0, i64 264
  %26 = getelementptr inbounds [16 x i16], ptr %1, i64 12
  tail call void @add4x4_idct(ptr noundef nonnull %25, ptr noundef nonnull %26)
  %27 = getelementptr inbounds i8, ptr %0, i64 268
  %28 = getelementptr inbounds [16 x i16], ptr %1, i64 13
  tail call void @add4x4_idct(ptr noundef nonnull %27, ptr noundef nonnull %28)
  %29 = getelementptr inbounds i8, ptr %0, i64 392
  %30 = getelementptr inbounds [16 x i16], ptr %1, i64 14
  tail call void @add4x4_idct(ptr noundef nonnull %29, ptr noundef nonnull %30)
  %31 = getelementptr inbounds i8, ptr %0, i64 396
  %32 = getelementptr inbounds [16 x i16], ptr %1, i64 15
  tail call void @add4x4_idct(ptr noundef nonnull %31, ptr noundef nonnull %32)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @add16x16_idct_dc(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #2 {
  br label %4

3:                                                ; preds = %197
  ret void

4:                                                ; preds = %2, %197
  %5 = phi i32 [ 0, %2 ], [ %198, %197 ]
  %6 = phi ptr [ %1, %2 ], [ %199, %197 ]
  %7 = phi ptr [ %0, %2 ], [ %200, %197 ]
  %8 = load i16, ptr %6, align 2, !tbaa !57
  %9 = sext i16 %8 to i32
  %10 = add nsw i32 %9, 32
  %11 = ashr i32 %10, 6
  br label %12

12:                                               ; preds = %4, %12
  %13 = phi i32 [ 0, %4 ], [ %50, %12 ]
  %14 = phi ptr [ %7, %4 ], [ %51, %12 ]
  %15 = load i8, ptr %14, align 1, !tbaa !56
  %16 = zext i8 %15 to i32
  %17 = add nsw i32 %11, %16
  %18 = icmp ult i32 %17, 256
  %19 = icmp sgt i32 %17, 0
  %20 = sext i1 %19 to i32
  %21 = select i1 %18, i32 %17, i32 %20
  %22 = trunc i32 %21 to i8
  store i8 %22, ptr %14, align 1, !tbaa !56
  %23 = getelementptr inbounds i8, ptr %14, i64 1
  %24 = load i8, ptr %23, align 1, !tbaa !56
  %25 = zext i8 %24 to i32
  %26 = add nsw i32 %11, %25
  %27 = icmp ult i32 %26, 256
  %28 = icmp sgt i32 %26, 0
  %29 = sext i1 %28 to i32
  %30 = select i1 %27, i32 %26, i32 %29
  %31 = trunc i32 %30 to i8
  store i8 %31, ptr %23, align 1, !tbaa !56
  %32 = getelementptr inbounds i8, ptr %14, i64 2
  %33 = load i8, ptr %32, align 1, !tbaa !56
  %34 = zext i8 %33 to i32
  %35 = add nsw i32 %11, %34
  %36 = icmp ult i32 %35, 256
  %37 = icmp sgt i32 %35, 0
  %38 = sext i1 %37 to i32
  %39 = select i1 %36, i32 %35, i32 %38
  %40 = trunc i32 %39 to i8
  store i8 %40, ptr %32, align 1, !tbaa !56
  %41 = getelementptr inbounds i8, ptr %14, i64 3
  %42 = load i8, ptr %41, align 1, !tbaa !56
  %43 = zext i8 %42 to i32
  %44 = add nsw i32 %11, %43
  %45 = icmp ult i32 %44, 256
  %46 = icmp sgt i32 %44, 0
  %47 = sext i1 %46 to i32
  %48 = select i1 %45, i32 %44, i32 %47
  %49 = trunc i32 %48 to i8
  store i8 %49, ptr %41, align 1, !tbaa !56
  %50 = add nuw nsw i32 %13, 1
  %51 = getelementptr inbounds i8, ptr %14, i64 32
  %52 = icmp eq i32 %50, 4
  br i1 %52, label %53, label %12, !llvm.loop !66

53:                                               ; preds = %12
  %54 = getelementptr inbounds i8, ptr %7, i64 4
  %55 = getelementptr inbounds i16, ptr %6, i64 1
  %56 = load i16, ptr %55, align 2, !tbaa !57
  %57 = sext i16 %56 to i32
  %58 = add nsw i32 %57, 32
  %59 = ashr i32 %58, 6
  br label %60

60:                                               ; preds = %53, %60
  %61 = phi i32 [ 0, %53 ], [ %98, %60 ]
  %62 = phi ptr [ %54, %53 ], [ %99, %60 ]
  %63 = load i8, ptr %62, align 1, !tbaa !56
  %64 = zext i8 %63 to i32
  %65 = add nsw i32 %59, %64
  %66 = icmp ult i32 %65, 256
  %67 = icmp sgt i32 %65, 0
  %68 = sext i1 %67 to i32
  %69 = select i1 %66, i32 %65, i32 %68
  %70 = trunc i32 %69 to i8
  store i8 %70, ptr %62, align 1, !tbaa !56
  %71 = getelementptr inbounds i8, ptr %62, i64 1
  %72 = load i8, ptr %71, align 1, !tbaa !56
  %73 = zext i8 %72 to i32
  %74 = add nsw i32 %59, %73
  %75 = icmp ult i32 %74, 256
  %76 = icmp sgt i32 %74, 0
  %77 = sext i1 %76 to i32
  %78 = select i1 %75, i32 %74, i32 %77
  %79 = trunc i32 %78 to i8
  store i8 %79, ptr %71, align 1, !tbaa !56
  %80 = getelementptr inbounds i8, ptr %62, i64 2
  %81 = load i8, ptr %80, align 1, !tbaa !56
  %82 = zext i8 %81 to i32
  %83 = add nsw i32 %59, %82
  %84 = icmp ult i32 %83, 256
  %85 = icmp sgt i32 %83, 0
  %86 = sext i1 %85 to i32
  %87 = select i1 %84, i32 %83, i32 %86
  %88 = trunc i32 %87 to i8
  store i8 %88, ptr %80, align 1, !tbaa !56
  %89 = getelementptr inbounds i8, ptr %62, i64 3
  %90 = load i8, ptr %89, align 1, !tbaa !56
  %91 = zext i8 %90 to i32
  %92 = add nsw i32 %59, %91
  %93 = icmp ult i32 %92, 256
  %94 = icmp sgt i32 %92, 0
  %95 = sext i1 %94 to i32
  %96 = select i1 %93, i32 %92, i32 %95
  %97 = trunc i32 %96 to i8
  store i8 %97, ptr %89, align 1, !tbaa !56
  %98 = add nuw nsw i32 %61, 1
  %99 = getelementptr inbounds i8, ptr %62, i64 32
  %100 = icmp eq i32 %98, 4
  br i1 %100, label %101, label %60, !llvm.loop !66

101:                                              ; preds = %60
  %102 = getelementptr inbounds i8, ptr %7, i64 8
  %103 = getelementptr inbounds i16, ptr %6, i64 2
  %104 = load i16, ptr %103, align 2, !tbaa !57
  %105 = sext i16 %104 to i32
  %106 = add nsw i32 %105, 32
  %107 = ashr i32 %106, 6
  br label %108

108:                                              ; preds = %101, %108
  %109 = phi i32 [ 0, %101 ], [ %146, %108 ]
  %110 = phi ptr [ %102, %101 ], [ %147, %108 ]
  %111 = load i8, ptr %110, align 1, !tbaa !56
  %112 = zext i8 %111 to i32
  %113 = add nsw i32 %107, %112
  %114 = icmp ult i32 %113, 256
  %115 = icmp sgt i32 %113, 0
  %116 = sext i1 %115 to i32
  %117 = select i1 %114, i32 %113, i32 %116
  %118 = trunc i32 %117 to i8
  store i8 %118, ptr %110, align 1, !tbaa !56
  %119 = getelementptr inbounds i8, ptr %110, i64 1
  %120 = load i8, ptr %119, align 1, !tbaa !56
  %121 = zext i8 %120 to i32
  %122 = add nsw i32 %107, %121
  %123 = icmp ult i32 %122, 256
  %124 = icmp sgt i32 %122, 0
  %125 = sext i1 %124 to i32
  %126 = select i1 %123, i32 %122, i32 %125
  %127 = trunc i32 %126 to i8
  store i8 %127, ptr %119, align 1, !tbaa !56
  %128 = getelementptr inbounds i8, ptr %110, i64 2
  %129 = load i8, ptr %128, align 1, !tbaa !56
  %130 = zext i8 %129 to i32
  %131 = add nsw i32 %107, %130
  %132 = icmp ult i32 %131, 256
  %133 = icmp sgt i32 %131, 0
  %134 = sext i1 %133 to i32
  %135 = select i1 %132, i32 %131, i32 %134
  %136 = trunc i32 %135 to i8
  store i8 %136, ptr %128, align 1, !tbaa !56
  %137 = getelementptr inbounds i8, ptr %110, i64 3
  %138 = load i8, ptr %137, align 1, !tbaa !56
  %139 = zext i8 %138 to i32
  %140 = add nsw i32 %107, %139
  %141 = icmp ult i32 %140, 256
  %142 = icmp sgt i32 %140, 0
  %143 = sext i1 %142 to i32
  %144 = select i1 %141, i32 %140, i32 %143
  %145 = trunc i32 %144 to i8
  store i8 %145, ptr %137, align 1, !tbaa !56
  %146 = add nuw nsw i32 %109, 1
  %147 = getelementptr inbounds i8, ptr %110, i64 32
  %148 = icmp eq i32 %146, 4
  br i1 %148, label %149, label %108, !llvm.loop !66

149:                                              ; preds = %108
  %150 = getelementptr inbounds i8, ptr %7, i64 12
  %151 = getelementptr inbounds i16, ptr %6, i64 3
  %152 = load i16, ptr %151, align 2, !tbaa !57
  %153 = sext i16 %152 to i32
  %154 = add nsw i32 %153, 32
  %155 = ashr i32 %154, 6
  br label %156

156:                                              ; preds = %149, %156
  %157 = phi i32 [ 0, %149 ], [ %194, %156 ]
  %158 = phi ptr [ %150, %149 ], [ %195, %156 ]
  %159 = load i8, ptr %158, align 1, !tbaa !56
  %160 = zext i8 %159 to i32
  %161 = add nsw i32 %155, %160
  %162 = icmp ult i32 %161, 256
  %163 = icmp sgt i32 %161, 0
  %164 = sext i1 %163 to i32
  %165 = select i1 %162, i32 %161, i32 %164
  %166 = trunc i32 %165 to i8
  store i8 %166, ptr %158, align 1, !tbaa !56
  %167 = getelementptr inbounds i8, ptr %158, i64 1
  %168 = load i8, ptr %167, align 1, !tbaa !56
  %169 = zext i8 %168 to i32
  %170 = add nsw i32 %155, %169
  %171 = icmp ult i32 %170, 256
  %172 = icmp sgt i32 %170, 0
  %173 = sext i1 %172 to i32
  %174 = select i1 %171, i32 %170, i32 %173
  %175 = trunc i32 %174 to i8
  store i8 %175, ptr %167, align 1, !tbaa !56
  %176 = getelementptr inbounds i8, ptr %158, i64 2
  %177 = load i8, ptr %176, align 1, !tbaa !56
  %178 = zext i8 %177 to i32
  %179 = add nsw i32 %155, %178
  %180 = icmp ult i32 %179, 256
  %181 = icmp sgt i32 %179, 0
  %182 = sext i1 %181 to i32
  %183 = select i1 %180, i32 %179, i32 %182
  %184 = trunc i32 %183 to i8
  store i8 %184, ptr %176, align 1, !tbaa !56
  %185 = getelementptr inbounds i8, ptr %158, i64 3
  %186 = load i8, ptr %185, align 1, !tbaa !56
  %187 = zext i8 %186 to i32
  %188 = add nsw i32 %155, %187
  %189 = icmp ult i32 %188, 256
  %190 = icmp sgt i32 %188, 0
  %191 = sext i1 %190 to i32
  %192 = select i1 %189, i32 %188, i32 %191
  %193 = trunc i32 %192 to i8
  store i8 %193, ptr %185, align 1, !tbaa !56
  %194 = add nuw nsw i32 %157, 1
  %195 = getelementptr inbounds i8, ptr %158, i64 32
  %196 = icmp eq i32 %194, 4
  br i1 %196, label %197, label %156, !llvm.loop !66

197:                                              ; preds = %156
  %198 = add nuw nsw i32 %5, 1
  %199 = getelementptr inbounds i16, ptr %6, i64 4
  %200 = getelementptr inbounds i8, ptr %7, i64 128
  %201 = icmp eq i32 %198, 4
  br i1 %201, label %3, label %4, !llvm.loop !67
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @sub8x8_dct8(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #1 {
  %4 = alloca [64 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #7
  br label %5

5:                                                ; preds = %3, %11
  %6 = phi i64 [ 0, %3 ], [ %14, %11 ]
  %7 = phi ptr [ %1, %3 ], [ %12, %11 ]
  %8 = phi ptr [ %2, %3 ], [ %13, %11 ]
  %9 = shl nuw nsw i64 %6, 3
  %10 = getelementptr i16, ptr %4, i64 %9
  br label %16

11:                                               ; preds = %16
  %12 = getelementptr inbounds i8, ptr %7, i64 16
  %13 = getelementptr inbounds i8, ptr %8, i64 32
  %14 = add nuw nsw i64 %6, 1
  %15 = icmp eq i64 %14, 8
  br i1 %15, label %28, label %5, !llvm.loop !53

16:                                               ; preds = %5, %16
  %17 = phi i64 [ 0, %5 ], [ %26, %16 ]
  %18 = getelementptr inbounds i8, ptr %7, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !56
  %20 = zext i8 %19 to i16
  %21 = getelementptr inbounds i8, ptr %8, i64 %17
  %22 = load i8, ptr %21, align 1, !tbaa !56
  %23 = zext i8 %22 to i16
  %24 = sub nsw i16 %20, %23
  %25 = getelementptr i16, ptr %10, i64 %17
  store i16 %24, ptr %25, align 2, !tbaa !57
  %26 = add nuw nsw i64 %17, 1
  %27 = icmp eq i64 %26, 8
  br i1 %27, label %11, label %16, !llvm.loop !59

28:                                               ; preds = %11, %28
  %29 = phi i64 [ %111, %28 ], [ 0, %11 ]
  %30 = getelementptr inbounds [64 x i16], ptr %4, i64 0, i64 %29
  %31 = load i16, ptr %30, align 2, !tbaa !57
  %32 = sext i16 %31 to i32
  %33 = or disjoint i64 %29, 56
  %34 = getelementptr inbounds [64 x i16], ptr %4, i64 0, i64 %33
  %35 = load i16, ptr %34, align 2, !tbaa !57
  %36 = sext i16 %35 to i32
  %37 = add nsw i32 %36, %32
  %38 = or disjoint i64 %29, 8
  %39 = getelementptr inbounds [64 x i16], ptr %4, i64 0, i64 %38
  %40 = load i16, ptr %39, align 2, !tbaa !57
  %41 = sext i16 %40 to i32
  %42 = or disjoint i64 %29, 48
  %43 = getelementptr inbounds [64 x i16], ptr %4, i64 0, i64 %42
  %44 = load i16, ptr %43, align 2, !tbaa !57
  %45 = sext i16 %44 to i32
  %46 = add nsw i32 %45, %41
  %47 = or disjoint i64 %29, 16
  %48 = getelementptr inbounds [64 x i16], ptr %4, i64 0, i64 %47
  %49 = load i16, ptr %48, align 2, !tbaa !57
  %50 = sext i16 %49 to i32
  %51 = or disjoint i64 %29, 40
  %52 = getelementptr inbounds [64 x i16], ptr %4, i64 0, i64 %51
  %53 = load i16, ptr %52, align 2, !tbaa !57
  %54 = sext i16 %53 to i32
  %55 = add nsw i32 %54, %50
  %56 = or disjoint i64 %29, 24
  %57 = getelementptr inbounds [64 x i16], ptr %4, i64 0, i64 %56
  %58 = load i16, ptr %57, align 2, !tbaa !57
  %59 = sext i16 %58 to i32
  %60 = or disjoint i64 %29, 32
  %61 = getelementptr inbounds [64 x i16], ptr %4, i64 0, i64 %60
  %62 = load i16, ptr %61, align 2, !tbaa !57
  %63 = sext i16 %62 to i32
  %64 = add nsw i32 %63, %59
  %65 = add nsw i32 %64, %37
  %66 = add nsw i32 %55, %46
  %67 = sub nsw i32 %37, %64
  %68 = sub nsw i32 %46, %55
  %69 = sub nsw i32 %32, %36
  %70 = sub nsw i32 %41, %45
  %71 = sub nsw i32 %50, %54
  %72 = sub nsw i32 %59, %63
  %73 = ashr i32 %69, 1
  %74 = add nsw i32 %73, %69
  %75 = add nsw i32 %74, %70
  %76 = add nsw i32 %75, %71
  %77 = ashr i32 %71, 1
  %78 = add nsw i32 %71, %77
  %79 = add nsw i32 %78, %72
  %80 = sub nsw i32 %69, %79
  %81 = ashr i32 %70, 1
  %82 = add nsw i32 %70, %81
  %83 = sub nsw i32 %69, %82
  %84 = add nsw i32 %83, %72
  %85 = sub nsw i32 %70, %71
  %86 = ashr i32 %72, 1
  %87 = add nsw i32 %72, %85
  %88 = add nsw i32 %87, %86
  %89 = add nsw i32 %65, %66
  %90 = trunc i32 %89 to i16
  store i16 %90, ptr %30, align 2, !tbaa !57
  %91 = lshr i32 %88, 2
  %92 = add nsw i32 %91, %76
  %93 = trunc i32 %92 to i16
  store i16 %93, ptr %39, align 2, !tbaa !57
  %94 = lshr i32 %68, 1
  %95 = add i32 %67, %94
  %96 = trunc i32 %95 to i16
  store i16 %96, ptr %48, align 2, !tbaa !57
  %97 = lshr i32 %84, 2
  %98 = add nsw i32 %80, %97
  %99 = trunc i32 %98 to i16
  store i16 %99, ptr %57, align 2, !tbaa !57
  %100 = sub nsw i32 %65, %66
  %101 = trunc i32 %100 to i16
  store i16 %101, ptr %61, align 2, !tbaa !57
  %102 = lshr i32 %80, 2
  %103 = sub nsw i32 %84, %102
  %104 = trunc i32 %103 to i16
  store i16 %104, ptr %52, align 2, !tbaa !57
  %105 = lshr i32 %67, 1
  %106 = sub i32 %105, %68
  %107 = trunc i32 %106 to i16
  store i16 %107, ptr %43, align 2, !tbaa !57
  %108 = lshr i32 %76, 2
  %109 = sub nsw i32 %108, %88
  %110 = trunc i32 %109 to i16
  store i16 %110, ptr %34, align 2, !tbaa !57
  %111 = add nuw nsw i64 %29, 1
  %112 = icmp eq i64 %111, 8
  br i1 %112, label %114, label %28, !llvm.loop !68

113:                                              ; preds = %114
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #7
  ret void

114:                                              ; preds = %28, %114
  %115 = phi i64 [ %213, %114 ], [ 0, %28 ]
  %116 = shl nuw nsw i64 %115, 3
  %117 = getelementptr inbounds [64 x i16], ptr %4, i64 0, i64 %116
  %118 = load i16, ptr %117, align 16, !tbaa !57
  %119 = sext i16 %118 to i32
  %120 = or disjoint i64 %116, 7
  %121 = getelementptr inbounds [64 x i16], ptr %4, i64 0, i64 %120
  %122 = load i16, ptr %121, align 2, !tbaa !57
  %123 = sext i16 %122 to i32
  %124 = add nsw i32 %123, %119
  %125 = or disjoint i64 %116, 1
  %126 = getelementptr inbounds [64 x i16], ptr %4, i64 0, i64 %125
  %127 = load i16, ptr %126, align 2, !tbaa !57
  %128 = sext i16 %127 to i32
  %129 = or disjoint i64 %116, 6
  %130 = getelementptr inbounds [64 x i16], ptr %4, i64 0, i64 %129
  %131 = load i16, ptr %130, align 4, !tbaa !57
  %132 = sext i16 %131 to i32
  %133 = add nsw i32 %132, %128
  %134 = or disjoint i64 %116, 2
  %135 = getelementptr inbounds [64 x i16], ptr %4, i64 0, i64 %134
  %136 = load i16, ptr %135, align 4, !tbaa !57
  %137 = sext i16 %136 to i32
  %138 = or disjoint i64 %116, 5
  %139 = getelementptr inbounds [64 x i16], ptr %4, i64 0, i64 %138
  %140 = load i16, ptr %139, align 2, !tbaa !57
  %141 = sext i16 %140 to i32
  %142 = add nsw i32 %141, %137
  %143 = or disjoint i64 %116, 3
  %144 = getelementptr inbounds [64 x i16], ptr %4, i64 0, i64 %143
  %145 = load i16, ptr %144, align 2, !tbaa !57
  %146 = sext i16 %145 to i32
  %147 = or disjoint i64 %116, 4
  %148 = getelementptr inbounds [64 x i16], ptr %4, i64 0, i64 %147
  %149 = load i16, ptr %148, align 8, !tbaa !57
  %150 = sext i16 %149 to i32
  %151 = add nsw i32 %150, %146
  %152 = add nsw i32 %151, %124
  %153 = add nsw i32 %142, %133
  %154 = sub nsw i32 %124, %151
  %155 = sub nsw i32 %133, %142
  %156 = sub nsw i32 %119, %123
  %157 = sub nsw i32 %128, %132
  %158 = sub nsw i32 %137, %141
  %159 = sub nsw i32 %146, %150
  %160 = ashr i32 %156, 1
  %161 = add nsw i32 %160, %156
  %162 = add nsw i32 %161, %157
  %163 = add nsw i32 %162, %158
  %164 = ashr i32 %158, 1
  %165 = add nsw i32 %158, %164
  %166 = add nsw i32 %165, %159
  %167 = sub nsw i32 %156, %166
  %168 = ashr i32 %157, 1
  %169 = add nsw i32 %157, %168
  %170 = sub nsw i32 %156, %169
  %171 = add nsw i32 %170, %159
  %172 = sub nsw i32 %157, %158
  %173 = ashr i32 %159, 1
  %174 = add nsw i32 %159, %172
  %175 = add nsw i32 %174, %173
  %176 = add nsw i32 %152, %153
  %177 = trunc i32 %176 to i16
  %178 = getelementptr inbounds i16, ptr %0, i64 %115
  store i16 %177, ptr %178, align 2, !tbaa !57
  %179 = lshr i32 %175, 2
  %180 = add nsw i32 %179, %163
  %181 = trunc i32 %180 to i16
  %182 = or disjoint i64 %115, 8
  %183 = getelementptr inbounds i16, ptr %0, i64 %182
  store i16 %181, ptr %183, align 2, !tbaa !57
  %184 = lshr i32 %155, 1
  %185 = add i32 %154, %184
  %186 = trunc i32 %185 to i16
  %187 = or disjoint i64 %115, 16
  %188 = getelementptr inbounds i16, ptr %0, i64 %187
  store i16 %186, ptr %188, align 2, !tbaa !57
  %189 = lshr i32 %171, 2
  %190 = add nsw i32 %167, %189
  %191 = trunc i32 %190 to i16
  %192 = or disjoint i64 %115, 24
  %193 = getelementptr inbounds i16, ptr %0, i64 %192
  store i16 %191, ptr %193, align 2, !tbaa !57
  %194 = sub nsw i32 %152, %153
  %195 = trunc i32 %194 to i16
  %196 = or disjoint i64 %115, 32
  %197 = getelementptr inbounds i16, ptr %0, i64 %196
  store i16 %195, ptr %197, align 2, !tbaa !57
  %198 = lshr i32 %167, 2
  %199 = sub nsw i32 %171, %198
  %200 = trunc i32 %199 to i16
  %201 = or disjoint i64 %115, 40
  %202 = getelementptr inbounds i16, ptr %0, i64 %201
  store i16 %200, ptr %202, align 2, !tbaa !57
  %203 = lshr i32 %154, 1
  %204 = sub i32 %203, %155
  %205 = trunc i32 %204 to i16
  %206 = or disjoint i64 %115, 48
  %207 = getelementptr inbounds i16, ptr %0, i64 %206
  store i16 %205, ptr %207, align 2, !tbaa !57
  %208 = lshr i32 %163, 2
  %209 = sub nsw i32 %208, %175
  %210 = trunc i32 %209 to i16
  %211 = or disjoint i64 %115, 56
  %212 = getelementptr inbounds i16, ptr %0, i64 %211
  store i16 %210, ptr %212, align 2, !tbaa !57
  %213 = add nuw nsw i64 %115, 1
  %214 = icmp eq i64 %213, 8
  br i1 %214, label %113, label %114, !llvm.loop !69
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @add8x8_idct8(ptr nocapture noundef %0, ptr nocapture noundef %1) #3 {
  %3 = load i16, ptr %1, align 2, !tbaa !57
  %4 = add i16 %3, 32
  store i16 %4, ptr %1, align 2, !tbaa !57
  br label %5

5:                                                ; preds = %2, %5
  %6 = phi i64 [ 0, %2 ], [ %88, %5 ]
  %7 = getelementptr inbounds i16, ptr %1, i64 %6
  %8 = load i16, ptr %7, align 2, !tbaa !57
  %9 = zext i16 %8 to i32
  %10 = or disjoint i64 %6, 32
  %11 = getelementptr inbounds i16, ptr %1, i64 %10
  %12 = load i16, ptr %11, align 2, !tbaa !57
  %13 = zext i16 %12 to i32
  %14 = add nuw nsw i32 %13, %9
  %15 = sub nsw i32 %9, %13
  %16 = or disjoint i64 %6, 16
  %17 = getelementptr inbounds i16, ptr %1, i64 %16
  %18 = load i16, ptr %17, align 2, !tbaa !57
  %19 = sext i16 %18 to i32
  %20 = ashr i32 %19, 1
  %21 = or disjoint i64 %6, 48
  %22 = getelementptr inbounds i16, ptr %1, i64 %21
  %23 = load i16, ptr %22, align 2, !tbaa !57
  %24 = sext i16 %23 to i32
  %25 = sub nsw i32 %20, %24
  %26 = ashr i32 %24, 1
  %27 = add nsw i32 %26, %19
  %28 = add nsw i32 %27, %14
  %29 = add nsw i32 %25, %15
  %30 = sub nsw i32 %15, %25
  %31 = sub nsw i32 %14, %27
  %32 = or disjoint i64 %6, 24
  %33 = getelementptr inbounds i16, ptr %1, i64 %32
  %34 = load i16, ptr %33, align 2, !tbaa !57
  %35 = sext i16 %34 to i32
  %36 = or disjoint i64 %6, 40
  %37 = getelementptr inbounds i16, ptr %1, i64 %36
  %38 = load i16, ptr %37, align 2, !tbaa !57
  %39 = sext i16 %38 to i32
  %40 = or disjoint i64 %6, 56
  %41 = getelementptr inbounds i16, ptr %1, i64 %40
  %42 = load i16, ptr %41, align 2, !tbaa !57
  %43 = sext i16 %42 to i32
  %44 = ashr i32 %43, 1
  %45 = add nsw i32 %35, %43
  %46 = add nsw i32 %45, %44
  %47 = sub nsw i32 %39, %46
  %48 = or disjoint i64 %6, 8
  %49 = getelementptr inbounds i16, ptr %1, i64 %48
  %50 = load i16, ptr %49, align 2, !tbaa !57
  %51 = sext i16 %50 to i32
  %52 = ashr i32 %35, 1
  %53 = add nsw i32 %52, %35
  %54 = sub nsw i32 %43, %53
  %55 = add nsw i32 %54, %51
  %56 = ashr i32 %39, 1
  %57 = add nsw i32 %43, %39
  %58 = add nsw i32 %57, %56
  %59 = sub nsw i32 %58, %51
  %60 = add nsw i32 %39, %35
  %61 = add nsw i32 %60, %51
  %62 = ashr i32 %51, 1
  %63 = add nsw i32 %61, %62
  %64 = ashr i32 %63, 2
  %65 = add nsw i32 %64, %47
  %66 = ashr i32 %59, 2
  %67 = add nsw i32 %66, %55
  %68 = ashr i32 %55, 2
  %69 = sub nsw i32 %68, %59
  %70 = ashr i32 %47, 2
  %71 = sub nsw i32 %63, %70
  %72 = add nsw i32 %71, %28
  %73 = trunc i32 %72 to i16
  store i16 %73, ptr %7, align 2, !tbaa !57
  %74 = add nsw i32 %69, %29
  %75 = trunc i32 %74 to i16
  store i16 %75, ptr %49, align 2, !tbaa !57
  %76 = add nsw i32 %67, %30
  %77 = trunc i32 %76 to i16
  store i16 %77, ptr %17, align 2, !tbaa !57
  %78 = add nsw i32 %65, %31
  %79 = trunc i32 %78 to i16
  store i16 %79, ptr %33, align 2, !tbaa !57
  %80 = sub nsw i32 %31, %65
  %81 = trunc i32 %80 to i16
  store i16 %81, ptr %11, align 2, !tbaa !57
  %82 = sub nsw i32 %30, %67
  %83 = trunc i32 %82 to i16
  store i16 %83, ptr %37, align 2, !tbaa !57
  %84 = sub nsw i32 %29, %69
  %85 = trunc i32 %84 to i16
  store i16 %85, ptr %22, align 2, !tbaa !57
  %86 = sub nsw i32 %28, %71
  %87 = trunc i32 %86 to i16
  store i16 %87, ptr %41, align 2, !tbaa !57
  %88 = add nuw nsw i64 %6, 1
  %89 = icmp eq i64 %88, 8
  br i1 %89, label %91, label %5, !llvm.loop !70

90:                                               ; preds = %91
  ret void

91:                                               ; preds = %5, %91
  %92 = phi i64 [ %254, %91 ], [ 0, %5 ]
  %93 = shl nuw nsw i64 %92, 3
  %94 = getelementptr inbounds i16, ptr %1, i64 %93
  %95 = load i16, ptr %94, align 2, !tbaa !57
  %96 = sext i16 %95 to i32
  %97 = or disjoint i64 %93, 4
  %98 = getelementptr inbounds i16, ptr %1, i64 %97
  %99 = load i16, ptr %98, align 2, !tbaa !57
  %100 = sext i16 %99 to i32
  %101 = add nsw i32 %100, %96
  %102 = sub nsw i32 %96, %100
  %103 = or disjoint i64 %93, 2
  %104 = getelementptr inbounds i16, ptr %1, i64 %103
  %105 = load i16, ptr %104, align 2, !tbaa !57
  %106 = sext i16 %105 to i32
  %107 = ashr i32 %106, 1
  %108 = or disjoint i64 %93, 6
  %109 = getelementptr inbounds i16, ptr %1, i64 %108
  %110 = load i16, ptr %109, align 2, !tbaa !57
  %111 = sext i16 %110 to i32
  %112 = sub nsw i32 %107, %111
  %113 = ashr i32 %111, 1
  %114 = add nsw i32 %113, %106
  %115 = add nsw i32 %114, %101
  %116 = add nsw i32 %112, %102
  %117 = sub nsw i32 %102, %112
  %118 = sub nsw i32 %101, %114
  %119 = or disjoint i64 %93, 3
  %120 = getelementptr inbounds i16, ptr %1, i64 %119
  %121 = load i16, ptr %120, align 2, !tbaa !57
  %122 = sext i16 %121 to i32
  %123 = or disjoint i64 %93, 5
  %124 = getelementptr inbounds i16, ptr %1, i64 %123
  %125 = load i16, ptr %124, align 2, !tbaa !57
  %126 = sext i16 %125 to i32
  %127 = or disjoint i64 %93, 7
  %128 = getelementptr inbounds i16, ptr %1, i64 %127
  %129 = load i16, ptr %128, align 2, !tbaa !57
  %130 = sext i16 %129 to i32
  %131 = ashr i32 %130, 1
  %132 = add nsw i32 %122, %130
  %133 = add nsw i32 %132, %131
  %134 = sub nsw i32 %126, %133
  %135 = or disjoint i64 %93, 1
  %136 = getelementptr inbounds i16, ptr %1, i64 %135
  %137 = load i16, ptr %136, align 2, !tbaa !57
  %138 = sext i16 %137 to i32
  %139 = ashr i32 %122, 1
  %140 = add nsw i32 %139, %122
  %141 = sub nsw i32 %130, %140
  %142 = add nsw i32 %141, %138
  %143 = ashr i32 %126, 1
  %144 = add nsw i32 %130, %126
  %145 = add nsw i32 %144, %143
  %146 = sub nsw i32 %145, %138
  %147 = add nsw i32 %126, %122
  %148 = add nsw i32 %147, %138
  %149 = ashr i32 %138, 1
  %150 = add nsw i32 %148, %149
  %151 = ashr i32 %150, 2
  %152 = add nsw i32 %151, %134
  %153 = ashr i32 %146, 2
  %154 = add nsw i32 %153, %142
  %155 = ashr i32 %142, 2
  %156 = sub nsw i32 %155, %146
  %157 = ashr i32 %134, 2
  %158 = sub nsw i32 %150, %157
  %159 = getelementptr inbounds i8, ptr %0, i64 %92
  %160 = load i8, ptr %159, align 1, !tbaa !56
  %161 = zext i8 %160 to i32
  %162 = add nsw i32 %158, %115
  %163 = ashr i32 %162, 6
  %164 = add nsw i32 %163, %161
  %165 = icmp ult i32 %164, 256
  %166 = icmp sgt i32 %164, 0
  %167 = sext i1 %166 to i32
  %168 = select i1 %165, i32 %164, i32 %167
  %169 = trunc i32 %168 to i8
  store i8 %169, ptr %159, align 1, !tbaa !56
  %170 = or disjoint i64 %92, 32
  %171 = getelementptr inbounds i8, ptr %0, i64 %170
  %172 = load i8, ptr %171, align 1, !tbaa !56
  %173 = zext i8 %172 to i32
  %174 = add nsw i32 %156, %116
  %175 = ashr i32 %174, 6
  %176 = add nsw i32 %175, %173
  %177 = icmp ult i32 %176, 256
  %178 = icmp sgt i32 %176, 0
  %179 = sext i1 %178 to i32
  %180 = select i1 %177, i32 %176, i32 %179
  %181 = trunc i32 %180 to i8
  store i8 %181, ptr %171, align 1, !tbaa !56
  %182 = or disjoint i64 %92, 64
  %183 = getelementptr inbounds i8, ptr %0, i64 %182
  %184 = load i8, ptr %183, align 1, !tbaa !56
  %185 = zext i8 %184 to i32
  %186 = add nsw i32 %154, %117
  %187 = ashr i32 %186, 6
  %188 = add nsw i32 %187, %185
  %189 = icmp ult i32 %188, 256
  %190 = icmp sgt i32 %188, 0
  %191 = sext i1 %190 to i32
  %192 = select i1 %189, i32 %188, i32 %191
  %193 = trunc i32 %192 to i8
  store i8 %193, ptr %183, align 1, !tbaa !56
  %194 = or disjoint i64 %92, 96
  %195 = getelementptr inbounds i8, ptr %0, i64 %194
  %196 = load i8, ptr %195, align 1, !tbaa !56
  %197 = zext i8 %196 to i32
  %198 = add nsw i32 %152, %118
  %199 = ashr i32 %198, 6
  %200 = add nsw i32 %199, %197
  %201 = icmp ult i32 %200, 256
  %202 = icmp sgt i32 %200, 0
  %203 = sext i1 %202 to i32
  %204 = select i1 %201, i32 %200, i32 %203
  %205 = trunc i32 %204 to i8
  store i8 %205, ptr %195, align 1, !tbaa !56
  %206 = or disjoint i64 %92, 128
  %207 = getelementptr inbounds i8, ptr %0, i64 %206
  %208 = load i8, ptr %207, align 1, !tbaa !56
  %209 = zext i8 %208 to i32
  %210 = sub nsw i32 %118, %152
  %211 = ashr i32 %210, 6
  %212 = add nsw i32 %211, %209
  %213 = icmp ult i32 %212, 256
  %214 = icmp sgt i32 %212, 0
  %215 = sext i1 %214 to i32
  %216 = select i1 %213, i32 %212, i32 %215
  %217 = trunc i32 %216 to i8
  store i8 %217, ptr %207, align 1, !tbaa !56
  %218 = or disjoint i64 %92, 160
  %219 = getelementptr inbounds i8, ptr %0, i64 %218
  %220 = load i8, ptr %219, align 1, !tbaa !56
  %221 = zext i8 %220 to i32
  %222 = sub nsw i32 %117, %154
  %223 = ashr i32 %222, 6
  %224 = add nsw i32 %223, %221
  %225 = icmp ult i32 %224, 256
  %226 = icmp sgt i32 %224, 0
  %227 = sext i1 %226 to i32
  %228 = select i1 %225, i32 %224, i32 %227
  %229 = trunc i32 %228 to i8
  store i8 %229, ptr %219, align 1, !tbaa !56
  %230 = or disjoint i64 %92, 192
  %231 = getelementptr inbounds i8, ptr %0, i64 %230
  %232 = load i8, ptr %231, align 1, !tbaa !56
  %233 = zext i8 %232 to i32
  %234 = sub nsw i32 %116, %156
  %235 = ashr i32 %234, 6
  %236 = add nsw i32 %235, %233
  %237 = icmp ult i32 %236, 256
  %238 = icmp sgt i32 %236, 0
  %239 = sext i1 %238 to i32
  %240 = select i1 %237, i32 %236, i32 %239
  %241 = trunc i32 %240 to i8
  store i8 %241, ptr %231, align 1, !tbaa !56
  %242 = or disjoint i64 %92, 224
  %243 = getelementptr inbounds i8, ptr %0, i64 %242
  %244 = load i8, ptr %243, align 1, !tbaa !56
  %245 = zext i8 %244 to i32
  %246 = sub nsw i32 %115, %158
  %247 = ashr i32 %246, 6
  %248 = add nsw i32 %247, %245
  %249 = icmp ult i32 %248, 256
  %250 = icmp sgt i32 %248, 0
  %251 = sext i1 %250 to i32
  %252 = select i1 %249, i32 %248, i32 %251
  %253 = trunc i32 %252 to i8
  store i8 %253, ptr %243, align 1, !tbaa !56
  %254 = add nuw nsw i64 %92, 1
  %255 = icmp eq i64 %254, 8
  br i1 %255, label %90, label %91, !llvm.loop !71
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @sub16x16_dct8(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #1 {
  tail call void @sub8x8_dct8(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %4 = getelementptr inbounds [64 x i16], ptr %0, i64 1
  %5 = getelementptr inbounds i8, ptr %1, i64 8
  %6 = getelementptr inbounds i8, ptr %2, i64 8
  tail call void @sub8x8_dct8(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %7 = getelementptr inbounds [64 x i16], ptr %0, i64 2
  %8 = getelementptr inbounds i8, ptr %1, i64 128
  %9 = getelementptr inbounds i8, ptr %2, i64 256
  tail call void @sub8x8_dct8(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9)
  %10 = getelementptr inbounds [64 x i16], ptr %0, i64 3
  %11 = getelementptr inbounds i8, ptr %1, i64 136
  %12 = getelementptr inbounds i8, ptr %2, i64 264
  tail call void @sub8x8_dct8(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @add16x16_idct8(ptr nocapture noundef %0, ptr nocapture noundef %1) #3 {
  tail call void @add8x8_idct8(ptr noundef %0, ptr noundef %1)
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = getelementptr inbounds [64 x i16], ptr %1, i64 1
  tail call void @add8x8_idct8(ptr noundef nonnull %3, ptr noundef nonnull %4)
  %5 = getelementptr inbounds i8, ptr %0, i64 256
  %6 = getelementptr inbounds [64 x i16], ptr %1, i64 2
  tail call void @add8x8_idct8(ptr noundef nonnull %5, ptr noundef nonnull %6)
  %7 = getelementptr inbounds i8, ptr %0, i64 264
  %8 = getelementptr inbounds [64 x i16], ptr %1, i64 3
  tail call void @add8x8_idct8(ptr noundef nonnull %7, ptr noundef nonnull %8)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @dct4x4dc(ptr nocapture noundef %0) #3 {
  %2 = alloca [16 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #7
  br label %3

3:                                                ; preds = %1, %3
  %4 = phi i64 [ 0, %1 ], [ %40, %3 ]
  %5 = shl nuw nsw i64 %4, 2
  %6 = getelementptr inbounds i16, ptr %0, i64 %5
  %7 = load i16, ptr %6, align 2, !tbaa !57
  %8 = zext i16 %7 to i32
  %9 = or disjoint i64 %5, 1
  %10 = getelementptr inbounds i16, ptr %0, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !57
  %12 = zext i16 %11 to i32
  %13 = add nuw nsw i32 %12, %8
  %14 = sub nsw i32 %8, %12
  %15 = or disjoint i64 %5, 2
  %16 = getelementptr inbounds i16, ptr %0, i64 %15
  %17 = load i16, ptr %16, align 2, !tbaa !57
  %18 = zext i16 %17 to i32
  %19 = or disjoint i64 %5, 3
  %20 = getelementptr inbounds i16, ptr %0, i64 %19
  %21 = load i16, ptr %20, align 2, !tbaa !57
  %22 = zext i16 %21 to i32
  %23 = add nuw nsw i32 %22, %18
  %24 = sub nsw i32 %18, %22
  %25 = add nuw nsw i32 %23, %13
  %26 = trunc i32 %25 to i16
  %27 = getelementptr inbounds [16 x i16], ptr %2, i64 0, i64 %4
  store i16 %26, ptr %27, align 2, !tbaa !57
  %28 = sub nsw i32 %13, %23
  %29 = trunc i32 %28 to i16
  %30 = or disjoint i64 %4, 4
  %31 = getelementptr inbounds [16 x i16], ptr %2, i64 0, i64 %30
  store i16 %29, ptr %31, align 2, !tbaa !57
  %32 = sub nsw i32 %14, %24
  %33 = trunc i32 %32 to i16
  %34 = or disjoint i64 %4, 8
  %35 = getelementptr inbounds [16 x i16], ptr %2, i64 0, i64 %34
  store i16 %33, ptr %35, align 2, !tbaa !57
  %36 = add nsw i32 %24, %14
  %37 = trunc i32 %36 to i16
  %38 = or disjoint i64 %4, 12
  %39 = getelementptr inbounds [16 x i16], ptr %2, i64 0, i64 %38
  store i16 %37, ptr %39, align 2, !tbaa !57
  %40 = add nuw nsw i64 %4, 1
  %41 = icmp eq i64 %40, 4
  br i1 %41, label %43, label %3, !llvm.loop !72

42:                                               ; preds = %43
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #7
  ret void

43:                                               ; preds = %3, %43
  %44 = phi i64 [ %85, %43 ], [ 0, %3 ]
  %45 = shl nuw nsw i64 %44, 2
  %46 = getelementptr inbounds [16 x i16], ptr %2, i64 0, i64 %45
  %47 = load i16, ptr %46, align 8, !tbaa !57
  %48 = sext i16 %47 to i32
  %49 = or disjoint i64 %45, 1
  %50 = getelementptr inbounds [16 x i16], ptr %2, i64 0, i64 %49
  %51 = load i16, ptr %50, align 2, !tbaa !57
  %52 = sext i16 %51 to i32
  %53 = add nsw i32 %52, %48
  %54 = sub nsw i32 %48, %52
  %55 = or disjoint i64 %45, 2
  %56 = getelementptr inbounds [16 x i16], ptr %2, i64 0, i64 %55
  %57 = load i16, ptr %56, align 4, !tbaa !57
  %58 = sext i16 %57 to i32
  %59 = or disjoint i64 %45, 3
  %60 = getelementptr inbounds [16 x i16], ptr %2, i64 0, i64 %59
  %61 = load i16, ptr %60, align 2, !tbaa !57
  %62 = sext i16 %61 to i32
  %63 = add nsw i32 %62, %58
  %64 = sub nsw i32 %58, %62
  %65 = add nsw i32 %53, 1
  %66 = add nsw i32 %65, %63
  %67 = lshr i32 %66, 1
  %68 = trunc i32 %67 to i16
  %69 = getelementptr inbounds i16, ptr %0, i64 %45
  store i16 %68, ptr %69, align 2, !tbaa !57
  %70 = add nsw i32 %53, 1
  %71 = sub nsw i32 %70, %63
  %72 = lshr i32 %71, 1
  %73 = trunc i32 %72 to i16
  %74 = getelementptr inbounds i16, ptr %0, i64 %49
  store i16 %73, ptr %74, align 2, !tbaa !57
  %75 = add nsw i32 %54, 1
  %76 = sub nsw i32 %75, %64
  %77 = lshr i32 %76, 1
  %78 = trunc i32 %77 to i16
  %79 = getelementptr inbounds i16, ptr %0, i64 %55
  store i16 %78, ptr %79, align 2, !tbaa !57
  %80 = add nsw i32 %54, 1
  %81 = add nsw i32 %80, %64
  %82 = lshr i32 %81, 1
  %83 = trunc i32 %82 to i16
  %84 = getelementptr inbounds i16, ptr %0, i64 %59
  store i16 %83, ptr %84, align 2, !tbaa !57
  %85 = add nuw nsw i64 %44, 1
  %86 = icmp eq i64 %85, 4
  br i1 %86, label %42, label %43, !llvm.loop !73
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @idct4x4dc(ptr nocapture noundef %0) #3 {
  %2 = alloca [16 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #7
  br label %3

3:                                                ; preds = %1, %3
  %4 = phi i64 [ 0, %1 ], [ %40, %3 ]
  %5 = shl nuw nsw i64 %4, 2
  %6 = getelementptr inbounds i16, ptr %0, i64 %5
  %7 = load i16, ptr %6, align 2, !tbaa !57
  %8 = zext i16 %7 to i32
  %9 = or disjoint i64 %5, 1
  %10 = getelementptr inbounds i16, ptr %0, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !57
  %12 = zext i16 %11 to i32
  %13 = add nuw nsw i32 %12, %8
  %14 = sub nsw i32 %8, %12
  %15 = or disjoint i64 %5, 2
  %16 = getelementptr inbounds i16, ptr %0, i64 %15
  %17 = load i16, ptr %16, align 2, !tbaa !57
  %18 = zext i16 %17 to i32
  %19 = or disjoint i64 %5, 3
  %20 = getelementptr inbounds i16, ptr %0, i64 %19
  %21 = load i16, ptr %20, align 2, !tbaa !57
  %22 = zext i16 %21 to i32
  %23 = add nuw nsw i32 %22, %18
  %24 = sub nsw i32 %18, %22
  %25 = add nuw nsw i32 %23, %13
  %26 = trunc i32 %25 to i16
  %27 = getelementptr inbounds [16 x i16], ptr %2, i64 0, i64 %4
  store i16 %26, ptr %27, align 2, !tbaa !57
  %28 = sub nsw i32 %13, %23
  %29 = trunc i32 %28 to i16
  %30 = or disjoint i64 %4, 4
  %31 = getelementptr inbounds [16 x i16], ptr %2, i64 0, i64 %30
  store i16 %29, ptr %31, align 2, !tbaa !57
  %32 = sub nsw i32 %14, %24
  %33 = trunc i32 %32 to i16
  %34 = or disjoint i64 %4, 8
  %35 = getelementptr inbounds [16 x i16], ptr %2, i64 0, i64 %34
  store i16 %33, ptr %35, align 2, !tbaa !57
  %36 = add nsw i32 %24, %14
  %37 = trunc i32 %36 to i16
  %38 = or disjoint i64 %4, 12
  %39 = getelementptr inbounds [16 x i16], ptr %2, i64 0, i64 %38
  store i16 %37, ptr %39, align 2, !tbaa !57
  %40 = add nuw nsw i64 %4, 1
  %41 = icmp eq i64 %40, 4
  br i1 %41, label %43, label %3, !llvm.loop !74

42:                                               ; preds = %43
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #7
  ret void

43:                                               ; preds = %3, %43
  %44 = phi i64 [ %77, %43 ], [ 0, %3 ]
  %45 = shl nuw nsw i64 %44, 2
  %46 = getelementptr inbounds [16 x i16], ptr %2, i64 0, i64 %45
  %47 = load i16, ptr %46, align 8, !tbaa !57
  %48 = zext i16 %47 to i32
  %49 = or disjoint i64 %45, 1
  %50 = getelementptr inbounds [16 x i16], ptr %2, i64 0, i64 %49
  %51 = load i16, ptr %50, align 2, !tbaa !57
  %52 = zext i16 %51 to i32
  %53 = add nuw nsw i32 %52, %48
  %54 = sub nsw i32 %48, %52
  %55 = or disjoint i64 %45, 2
  %56 = getelementptr inbounds [16 x i16], ptr %2, i64 0, i64 %55
  %57 = load i16, ptr %56, align 4, !tbaa !57
  %58 = zext i16 %57 to i32
  %59 = or disjoint i64 %45, 3
  %60 = getelementptr inbounds [16 x i16], ptr %2, i64 0, i64 %59
  %61 = load i16, ptr %60, align 2, !tbaa !57
  %62 = zext i16 %61 to i32
  %63 = add nuw nsw i32 %62, %58
  %64 = sub nsw i32 %58, %62
  %65 = add nuw nsw i32 %63, %53
  %66 = trunc i32 %65 to i16
  %67 = getelementptr inbounds i16, ptr %0, i64 %45
  store i16 %66, ptr %67, align 2, !tbaa !57
  %68 = sub nsw i32 %53, %63
  %69 = trunc i32 %68 to i16
  %70 = getelementptr inbounds i16, ptr %0, i64 %49
  store i16 %69, ptr %70, align 2, !tbaa !57
  %71 = sub nsw i32 %54, %64
  %72 = trunc i32 %71 to i16
  %73 = getelementptr inbounds i16, ptr %0, i64 %55
  store i16 %72, ptr %73, align 2, !tbaa !57
  %74 = add nsw i32 %64, %54
  %75 = trunc i32 %74 to i16
  %76 = getelementptr inbounds i16, ptr %0, i64 %59
  store i16 %75, ptr %76, align 2, !tbaa !57
  %77 = add nuw nsw i64 %44, 1
  %78 = icmp eq i64 %77, 4
  br i1 %78, label %42, label %43, !llvm.loop !75
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @x264_dct_init_weights() local_unnamed_addr #4 {
  br label %1

1:                                                ; preds = %0, %15
  %2 = phi i64 [ 0, %0 ], [ %16, %15 ]
  br label %4

3:                                                ; preds = %15
  ret void

4:                                                ; preds = %1, %4
  %5 = phi i64 [ 0, %1 ], [ %13, %4 ]
  %6 = getelementptr inbounds [2 x [16 x i8]], ptr @x264_zigzag_scan4, i64 0, i64 %2, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !56
  %8 = zext i8 %7 to i64
  %9 = getelementptr inbounds [16 x i16], ptr @x264_dct4_weight2_tab, i64 0, i64 %8
  %10 = load i16, ptr %9, align 2, !tbaa !57
  %11 = zext i16 %10 to i32
  %12 = getelementptr inbounds [2 x [16 x i32]], ptr @x264_dct4_weight2_zigzag, i64 0, i64 %2, i64 %5
  store i32 %11, ptr %12, align 4, !tbaa !76
  %13 = add nuw nsw i64 %5, 1
  %14 = icmp eq i64 %13, 16
  br i1 %14, label %18, label %4, !llvm.loop !78

15:                                               ; preds = %18
  %16 = add nuw nsw i64 %2, 1
  %17 = icmp eq i64 %2, 0
  br i1 %17, label %1, label %3, !llvm.loop !79

18:                                               ; preds = %4, %18
  %19 = phi i64 [ %27, %18 ], [ 0, %4 ]
  %20 = getelementptr inbounds [2 x [64 x i8]], ptr @x264_zigzag_scan8, i64 0, i64 %2, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !56
  %22 = zext i8 %21 to i64
  %23 = getelementptr inbounds [64 x i16], ptr @x264_dct8_weight2_tab, i64 0, i64 %22
  %24 = load i16, ptr %23, align 2, !tbaa !57
  %25 = zext i16 %24 to i32
  %26 = getelementptr inbounds [2 x [64 x i32]], ptr @x264_dct8_weight2_zigzag, i64 0, i64 %2, i64 %19
  store i32 %25, ptr %26, align 4, !tbaa !76
  %27 = add nuw nsw i64 %19, 1
  %28 = icmp eq i64 %27, 64
  br i1 %28, label %15, label %18, !llvm.loop !80
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_zigzag_init(i32 noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %2, 0
  %5 = getelementptr inbounds %struct.x264_zigzag_function_t, ptr %1, i64 0, i32 1
  %6 = getelementptr inbounds %struct.x264_zigzag_function_t, ptr %1, i64 0, i32 2
  %7 = getelementptr inbounds %struct.x264_zigzag_function_t, ptr %1, i64 0, i32 3
  %8 = getelementptr inbounds %struct.x264_zigzag_function_t, ptr %1, i64 0, i32 4
  %9 = select i1 %4, ptr @zigzag_scan_8x8_frame, ptr @zigzag_scan_8x8_field
  %10 = select i1 %4, ptr @zigzag_scan_4x4_frame, ptr @zigzag_scan_4x4_field
  %11 = select i1 %4, ptr @zigzag_sub_8x8_frame, ptr @zigzag_sub_8x8_field
  %12 = select i1 %4, ptr @zigzag_sub_4x4_frame, ptr @zigzag_sub_4x4_field
  %13 = select i1 %4, ptr @zigzag_sub_4x4ac_frame, ptr @zigzag_sub_4x4ac_field
  store ptr %9, ptr %1, align 8, !tbaa !81
  store ptr %10, ptr %5, align 8, !tbaa !83
  store ptr %11, ptr %6, align 8, !tbaa !84
  store ptr %12, ptr %7, align 8, !tbaa !85
  store ptr %13, ptr %8, align 8, !tbaa !86
  %14 = getelementptr inbounds %struct.x264_zigzag_function_t, ptr %1, i64 0, i32 5
  store ptr @zigzag_interleave_8x8_cavlc, ptr %14, align 8, !tbaa !87
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @zigzag_scan_8x8_field(ptr noundef writeonly %0, ptr noundef readonly %1) #6 {
  %3 = load i16, ptr %1, align 2, !tbaa !57
  store i16 %3, ptr %0, align 2, !tbaa !57
  %4 = getelementptr inbounds i16, ptr %1, i64 1
  %5 = load i16, ptr %4, align 2, !tbaa !57
  %6 = getelementptr inbounds i16, ptr %0, i64 1
  store i16 %5, ptr %6, align 2, !tbaa !57
  %7 = getelementptr inbounds i16, ptr %1, i64 2
  %8 = load i16, ptr %7, align 2, !tbaa !57
  %9 = getelementptr inbounds i16, ptr %0, i64 2
  store i16 %8, ptr %9, align 2, !tbaa !57
  %10 = getelementptr inbounds i16, ptr %1, i64 8
  %11 = load i16, ptr %10, align 2, !tbaa !57
  %12 = getelementptr inbounds i16, ptr %0, i64 3
  store i16 %11, ptr %12, align 2, !tbaa !57
  %13 = getelementptr inbounds i16, ptr %1, i64 9
  %14 = load i16, ptr %13, align 2, !tbaa !57
  %15 = getelementptr inbounds i16, ptr %0, i64 4
  store i16 %14, ptr %15, align 2, !tbaa !57
  %16 = getelementptr inbounds i16, ptr %1, i64 3
  %17 = load i16, ptr %16, align 2, !tbaa !57
  %18 = getelementptr inbounds i16, ptr %0, i64 5
  store i16 %17, ptr %18, align 2, !tbaa !57
  %19 = getelementptr inbounds i16, ptr %1, i64 4
  %20 = load i16, ptr %19, align 2, !tbaa !57
  %21 = getelementptr inbounds i16, ptr %0, i64 6
  store i16 %20, ptr %21, align 2, !tbaa !57
  %22 = getelementptr inbounds i16, ptr %1, i64 10
  %23 = load i16, ptr %22, align 2, !tbaa !57
  %24 = getelementptr inbounds i16, ptr %0, i64 7
  store i16 %23, ptr %24, align 2, !tbaa !57
  %25 = getelementptr inbounds i16, ptr %1, i64 16
  %26 = load i16, ptr %25, align 2, !tbaa !57
  %27 = getelementptr inbounds i16, ptr %0, i64 8
  store i16 %26, ptr %27, align 2, !tbaa !57
  %28 = getelementptr inbounds i16, ptr %1, i64 11
  %29 = load i16, ptr %28, align 2, !tbaa !57
  %30 = getelementptr inbounds i16, ptr %0, i64 9
  store i16 %29, ptr %30, align 2, !tbaa !57
  %31 = getelementptr inbounds i16, ptr %1, i64 5
  %32 = load i16, ptr %31, align 2, !tbaa !57
  %33 = getelementptr inbounds i16, ptr %0, i64 10
  store i16 %32, ptr %33, align 2, !tbaa !57
  %34 = getelementptr inbounds i16, ptr %1, i64 6
  %35 = load i16, ptr %34, align 2, !tbaa !57
  %36 = getelementptr inbounds i16, ptr %0, i64 11
  store i16 %35, ptr %36, align 2, !tbaa !57
  %37 = getelementptr inbounds i16, ptr %1, i64 7
  %38 = load i16, ptr %37, align 2, !tbaa !57
  %39 = getelementptr inbounds i16, ptr %0, i64 12
  store i16 %38, ptr %39, align 2, !tbaa !57
  %40 = getelementptr inbounds i16, ptr %1, i64 12
  %41 = load i16, ptr %40, align 2, !tbaa !57
  %42 = getelementptr inbounds i16, ptr %0, i64 13
  store i16 %41, ptr %42, align 2, !tbaa !57
  %43 = getelementptr inbounds i16, ptr %1, i64 17
  %44 = load i16, ptr %43, align 2, !tbaa !57
  %45 = getelementptr inbounds i16, ptr %0, i64 14
  store i16 %44, ptr %45, align 2, !tbaa !57
  %46 = getelementptr inbounds i16, ptr %1, i64 24
  %47 = load i16, ptr %46, align 2, !tbaa !57
  %48 = getelementptr inbounds i16, ptr %0, i64 15
  store i16 %47, ptr %48, align 2, !tbaa !57
  %49 = getelementptr inbounds i16, ptr %1, i64 18
  %50 = load i16, ptr %49, align 2, !tbaa !57
  %51 = getelementptr inbounds i16, ptr %0, i64 16
  store i16 %50, ptr %51, align 2, !tbaa !57
  %52 = getelementptr inbounds i16, ptr %1, i64 13
  %53 = load i16, ptr %52, align 2, !tbaa !57
  %54 = getelementptr inbounds i16, ptr %0, i64 17
  store i16 %53, ptr %54, align 2, !tbaa !57
  %55 = getelementptr inbounds i16, ptr %1, i64 14
  %56 = load i16, ptr %55, align 2, !tbaa !57
  %57 = getelementptr inbounds i16, ptr %0, i64 18
  store i16 %56, ptr %57, align 2, !tbaa !57
  %58 = getelementptr inbounds i16, ptr %1, i64 15
  %59 = load i16, ptr %58, align 2, !tbaa !57
  %60 = getelementptr inbounds i16, ptr %0, i64 19
  store i16 %59, ptr %60, align 2, !tbaa !57
  %61 = getelementptr inbounds i16, ptr %1, i64 19
  %62 = load i16, ptr %61, align 2, !tbaa !57
  %63 = getelementptr inbounds i16, ptr %0, i64 20
  store i16 %62, ptr %63, align 2, !tbaa !57
  %64 = getelementptr inbounds i16, ptr %1, i64 25
  %65 = load i16, ptr %64, align 2, !tbaa !57
  %66 = getelementptr inbounds i16, ptr %0, i64 21
  store i16 %65, ptr %66, align 2, !tbaa !57
  %67 = getelementptr inbounds i16, ptr %1, i64 32
  %68 = load i16, ptr %67, align 2, !tbaa !57
  %69 = getelementptr inbounds i16, ptr %0, i64 22
  store i16 %68, ptr %69, align 2, !tbaa !57
  %70 = getelementptr inbounds i16, ptr %1, i64 26
  %71 = load i16, ptr %70, align 2, !tbaa !57
  %72 = getelementptr inbounds i16, ptr %0, i64 23
  store i16 %71, ptr %72, align 2, !tbaa !57
  %73 = getelementptr inbounds i16, ptr %1, i64 20
  %74 = load i16, ptr %73, align 2, !tbaa !57
  %75 = getelementptr inbounds i16, ptr %0, i64 24
  store i16 %74, ptr %75, align 2, !tbaa !57
  %76 = getelementptr inbounds i16, ptr %1, i64 21
  %77 = load i16, ptr %76, align 2, !tbaa !57
  %78 = getelementptr inbounds i16, ptr %0, i64 25
  store i16 %77, ptr %78, align 2, !tbaa !57
  %79 = getelementptr inbounds i16, ptr %1, i64 22
  %80 = load i16, ptr %79, align 2, !tbaa !57
  %81 = getelementptr inbounds i16, ptr %0, i64 26
  store i16 %80, ptr %81, align 2, !tbaa !57
  %82 = getelementptr inbounds i16, ptr %1, i64 23
  %83 = load i16, ptr %82, align 2, !tbaa !57
  %84 = getelementptr inbounds i16, ptr %0, i64 27
  store i16 %83, ptr %84, align 2, !tbaa !57
  %85 = getelementptr inbounds i16, ptr %1, i64 27
  %86 = load i16, ptr %85, align 2, !tbaa !57
  %87 = getelementptr inbounds i16, ptr %0, i64 28
  store i16 %86, ptr %87, align 2, !tbaa !57
  %88 = getelementptr inbounds i16, ptr %1, i64 33
  %89 = load i16, ptr %88, align 2, !tbaa !57
  %90 = getelementptr inbounds i16, ptr %0, i64 29
  store i16 %89, ptr %90, align 2, !tbaa !57
  %91 = getelementptr inbounds i16, ptr %1, i64 40
  %92 = load i16, ptr %91, align 2, !tbaa !57
  %93 = getelementptr inbounds i16, ptr %0, i64 30
  store i16 %92, ptr %93, align 2, !tbaa !57
  %94 = getelementptr inbounds i16, ptr %1, i64 34
  %95 = load i16, ptr %94, align 2, !tbaa !57
  %96 = getelementptr inbounds i16, ptr %0, i64 31
  store i16 %95, ptr %96, align 2, !tbaa !57
  %97 = getelementptr inbounds i16, ptr %1, i64 28
  %98 = load i16, ptr %97, align 2, !tbaa !57
  %99 = getelementptr inbounds i16, ptr %0, i64 32
  store i16 %98, ptr %99, align 2, !tbaa !57
  %100 = getelementptr inbounds i16, ptr %1, i64 29
  %101 = load i16, ptr %100, align 2, !tbaa !57
  %102 = getelementptr inbounds i16, ptr %0, i64 33
  store i16 %101, ptr %102, align 2, !tbaa !57
  %103 = getelementptr inbounds i16, ptr %1, i64 30
  %104 = load i16, ptr %103, align 2, !tbaa !57
  %105 = getelementptr inbounds i16, ptr %0, i64 34
  store i16 %104, ptr %105, align 2, !tbaa !57
  %106 = getelementptr inbounds i16, ptr %1, i64 31
  %107 = load i16, ptr %106, align 2, !tbaa !57
  %108 = getelementptr inbounds i16, ptr %0, i64 35
  store i16 %107, ptr %108, align 2, !tbaa !57
  %109 = getelementptr inbounds i16, ptr %1, i64 35
  %110 = load i16, ptr %109, align 2, !tbaa !57
  %111 = getelementptr inbounds i16, ptr %0, i64 36
  store i16 %110, ptr %111, align 2, !tbaa !57
  %112 = getelementptr inbounds i16, ptr %1, i64 41
  %113 = load i16, ptr %112, align 2, !tbaa !57
  %114 = getelementptr inbounds i16, ptr %0, i64 37
  store i16 %113, ptr %114, align 2, !tbaa !57
  %115 = getelementptr inbounds i16, ptr %1, i64 48
  %116 = load i16, ptr %115, align 2, !tbaa !57
  %117 = getelementptr inbounds i16, ptr %0, i64 38
  store i16 %116, ptr %117, align 2, !tbaa !57
  %118 = getelementptr inbounds i16, ptr %1, i64 42
  %119 = load i16, ptr %118, align 2, !tbaa !57
  %120 = getelementptr inbounds i16, ptr %0, i64 39
  store i16 %119, ptr %120, align 2, !tbaa !57
  %121 = getelementptr inbounds i16, ptr %1, i64 36
  %122 = load i16, ptr %121, align 2, !tbaa !57
  %123 = getelementptr inbounds i16, ptr %0, i64 40
  store i16 %122, ptr %123, align 2, !tbaa !57
  %124 = getelementptr inbounds i16, ptr %1, i64 37
  %125 = load i16, ptr %124, align 2, !tbaa !57
  %126 = getelementptr inbounds i16, ptr %0, i64 41
  store i16 %125, ptr %126, align 2, !tbaa !57
  %127 = getelementptr inbounds i16, ptr %1, i64 38
  %128 = load i16, ptr %127, align 2, !tbaa !57
  %129 = getelementptr inbounds i16, ptr %0, i64 42
  store i16 %128, ptr %129, align 2, !tbaa !57
  %130 = getelementptr inbounds i16, ptr %1, i64 39
  %131 = load i16, ptr %130, align 2, !tbaa !57
  %132 = getelementptr inbounds i16, ptr %0, i64 43
  store i16 %131, ptr %132, align 2, !tbaa !57
  %133 = getelementptr inbounds i16, ptr %1, i64 43
  %134 = load i16, ptr %133, align 2, !tbaa !57
  %135 = getelementptr inbounds i16, ptr %0, i64 44
  store i16 %134, ptr %135, align 2, !tbaa !57
  %136 = getelementptr inbounds i16, ptr %1, i64 49
  %137 = load i16, ptr %136, align 2, !tbaa !57
  %138 = getelementptr inbounds i16, ptr %0, i64 45
  store i16 %137, ptr %138, align 2, !tbaa !57
  %139 = getelementptr inbounds i16, ptr %1, i64 50
  %140 = load i16, ptr %139, align 2, !tbaa !57
  %141 = getelementptr inbounds i16, ptr %0, i64 46
  store i16 %140, ptr %141, align 2, !tbaa !57
  %142 = getelementptr inbounds i16, ptr %1, i64 44
  %143 = load i16, ptr %142, align 2, !tbaa !57
  %144 = getelementptr inbounds i16, ptr %0, i64 47
  store i16 %143, ptr %144, align 2, !tbaa !57
  %145 = getelementptr inbounds i16, ptr %1, i64 45
  %146 = load i16, ptr %145, align 2, !tbaa !57
  %147 = getelementptr inbounds i16, ptr %0, i64 48
  store i16 %146, ptr %147, align 2, !tbaa !57
  %148 = getelementptr inbounds i16, ptr %1, i64 46
  %149 = load i16, ptr %148, align 2, !tbaa !57
  %150 = getelementptr inbounds i16, ptr %0, i64 49
  store i16 %149, ptr %150, align 2, !tbaa !57
  %151 = getelementptr inbounds i16, ptr %1, i64 47
  %152 = load i16, ptr %151, align 2, !tbaa !57
  %153 = getelementptr inbounds i16, ptr %0, i64 50
  store i16 %152, ptr %153, align 2, !tbaa !57
  %154 = getelementptr inbounds i16, ptr %1, i64 51
  %155 = load i16, ptr %154, align 2, !tbaa !57
  %156 = getelementptr inbounds i16, ptr %0, i64 51
  store i16 %155, ptr %156, align 2, !tbaa !57
  %157 = getelementptr inbounds i16, ptr %1, i64 56
  %158 = load i16, ptr %157, align 2, !tbaa !57
  %159 = getelementptr inbounds i16, ptr %0, i64 52
  store i16 %158, ptr %159, align 2, !tbaa !57
  %160 = getelementptr inbounds i16, ptr %1, i64 57
  %161 = load i16, ptr %160, align 2, !tbaa !57
  %162 = getelementptr inbounds i16, ptr %0, i64 53
  store i16 %161, ptr %162, align 2, !tbaa !57
  %163 = getelementptr inbounds i16, ptr %1, i64 52
  %164 = load i16, ptr %163, align 2, !tbaa !57
  %165 = getelementptr inbounds i16, ptr %0, i64 54
  store i16 %164, ptr %165, align 2, !tbaa !57
  %166 = getelementptr inbounds i16, ptr %1, i64 53
  %167 = load i16, ptr %166, align 2, !tbaa !57
  %168 = getelementptr inbounds i16, ptr %0, i64 55
  store i16 %167, ptr %168, align 2, !tbaa !57
  %169 = getelementptr inbounds i16, ptr %1, i64 54
  %170 = load i16, ptr %169, align 2, !tbaa !57
  %171 = getelementptr inbounds i16, ptr %0, i64 56
  store i16 %170, ptr %171, align 2, !tbaa !57
  %172 = getelementptr inbounds i16, ptr %1, i64 55
  %173 = load i16, ptr %172, align 2, !tbaa !57
  %174 = getelementptr inbounds i16, ptr %0, i64 57
  store i16 %173, ptr %174, align 2, !tbaa !57
  %175 = getelementptr inbounds i16, ptr %1, i64 58
  %176 = load i16, ptr %175, align 2, !tbaa !57
  %177 = getelementptr inbounds i16, ptr %0, i64 58
  store i16 %176, ptr %177, align 2, !tbaa !57
  %178 = getelementptr inbounds i16, ptr %1, i64 59
  %179 = load i16, ptr %178, align 2, !tbaa !57
  %180 = getelementptr inbounds i16, ptr %0, i64 59
  store i16 %179, ptr %180, align 2, !tbaa !57
  %181 = getelementptr inbounds i16, ptr %1, i64 60
  %182 = load i16, ptr %181, align 2, !tbaa !57
  %183 = getelementptr inbounds i16, ptr %0, i64 60
  store i16 %182, ptr %183, align 2, !tbaa !57
  %184 = getelementptr inbounds i16, ptr %1, i64 61
  %185 = load i16, ptr %184, align 2, !tbaa !57
  %186 = getelementptr inbounds i16, ptr %0, i64 61
  store i16 %185, ptr %186, align 2, !tbaa !57
  %187 = getelementptr inbounds i16, ptr %1, i64 62
  %188 = load i16, ptr %187, align 2, !tbaa !57
  %189 = getelementptr inbounds i16, ptr %0, i64 62
  store i16 %188, ptr %189, align 2, !tbaa !57
  %190 = getelementptr inbounds i16, ptr %1, i64 63
  %191 = load i16, ptr %190, align 2, !tbaa !57
  %192 = getelementptr inbounds i16, ptr %0, i64 63
  store i16 %191, ptr %192, align 2, !tbaa !57
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @zigzag_scan_4x4_field(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = load i32, ptr %1, align 4, !tbaa !56
  store i32 %3, ptr %0, align 4, !tbaa !56
  %4 = getelementptr inbounds i16, ptr %1, i64 4
  %5 = load i16, ptr %4, align 2, !tbaa !57
  %6 = getelementptr inbounds i16, ptr %0, i64 2
  store i16 %5, ptr %6, align 2, !tbaa !57
  %7 = getelementptr inbounds i16, ptr %1, i64 2
  %8 = load i16, ptr %7, align 2, !tbaa !57
  %9 = getelementptr inbounds i16, ptr %0, i64 3
  store i16 %8, ptr %9, align 2, !tbaa !57
  %10 = getelementptr inbounds i16, ptr %1, i64 3
  %11 = load i16, ptr %10, align 2, !tbaa !57
  %12 = getelementptr inbounds i16, ptr %0, i64 4
  store i16 %11, ptr %12, align 2, !tbaa !57
  %13 = getelementptr inbounds i16, ptr %1, i64 5
  %14 = load i16, ptr %13, align 2, !tbaa !57
  %15 = getelementptr inbounds i16, ptr %0, i64 5
  store i16 %14, ptr %15, align 2, !tbaa !57
  %16 = getelementptr inbounds i16, ptr %1, i64 6
  %17 = load i32, ptr %16, align 4, !tbaa !56
  %18 = getelementptr inbounds i16, ptr %0, i64 6
  store i32 %17, ptr %18, align 4, !tbaa !56
  %19 = getelementptr inbounds i16, ptr %1, i64 8
  %20 = load i64, ptr %19, align 8, !tbaa !56
  %21 = getelementptr inbounds i16, ptr %0, i64 8
  store i64 %20, ptr %21, align 8, !tbaa !56
  %22 = getelementptr inbounds i16, ptr %1, i64 12
  %23 = load i64, ptr %22, align 8, !tbaa !56
  %24 = getelementptr inbounds i16, ptr %0, i64 12
  store i64 %23, ptr %24, align 8, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal i32 @zigzag_sub_8x8_field(ptr noundef writeonly %0, ptr noundef readonly %1, ptr noundef %2) #6 {
  %4 = load i8, ptr %1, align 1, !tbaa !56
  %5 = zext i8 %4 to i16
  %6 = load i8, ptr %2, align 1, !tbaa !56
  %7 = zext i8 %6 to i16
  %8 = sub nsw i16 %5, %7
  store i16 %8, ptr %0, align 2, !tbaa !57
  %9 = getelementptr inbounds i8, ptr %1, i64 16
  %10 = load i8, ptr %9, align 1, !tbaa !56
  %11 = zext i8 %10 to i16
  %12 = getelementptr inbounds i8, ptr %2, i64 32
  %13 = load i8, ptr %12, align 1, !tbaa !56
  %14 = zext i8 %13 to i16
  %15 = sub nsw i16 %11, %14
  %16 = getelementptr inbounds i16, ptr %0, i64 1
  store i16 %15, ptr %16, align 2, !tbaa !57
  %17 = or i16 %15, %8
  %18 = getelementptr inbounds i8, ptr %1, i64 32
  %19 = load i8, ptr %18, align 1, !tbaa !56
  %20 = zext i8 %19 to i16
  %21 = getelementptr inbounds i8, ptr %2, i64 64
  %22 = load i8, ptr %21, align 1, !tbaa !56
  %23 = zext i8 %22 to i16
  %24 = sub nsw i16 %20, %23
  %25 = getelementptr inbounds i16, ptr %0, i64 2
  store i16 %24, ptr %25, align 2, !tbaa !57
  %26 = or i16 %17, %24
  %27 = getelementptr inbounds i8, ptr %1, i64 1
  %28 = load i8, ptr %27, align 1, !tbaa !56
  %29 = zext i8 %28 to i16
  %30 = getelementptr inbounds i8, ptr %2, i64 1
  %31 = load i8, ptr %30, align 1, !tbaa !56
  %32 = zext i8 %31 to i16
  %33 = sub nsw i16 %29, %32
  %34 = getelementptr inbounds i16, ptr %0, i64 3
  store i16 %33, ptr %34, align 2, !tbaa !57
  %35 = or i16 %26, %33
  %36 = getelementptr inbounds i8, ptr %1, i64 17
  %37 = load i8, ptr %36, align 1, !tbaa !56
  %38 = zext i8 %37 to i16
  %39 = getelementptr inbounds i8, ptr %2, i64 33
  %40 = load i8, ptr %39, align 1, !tbaa !56
  %41 = zext i8 %40 to i16
  %42 = sub nsw i16 %38, %41
  %43 = getelementptr inbounds i16, ptr %0, i64 4
  store i16 %42, ptr %43, align 2, !tbaa !57
  %44 = or i16 %35, %42
  %45 = getelementptr inbounds i8, ptr %1, i64 48
  %46 = load i8, ptr %45, align 1, !tbaa !56
  %47 = zext i8 %46 to i16
  %48 = getelementptr inbounds i8, ptr %2, i64 96
  %49 = load i8, ptr %48, align 1, !tbaa !56
  %50 = zext i8 %49 to i16
  %51 = sub nsw i16 %47, %50
  %52 = getelementptr inbounds i16, ptr %0, i64 5
  store i16 %51, ptr %52, align 2, !tbaa !57
  %53 = or i16 %44, %51
  %54 = getelementptr inbounds i8, ptr %1, i64 64
  %55 = load i8, ptr %54, align 1, !tbaa !56
  %56 = zext i8 %55 to i16
  %57 = getelementptr inbounds i8, ptr %2, i64 128
  %58 = load i8, ptr %57, align 1, !tbaa !56
  %59 = zext i8 %58 to i16
  %60 = sub nsw i16 %56, %59
  %61 = getelementptr inbounds i16, ptr %0, i64 6
  store i16 %60, ptr %61, align 2, !tbaa !57
  %62 = or i16 %53, %60
  %63 = getelementptr inbounds i8, ptr %1, i64 33
  %64 = load i8, ptr %63, align 1, !tbaa !56
  %65 = zext i8 %64 to i16
  %66 = getelementptr inbounds i8, ptr %2, i64 65
  %67 = load i8, ptr %66, align 1, !tbaa !56
  %68 = zext i8 %67 to i16
  %69 = sub nsw i16 %65, %68
  %70 = getelementptr inbounds i16, ptr %0, i64 7
  store i16 %69, ptr %70, align 2, !tbaa !57
  %71 = or i16 %62, %69
  %72 = getelementptr inbounds i8, ptr %1, i64 2
  %73 = load i8, ptr %72, align 1, !tbaa !56
  %74 = zext i8 %73 to i16
  %75 = getelementptr inbounds i8, ptr %2, i64 2
  %76 = load i8, ptr %75, align 1, !tbaa !56
  %77 = zext i8 %76 to i16
  %78 = sub nsw i16 %74, %77
  %79 = getelementptr inbounds i16, ptr %0, i64 8
  store i16 %78, ptr %79, align 2, !tbaa !57
  %80 = or i16 %71, %78
  %81 = getelementptr inbounds i8, ptr %1, i64 49
  %82 = load i8, ptr %81, align 1, !tbaa !56
  %83 = zext i8 %82 to i16
  %84 = getelementptr inbounds i8, ptr %2, i64 97
  %85 = load i8, ptr %84, align 1, !tbaa !56
  %86 = zext i8 %85 to i16
  %87 = sub nsw i16 %83, %86
  %88 = getelementptr inbounds i16, ptr %0, i64 9
  store i16 %87, ptr %88, align 2, !tbaa !57
  %89 = or i16 %80, %87
  %90 = getelementptr inbounds i8, ptr %1, i64 80
  %91 = load i8, ptr %90, align 1, !tbaa !56
  %92 = zext i8 %91 to i16
  %93 = getelementptr inbounds i8, ptr %2, i64 160
  %94 = load i8, ptr %93, align 1, !tbaa !56
  %95 = zext i8 %94 to i16
  %96 = sub nsw i16 %92, %95
  %97 = getelementptr inbounds i16, ptr %0, i64 10
  store i16 %96, ptr %97, align 2, !tbaa !57
  %98 = or i16 %89, %96
  %99 = getelementptr inbounds i8, ptr %1, i64 96
  %100 = load i8, ptr %99, align 1, !tbaa !56
  %101 = zext i8 %100 to i16
  %102 = getelementptr inbounds i8, ptr %2, i64 192
  %103 = load i8, ptr %102, align 1, !tbaa !56
  %104 = zext i8 %103 to i16
  %105 = sub nsw i16 %101, %104
  %106 = getelementptr inbounds i16, ptr %0, i64 11
  store i16 %105, ptr %106, align 2, !tbaa !57
  %107 = or i16 %98, %105
  %108 = getelementptr inbounds i8, ptr %1, i64 112
  %109 = load i8, ptr %108, align 1, !tbaa !56
  %110 = zext i8 %109 to i16
  %111 = getelementptr inbounds i8, ptr %2, i64 224
  %112 = load i8, ptr %111, align 1, !tbaa !56
  %113 = zext i8 %112 to i16
  %114 = sub nsw i16 %110, %113
  %115 = getelementptr inbounds i16, ptr %0, i64 12
  store i16 %114, ptr %115, align 2, !tbaa !57
  %116 = or i16 %107, %114
  %117 = getelementptr inbounds i8, ptr %1, i64 65
  %118 = load i8, ptr %117, align 1, !tbaa !56
  %119 = zext i8 %118 to i16
  %120 = getelementptr inbounds i8, ptr %2, i64 129
  %121 = load i8, ptr %120, align 1, !tbaa !56
  %122 = zext i8 %121 to i16
  %123 = sub nsw i16 %119, %122
  %124 = getelementptr inbounds i16, ptr %0, i64 13
  store i16 %123, ptr %124, align 2, !tbaa !57
  %125 = or i16 %116, %123
  %126 = getelementptr inbounds i8, ptr %1, i64 18
  %127 = load i8, ptr %126, align 1, !tbaa !56
  %128 = zext i8 %127 to i16
  %129 = getelementptr inbounds i8, ptr %2, i64 34
  %130 = load i8, ptr %129, align 1, !tbaa !56
  %131 = zext i8 %130 to i16
  %132 = sub nsw i16 %128, %131
  %133 = getelementptr inbounds i16, ptr %0, i64 14
  store i16 %132, ptr %133, align 2, !tbaa !57
  %134 = or i16 %125, %132
  %135 = getelementptr inbounds i8, ptr %1, i64 3
  %136 = load i8, ptr %135, align 1, !tbaa !56
  %137 = zext i8 %136 to i16
  %138 = getelementptr inbounds i8, ptr %2, i64 3
  %139 = load i8, ptr %138, align 1, !tbaa !56
  %140 = zext i8 %139 to i16
  %141 = sub nsw i16 %137, %140
  %142 = getelementptr inbounds i16, ptr %0, i64 15
  store i16 %141, ptr %142, align 2, !tbaa !57
  %143 = or i16 %134, %141
  %144 = getelementptr inbounds i8, ptr %1, i64 34
  %145 = load i8, ptr %144, align 1, !tbaa !56
  %146 = zext i8 %145 to i16
  %147 = getelementptr inbounds i8, ptr %2, i64 66
  %148 = load i8, ptr %147, align 1, !tbaa !56
  %149 = zext i8 %148 to i16
  %150 = sub nsw i16 %146, %149
  %151 = getelementptr inbounds i16, ptr %0, i64 16
  store i16 %150, ptr %151, align 2, !tbaa !57
  %152 = or i16 %143, %150
  %153 = getelementptr inbounds i8, ptr %1, i64 81
  %154 = load i8, ptr %153, align 1, !tbaa !56
  %155 = zext i8 %154 to i16
  %156 = getelementptr inbounds i8, ptr %2, i64 161
  %157 = load i8, ptr %156, align 1, !tbaa !56
  %158 = zext i8 %157 to i16
  %159 = sub nsw i16 %155, %158
  %160 = getelementptr inbounds i16, ptr %0, i64 17
  store i16 %159, ptr %160, align 2, !tbaa !57
  %161 = or i16 %152, %159
  %162 = getelementptr inbounds i8, ptr %1, i64 97
  %163 = load i8, ptr %162, align 1, !tbaa !56
  %164 = zext i8 %163 to i16
  %165 = getelementptr inbounds i8, ptr %2, i64 193
  %166 = load i8, ptr %165, align 1, !tbaa !56
  %167 = zext i8 %166 to i16
  %168 = sub nsw i16 %164, %167
  %169 = getelementptr inbounds i16, ptr %0, i64 18
  store i16 %168, ptr %169, align 2, !tbaa !57
  %170 = or i16 %161, %168
  %171 = getelementptr inbounds i8, ptr %1, i64 113
  %172 = load i8, ptr %171, align 1, !tbaa !56
  %173 = zext i8 %172 to i16
  %174 = getelementptr inbounds i8, ptr %2, i64 225
  %175 = load i8, ptr %174, align 1, !tbaa !56
  %176 = zext i8 %175 to i16
  %177 = sub nsw i16 %173, %176
  %178 = getelementptr inbounds i16, ptr %0, i64 19
  store i16 %177, ptr %178, align 2, !tbaa !57
  %179 = or i16 %170, %177
  %180 = getelementptr inbounds i8, ptr %1, i64 50
  %181 = load i8, ptr %180, align 1, !tbaa !56
  %182 = zext i8 %181 to i16
  %183 = getelementptr inbounds i8, ptr %2, i64 98
  %184 = load i8, ptr %183, align 1, !tbaa !56
  %185 = zext i8 %184 to i16
  %186 = sub nsw i16 %182, %185
  %187 = getelementptr inbounds i16, ptr %0, i64 20
  store i16 %186, ptr %187, align 2, !tbaa !57
  %188 = or i16 %179, %186
  %189 = getelementptr inbounds i8, ptr %1, i64 19
  %190 = load i8, ptr %189, align 1, !tbaa !56
  %191 = zext i8 %190 to i16
  %192 = getelementptr inbounds i8, ptr %2, i64 35
  %193 = load i8, ptr %192, align 1, !tbaa !56
  %194 = zext i8 %193 to i16
  %195 = sub nsw i16 %191, %194
  %196 = getelementptr inbounds i16, ptr %0, i64 21
  store i16 %195, ptr %196, align 2, !tbaa !57
  %197 = or i16 %188, %195
  %198 = getelementptr inbounds i8, ptr %1, i64 4
  %199 = load i8, ptr %198, align 1, !tbaa !56
  %200 = zext i8 %199 to i16
  %201 = getelementptr inbounds i8, ptr %2, i64 4
  %202 = load i8, ptr %201, align 1, !tbaa !56
  %203 = zext i8 %202 to i16
  %204 = sub nsw i16 %200, %203
  %205 = getelementptr inbounds i16, ptr %0, i64 22
  store i16 %204, ptr %205, align 2, !tbaa !57
  %206 = or i16 %197, %204
  %207 = getelementptr inbounds i8, ptr %1, i64 35
  %208 = load i8, ptr %207, align 1, !tbaa !56
  %209 = zext i8 %208 to i16
  %210 = getelementptr inbounds i8, ptr %2, i64 67
  %211 = load i8, ptr %210, align 1, !tbaa !56
  %212 = zext i8 %211 to i16
  %213 = sub nsw i16 %209, %212
  %214 = getelementptr inbounds i16, ptr %0, i64 23
  store i16 %213, ptr %214, align 2, !tbaa !57
  %215 = or i16 %206, %213
  %216 = getelementptr inbounds i8, ptr %1, i64 66
  %217 = load i8, ptr %216, align 1, !tbaa !56
  %218 = zext i8 %217 to i16
  %219 = getelementptr inbounds i8, ptr %2, i64 130
  %220 = load i8, ptr %219, align 1, !tbaa !56
  %221 = zext i8 %220 to i16
  %222 = sub nsw i16 %218, %221
  %223 = getelementptr inbounds i16, ptr %0, i64 24
  store i16 %222, ptr %223, align 2, !tbaa !57
  %224 = or i16 %215, %222
  %225 = getelementptr inbounds i8, ptr %1, i64 82
  %226 = load i8, ptr %225, align 1, !tbaa !56
  %227 = zext i8 %226 to i16
  %228 = getelementptr inbounds i8, ptr %2, i64 162
  %229 = load i8, ptr %228, align 1, !tbaa !56
  %230 = zext i8 %229 to i16
  %231 = sub nsw i16 %227, %230
  %232 = getelementptr inbounds i16, ptr %0, i64 25
  store i16 %231, ptr %232, align 2, !tbaa !57
  %233 = or i16 %224, %231
  %234 = getelementptr inbounds i8, ptr %1, i64 98
  %235 = load i8, ptr %234, align 1, !tbaa !56
  %236 = zext i8 %235 to i16
  %237 = getelementptr inbounds i8, ptr %2, i64 194
  %238 = load i8, ptr %237, align 1, !tbaa !56
  %239 = zext i8 %238 to i16
  %240 = sub nsw i16 %236, %239
  %241 = getelementptr inbounds i16, ptr %0, i64 26
  store i16 %240, ptr %241, align 2, !tbaa !57
  %242 = or i16 %233, %240
  %243 = getelementptr inbounds i8, ptr %1, i64 114
  %244 = load i8, ptr %243, align 1, !tbaa !56
  %245 = zext i8 %244 to i16
  %246 = getelementptr inbounds i8, ptr %2, i64 226
  %247 = load i8, ptr %246, align 1, !tbaa !56
  %248 = zext i8 %247 to i16
  %249 = sub nsw i16 %245, %248
  %250 = getelementptr inbounds i16, ptr %0, i64 27
  store i16 %249, ptr %250, align 2, !tbaa !57
  %251 = or i16 %242, %249
  %252 = getelementptr inbounds i8, ptr %1, i64 51
  %253 = load i8, ptr %252, align 1, !tbaa !56
  %254 = zext i8 %253 to i16
  %255 = getelementptr inbounds i8, ptr %2, i64 99
  %256 = load i8, ptr %255, align 1, !tbaa !56
  %257 = zext i8 %256 to i16
  %258 = sub nsw i16 %254, %257
  %259 = getelementptr inbounds i16, ptr %0, i64 28
  store i16 %258, ptr %259, align 2, !tbaa !57
  %260 = or i16 %251, %258
  %261 = getelementptr inbounds i8, ptr %1, i64 20
  %262 = load i8, ptr %261, align 1, !tbaa !56
  %263 = zext i8 %262 to i16
  %264 = getelementptr inbounds i8, ptr %2, i64 36
  %265 = load i8, ptr %264, align 1, !tbaa !56
  %266 = zext i8 %265 to i16
  %267 = sub nsw i16 %263, %266
  %268 = getelementptr inbounds i16, ptr %0, i64 29
  store i16 %267, ptr %268, align 2, !tbaa !57
  %269 = or i16 %260, %267
  %270 = getelementptr inbounds i8, ptr %1, i64 5
  %271 = load i8, ptr %270, align 1, !tbaa !56
  %272 = zext i8 %271 to i16
  %273 = getelementptr inbounds i8, ptr %2, i64 5
  %274 = load i8, ptr %273, align 1, !tbaa !56
  %275 = zext i8 %274 to i16
  %276 = sub nsw i16 %272, %275
  %277 = getelementptr inbounds i16, ptr %0, i64 30
  store i16 %276, ptr %277, align 2, !tbaa !57
  %278 = or i16 %269, %276
  %279 = getelementptr inbounds i8, ptr %1, i64 36
  %280 = load i8, ptr %279, align 1, !tbaa !56
  %281 = zext i8 %280 to i16
  %282 = getelementptr inbounds i8, ptr %2, i64 68
  %283 = load i8, ptr %282, align 1, !tbaa !56
  %284 = zext i8 %283 to i16
  %285 = sub nsw i16 %281, %284
  %286 = getelementptr inbounds i16, ptr %0, i64 31
  store i16 %285, ptr %286, align 2, !tbaa !57
  %287 = or i16 %278, %285
  %288 = getelementptr inbounds i8, ptr %1, i64 67
  %289 = load i8, ptr %288, align 1, !tbaa !56
  %290 = zext i8 %289 to i16
  %291 = getelementptr inbounds i8, ptr %2, i64 131
  %292 = load i8, ptr %291, align 1, !tbaa !56
  %293 = zext i8 %292 to i16
  %294 = sub nsw i16 %290, %293
  %295 = getelementptr inbounds i16, ptr %0, i64 32
  store i16 %294, ptr %295, align 2, !tbaa !57
  %296 = or i16 %287, %294
  %297 = getelementptr inbounds i8, ptr %1, i64 83
  %298 = load i8, ptr %297, align 1, !tbaa !56
  %299 = zext i8 %298 to i16
  %300 = getelementptr inbounds i8, ptr %2, i64 163
  %301 = load i8, ptr %300, align 1, !tbaa !56
  %302 = zext i8 %301 to i16
  %303 = sub nsw i16 %299, %302
  %304 = getelementptr inbounds i16, ptr %0, i64 33
  store i16 %303, ptr %304, align 2, !tbaa !57
  %305 = or i16 %296, %303
  %306 = getelementptr inbounds i8, ptr %1, i64 99
  %307 = load i8, ptr %306, align 1, !tbaa !56
  %308 = zext i8 %307 to i16
  %309 = getelementptr inbounds i8, ptr %2, i64 195
  %310 = load i8, ptr %309, align 1, !tbaa !56
  %311 = zext i8 %310 to i16
  %312 = sub nsw i16 %308, %311
  %313 = getelementptr inbounds i16, ptr %0, i64 34
  store i16 %312, ptr %313, align 2, !tbaa !57
  %314 = or i16 %305, %312
  %315 = getelementptr inbounds i8, ptr %1, i64 115
  %316 = load i8, ptr %315, align 1, !tbaa !56
  %317 = zext i8 %316 to i16
  %318 = getelementptr inbounds i8, ptr %2, i64 227
  %319 = load i8, ptr %318, align 1, !tbaa !56
  %320 = zext i8 %319 to i16
  %321 = sub nsw i16 %317, %320
  %322 = getelementptr inbounds i16, ptr %0, i64 35
  store i16 %321, ptr %322, align 2, !tbaa !57
  %323 = or i16 %314, %321
  %324 = getelementptr inbounds i8, ptr %1, i64 52
  %325 = load i8, ptr %324, align 1, !tbaa !56
  %326 = zext i8 %325 to i16
  %327 = getelementptr inbounds i8, ptr %2, i64 100
  %328 = load i8, ptr %327, align 1, !tbaa !56
  %329 = zext i8 %328 to i16
  %330 = sub nsw i16 %326, %329
  %331 = getelementptr inbounds i16, ptr %0, i64 36
  store i16 %330, ptr %331, align 2, !tbaa !57
  %332 = or i16 %323, %330
  %333 = getelementptr inbounds i8, ptr %1, i64 21
  %334 = load i8, ptr %333, align 1, !tbaa !56
  %335 = zext i8 %334 to i16
  %336 = getelementptr inbounds i8, ptr %2, i64 37
  %337 = load i8, ptr %336, align 1, !tbaa !56
  %338 = zext i8 %337 to i16
  %339 = sub nsw i16 %335, %338
  %340 = getelementptr inbounds i16, ptr %0, i64 37
  store i16 %339, ptr %340, align 2, !tbaa !57
  %341 = or i16 %332, %339
  %342 = getelementptr inbounds i8, ptr %1, i64 6
  %343 = load i8, ptr %342, align 1, !tbaa !56
  %344 = zext i8 %343 to i16
  %345 = getelementptr inbounds i8, ptr %2, i64 6
  %346 = load i8, ptr %345, align 1, !tbaa !56
  %347 = zext i8 %346 to i16
  %348 = sub nsw i16 %344, %347
  %349 = getelementptr inbounds i16, ptr %0, i64 38
  store i16 %348, ptr %349, align 2, !tbaa !57
  %350 = or i16 %341, %348
  %351 = getelementptr inbounds i8, ptr %1, i64 37
  %352 = load i8, ptr %351, align 1, !tbaa !56
  %353 = zext i8 %352 to i16
  %354 = getelementptr inbounds i8, ptr %2, i64 69
  %355 = load i8, ptr %354, align 1, !tbaa !56
  %356 = zext i8 %355 to i16
  %357 = sub nsw i16 %353, %356
  %358 = getelementptr inbounds i16, ptr %0, i64 39
  store i16 %357, ptr %358, align 2, !tbaa !57
  %359 = or i16 %350, %357
  %360 = getelementptr inbounds i8, ptr %1, i64 68
  %361 = load i8, ptr %360, align 1, !tbaa !56
  %362 = zext i8 %361 to i16
  %363 = getelementptr inbounds i8, ptr %2, i64 132
  %364 = load i8, ptr %363, align 1, !tbaa !56
  %365 = zext i8 %364 to i16
  %366 = sub nsw i16 %362, %365
  %367 = getelementptr inbounds i16, ptr %0, i64 40
  store i16 %366, ptr %367, align 2, !tbaa !57
  %368 = or i16 %359, %366
  %369 = getelementptr inbounds i8, ptr %1, i64 84
  %370 = load i8, ptr %369, align 1, !tbaa !56
  %371 = zext i8 %370 to i16
  %372 = getelementptr inbounds i8, ptr %2, i64 164
  %373 = load i8, ptr %372, align 1, !tbaa !56
  %374 = zext i8 %373 to i16
  %375 = sub nsw i16 %371, %374
  %376 = getelementptr inbounds i16, ptr %0, i64 41
  store i16 %375, ptr %376, align 2, !tbaa !57
  %377 = or i16 %368, %375
  %378 = getelementptr inbounds i8, ptr %1, i64 100
  %379 = load i8, ptr %378, align 1, !tbaa !56
  %380 = zext i8 %379 to i16
  %381 = getelementptr inbounds i8, ptr %2, i64 196
  %382 = load i8, ptr %381, align 1, !tbaa !56
  %383 = zext i8 %382 to i16
  %384 = sub nsw i16 %380, %383
  %385 = getelementptr inbounds i16, ptr %0, i64 42
  store i16 %384, ptr %385, align 2, !tbaa !57
  %386 = or i16 %377, %384
  %387 = getelementptr inbounds i8, ptr %1, i64 116
  %388 = load i8, ptr %387, align 1, !tbaa !56
  %389 = zext i8 %388 to i16
  %390 = getelementptr inbounds i8, ptr %2, i64 228
  %391 = load i8, ptr %390, align 1, !tbaa !56
  %392 = zext i8 %391 to i16
  %393 = sub nsw i16 %389, %392
  %394 = getelementptr inbounds i16, ptr %0, i64 43
  store i16 %393, ptr %394, align 2, !tbaa !57
  %395 = or i16 %386, %393
  %396 = getelementptr inbounds i8, ptr %1, i64 53
  %397 = load i8, ptr %396, align 1, !tbaa !56
  %398 = zext i8 %397 to i16
  %399 = getelementptr inbounds i8, ptr %2, i64 101
  %400 = load i8, ptr %399, align 1, !tbaa !56
  %401 = zext i8 %400 to i16
  %402 = sub nsw i16 %398, %401
  %403 = getelementptr inbounds i16, ptr %0, i64 44
  store i16 %402, ptr %403, align 2, !tbaa !57
  %404 = or i16 %395, %402
  %405 = getelementptr inbounds i8, ptr %1, i64 22
  %406 = load i8, ptr %405, align 1, !tbaa !56
  %407 = zext i8 %406 to i16
  %408 = getelementptr inbounds i8, ptr %2, i64 38
  %409 = load i8, ptr %408, align 1, !tbaa !56
  %410 = zext i8 %409 to i16
  %411 = sub nsw i16 %407, %410
  %412 = getelementptr inbounds i16, ptr %0, i64 45
  store i16 %411, ptr %412, align 2, !tbaa !57
  %413 = or i16 %404, %411
  %414 = getelementptr inbounds i8, ptr %1, i64 38
  %415 = load i8, ptr %414, align 1, !tbaa !56
  %416 = zext i8 %415 to i16
  %417 = getelementptr inbounds i8, ptr %2, i64 70
  %418 = load i8, ptr %417, align 1, !tbaa !56
  %419 = zext i8 %418 to i16
  %420 = sub nsw i16 %416, %419
  %421 = getelementptr inbounds i16, ptr %0, i64 46
  store i16 %420, ptr %421, align 2, !tbaa !57
  %422 = or i16 %413, %420
  %423 = getelementptr inbounds i8, ptr %1, i64 69
  %424 = load i8, ptr %423, align 1, !tbaa !56
  %425 = zext i8 %424 to i16
  %426 = getelementptr inbounds i8, ptr %2, i64 133
  %427 = load i8, ptr %426, align 1, !tbaa !56
  %428 = zext i8 %427 to i16
  %429 = sub nsw i16 %425, %428
  %430 = getelementptr inbounds i16, ptr %0, i64 47
  store i16 %429, ptr %430, align 2, !tbaa !57
  %431 = or i16 %422, %429
  %432 = getelementptr inbounds i8, ptr %1, i64 85
  %433 = load i8, ptr %432, align 1, !tbaa !56
  %434 = zext i8 %433 to i16
  %435 = getelementptr inbounds i8, ptr %2, i64 165
  %436 = load i8, ptr %435, align 1, !tbaa !56
  %437 = zext i8 %436 to i16
  %438 = sub nsw i16 %434, %437
  %439 = getelementptr inbounds i16, ptr %0, i64 48
  store i16 %438, ptr %439, align 2, !tbaa !57
  %440 = or i16 %431, %438
  %441 = getelementptr inbounds i8, ptr %1, i64 101
  %442 = load i8, ptr %441, align 1, !tbaa !56
  %443 = zext i8 %442 to i16
  %444 = getelementptr inbounds i8, ptr %2, i64 197
  %445 = load i8, ptr %444, align 1, !tbaa !56
  %446 = zext i8 %445 to i16
  %447 = sub nsw i16 %443, %446
  %448 = getelementptr inbounds i16, ptr %0, i64 49
  store i16 %447, ptr %448, align 2, !tbaa !57
  %449 = or i16 %440, %447
  %450 = getelementptr inbounds i8, ptr %1, i64 117
  %451 = load i8, ptr %450, align 1, !tbaa !56
  %452 = zext i8 %451 to i16
  %453 = getelementptr inbounds i8, ptr %2, i64 229
  %454 = load i8, ptr %453, align 1, !tbaa !56
  %455 = zext i8 %454 to i16
  %456 = sub nsw i16 %452, %455
  %457 = getelementptr inbounds i16, ptr %0, i64 50
  store i16 %456, ptr %457, align 2, !tbaa !57
  %458 = or i16 %449, %456
  %459 = getelementptr inbounds i8, ptr %1, i64 54
  %460 = load i8, ptr %459, align 1, !tbaa !56
  %461 = zext i8 %460 to i16
  %462 = getelementptr inbounds i8, ptr %2, i64 102
  %463 = load i8, ptr %462, align 1, !tbaa !56
  %464 = zext i8 %463 to i16
  %465 = sub nsw i16 %461, %464
  %466 = getelementptr inbounds i16, ptr %0, i64 51
  store i16 %465, ptr %466, align 2, !tbaa !57
  %467 = or i16 %458, %465
  %468 = getelementptr inbounds i8, ptr %1, i64 7
  %469 = load i8, ptr %468, align 1, !tbaa !56
  %470 = zext i8 %469 to i16
  %471 = getelementptr inbounds i8, ptr %2, i64 7
  %472 = load i8, ptr %471, align 1, !tbaa !56
  %473 = zext i8 %472 to i16
  %474 = sub nsw i16 %470, %473
  %475 = getelementptr inbounds i16, ptr %0, i64 52
  store i16 %474, ptr %475, align 2, !tbaa !57
  %476 = or i16 %467, %474
  %477 = getelementptr inbounds i8, ptr %1, i64 23
  %478 = load i8, ptr %477, align 1, !tbaa !56
  %479 = zext i8 %478 to i16
  %480 = getelementptr inbounds i8, ptr %2, i64 39
  %481 = load i8, ptr %480, align 1, !tbaa !56
  %482 = zext i8 %481 to i16
  %483 = sub nsw i16 %479, %482
  %484 = getelementptr inbounds i16, ptr %0, i64 53
  store i16 %483, ptr %484, align 2, !tbaa !57
  %485 = or i16 %476, %483
  %486 = getelementptr inbounds i8, ptr %1, i64 70
  %487 = load i8, ptr %486, align 1, !tbaa !56
  %488 = zext i8 %487 to i16
  %489 = getelementptr inbounds i8, ptr %2, i64 134
  %490 = load i8, ptr %489, align 1, !tbaa !56
  %491 = zext i8 %490 to i16
  %492 = sub nsw i16 %488, %491
  %493 = getelementptr inbounds i16, ptr %0, i64 54
  store i16 %492, ptr %493, align 2, !tbaa !57
  %494 = or i16 %485, %492
  %495 = getelementptr inbounds i8, ptr %1, i64 86
  %496 = load i8, ptr %495, align 1, !tbaa !56
  %497 = zext i8 %496 to i16
  %498 = getelementptr inbounds i8, ptr %2, i64 166
  %499 = load i8, ptr %498, align 1, !tbaa !56
  %500 = zext i8 %499 to i16
  %501 = sub nsw i16 %497, %500
  %502 = getelementptr inbounds i16, ptr %0, i64 55
  store i16 %501, ptr %502, align 2, !tbaa !57
  %503 = or i16 %494, %501
  %504 = getelementptr inbounds i8, ptr %1, i64 102
  %505 = load i8, ptr %504, align 1, !tbaa !56
  %506 = zext i8 %505 to i16
  %507 = getelementptr inbounds i8, ptr %2, i64 198
  %508 = load i8, ptr %507, align 1, !tbaa !56
  %509 = zext i8 %508 to i16
  %510 = sub nsw i16 %506, %509
  %511 = getelementptr inbounds i16, ptr %0, i64 56
  store i16 %510, ptr %511, align 2, !tbaa !57
  %512 = or i16 %503, %510
  %513 = getelementptr inbounds i8, ptr %1, i64 118
  %514 = load i8, ptr %513, align 1, !tbaa !56
  %515 = zext i8 %514 to i16
  %516 = getelementptr inbounds i8, ptr %2, i64 230
  %517 = load i8, ptr %516, align 1, !tbaa !56
  %518 = zext i8 %517 to i16
  %519 = sub nsw i16 %515, %518
  %520 = getelementptr inbounds i16, ptr %0, i64 57
  store i16 %519, ptr %520, align 2, !tbaa !57
  %521 = or i16 %512, %519
  %522 = getelementptr inbounds i8, ptr %1, i64 39
  %523 = load i8, ptr %522, align 1, !tbaa !56
  %524 = zext i8 %523 to i16
  %525 = getelementptr inbounds i8, ptr %2, i64 71
  %526 = load i8, ptr %525, align 1, !tbaa !56
  %527 = zext i8 %526 to i16
  %528 = sub nsw i16 %524, %527
  %529 = getelementptr inbounds i16, ptr %0, i64 58
  store i16 %528, ptr %529, align 2, !tbaa !57
  %530 = or i16 %521, %528
  %531 = getelementptr inbounds i8, ptr %1, i64 55
  %532 = load i8, ptr %531, align 1, !tbaa !56
  %533 = zext i8 %532 to i16
  %534 = getelementptr inbounds i8, ptr %2, i64 103
  %535 = load i8, ptr %534, align 1, !tbaa !56
  %536 = zext i8 %535 to i16
  %537 = sub nsw i16 %533, %536
  %538 = getelementptr inbounds i16, ptr %0, i64 59
  store i16 %537, ptr %538, align 2, !tbaa !57
  %539 = or i16 %530, %537
  %540 = getelementptr inbounds i8, ptr %1, i64 71
  %541 = load i8, ptr %540, align 1, !tbaa !56
  %542 = zext i8 %541 to i16
  %543 = getelementptr inbounds i8, ptr %2, i64 135
  %544 = load i8, ptr %543, align 1, !tbaa !56
  %545 = zext i8 %544 to i16
  %546 = sub nsw i16 %542, %545
  %547 = getelementptr inbounds i16, ptr %0, i64 60
  store i16 %546, ptr %547, align 2, !tbaa !57
  %548 = or i16 %539, %546
  %549 = getelementptr inbounds i8, ptr %1, i64 87
  %550 = load i8, ptr %549, align 1, !tbaa !56
  %551 = zext i8 %550 to i16
  %552 = getelementptr inbounds i8, ptr %2, i64 167
  %553 = load i8, ptr %552, align 1, !tbaa !56
  %554 = zext i8 %553 to i16
  %555 = sub nsw i16 %551, %554
  %556 = getelementptr inbounds i16, ptr %0, i64 61
  store i16 %555, ptr %556, align 2, !tbaa !57
  %557 = or i16 %548, %555
  %558 = getelementptr inbounds i8, ptr %1, i64 103
  %559 = load i8, ptr %558, align 1, !tbaa !56
  %560 = zext i8 %559 to i16
  %561 = getelementptr inbounds i8, ptr %2, i64 199
  %562 = load i8, ptr %561, align 1, !tbaa !56
  %563 = zext i8 %562 to i16
  %564 = sub nsw i16 %560, %563
  %565 = getelementptr inbounds i16, ptr %0, i64 62
  store i16 %564, ptr %565, align 2, !tbaa !57
  %566 = or i16 %557, %564
  %567 = getelementptr inbounds i8, ptr %1, i64 119
  %568 = load i8, ptr %567, align 1, !tbaa !56
  %569 = zext i8 %568 to i16
  %570 = getelementptr inbounds i8, ptr %2, i64 231
  %571 = load i8, ptr %570, align 1, !tbaa !56
  %572 = zext i8 %571 to i16
  %573 = sub nsw i16 %569, %572
  %574 = getelementptr inbounds i16, ptr %0, i64 63
  store i16 %573, ptr %574, align 2, !tbaa !57
  %575 = or i16 %566, %573
  %576 = load i64, ptr %1, align 8, !tbaa !56
  store i64 %576, ptr %2, align 8, !tbaa !56
  %577 = load i64, ptr %9, align 8, !tbaa !56
  store i64 %577, ptr %12, align 8, !tbaa !56
  %578 = load i64, ptr %18, align 8, !tbaa !56
  store i64 %578, ptr %21, align 8, !tbaa !56
  %579 = load i64, ptr %45, align 8, !tbaa !56
  store i64 %579, ptr %48, align 8, !tbaa !56
  %580 = load i64, ptr %54, align 8, !tbaa !56
  store i64 %580, ptr %57, align 8, !tbaa !56
  %581 = load i64, ptr %90, align 8, !tbaa !56
  store i64 %581, ptr %93, align 8, !tbaa !56
  %582 = load i64, ptr %99, align 8, !tbaa !56
  store i64 %582, ptr %102, align 8, !tbaa !56
  %583 = load i64, ptr %108, align 8, !tbaa !56
  store i64 %583, ptr %111, align 8, !tbaa !56
  %584 = icmp ne i16 %575, 0
  %585 = zext i1 %584 to i32
  ret i32 %585
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal i32 @zigzag_sub_4x4_field(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #6 {
  %4 = load i8, ptr %1, align 1, !tbaa !56
  %5 = zext i8 %4 to i16
  %6 = load i8, ptr %2, align 1, !tbaa !56
  %7 = zext i8 %6 to i16
  %8 = sub nsw i16 %5, %7
  store i16 %8, ptr %0, align 2, !tbaa !57
  %9 = getelementptr inbounds i8, ptr %1, i64 16
  %10 = load i8, ptr %9, align 1, !tbaa !56
  %11 = zext i8 %10 to i16
  %12 = getelementptr inbounds i8, ptr %2, i64 32
  %13 = load i8, ptr %12, align 1, !tbaa !56
  %14 = zext i8 %13 to i16
  %15 = sub nsw i16 %11, %14
  %16 = getelementptr inbounds i16, ptr %0, i64 1
  store i16 %15, ptr %16, align 2, !tbaa !57
  %17 = or i16 %15, %8
  %18 = getelementptr inbounds i8, ptr %1, i64 1
  %19 = load i8, ptr %18, align 1, !tbaa !56
  %20 = zext i8 %19 to i16
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = load i8, ptr %21, align 1, !tbaa !56
  %23 = zext i8 %22 to i16
  %24 = sub nsw i16 %20, %23
  %25 = getelementptr inbounds i16, ptr %0, i64 2
  store i16 %24, ptr %25, align 2, !tbaa !57
  %26 = or i16 %17, %24
  %27 = getelementptr inbounds i8, ptr %1, i64 32
  %28 = load i8, ptr %27, align 1, !tbaa !56
  %29 = zext i8 %28 to i16
  %30 = getelementptr inbounds i8, ptr %2, i64 64
  %31 = load i8, ptr %30, align 1, !tbaa !56
  %32 = zext i8 %31 to i16
  %33 = sub nsw i16 %29, %32
  %34 = getelementptr inbounds i16, ptr %0, i64 3
  store i16 %33, ptr %34, align 2, !tbaa !57
  %35 = or i16 %26, %33
  %36 = getelementptr inbounds i8, ptr %1, i64 48
  %37 = load i8, ptr %36, align 1, !tbaa !56
  %38 = zext i8 %37 to i16
  %39 = getelementptr inbounds i8, ptr %2, i64 96
  %40 = load i8, ptr %39, align 1, !tbaa !56
  %41 = zext i8 %40 to i16
  %42 = sub nsw i16 %38, %41
  %43 = getelementptr inbounds i16, ptr %0, i64 4
  store i16 %42, ptr %43, align 2, !tbaa !57
  %44 = or i16 %35, %42
  %45 = getelementptr inbounds i8, ptr %1, i64 17
  %46 = load i8, ptr %45, align 1, !tbaa !56
  %47 = zext i8 %46 to i16
  %48 = getelementptr inbounds i8, ptr %2, i64 33
  %49 = load i8, ptr %48, align 1, !tbaa !56
  %50 = zext i8 %49 to i16
  %51 = sub nsw i16 %47, %50
  %52 = getelementptr inbounds i16, ptr %0, i64 5
  store i16 %51, ptr %52, align 2, !tbaa !57
  %53 = or i16 %44, %51
  %54 = getelementptr inbounds i8, ptr %1, i64 33
  %55 = load i8, ptr %54, align 1, !tbaa !56
  %56 = zext i8 %55 to i16
  %57 = getelementptr inbounds i8, ptr %2, i64 65
  %58 = load i8, ptr %57, align 1, !tbaa !56
  %59 = zext i8 %58 to i16
  %60 = sub nsw i16 %56, %59
  %61 = getelementptr inbounds i16, ptr %0, i64 6
  store i16 %60, ptr %61, align 2, !tbaa !57
  %62 = or i16 %53, %60
  %63 = getelementptr inbounds i8, ptr %1, i64 49
  %64 = load i8, ptr %63, align 1, !tbaa !56
  %65 = zext i8 %64 to i16
  %66 = getelementptr inbounds i8, ptr %2, i64 97
  %67 = load i8, ptr %66, align 1, !tbaa !56
  %68 = zext i8 %67 to i16
  %69 = sub nsw i16 %65, %68
  %70 = getelementptr inbounds i16, ptr %0, i64 7
  store i16 %69, ptr %70, align 2, !tbaa !57
  %71 = or i16 %62, %69
  %72 = getelementptr inbounds i8, ptr %1, i64 2
  %73 = load i8, ptr %72, align 1, !tbaa !56
  %74 = zext i8 %73 to i16
  %75 = getelementptr inbounds i8, ptr %2, i64 2
  %76 = load i8, ptr %75, align 1, !tbaa !56
  %77 = zext i8 %76 to i16
  %78 = sub nsw i16 %74, %77
  %79 = getelementptr inbounds i16, ptr %0, i64 8
  store i16 %78, ptr %79, align 2, !tbaa !57
  %80 = or i16 %71, %78
  %81 = getelementptr inbounds i8, ptr %1, i64 18
  %82 = load i8, ptr %81, align 1, !tbaa !56
  %83 = zext i8 %82 to i16
  %84 = getelementptr inbounds i8, ptr %2, i64 34
  %85 = load i8, ptr %84, align 1, !tbaa !56
  %86 = zext i8 %85 to i16
  %87 = sub nsw i16 %83, %86
  %88 = getelementptr inbounds i16, ptr %0, i64 9
  store i16 %87, ptr %88, align 2, !tbaa !57
  %89 = or i16 %80, %87
  %90 = getelementptr inbounds i8, ptr %1, i64 34
  %91 = load i8, ptr %90, align 1, !tbaa !56
  %92 = zext i8 %91 to i16
  %93 = getelementptr inbounds i8, ptr %2, i64 66
  %94 = load i8, ptr %93, align 1, !tbaa !56
  %95 = zext i8 %94 to i16
  %96 = sub nsw i16 %92, %95
  %97 = getelementptr inbounds i16, ptr %0, i64 10
  store i16 %96, ptr %97, align 2, !tbaa !57
  %98 = or i16 %89, %96
  %99 = getelementptr inbounds i8, ptr %1, i64 50
  %100 = load i8, ptr %99, align 1, !tbaa !56
  %101 = zext i8 %100 to i16
  %102 = getelementptr inbounds i8, ptr %2, i64 98
  %103 = load i8, ptr %102, align 1, !tbaa !56
  %104 = zext i8 %103 to i16
  %105 = sub nsw i16 %101, %104
  %106 = getelementptr inbounds i16, ptr %0, i64 11
  store i16 %105, ptr %106, align 2, !tbaa !57
  %107 = or i16 %98, %105
  %108 = getelementptr inbounds i8, ptr %1, i64 3
  %109 = load i8, ptr %108, align 1, !tbaa !56
  %110 = zext i8 %109 to i16
  %111 = getelementptr inbounds i8, ptr %2, i64 3
  %112 = load i8, ptr %111, align 1, !tbaa !56
  %113 = zext i8 %112 to i16
  %114 = sub nsw i16 %110, %113
  %115 = getelementptr inbounds i16, ptr %0, i64 12
  store i16 %114, ptr %115, align 2, !tbaa !57
  %116 = or i16 %107, %114
  %117 = getelementptr inbounds i8, ptr %1, i64 19
  %118 = load i8, ptr %117, align 1, !tbaa !56
  %119 = zext i8 %118 to i16
  %120 = getelementptr inbounds i8, ptr %2, i64 35
  %121 = load i8, ptr %120, align 1, !tbaa !56
  %122 = zext i8 %121 to i16
  %123 = sub nsw i16 %119, %122
  %124 = getelementptr inbounds i16, ptr %0, i64 13
  store i16 %123, ptr %124, align 2, !tbaa !57
  %125 = or i16 %116, %123
  %126 = getelementptr inbounds i8, ptr %1, i64 35
  %127 = load i8, ptr %126, align 1, !tbaa !56
  %128 = zext i8 %127 to i16
  %129 = getelementptr inbounds i8, ptr %2, i64 67
  %130 = load i8, ptr %129, align 1, !tbaa !56
  %131 = zext i8 %130 to i16
  %132 = sub nsw i16 %128, %131
  %133 = getelementptr inbounds i16, ptr %0, i64 14
  store i16 %132, ptr %133, align 2, !tbaa !57
  %134 = or i16 %125, %132
  %135 = getelementptr inbounds i8, ptr %1, i64 51
  %136 = load i8, ptr %135, align 1, !tbaa !56
  %137 = zext i8 %136 to i16
  %138 = getelementptr inbounds i8, ptr %2, i64 99
  %139 = load i8, ptr %138, align 1, !tbaa !56
  %140 = zext i8 %139 to i16
  %141 = sub nsw i16 %137, %140
  %142 = getelementptr inbounds i16, ptr %0, i64 15
  store i16 %141, ptr %142, align 2, !tbaa !57
  %143 = or i16 %134, %141
  %144 = load i32, ptr %1, align 4, !tbaa !56
  store i32 %144, ptr %2, align 4, !tbaa !56
  %145 = load i32, ptr %9, align 4, !tbaa !56
  store i32 %145, ptr %12, align 4, !tbaa !56
  %146 = load i32, ptr %27, align 4, !tbaa !56
  store i32 %146, ptr %30, align 4, !tbaa !56
  %147 = load i32, ptr %36, align 4, !tbaa !56
  store i32 %147, ptr %39, align 4, !tbaa !56
  %148 = icmp ne i16 %143, 0
  %149 = zext i1 %148 to i32
  ret i32 %149
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal i32 @zigzag_sub_4x4ac_field(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) #6 {
  %5 = load i8, ptr %1, align 1, !tbaa !56
  %6 = zext i8 %5 to i16
  %7 = load i8, ptr %2, align 1, !tbaa !56
  %8 = zext i8 %7 to i16
  %9 = sub nsw i16 %6, %8
  store i16 %9, ptr %3, align 2, !tbaa !57
  store i16 0, ptr %0, align 2, !tbaa !57
  %10 = getelementptr inbounds i8, ptr %1, i64 16
  %11 = load i8, ptr %10, align 1, !tbaa !56
  %12 = zext i8 %11 to i16
  %13 = getelementptr inbounds i8, ptr %2, i64 32
  %14 = load i8, ptr %13, align 1, !tbaa !56
  %15 = zext i8 %14 to i16
  %16 = sub nsw i16 %12, %15
  %17 = getelementptr inbounds i16, ptr %0, i64 1
  store i16 %16, ptr %17, align 2, !tbaa !57
  %18 = getelementptr inbounds i8, ptr %1, i64 1
  %19 = load i8, ptr %18, align 1, !tbaa !56
  %20 = zext i8 %19 to i16
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = load i8, ptr %21, align 1, !tbaa !56
  %23 = zext i8 %22 to i16
  %24 = sub nsw i16 %20, %23
  %25 = getelementptr inbounds i16, ptr %0, i64 2
  store i16 %24, ptr %25, align 2, !tbaa !57
  %26 = or i16 %24, %16
  %27 = getelementptr inbounds i8, ptr %1, i64 32
  %28 = load i8, ptr %27, align 1, !tbaa !56
  %29 = zext i8 %28 to i16
  %30 = getelementptr inbounds i8, ptr %2, i64 64
  %31 = load i8, ptr %30, align 1, !tbaa !56
  %32 = zext i8 %31 to i16
  %33 = sub nsw i16 %29, %32
  %34 = getelementptr inbounds i16, ptr %0, i64 3
  store i16 %33, ptr %34, align 2, !tbaa !57
  %35 = or i16 %26, %33
  %36 = getelementptr inbounds i8, ptr %1, i64 48
  %37 = load i8, ptr %36, align 1, !tbaa !56
  %38 = zext i8 %37 to i16
  %39 = getelementptr inbounds i8, ptr %2, i64 96
  %40 = load i8, ptr %39, align 1, !tbaa !56
  %41 = zext i8 %40 to i16
  %42 = sub nsw i16 %38, %41
  %43 = getelementptr inbounds i16, ptr %0, i64 4
  store i16 %42, ptr %43, align 2, !tbaa !57
  %44 = or i16 %35, %42
  %45 = getelementptr inbounds i8, ptr %1, i64 17
  %46 = load i8, ptr %45, align 1, !tbaa !56
  %47 = zext i8 %46 to i16
  %48 = getelementptr inbounds i8, ptr %2, i64 33
  %49 = load i8, ptr %48, align 1, !tbaa !56
  %50 = zext i8 %49 to i16
  %51 = sub nsw i16 %47, %50
  %52 = getelementptr inbounds i16, ptr %0, i64 5
  store i16 %51, ptr %52, align 2, !tbaa !57
  %53 = or i16 %44, %51
  %54 = getelementptr inbounds i8, ptr %1, i64 33
  %55 = load i8, ptr %54, align 1, !tbaa !56
  %56 = zext i8 %55 to i16
  %57 = getelementptr inbounds i8, ptr %2, i64 65
  %58 = load i8, ptr %57, align 1, !tbaa !56
  %59 = zext i8 %58 to i16
  %60 = sub nsw i16 %56, %59
  %61 = getelementptr inbounds i16, ptr %0, i64 6
  store i16 %60, ptr %61, align 2, !tbaa !57
  %62 = or i16 %53, %60
  %63 = getelementptr inbounds i8, ptr %1, i64 49
  %64 = load i8, ptr %63, align 1, !tbaa !56
  %65 = zext i8 %64 to i16
  %66 = getelementptr inbounds i8, ptr %2, i64 97
  %67 = load i8, ptr %66, align 1, !tbaa !56
  %68 = zext i8 %67 to i16
  %69 = sub nsw i16 %65, %68
  %70 = getelementptr inbounds i16, ptr %0, i64 7
  store i16 %69, ptr %70, align 2, !tbaa !57
  %71 = or i16 %62, %69
  %72 = getelementptr inbounds i8, ptr %1, i64 2
  %73 = load i8, ptr %72, align 1, !tbaa !56
  %74 = zext i8 %73 to i16
  %75 = getelementptr inbounds i8, ptr %2, i64 2
  %76 = load i8, ptr %75, align 1, !tbaa !56
  %77 = zext i8 %76 to i16
  %78 = sub nsw i16 %74, %77
  %79 = getelementptr inbounds i16, ptr %0, i64 8
  store i16 %78, ptr %79, align 2, !tbaa !57
  %80 = or i16 %71, %78
  %81 = getelementptr inbounds i8, ptr %1, i64 18
  %82 = load i8, ptr %81, align 1, !tbaa !56
  %83 = zext i8 %82 to i16
  %84 = getelementptr inbounds i8, ptr %2, i64 34
  %85 = load i8, ptr %84, align 1, !tbaa !56
  %86 = zext i8 %85 to i16
  %87 = sub nsw i16 %83, %86
  %88 = getelementptr inbounds i16, ptr %0, i64 9
  store i16 %87, ptr %88, align 2, !tbaa !57
  %89 = or i16 %80, %87
  %90 = getelementptr inbounds i8, ptr %1, i64 34
  %91 = load i8, ptr %90, align 1, !tbaa !56
  %92 = zext i8 %91 to i16
  %93 = getelementptr inbounds i8, ptr %2, i64 66
  %94 = load i8, ptr %93, align 1, !tbaa !56
  %95 = zext i8 %94 to i16
  %96 = sub nsw i16 %92, %95
  %97 = getelementptr inbounds i16, ptr %0, i64 10
  store i16 %96, ptr %97, align 2, !tbaa !57
  %98 = or i16 %89, %96
  %99 = getelementptr inbounds i8, ptr %1, i64 50
  %100 = load i8, ptr %99, align 1, !tbaa !56
  %101 = zext i8 %100 to i16
  %102 = getelementptr inbounds i8, ptr %2, i64 98
  %103 = load i8, ptr %102, align 1, !tbaa !56
  %104 = zext i8 %103 to i16
  %105 = sub nsw i16 %101, %104
  %106 = getelementptr inbounds i16, ptr %0, i64 11
  store i16 %105, ptr %106, align 2, !tbaa !57
  %107 = or i16 %98, %105
  %108 = getelementptr inbounds i8, ptr %1, i64 3
  %109 = load i8, ptr %108, align 1, !tbaa !56
  %110 = zext i8 %109 to i16
  %111 = getelementptr inbounds i8, ptr %2, i64 3
  %112 = load i8, ptr %111, align 1, !tbaa !56
  %113 = zext i8 %112 to i16
  %114 = sub nsw i16 %110, %113
  %115 = getelementptr inbounds i16, ptr %0, i64 12
  store i16 %114, ptr %115, align 2, !tbaa !57
  %116 = or i16 %107, %114
  %117 = getelementptr inbounds i8, ptr %1, i64 19
  %118 = load i8, ptr %117, align 1, !tbaa !56
  %119 = zext i8 %118 to i16
  %120 = getelementptr inbounds i8, ptr %2, i64 35
  %121 = load i8, ptr %120, align 1, !tbaa !56
  %122 = zext i8 %121 to i16
  %123 = sub nsw i16 %119, %122
  %124 = getelementptr inbounds i16, ptr %0, i64 13
  store i16 %123, ptr %124, align 2, !tbaa !57
  %125 = or i16 %116, %123
  %126 = getelementptr inbounds i8, ptr %1, i64 35
  %127 = load i8, ptr %126, align 1, !tbaa !56
  %128 = zext i8 %127 to i16
  %129 = getelementptr inbounds i8, ptr %2, i64 67
  %130 = load i8, ptr %129, align 1, !tbaa !56
  %131 = zext i8 %130 to i16
  %132 = sub nsw i16 %128, %131
  %133 = getelementptr inbounds i16, ptr %0, i64 14
  store i16 %132, ptr %133, align 2, !tbaa !57
  %134 = or i16 %125, %132
  %135 = getelementptr inbounds i8, ptr %1, i64 51
  %136 = load i8, ptr %135, align 1, !tbaa !56
  %137 = zext i8 %136 to i16
  %138 = getelementptr inbounds i8, ptr %2, i64 99
  %139 = load i8, ptr %138, align 1, !tbaa !56
  %140 = zext i8 %139 to i16
  %141 = sub nsw i16 %137, %140
  %142 = getelementptr inbounds i16, ptr %0, i64 15
  store i16 %141, ptr %142, align 2, !tbaa !57
  %143 = or i16 %134, %141
  %144 = load i32, ptr %1, align 4, !tbaa !56
  store i32 %144, ptr %2, align 4, !tbaa !56
  %145 = load i32, ptr %10, align 4, !tbaa !56
  store i32 %145, ptr %13, align 4, !tbaa !56
  %146 = load i32, ptr %27, align 4, !tbaa !56
  store i32 %146, ptr %30, align 4, !tbaa !56
  %147 = load i32, ptr %36, align 4, !tbaa !56
  store i32 %147, ptr %39, align 4, !tbaa !56
  %148 = icmp ne i16 %143, 0
  %149 = zext i1 %148 to i32
  ret i32 %149
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @zigzag_scan_8x8_frame(ptr noundef writeonly %0, ptr noundef readonly %1) #6 {
  %3 = load i16, ptr %1, align 2, !tbaa !57
  store i16 %3, ptr %0, align 2, !tbaa !57
  %4 = getelementptr inbounds i16, ptr %1, i64 8
  %5 = load i16, ptr %4, align 2, !tbaa !57
  %6 = getelementptr inbounds i16, ptr %0, i64 1
  store i16 %5, ptr %6, align 2, !tbaa !57
  %7 = getelementptr inbounds i16, ptr %1, i64 1
  %8 = load i16, ptr %7, align 2, !tbaa !57
  %9 = getelementptr inbounds i16, ptr %0, i64 2
  store i16 %8, ptr %9, align 2, !tbaa !57
  %10 = getelementptr inbounds i16, ptr %1, i64 2
  %11 = load i16, ptr %10, align 2, !tbaa !57
  %12 = getelementptr inbounds i16, ptr %0, i64 3
  store i16 %11, ptr %12, align 2, !tbaa !57
  %13 = getelementptr inbounds i16, ptr %1, i64 9
  %14 = load i16, ptr %13, align 2, !tbaa !57
  %15 = getelementptr inbounds i16, ptr %0, i64 4
  store i16 %14, ptr %15, align 2, !tbaa !57
  %16 = getelementptr inbounds i16, ptr %1, i64 16
  %17 = load i16, ptr %16, align 2, !tbaa !57
  %18 = getelementptr inbounds i16, ptr %0, i64 5
  store i16 %17, ptr %18, align 2, !tbaa !57
  %19 = getelementptr inbounds i16, ptr %1, i64 24
  %20 = load i16, ptr %19, align 2, !tbaa !57
  %21 = getelementptr inbounds i16, ptr %0, i64 6
  store i16 %20, ptr %21, align 2, !tbaa !57
  %22 = getelementptr inbounds i16, ptr %1, i64 17
  %23 = load i16, ptr %22, align 2, !tbaa !57
  %24 = getelementptr inbounds i16, ptr %0, i64 7
  store i16 %23, ptr %24, align 2, !tbaa !57
  %25 = getelementptr inbounds i16, ptr %1, i64 10
  %26 = load i16, ptr %25, align 2, !tbaa !57
  %27 = getelementptr inbounds i16, ptr %0, i64 8
  store i16 %26, ptr %27, align 2, !tbaa !57
  %28 = getelementptr inbounds i16, ptr %1, i64 3
  %29 = load i16, ptr %28, align 2, !tbaa !57
  %30 = getelementptr inbounds i16, ptr %0, i64 9
  store i16 %29, ptr %30, align 2, !tbaa !57
  %31 = getelementptr inbounds i16, ptr %1, i64 4
  %32 = load i16, ptr %31, align 2, !tbaa !57
  %33 = getelementptr inbounds i16, ptr %0, i64 10
  store i16 %32, ptr %33, align 2, !tbaa !57
  %34 = getelementptr inbounds i16, ptr %1, i64 11
  %35 = load i16, ptr %34, align 2, !tbaa !57
  %36 = getelementptr inbounds i16, ptr %0, i64 11
  store i16 %35, ptr %36, align 2, !tbaa !57
  %37 = getelementptr inbounds i16, ptr %1, i64 18
  %38 = load i16, ptr %37, align 2, !tbaa !57
  %39 = getelementptr inbounds i16, ptr %0, i64 12
  store i16 %38, ptr %39, align 2, !tbaa !57
  %40 = getelementptr inbounds i16, ptr %1, i64 25
  %41 = load i16, ptr %40, align 2, !tbaa !57
  %42 = getelementptr inbounds i16, ptr %0, i64 13
  store i16 %41, ptr %42, align 2, !tbaa !57
  %43 = getelementptr inbounds i16, ptr %1, i64 32
  %44 = load i16, ptr %43, align 2, !tbaa !57
  %45 = getelementptr inbounds i16, ptr %0, i64 14
  store i16 %44, ptr %45, align 2, !tbaa !57
  %46 = getelementptr inbounds i16, ptr %1, i64 40
  %47 = load i16, ptr %46, align 2, !tbaa !57
  %48 = getelementptr inbounds i16, ptr %0, i64 15
  store i16 %47, ptr %48, align 2, !tbaa !57
  %49 = getelementptr inbounds i16, ptr %1, i64 33
  %50 = load i16, ptr %49, align 2, !tbaa !57
  %51 = getelementptr inbounds i16, ptr %0, i64 16
  store i16 %50, ptr %51, align 2, !tbaa !57
  %52 = getelementptr inbounds i16, ptr %1, i64 26
  %53 = load i16, ptr %52, align 2, !tbaa !57
  %54 = getelementptr inbounds i16, ptr %0, i64 17
  store i16 %53, ptr %54, align 2, !tbaa !57
  %55 = getelementptr inbounds i16, ptr %1, i64 19
  %56 = load i16, ptr %55, align 2, !tbaa !57
  %57 = getelementptr inbounds i16, ptr %0, i64 18
  store i16 %56, ptr %57, align 2, !tbaa !57
  %58 = getelementptr inbounds i16, ptr %1, i64 12
  %59 = load i16, ptr %58, align 2, !tbaa !57
  %60 = getelementptr inbounds i16, ptr %0, i64 19
  store i16 %59, ptr %60, align 2, !tbaa !57
  %61 = getelementptr inbounds i16, ptr %1, i64 5
  %62 = load i16, ptr %61, align 2, !tbaa !57
  %63 = getelementptr inbounds i16, ptr %0, i64 20
  store i16 %62, ptr %63, align 2, !tbaa !57
  %64 = getelementptr inbounds i16, ptr %1, i64 6
  %65 = load i16, ptr %64, align 2, !tbaa !57
  %66 = getelementptr inbounds i16, ptr %0, i64 21
  store i16 %65, ptr %66, align 2, !tbaa !57
  %67 = getelementptr inbounds i16, ptr %1, i64 13
  %68 = load i16, ptr %67, align 2, !tbaa !57
  %69 = getelementptr inbounds i16, ptr %0, i64 22
  store i16 %68, ptr %69, align 2, !tbaa !57
  %70 = getelementptr inbounds i16, ptr %1, i64 20
  %71 = load i16, ptr %70, align 2, !tbaa !57
  %72 = getelementptr inbounds i16, ptr %0, i64 23
  store i16 %71, ptr %72, align 2, !tbaa !57
  %73 = getelementptr inbounds i16, ptr %1, i64 27
  %74 = load i16, ptr %73, align 2, !tbaa !57
  %75 = getelementptr inbounds i16, ptr %0, i64 24
  store i16 %74, ptr %75, align 2, !tbaa !57
  %76 = getelementptr inbounds i16, ptr %1, i64 34
  %77 = load i16, ptr %76, align 2, !tbaa !57
  %78 = getelementptr inbounds i16, ptr %0, i64 25
  store i16 %77, ptr %78, align 2, !tbaa !57
  %79 = getelementptr inbounds i16, ptr %1, i64 41
  %80 = load i16, ptr %79, align 2, !tbaa !57
  %81 = getelementptr inbounds i16, ptr %0, i64 26
  store i16 %80, ptr %81, align 2, !tbaa !57
  %82 = getelementptr inbounds i16, ptr %1, i64 48
  %83 = load i16, ptr %82, align 2, !tbaa !57
  %84 = getelementptr inbounds i16, ptr %0, i64 27
  store i16 %83, ptr %84, align 2, !tbaa !57
  %85 = getelementptr inbounds i16, ptr %1, i64 56
  %86 = load i16, ptr %85, align 2, !tbaa !57
  %87 = getelementptr inbounds i16, ptr %0, i64 28
  store i16 %86, ptr %87, align 2, !tbaa !57
  %88 = getelementptr inbounds i16, ptr %1, i64 49
  %89 = load i16, ptr %88, align 2, !tbaa !57
  %90 = getelementptr inbounds i16, ptr %0, i64 29
  store i16 %89, ptr %90, align 2, !tbaa !57
  %91 = getelementptr inbounds i16, ptr %1, i64 42
  %92 = load i16, ptr %91, align 2, !tbaa !57
  %93 = getelementptr inbounds i16, ptr %0, i64 30
  store i16 %92, ptr %93, align 2, !tbaa !57
  %94 = getelementptr inbounds i16, ptr %1, i64 35
  %95 = load i16, ptr %94, align 2, !tbaa !57
  %96 = getelementptr inbounds i16, ptr %0, i64 31
  store i16 %95, ptr %96, align 2, !tbaa !57
  %97 = getelementptr inbounds i16, ptr %1, i64 28
  %98 = load i16, ptr %97, align 2, !tbaa !57
  %99 = getelementptr inbounds i16, ptr %0, i64 32
  store i16 %98, ptr %99, align 2, !tbaa !57
  %100 = getelementptr inbounds i16, ptr %1, i64 21
  %101 = load i16, ptr %100, align 2, !tbaa !57
  %102 = getelementptr inbounds i16, ptr %0, i64 33
  store i16 %101, ptr %102, align 2, !tbaa !57
  %103 = getelementptr inbounds i16, ptr %1, i64 14
  %104 = load i16, ptr %103, align 2, !tbaa !57
  %105 = getelementptr inbounds i16, ptr %0, i64 34
  store i16 %104, ptr %105, align 2, !tbaa !57
  %106 = getelementptr inbounds i16, ptr %1, i64 7
  %107 = load i16, ptr %106, align 2, !tbaa !57
  %108 = getelementptr inbounds i16, ptr %0, i64 35
  store i16 %107, ptr %108, align 2, !tbaa !57
  %109 = getelementptr inbounds i16, ptr %1, i64 15
  %110 = load i16, ptr %109, align 2, !tbaa !57
  %111 = getelementptr inbounds i16, ptr %0, i64 36
  store i16 %110, ptr %111, align 2, !tbaa !57
  %112 = getelementptr inbounds i16, ptr %1, i64 22
  %113 = load i16, ptr %112, align 2, !tbaa !57
  %114 = getelementptr inbounds i16, ptr %0, i64 37
  store i16 %113, ptr %114, align 2, !tbaa !57
  %115 = getelementptr inbounds i16, ptr %1, i64 29
  %116 = load i16, ptr %115, align 2, !tbaa !57
  %117 = getelementptr inbounds i16, ptr %0, i64 38
  store i16 %116, ptr %117, align 2, !tbaa !57
  %118 = getelementptr inbounds i16, ptr %1, i64 36
  %119 = load i16, ptr %118, align 2, !tbaa !57
  %120 = getelementptr inbounds i16, ptr %0, i64 39
  store i16 %119, ptr %120, align 2, !tbaa !57
  %121 = getelementptr inbounds i16, ptr %1, i64 43
  %122 = load i16, ptr %121, align 2, !tbaa !57
  %123 = getelementptr inbounds i16, ptr %0, i64 40
  store i16 %122, ptr %123, align 2, !tbaa !57
  %124 = getelementptr inbounds i16, ptr %1, i64 50
  %125 = load i16, ptr %124, align 2, !tbaa !57
  %126 = getelementptr inbounds i16, ptr %0, i64 41
  store i16 %125, ptr %126, align 2, !tbaa !57
  %127 = getelementptr inbounds i16, ptr %1, i64 57
  %128 = load i16, ptr %127, align 2, !tbaa !57
  %129 = getelementptr inbounds i16, ptr %0, i64 42
  store i16 %128, ptr %129, align 2, !tbaa !57
  %130 = getelementptr inbounds i16, ptr %1, i64 58
  %131 = load i16, ptr %130, align 2, !tbaa !57
  %132 = getelementptr inbounds i16, ptr %0, i64 43
  store i16 %131, ptr %132, align 2, !tbaa !57
  %133 = getelementptr inbounds i16, ptr %1, i64 51
  %134 = load i16, ptr %133, align 2, !tbaa !57
  %135 = getelementptr inbounds i16, ptr %0, i64 44
  store i16 %134, ptr %135, align 2, !tbaa !57
  %136 = getelementptr inbounds i16, ptr %1, i64 44
  %137 = load i16, ptr %136, align 2, !tbaa !57
  %138 = getelementptr inbounds i16, ptr %0, i64 45
  store i16 %137, ptr %138, align 2, !tbaa !57
  %139 = getelementptr inbounds i16, ptr %1, i64 37
  %140 = load i16, ptr %139, align 2, !tbaa !57
  %141 = getelementptr inbounds i16, ptr %0, i64 46
  store i16 %140, ptr %141, align 2, !tbaa !57
  %142 = getelementptr inbounds i16, ptr %1, i64 30
  %143 = load i16, ptr %142, align 2, !tbaa !57
  %144 = getelementptr inbounds i16, ptr %0, i64 47
  store i16 %143, ptr %144, align 2, !tbaa !57
  %145 = getelementptr inbounds i16, ptr %1, i64 23
  %146 = load i16, ptr %145, align 2, !tbaa !57
  %147 = getelementptr inbounds i16, ptr %0, i64 48
  store i16 %146, ptr %147, align 2, !tbaa !57
  %148 = getelementptr inbounds i16, ptr %1, i64 31
  %149 = load i16, ptr %148, align 2, !tbaa !57
  %150 = getelementptr inbounds i16, ptr %0, i64 49
  store i16 %149, ptr %150, align 2, !tbaa !57
  %151 = getelementptr inbounds i16, ptr %1, i64 38
  %152 = load i16, ptr %151, align 2, !tbaa !57
  %153 = getelementptr inbounds i16, ptr %0, i64 50
  store i16 %152, ptr %153, align 2, !tbaa !57
  %154 = getelementptr inbounds i16, ptr %1, i64 45
  %155 = load i16, ptr %154, align 2, !tbaa !57
  %156 = getelementptr inbounds i16, ptr %0, i64 51
  store i16 %155, ptr %156, align 2, !tbaa !57
  %157 = getelementptr inbounds i16, ptr %1, i64 52
  %158 = load i16, ptr %157, align 2, !tbaa !57
  %159 = getelementptr inbounds i16, ptr %0, i64 52
  store i16 %158, ptr %159, align 2, !tbaa !57
  %160 = getelementptr inbounds i16, ptr %1, i64 59
  %161 = load i16, ptr %160, align 2, !tbaa !57
  %162 = getelementptr inbounds i16, ptr %0, i64 53
  store i16 %161, ptr %162, align 2, !tbaa !57
  %163 = getelementptr inbounds i16, ptr %1, i64 60
  %164 = load i16, ptr %163, align 2, !tbaa !57
  %165 = getelementptr inbounds i16, ptr %0, i64 54
  store i16 %164, ptr %165, align 2, !tbaa !57
  %166 = getelementptr inbounds i16, ptr %1, i64 53
  %167 = load i16, ptr %166, align 2, !tbaa !57
  %168 = getelementptr inbounds i16, ptr %0, i64 55
  store i16 %167, ptr %168, align 2, !tbaa !57
  %169 = getelementptr inbounds i16, ptr %1, i64 46
  %170 = load i16, ptr %169, align 2, !tbaa !57
  %171 = getelementptr inbounds i16, ptr %0, i64 56
  store i16 %170, ptr %171, align 2, !tbaa !57
  %172 = getelementptr inbounds i16, ptr %1, i64 39
  %173 = load i16, ptr %172, align 2, !tbaa !57
  %174 = getelementptr inbounds i16, ptr %0, i64 57
  store i16 %173, ptr %174, align 2, !tbaa !57
  %175 = getelementptr inbounds i16, ptr %1, i64 47
  %176 = load i16, ptr %175, align 2, !tbaa !57
  %177 = getelementptr inbounds i16, ptr %0, i64 58
  store i16 %176, ptr %177, align 2, !tbaa !57
  %178 = getelementptr inbounds i16, ptr %1, i64 54
  %179 = load i16, ptr %178, align 2, !tbaa !57
  %180 = getelementptr inbounds i16, ptr %0, i64 59
  store i16 %179, ptr %180, align 2, !tbaa !57
  %181 = getelementptr inbounds i16, ptr %1, i64 61
  %182 = load i16, ptr %181, align 2, !tbaa !57
  %183 = getelementptr inbounds i16, ptr %0, i64 60
  store i16 %182, ptr %183, align 2, !tbaa !57
  %184 = getelementptr inbounds i16, ptr %1, i64 62
  %185 = load i16, ptr %184, align 2, !tbaa !57
  %186 = getelementptr inbounds i16, ptr %0, i64 61
  store i16 %185, ptr %186, align 2, !tbaa !57
  %187 = getelementptr inbounds i16, ptr %1, i64 55
  %188 = load i16, ptr %187, align 2, !tbaa !57
  %189 = getelementptr inbounds i16, ptr %0, i64 62
  store i16 %188, ptr %189, align 2, !tbaa !57
  %190 = getelementptr inbounds i16, ptr %1, i64 63
  %191 = load i16, ptr %190, align 2, !tbaa !57
  %192 = getelementptr inbounds i16, ptr %0, i64 63
  store i16 %191, ptr %192, align 2, !tbaa !57
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @zigzag_scan_4x4_frame(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = load i16, ptr %1, align 2, !tbaa !57
  store i16 %3, ptr %0, align 2, !tbaa !57
  %4 = getelementptr inbounds i16, ptr %1, i64 4
  %5 = load i16, ptr %4, align 2, !tbaa !57
  %6 = getelementptr inbounds i16, ptr %0, i64 1
  store i16 %5, ptr %6, align 2, !tbaa !57
  %7 = getelementptr inbounds i16, ptr %1, i64 1
  %8 = load i16, ptr %7, align 2, !tbaa !57
  %9 = getelementptr inbounds i16, ptr %0, i64 2
  store i16 %8, ptr %9, align 2, !tbaa !57
  %10 = getelementptr inbounds i16, ptr %1, i64 2
  %11 = load i16, ptr %10, align 2, !tbaa !57
  %12 = getelementptr inbounds i16, ptr %0, i64 3
  store i16 %11, ptr %12, align 2, !tbaa !57
  %13 = getelementptr inbounds i16, ptr %1, i64 5
  %14 = load i16, ptr %13, align 2, !tbaa !57
  %15 = getelementptr inbounds i16, ptr %0, i64 4
  store i16 %14, ptr %15, align 2, !tbaa !57
  %16 = getelementptr inbounds i16, ptr %1, i64 8
  %17 = load i16, ptr %16, align 2, !tbaa !57
  %18 = getelementptr inbounds i16, ptr %0, i64 5
  store i16 %17, ptr %18, align 2, !tbaa !57
  %19 = getelementptr inbounds i16, ptr %1, i64 12
  %20 = load i16, ptr %19, align 2, !tbaa !57
  %21 = getelementptr inbounds i16, ptr %0, i64 6
  store i16 %20, ptr %21, align 2, !tbaa !57
  %22 = getelementptr inbounds i16, ptr %1, i64 9
  %23 = load i16, ptr %22, align 2, !tbaa !57
  %24 = getelementptr inbounds i16, ptr %0, i64 7
  store i16 %23, ptr %24, align 2, !tbaa !57
  %25 = getelementptr inbounds i16, ptr %1, i64 6
  %26 = load i16, ptr %25, align 2, !tbaa !57
  %27 = getelementptr inbounds i16, ptr %0, i64 8
  store i16 %26, ptr %27, align 2, !tbaa !57
  %28 = getelementptr inbounds i16, ptr %1, i64 3
  %29 = load i16, ptr %28, align 2, !tbaa !57
  %30 = getelementptr inbounds i16, ptr %0, i64 9
  store i16 %29, ptr %30, align 2, !tbaa !57
  %31 = getelementptr inbounds i16, ptr %1, i64 7
  %32 = load i16, ptr %31, align 2, !tbaa !57
  %33 = getelementptr inbounds i16, ptr %0, i64 10
  store i16 %32, ptr %33, align 2, !tbaa !57
  %34 = getelementptr inbounds i16, ptr %1, i64 10
  %35 = load i16, ptr %34, align 2, !tbaa !57
  %36 = getelementptr inbounds i16, ptr %0, i64 11
  store i16 %35, ptr %36, align 2, !tbaa !57
  %37 = getelementptr inbounds i16, ptr %1, i64 13
  %38 = load i16, ptr %37, align 2, !tbaa !57
  %39 = getelementptr inbounds i16, ptr %0, i64 12
  store i16 %38, ptr %39, align 2, !tbaa !57
  %40 = getelementptr inbounds i16, ptr %1, i64 14
  %41 = load i16, ptr %40, align 2, !tbaa !57
  %42 = getelementptr inbounds i16, ptr %0, i64 13
  store i16 %41, ptr %42, align 2, !tbaa !57
  %43 = getelementptr inbounds i16, ptr %1, i64 11
  %44 = load i16, ptr %43, align 2, !tbaa !57
  %45 = getelementptr inbounds i16, ptr %0, i64 14
  store i16 %44, ptr %45, align 2, !tbaa !57
  %46 = getelementptr inbounds i16, ptr %1, i64 15
  %47 = load i16, ptr %46, align 2, !tbaa !57
  %48 = getelementptr inbounds i16, ptr %0, i64 15
  store i16 %47, ptr %48, align 2, !tbaa !57
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal i32 @zigzag_sub_8x8_frame(ptr noundef writeonly %0, ptr noundef readonly %1, ptr noundef %2) #6 {
  %4 = load i8, ptr %1, align 1, !tbaa !56
  %5 = zext i8 %4 to i16
  %6 = load i8, ptr %2, align 1, !tbaa !56
  %7 = zext i8 %6 to i16
  %8 = sub nsw i16 %5, %7
  store i16 %8, ptr %0, align 2, !tbaa !57
  %9 = getelementptr inbounds i8, ptr %1, i64 1
  %10 = load i8, ptr %9, align 1, !tbaa !56
  %11 = zext i8 %10 to i16
  %12 = getelementptr inbounds i8, ptr %2, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !56
  %14 = zext i8 %13 to i16
  %15 = sub nsw i16 %11, %14
  %16 = getelementptr inbounds i16, ptr %0, i64 1
  store i16 %15, ptr %16, align 2, !tbaa !57
  %17 = or i16 %15, %8
  %18 = getelementptr inbounds i8, ptr %1, i64 16
  %19 = load i8, ptr %18, align 1, !tbaa !56
  %20 = zext i8 %19 to i16
  %21 = getelementptr inbounds i8, ptr %2, i64 32
  %22 = load i8, ptr %21, align 1, !tbaa !56
  %23 = zext i8 %22 to i16
  %24 = sub nsw i16 %20, %23
  %25 = getelementptr inbounds i16, ptr %0, i64 2
  store i16 %24, ptr %25, align 2, !tbaa !57
  %26 = or i16 %17, %24
  %27 = getelementptr inbounds i8, ptr %1, i64 32
  %28 = load i8, ptr %27, align 1, !tbaa !56
  %29 = zext i8 %28 to i16
  %30 = getelementptr inbounds i8, ptr %2, i64 64
  %31 = load i8, ptr %30, align 1, !tbaa !56
  %32 = zext i8 %31 to i16
  %33 = sub nsw i16 %29, %32
  %34 = getelementptr inbounds i16, ptr %0, i64 3
  store i16 %33, ptr %34, align 2, !tbaa !57
  %35 = or i16 %26, %33
  %36 = getelementptr inbounds i8, ptr %1, i64 17
  %37 = load i8, ptr %36, align 1, !tbaa !56
  %38 = zext i8 %37 to i16
  %39 = getelementptr inbounds i8, ptr %2, i64 33
  %40 = load i8, ptr %39, align 1, !tbaa !56
  %41 = zext i8 %40 to i16
  %42 = sub nsw i16 %38, %41
  %43 = getelementptr inbounds i16, ptr %0, i64 4
  store i16 %42, ptr %43, align 2, !tbaa !57
  %44 = or i16 %35, %42
  %45 = getelementptr inbounds i8, ptr %1, i64 2
  %46 = load i8, ptr %45, align 1, !tbaa !56
  %47 = zext i8 %46 to i16
  %48 = getelementptr inbounds i8, ptr %2, i64 2
  %49 = load i8, ptr %48, align 1, !tbaa !56
  %50 = zext i8 %49 to i16
  %51 = sub nsw i16 %47, %50
  %52 = getelementptr inbounds i16, ptr %0, i64 5
  store i16 %51, ptr %52, align 2, !tbaa !57
  %53 = or i16 %44, %51
  %54 = getelementptr inbounds i8, ptr %1, i64 3
  %55 = load i8, ptr %54, align 1, !tbaa !56
  %56 = zext i8 %55 to i16
  %57 = getelementptr inbounds i8, ptr %2, i64 3
  %58 = load i8, ptr %57, align 1, !tbaa !56
  %59 = zext i8 %58 to i16
  %60 = sub nsw i16 %56, %59
  %61 = getelementptr inbounds i16, ptr %0, i64 6
  store i16 %60, ptr %61, align 2, !tbaa !57
  %62 = or i16 %53, %60
  %63 = getelementptr inbounds i8, ptr %1, i64 18
  %64 = load i8, ptr %63, align 1, !tbaa !56
  %65 = zext i8 %64 to i16
  %66 = getelementptr inbounds i8, ptr %2, i64 34
  %67 = load i8, ptr %66, align 1, !tbaa !56
  %68 = zext i8 %67 to i16
  %69 = sub nsw i16 %65, %68
  %70 = getelementptr inbounds i16, ptr %0, i64 7
  store i16 %69, ptr %70, align 2, !tbaa !57
  %71 = or i16 %62, %69
  %72 = getelementptr inbounds i8, ptr %1, i64 33
  %73 = load i8, ptr %72, align 1, !tbaa !56
  %74 = zext i8 %73 to i16
  %75 = getelementptr inbounds i8, ptr %2, i64 65
  %76 = load i8, ptr %75, align 1, !tbaa !56
  %77 = zext i8 %76 to i16
  %78 = sub nsw i16 %74, %77
  %79 = getelementptr inbounds i16, ptr %0, i64 8
  store i16 %78, ptr %79, align 2, !tbaa !57
  %80 = or i16 %71, %78
  %81 = getelementptr inbounds i8, ptr %1, i64 48
  %82 = load i8, ptr %81, align 1, !tbaa !56
  %83 = zext i8 %82 to i16
  %84 = getelementptr inbounds i8, ptr %2, i64 96
  %85 = load i8, ptr %84, align 1, !tbaa !56
  %86 = zext i8 %85 to i16
  %87 = sub nsw i16 %83, %86
  %88 = getelementptr inbounds i16, ptr %0, i64 9
  store i16 %87, ptr %88, align 2, !tbaa !57
  %89 = or i16 %80, %87
  %90 = getelementptr inbounds i8, ptr %1, i64 64
  %91 = load i8, ptr %90, align 1, !tbaa !56
  %92 = zext i8 %91 to i16
  %93 = getelementptr inbounds i8, ptr %2, i64 128
  %94 = load i8, ptr %93, align 1, !tbaa !56
  %95 = zext i8 %94 to i16
  %96 = sub nsw i16 %92, %95
  %97 = getelementptr inbounds i16, ptr %0, i64 10
  store i16 %96, ptr %97, align 2, !tbaa !57
  %98 = or i16 %89, %96
  %99 = getelementptr inbounds i8, ptr %1, i64 49
  %100 = load i8, ptr %99, align 1, !tbaa !56
  %101 = zext i8 %100 to i16
  %102 = getelementptr inbounds i8, ptr %2, i64 97
  %103 = load i8, ptr %102, align 1, !tbaa !56
  %104 = zext i8 %103 to i16
  %105 = sub nsw i16 %101, %104
  %106 = getelementptr inbounds i16, ptr %0, i64 11
  store i16 %105, ptr %106, align 2, !tbaa !57
  %107 = or i16 %98, %105
  %108 = getelementptr inbounds i8, ptr %1, i64 34
  %109 = load i8, ptr %108, align 1, !tbaa !56
  %110 = zext i8 %109 to i16
  %111 = getelementptr inbounds i8, ptr %2, i64 66
  %112 = load i8, ptr %111, align 1, !tbaa !56
  %113 = zext i8 %112 to i16
  %114 = sub nsw i16 %110, %113
  %115 = getelementptr inbounds i16, ptr %0, i64 12
  store i16 %114, ptr %115, align 2, !tbaa !57
  %116 = or i16 %107, %114
  %117 = getelementptr inbounds i8, ptr %1, i64 19
  %118 = load i8, ptr %117, align 1, !tbaa !56
  %119 = zext i8 %118 to i16
  %120 = getelementptr inbounds i8, ptr %2, i64 35
  %121 = load i8, ptr %120, align 1, !tbaa !56
  %122 = zext i8 %121 to i16
  %123 = sub nsw i16 %119, %122
  %124 = getelementptr inbounds i16, ptr %0, i64 13
  store i16 %123, ptr %124, align 2, !tbaa !57
  %125 = or i16 %116, %123
  %126 = getelementptr inbounds i8, ptr %1, i64 4
  %127 = load i8, ptr %126, align 1, !tbaa !56
  %128 = zext i8 %127 to i16
  %129 = getelementptr inbounds i8, ptr %2, i64 4
  %130 = load i8, ptr %129, align 1, !tbaa !56
  %131 = zext i8 %130 to i16
  %132 = sub nsw i16 %128, %131
  %133 = getelementptr inbounds i16, ptr %0, i64 14
  store i16 %132, ptr %133, align 2, !tbaa !57
  %134 = or i16 %125, %132
  %135 = getelementptr inbounds i8, ptr %1, i64 5
  %136 = load i8, ptr %135, align 1, !tbaa !56
  %137 = zext i8 %136 to i16
  %138 = getelementptr inbounds i8, ptr %2, i64 5
  %139 = load i8, ptr %138, align 1, !tbaa !56
  %140 = zext i8 %139 to i16
  %141 = sub nsw i16 %137, %140
  %142 = getelementptr inbounds i16, ptr %0, i64 15
  store i16 %141, ptr %142, align 2, !tbaa !57
  %143 = or i16 %134, %141
  %144 = getelementptr inbounds i8, ptr %1, i64 20
  %145 = load i8, ptr %144, align 1, !tbaa !56
  %146 = zext i8 %145 to i16
  %147 = getelementptr inbounds i8, ptr %2, i64 36
  %148 = load i8, ptr %147, align 1, !tbaa !56
  %149 = zext i8 %148 to i16
  %150 = sub nsw i16 %146, %149
  %151 = getelementptr inbounds i16, ptr %0, i64 16
  store i16 %150, ptr %151, align 2, !tbaa !57
  %152 = or i16 %143, %150
  %153 = getelementptr inbounds i8, ptr %1, i64 35
  %154 = load i8, ptr %153, align 1, !tbaa !56
  %155 = zext i8 %154 to i16
  %156 = getelementptr inbounds i8, ptr %2, i64 67
  %157 = load i8, ptr %156, align 1, !tbaa !56
  %158 = zext i8 %157 to i16
  %159 = sub nsw i16 %155, %158
  %160 = getelementptr inbounds i16, ptr %0, i64 17
  store i16 %159, ptr %160, align 2, !tbaa !57
  %161 = or i16 %152, %159
  %162 = getelementptr inbounds i8, ptr %1, i64 50
  %163 = load i8, ptr %162, align 1, !tbaa !56
  %164 = zext i8 %163 to i16
  %165 = getelementptr inbounds i8, ptr %2, i64 98
  %166 = load i8, ptr %165, align 1, !tbaa !56
  %167 = zext i8 %166 to i16
  %168 = sub nsw i16 %164, %167
  %169 = getelementptr inbounds i16, ptr %0, i64 18
  store i16 %168, ptr %169, align 2, !tbaa !57
  %170 = or i16 %161, %168
  %171 = getelementptr inbounds i8, ptr %1, i64 65
  %172 = load i8, ptr %171, align 1, !tbaa !56
  %173 = zext i8 %172 to i16
  %174 = getelementptr inbounds i8, ptr %2, i64 129
  %175 = load i8, ptr %174, align 1, !tbaa !56
  %176 = zext i8 %175 to i16
  %177 = sub nsw i16 %173, %176
  %178 = getelementptr inbounds i16, ptr %0, i64 19
  store i16 %177, ptr %178, align 2, !tbaa !57
  %179 = or i16 %170, %177
  %180 = getelementptr inbounds i8, ptr %1, i64 80
  %181 = load i8, ptr %180, align 1, !tbaa !56
  %182 = zext i8 %181 to i16
  %183 = getelementptr inbounds i8, ptr %2, i64 160
  %184 = load i8, ptr %183, align 1, !tbaa !56
  %185 = zext i8 %184 to i16
  %186 = sub nsw i16 %182, %185
  %187 = getelementptr inbounds i16, ptr %0, i64 20
  store i16 %186, ptr %187, align 2, !tbaa !57
  %188 = or i16 %179, %186
  %189 = getelementptr inbounds i8, ptr %1, i64 96
  %190 = load i8, ptr %189, align 1, !tbaa !56
  %191 = zext i8 %190 to i16
  %192 = getelementptr inbounds i8, ptr %2, i64 192
  %193 = load i8, ptr %192, align 1, !tbaa !56
  %194 = zext i8 %193 to i16
  %195 = sub nsw i16 %191, %194
  %196 = getelementptr inbounds i16, ptr %0, i64 21
  store i16 %195, ptr %196, align 2, !tbaa !57
  %197 = or i16 %188, %195
  %198 = getelementptr inbounds i8, ptr %1, i64 81
  %199 = load i8, ptr %198, align 1, !tbaa !56
  %200 = zext i8 %199 to i16
  %201 = getelementptr inbounds i8, ptr %2, i64 161
  %202 = load i8, ptr %201, align 1, !tbaa !56
  %203 = zext i8 %202 to i16
  %204 = sub nsw i16 %200, %203
  %205 = getelementptr inbounds i16, ptr %0, i64 22
  store i16 %204, ptr %205, align 2, !tbaa !57
  %206 = or i16 %197, %204
  %207 = getelementptr inbounds i8, ptr %1, i64 66
  %208 = load i8, ptr %207, align 1, !tbaa !56
  %209 = zext i8 %208 to i16
  %210 = getelementptr inbounds i8, ptr %2, i64 130
  %211 = load i8, ptr %210, align 1, !tbaa !56
  %212 = zext i8 %211 to i16
  %213 = sub nsw i16 %209, %212
  %214 = getelementptr inbounds i16, ptr %0, i64 23
  store i16 %213, ptr %214, align 2, !tbaa !57
  %215 = or i16 %206, %213
  %216 = getelementptr inbounds i8, ptr %1, i64 51
  %217 = load i8, ptr %216, align 1, !tbaa !56
  %218 = zext i8 %217 to i16
  %219 = getelementptr inbounds i8, ptr %2, i64 99
  %220 = load i8, ptr %219, align 1, !tbaa !56
  %221 = zext i8 %220 to i16
  %222 = sub nsw i16 %218, %221
  %223 = getelementptr inbounds i16, ptr %0, i64 24
  store i16 %222, ptr %223, align 2, !tbaa !57
  %224 = or i16 %215, %222
  %225 = getelementptr inbounds i8, ptr %1, i64 36
  %226 = load i8, ptr %225, align 1, !tbaa !56
  %227 = zext i8 %226 to i16
  %228 = getelementptr inbounds i8, ptr %2, i64 68
  %229 = load i8, ptr %228, align 1, !tbaa !56
  %230 = zext i8 %229 to i16
  %231 = sub nsw i16 %227, %230
  %232 = getelementptr inbounds i16, ptr %0, i64 25
  store i16 %231, ptr %232, align 2, !tbaa !57
  %233 = or i16 %224, %231
  %234 = getelementptr inbounds i8, ptr %1, i64 21
  %235 = load i8, ptr %234, align 1, !tbaa !56
  %236 = zext i8 %235 to i16
  %237 = getelementptr inbounds i8, ptr %2, i64 37
  %238 = load i8, ptr %237, align 1, !tbaa !56
  %239 = zext i8 %238 to i16
  %240 = sub nsw i16 %236, %239
  %241 = getelementptr inbounds i16, ptr %0, i64 26
  store i16 %240, ptr %241, align 2, !tbaa !57
  %242 = or i16 %233, %240
  %243 = getelementptr inbounds i8, ptr %1, i64 6
  %244 = load i8, ptr %243, align 1, !tbaa !56
  %245 = zext i8 %244 to i16
  %246 = getelementptr inbounds i8, ptr %2, i64 6
  %247 = load i8, ptr %246, align 1, !tbaa !56
  %248 = zext i8 %247 to i16
  %249 = sub nsw i16 %245, %248
  %250 = getelementptr inbounds i16, ptr %0, i64 27
  store i16 %249, ptr %250, align 2, !tbaa !57
  %251 = or i16 %242, %249
  %252 = getelementptr inbounds i8, ptr %1, i64 7
  %253 = load i8, ptr %252, align 1, !tbaa !56
  %254 = zext i8 %253 to i16
  %255 = getelementptr inbounds i8, ptr %2, i64 7
  %256 = load i8, ptr %255, align 1, !tbaa !56
  %257 = zext i8 %256 to i16
  %258 = sub nsw i16 %254, %257
  %259 = getelementptr inbounds i16, ptr %0, i64 28
  store i16 %258, ptr %259, align 2, !tbaa !57
  %260 = or i16 %251, %258
  %261 = getelementptr inbounds i8, ptr %1, i64 22
  %262 = load i8, ptr %261, align 1, !tbaa !56
  %263 = zext i8 %262 to i16
  %264 = getelementptr inbounds i8, ptr %2, i64 38
  %265 = load i8, ptr %264, align 1, !tbaa !56
  %266 = zext i8 %265 to i16
  %267 = sub nsw i16 %263, %266
  %268 = getelementptr inbounds i16, ptr %0, i64 29
  store i16 %267, ptr %268, align 2, !tbaa !57
  %269 = or i16 %260, %267
  %270 = getelementptr inbounds i8, ptr %1, i64 37
  %271 = load i8, ptr %270, align 1, !tbaa !56
  %272 = zext i8 %271 to i16
  %273 = getelementptr inbounds i8, ptr %2, i64 69
  %274 = load i8, ptr %273, align 1, !tbaa !56
  %275 = zext i8 %274 to i16
  %276 = sub nsw i16 %272, %275
  %277 = getelementptr inbounds i16, ptr %0, i64 30
  store i16 %276, ptr %277, align 2, !tbaa !57
  %278 = or i16 %269, %276
  %279 = getelementptr inbounds i8, ptr %1, i64 52
  %280 = load i8, ptr %279, align 1, !tbaa !56
  %281 = zext i8 %280 to i16
  %282 = getelementptr inbounds i8, ptr %2, i64 100
  %283 = load i8, ptr %282, align 1, !tbaa !56
  %284 = zext i8 %283 to i16
  %285 = sub nsw i16 %281, %284
  %286 = getelementptr inbounds i16, ptr %0, i64 31
  store i16 %285, ptr %286, align 2, !tbaa !57
  %287 = or i16 %278, %285
  %288 = getelementptr inbounds i8, ptr %1, i64 67
  %289 = load i8, ptr %288, align 1, !tbaa !56
  %290 = zext i8 %289 to i16
  %291 = getelementptr inbounds i8, ptr %2, i64 131
  %292 = load i8, ptr %291, align 1, !tbaa !56
  %293 = zext i8 %292 to i16
  %294 = sub nsw i16 %290, %293
  %295 = getelementptr inbounds i16, ptr %0, i64 32
  store i16 %294, ptr %295, align 2, !tbaa !57
  %296 = or i16 %287, %294
  %297 = getelementptr inbounds i8, ptr %1, i64 82
  %298 = load i8, ptr %297, align 1, !tbaa !56
  %299 = zext i8 %298 to i16
  %300 = getelementptr inbounds i8, ptr %2, i64 162
  %301 = load i8, ptr %300, align 1, !tbaa !56
  %302 = zext i8 %301 to i16
  %303 = sub nsw i16 %299, %302
  %304 = getelementptr inbounds i16, ptr %0, i64 33
  store i16 %303, ptr %304, align 2, !tbaa !57
  %305 = or i16 %296, %303
  %306 = getelementptr inbounds i8, ptr %1, i64 97
  %307 = load i8, ptr %306, align 1, !tbaa !56
  %308 = zext i8 %307 to i16
  %309 = getelementptr inbounds i8, ptr %2, i64 193
  %310 = load i8, ptr %309, align 1, !tbaa !56
  %311 = zext i8 %310 to i16
  %312 = sub nsw i16 %308, %311
  %313 = getelementptr inbounds i16, ptr %0, i64 34
  store i16 %312, ptr %313, align 2, !tbaa !57
  %314 = or i16 %305, %312
  %315 = getelementptr inbounds i8, ptr %1, i64 112
  %316 = load i8, ptr %315, align 1, !tbaa !56
  %317 = zext i8 %316 to i16
  %318 = getelementptr inbounds i8, ptr %2, i64 224
  %319 = load i8, ptr %318, align 1, !tbaa !56
  %320 = zext i8 %319 to i16
  %321 = sub nsw i16 %317, %320
  %322 = getelementptr inbounds i16, ptr %0, i64 35
  store i16 %321, ptr %322, align 2, !tbaa !57
  %323 = or i16 %314, %321
  %324 = getelementptr inbounds i8, ptr %1, i64 113
  %325 = load i8, ptr %324, align 1, !tbaa !56
  %326 = zext i8 %325 to i16
  %327 = getelementptr inbounds i8, ptr %2, i64 225
  %328 = load i8, ptr %327, align 1, !tbaa !56
  %329 = zext i8 %328 to i16
  %330 = sub nsw i16 %326, %329
  %331 = getelementptr inbounds i16, ptr %0, i64 36
  store i16 %330, ptr %331, align 2, !tbaa !57
  %332 = or i16 %323, %330
  %333 = getelementptr inbounds i8, ptr %1, i64 98
  %334 = load i8, ptr %333, align 1, !tbaa !56
  %335 = zext i8 %334 to i16
  %336 = getelementptr inbounds i8, ptr %2, i64 194
  %337 = load i8, ptr %336, align 1, !tbaa !56
  %338 = zext i8 %337 to i16
  %339 = sub nsw i16 %335, %338
  %340 = getelementptr inbounds i16, ptr %0, i64 37
  store i16 %339, ptr %340, align 2, !tbaa !57
  %341 = or i16 %332, %339
  %342 = getelementptr inbounds i8, ptr %1, i64 83
  %343 = load i8, ptr %342, align 1, !tbaa !56
  %344 = zext i8 %343 to i16
  %345 = getelementptr inbounds i8, ptr %2, i64 163
  %346 = load i8, ptr %345, align 1, !tbaa !56
  %347 = zext i8 %346 to i16
  %348 = sub nsw i16 %344, %347
  %349 = getelementptr inbounds i16, ptr %0, i64 38
  store i16 %348, ptr %349, align 2, !tbaa !57
  %350 = or i16 %341, %348
  %351 = getelementptr inbounds i8, ptr %1, i64 68
  %352 = load i8, ptr %351, align 1, !tbaa !56
  %353 = zext i8 %352 to i16
  %354 = getelementptr inbounds i8, ptr %2, i64 132
  %355 = load i8, ptr %354, align 1, !tbaa !56
  %356 = zext i8 %355 to i16
  %357 = sub nsw i16 %353, %356
  %358 = getelementptr inbounds i16, ptr %0, i64 39
  store i16 %357, ptr %358, align 2, !tbaa !57
  %359 = or i16 %350, %357
  %360 = getelementptr inbounds i8, ptr %1, i64 53
  %361 = load i8, ptr %360, align 1, !tbaa !56
  %362 = zext i8 %361 to i16
  %363 = getelementptr inbounds i8, ptr %2, i64 101
  %364 = load i8, ptr %363, align 1, !tbaa !56
  %365 = zext i8 %364 to i16
  %366 = sub nsw i16 %362, %365
  %367 = getelementptr inbounds i16, ptr %0, i64 40
  store i16 %366, ptr %367, align 2, !tbaa !57
  %368 = or i16 %359, %366
  %369 = getelementptr inbounds i8, ptr %1, i64 38
  %370 = load i8, ptr %369, align 1, !tbaa !56
  %371 = zext i8 %370 to i16
  %372 = getelementptr inbounds i8, ptr %2, i64 70
  %373 = load i8, ptr %372, align 1, !tbaa !56
  %374 = zext i8 %373 to i16
  %375 = sub nsw i16 %371, %374
  %376 = getelementptr inbounds i16, ptr %0, i64 41
  store i16 %375, ptr %376, align 2, !tbaa !57
  %377 = or i16 %368, %375
  %378 = getelementptr inbounds i8, ptr %1, i64 23
  %379 = load i8, ptr %378, align 1, !tbaa !56
  %380 = zext i8 %379 to i16
  %381 = getelementptr inbounds i8, ptr %2, i64 39
  %382 = load i8, ptr %381, align 1, !tbaa !56
  %383 = zext i8 %382 to i16
  %384 = sub nsw i16 %380, %383
  %385 = getelementptr inbounds i16, ptr %0, i64 42
  store i16 %384, ptr %385, align 2, !tbaa !57
  %386 = or i16 %377, %384
  %387 = getelementptr inbounds i8, ptr %1, i64 39
  %388 = load i8, ptr %387, align 1, !tbaa !56
  %389 = zext i8 %388 to i16
  %390 = getelementptr inbounds i8, ptr %2, i64 71
  %391 = load i8, ptr %390, align 1, !tbaa !56
  %392 = zext i8 %391 to i16
  %393 = sub nsw i16 %389, %392
  %394 = getelementptr inbounds i16, ptr %0, i64 43
  store i16 %393, ptr %394, align 2, !tbaa !57
  %395 = or i16 %386, %393
  %396 = getelementptr inbounds i8, ptr %1, i64 54
  %397 = load i8, ptr %396, align 1, !tbaa !56
  %398 = zext i8 %397 to i16
  %399 = getelementptr inbounds i8, ptr %2, i64 102
  %400 = load i8, ptr %399, align 1, !tbaa !56
  %401 = zext i8 %400 to i16
  %402 = sub nsw i16 %398, %401
  %403 = getelementptr inbounds i16, ptr %0, i64 44
  store i16 %402, ptr %403, align 2, !tbaa !57
  %404 = or i16 %395, %402
  %405 = getelementptr inbounds i8, ptr %1, i64 69
  %406 = load i8, ptr %405, align 1, !tbaa !56
  %407 = zext i8 %406 to i16
  %408 = getelementptr inbounds i8, ptr %2, i64 133
  %409 = load i8, ptr %408, align 1, !tbaa !56
  %410 = zext i8 %409 to i16
  %411 = sub nsw i16 %407, %410
  %412 = getelementptr inbounds i16, ptr %0, i64 45
  store i16 %411, ptr %412, align 2, !tbaa !57
  %413 = or i16 %404, %411
  %414 = getelementptr inbounds i8, ptr %1, i64 84
  %415 = load i8, ptr %414, align 1, !tbaa !56
  %416 = zext i8 %415 to i16
  %417 = getelementptr inbounds i8, ptr %2, i64 164
  %418 = load i8, ptr %417, align 1, !tbaa !56
  %419 = zext i8 %418 to i16
  %420 = sub nsw i16 %416, %419
  %421 = getelementptr inbounds i16, ptr %0, i64 46
  store i16 %420, ptr %421, align 2, !tbaa !57
  %422 = or i16 %413, %420
  %423 = getelementptr inbounds i8, ptr %1, i64 99
  %424 = load i8, ptr %423, align 1, !tbaa !56
  %425 = zext i8 %424 to i16
  %426 = getelementptr inbounds i8, ptr %2, i64 195
  %427 = load i8, ptr %426, align 1, !tbaa !56
  %428 = zext i8 %427 to i16
  %429 = sub nsw i16 %425, %428
  %430 = getelementptr inbounds i16, ptr %0, i64 47
  store i16 %429, ptr %430, align 2, !tbaa !57
  %431 = or i16 %422, %429
  %432 = getelementptr inbounds i8, ptr %1, i64 114
  %433 = load i8, ptr %432, align 1, !tbaa !56
  %434 = zext i8 %433 to i16
  %435 = getelementptr inbounds i8, ptr %2, i64 226
  %436 = load i8, ptr %435, align 1, !tbaa !56
  %437 = zext i8 %436 to i16
  %438 = sub nsw i16 %434, %437
  %439 = getelementptr inbounds i16, ptr %0, i64 48
  store i16 %438, ptr %439, align 2, !tbaa !57
  %440 = or i16 %431, %438
  %441 = getelementptr inbounds i8, ptr %1, i64 115
  %442 = load i8, ptr %441, align 1, !tbaa !56
  %443 = zext i8 %442 to i16
  %444 = getelementptr inbounds i8, ptr %2, i64 227
  %445 = load i8, ptr %444, align 1, !tbaa !56
  %446 = zext i8 %445 to i16
  %447 = sub nsw i16 %443, %446
  %448 = getelementptr inbounds i16, ptr %0, i64 49
  store i16 %447, ptr %448, align 2, !tbaa !57
  %449 = or i16 %440, %447
  %450 = getelementptr inbounds i8, ptr %1, i64 100
  %451 = load i8, ptr %450, align 1, !tbaa !56
  %452 = zext i8 %451 to i16
  %453 = getelementptr inbounds i8, ptr %2, i64 196
  %454 = load i8, ptr %453, align 1, !tbaa !56
  %455 = zext i8 %454 to i16
  %456 = sub nsw i16 %452, %455
  %457 = getelementptr inbounds i16, ptr %0, i64 50
  store i16 %456, ptr %457, align 2, !tbaa !57
  %458 = or i16 %449, %456
  %459 = getelementptr inbounds i8, ptr %1, i64 85
  %460 = load i8, ptr %459, align 1, !tbaa !56
  %461 = zext i8 %460 to i16
  %462 = getelementptr inbounds i8, ptr %2, i64 165
  %463 = load i8, ptr %462, align 1, !tbaa !56
  %464 = zext i8 %463 to i16
  %465 = sub nsw i16 %461, %464
  %466 = getelementptr inbounds i16, ptr %0, i64 51
  store i16 %465, ptr %466, align 2, !tbaa !57
  %467 = or i16 %458, %465
  %468 = getelementptr inbounds i8, ptr %1, i64 70
  %469 = load i8, ptr %468, align 1, !tbaa !56
  %470 = zext i8 %469 to i16
  %471 = getelementptr inbounds i8, ptr %2, i64 134
  %472 = load i8, ptr %471, align 1, !tbaa !56
  %473 = zext i8 %472 to i16
  %474 = sub nsw i16 %470, %473
  %475 = getelementptr inbounds i16, ptr %0, i64 52
  store i16 %474, ptr %475, align 2, !tbaa !57
  %476 = or i16 %467, %474
  %477 = getelementptr inbounds i8, ptr %1, i64 55
  %478 = load i8, ptr %477, align 1, !tbaa !56
  %479 = zext i8 %478 to i16
  %480 = getelementptr inbounds i8, ptr %2, i64 103
  %481 = load i8, ptr %480, align 1, !tbaa !56
  %482 = zext i8 %481 to i16
  %483 = sub nsw i16 %479, %482
  %484 = getelementptr inbounds i16, ptr %0, i64 53
  store i16 %483, ptr %484, align 2, !tbaa !57
  %485 = or i16 %476, %483
  %486 = getelementptr inbounds i8, ptr %1, i64 71
  %487 = load i8, ptr %486, align 1, !tbaa !56
  %488 = zext i8 %487 to i16
  %489 = getelementptr inbounds i8, ptr %2, i64 135
  %490 = load i8, ptr %489, align 1, !tbaa !56
  %491 = zext i8 %490 to i16
  %492 = sub nsw i16 %488, %491
  %493 = getelementptr inbounds i16, ptr %0, i64 54
  store i16 %492, ptr %493, align 2, !tbaa !57
  %494 = or i16 %485, %492
  %495 = getelementptr inbounds i8, ptr %1, i64 86
  %496 = load i8, ptr %495, align 1, !tbaa !56
  %497 = zext i8 %496 to i16
  %498 = getelementptr inbounds i8, ptr %2, i64 166
  %499 = load i8, ptr %498, align 1, !tbaa !56
  %500 = zext i8 %499 to i16
  %501 = sub nsw i16 %497, %500
  %502 = getelementptr inbounds i16, ptr %0, i64 55
  store i16 %501, ptr %502, align 2, !tbaa !57
  %503 = or i16 %494, %501
  %504 = getelementptr inbounds i8, ptr %1, i64 101
  %505 = load i8, ptr %504, align 1, !tbaa !56
  %506 = zext i8 %505 to i16
  %507 = getelementptr inbounds i8, ptr %2, i64 197
  %508 = load i8, ptr %507, align 1, !tbaa !56
  %509 = zext i8 %508 to i16
  %510 = sub nsw i16 %506, %509
  %511 = getelementptr inbounds i16, ptr %0, i64 56
  store i16 %510, ptr %511, align 2, !tbaa !57
  %512 = or i16 %503, %510
  %513 = getelementptr inbounds i8, ptr %1, i64 116
  %514 = load i8, ptr %513, align 1, !tbaa !56
  %515 = zext i8 %514 to i16
  %516 = getelementptr inbounds i8, ptr %2, i64 228
  %517 = load i8, ptr %516, align 1, !tbaa !56
  %518 = zext i8 %517 to i16
  %519 = sub nsw i16 %515, %518
  %520 = getelementptr inbounds i16, ptr %0, i64 57
  store i16 %519, ptr %520, align 2, !tbaa !57
  %521 = or i16 %512, %519
  %522 = getelementptr inbounds i8, ptr %1, i64 117
  %523 = load i8, ptr %522, align 1, !tbaa !56
  %524 = zext i8 %523 to i16
  %525 = getelementptr inbounds i8, ptr %2, i64 229
  %526 = load i8, ptr %525, align 1, !tbaa !56
  %527 = zext i8 %526 to i16
  %528 = sub nsw i16 %524, %527
  %529 = getelementptr inbounds i16, ptr %0, i64 58
  store i16 %528, ptr %529, align 2, !tbaa !57
  %530 = or i16 %521, %528
  %531 = getelementptr inbounds i8, ptr %1, i64 102
  %532 = load i8, ptr %531, align 1, !tbaa !56
  %533 = zext i8 %532 to i16
  %534 = getelementptr inbounds i8, ptr %2, i64 198
  %535 = load i8, ptr %534, align 1, !tbaa !56
  %536 = zext i8 %535 to i16
  %537 = sub nsw i16 %533, %536
  %538 = getelementptr inbounds i16, ptr %0, i64 59
  store i16 %537, ptr %538, align 2, !tbaa !57
  %539 = or i16 %530, %537
  %540 = getelementptr inbounds i8, ptr %1, i64 87
  %541 = load i8, ptr %540, align 1, !tbaa !56
  %542 = zext i8 %541 to i16
  %543 = getelementptr inbounds i8, ptr %2, i64 167
  %544 = load i8, ptr %543, align 1, !tbaa !56
  %545 = zext i8 %544 to i16
  %546 = sub nsw i16 %542, %545
  %547 = getelementptr inbounds i16, ptr %0, i64 60
  store i16 %546, ptr %547, align 2, !tbaa !57
  %548 = or i16 %539, %546
  %549 = getelementptr inbounds i8, ptr %1, i64 103
  %550 = load i8, ptr %549, align 1, !tbaa !56
  %551 = zext i8 %550 to i16
  %552 = getelementptr inbounds i8, ptr %2, i64 199
  %553 = load i8, ptr %552, align 1, !tbaa !56
  %554 = zext i8 %553 to i16
  %555 = sub nsw i16 %551, %554
  %556 = getelementptr inbounds i16, ptr %0, i64 61
  store i16 %555, ptr %556, align 2, !tbaa !57
  %557 = or i16 %548, %555
  %558 = getelementptr inbounds i8, ptr %1, i64 118
  %559 = load i8, ptr %558, align 1, !tbaa !56
  %560 = zext i8 %559 to i16
  %561 = getelementptr inbounds i8, ptr %2, i64 230
  %562 = load i8, ptr %561, align 1, !tbaa !56
  %563 = zext i8 %562 to i16
  %564 = sub nsw i16 %560, %563
  %565 = getelementptr inbounds i16, ptr %0, i64 62
  store i16 %564, ptr %565, align 2, !tbaa !57
  %566 = or i16 %557, %564
  %567 = getelementptr inbounds i8, ptr %1, i64 119
  %568 = load i8, ptr %567, align 1, !tbaa !56
  %569 = zext i8 %568 to i16
  %570 = getelementptr inbounds i8, ptr %2, i64 231
  %571 = load i8, ptr %570, align 1, !tbaa !56
  %572 = zext i8 %571 to i16
  %573 = sub nsw i16 %569, %572
  %574 = getelementptr inbounds i16, ptr %0, i64 63
  store i16 %573, ptr %574, align 2, !tbaa !57
  %575 = or i16 %566, %573
  %576 = load i64, ptr %1, align 8, !tbaa !56
  store i64 %576, ptr %2, align 8, !tbaa !56
  %577 = load i64, ptr %18, align 8, !tbaa !56
  store i64 %577, ptr %21, align 8, !tbaa !56
  %578 = load i64, ptr %27, align 8, !tbaa !56
  store i64 %578, ptr %30, align 8, !tbaa !56
  %579 = load i64, ptr %81, align 8, !tbaa !56
  store i64 %579, ptr %84, align 8, !tbaa !56
  %580 = load i64, ptr %90, align 8, !tbaa !56
  store i64 %580, ptr %93, align 8, !tbaa !56
  %581 = load i64, ptr %180, align 8, !tbaa !56
  store i64 %581, ptr %183, align 8, !tbaa !56
  %582 = load i64, ptr %189, align 8, !tbaa !56
  store i64 %582, ptr %192, align 8, !tbaa !56
  %583 = load i64, ptr %315, align 8, !tbaa !56
  store i64 %583, ptr %318, align 8, !tbaa !56
  %584 = icmp ne i16 %575, 0
  %585 = zext i1 %584 to i32
  ret i32 %585
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal i32 @zigzag_sub_4x4_frame(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #6 {
  %4 = load i8, ptr %1, align 1, !tbaa !56
  %5 = zext i8 %4 to i16
  %6 = load i8, ptr %2, align 1, !tbaa !56
  %7 = zext i8 %6 to i16
  %8 = sub nsw i16 %5, %7
  store i16 %8, ptr %0, align 2, !tbaa !57
  %9 = getelementptr inbounds i8, ptr %1, i64 1
  %10 = load i8, ptr %9, align 1, !tbaa !56
  %11 = zext i8 %10 to i16
  %12 = getelementptr inbounds i8, ptr %2, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !56
  %14 = zext i8 %13 to i16
  %15 = sub nsw i16 %11, %14
  %16 = getelementptr inbounds i16, ptr %0, i64 1
  store i16 %15, ptr %16, align 2, !tbaa !57
  %17 = or i16 %15, %8
  %18 = getelementptr inbounds i8, ptr %1, i64 16
  %19 = load i8, ptr %18, align 1, !tbaa !56
  %20 = zext i8 %19 to i16
  %21 = getelementptr inbounds i8, ptr %2, i64 32
  %22 = load i8, ptr %21, align 1, !tbaa !56
  %23 = zext i8 %22 to i16
  %24 = sub nsw i16 %20, %23
  %25 = getelementptr inbounds i16, ptr %0, i64 2
  store i16 %24, ptr %25, align 2, !tbaa !57
  %26 = or i16 %17, %24
  %27 = getelementptr inbounds i8, ptr %1, i64 32
  %28 = load i8, ptr %27, align 1, !tbaa !56
  %29 = zext i8 %28 to i16
  %30 = getelementptr inbounds i8, ptr %2, i64 64
  %31 = load i8, ptr %30, align 1, !tbaa !56
  %32 = zext i8 %31 to i16
  %33 = sub nsw i16 %29, %32
  %34 = getelementptr inbounds i16, ptr %0, i64 3
  store i16 %33, ptr %34, align 2, !tbaa !57
  %35 = or i16 %26, %33
  %36 = getelementptr inbounds i8, ptr %1, i64 17
  %37 = load i8, ptr %36, align 1, !tbaa !56
  %38 = zext i8 %37 to i16
  %39 = getelementptr inbounds i8, ptr %2, i64 33
  %40 = load i8, ptr %39, align 1, !tbaa !56
  %41 = zext i8 %40 to i16
  %42 = sub nsw i16 %38, %41
  %43 = getelementptr inbounds i16, ptr %0, i64 4
  store i16 %42, ptr %43, align 2, !tbaa !57
  %44 = or i16 %35, %42
  %45 = getelementptr inbounds i8, ptr %1, i64 2
  %46 = load i8, ptr %45, align 1, !tbaa !56
  %47 = zext i8 %46 to i16
  %48 = getelementptr inbounds i8, ptr %2, i64 2
  %49 = load i8, ptr %48, align 1, !tbaa !56
  %50 = zext i8 %49 to i16
  %51 = sub nsw i16 %47, %50
  %52 = getelementptr inbounds i16, ptr %0, i64 5
  store i16 %51, ptr %52, align 2, !tbaa !57
  %53 = or i16 %44, %51
  %54 = getelementptr inbounds i8, ptr %1, i64 3
  %55 = load i8, ptr %54, align 1, !tbaa !56
  %56 = zext i8 %55 to i16
  %57 = getelementptr inbounds i8, ptr %2, i64 3
  %58 = load i8, ptr %57, align 1, !tbaa !56
  %59 = zext i8 %58 to i16
  %60 = sub nsw i16 %56, %59
  %61 = getelementptr inbounds i16, ptr %0, i64 6
  store i16 %60, ptr %61, align 2, !tbaa !57
  %62 = or i16 %53, %60
  %63 = getelementptr inbounds i8, ptr %1, i64 18
  %64 = load i8, ptr %63, align 1, !tbaa !56
  %65 = zext i8 %64 to i16
  %66 = getelementptr inbounds i8, ptr %2, i64 34
  %67 = load i8, ptr %66, align 1, !tbaa !56
  %68 = zext i8 %67 to i16
  %69 = sub nsw i16 %65, %68
  %70 = getelementptr inbounds i16, ptr %0, i64 7
  store i16 %69, ptr %70, align 2, !tbaa !57
  %71 = or i16 %62, %69
  %72 = getelementptr inbounds i8, ptr %1, i64 33
  %73 = load i8, ptr %72, align 1, !tbaa !56
  %74 = zext i8 %73 to i16
  %75 = getelementptr inbounds i8, ptr %2, i64 65
  %76 = load i8, ptr %75, align 1, !tbaa !56
  %77 = zext i8 %76 to i16
  %78 = sub nsw i16 %74, %77
  %79 = getelementptr inbounds i16, ptr %0, i64 8
  store i16 %78, ptr %79, align 2, !tbaa !57
  %80 = or i16 %71, %78
  %81 = getelementptr inbounds i8, ptr %1, i64 48
  %82 = load i8, ptr %81, align 1, !tbaa !56
  %83 = zext i8 %82 to i16
  %84 = getelementptr inbounds i8, ptr %2, i64 96
  %85 = load i8, ptr %84, align 1, !tbaa !56
  %86 = zext i8 %85 to i16
  %87 = sub nsw i16 %83, %86
  %88 = getelementptr inbounds i16, ptr %0, i64 9
  store i16 %87, ptr %88, align 2, !tbaa !57
  %89 = or i16 %80, %87
  %90 = getelementptr inbounds i8, ptr %1, i64 49
  %91 = load i8, ptr %90, align 1, !tbaa !56
  %92 = zext i8 %91 to i16
  %93 = getelementptr inbounds i8, ptr %2, i64 97
  %94 = load i8, ptr %93, align 1, !tbaa !56
  %95 = zext i8 %94 to i16
  %96 = sub nsw i16 %92, %95
  %97 = getelementptr inbounds i16, ptr %0, i64 10
  store i16 %96, ptr %97, align 2, !tbaa !57
  %98 = or i16 %89, %96
  %99 = getelementptr inbounds i8, ptr %1, i64 34
  %100 = load i8, ptr %99, align 1, !tbaa !56
  %101 = zext i8 %100 to i16
  %102 = getelementptr inbounds i8, ptr %2, i64 66
  %103 = load i8, ptr %102, align 1, !tbaa !56
  %104 = zext i8 %103 to i16
  %105 = sub nsw i16 %101, %104
  %106 = getelementptr inbounds i16, ptr %0, i64 11
  store i16 %105, ptr %106, align 2, !tbaa !57
  %107 = or i16 %98, %105
  %108 = getelementptr inbounds i8, ptr %1, i64 19
  %109 = load i8, ptr %108, align 1, !tbaa !56
  %110 = zext i8 %109 to i16
  %111 = getelementptr inbounds i8, ptr %2, i64 35
  %112 = load i8, ptr %111, align 1, !tbaa !56
  %113 = zext i8 %112 to i16
  %114 = sub nsw i16 %110, %113
  %115 = getelementptr inbounds i16, ptr %0, i64 12
  store i16 %114, ptr %115, align 2, !tbaa !57
  %116 = or i16 %107, %114
  %117 = getelementptr inbounds i8, ptr %1, i64 35
  %118 = load i8, ptr %117, align 1, !tbaa !56
  %119 = zext i8 %118 to i16
  %120 = getelementptr inbounds i8, ptr %2, i64 67
  %121 = load i8, ptr %120, align 1, !tbaa !56
  %122 = zext i8 %121 to i16
  %123 = sub nsw i16 %119, %122
  %124 = getelementptr inbounds i16, ptr %0, i64 13
  store i16 %123, ptr %124, align 2, !tbaa !57
  %125 = or i16 %116, %123
  %126 = getelementptr inbounds i8, ptr %1, i64 50
  %127 = load i8, ptr %126, align 1, !tbaa !56
  %128 = zext i8 %127 to i16
  %129 = getelementptr inbounds i8, ptr %2, i64 98
  %130 = load i8, ptr %129, align 1, !tbaa !56
  %131 = zext i8 %130 to i16
  %132 = sub nsw i16 %128, %131
  %133 = getelementptr inbounds i16, ptr %0, i64 14
  store i16 %132, ptr %133, align 2, !tbaa !57
  %134 = or i16 %125, %132
  %135 = getelementptr inbounds i8, ptr %1, i64 51
  %136 = load i8, ptr %135, align 1, !tbaa !56
  %137 = zext i8 %136 to i16
  %138 = getelementptr inbounds i8, ptr %2, i64 99
  %139 = load i8, ptr %138, align 1, !tbaa !56
  %140 = zext i8 %139 to i16
  %141 = sub nsw i16 %137, %140
  %142 = getelementptr inbounds i16, ptr %0, i64 15
  store i16 %141, ptr %142, align 2, !tbaa !57
  %143 = or i16 %134, %141
  %144 = load i32, ptr %1, align 4, !tbaa !56
  store i32 %144, ptr %2, align 4, !tbaa !56
  %145 = load i32, ptr %18, align 4, !tbaa !56
  store i32 %145, ptr %21, align 4, !tbaa !56
  %146 = load i32, ptr %27, align 4, !tbaa !56
  store i32 %146, ptr %30, align 4, !tbaa !56
  %147 = load i32, ptr %81, align 4, !tbaa !56
  store i32 %147, ptr %84, align 4, !tbaa !56
  %148 = icmp ne i16 %143, 0
  %149 = zext i1 %148 to i32
  ret i32 %149
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal i32 @zigzag_sub_4x4ac_frame(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) #6 {
  %5 = load i8, ptr %1, align 1, !tbaa !56
  %6 = zext i8 %5 to i16
  %7 = load i8, ptr %2, align 1, !tbaa !56
  %8 = zext i8 %7 to i16
  %9 = sub nsw i16 %6, %8
  store i16 %9, ptr %3, align 2, !tbaa !57
  store i16 0, ptr %0, align 2, !tbaa !57
  %10 = getelementptr inbounds i8, ptr %1, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !56
  %12 = zext i8 %11 to i16
  %13 = getelementptr inbounds i8, ptr %2, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !56
  %15 = zext i8 %14 to i16
  %16 = sub nsw i16 %12, %15
  %17 = getelementptr inbounds i16, ptr %0, i64 1
  store i16 %16, ptr %17, align 2, !tbaa !57
  %18 = getelementptr inbounds i8, ptr %1, i64 16
  %19 = load i8, ptr %18, align 1, !tbaa !56
  %20 = zext i8 %19 to i16
  %21 = getelementptr inbounds i8, ptr %2, i64 32
  %22 = load i8, ptr %21, align 1, !tbaa !56
  %23 = zext i8 %22 to i16
  %24 = sub nsw i16 %20, %23
  %25 = getelementptr inbounds i16, ptr %0, i64 2
  store i16 %24, ptr %25, align 2, !tbaa !57
  %26 = or i16 %24, %16
  %27 = getelementptr inbounds i8, ptr %1, i64 32
  %28 = load i8, ptr %27, align 1, !tbaa !56
  %29 = zext i8 %28 to i16
  %30 = getelementptr inbounds i8, ptr %2, i64 64
  %31 = load i8, ptr %30, align 1, !tbaa !56
  %32 = zext i8 %31 to i16
  %33 = sub nsw i16 %29, %32
  %34 = getelementptr inbounds i16, ptr %0, i64 3
  store i16 %33, ptr %34, align 2, !tbaa !57
  %35 = or i16 %26, %33
  %36 = getelementptr inbounds i8, ptr %1, i64 17
  %37 = load i8, ptr %36, align 1, !tbaa !56
  %38 = zext i8 %37 to i16
  %39 = getelementptr inbounds i8, ptr %2, i64 33
  %40 = load i8, ptr %39, align 1, !tbaa !56
  %41 = zext i8 %40 to i16
  %42 = sub nsw i16 %38, %41
  %43 = getelementptr inbounds i16, ptr %0, i64 4
  store i16 %42, ptr %43, align 2, !tbaa !57
  %44 = or i16 %35, %42
  %45 = getelementptr inbounds i8, ptr %1, i64 2
  %46 = load i8, ptr %45, align 1, !tbaa !56
  %47 = zext i8 %46 to i16
  %48 = getelementptr inbounds i8, ptr %2, i64 2
  %49 = load i8, ptr %48, align 1, !tbaa !56
  %50 = zext i8 %49 to i16
  %51 = sub nsw i16 %47, %50
  %52 = getelementptr inbounds i16, ptr %0, i64 5
  store i16 %51, ptr %52, align 2, !tbaa !57
  %53 = or i16 %44, %51
  %54 = getelementptr inbounds i8, ptr %1, i64 3
  %55 = load i8, ptr %54, align 1, !tbaa !56
  %56 = zext i8 %55 to i16
  %57 = getelementptr inbounds i8, ptr %2, i64 3
  %58 = load i8, ptr %57, align 1, !tbaa !56
  %59 = zext i8 %58 to i16
  %60 = sub nsw i16 %56, %59
  %61 = getelementptr inbounds i16, ptr %0, i64 6
  store i16 %60, ptr %61, align 2, !tbaa !57
  %62 = or i16 %53, %60
  %63 = getelementptr inbounds i8, ptr %1, i64 18
  %64 = load i8, ptr %63, align 1, !tbaa !56
  %65 = zext i8 %64 to i16
  %66 = getelementptr inbounds i8, ptr %2, i64 34
  %67 = load i8, ptr %66, align 1, !tbaa !56
  %68 = zext i8 %67 to i16
  %69 = sub nsw i16 %65, %68
  %70 = getelementptr inbounds i16, ptr %0, i64 7
  store i16 %69, ptr %70, align 2, !tbaa !57
  %71 = or i16 %62, %69
  %72 = getelementptr inbounds i8, ptr %1, i64 33
  %73 = load i8, ptr %72, align 1, !tbaa !56
  %74 = zext i8 %73 to i16
  %75 = getelementptr inbounds i8, ptr %2, i64 65
  %76 = load i8, ptr %75, align 1, !tbaa !56
  %77 = zext i8 %76 to i16
  %78 = sub nsw i16 %74, %77
  %79 = getelementptr inbounds i16, ptr %0, i64 8
  store i16 %78, ptr %79, align 2, !tbaa !57
  %80 = or i16 %71, %78
  %81 = getelementptr inbounds i8, ptr %1, i64 48
  %82 = load i8, ptr %81, align 1, !tbaa !56
  %83 = zext i8 %82 to i16
  %84 = getelementptr inbounds i8, ptr %2, i64 96
  %85 = load i8, ptr %84, align 1, !tbaa !56
  %86 = zext i8 %85 to i16
  %87 = sub nsw i16 %83, %86
  %88 = getelementptr inbounds i16, ptr %0, i64 9
  store i16 %87, ptr %88, align 2, !tbaa !57
  %89 = or i16 %80, %87
  %90 = getelementptr inbounds i8, ptr %1, i64 49
  %91 = load i8, ptr %90, align 1, !tbaa !56
  %92 = zext i8 %91 to i16
  %93 = getelementptr inbounds i8, ptr %2, i64 97
  %94 = load i8, ptr %93, align 1, !tbaa !56
  %95 = zext i8 %94 to i16
  %96 = sub nsw i16 %92, %95
  %97 = getelementptr inbounds i16, ptr %0, i64 10
  store i16 %96, ptr %97, align 2, !tbaa !57
  %98 = or i16 %89, %96
  %99 = getelementptr inbounds i8, ptr %1, i64 34
  %100 = load i8, ptr %99, align 1, !tbaa !56
  %101 = zext i8 %100 to i16
  %102 = getelementptr inbounds i8, ptr %2, i64 66
  %103 = load i8, ptr %102, align 1, !tbaa !56
  %104 = zext i8 %103 to i16
  %105 = sub nsw i16 %101, %104
  %106 = getelementptr inbounds i16, ptr %0, i64 11
  store i16 %105, ptr %106, align 2, !tbaa !57
  %107 = or i16 %98, %105
  %108 = getelementptr inbounds i8, ptr %1, i64 19
  %109 = load i8, ptr %108, align 1, !tbaa !56
  %110 = zext i8 %109 to i16
  %111 = getelementptr inbounds i8, ptr %2, i64 35
  %112 = load i8, ptr %111, align 1, !tbaa !56
  %113 = zext i8 %112 to i16
  %114 = sub nsw i16 %110, %113
  %115 = getelementptr inbounds i16, ptr %0, i64 12
  store i16 %114, ptr %115, align 2, !tbaa !57
  %116 = or i16 %107, %114
  %117 = getelementptr inbounds i8, ptr %1, i64 35
  %118 = load i8, ptr %117, align 1, !tbaa !56
  %119 = zext i8 %118 to i16
  %120 = getelementptr inbounds i8, ptr %2, i64 67
  %121 = load i8, ptr %120, align 1, !tbaa !56
  %122 = zext i8 %121 to i16
  %123 = sub nsw i16 %119, %122
  %124 = getelementptr inbounds i16, ptr %0, i64 13
  store i16 %123, ptr %124, align 2, !tbaa !57
  %125 = or i16 %116, %123
  %126 = getelementptr inbounds i8, ptr %1, i64 50
  %127 = load i8, ptr %126, align 1, !tbaa !56
  %128 = zext i8 %127 to i16
  %129 = getelementptr inbounds i8, ptr %2, i64 98
  %130 = load i8, ptr %129, align 1, !tbaa !56
  %131 = zext i8 %130 to i16
  %132 = sub nsw i16 %128, %131
  %133 = getelementptr inbounds i16, ptr %0, i64 14
  store i16 %132, ptr %133, align 2, !tbaa !57
  %134 = or i16 %125, %132
  %135 = getelementptr inbounds i8, ptr %1, i64 51
  %136 = load i8, ptr %135, align 1, !tbaa !56
  %137 = zext i8 %136 to i16
  %138 = getelementptr inbounds i8, ptr %2, i64 99
  %139 = load i8, ptr %138, align 1, !tbaa !56
  %140 = zext i8 %139 to i16
  %141 = sub nsw i16 %137, %140
  %142 = getelementptr inbounds i16, ptr %0, i64 15
  store i16 %141, ptr %142, align 2, !tbaa !57
  %143 = or i16 %134, %141
  %144 = load i32, ptr %1, align 4, !tbaa !56
  store i32 %144, ptr %2, align 4, !tbaa !56
  %145 = load i32, ptr %18, align 4, !tbaa !56
  store i32 %145, ptr %21, align 4, !tbaa !56
  %146 = load i32, ptr %27, align 4, !tbaa !56
  store i32 %146, ptr %30, align 4, !tbaa !56
  %147 = load i32, ptr %81, align 4, !tbaa !56
  store i32 %147, ptr %84, align 4, !tbaa !56
  %148 = icmp ne i16 %143, 0
  %149 = zext i1 %148 to i32
  ret i32 %149
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @zigzag_interleave_8x8_cavlc(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #3 {
  br label %4

4:                                                ; preds = %3, %10
  %5 = phi i64 [ 0, %3 ], [ %18, %10 ]
  %6 = shl nuw nsw i64 %5, 4
  %7 = getelementptr i16, ptr %1, i64 %5
  %8 = getelementptr i16, ptr %0, i64 %6
  br label %20

9:                                                ; preds = %10
  ret void

10:                                               ; preds = %20
  %11 = icmp ne i32 %27, 0
  %12 = zext i1 %11 to i8
  %13 = and i64 %5, 1
  %14 = shl i64 %5, 2
  %15 = and i64 %14, 8
  %16 = or disjoint i64 %15, %13
  %17 = getelementptr inbounds i8, ptr %2, i64 %16
  store i8 %12, ptr %17, align 1, !tbaa !56
  %18 = add nuw nsw i64 %5, 1
  %19 = icmp eq i64 %18, 4
  br i1 %19, label %9, label %4, !llvm.loop !88

20:                                               ; preds = %4, %20
  %21 = phi i64 [ 0, %4 ], [ %29, %20 ]
  %22 = phi i32 [ 0, %4 ], [ %27, %20 ]
  %23 = shl nuw nsw i64 %21, 2
  %24 = getelementptr i16, ptr %7, i64 %23
  %25 = load i16, ptr %24, align 2, !tbaa !57
  %26 = sext i16 %25 to i32
  %27 = or i32 %22, %26
  %28 = getelementptr i16, ptr %8, i64 %21
  store i16 %25, ptr %28, align 2, !tbaa !57
  %29 = add nuw nsw i64 %21, 1
  %30 = icmp eq i64 %29, 16
  br i1 %30, label %10, label %20, !llvm.loop !89
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 11233431}
!8 = !{!"MaxCount", i64 921600}
!9 = !{!"MaxInternalCount", i64 921600}
!10 = !{!"MaxFunctionCount", i64 921600}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 921600, i32 8}
!18 = !{i32 100000, i64 921600, i32 8}
!19 = !{i32 200000, i64 921600, i32 8}
!20 = !{i32 300000, i64 921600, i32 8}
!21 = !{i32 400000, i64 921600, i32 8}
!22 = !{i32 500000, i64 921600, i32 8}
!23 = !{i32 600000, i64 921600, i32 8}
!24 = !{i32 700000, i64 915762, i32 9}
!25 = !{i32 800000, i64 908579, i32 10}
!26 = !{i32 900000, i64 460800, i32 13}
!27 = !{i32 950000, i64 460800, i32 13}
!28 = !{i32 990000, i64 115200, i32 14}
!29 = !{i32 999000, i64 12790, i32 20}
!30 = !{i32 999900, i64 536, i32 29}
!31 = !{i32 999990, i64 90, i32 32}
!32 = !{i32 999999, i64 1, i32 66}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !36, i64 0}
!35 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!35, !36, i64 8}
!40 = !{!35, !36, i64 16}
!41 = !{!35, !36, i64 24}
!42 = !{!35, !36, i64 32}
!43 = !{!35, !36, i64 40}
!44 = !{!35, !36, i64 48}
!45 = !{!35, !36, i64 56}
!46 = !{!35, !36, i64 64}
!47 = !{!35, !36, i64 72}
!48 = !{!35, !36, i64 80}
!49 = !{!35, !36, i64 88}
!50 = !{!35, !36, i64 96}
!51 = !{!35, !36, i64 104}
!52 = !{!35, !36, i64 112}
!53 = distinct !{!53, !54, !55}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!"llvm.loop.unroll.disable"}
!56 = !{!37, !37, i64 0}
!57 = !{!58, !58, i64 0}
!58 = !{!"short", !37, i64 0}
!59 = distinct !{!59, !54, !55}
!60 = distinct !{!60, !54, !55}
!61 = distinct !{!61, !54, !55}
!62 = distinct !{!62, !54, !55}
!63 = distinct !{!63, !54, !55}
!64 = distinct !{!64, !54, !55}
!65 = distinct !{!65, !54, !55}
!66 = distinct !{!66, !54, !55}
!67 = distinct !{!67, !54, !55}
!68 = distinct !{!68, !54, !55}
!69 = distinct !{!69, !54, !55}
!70 = distinct !{!70, !54, !55}
!71 = distinct !{!71, !54, !55}
!72 = distinct !{!72, !54, !55}
!73 = distinct !{!73, !54, !55}
!74 = distinct !{!74, !54, !55}
!75 = distinct !{!75, !54, !55}
!76 = !{!77, !77, i64 0}
!77 = !{!"int", !37, i64 0}
!78 = distinct !{!78, !54, !55}
!79 = distinct !{!79, !54, !55}
!80 = distinct !{!80, !54, !55}
!81 = !{!82, !36, i64 0}
!82 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40}
!83 = !{!82, !36, i64 8}
!84 = !{!82, !36, i64 16}
!85 = !{!82, !36, i64 24}
!86 = !{!82, !36, i64 32}
!87 = !{!82, !36, i64 40}
!88 = distinct !{!88, !54, !55}
!89 = distinct !{!89, !54, !55}
