; ModuleID = 'x264_src/common/dct.c'
source_filename = "x264_src/common/dct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.x264_dct_function_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.x264_zigzag_function_t = type { ptr, ptr, ptr, ptr, ptr, ptr }

@x264_dct4_weight2_zigzag = dso_local local_unnamed_addr global [2 x [16 x i32]] zeroinitializer, align 16
@x264_dct8_weight2_zigzag = dso_local local_unnamed_addr global [2 x [64 x i32]] zeroinitializer, align 16
@x264_dct4_weight2_tab = internal unnamed_addr constant [16 x i16] [i16 800, i16 320, i16 800, i16 320, i16 320, i16 128, i16 320, i16 128, i16 800, i16 320, i16 800, i16 320, i16 320, i16 128, i16 320, i16 128], align 16
@x264_zigzag_scan4 = internal unnamed_addr constant [2 x [16 x i8]] [[16 x i8] c"\00\04\01\02\05\08\0C\09\06\03\07\0A\0D\0E\0B\0F", [16 x i8] c"\00\01\04\02\03\05\06\07\08\09\0A\0B\0C\0D\0E\0F"], align 16
@x264_dct8_weight2_tab = internal unnamed_addr constant [64 x i16] [i16 256, i16 227, i16 410, i16 227, i16 256, i16 227, i16 410, i16 227, i16 227, i16 201, i16 363, i16 201, i16 227, i16 201, i16 363, i16 201, i16 410, i16 363, i16 656, i16 363, i16 410, i16 363, i16 656, i16 363, i16 227, i16 201, i16 363, i16 201, i16 227, i16 201, i16 363, i16 201, i16 256, i16 227, i16 410, i16 227, i16 256, i16 227, i16 410, i16 227, i16 227, i16 201, i16 363, i16 201, i16 227, i16 201, i16 363, i16 201, i16 410, i16 363, i16 656, i16 363, i16 410, i16 363, i16 656, i16 363, i16 227, i16 201, i16 363, i16 201, i16 227, i16 201, i16 363, i16 201], align 16
@x264_zigzag_scan8 = internal unnamed_addr constant [2 x [64 x i8]] [[64 x i8] c"\00\08\01\02\09\10\18\11\0A\03\04\0B\12\19 (!\1A\13\0C\05\06\0D\14\1B\22)081*#\1C\15\0E\07\0F\16\1D$+29:3,%\1E\17\1F&-4;<5.'/6=>7?", [64 x i8] c"\00\01\02\08\09\03\04\0A\10\0B\05\06\07\0C\11\18\12\0D\0E\0F\13\19 \1A\14\15\16\17\1B!(\22\1C\1D\1E\1F#)0*$%&'+12,-./3894567:;<=>?"], align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @x264_dct_init(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  store ptr @sub4x4_dct, ptr %1, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.x264_dct_function_t, ptr %1, i64 0, i32 1
  store ptr @add4x4_idct, ptr %3, align 8, !tbaa !11
  %4 = getelementptr inbounds %struct.x264_dct_function_t, ptr %1, i64 0, i32 2
  store ptr @sub8x8_dct, ptr %4, align 8, !tbaa !12
  %5 = getelementptr inbounds %struct.x264_dct_function_t, ptr %1, i64 0, i32 3
  store ptr @sub8x8_dct_dc, ptr %5, align 8, !tbaa !13
  %6 = getelementptr inbounds %struct.x264_dct_function_t, ptr %1, i64 0, i32 4
  store ptr @add8x8_idct, ptr %6, align 8, !tbaa !14
  %7 = getelementptr inbounds %struct.x264_dct_function_t, ptr %1, i64 0, i32 5
  store ptr @add8x8_idct_dc, ptr %7, align 8, !tbaa !15
  %8 = getelementptr inbounds %struct.x264_dct_function_t, ptr %1, i64 0, i32 6
  store ptr @sub16x16_dct, ptr %8, align 8, !tbaa !16
  %9 = getelementptr inbounds %struct.x264_dct_function_t, ptr %1, i64 0, i32 7
  store ptr @add16x16_idct, ptr %9, align 8, !tbaa !17
  %10 = getelementptr inbounds %struct.x264_dct_function_t, ptr %1, i64 0, i32 8
  store ptr @add16x16_idct_dc, ptr %10, align 8, !tbaa !18
  %11 = getelementptr inbounds %struct.x264_dct_function_t, ptr %1, i64 0, i32 9
  store ptr @sub8x8_dct8, ptr %11, align 8, !tbaa !19
  %12 = getelementptr inbounds %struct.x264_dct_function_t, ptr %1, i64 0, i32 10
  store ptr @add8x8_idct8, ptr %12, align 8, !tbaa !20
  %13 = getelementptr inbounds %struct.x264_dct_function_t, ptr %1, i64 0, i32 11
  store ptr @sub16x16_dct8, ptr %13, align 8, !tbaa !21
  %14 = getelementptr inbounds %struct.x264_dct_function_t, ptr %1, i64 0, i32 12
  store ptr @add16x16_idct8, ptr %14, align 8, !tbaa !22
  %15 = getelementptr inbounds %struct.x264_dct_function_t, ptr %1, i64 0, i32 13
  store ptr @dct4x4dc, ptr %15, align 8, !tbaa !23
  %16 = getelementptr inbounds %struct.x264_dct_function_t, ptr %1, i64 0, i32 14
  store ptr @idct4x4dc, ptr %16, align 8, !tbaa !24
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @sub4x4_dct(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #1 {
  %4 = alloca [16 x i16], align 16
  %5 = alloca [16 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #9
  call fastcc void @pixel_sub_wxh(ptr noundef nonnull %4, i32 noundef 4, ptr noundef %1, ptr noundef %2) #10
  %6 = load <16 x i16>, ptr %4, align 16, !tbaa !25
  %7 = shufflevector <16 x i16> %6, <16 x i16> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %8 = shufflevector <16 x i16> %6, <16 x i16> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %9 = shufflevector <16 x i16> %6, <16 x i16> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %10 = shufflevector <16 x i16> %6, <16 x i16> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %11 = sext <4 x i16> %7 to <4 x i32>
  %12 = sext <4 x i16> %10 to <4 x i32>
  %13 = add nsw <4 x i32> %12, %11
  %14 = sext <4 x i16> %8 to <4 x i32>
  %15 = sext <4 x i16> %9 to <4 x i32>
  %16 = add nsw <4 x i32> %15, %14
  %17 = sub nsw <4 x i32> %11, %12
  %18 = sub nsw <4 x i32> %14, %15
  %19 = add nsw <4 x i32> %16, %13
  %20 = trunc <4 x i32> %19 to <4 x i16>
  store <4 x i16> %20, ptr %5, align 16, !tbaa !25
  %21 = shl nsw <4 x i32> %17, <i32 1, i32 1, i32 1, i32 1>
  %22 = add nsw <4 x i32> %18, %21
  %23 = trunc <4 x i32> %22 to <4 x i16>
  %24 = getelementptr inbounds [16 x i16], ptr %5, i64 0, i64 4
  store <4 x i16> %23, ptr %24, align 8, !tbaa !25
  %25 = sub nsw <4 x i32> %13, %16
  %26 = trunc <4 x i32> %25 to <4 x i16>
  %27 = getelementptr inbounds [16 x i16], ptr %5, i64 0, i64 8
  store <4 x i16> %26, ptr %27, align 16, !tbaa !25
  %28 = shl nsw <4 x i32> %18, <i32 1, i32 1, i32 1, i32 1>
  %29 = sub nsw <4 x i32> %17, %28
  %30 = trunc <4 x i32> %29 to <4 x i16>
  %31 = getelementptr inbounds [16 x i16], ptr %5, i64 0, i64 12
  store <4 x i16> %30, ptr %31, align 8, !tbaa !25
  br label %33

32:                                               ; preds = %33
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #9
  ret void

33:                                               ; preds = %3, %33
  %34 = phi i64 [ %69, %33 ], [ 0, %3 ]
  %35 = shl nuw nsw i64 %34, 2
  %36 = getelementptr inbounds [16 x i16], ptr %5, i64 0, i64 %35
  %37 = load i16, ptr %36, align 8, !tbaa !25
  %38 = sext i16 %37 to i32
  %39 = or disjoint i64 %35, 3
  %40 = getelementptr inbounds [16 x i16], ptr %5, i64 0, i64 %39
  %41 = load i16, ptr %40, align 2, !tbaa !25
  %42 = sext i16 %41 to i32
  %43 = add nsw i32 %42, %38
  %44 = or disjoint i64 %35, 1
  %45 = getelementptr inbounds [16 x i16], ptr %5, i64 0, i64 %44
  %46 = load i16, ptr %45, align 2, !tbaa !25
  %47 = sext i16 %46 to i32
  %48 = or disjoint i64 %35, 2
  %49 = getelementptr inbounds [16 x i16], ptr %5, i64 0, i64 %48
  %50 = load i16, ptr %49, align 4, !tbaa !25
  %51 = sext i16 %50 to i32
  %52 = add nsw i32 %51, %47
  %53 = sub nsw i32 %38, %42
  %54 = sub nsw i32 %47, %51
  %55 = add nsw i32 %52, %43
  %56 = trunc i32 %55 to i16
  %57 = getelementptr inbounds i16, ptr %0, i64 %35
  store i16 %56, ptr %57, align 2, !tbaa !25
  %58 = shl nsw i32 %53, 1
  %59 = add nsw i32 %54, %58
  %60 = trunc i32 %59 to i16
  %61 = getelementptr inbounds i16, ptr %0, i64 %44
  store i16 %60, ptr %61, align 2, !tbaa !25
  %62 = sub nsw i32 %43, %52
  %63 = trunc i32 %62 to i16
  %64 = getelementptr inbounds i16, ptr %0, i64 %48
  store i16 %63, ptr %64, align 2, !tbaa !25
  %65 = shl nsw i32 %54, 1
  %66 = sub nsw i32 %53, %65
  %67 = trunc i32 %66 to i16
  %68 = getelementptr inbounds i16, ptr %0, i64 %39
  store i16 %67, ptr %68, align 2, !tbaa !25
  %69 = add nuw nsw i64 %34, 1
  %70 = icmp eq i64 %69, 4
  br i1 %70, label %32, label %33, !llvm.loop !27
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @add4x4_idct(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [16 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #9
  %4 = load <4 x i16>, ptr %1, align 2, !tbaa !25
  %5 = zext <4 x i16> %4 to <4 x i32>
  %6 = getelementptr inbounds i16, ptr %1, i64 8
  %7 = load <4 x i16>, ptr %6, align 2, !tbaa !25
  %8 = zext <4 x i16> %7 to <4 x i32>
  %9 = add nuw nsw <4 x i32> %8, %5
  %10 = sub nsw <4 x i32> %5, %8
  %11 = getelementptr inbounds i16, ptr %1, i64 4
  %12 = load <4 x i16>, ptr %11, align 2, !tbaa !25
  %13 = sext <4 x i16> %12 to <4 x i32>
  %14 = getelementptr inbounds i16, ptr %1, i64 12
  %15 = load <4 x i16>, ptr %14, align 2, !tbaa !25
  %16 = sext <4 x i16> %15 to <4 x i32>
  %17 = ashr <4 x i32> %16, <i32 1, i32 1, i32 1, i32 1>
  %18 = add nsw <4 x i32> %17, %13
  %19 = ashr <4 x i32> %13, <i32 1, i32 1, i32 1, i32 1>
  %20 = sub nsw <4 x i32> %19, %16
  %21 = add nsw <4 x i32> %18, %9
  %22 = trunc <4 x i32> %21 to <4 x i16>
  %23 = add nsw <4 x i32> %20, %10
  %24 = trunc <4 x i32> %23 to <4 x i16>
  %25 = sub nsw <4 x i32> %10, %20
  %26 = trunc <4 x i32> %25 to <4 x i16>
  %27 = sub nsw <4 x i32> %9, %18
  %28 = trunc <4 x i32> %27 to <4 x i16>
  %29 = shufflevector <4 x i16> %22, <4 x i16> %24, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %30 = shufflevector <4 x i16> %26, <4 x i16> %28, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %31 = shufflevector <8 x i16> %29, <8 x i16> %30, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %32 = shufflevector <16 x i16> %31, <16 x i16> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %33 = sext <4 x i16> %32 to <4 x i32>
  %34 = shufflevector <16 x i16> %31, <16 x i16> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %35 = sext <4 x i16> %34 to <4 x i32>
  %36 = add nsw <4 x i32> %35, %33
  %37 = sub nsw <4 x i32> %33, %35
  %38 = shufflevector <16 x i16> %31, <16 x i16> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %39 = sext <4 x i16> %38 to <4 x i32>
  %40 = shufflevector <16 x i16> %31, <16 x i16> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %41 = sext <4 x i16> %40 to <4 x i32>
  %42 = ashr <4 x i32> %41, <i32 1, i32 1, i32 1, i32 1>
  %43 = add nsw <4 x i32> %42, %39
  %44 = ashr <4 x i32> %39, <i32 1, i32 1, i32 1, i32 1>
  %45 = sub nsw <4 x i32> %44, %41
  %46 = add nsw <4 x i32> %36, <i32 32, i32 32, i32 32, i32 32>
  %47 = add nsw <4 x i32> %46, %43
  %48 = lshr <4 x i32> %47, <i32 6, i32 6, i32 6, i32 6>
  %49 = trunc <4 x i32> %48 to <4 x i16>
  store <4 x i16> %49, ptr %3, align 16, !tbaa !25
  %50 = add nsw <4 x i32> %37, <i32 32, i32 32, i32 32, i32 32>
  %51 = add nsw <4 x i32> %50, %45
  %52 = lshr <4 x i32> %51, <i32 6, i32 6, i32 6, i32 6>
  %53 = trunc <4 x i32> %52 to <4 x i16>
  %54 = getelementptr inbounds [16 x i16], ptr %3, i64 0, i64 4
  store <4 x i16> %53, ptr %54, align 8, !tbaa !25
  %55 = sub nsw <4 x i32> %50, %45
  %56 = lshr <4 x i32> %55, <i32 6, i32 6, i32 6, i32 6>
  %57 = trunc <4 x i32> %56 to <4 x i16>
  %58 = getelementptr inbounds [16 x i16], ptr %3, i64 0, i64 8
  store <4 x i16> %57, ptr %58, align 16, !tbaa !25
  %59 = sub nsw <4 x i32> %46, %43
  %60 = lshr <4 x i32> %59, <i32 6, i32 6, i32 6, i32 6>
  %61 = trunc <4 x i32> %60 to <4 x i16>
  %62 = getelementptr inbounds [16 x i16], ptr %3, i64 0, i64 12
  store <4 x i16> %61, ptr %62, align 8, !tbaa !25
  br label %63

63:                                               ; preds = %2, %68
  %64 = phi i64 [ %70, %68 ], [ 0, %2 ]
  %65 = phi ptr [ %69, %68 ], [ %0, %2 ]
  %66 = shl nuw nsw i64 %64, 2
  br label %72

67:                                               ; preds = %68
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #9
  ret void

68:                                               ; preds = %72
  %69 = getelementptr inbounds i8, ptr %65, i64 32
  %70 = add nuw nsw i64 %64, 1
  %71 = icmp eq i64 %70, 4
  br i1 %71, label %67, label %63, !llvm.loop !29

72:                                               ; preds = %63, %72
  %73 = phi i64 [ 0, %63 ], [ %83, %72 ]
  %74 = getelementptr inbounds i8, ptr %65, i64 %73
  %75 = load i8, ptr %74, align 1, !tbaa !30
  %76 = zext i8 %75 to i32
  %77 = add nuw nsw i64 %73, %66
  %78 = getelementptr inbounds [16 x i16], ptr %3, i64 0, i64 %77
  %79 = load i16, ptr %78, align 2, !tbaa !25
  %80 = sext i16 %79 to i32
  %81 = add nsw i32 %80, %76
  %82 = tail call fastcc zeroext i8 @x264_clip_uint8(i32 noundef %81) #10
  store i8 %82, ptr %74, align 1, !tbaa !30
  %83 = add nuw nsw i64 %73, 1
  %84 = icmp eq i64 %83, 4
  br i1 %84, label %68, label %72, !llvm.loop !31
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @sub8x8_dct(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #1 {
  tail call void @sub4x4_dct(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  %4 = getelementptr inbounds [16 x i16], ptr %0, i64 1
  %5 = getelementptr inbounds i8, ptr %1, i64 4
  %6 = getelementptr inbounds i8, ptr %2, i64 4
  tail call void @sub4x4_dct(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #10
  %7 = getelementptr inbounds [16 x i16], ptr %0, i64 2
  %8 = getelementptr inbounds i8, ptr %1, i64 64
  %9 = getelementptr inbounds i8, ptr %2, i64 128
  tail call void @sub4x4_dct(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #10
  %10 = getelementptr inbounds [16 x i16], ptr %0, i64 3
  %11 = getelementptr inbounds i8, ptr %1, i64 68
  %12 = getelementptr inbounds i8, ptr %2, i64 132
  tail call void @sub4x4_dct(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12) #10
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @sub8x8_dct_dc(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #1 {
  %4 = tail call fastcc i32 @sub4x4_dct_dc(ptr noundef %1, ptr noundef %2) #10, !range !32
  %5 = trunc i32 %4 to i16
  store i16 %5, ptr %0, align 2, !tbaa !25
  %6 = getelementptr inbounds i8, ptr %1, i64 4
  %7 = getelementptr inbounds i8, ptr %2, i64 4
  %8 = tail call fastcc i32 @sub4x4_dct_dc(ptr noundef nonnull %6, ptr noundef nonnull %7) #10, !range !32
  %9 = trunc i32 %8 to i16
  %10 = getelementptr inbounds i16, ptr %0, i64 1
  store i16 %9, ptr %10, align 2, !tbaa !25
  %11 = getelementptr inbounds i8, ptr %1, i64 64
  %12 = getelementptr inbounds i8, ptr %2, i64 128
  %13 = tail call fastcc i32 @sub4x4_dct_dc(ptr noundef nonnull %11, ptr noundef nonnull %12) #10, !range !32
  %14 = trunc i32 %13 to i16
  %15 = getelementptr inbounds i16, ptr %0, i64 2
  store i16 %14, ptr %15, align 2, !tbaa !25
  %16 = getelementptr inbounds i8, ptr %1, i64 68
  %17 = getelementptr inbounds i8, ptr %2, i64 132
  %18 = tail call fastcc i32 @sub4x4_dct_dc(ptr noundef nonnull %16, ptr noundef nonnull %17) #10, !range !32
  %19 = getelementptr inbounds i16, ptr %0, i64 3
  %20 = shl i32 %4, 16
  %21 = ashr exact i32 %20, 16
  %22 = shl i32 %8, 16
  %23 = ashr exact i32 %22, 16
  %24 = add nsw i32 %23, %21
  %25 = shl i32 %13, 16
  %26 = ashr exact i32 %25, 16
  %27 = shl i32 %18, 16
  %28 = ashr exact i32 %27, 16
  %29 = add nsw i32 %28, %26
  %30 = sub nsw i32 %21, %23
  %31 = sub nsw i32 %26, %28
  %32 = add nsw i32 %29, %24
  %33 = trunc i32 %32 to i16
  store i16 %33, ptr %0, align 2, !tbaa !25
  %34 = add nsw i32 %31, %30
  %35 = trunc i32 %34 to i16
  store i16 %35, ptr %15, align 2, !tbaa !25
  %36 = sub nsw i32 %24, %29
  %37 = trunc i32 %36 to i16
  store i16 %37, ptr %10, align 2, !tbaa !25
  %38 = sub nsw i32 %30, %31
  %39 = trunc i32 %38 to i16
  store i16 %39, ptr %19, align 2, !tbaa !25
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @add8x8_idct(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #2 {
  tail call void @add4x4_idct(ptr noundef %0, ptr noundef %1) #10
  %3 = getelementptr inbounds i8, ptr %0, i64 4
  %4 = getelementptr inbounds [16 x i16], ptr %1, i64 1
  tail call void @add4x4_idct(ptr noundef nonnull %3, ptr noundef nonnull %4) #10
  %5 = getelementptr inbounds i8, ptr %0, i64 128
  %6 = getelementptr inbounds [16 x i16], ptr %1, i64 2
  tail call void @add4x4_idct(ptr noundef nonnull %5, ptr noundef nonnull %6) #10
  %7 = getelementptr inbounds i8, ptr %0, i64 132
  %8 = getelementptr inbounds [16 x i16], ptr %1, i64 3
  tail call void @add4x4_idct(ptr noundef nonnull %7, ptr noundef nonnull %8) #10
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @add8x8_idct_dc(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load i16, ptr %1, align 2, !tbaa !25
  tail call fastcc void @add4x4_idct_dc(ptr noundef %0, i16 noundef signext %3) #10
  %4 = getelementptr inbounds i8, ptr %0, i64 4
  %5 = getelementptr inbounds i16, ptr %1, i64 1
  %6 = load i16, ptr %5, align 2, !tbaa !25
  tail call fastcc void @add4x4_idct_dc(ptr noundef nonnull %4, i16 noundef signext %6) #10
  %7 = getelementptr inbounds i8, ptr %0, i64 128
  %8 = getelementptr inbounds i16, ptr %1, i64 2
  %9 = load i16, ptr %8, align 2, !tbaa !25
  tail call fastcc void @add4x4_idct_dc(ptr noundef nonnull %7, i16 noundef signext %9) #10
  %10 = getelementptr inbounds i8, ptr %0, i64 132
  %11 = getelementptr inbounds i16, ptr %1, i64 3
  %12 = load i16, ptr %11, align 2, !tbaa !25
  tail call fastcc void @add4x4_idct_dc(ptr noundef nonnull %10, i16 noundef signext %12) #10
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @sub16x16_dct(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #1 {
  tail call void @sub8x8_dct(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  %4 = getelementptr inbounds [16 x i16], ptr %0, i64 4
  %5 = getelementptr inbounds i8, ptr %1, i64 8
  %6 = getelementptr inbounds i8, ptr %2, i64 8
  tail call void @sub8x8_dct(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #10
  %7 = getelementptr inbounds [16 x i16], ptr %0, i64 8
  %8 = getelementptr inbounds i8, ptr %1, i64 128
  %9 = getelementptr inbounds i8, ptr %2, i64 256
  tail call void @sub8x8_dct(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #10
  %10 = getelementptr inbounds [16 x i16], ptr %0, i64 12
  %11 = getelementptr inbounds i8, ptr %1, i64 136
  %12 = getelementptr inbounds i8, ptr %2, i64 264
  tail call void @sub8x8_dct(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12) #10
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @add16x16_idct(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #2 {
  tail call void @add8x8_idct(ptr noundef %0, ptr noundef %1) #10
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = getelementptr inbounds [16 x i16], ptr %1, i64 4
  tail call void @add8x8_idct(ptr noundef nonnull %3, ptr noundef nonnull %4) #10
  %5 = getelementptr inbounds i8, ptr %0, i64 256
  %6 = getelementptr inbounds [16 x i16], ptr %1, i64 8
  tail call void @add8x8_idct(ptr noundef nonnull %5, ptr noundef nonnull %6) #10
  %7 = getelementptr inbounds i8, ptr %0, i64 264
  %8 = getelementptr inbounds [16 x i16], ptr %1, i64 12
  tail call void @add8x8_idct(ptr noundef nonnull %7, ptr noundef nonnull %8) #10
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @add16x16_idct_dc(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #2 {
  br label %4

3:                                                ; preds = %4
  ret void

4:                                                ; preds = %2, %4
  %5 = phi i32 [ 0, %2 ], [ %18, %4 ]
  %6 = phi ptr [ %1, %2 ], [ %19, %4 ]
  %7 = phi ptr [ %0, %2 ], [ %20, %4 ]
  %8 = load i16, ptr %6, align 2, !tbaa !25
  tail call fastcc void @add4x4_idct_dc(ptr noundef %7, i16 noundef signext %8) #10
  %9 = getelementptr inbounds i8, ptr %7, i64 4
  %10 = getelementptr inbounds i16, ptr %6, i64 1
  %11 = load i16, ptr %10, align 2, !tbaa !25
  tail call fastcc void @add4x4_idct_dc(ptr noundef nonnull %9, i16 noundef signext %11) #10
  %12 = getelementptr inbounds i8, ptr %7, i64 8
  %13 = getelementptr inbounds i16, ptr %6, i64 2
  %14 = load i16, ptr %13, align 2, !tbaa !25
  tail call fastcc void @add4x4_idct_dc(ptr noundef nonnull %12, i16 noundef signext %14) #10
  %15 = getelementptr inbounds i8, ptr %7, i64 12
  %16 = getelementptr inbounds i16, ptr %6, i64 3
  %17 = load i16, ptr %16, align 2, !tbaa !25
  tail call fastcc void @add4x4_idct_dc(ptr noundef nonnull %15, i16 noundef signext %17) #10
  %18 = add nuw nsw i32 %5, 1
  %19 = getelementptr inbounds i16, ptr %6, i64 4
  %20 = getelementptr inbounds i8, ptr %7, i64 128
  %21 = icmp eq i32 %18, 4
  br i1 %21, label %3, label %4, !llvm.loop !33
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @sub8x8_dct8(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #1 {
  %4 = alloca [64 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #9
  call fastcc void @pixel_sub_wxh(ptr noundef nonnull %4, i32 noundef 8, ptr noundef %1, ptr noundef %2) #10
  %5 = load <8 x i16>, ptr %4, align 16, !tbaa !25
  %6 = sext <8 x i16> %5 to <8 x i32>
  %7 = getelementptr inbounds [64 x i16], ptr %4, i64 0, i64 56
  %8 = load <8 x i16>, ptr %7, align 16, !tbaa !25
  %9 = sext <8 x i16> %8 to <8 x i32>
  %10 = add nsw <8 x i32> %9, %6
  %11 = getelementptr inbounds [64 x i16], ptr %4, i64 0, i64 8
  %12 = load <8 x i16>, ptr %11, align 16, !tbaa !25
  %13 = sext <8 x i16> %12 to <8 x i32>
  %14 = getelementptr inbounds [64 x i16], ptr %4, i64 0, i64 48
  %15 = load <8 x i16>, ptr %14, align 16, !tbaa !25
  %16 = sext <8 x i16> %15 to <8 x i32>
  %17 = add nsw <8 x i32> %16, %13
  %18 = getelementptr inbounds [64 x i16], ptr %4, i64 0, i64 16
  %19 = load <8 x i16>, ptr %18, align 16, !tbaa !25
  %20 = sext <8 x i16> %19 to <8 x i32>
  %21 = getelementptr inbounds [64 x i16], ptr %4, i64 0, i64 40
  %22 = load <8 x i16>, ptr %21, align 16, !tbaa !25
  %23 = sext <8 x i16> %22 to <8 x i32>
  %24 = add nsw <8 x i32> %23, %20
  %25 = getelementptr inbounds [64 x i16], ptr %4, i64 0, i64 24
  %26 = load <8 x i16>, ptr %25, align 16, !tbaa !25
  %27 = sext <8 x i16> %26 to <8 x i32>
  %28 = getelementptr inbounds [64 x i16], ptr %4, i64 0, i64 32
  %29 = load <8 x i16>, ptr %28, align 16, !tbaa !25
  %30 = sext <8 x i16> %29 to <8 x i32>
  %31 = add nsw <8 x i32> %30, %27
  %32 = add nsw <8 x i32> %31, %10
  %33 = add nsw <8 x i32> %24, %17
  %34 = sub nsw <8 x i32> %10, %31
  %35 = sub nsw <8 x i32> %17, %24
  %36 = sub nsw <8 x i32> %6, %9
  %37 = sub nsw <8 x i32> %13, %16
  %38 = sub nsw <8 x i32> %20, %23
  %39 = sub nsw <8 x i32> %27, %30
  %40 = ashr <8 x i32> %36, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %41 = add nsw <8 x i32> %40, %36
  %42 = add nsw <8 x i32> %41, %37
  %43 = add nsw <8 x i32> %42, %38
  %44 = ashr <8 x i32> %38, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %45 = add nsw <8 x i32> %38, %44
  %46 = add nsw <8 x i32> %45, %39
  %47 = sub nsw <8 x i32> %36, %46
  %48 = ashr <8 x i32> %37, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %49 = add nsw <8 x i32> %37, %48
  %50 = sub nsw <8 x i32> %36, %49
  %51 = add nsw <8 x i32> %50, %39
  %52 = sub nsw <8 x i32> %37, %38
  %53 = ashr <8 x i32> %39, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %54 = add nsw <8 x i32> %39, %52
  %55 = add nsw <8 x i32> %54, %53
  %56 = add nsw <8 x i32> %32, %33
  %57 = trunc <8 x i32> %56 to <8 x i16>
  store <8 x i16> %57, ptr %4, align 16, !tbaa !25
  %58 = lshr <8 x i32> %55, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %59 = add nsw <8 x i32> %58, %43
  %60 = trunc <8 x i32> %59 to <8 x i16>
  store <8 x i16> %60, ptr %11, align 16, !tbaa !25
  %61 = lshr <8 x i32> %35, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %62 = add <8 x i32> %34, %61
  %63 = trunc <8 x i32> %62 to <8 x i16>
  store <8 x i16> %63, ptr %18, align 16, !tbaa !25
  %64 = lshr <8 x i32> %51, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %65 = add nsw <8 x i32> %47, %64
  %66 = trunc <8 x i32> %65 to <8 x i16>
  store <8 x i16> %66, ptr %25, align 16, !tbaa !25
  %67 = sub nsw <8 x i32> %32, %33
  %68 = trunc <8 x i32> %67 to <8 x i16>
  store <8 x i16> %68, ptr %28, align 16, !tbaa !25
  %69 = lshr <8 x i32> %47, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %70 = sub nsw <8 x i32> %51, %69
  %71 = trunc <8 x i32> %70 to <8 x i16>
  store <8 x i16> %71, ptr %21, align 16, !tbaa !25
  %72 = lshr <8 x i32> %34, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %73 = sub <8 x i32> %72, %35
  %74 = trunc <8 x i32> %73 to <8 x i16>
  store <8 x i16> %74, ptr %14, align 16, !tbaa !25
  %75 = lshr <8 x i32> %43, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %76 = sub nsw <8 x i32> %75, %55
  %77 = trunc <8 x i32> %76 to <8 x i16>
  store <8 x i16> %77, ptr %7, align 16, !tbaa !25
  %78 = load <64 x i16>, ptr %4, align 16, !tbaa !25
  %79 = shufflevector <64 x i16> %78, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %80 = shufflevector <64 x i16> %78, <64 x i16> poison, <8 x i32> <i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57>
  %81 = shufflevector <64 x i16> %78, <64 x i16> poison, <8 x i32> <i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58>
  %82 = shufflevector <64 x i16> %78, <64 x i16> poison, <8 x i32> <i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59>
  %83 = shufflevector <64 x i16> %78, <64 x i16> poison, <8 x i32> <i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60>
  %84 = shufflevector <64 x i16> %78, <64 x i16> poison, <8 x i32> <i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61>
  %85 = shufflevector <64 x i16> %78, <64 x i16> poison, <8 x i32> <i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62>
  %86 = shufflevector <64 x i16> %78, <64 x i16> poison, <8 x i32> <i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  %87 = sext <8 x i16> %79 to <8 x i32>
  %88 = sext <8 x i16> %86 to <8 x i32>
  %89 = add nsw <8 x i32> %88, %87
  %90 = sext <8 x i16> %80 to <8 x i32>
  %91 = sext <8 x i16> %85 to <8 x i32>
  %92 = add nsw <8 x i32> %91, %90
  %93 = sext <8 x i16> %81 to <8 x i32>
  %94 = sext <8 x i16> %84 to <8 x i32>
  %95 = add nsw <8 x i32> %94, %93
  %96 = sext <8 x i16> %82 to <8 x i32>
  %97 = sext <8 x i16> %83 to <8 x i32>
  %98 = add nsw <8 x i32> %97, %96
  %99 = add nsw <8 x i32> %98, %89
  %100 = add nsw <8 x i32> %95, %92
  %101 = sub nsw <8 x i32> %89, %98
  %102 = sub nsw <8 x i32> %92, %95
  %103 = sub nsw <8 x i32> %87, %88
  %104 = sub nsw <8 x i32> %90, %91
  %105 = sub nsw <8 x i32> %93, %94
  %106 = sub nsw <8 x i32> %96, %97
  %107 = ashr <8 x i32> %103, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %108 = add nsw <8 x i32> %107, %103
  %109 = add nsw <8 x i32> %108, %104
  %110 = add nsw <8 x i32> %109, %105
  %111 = ashr <8 x i32> %105, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %112 = add nsw <8 x i32> %105, %111
  %113 = add nsw <8 x i32> %112, %106
  %114 = sub nsw <8 x i32> %103, %113
  %115 = ashr <8 x i32> %104, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %116 = add nsw <8 x i32> %104, %115
  %117 = sub nsw <8 x i32> %103, %116
  %118 = add nsw <8 x i32> %117, %106
  %119 = sub nsw <8 x i32> %104, %105
  %120 = ashr <8 x i32> %106, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %121 = add nsw <8 x i32> %106, %119
  %122 = add nsw <8 x i32> %121, %120
  %123 = add nsw <8 x i32> %99, %100
  %124 = trunc <8 x i32> %123 to <8 x i16>
  store <8 x i16> %124, ptr %0, align 2, !tbaa !25
  %125 = lshr <8 x i32> %122, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %126 = add nsw <8 x i32> %125, %110
  %127 = trunc <8 x i32> %126 to <8 x i16>
  %128 = getelementptr inbounds i16, ptr %0, i64 8
  store <8 x i16> %127, ptr %128, align 2, !tbaa !25
  %129 = lshr <8 x i32> %102, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %130 = add <8 x i32> %101, %129
  %131 = trunc <8 x i32> %130 to <8 x i16>
  %132 = getelementptr inbounds i16, ptr %0, i64 16
  store <8 x i16> %131, ptr %132, align 2, !tbaa !25
  %133 = lshr <8 x i32> %118, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %134 = add nsw <8 x i32> %114, %133
  %135 = trunc <8 x i32> %134 to <8 x i16>
  %136 = getelementptr inbounds i16, ptr %0, i64 24
  store <8 x i16> %135, ptr %136, align 2, !tbaa !25
  %137 = sub nsw <8 x i32> %99, %100
  %138 = trunc <8 x i32> %137 to <8 x i16>
  %139 = getelementptr inbounds i16, ptr %0, i64 32
  store <8 x i16> %138, ptr %139, align 2, !tbaa !25
  %140 = lshr <8 x i32> %114, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %141 = sub nsw <8 x i32> %118, %140
  %142 = trunc <8 x i32> %141 to <8 x i16>
  %143 = getelementptr inbounds i16, ptr %0, i64 40
  store <8 x i16> %142, ptr %143, align 2, !tbaa !25
  %144 = lshr <8 x i32> %101, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %145 = sub <8 x i32> %144, %102
  %146 = trunc <8 x i32> %145 to <8 x i16>
  %147 = getelementptr inbounds i16, ptr %0, i64 48
  store <8 x i16> %146, ptr %147, align 2, !tbaa !25
  %148 = lshr <8 x i32> %110, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %149 = sub nsw <8 x i32> %148, %122
  %150 = trunc <8 x i32> %149 to <8 x i16>
  %151 = getelementptr inbounds i16, ptr %0, i64 56
  store <8 x i16> %150, ptr %151, align 2, !tbaa !25
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #9
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @add8x8_idct8(ptr nocapture noundef %0, ptr nocapture noundef %1) #3 {
  %3 = load i16, ptr %1, align 2, !tbaa !25
  %4 = add i16 %3, 32
  store i16 %4, ptr %1, align 2, !tbaa !25
  %5 = load <8 x i16>, ptr %1, align 2, !tbaa !25
  %6 = zext <8 x i16> %5 to <8 x i32>
  %7 = getelementptr inbounds i16, ptr %1, i64 32
  %8 = load <8 x i16>, ptr %7, align 2, !tbaa !25
  %9 = zext <8 x i16> %8 to <8 x i32>
  %10 = add nuw nsw <8 x i32> %9, %6
  %11 = sub nsw <8 x i32> %6, %9
  %12 = getelementptr inbounds i16, ptr %1, i64 16
  %13 = load <8 x i16>, ptr %12, align 2, !tbaa !25
  %14 = sext <8 x i16> %13 to <8 x i32>
  %15 = ashr <8 x i32> %14, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %16 = getelementptr inbounds i16, ptr %1, i64 48
  %17 = load <8 x i16>, ptr %16, align 2, !tbaa !25
  %18 = sext <8 x i16> %17 to <8 x i32>
  %19 = sub nsw <8 x i32> %15, %18
  %20 = ashr <8 x i32> %18, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %21 = add nsw <8 x i32> %20, %14
  %22 = add nsw <8 x i32> %21, %10
  %23 = add nsw <8 x i32> %19, %11
  %24 = sub nsw <8 x i32> %11, %19
  %25 = sub nsw <8 x i32> %10, %21
  %26 = getelementptr inbounds i16, ptr %1, i64 24
  %27 = load <8 x i16>, ptr %26, align 2, !tbaa !25
  %28 = sext <8 x i16> %27 to <8 x i32>
  %29 = getelementptr inbounds i16, ptr %1, i64 40
  %30 = load <8 x i16>, ptr %29, align 2, !tbaa !25
  %31 = sext <8 x i16> %30 to <8 x i32>
  %32 = getelementptr inbounds i16, ptr %1, i64 56
  %33 = load <8 x i16>, ptr %32, align 2, !tbaa !25
  %34 = sext <8 x i16> %33 to <8 x i32>
  %35 = ashr <8 x i32> %34, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %36 = add nsw <8 x i32> %28, %34
  %37 = add nsw <8 x i32> %36, %35
  %38 = sub nsw <8 x i32> %31, %37
  %39 = getelementptr inbounds i16, ptr %1, i64 8
  %40 = load <8 x i16>, ptr %39, align 2, !tbaa !25
  %41 = sext <8 x i16> %40 to <8 x i32>
  %42 = ashr <8 x i32> %28, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %43 = add nsw <8 x i32> %42, %28
  %44 = sub nsw <8 x i32> %34, %43
  %45 = add nsw <8 x i32> %44, %41
  %46 = ashr <8 x i32> %31, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %47 = add nsw <8 x i32> %34, %31
  %48 = add nsw <8 x i32> %47, %46
  %49 = sub nsw <8 x i32> %48, %41
  %50 = add nsw <8 x i32> %31, %28
  %51 = add nsw <8 x i32> %50, %41
  %52 = ashr <8 x i32> %41, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %53 = add nsw <8 x i32> %51, %52
  %54 = ashr <8 x i32> %53, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %55 = add nsw <8 x i32> %54, %38
  %56 = ashr <8 x i32> %49, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %57 = add nsw <8 x i32> %56, %45
  %58 = ashr <8 x i32> %45, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %59 = sub nsw <8 x i32> %58, %49
  %60 = ashr <8 x i32> %38, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %61 = sub nsw <8 x i32> %53, %60
  %62 = add nsw <8 x i32> %61, %22
  %63 = trunc <8 x i32> %62 to <8 x i16>
  store <8 x i16> %63, ptr %1, align 2, !tbaa !25
  %64 = add nsw <8 x i32> %59, %23
  %65 = trunc <8 x i32> %64 to <8 x i16>
  store <8 x i16> %65, ptr %39, align 2, !tbaa !25
  %66 = add nsw <8 x i32> %57, %24
  %67 = trunc <8 x i32> %66 to <8 x i16>
  store <8 x i16> %67, ptr %12, align 2, !tbaa !25
  %68 = add nsw <8 x i32> %55, %25
  %69 = trunc <8 x i32> %68 to <8 x i16>
  store <8 x i16> %69, ptr %26, align 2, !tbaa !25
  %70 = sub nsw <8 x i32> %25, %55
  %71 = trunc <8 x i32> %70 to <8 x i16>
  store <8 x i16> %71, ptr %7, align 2, !tbaa !25
  %72 = sub nsw <8 x i32> %24, %57
  %73 = trunc <8 x i32> %72 to <8 x i16>
  store <8 x i16> %73, ptr %29, align 2, !tbaa !25
  %74 = sub nsw <8 x i32> %23, %59
  %75 = trunc <8 x i32> %74 to <8 x i16>
  store <8 x i16> %75, ptr %16, align 2, !tbaa !25
  %76 = sub nsw <8 x i32> %22, %61
  %77 = trunc <8 x i32> %76 to <8 x i16>
  store <8 x i16> %77, ptr %32, align 2, !tbaa !25
  br label %79

78:                                               ; preds = %79
  ret void

79:                                               ; preds = %2, %79
  %80 = phi i64 [ %210, %79 ], [ 0, %2 ]
  %81 = shl nuw nsw i64 %80, 3
  %82 = getelementptr inbounds i16, ptr %1, i64 %81
  %83 = load i16, ptr %82, align 2, !tbaa !25
  %84 = sext i16 %83 to i32
  %85 = or disjoint i64 %81, 4
  %86 = getelementptr inbounds i16, ptr %1, i64 %85
  %87 = load i16, ptr %86, align 2, !tbaa !25
  %88 = sext i16 %87 to i32
  %89 = add nsw i32 %88, %84
  %90 = sub nsw i32 %84, %88
  %91 = or disjoint i64 %81, 2
  %92 = getelementptr inbounds i16, ptr %1, i64 %91
  %93 = load i16, ptr %92, align 2, !tbaa !25
  %94 = sext i16 %93 to i32
  %95 = ashr i32 %94, 1
  %96 = or disjoint i64 %81, 6
  %97 = getelementptr inbounds i16, ptr %1, i64 %96
  %98 = load i16, ptr %97, align 2, !tbaa !25
  %99 = sext i16 %98 to i32
  %100 = sub nsw i32 %95, %99
  %101 = ashr i32 %99, 1
  %102 = add nsw i32 %101, %94
  %103 = add nsw i32 %102, %89
  %104 = add nsw i32 %100, %90
  %105 = sub nsw i32 %90, %100
  %106 = sub nsw i32 %89, %102
  %107 = or disjoint i64 %81, 3
  %108 = getelementptr inbounds i16, ptr %1, i64 %107
  %109 = load i16, ptr %108, align 2, !tbaa !25
  %110 = sext i16 %109 to i32
  %111 = or disjoint i64 %81, 5
  %112 = getelementptr inbounds i16, ptr %1, i64 %111
  %113 = load i16, ptr %112, align 2, !tbaa !25
  %114 = sext i16 %113 to i32
  %115 = or disjoint i64 %81, 7
  %116 = getelementptr inbounds i16, ptr %1, i64 %115
  %117 = load i16, ptr %116, align 2, !tbaa !25
  %118 = sext i16 %117 to i32
  %119 = ashr i32 %118, 1
  %120 = add nsw i32 %110, %118
  %121 = add nsw i32 %120, %119
  %122 = sub nsw i32 %114, %121
  %123 = or disjoint i64 %81, 1
  %124 = getelementptr inbounds i16, ptr %1, i64 %123
  %125 = load i16, ptr %124, align 2, !tbaa !25
  %126 = sext i16 %125 to i32
  %127 = ashr i32 %110, 1
  %128 = add nsw i32 %127, %110
  %129 = sub nsw i32 %118, %128
  %130 = add nsw i32 %129, %126
  %131 = ashr i32 %114, 1
  %132 = add nsw i32 %118, %114
  %133 = add nsw i32 %132, %131
  %134 = sub nsw i32 %133, %126
  %135 = add nsw i32 %114, %110
  %136 = add nsw i32 %135, %126
  %137 = ashr i32 %126, 1
  %138 = add nsw i32 %136, %137
  %139 = ashr i32 %138, 2
  %140 = add nsw i32 %139, %122
  %141 = ashr i32 %134, 2
  %142 = add nsw i32 %141, %130
  %143 = ashr i32 %130, 2
  %144 = sub nsw i32 %143, %134
  %145 = ashr i32 %122, 2
  %146 = sub nsw i32 %138, %145
  %147 = getelementptr inbounds i8, ptr %0, i64 %80
  %148 = load i8, ptr %147, align 1, !tbaa !30
  %149 = zext i8 %148 to i32
  %150 = add nsw i32 %146, %103
  %151 = ashr i32 %150, 6
  %152 = add nsw i32 %151, %149
  %153 = tail call fastcc zeroext i8 @x264_clip_uint8(i32 noundef %152) #10
  store i8 %153, ptr %147, align 1, !tbaa !30
  %154 = or disjoint i64 %80, 32
  %155 = getelementptr inbounds i8, ptr %0, i64 %154
  %156 = load i8, ptr %155, align 1, !tbaa !30
  %157 = zext i8 %156 to i32
  %158 = add nsw i32 %144, %104
  %159 = ashr i32 %158, 6
  %160 = add nsw i32 %159, %157
  %161 = tail call fastcc zeroext i8 @x264_clip_uint8(i32 noundef %160) #10
  store i8 %161, ptr %155, align 1, !tbaa !30
  %162 = or disjoint i64 %80, 64
  %163 = getelementptr inbounds i8, ptr %0, i64 %162
  %164 = load i8, ptr %163, align 1, !tbaa !30
  %165 = zext i8 %164 to i32
  %166 = add nsw i32 %142, %105
  %167 = ashr i32 %166, 6
  %168 = add nsw i32 %167, %165
  %169 = tail call fastcc zeroext i8 @x264_clip_uint8(i32 noundef %168) #10
  store i8 %169, ptr %163, align 1, !tbaa !30
  %170 = or disjoint i64 %80, 96
  %171 = getelementptr inbounds i8, ptr %0, i64 %170
  %172 = load i8, ptr %171, align 1, !tbaa !30
  %173 = zext i8 %172 to i32
  %174 = add nsw i32 %140, %106
  %175 = ashr i32 %174, 6
  %176 = add nsw i32 %175, %173
  %177 = tail call fastcc zeroext i8 @x264_clip_uint8(i32 noundef %176) #10
  store i8 %177, ptr %171, align 1, !tbaa !30
  %178 = or disjoint i64 %80, 128
  %179 = getelementptr inbounds i8, ptr %0, i64 %178
  %180 = load i8, ptr %179, align 1, !tbaa !30
  %181 = zext i8 %180 to i32
  %182 = sub nsw i32 %106, %140
  %183 = ashr i32 %182, 6
  %184 = add nsw i32 %183, %181
  %185 = tail call fastcc zeroext i8 @x264_clip_uint8(i32 noundef %184) #10
  store i8 %185, ptr %179, align 1, !tbaa !30
  %186 = or disjoint i64 %80, 160
  %187 = getelementptr inbounds i8, ptr %0, i64 %186
  %188 = load i8, ptr %187, align 1, !tbaa !30
  %189 = zext i8 %188 to i32
  %190 = sub nsw i32 %105, %142
  %191 = ashr i32 %190, 6
  %192 = add nsw i32 %191, %189
  %193 = tail call fastcc zeroext i8 @x264_clip_uint8(i32 noundef %192) #10
  store i8 %193, ptr %187, align 1, !tbaa !30
  %194 = or disjoint i64 %80, 192
  %195 = getelementptr inbounds i8, ptr %0, i64 %194
  %196 = load i8, ptr %195, align 1, !tbaa !30
  %197 = zext i8 %196 to i32
  %198 = sub nsw i32 %104, %144
  %199 = ashr i32 %198, 6
  %200 = add nsw i32 %199, %197
  %201 = tail call fastcc zeroext i8 @x264_clip_uint8(i32 noundef %200) #10
  store i8 %201, ptr %195, align 1, !tbaa !30
  %202 = or disjoint i64 %80, 224
  %203 = getelementptr inbounds i8, ptr %0, i64 %202
  %204 = load i8, ptr %203, align 1, !tbaa !30
  %205 = zext i8 %204 to i32
  %206 = sub nsw i32 %103, %146
  %207 = ashr i32 %206, 6
  %208 = add nsw i32 %207, %205
  %209 = tail call fastcc zeroext i8 @x264_clip_uint8(i32 noundef %208) #10
  store i8 %209, ptr %203, align 1, !tbaa !30
  %210 = add nuw nsw i64 %80, 1
  %211 = icmp eq i64 %210, 8
  br i1 %211, label %78, label %79, !llvm.loop !34
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @sub16x16_dct8(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #1 {
  tail call void @sub8x8_dct8(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  %4 = getelementptr inbounds [64 x i16], ptr %0, i64 1
  %5 = getelementptr inbounds i8, ptr %1, i64 8
  %6 = getelementptr inbounds i8, ptr %2, i64 8
  tail call void @sub8x8_dct8(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #10
  %7 = getelementptr inbounds [64 x i16], ptr %0, i64 2
  %8 = getelementptr inbounds i8, ptr %1, i64 128
  %9 = getelementptr inbounds i8, ptr %2, i64 256
  tail call void @sub8x8_dct8(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #10
  %10 = getelementptr inbounds [64 x i16], ptr %0, i64 3
  %11 = getelementptr inbounds i8, ptr %1, i64 136
  %12 = getelementptr inbounds i8, ptr %2, i64 264
  tail call void @sub8x8_dct8(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12) #10
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @add16x16_idct8(ptr nocapture noundef %0, ptr nocapture noundef %1) #3 {
  tail call void @add8x8_idct8(ptr noundef %0, ptr noundef %1) #10
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = getelementptr inbounds [64 x i16], ptr %1, i64 1
  tail call void @add8x8_idct8(ptr noundef nonnull %3, ptr noundef nonnull %4) #10
  %5 = getelementptr inbounds i8, ptr %0, i64 256
  %6 = getelementptr inbounds [64 x i16], ptr %1, i64 2
  tail call void @add8x8_idct8(ptr noundef nonnull %5, ptr noundef nonnull %6) #10
  %7 = getelementptr inbounds i8, ptr %0, i64 264
  %8 = getelementptr inbounds [64 x i16], ptr %1, i64 3
  tail call void @add8x8_idct8(ptr noundef nonnull %7, ptr noundef nonnull %8) #10
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @dct4x4dc(ptr nocapture noundef %0) #3 {
  %2 = load <16 x i16>, ptr %0, align 2, !tbaa !25
  %3 = shufflevector <16 x i16> %2, <16 x i16> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %4 = shufflevector <16 x i16> %2, <16 x i16> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %5 = shufflevector <16 x i16> %2, <16 x i16> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %6 = shufflevector <16 x i16> %2, <16 x i16> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %7 = zext <4 x i16> %3 to <4 x i32>
  %8 = zext <4 x i16> %4 to <4 x i32>
  %9 = add nuw nsw <4 x i32> %8, %7
  %10 = sub nsw <4 x i32> %7, %8
  %11 = zext <4 x i16> %5 to <4 x i32>
  %12 = zext <4 x i16> %6 to <4 x i32>
  %13 = add nuw nsw <4 x i32> %12, %11
  %14 = sub nsw <4 x i32> %11, %12
  %15 = add nuw nsw <4 x i32> %13, %9
  %16 = trunc <4 x i32> %15 to <4 x i16>
  %17 = shufflevector <4 x i16> %16, <4 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %18 = sub nsw <4 x i32> %9, %13
  %19 = trunc <4 x i32> %18 to <4 x i16>
  %20 = shufflevector <4 x i16> %19, <4 x i16> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %21 = shufflevector <16 x i16> %17, <16 x i16> %20, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %22 = sub nsw <4 x i32> %10, %14
  %23 = trunc <4 x i32> %22 to <4 x i16>
  %24 = shufflevector <4 x i16> %23, <4 x i16> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %25 = shufflevector <16 x i16> %21, <16 x i16> %24, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 24, i32 25, i32 26, i32 27, i32 poison, i32 poison, i32 poison, i32 poison>
  %26 = add nsw <4 x i32> %14, %10
  %27 = trunc <4 x i32> %26 to <4 x i16>
  %28 = shufflevector <4 x i16> %27, <4 x i16> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3>
  %29 = shufflevector <16 x i16> %25, <16 x i16> %28, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 28, i32 29, i32 30, i32 31>
  %30 = shufflevector <16 x i16> %29, <16 x i16> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %31 = shufflevector <16 x i16> %29, <16 x i16> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %32 = shufflevector <16 x i16> %29, <16 x i16> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %33 = shufflevector <16 x i16> %29, <16 x i16> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %34 = sext <4 x i16> %30 to <4 x i32>
  %35 = sext <4 x i16> %31 to <4 x i32>
  %36 = add nsw <4 x i32> %35, %34
  %37 = sub nsw <4 x i32> %34, %35
  %38 = sext <4 x i16> %32 to <4 x i32>
  %39 = sext <4 x i16> %33 to <4 x i32>
  %40 = add nsw <4 x i32> %39, %38
  %41 = sub nsw <4 x i32> %38, %39
  %42 = add nsw <4 x i32> %36, <i32 1, i32 1, i32 1, i32 1>
  %43 = add nsw <4 x i32> %42, %40
  %44 = lshr <4 x i32> %43, <i32 1, i32 1, i32 1, i32 1>
  %45 = trunc <4 x i32> %44 to <4 x i16>
  %46 = sub nsw <4 x i32> %42, %40
  %47 = lshr <4 x i32> %46, <i32 1, i32 1, i32 1, i32 1>
  %48 = trunc <4 x i32> %47 to <4 x i16>
  %49 = add nsw <4 x i32> %37, <i32 1, i32 1, i32 1, i32 1>
  %50 = sub nsw <4 x i32> %49, %41
  %51 = lshr <4 x i32> %50, <i32 1, i32 1, i32 1, i32 1>
  %52 = trunc <4 x i32> %51 to <4 x i16>
  %53 = add nsw <4 x i32> %49, %41
  %54 = lshr <4 x i32> %53, <i32 1, i32 1, i32 1, i32 1>
  %55 = trunc <4 x i32> %54 to <4 x i16>
  %56 = shufflevector <4 x i16> %45, <4 x i16> %48, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %57 = shufflevector <4 x i16> %52, <4 x i16> %55, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %58 = shufflevector <8 x i16> %56, <8 x i16> %57, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i16> %58, ptr %0, align 2, !tbaa !25
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @idct4x4dc(ptr nocapture noundef %0) #3 {
  %2 = alloca [16 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #9
  %3 = load <16 x i16>, ptr %0, align 2, !tbaa !25
  %4 = shufflevector <16 x i16> %3, <16 x i16> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %5 = shufflevector <16 x i16> %3, <16 x i16> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %6 = shufflevector <16 x i16> %3, <16 x i16> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %7 = shufflevector <16 x i16> %3, <16 x i16> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %8 = zext <4 x i16> %4 to <4 x i32>
  %9 = zext <4 x i16> %5 to <4 x i32>
  %10 = add nuw nsw <4 x i32> %9, %8
  %11 = sub nsw <4 x i32> %8, %9
  %12 = zext <4 x i16> %6 to <4 x i32>
  %13 = zext <4 x i16> %7 to <4 x i32>
  %14 = add nuw nsw <4 x i32> %13, %12
  %15 = sub nsw <4 x i32> %12, %13
  %16 = add nuw nsw <4 x i32> %14, %10
  %17 = trunc <4 x i32> %16 to <4 x i16>
  store <4 x i16> %17, ptr %2, align 16, !tbaa !25
  %18 = sub nsw <4 x i32> %10, %14
  %19 = trunc <4 x i32> %18 to <4 x i16>
  %20 = getelementptr inbounds [16 x i16], ptr %2, i64 0, i64 4
  store <4 x i16> %19, ptr %20, align 8, !tbaa !25
  %21 = sub nsw <4 x i32> %11, %15
  %22 = trunc <4 x i32> %21 to <4 x i16>
  %23 = getelementptr inbounds [16 x i16], ptr %2, i64 0, i64 8
  store <4 x i16> %22, ptr %23, align 16, !tbaa !25
  %24 = add nsw <4 x i32> %15, %11
  %25 = trunc <4 x i32> %24 to <4 x i16>
  %26 = getelementptr inbounds [16 x i16], ptr %2, i64 0, i64 12
  store <4 x i16> %25, ptr %26, align 8, !tbaa !25
  br label %28

27:                                               ; preds = %28
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #9
  ret void

28:                                               ; preds = %1, %28
  %29 = phi i64 [ %62, %28 ], [ 0, %1 ]
  %30 = shl nuw nsw i64 %29, 2
  %31 = getelementptr inbounds [16 x i16], ptr %2, i64 0, i64 %30
  %32 = load i16, ptr %31, align 8, !tbaa !25
  %33 = zext i16 %32 to i32
  %34 = or disjoint i64 %30, 1
  %35 = getelementptr inbounds [16 x i16], ptr %2, i64 0, i64 %34
  %36 = load i16, ptr %35, align 2, !tbaa !25
  %37 = zext i16 %36 to i32
  %38 = add nuw nsw i32 %37, %33
  %39 = sub nsw i32 %33, %37
  %40 = or disjoint i64 %30, 2
  %41 = getelementptr inbounds [16 x i16], ptr %2, i64 0, i64 %40
  %42 = load i16, ptr %41, align 4, !tbaa !25
  %43 = zext i16 %42 to i32
  %44 = or disjoint i64 %30, 3
  %45 = getelementptr inbounds [16 x i16], ptr %2, i64 0, i64 %44
  %46 = load i16, ptr %45, align 2, !tbaa !25
  %47 = zext i16 %46 to i32
  %48 = add nuw nsw i32 %47, %43
  %49 = sub nsw i32 %43, %47
  %50 = add nuw nsw i32 %48, %38
  %51 = trunc i32 %50 to i16
  %52 = getelementptr inbounds i16, ptr %0, i64 %30
  store i16 %51, ptr %52, align 2, !tbaa !25
  %53 = sub nsw i32 %38, %48
  %54 = trunc i32 %53 to i16
  %55 = getelementptr inbounds i16, ptr %0, i64 %34
  store i16 %54, ptr %55, align 2, !tbaa !25
  %56 = sub nsw i32 %39, %49
  %57 = trunc i32 %56 to i16
  %58 = getelementptr inbounds i16, ptr %0, i64 %40
  store i16 %57, ptr %58, align 2, !tbaa !25
  %59 = add nsw i32 %49, %39
  %60 = trunc i32 %59 to i16
  %61 = getelementptr inbounds i16, ptr %0, i64 %44
  store i16 %60, ptr %61, align 2, !tbaa !25
  %62 = add nuw nsw i64 %29, 1
  %63 = icmp eq i64 %62, 4
  br i1 %63, label %27, label %28, !llvm.loop !35
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @pixel_sub_wxh(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #1 {
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %4
  %7 = zext nneg i32 %1 to i64
  br label %8

8:                                                ; preds = %17, %6
  %9 = phi i64 [ 0, %6 ], [ %20, %17 ]
  %10 = phi ptr [ %2, %6 ], [ %18, %17 ]
  %11 = phi ptr [ %3, %6 ], [ %19, %17 ]
  %12 = trunc i64 %9 to i32
  %13 = mul i32 %12, %1
  %14 = zext i32 %13 to i64
  %15 = getelementptr i16, ptr %0, i64 %14
  br label %22

16:                                               ; preds = %17, %4
  ret void

17:                                               ; preds = %22
  %18 = getelementptr inbounds i8, ptr %10, i64 16
  %19 = getelementptr inbounds i8, ptr %11, i64 32
  %20 = add nuw nsw i64 %9, 1
  %21 = icmp eq i64 %20, %7
  br i1 %21, label %16, label %8, !llvm.loop !36

22:                                               ; preds = %8, %22
  %23 = phi i64 [ 0, %8 ], [ %32, %22 ]
  %24 = getelementptr inbounds i8, ptr %10, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !30
  %26 = zext i8 %25 to i16
  %27 = getelementptr inbounds i8, ptr %11, i64 %23
  %28 = load i8, ptr %27, align 1, !tbaa !30
  %29 = zext i8 %28 to i16
  %30 = sub nsw i16 %26, %29
  %31 = getelementptr i16, ptr %15, i64 %23
  store i16 %30, ptr %31, align 2, !tbaa !25
  %32 = add nuw nsw i64 %23, 1
  %33 = icmp eq i64 %32, %7
  br i1 %33, label %17, label %22, !llvm.loop !37
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @x264_clip_uint8(i32 noundef %0) unnamed_addr #5 {
  %2 = icmp ult i32 %0, 256
  %3 = icmp sgt i32 %0, 0
  %4 = sext i1 %3 to i32
  %5 = select i1 %2, i32 %0, i32 %4
  %6 = trunc i32 %5 to i8
  ret i8 %6
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @sub4x4_dct_dc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = alloca [16 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #9
  call fastcc void @pixel_sub_wxh(ptr noundef nonnull %3, i32 noundef 4, ptr noundef %0, ptr noundef %1) #10
  %4 = load <16 x i16>, ptr %3, align 16, !tbaa !25
  %5 = sext <16 x i16> %4 to <16 x i32>
  %6 = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %5)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #9
  ret i32 %6
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @add4x4_idct_dc(ptr nocapture noundef %0, i16 noundef signext %1) unnamed_addr #2 {
  %3 = sext i16 %1 to i32
  %4 = add nsw i32 %3, 32
  %5 = ashr i32 %4, 6
  br label %7

6:                                                ; preds = %7
  ret void

7:                                                ; preds = %2, %7
  %8 = phi i32 [ 0, %2 ], [ %29, %7 ]
  %9 = phi ptr [ %0, %2 ], [ %30, %7 ]
  %10 = load i8, ptr %9, align 1, !tbaa !30
  %11 = zext i8 %10 to i32
  %12 = add nsw i32 %5, %11
  %13 = tail call fastcc zeroext i8 @x264_clip_uint8(i32 noundef %12) #10
  store i8 %13, ptr %9, align 1, !tbaa !30
  %14 = getelementptr inbounds i8, ptr %9, i64 1
  %15 = load i8, ptr %14, align 1, !tbaa !30
  %16 = zext i8 %15 to i32
  %17 = add nsw i32 %5, %16
  %18 = tail call fastcc zeroext i8 @x264_clip_uint8(i32 noundef %17) #10
  store i8 %18, ptr %14, align 1, !tbaa !30
  %19 = getelementptr inbounds i8, ptr %9, i64 2
  %20 = load i8, ptr %19, align 1, !tbaa !30
  %21 = zext i8 %20 to i32
  %22 = add nsw i32 %5, %21
  %23 = tail call fastcc zeroext i8 @x264_clip_uint8(i32 noundef %22) #10
  store i8 %23, ptr %19, align 1, !tbaa !30
  %24 = getelementptr inbounds i8, ptr %9, i64 3
  %25 = load i8, ptr %24, align 1, !tbaa !30
  %26 = zext i8 %25 to i32
  %27 = add nsw i32 %5, %26
  %28 = tail call fastcc zeroext i8 @x264_clip_uint8(i32 noundef %27) #10
  store i8 %28, ptr %24, align 1, !tbaa !30
  %29 = add nuw nsw i32 %8, 1
  %30 = getelementptr inbounds i8, ptr %9, i64 32
  %31 = icmp eq i32 %29, 4
  br i1 %31, label %6, label %7, !llvm.loop !38
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @x264_dct_init_weights() local_unnamed_addr #6 {
  br label %1

1:                                                ; preds = %0, %16
  %2 = phi i1 [ true, %0 ], [ false, %16 ]
  %3 = phi i64 [ 0, %0 ], [ 1, %16 ]
  br label %5

4:                                                ; preds = %16
  ret void

5:                                                ; preds = %1, %5
  %6 = phi i64 [ 0, %1 ], [ %14, %5 ]
  %7 = getelementptr inbounds [2 x [16 x i8]], ptr @x264_zigzag_scan4, i64 0, i64 %3, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !30
  %9 = zext i8 %8 to i64
  %10 = getelementptr inbounds [16 x i16], ptr @x264_dct4_weight2_tab, i64 0, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !25
  %12 = zext i16 %11 to i32
  %13 = getelementptr inbounds [2 x [16 x i32]], ptr @x264_dct4_weight2_zigzag, i64 0, i64 %3, i64 %6
  store i32 %12, ptr %13, align 4, !tbaa !39
  %14 = add nuw nsw i64 %6, 1
  %15 = icmp eq i64 %14, 16
  br i1 %15, label %17, label %5, !llvm.loop !41

16:                                               ; preds = %17
  br i1 %2, label %1, label %4, !llvm.loop !42

17:                                               ; preds = %5, %17
  %18 = phi i64 [ %26, %17 ], [ 0, %5 ]
  %19 = getelementptr inbounds [2 x [64 x i8]], ptr @x264_zigzag_scan8, i64 0, i64 %3, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !30
  %21 = zext i8 %20 to i64
  %22 = getelementptr inbounds [64 x i16], ptr @x264_dct8_weight2_tab, i64 0, i64 %21
  %23 = load i16, ptr %22, align 2, !tbaa !25
  %24 = zext i16 %23 to i32
  %25 = getelementptr inbounds [2 x [64 x i32]], ptr @x264_dct8_weight2_zigzag, i64 0, i64 %3, i64 %18
  store i32 %24, ptr %25, align 4, !tbaa !39
  %26 = add nuw nsw i64 %18, 1
  %27 = icmp eq i64 %26, 64
  br i1 %27, label %16, label %17, !llvm.loop !43
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @x264_zigzag_init(i32 noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %3, %5
  %7 = phi ptr [ @zigzag_scan_8x8_frame, %5 ], [ @zigzag_scan_8x8_field, %3 ]
  %8 = phi ptr [ @zigzag_scan_4x4_frame, %5 ], [ @zigzag_scan_4x4_field, %3 ]
  %9 = phi ptr [ @zigzag_sub_8x8_frame, %5 ], [ @zigzag_sub_8x8_field, %3 ]
  %10 = phi ptr [ @zigzag_sub_4x4_frame, %5 ], [ @zigzag_sub_4x4_field, %3 ]
  %11 = phi ptr [ @zigzag_sub_4x4ac_frame, %5 ], [ @zigzag_sub_4x4ac_field, %3 ]
  store ptr %7, ptr %1, align 8
  %12 = getelementptr inbounds %struct.x264_zigzag_function_t, ptr %1, i64 0, i32 1
  store ptr %8, ptr %12, align 8
  %13 = getelementptr inbounds %struct.x264_zigzag_function_t, ptr %1, i64 0, i32 2
  store ptr %9, ptr %13, align 8
  %14 = getelementptr inbounds %struct.x264_zigzag_function_t, ptr %1, i64 0, i32 3
  store ptr %10, ptr %14, align 8
  %15 = getelementptr inbounds %struct.x264_zigzag_function_t, ptr %1, i64 0, i32 4
  store ptr %11, ptr %15, align 8
  %16 = getelementptr inbounds %struct.x264_zigzag_function_t, ptr %1, i64 0, i32 5
  store ptr @zigzag_interleave_8x8_cavlc, ptr %16, align 8, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @zigzag_scan_8x8_field(ptr noundef writeonly %0, ptr noundef readonly %1) #7 {
  %3 = load i16, ptr %1, align 2, !tbaa !25
  store i16 %3, ptr %0, align 2, !tbaa !25
  %4 = getelementptr inbounds i16, ptr %1, i64 1
  %5 = load i16, ptr %4, align 2, !tbaa !25
  %6 = getelementptr inbounds i16, ptr %0, i64 1
  store i16 %5, ptr %6, align 2, !tbaa !25
  %7 = getelementptr inbounds i16, ptr %1, i64 2
  %8 = load i16, ptr %7, align 2, !tbaa !25
  %9 = getelementptr inbounds i16, ptr %0, i64 2
  store i16 %8, ptr %9, align 2, !tbaa !25
  %10 = getelementptr inbounds i16, ptr %1, i64 8
  %11 = load i16, ptr %10, align 2, !tbaa !25
  %12 = getelementptr inbounds i16, ptr %0, i64 3
  store i16 %11, ptr %12, align 2, !tbaa !25
  %13 = getelementptr inbounds i16, ptr %1, i64 9
  %14 = load i16, ptr %13, align 2, !tbaa !25
  %15 = getelementptr inbounds i16, ptr %0, i64 4
  store i16 %14, ptr %15, align 2, !tbaa !25
  %16 = getelementptr inbounds i16, ptr %1, i64 3
  %17 = load i16, ptr %16, align 2, !tbaa !25
  %18 = getelementptr inbounds i16, ptr %0, i64 5
  store i16 %17, ptr %18, align 2, !tbaa !25
  %19 = getelementptr inbounds i16, ptr %1, i64 4
  %20 = load i16, ptr %19, align 2, !tbaa !25
  %21 = getelementptr inbounds i16, ptr %0, i64 6
  store i16 %20, ptr %21, align 2, !tbaa !25
  %22 = getelementptr inbounds i16, ptr %1, i64 10
  %23 = load i16, ptr %22, align 2, !tbaa !25
  %24 = getelementptr inbounds i16, ptr %0, i64 7
  store i16 %23, ptr %24, align 2, !tbaa !25
  %25 = getelementptr inbounds i16, ptr %1, i64 16
  %26 = load i16, ptr %25, align 2, !tbaa !25
  %27 = getelementptr inbounds i16, ptr %0, i64 8
  store i16 %26, ptr %27, align 2, !tbaa !25
  %28 = getelementptr inbounds i16, ptr %1, i64 11
  %29 = load i16, ptr %28, align 2, !tbaa !25
  %30 = getelementptr inbounds i16, ptr %0, i64 9
  store i16 %29, ptr %30, align 2, !tbaa !25
  %31 = getelementptr inbounds i16, ptr %1, i64 5
  %32 = load i16, ptr %31, align 2, !tbaa !25
  %33 = getelementptr inbounds i16, ptr %0, i64 10
  store i16 %32, ptr %33, align 2, !tbaa !25
  %34 = getelementptr inbounds i16, ptr %1, i64 6
  %35 = load i16, ptr %34, align 2, !tbaa !25
  %36 = getelementptr inbounds i16, ptr %0, i64 11
  store i16 %35, ptr %36, align 2, !tbaa !25
  %37 = getelementptr inbounds i16, ptr %1, i64 7
  %38 = load i16, ptr %37, align 2, !tbaa !25
  %39 = getelementptr inbounds i16, ptr %0, i64 12
  store i16 %38, ptr %39, align 2, !tbaa !25
  %40 = getelementptr inbounds i16, ptr %1, i64 12
  %41 = load i16, ptr %40, align 2, !tbaa !25
  %42 = getelementptr inbounds i16, ptr %0, i64 13
  store i16 %41, ptr %42, align 2, !tbaa !25
  %43 = getelementptr inbounds i16, ptr %1, i64 17
  %44 = load i16, ptr %43, align 2, !tbaa !25
  %45 = getelementptr inbounds i16, ptr %0, i64 14
  store i16 %44, ptr %45, align 2, !tbaa !25
  %46 = getelementptr inbounds i16, ptr %1, i64 24
  %47 = load i16, ptr %46, align 2, !tbaa !25
  %48 = getelementptr inbounds i16, ptr %0, i64 15
  store i16 %47, ptr %48, align 2, !tbaa !25
  %49 = getelementptr inbounds i16, ptr %1, i64 18
  %50 = load i16, ptr %49, align 2, !tbaa !25
  %51 = getelementptr inbounds i16, ptr %0, i64 16
  store i16 %50, ptr %51, align 2, !tbaa !25
  %52 = getelementptr inbounds i16, ptr %1, i64 13
  %53 = load i16, ptr %52, align 2, !tbaa !25
  %54 = getelementptr inbounds i16, ptr %0, i64 17
  store i16 %53, ptr %54, align 2, !tbaa !25
  %55 = getelementptr inbounds i16, ptr %1, i64 14
  %56 = load i16, ptr %55, align 2, !tbaa !25
  %57 = getelementptr inbounds i16, ptr %0, i64 18
  store i16 %56, ptr %57, align 2, !tbaa !25
  %58 = getelementptr inbounds i16, ptr %1, i64 15
  %59 = load i16, ptr %58, align 2, !tbaa !25
  %60 = getelementptr inbounds i16, ptr %0, i64 19
  store i16 %59, ptr %60, align 2, !tbaa !25
  %61 = getelementptr inbounds i16, ptr %1, i64 19
  %62 = load i16, ptr %61, align 2, !tbaa !25
  %63 = getelementptr inbounds i16, ptr %0, i64 20
  store i16 %62, ptr %63, align 2, !tbaa !25
  %64 = getelementptr inbounds i16, ptr %1, i64 25
  %65 = load i16, ptr %64, align 2, !tbaa !25
  %66 = getelementptr inbounds i16, ptr %0, i64 21
  store i16 %65, ptr %66, align 2, !tbaa !25
  %67 = getelementptr inbounds i16, ptr %1, i64 32
  %68 = load i16, ptr %67, align 2, !tbaa !25
  %69 = getelementptr inbounds i16, ptr %0, i64 22
  store i16 %68, ptr %69, align 2, !tbaa !25
  %70 = getelementptr inbounds i16, ptr %1, i64 26
  %71 = load i16, ptr %70, align 2, !tbaa !25
  %72 = getelementptr inbounds i16, ptr %0, i64 23
  store i16 %71, ptr %72, align 2, !tbaa !25
  %73 = getelementptr inbounds i16, ptr %1, i64 20
  %74 = load i16, ptr %73, align 2, !tbaa !25
  %75 = getelementptr inbounds i16, ptr %0, i64 24
  store i16 %74, ptr %75, align 2, !tbaa !25
  %76 = getelementptr inbounds i16, ptr %1, i64 21
  %77 = load i16, ptr %76, align 2, !tbaa !25
  %78 = getelementptr inbounds i16, ptr %0, i64 25
  store i16 %77, ptr %78, align 2, !tbaa !25
  %79 = getelementptr inbounds i16, ptr %1, i64 22
  %80 = load i16, ptr %79, align 2, !tbaa !25
  %81 = getelementptr inbounds i16, ptr %0, i64 26
  store i16 %80, ptr %81, align 2, !tbaa !25
  %82 = getelementptr inbounds i16, ptr %1, i64 23
  %83 = load i16, ptr %82, align 2, !tbaa !25
  %84 = getelementptr inbounds i16, ptr %0, i64 27
  store i16 %83, ptr %84, align 2, !tbaa !25
  %85 = getelementptr inbounds i16, ptr %1, i64 27
  %86 = load i16, ptr %85, align 2, !tbaa !25
  %87 = getelementptr inbounds i16, ptr %0, i64 28
  store i16 %86, ptr %87, align 2, !tbaa !25
  %88 = getelementptr inbounds i16, ptr %1, i64 33
  %89 = load i16, ptr %88, align 2, !tbaa !25
  %90 = getelementptr inbounds i16, ptr %0, i64 29
  store i16 %89, ptr %90, align 2, !tbaa !25
  %91 = getelementptr inbounds i16, ptr %1, i64 40
  %92 = load i16, ptr %91, align 2, !tbaa !25
  %93 = getelementptr inbounds i16, ptr %0, i64 30
  store i16 %92, ptr %93, align 2, !tbaa !25
  %94 = getelementptr inbounds i16, ptr %1, i64 34
  %95 = load i16, ptr %94, align 2, !tbaa !25
  %96 = getelementptr inbounds i16, ptr %0, i64 31
  store i16 %95, ptr %96, align 2, !tbaa !25
  %97 = getelementptr inbounds i16, ptr %1, i64 28
  %98 = load i16, ptr %97, align 2, !tbaa !25
  %99 = getelementptr inbounds i16, ptr %0, i64 32
  store i16 %98, ptr %99, align 2, !tbaa !25
  %100 = getelementptr inbounds i16, ptr %1, i64 29
  %101 = load i16, ptr %100, align 2, !tbaa !25
  %102 = getelementptr inbounds i16, ptr %0, i64 33
  store i16 %101, ptr %102, align 2, !tbaa !25
  %103 = getelementptr inbounds i16, ptr %1, i64 30
  %104 = load i16, ptr %103, align 2, !tbaa !25
  %105 = getelementptr inbounds i16, ptr %0, i64 34
  store i16 %104, ptr %105, align 2, !tbaa !25
  %106 = getelementptr inbounds i16, ptr %1, i64 31
  %107 = load i16, ptr %106, align 2, !tbaa !25
  %108 = getelementptr inbounds i16, ptr %0, i64 35
  store i16 %107, ptr %108, align 2, !tbaa !25
  %109 = getelementptr inbounds i16, ptr %1, i64 35
  %110 = load i16, ptr %109, align 2, !tbaa !25
  %111 = getelementptr inbounds i16, ptr %0, i64 36
  store i16 %110, ptr %111, align 2, !tbaa !25
  %112 = getelementptr inbounds i16, ptr %1, i64 41
  %113 = load i16, ptr %112, align 2, !tbaa !25
  %114 = getelementptr inbounds i16, ptr %0, i64 37
  store i16 %113, ptr %114, align 2, !tbaa !25
  %115 = getelementptr inbounds i16, ptr %1, i64 48
  %116 = load i16, ptr %115, align 2, !tbaa !25
  %117 = getelementptr inbounds i16, ptr %0, i64 38
  store i16 %116, ptr %117, align 2, !tbaa !25
  %118 = getelementptr inbounds i16, ptr %1, i64 42
  %119 = load i16, ptr %118, align 2, !tbaa !25
  %120 = getelementptr inbounds i16, ptr %0, i64 39
  store i16 %119, ptr %120, align 2, !tbaa !25
  %121 = getelementptr inbounds i16, ptr %1, i64 36
  %122 = load i16, ptr %121, align 2, !tbaa !25
  %123 = getelementptr inbounds i16, ptr %0, i64 40
  store i16 %122, ptr %123, align 2, !tbaa !25
  %124 = getelementptr inbounds i16, ptr %1, i64 37
  %125 = load i16, ptr %124, align 2, !tbaa !25
  %126 = getelementptr inbounds i16, ptr %0, i64 41
  store i16 %125, ptr %126, align 2, !tbaa !25
  %127 = getelementptr inbounds i16, ptr %1, i64 38
  %128 = load i16, ptr %127, align 2, !tbaa !25
  %129 = getelementptr inbounds i16, ptr %0, i64 42
  store i16 %128, ptr %129, align 2, !tbaa !25
  %130 = getelementptr inbounds i16, ptr %1, i64 39
  %131 = load i16, ptr %130, align 2, !tbaa !25
  %132 = getelementptr inbounds i16, ptr %0, i64 43
  store i16 %131, ptr %132, align 2, !tbaa !25
  %133 = getelementptr inbounds i16, ptr %1, i64 43
  %134 = load i16, ptr %133, align 2, !tbaa !25
  %135 = getelementptr inbounds i16, ptr %0, i64 44
  store i16 %134, ptr %135, align 2, !tbaa !25
  %136 = getelementptr inbounds i16, ptr %1, i64 49
  %137 = load i16, ptr %136, align 2, !tbaa !25
  %138 = getelementptr inbounds i16, ptr %0, i64 45
  store i16 %137, ptr %138, align 2, !tbaa !25
  %139 = getelementptr inbounds i16, ptr %1, i64 50
  %140 = load i16, ptr %139, align 2, !tbaa !25
  %141 = getelementptr inbounds i16, ptr %0, i64 46
  store i16 %140, ptr %141, align 2, !tbaa !25
  %142 = getelementptr inbounds i16, ptr %1, i64 44
  %143 = load i16, ptr %142, align 2, !tbaa !25
  %144 = getelementptr inbounds i16, ptr %0, i64 47
  store i16 %143, ptr %144, align 2, !tbaa !25
  %145 = getelementptr inbounds i16, ptr %1, i64 45
  %146 = load i16, ptr %145, align 2, !tbaa !25
  %147 = getelementptr inbounds i16, ptr %0, i64 48
  store i16 %146, ptr %147, align 2, !tbaa !25
  %148 = getelementptr inbounds i16, ptr %1, i64 46
  %149 = load i16, ptr %148, align 2, !tbaa !25
  %150 = getelementptr inbounds i16, ptr %0, i64 49
  store i16 %149, ptr %150, align 2, !tbaa !25
  %151 = getelementptr inbounds i16, ptr %1, i64 47
  %152 = load i16, ptr %151, align 2, !tbaa !25
  %153 = getelementptr inbounds i16, ptr %0, i64 50
  store i16 %152, ptr %153, align 2, !tbaa !25
  %154 = getelementptr inbounds i16, ptr %1, i64 51
  %155 = load i16, ptr %154, align 2, !tbaa !25
  %156 = getelementptr inbounds i16, ptr %0, i64 51
  store i16 %155, ptr %156, align 2, !tbaa !25
  %157 = getelementptr inbounds i16, ptr %1, i64 56
  %158 = load i16, ptr %157, align 2, !tbaa !25
  %159 = getelementptr inbounds i16, ptr %0, i64 52
  store i16 %158, ptr %159, align 2, !tbaa !25
  %160 = getelementptr inbounds i16, ptr %1, i64 57
  %161 = load i16, ptr %160, align 2, !tbaa !25
  %162 = getelementptr inbounds i16, ptr %0, i64 53
  store i16 %161, ptr %162, align 2, !tbaa !25
  %163 = getelementptr inbounds i16, ptr %1, i64 52
  %164 = load i16, ptr %163, align 2, !tbaa !25
  %165 = getelementptr inbounds i16, ptr %0, i64 54
  store i16 %164, ptr %165, align 2, !tbaa !25
  %166 = getelementptr inbounds i16, ptr %1, i64 53
  %167 = load i16, ptr %166, align 2, !tbaa !25
  %168 = getelementptr inbounds i16, ptr %0, i64 55
  store i16 %167, ptr %168, align 2, !tbaa !25
  %169 = getelementptr inbounds i16, ptr %1, i64 54
  %170 = load i16, ptr %169, align 2, !tbaa !25
  %171 = getelementptr inbounds i16, ptr %0, i64 56
  store i16 %170, ptr %171, align 2, !tbaa !25
  %172 = getelementptr inbounds i16, ptr %1, i64 55
  %173 = load i16, ptr %172, align 2, !tbaa !25
  %174 = getelementptr inbounds i16, ptr %0, i64 57
  store i16 %173, ptr %174, align 2, !tbaa !25
  %175 = getelementptr inbounds i16, ptr %1, i64 58
  %176 = load i16, ptr %175, align 2, !tbaa !25
  %177 = getelementptr inbounds i16, ptr %0, i64 58
  store i16 %176, ptr %177, align 2, !tbaa !25
  %178 = getelementptr inbounds i16, ptr %1, i64 59
  %179 = load i16, ptr %178, align 2, !tbaa !25
  %180 = getelementptr inbounds i16, ptr %0, i64 59
  store i16 %179, ptr %180, align 2, !tbaa !25
  %181 = getelementptr inbounds i16, ptr %1, i64 60
  %182 = load i16, ptr %181, align 2, !tbaa !25
  %183 = getelementptr inbounds i16, ptr %0, i64 60
  store i16 %182, ptr %183, align 2, !tbaa !25
  %184 = getelementptr inbounds i16, ptr %1, i64 61
  %185 = load i16, ptr %184, align 2, !tbaa !25
  %186 = getelementptr inbounds i16, ptr %0, i64 61
  store i16 %185, ptr %186, align 2, !tbaa !25
  %187 = getelementptr inbounds i16, ptr %1, i64 62
  %188 = load i16, ptr %187, align 2, !tbaa !25
  %189 = getelementptr inbounds i16, ptr %0, i64 62
  store i16 %188, ptr %189, align 2, !tbaa !25
  %190 = getelementptr inbounds i16, ptr %1, i64 63
  %191 = load i16, ptr %190, align 2, !tbaa !25
  %192 = getelementptr inbounds i16, ptr %0, i64 63
  store i16 %191, ptr %192, align 2, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @zigzag_scan_4x4_field(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #7 {
  %3 = load i32, ptr %1, align 4, !tbaa !30
  store i32 %3, ptr %0, align 4, !tbaa !30
  %4 = getelementptr inbounds i16, ptr %1, i64 4
  %5 = load i16, ptr %4, align 2, !tbaa !25
  %6 = getelementptr inbounds i16, ptr %0, i64 2
  store i16 %5, ptr %6, align 2, !tbaa !25
  %7 = getelementptr inbounds i16, ptr %1, i64 2
  %8 = load i16, ptr %7, align 2, !tbaa !25
  %9 = getelementptr inbounds i16, ptr %0, i64 3
  store i16 %8, ptr %9, align 2, !tbaa !25
  %10 = getelementptr inbounds i16, ptr %1, i64 3
  %11 = load i16, ptr %10, align 2, !tbaa !25
  %12 = getelementptr inbounds i16, ptr %0, i64 4
  store i16 %11, ptr %12, align 2, !tbaa !25
  %13 = getelementptr inbounds i16, ptr %1, i64 5
  %14 = load i16, ptr %13, align 2, !tbaa !25
  %15 = getelementptr inbounds i16, ptr %0, i64 5
  store i16 %14, ptr %15, align 2, !tbaa !25
  %16 = getelementptr inbounds i16, ptr %1, i64 6
  %17 = load i32, ptr %16, align 4, !tbaa !30
  %18 = getelementptr inbounds i16, ptr %0, i64 6
  store i32 %17, ptr %18, align 4, !tbaa !30
  %19 = getelementptr inbounds i16, ptr %1, i64 8
  %20 = load i64, ptr %19, align 8, !tbaa !30
  %21 = getelementptr inbounds i16, ptr %0, i64 8
  store i64 %20, ptr %21, align 8, !tbaa !30
  %22 = getelementptr inbounds i16, ptr %1, i64 12
  %23 = load i64, ptr %22, align 8, !tbaa !30
  %24 = getelementptr inbounds i16, ptr %0, i64 12
  store i64 %23, ptr %24, align 8, !tbaa !30
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal i32 @zigzag_sub_8x8_field(ptr noundef writeonly %0, ptr noundef readonly %1, ptr noundef %2) #7 {
  %4 = load i8, ptr %1, align 1, !tbaa !30
  %5 = zext i8 %4 to i16
  %6 = load i8, ptr %2, align 1, !tbaa !30
  %7 = zext i8 %6 to i16
  %8 = sub nsw i16 %5, %7
  store i16 %8, ptr %0, align 2, !tbaa !25
  %9 = getelementptr inbounds i8, ptr %1, i64 16
  %10 = load i8, ptr %9, align 1, !tbaa !30
  %11 = zext i8 %10 to i16
  %12 = getelementptr inbounds i8, ptr %2, i64 32
  %13 = load i8, ptr %12, align 1, !tbaa !30
  %14 = zext i8 %13 to i16
  %15 = sub nsw i16 %11, %14
  %16 = getelementptr inbounds i16, ptr %0, i64 1
  store i16 %15, ptr %16, align 2, !tbaa !25
  %17 = or i16 %15, %8
  %18 = getelementptr inbounds i8, ptr %1, i64 32
  %19 = load i8, ptr %18, align 1, !tbaa !30
  %20 = zext i8 %19 to i16
  %21 = getelementptr inbounds i8, ptr %2, i64 64
  %22 = load i8, ptr %21, align 1, !tbaa !30
  %23 = zext i8 %22 to i16
  %24 = sub nsw i16 %20, %23
  %25 = getelementptr inbounds i16, ptr %0, i64 2
  store i16 %24, ptr %25, align 2, !tbaa !25
  %26 = or i16 %17, %24
  %27 = getelementptr inbounds i8, ptr %1, i64 1
  %28 = load i8, ptr %27, align 1, !tbaa !30
  %29 = zext i8 %28 to i16
  %30 = getelementptr inbounds i8, ptr %2, i64 1
  %31 = load i8, ptr %30, align 1, !tbaa !30
  %32 = zext i8 %31 to i16
  %33 = sub nsw i16 %29, %32
  %34 = getelementptr inbounds i16, ptr %0, i64 3
  store i16 %33, ptr %34, align 2, !tbaa !25
  %35 = or i16 %26, %33
  %36 = getelementptr inbounds i8, ptr %1, i64 17
  %37 = load i8, ptr %36, align 1, !tbaa !30
  %38 = zext i8 %37 to i16
  %39 = getelementptr inbounds i8, ptr %2, i64 33
  %40 = load i8, ptr %39, align 1, !tbaa !30
  %41 = zext i8 %40 to i16
  %42 = sub nsw i16 %38, %41
  %43 = getelementptr inbounds i16, ptr %0, i64 4
  store i16 %42, ptr %43, align 2, !tbaa !25
  %44 = or i16 %35, %42
  %45 = getelementptr inbounds i8, ptr %1, i64 48
  %46 = load i8, ptr %45, align 1, !tbaa !30
  %47 = zext i8 %46 to i16
  %48 = getelementptr inbounds i8, ptr %2, i64 96
  %49 = load i8, ptr %48, align 1, !tbaa !30
  %50 = zext i8 %49 to i16
  %51 = sub nsw i16 %47, %50
  %52 = getelementptr inbounds i16, ptr %0, i64 5
  store i16 %51, ptr %52, align 2, !tbaa !25
  %53 = or i16 %44, %51
  %54 = getelementptr inbounds i8, ptr %1, i64 64
  %55 = load i8, ptr %54, align 1, !tbaa !30
  %56 = zext i8 %55 to i16
  %57 = getelementptr inbounds i8, ptr %2, i64 128
  %58 = load i8, ptr %57, align 1, !tbaa !30
  %59 = zext i8 %58 to i16
  %60 = sub nsw i16 %56, %59
  %61 = getelementptr inbounds i16, ptr %0, i64 6
  store i16 %60, ptr %61, align 2, !tbaa !25
  %62 = or i16 %53, %60
  %63 = getelementptr inbounds i8, ptr %1, i64 33
  %64 = load i8, ptr %63, align 1, !tbaa !30
  %65 = zext i8 %64 to i16
  %66 = getelementptr inbounds i8, ptr %2, i64 65
  %67 = load i8, ptr %66, align 1, !tbaa !30
  %68 = zext i8 %67 to i16
  %69 = sub nsw i16 %65, %68
  %70 = getelementptr inbounds i16, ptr %0, i64 7
  store i16 %69, ptr %70, align 2, !tbaa !25
  %71 = or i16 %62, %69
  %72 = getelementptr inbounds i8, ptr %1, i64 2
  %73 = load i8, ptr %72, align 1, !tbaa !30
  %74 = zext i8 %73 to i16
  %75 = getelementptr inbounds i8, ptr %2, i64 2
  %76 = load i8, ptr %75, align 1, !tbaa !30
  %77 = zext i8 %76 to i16
  %78 = sub nsw i16 %74, %77
  %79 = getelementptr inbounds i16, ptr %0, i64 8
  store i16 %78, ptr %79, align 2, !tbaa !25
  %80 = or i16 %71, %78
  %81 = getelementptr inbounds i8, ptr %1, i64 49
  %82 = load i8, ptr %81, align 1, !tbaa !30
  %83 = zext i8 %82 to i16
  %84 = getelementptr inbounds i8, ptr %2, i64 97
  %85 = load i8, ptr %84, align 1, !tbaa !30
  %86 = zext i8 %85 to i16
  %87 = sub nsw i16 %83, %86
  %88 = getelementptr inbounds i16, ptr %0, i64 9
  store i16 %87, ptr %88, align 2, !tbaa !25
  %89 = or i16 %80, %87
  %90 = getelementptr inbounds i8, ptr %1, i64 80
  %91 = load i8, ptr %90, align 1, !tbaa !30
  %92 = zext i8 %91 to i16
  %93 = getelementptr inbounds i8, ptr %2, i64 160
  %94 = load i8, ptr %93, align 1, !tbaa !30
  %95 = zext i8 %94 to i16
  %96 = sub nsw i16 %92, %95
  %97 = getelementptr inbounds i16, ptr %0, i64 10
  store i16 %96, ptr %97, align 2, !tbaa !25
  %98 = or i16 %89, %96
  %99 = getelementptr inbounds i8, ptr %1, i64 96
  %100 = load i8, ptr %99, align 1, !tbaa !30
  %101 = zext i8 %100 to i16
  %102 = getelementptr inbounds i8, ptr %2, i64 192
  %103 = load i8, ptr %102, align 1, !tbaa !30
  %104 = zext i8 %103 to i16
  %105 = sub nsw i16 %101, %104
  %106 = getelementptr inbounds i16, ptr %0, i64 11
  store i16 %105, ptr %106, align 2, !tbaa !25
  %107 = or i16 %98, %105
  %108 = getelementptr inbounds i8, ptr %1, i64 112
  %109 = load i8, ptr %108, align 1, !tbaa !30
  %110 = zext i8 %109 to i16
  %111 = getelementptr inbounds i8, ptr %2, i64 224
  %112 = load i8, ptr %111, align 1, !tbaa !30
  %113 = zext i8 %112 to i16
  %114 = sub nsw i16 %110, %113
  %115 = getelementptr inbounds i16, ptr %0, i64 12
  store i16 %114, ptr %115, align 2, !tbaa !25
  %116 = or i16 %107, %114
  %117 = getelementptr inbounds i8, ptr %1, i64 65
  %118 = load i8, ptr %117, align 1, !tbaa !30
  %119 = zext i8 %118 to i16
  %120 = getelementptr inbounds i8, ptr %2, i64 129
  %121 = load i8, ptr %120, align 1, !tbaa !30
  %122 = zext i8 %121 to i16
  %123 = sub nsw i16 %119, %122
  %124 = getelementptr inbounds i16, ptr %0, i64 13
  store i16 %123, ptr %124, align 2, !tbaa !25
  %125 = or i16 %116, %123
  %126 = getelementptr inbounds i8, ptr %1, i64 18
  %127 = load i8, ptr %126, align 1, !tbaa !30
  %128 = zext i8 %127 to i16
  %129 = getelementptr inbounds i8, ptr %2, i64 34
  %130 = load i8, ptr %129, align 1, !tbaa !30
  %131 = zext i8 %130 to i16
  %132 = sub nsw i16 %128, %131
  %133 = getelementptr inbounds i16, ptr %0, i64 14
  store i16 %132, ptr %133, align 2, !tbaa !25
  %134 = or i16 %125, %132
  %135 = getelementptr inbounds i8, ptr %1, i64 3
  %136 = load i8, ptr %135, align 1, !tbaa !30
  %137 = zext i8 %136 to i16
  %138 = getelementptr inbounds i8, ptr %2, i64 3
  %139 = load i8, ptr %138, align 1, !tbaa !30
  %140 = zext i8 %139 to i16
  %141 = sub nsw i16 %137, %140
  %142 = getelementptr inbounds i16, ptr %0, i64 15
  store i16 %141, ptr %142, align 2, !tbaa !25
  %143 = or i16 %134, %141
  %144 = getelementptr inbounds i8, ptr %1, i64 34
  %145 = load i8, ptr %144, align 1, !tbaa !30
  %146 = zext i8 %145 to i16
  %147 = getelementptr inbounds i8, ptr %2, i64 66
  %148 = load i8, ptr %147, align 1, !tbaa !30
  %149 = zext i8 %148 to i16
  %150 = sub nsw i16 %146, %149
  %151 = getelementptr inbounds i16, ptr %0, i64 16
  store i16 %150, ptr %151, align 2, !tbaa !25
  %152 = or i16 %143, %150
  %153 = getelementptr inbounds i8, ptr %1, i64 81
  %154 = load i8, ptr %153, align 1, !tbaa !30
  %155 = zext i8 %154 to i16
  %156 = getelementptr inbounds i8, ptr %2, i64 161
  %157 = load i8, ptr %156, align 1, !tbaa !30
  %158 = zext i8 %157 to i16
  %159 = sub nsw i16 %155, %158
  %160 = getelementptr inbounds i16, ptr %0, i64 17
  store i16 %159, ptr %160, align 2, !tbaa !25
  %161 = or i16 %152, %159
  %162 = getelementptr inbounds i8, ptr %1, i64 97
  %163 = load i8, ptr %162, align 1, !tbaa !30
  %164 = zext i8 %163 to i16
  %165 = getelementptr inbounds i8, ptr %2, i64 193
  %166 = load i8, ptr %165, align 1, !tbaa !30
  %167 = zext i8 %166 to i16
  %168 = sub nsw i16 %164, %167
  %169 = getelementptr inbounds i16, ptr %0, i64 18
  store i16 %168, ptr %169, align 2, !tbaa !25
  %170 = or i16 %161, %168
  %171 = getelementptr inbounds i8, ptr %1, i64 113
  %172 = load i8, ptr %171, align 1, !tbaa !30
  %173 = zext i8 %172 to i16
  %174 = getelementptr inbounds i8, ptr %2, i64 225
  %175 = load i8, ptr %174, align 1, !tbaa !30
  %176 = zext i8 %175 to i16
  %177 = sub nsw i16 %173, %176
  %178 = getelementptr inbounds i16, ptr %0, i64 19
  store i16 %177, ptr %178, align 2, !tbaa !25
  %179 = or i16 %170, %177
  %180 = getelementptr inbounds i8, ptr %1, i64 50
  %181 = load i8, ptr %180, align 1, !tbaa !30
  %182 = zext i8 %181 to i16
  %183 = getelementptr inbounds i8, ptr %2, i64 98
  %184 = load i8, ptr %183, align 1, !tbaa !30
  %185 = zext i8 %184 to i16
  %186 = sub nsw i16 %182, %185
  %187 = getelementptr inbounds i16, ptr %0, i64 20
  store i16 %186, ptr %187, align 2, !tbaa !25
  %188 = or i16 %179, %186
  %189 = getelementptr inbounds i8, ptr %1, i64 19
  %190 = load i8, ptr %189, align 1, !tbaa !30
  %191 = zext i8 %190 to i16
  %192 = getelementptr inbounds i8, ptr %2, i64 35
  %193 = load i8, ptr %192, align 1, !tbaa !30
  %194 = zext i8 %193 to i16
  %195 = sub nsw i16 %191, %194
  %196 = getelementptr inbounds i16, ptr %0, i64 21
  store i16 %195, ptr %196, align 2, !tbaa !25
  %197 = or i16 %188, %195
  %198 = getelementptr inbounds i8, ptr %1, i64 4
  %199 = load i8, ptr %198, align 1, !tbaa !30
  %200 = zext i8 %199 to i16
  %201 = getelementptr inbounds i8, ptr %2, i64 4
  %202 = load i8, ptr %201, align 1, !tbaa !30
  %203 = zext i8 %202 to i16
  %204 = sub nsw i16 %200, %203
  %205 = getelementptr inbounds i16, ptr %0, i64 22
  store i16 %204, ptr %205, align 2, !tbaa !25
  %206 = or i16 %197, %204
  %207 = getelementptr inbounds i8, ptr %1, i64 35
  %208 = load i8, ptr %207, align 1, !tbaa !30
  %209 = zext i8 %208 to i16
  %210 = getelementptr inbounds i8, ptr %2, i64 67
  %211 = load i8, ptr %210, align 1, !tbaa !30
  %212 = zext i8 %211 to i16
  %213 = sub nsw i16 %209, %212
  %214 = getelementptr inbounds i16, ptr %0, i64 23
  store i16 %213, ptr %214, align 2, !tbaa !25
  %215 = or i16 %206, %213
  %216 = getelementptr inbounds i8, ptr %1, i64 66
  %217 = load i8, ptr %216, align 1, !tbaa !30
  %218 = zext i8 %217 to i16
  %219 = getelementptr inbounds i8, ptr %2, i64 130
  %220 = load i8, ptr %219, align 1, !tbaa !30
  %221 = zext i8 %220 to i16
  %222 = sub nsw i16 %218, %221
  %223 = getelementptr inbounds i16, ptr %0, i64 24
  store i16 %222, ptr %223, align 2, !tbaa !25
  %224 = or i16 %215, %222
  %225 = getelementptr inbounds i8, ptr %1, i64 82
  %226 = load i8, ptr %225, align 1, !tbaa !30
  %227 = zext i8 %226 to i16
  %228 = getelementptr inbounds i8, ptr %2, i64 162
  %229 = load i8, ptr %228, align 1, !tbaa !30
  %230 = zext i8 %229 to i16
  %231 = sub nsw i16 %227, %230
  %232 = getelementptr inbounds i16, ptr %0, i64 25
  store i16 %231, ptr %232, align 2, !tbaa !25
  %233 = or i16 %224, %231
  %234 = getelementptr inbounds i8, ptr %1, i64 98
  %235 = load i8, ptr %234, align 1, !tbaa !30
  %236 = zext i8 %235 to i16
  %237 = getelementptr inbounds i8, ptr %2, i64 194
  %238 = load i8, ptr %237, align 1, !tbaa !30
  %239 = zext i8 %238 to i16
  %240 = sub nsw i16 %236, %239
  %241 = getelementptr inbounds i16, ptr %0, i64 26
  store i16 %240, ptr %241, align 2, !tbaa !25
  %242 = or i16 %233, %240
  %243 = getelementptr inbounds i8, ptr %1, i64 114
  %244 = load i8, ptr %243, align 1, !tbaa !30
  %245 = zext i8 %244 to i16
  %246 = getelementptr inbounds i8, ptr %2, i64 226
  %247 = load i8, ptr %246, align 1, !tbaa !30
  %248 = zext i8 %247 to i16
  %249 = sub nsw i16 %245, %248
  %250 = getelementptr inbounds i16, ptr %0, i64 27
  store i16 %249, ptr %250, align 2, !tbaa !25
  %251 = or i16 %242, %249
  %252 = getelementptr inbounds i8, ptr %1, i64 51
  %253 = load i8, ptr %252, align 1, !tbaa !30
  %254 = zext i8 %253 to i16
  %255 = getelementptr inbounds i8, ptr %2, i64 99
  %256 = load i8, ptr %255, align 1, !tbaa !30
  %257 = zext i8 %256 to i16
  %258 = sub nsw i16 %254, %257
  %259 = getelementptr inbounds i16, ptr %0, i64 28
  store i16 %258, ptr %259, align 2, !tbaa !25
  %260 = or i16 %251, %258
  %261 = getelementptr inbounds i8, ptr %1, i64 20
  %262 = load i8, ptr %261, align 1, !tbaa !30
  %263 = zext i8 %262 to i16
  %264 = getelementptr inbounds i8, ptr %2, i64 36
  %265 = load i8, ptr %264, align 1, !tbaa !30
  %266 = zext i8 %265 to i16
  %267 = sub nsw i16 %263, %266
  %268 = getelementptr inbounds i16, ptr %0, i64 29
  store i16 %267, ptr %268, align 2, !tbaa !25
  %269 = or i16 %260, %267
  %270 = getelementptr inbounds i8, ptr %1, i64 5
  %271 = load i8, ptr %270, align 1, !tbaa !30
  %272 = zext i8 %271 to i16
  %273 = getelementptr inbounds i8, ptr %2, i64 5
  %274 = load i8, ptr %273, align 1, !tbaa !30
  %275 = zext i8 %274 to i16
  %276 = sub nsw i16 %272, %275
  %277 = getelementptr inbounds i16, ptr %0, i64 30
  store i16 %276, ptr %277, align 2, !tbaa !25
  %278 = or i16 %269, %276
  %279 = getelementptr inbounds i8, ptr %1, i64 36
  %280 = load i8, ptr %279, align 1, !tbaa !30
  %281 = zext i8 %280 to i16
  %282 = getelementptr inbounds i8, ptr %2, i64 68
  %283 = load i8, ptr %282, align 1, !tbaa !30
  %284 = zext i8 %283 to i16
  %285 = sub nsw i16 %281, %284
  %286 = getelementptr inbounds i16, ptr %0, i64 31
  store i16 %285, ptr %286, align 2, !tbaa !25
  %287 = or i16 %278, %285
  %288 = getelementptr inbounds i8, ptr %1, i64 67
  %289 = load i8, ptr %288, align 1, !tbaa !30
  %290 = zext i8 %289 to i16
  %291 = getelementptr inbounds i8, ptr %2, i64 131
  %292 = load i8, ptr %291, align 1, !tbaa !30
  %293 = zext i8 %292 to i16
  %294 = sub nsw i16 %290, %293
  %295 = getelementptr inbounds i16, ptr %0, i64 32
  store i16 %294, ptr %295, align 2, !tbaa !25
  %296 = or i16 %287, %294
  %297 = getelementptr inbounds i8, ptr %1, i64 83
  %298 = load i8, ptr %297, align 1, !tbaa !30
  %299 = zext i8 %298 to i16
  %300 = getelementptr inbounds i8, ptr %2, i64 163
  %301 = load i8, ptr %300, align 1, !tbaa !30
  %302 = zext i8 %301 to i16
  %303 = sub nsw i16 %299, %302
  %304 = getelementptr inbounds i16, ptr %0, i64 33
  store i16 %303, ptr %304, align 2, !tbaa !25
  %305 = or i16 %296, %303
  %306 = getelementptr inbounds i8, ptr %1, i64 99
  %307 = load i8, ptr %306, align 1, !tbaa !30
  %308 = zext i8 %307 to i16
  %309 = getelementptr inbounds i8, ptr %2, i64 195
  %310 = load i8, ptr %309, align 1, !tbaa !30
  %311 = zext i8 %310 to i16
  %312 = sub nsw i16 %308, %311
  %313 = getelementptr inbounds i16, ptr %0, i64 34
  store i16 %312, ptr %313, align 2, !tbaa !25
  %314 = or i16 %305, %312
  %315 = getelementptr inbounds i8, ptr %1, i64 115
  %316 = load i8, ptr %315, align 1, !tbaa !30
  %317 = zext i8 %316 to i16
  %318 = getelementptr inbounds i8, ptr %2, i64 227
  %319 = load i8, ptr %318, align 1, !tbaa !30
  %320 = zext i8 %319 to i16
  %321 = sub nsw i16 %317, %320
  %322 = getelementptr inbounds i16, ptr %0, i64 35
  store i16 %321, ptr %322, align 2, !tbaa !25
  %323 = or i16 %314, %321
  %324 = getelementptr inbounds i8, ptr %1, i64 52
  %325 = load i8, ptr %324, align 1, !tbaa !30
  %326 = zext i8 %325 to i16
  %327 = getelementptr inbounds i8, ptr %2, i64 100
  %328 = load i8, ptr %327, align 1, !tbaa !30
  %329 = zext i8 %328 to i16
  %330 = sub nsw i16 %326, %329
  %331 = getelementptr inbounds i16, ptr %0, i64 36
  store i16 %330, ptr %331, align 2, !tbaa !25
  %332 = or i16 %323, %330
  %333 = getelementptr inbounds i8, ptr %1, i64 21
  %334 = load i8, ptr %333, align 1, !tbaa !30
  %335 = zext i8 %334 to i16
  %336 = getelementptr inbounds i8, ptr %2, i64 37
  %337 = load i8, ptr %336, align 1, !tbaa !30
  %338 = zext i8 %337 to i16
  %339 = sub nsw i16 %335, %338
  %340 = getelementptr inbounds i16, ptr %0, i64 37
  store i16 %339, ptr %340, align 2, !tbaa !25
  %341 = or i16 %332, %339
  %342 = getelementptr inbounds i8, ptr %1, i64 6
  %343 = load i8, ptr %342, align 1, !tbaa !30
  %344 = zext i8 %343 to i16
  %345 = getelementptr inbounds i8, ptr %2, i64 6
  %346 = load i8, ptr %345, align 1, !tbaa !30
  %347 = zext i8 %346 to i16
  %348 = sub nsw i16 %344, %347
  %349 = getelementptr inbounds i16, ptr %0, i64 38
  store i16 %348, ptr %349, align 2, !tbaa !25
  %350 = or i16 %341, %348
  %351 = getelementptr inbounds i8, ptr %1, i64 37
  %352 = load i8, ptr %351, align 1, !tbaa !30
  %353 = zext i8 %352 to i16
  %354 = getelementptr inbounds i8, ptr %2, i64 69
  %355 = load i8, ptr %354, align 1, !tbaa !30
  %356 = zext i8 %355 to i16
  %357 = sub nsw i16 %353, %356
  %358 = getelementptr inbounds i16, ptr %0, i64 39
  store i16 %357, ptr %358, align 2, !tbaa !25
  %359 = or i16 %350, %357
  %360 = getelementptr inbounds i8, ptr %1, i64 68
  %361 = load i8, ptr %360, align 1, !tbaa !30
  %362 = zext i8 %361 to i16
  %363 = getelementptr inbounds i8, ptr %2, i64 132
  %364 = load i8, ptr %363, align 1, !tbaa !30
  %365 = zext i8 %364 to i16
  %366 = sub nsw i16 %362, %365
  %367 = getelementptr inbounds i16, ptr %0, i64 40
  store i16 %366, ptr %367, align 2, !tbaa !25
  %368 = or i16 %359, %366
  %369 = getelementptr inbounds i8, ptr %1, i64 84
  %370 = load i8, ptr %369, align 1, !tbaa !30
  %371 = zext i8 %370 to i16
  %372 = getelementptr inbounds i8, ptr %2, i64 164
  %373 = load i8, ptr %372, align 1, !tbaa !30
  %374 = zext i8 %373 to i16
  %375 = sub nsw i16 %371, %374
  %376 = getelementptr inbounds i16, ptr %0, i64 41
  store i16 %375, ptr %376, align 2, !tbaa !25
  %377 = or i16 %368, %375
  %378 = getelementptr inbounds i8, ptr %1, i64 100
  %379 = load i8, ptr %378, align 1, !tbaa !30
  %380 = zext i8 %379 to i16
  %381 = getelementptr inbounds i8, ptr %2, i64 196
  %382 = load i8, ptr %381, align 1, !tbaa !30
  %383 = zext i8 %382 to i16
  %384 = sub nsw i16 %380, %383
  %385 = getelementptr inbounds i16, ptr %0, i64 42
  store i16 %384, ptr %385, align 2, !tbaa !25
  %386 = or i16 %377, %384
  %387 = getelementptr inbounds i8, ptr %1, i64 116
  %388 = load i8, ptr %387, align 1, !tbaa !30
  %389 = zext i8 %388 to i16
  %390 = getelementptr inbounds i8, ptr %2, i64 228
  %391 = load i8, ptr %390, align 1, !tbaa !30
  %392 = zext i8 %391 to i16
  %393 = sub nsw i16 %389, %392
  %394 = getelementptr inbounds i16, ptr %0, i64 43
  store i16 %393, ptr %394, align 2, !tbaa !25
  %395 = or i16 %386, %393
  %396 = getelementptr inbounds i8, ptr %1, i64 53
  %397 = load i8, ptr %396, align 1, !tbaa !30
  %398 = zext i8 %397 to i16
  %399 = getelementptr inbounds i8, ptr %2, i64 101
  %400 = load i8, ptr %399, align 1, !tbaa !30
  %401 = zext i8 %400 to i16
  %402 = sub nsw i16 %398, %401
  %403 = getelementptr inbounds i16, ptr %0, i64 44
  store i16 %402, ptr %403, align 2, !tbaa !25
  %404 = or i16 %395, %402
  %405 = getelementptr inbounds i8, ptr %1, i64 22
  %406 = load i8, ptr %405, align 1, !tbaa !30
  %407 = zext i8 %406 to i16
  %408 = getelementptr inbounds i8, ptr %2, i64 38
  %409 = load i8, ptr %408, align 1, !tbaa !30
  %410 = zext i8 %409 to i16
  %411 = sub nsw i16 %407, %410
  %412 = getelementptr inbounds i16, ptr %0, i64 45
  store i16 %411, ptr %412, align 2, !tbaa !25
  %413 = or i16 %404, %411
  %414 = getelementptr inbounds i8, ptr %1, i64 38
  %415 = load i8, ptr %414, align 1, !tbaa !30
  %416 = zext i8 %415 to i16
  %417 = getelementptr inbounds i8, ptr %2, i64 70
  %418 = load i8, ptr %417, align 1, !tbaa !30
  %419 = zext i8 %418 to i16
  %420 = sub nsw i16 %416, %419
  %421 = getelementptr inbounds i16, ptr %0, i64 46
  store i16 %420, ptr %421, align 2, !tbaa !25
  %422 = or i16 %413, %420
  %423 = getelementptr inbounds i8, ptr %1, i64 69
  %424 = load i8, ptr %423, align 1, !tbaa !30
  %425 = zext i8 %424 to i16
  %426 = getelementptr inbounds i8, ptr %2, i64 133
  %427 = load i8, ptr %426, align 1, !tbaa !30
  %428 = zext i8 %427 to i16
  %429 = sub nsw i16 %425, %428
  %430 = getelementptr inbounds i16, ptr %0, i64 47
  store i16 %429, ptr %430, align 2, !tbaa !25
  %431 = or i16 %422, %429
  %432 = getelementptr inbounds i8, ptr %1, i64 85
  %433 = load i8, ptr %432, align 1, !tbaa !30
  %434 = zext i8 %433 to i16
  %435 = getelementptr inbounds i8, ptr %2, i64 165
  %436 = load i8, ptr %435, align 1, !tbaa !30
  %437 = zext i8 %436 to i16
  %438 = sub nsw i16 %434, %437
  %439 = getelementptr inbounds i16, ptr %0, i64 48
  store i16 %438, ptr %439, align 2, !tbaa !25
  %440 = or i16 %431, %438
  %441 = getelementptr inbounds i8, ptr %1, i64 101
  %442 = load i8, ptr %441, align 1, !tbaa !30
  %443 = zext i8 %442 to i16
  %444 = getelementptr inbounds i8, ptr %2, i64 197
  %445 = load i8, ptr %444, align 1, !tbaa !30
  %446 = zext i8 %445 to i16
  %447 = sub nsw i16 %443, %446
  %448 = getelementptr inbounds i16, ptr %0, i64 49
  store i16 %447, ptr %448, align 2, !tbaa !25
  %449 = or i16 %440, %447
  %450 = getelementptr inbounds i8, ptr %1, i64 117
  %451 = load i8, ptr %450, align 1, !tbaa !30
  %452 = zext i8 %451 to i16
  %453 = getelementptr inbounds i8, ptr %2, i64 229
  %454 = load i8, ptr %453, align 1, !tbaa !30
  %455 = zext i8 %454 to i16
  %456 = sub nsw i16 %452, %455
  %457 = getelementptr inbounds i16, ptr %0, i64 50
  store i16 %456, ptr %457, align 2, !tbaa !25
  %458 = or i16 %449, %456
  %459 = getelementptr inbounds i8, ptr %1, i64 54
  %460 = load i8, ptr %459, align 1, !tbaa !30
  %461 = zext i8 %460 to i16
  %462 = getelementptr inbounds i8, ptr %2, i64 102
  %463 = load i8, ptr %462, align 1, !tbaa !30
  %464 = zext i8 %463 to i16
  %465 = sub nsw i16 %461, %464
  %466 = getelementptr inbounds i16, ptr %0, i64 51
  store i16 %465, ptr %466, align 2, !tbaa !25
  %467 = or i16 %458, %465
  %468 = getelementptr inbounds i8, ptr %1, i64 7
  %469 = load i8, ptr %468, align 1, !tbaa !30
  %470 = zext i8 %469 to i16
  %471 = getelementptr inbounds i8, ptr %2, i64 7
  %472 = load i8, ptr %471, align 1, !tbaa !30
  %473 = zext i8 %472 to i16
  %474 = sub nsw i16 %470, %473
  %475 = getelementptr inbounds i16, ptr %0, i64 52
  store i16 %474, ptr %475, align 2, !tbaa !25
  %476 = or i16 %467, %474
  %477 = getelementptr inbounds i8, ptr %1, i64 23
  %478 = load i8, ptr %477, align 1, !tbaa !30
  %479 = zext i8 %478 to i16
  %480 = getelementptr inbounds i8, ptr %2, i64 39
  %481 = load i8, ptr %480, align 1, !tbaa !30
  %482 = zext i8 %481 to i16
  %483 = sub nsw i16 %479, %482
  %484 = getelementptr inbounds i16, ptr %0, i64 53
  store i16 %483, ptr %484, align 2, !tbaa !25
  %485 = or i16 %476, %483
  %486 = getelementptr inbounds i8, ptr %1, i64 70
  %487 = load i8, ptr %486, align 1, !tbaa !30
  %488 = zext i8 %487 to i16
  %489 = getelementptr inbounds i8, ptr %2, i64 134
  %490 = load i8, ptr %489, align 1, !tbaa !30
  %491 = zext i8 %490 to i16
  %492 = sub nsw i16 %488, %491
  %493 = getelementptr inbounds i16, ptr %0, i64 54
  store i16 %492, ptr %493, align 2, !tbaa !25
  %494 = or i16 %485, %492
  %495 = getelementptr inbounds i8, ptr %1, i64 86
  %496 = load i8, ptr %495, align 1, !tbaa !30
  %497 = zext i8 %496 to i16
  %498 = getelementptr inbounds i8, ptr %2, i64 166
  %499 = load i8, ptr %498, align 1, !tbaa !30
  %500 = zext i8 %499 to i16
  %501 = sub nsw i16 %497, %500
  %502 = getelementptr inbounds i16, ptr %0, i64 55
  store i16 %501, ptr %502, align 2, !tbaa !25
  %503 = or i16 %494, %501
  %504 = getelementptr inbounds i8, ptr %1, i64 102
  %505 = load i8, ptr %504, align 1, !tbaa !30
  %506 = zext i8 %505 to i16
  %507 = getelementptr inbounds i8, ptr %2, i64 198
  %508 = load i8, ptr %507, align 1, !tbaa !30
  %509 = zext i8 %508 to i16
  %510 = sub nsw i16 %506, %509
  %511 = getelementptr inbounds i16, ptr %0, i64 56
  store i16 %510, ptr %511, align 2, !tbaa !25
  %512 = or i16 %503, %510
  %513 = getelementptr inbounds i8, ptr %1, i64 118
  %514 = load i8, ptr %513, align 1, !tbaa !30
  %515 = zext i8 %514 to i16
  %516 = getelementptr inbounds i8, ptr %2, i64 230
  %517 = load i8, ptr %516, align 1, !tbaa !30
  %518 = zext i8 %517 to i16
  %519 = sub nsw i16 %515, %518
  %520 = getelementptr inbounds i16, ptr %0, i64 57
  store i16 %519, ptr %520, align 2, !tbaa !25
  %521 = or i16 %512, %519
  %522 = getelementptr inbounds i8, ptr %1, i64 39
  %523 = load i8, ptr %522, align 1, !tbaa !30
  %524 = zext i8 %523 to i16
  %525 = getelementptr inbounds i8, ptr %2, i64 71
  %526 = load i8, ptr %525, align 1, !tbaa !30
  %527 = zext i8 %526 to i16
  %528 = sub nsw i16 %524, %527
  %529 = getelementptr inbounds i16, ptr %0, i64 58
  store i16 %528, ptr %529, align 2, !tbaa !25
  %530 = or i16 %521, %528
  %531 = getelementptr inbounds i8, ptr %1, i64 55
  %532 = load i8, ptr %531, align 1, !tbaa !30
  %533 = zext i8 %532 to i16
  %534 = getelementptr inbounds i8, ptr %2, i64 103
  %535 = load i8, ptr %534, align 1, !tbaa !30
  %536 = zext i8 %535 to i16
  %537 = sub nsw i16 %533, %536
  %538 = getelementptr inbounds i16, ptr %0, i64 59
  store i16 %537, ptr %538, align 2, !tbaa !25
  %539 = or i16 %530, %537
  %540 = getelementptr inbounds i8, ptr %1, i64 71
  %541 = load i8, ptr %540, align 1, !tbaa !30
  %542 = zext i8 %541 to i16
  %543 = getelementptr inbounds i8, ptr %2, i64 135
  %544 = load i8, ptr %543, align 1, !tbaa !30
  %545 = zext i8 %544 to i16
  %546 = sub nsw i16 %542, %545
  %547 = getelementptr inbounds i16, ptr %0, i64 60
  store i16 %546, ptr %547, align 2, !tbaa !25
  %548 = or i16 %539, %546
  %549 = getelementptr inbounds i8, ptr %1, i64 87
  %550 = load i8, ptr %549, align 1, !tbaa !30
  %551 = zext i8 %550 to i16
  %552 = getelementptr inbounds i8, ptr %2, i64 167
  %553 = load i8, ptr %552, align 1, !tbaa !30
  %554 = zext i8 %553 to i16
  %555 = sub nsw i16 %551, %554
  %556 = getelementptr inbounds i16, ptr %0, i64 61
  store i16 %555, ptr %556, align 2, !tbaa !25
  %557 = or i16 %548, %555
  %558 = getelementptr inbounds i8, ptr %1, i64 103
  %559 = load i8, ptr %558, align 1, !tbaa !30
  %560 = zext i8 %559 to i16
  %561 = getelementptr inbounds i8, ptr %2, i64 199
  %562 = load i8, ptr %561, align 1, !tbaa !30
  %563 = zext i8 %562 to i16
  %564 = sub nsw i16 %560, %563
  %565 = getelementptr inbounds i16, ptr %0, i64 62
  store i16 %564, ptr %565, align 2, !tbaa !25
  %566 = or i16 %557, %564
  %567 = getelementptr inbounds i8, ptr %1, i64 119
  %568 = load i8, ptr %567, align 1, !tbaa !30
  %569 = zext i8 %568 to i16
  %570 = getelementptr inbounds i8, ptr %2, i64 231
  %571 = load i8, ptr %570, align 1, !tbaa !30
  %572 = zext i8 %571 to i16
  %573 = sub nsw i16 %569, %572
  %574 = getelementptr inbounds i16, ptr %0, i64 63
  store i16 %573, ptr %574, align 2, !tbaa !25
  %575 = or i16 %566, %573
  %576 = load i64, ptr %1, align 8, !tbaa !30
  store i64 %576, ptr %2, align 8, !tbaa !30
  %577 = load i64, ptr %9, align 8, !tbaa !30
  store i64 %577, ptr %12, align 8, !tbaa !30
  %578 = load i64, ptr %18, align 8, !tbaa !30
  store i64 %578, ptr %21, align 8, !tbaa !30
  %579 = load i64, ptr %45, align 8, !tbaa !30
  store i64 %579, ptr %48, align 8, !tbaa !30
  %580 = load i64, ptr %54, align 8, !tbaa !30
  store i64 %580, ptr %57, align 8, !tbaa !30
  %581 = load i64, ptr %90, align 8, !tbaa !30
  store i64 %581, ptr %93, align 8, !tbaa !30
  %582 = load i64, ptr %99, align 8, !tbaa !30
  store i64 %582, ptr %102, align 8, !tbaa !30
  %583 = load i64, ptr %108, align 8, !tbaa !30
  store i64 %583, ptr %111, align 8, !tbaa !30
  %584 = icmp ne i16 %575, 0
  %585 = zext i1 %584 to i32
  ret i32 %585
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal i32 @zigzag_sub_4x4_field(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #7 {
  %4 = load i8, ptr %1, align 1, !tbaa !30
  %5 = zext i8 %4 to i16
  %6 = load i8, ptr %2, align 1, !tbaa !30
  %7 = zext i8 %6 to i16
  %8 = sub nsw i16 %5, %7
  store i16 %8, ptr %0, align 2, !tbaa !25
  %9 = getelementptr inbounds i8, ptr %1, i64 16
  %10 = load i8, ptr %9, align 1, !tbaa !30
  %11 = zext i8 %10 to i16
  %12 = getelementptr inbounds i8, ptr %2, i64 32
  %13 = load i8, ptr %12, align 1, !tbaa !30
  %14 = zext i8 %13 to i16
  %15 = sub nsw i16 %11, %14
  %16 = getelementptr inbounds i16, ptr %0, i64 1
  store i16 %15, ptr %16, align 2, !tbaa !25
  %17 = or i16 %15, %8
  %18 = getelementptr inbounds i8, ptr %1, i64 1
  %19 = load i8, ptr %18, align 1, !tbaa !30
  %20 = zext i8 %19 to i16
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = load i8, ptr %21, align 1, !tbaa !30
  %23 = zext i8 %22 to i16
  %24 = sub nsw i16 %20, %23
  %25 = getelementptr inbounds i16, ptr %0, i64 2
  store i16 %24, ptr %25, align 2, !tbaa !25
  %26 = or i16 %17, %24
  %27 = getelementptr inbounds i8, ptr %1, i64 32
  %28 = load i8, ptr %27, align 1, !tbaa !30
  %29 = zext i8 %28 to i16
  %30 = getelementptr inbounds i8, ptr %2, i64 64
  %31 = load i8, ptr %30, align 1, !tbaa !30
  %32 = zext i8 %31 to i16
  %33 = sub nsw i16 %29, %32
  %34 = getelementptr inbounds i16, ptr %0, i64 3
  store i16 %33, ptr %34, align 2, !tbaa !25
  %35 = or i16 %26, %33
  %36 = getelementptr inbounds i8, ptr %1, i64 48
  %37 = load i8, ptr %36, align 1, !tbaa !30
  %38 = zext i8 %37 to i16
  %39 = getelementptr inbounds i8, ptr %2, i64 96
  %40 = load i8, ptr %39, align 1, !tbaa !30
  %41 = zext i8 %40 to i16
  %42 = sub nsw i16 %38, %41
  %43 = getelementptr inbounds i16, ptr %0, i64 4
  store i16 %42, ptr %43, align 2, !tbaa !25
  %44 = or i16 %35, %42
  %45 = getelementptr inbounds i8, ptr %1, i64 17
  %46 = load i8, ptr %45, align 1, !tbaa !30
  %47 = zext i8 %46 to i16
  %48 = getelementptr inbounds i8, ptr %2, i64 33
  %49 = load i8, ptr %48, align 1, !tbaa !30
  %50 = zext i8 %49 to i16
  %51 = sub nsw i16 %47, %50
  %52 = getelementptr inbounds i16, ptr %0, i64 5
  store i16 %51, ptr %52, align 2, !tbaa !25
  %53 = or i16 %44, %51
  %54 = getelementptr inbounds i8, ptr %1, i64 33
  %55 = load i8, ptr %54, align 1, !tbaa !30
  %56 = zext i8 %55 to i16
  %57 = getelementptr inbounds i8, ptr %2, i64 65
  %58 = load i8, ptr %57, align 1, !tbaa !30
  %59 = zext i8 %58 to i16
  %60 = sub nsw i16 %56, %59
  %61 = getelementptr inbounds i16, ptr %0, i64 6
  store i16 %60, ptr %61, align 2, !tbaa !25
  %62 = or i16 %53, %60
  %63 = getelementptr inbounds i8, ptr %1, i64 49
  %64 = load i8, ptr %63, align 1, !tbaa !30
  %65 = zext i8 %64 to i16
  %66 = getelementptr inbounds i8, ptr %2, i64 97
  %67 = load i8, ptr %66, align 1, !tbaa !30
  %68 = zext i8 %67 to i16
  %69 = sub nsw i16 %65, %68
  %70 = getelementptr inbounds i16, ptr %0, i64 7
  store i16 %69, ptr %70, align 2, !tbaa !25
  %71 = or i16 %62, %69
  %72 = getelementptr inbounds i8, ptr %1, i64 2
  %73 = load i8, ptr %72, align 1, !tbaa !30
  %74 = zext i8 %73 to i16
  %75 = getelementptr inbounds i8, ptr %2, i64 2
  %76 = load i8, ptr %75, align 1, !tbaa !30
  %77 = zext i8 %76 to i16
  %78 = sub nsw i16 %74, %77
  %79 = getelementptr inbounds i16, ptr %0, i64 8
  store i16 %78, ptr %79, align 2, !tbaa !25
  %80 = or i16 %71, %78
  %81 = getelementptr inbounds i8, ptr %1, i64 18
  %82 = load i8, ptr %81, align 1, !tbaa !30
  %83 = zext i8 %82 to i16
  %84 = getelementptr inbounds i8, ptr %2, i64 34
  %85 = load i8, ptr %84, align 1, !tbaa !30
  %86 = zext i8 %85 to i16
  %87 = sub nsw i16 %83, %86
  %88 = getelementptr inbounds i16, ptr %0, i64 9
  store i16 %87, ptr %88, align 2, !tbaa !25
  %89 = or i16 %80, %87
  %90 = getelementptr inbounds i8, ptr %1, i64 34
  %91 = load i8, ptr %90, align 1, !tbaa !30
  %92 = zext i8 %91 to i16
  %93 = getelementptr inbounds i8, ptr %2, i64 66
  %94 = load i8, ptr %93, align 1, !tbaa !30
  %95 = zext i8 %94 to i16
  %96 = sub nsw i16 %92, %95
  %97 = getelementptr inbounds i16, ptr %0, i64 10
  store i16 %96, ptr %97, align 2, !tbaa !25
  %98 = or i16 %89, %96
  %99 = getelementptr inbounds i8, ptr %1, i64 50
  %100 = load i8, ptr %99, align 1, !tbaa !30
  %101 = zext i8 %100 to i16
  %102 = getelementptr inbounds i8, ptr %2, i64 98
  %103 = load i8, ptr %102, align 1, !tbaa !30
  %104 = zext i8 %103 to i16
  %105 = sub nsw i16 %101, %104
  %106 = getelementptr inbounds i16, ptr %0, i64 11
  store i16 %105, ptr %106, align 2, !tbaa !25
  %107 = or i16 %98, %105
  %108 = getelementptr inbounds i8, ptr %1, i64 3
  %109 = load i8, ptr %108, align 1, !tbaa !30
  %110 = zext i8 %109 to i16
  %111 = getelementptr inbounds i8, ptr %2, i64 3
  %112 = load i8, ptr %111, align 1, !tbaa !30
  %113 = zext i8 %112 to i16
  %114 = sub nsw i16 %110, %113
  %115 = getelementptr inbounds i16, ptr %0, i64 12
  store i16 %114, ptr %115, align 2, !tbaa !25
  %116 = or i16 %107, %114
  %117 = getelementptr inbounds i8, ptr %1, i64 19
  %118 = load i8, ptr %117, align 1, !tbaa !30
  %119 = zext i8 %118 to i16
  %120 = getelementptr inbounds i8, ptr %2, i64 35
  %121 = load i8, ptr %120, align 1, !tbaa !30
  %122 = zext i8 %121 to i16
  %123 = sub nsw i16 %119, %122
  %124 = getelementptr inbounds i16, ptr %0, i64 13
  store i16 %123, ptr %124, align 2, !tbaa !25
  %125 = or i16 %116, %123
  %126 = getelementptr inbounds i8, ptr %1, i64 35
  %127 = load i8, ptr %126, align 1, !tbaa !30
  %128 = zext i8 %127 to i16
  %129 = getelementptr inbounds i8, ptr %2, i64 67
  %130 = load i8, ptr %129, align 1, !tbaa !30
  %131 = zext i8 %130 to i16
  %132 = sub nsw i16 %128, %131
  %133 = getelementptr inbounds i16, ptr %0, i64 14
  store i16 %132, ptr %133, align 2, !tbaa !25
  %134 = or i16 %125, %132
  %135 = getelementptr inbounds i8, ptr %1, i64 51
  %136 = load i8, ptr %135, align 1, !tbaa !30
  %137 = zext i8 %136 to i16
  %138 = getelementptr inbounds i8, ptr %2, i64 99
  %139 = load i8, ptr %138, align 1, !tbaa !30
  %140 = zext i8 %139 to i16
  %141 = sub nsw i16 %137, %140
  %142 = getelementptr inbounds i16, ptr %0, i64 15
  store i16 %141, ptr %142, align 2, !tbaa !25
  %143 = or i16 %134, %141
  %144 = load i32, ptr %1, align 4, !tbaa !30
  store i32 %144, ptr %2, align 4, !tbaa !30
  %145 = load i32, ptr %9, align 4, !tbaa !30
  store i32 %145, ptr %12, align 4, !tbaa !30
  %146 = load i32, ptr %27, align 4, !tbaa !30
  store i32 %146, ptr %30, align 4, !tbaa !30
  %147 = load i32, ptr %36, align 4, !tbaa !30
  store i32 %147, ptr %39, align 4, !tbaa !30
  %148 = icmp ne i16 %143, 0
  %149 = zext i1 %148 to i32
  ret i32 %149
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal i32 @zigzag_sub_4x4ac_field(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) #7 {
  %5 = load i8, ptr %1, align 1, !tbaa !30
  %6 = zext i8 %5 to i16
  %7 = load i8, ptr %2, align 1, !tbaa !30
  %8 = zext i8 %7 to i16
  %9 = sub nsw i16 %6, %8
  store i16 %9, ptr %3, align 2, !tbaa !25
  store i16 0, ptr %0, align 2, !tbaa !25
  %10 = getelementptr inbounds i8, ptr %1, i64 16
  %11 = load i8, ptr %10, align 1, !tbaa !30
  %12 = zext i8 %11 to i16
  %13 = getelementptr inbounds i8, ptr %2, i64 32
  %14 = load i8, ptr %13, align 1, !tbaa !30
  %15 = zext i8 %14 to i16
  %16 = sub nsw i16 %12, %15
  %17 = getelementptr inbounds i16, ptr %0, i64 1
  store i16 %16, ptr %17, align 2, !tbaa !25
  %18 = getelementptr inbounds i8, ptr %1, i64 1
  %19 = load i8, ptr %18, align 1, !tbaa !30
  %20 = zext i8 %19 to i16
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = load i8, ptr %21, align 1, !tbaa !30
  %23 = zext i8 %22 to i16
  %24 = sub nsw i16 %20, %23
  %25 = getelementptr inbounds i16, ptr %0, i64 2
  store i16 %24, ptr %25, align 2, !tbaa !25
  %26 = or i16 %24, %16
  %27 = getelementptr inbounds i8, ptr %1, i64 32
  %28 = load i8, ptr %27, align 1, !tbaa !30
  %29 = zext i8 %28 to i16
  %30 = getelementptr inbounds i8, ptr %2, i64 64
  %31 = load i8, ptr %30, align 1, !tbaa !30
  %32 = zext i8 %31 to i16
  %33 = sub nsw i16 %29, %32
  %34 = getelementptr inbounds i16, ptr %0, i64 3
  store i16 %33, ptr %34, align 2, !tbaa !25
  %35 = or i16 %26, %33
  %36 = getelementptr inbounds i8, ptr %1, i64 48
  %37 = load i8, ptr %36, align 1, !tbaa !30
  %38 = zext i8 %37 to i16
  %39 = getelementptr inbounds i8, ptr %2, i64 96
  %40 = load i8, ptr %39, align 1, !tbaa !30
  %41 = zext i8 %40 to i16
  %42 = sub nsw i16 %38, %41
  %43 = getelementptr inbounds i16, ptr %0, i64 4
  store i16 %42, ptr %43, align 2, !tbaa !25
  %44 = or i16 %35, %42
  %45 = getelementptr inbounds i8, ptr %1, i64 17
  %46 = load i8, ptr %45, align 1, !tbaa !30
  %47 = zext i8 %46 to i16
  %48 = getelementptr inbounds i8, ptr %2, i64 33
  %49 = load i8, ptr %48, align 1, !tbaa !30
  %50 = zext i8 %49 to i16
  %51 = sub nsw i16 %47, %50
  %52 = getelementptr inbounds i16, ptr %0, i64 5
  store i16 %51, ptr %52, align 2, !tbaa !25
  %53 = or i16 %44, %51
  %54 = getelementptr inbounds i8, ptr %1, i64 33
  %55 = load i8, ptr %54, align 1, !tbaa !30
  %56 = zext i8 %55 to i16
  %57 = getelementptr inbounds i8, ptr %2, i64 65
  %58 = load i8, ptr %57, align 1, !tbaa !30
  %59 = zext i8 %58 to i16
  %60 = sub nsw i16 %56, %59
  %61 = getelementptr inbounds i16, ptr %0, i64 6
  store i16 %60, ptr %61, align 2, !tbaa !25
  %62 = or i16 %53, %60
  %63 = getelementptr inbounds i8, ptr %1, i64 49
  %64 = load i8, ptr %63, align 1, !tbaa !30
  %65 = zext i8 %64 to i16
  %66 = getelementptr inbounds i8, ptr %2, i64 97
  %67 = load i8, ptr %66, align 1, !tbaa !30
  %68 = zext i8 %67 to i16
  %69 = sub nsw i16 %65, %68
  %70 = getelementptr inbounds i16, ptr %0, i64 7
  store i16 %69, ptr %70, align 2, !tbaa !25
  %71 = or i16 %62, %69
  %72 = getelementptr inbounds i8, ptr %1, i64 2
  %73 = load i8, ptr %72, align 1, !tbaa !30
  %74 = zext i8 %73 to i16
  %75 = getelementptr inbounds i8, ptr %2, i64 2
  %76 = load i8, ptr %75, align 1, !tbaa !30
  %77 = zext i8 %76 to i16
  %78 = sub nsw i16 %74, %77
  %79 = getelementptr inbounds i16, ptr %0, i64 8
  store i16 %78, ptr %79, align 2, !tbaa !25
  %80 = or i16 %71, %78
  %81 = getelementptr inbounds i8, ptr %1, i64 18
  %82 = load i8, ptr %81, align 1, !tbaa !30
  %83 = zext i8 %82 to i16
  %84 = getelementptr inbounds i8, ptr %2, i64 34
  %85 = load i8, ptr %84, align 1, !tbaa !30
  %86 = zext i8 %85 to i16
  %87 = sub nsw i16 %83, %86
  %88 = getelementptr inbounds i16, ptr %0, i64 9
  store i16 %87, ptr %88, align 2, !tbaa !25
  %89 = or i16 %80, %87
  %90 = getelementptr inbounds i8, ptr %1, i64 34
  %91 = load i8, ptr %90, align 1, !tbaa !30
  %92 = zext i8 %91 to i16
  %93 = getelementptr inbounds i8, ptr %2, i64 66
  %94 = load i8, ptr %93, align 1, !tbaa !30
  %95 = zext i8 %94 to i16
  %96 = sub nsw i16 %92, %95
  %97 = getelementptr inbounds i16, ptr %0, i64 10
  store i16 %96, ptr %97, align 2, !tbaa !25
  %98 = or i16 %89, %96
  %99 = getelementptr inbounds i8, ptr %1, i64 50
  %100 = load i8, ptr %99, align 1, !tbaa !30
  %101 = zext i8 %100 to i16
  %102 = getelementptr inbounds i8, ptr %2, i64 98
  %103 = load i8, ptr %102, align 1, !tbaa !30
  %104 = zext i8 %103 to i16
  %105 = sub nsw i16 %101, %104
  %106 = getelementptr inbounds i16, ptr %0, i64 11
  store i16 %105, ptr %106, align 2, !tbaa !25
  %107 = or i16 %98, %105
  %108 = getelementptr inbounds i8, ptr %1, i64 3
  %109 = load i8, ptr %108, align 1, !tbaa !30
  %110 = zext i8 %109 to i16
  %111 = getelementptr inbounds i8, ptr %2, i64 3
  %112 = load i8, ptr %111, align 1, !tbaa !30
  %113 = zext i8 %112 to i16
  %114 = sub nsw i16 %110, %113
  %115 = getelementptr inbounds i16, ptr %0, i64 12
  store i16 %114, ptr %115, align 2, !tbaa !25
  %116 = or i16 %107, %114
  %117 = getelementptr inbounds i8, ptr %1, i64 19
  %118 = load i8, ptr %117, align 1, !tbaa !30
  %119 = zext i8 %118 to i16
  %120 = getelementptr inbounds i8, ptr %2, i64 35
  %121 = load i8, ptr %120, align 1, !tbaa !30
  %122 = zext i8 %121 to i16
  %123 = sub nsw i16 %119, %122
  %124 = getelementptr inbounds i16, ptr %0, i64 13
  store i16 %123, ptr %124, align 2, !tbaa !25
  %125 = or i16 %116, %123
  %126 = getelementptr inbounds i8, ptr %1, i64 35
  %127 = load i8, ptr %126, align 1, !tbaa !30
  %128 = zext i8 %127 to i16
  %129 = getelementptr inbounds i8, ptr %2, i64 67
  %130 = load i8, ptr %129, align 1, !tbaa !30
  %131 = zext i8 %130 to i16
  %132 = sub nsw i16 %128, %131
  %133 = getelementptr inbounds i16, ptr %0, i64 14
  store i16 %132, ptr %133, align 2, !tbaa !25
  %134 = or i16 %125, %132
  %135 = getelementptr inbounds i8, ptr %1, i64 51
  %136 = load i8, ptr %135, align 1, !tbaa !30
  %137 = zext i8 %136 to i16
  %138 = getelementptr inbounds i8, ptr %2, i64 99
  %139 = load i8, ptr %138, align 1, !tbaa !30
  %140 = zext i8 %139 to i16
  %141 = sub nsw i16 %137, %140
  %142 = getelementptr inbounds i16, ptr %0, i64 15
  store i16 %141, ptr %142, align 2, !tbaa !25
  %143 = or i16 %134, %141
  %144 = load i32, ptr %1, align 4, !tbaa !30
  store i32 %144, ptr %2, align 4, !tbaa !30
  %145 = load i32, ptr %10, align 4, !tbaa !30
  store i32 %145, ptr %13, align 4, !tbaa !30
  %146 = load i32, ptr %27, align 4, !tbaa !30
  store i32 %146, ptr %30, align 4, !tbaa !30
  %147 = load i32, ptr %36, align 4, !tbaa !30
  store i32 %147, ptr %39, align 4, !tbaa !30
  %148 = icmp ne i16 %143, 0
  %149 = zext i1 %148 to i32
  ret i32 %149
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @zigzag_scan_8x8_frame(ptr noundef writeonly %0, ptr noundef readonly %1) #7 {
  %3 = load i16, ptr %1, align 2, !tbaa !25
  store i16 %3, ptr %0, align 2, !tbaa !25
  %4 = getelementptr inbounds i16, ptr %1, i64 8
  %5 = load i16, ptr %4, align 2, !tbaa !25
  %6 = getelementptr inbounds i16, ptr %0, i64 1
  store i16 %5, ptr %6, align 2, !tbaa !25
  %7 = getelementptr inbounds i16, ptr %1, i64 1
  %8 = load i16, ptr %7, align 2, !tbaa !25
  %9 = getelementptr inbounds i16, ptr %0, i64 2
  store i16 %8, ptr %9, align 2, !tbaa !25
  %10 = getelementptr inbounds i16, ptr %1, i64 2
  %11 = load i16, ptr %10, align 2, !tbaa !25
  %12 = getelementptr inbounds i16, ptr %0, i64 3
  store i16 %11, ptr %12, align 2, !tbaa !25
  %13 = getelementptr inbounds i16, ptr %1, i64 9
  %14 = load i16, ptr %13, align 2, !tbaa !25
  %15 = getelementptr inbounds i16, ptr %0, i64 4
  store i16 %14, ptr %15, align 2, !tbaa !25
  %16 = getelementptr inbounds i16, ptr %1, i64 16
  %17 = load i16, ptr %16, align 2, !tbaa !25
  %18 = getelementptr inbounds i16, ptr %0, i64 5
  store i16 %17, ptr %18, align 2, !tbaa !25
  %19 = getelementptr inbounds i16, ptr %1, i64 24
  %20 = load i16, ptr %19, align 2, !tbaa !25
  %21 = getelementptr inbounds i16, ptr %0, i64 6
  store i16 %20, ptr %21, align 2, !tbaa !25
  %22 = getelementptr inbounds i16, ptr %1, i64 17
  %23 = load i16, ptr %22, align 2, !tbaa !25
  %24 = getelementptr inbounds i16, ptr %0, i64 7
  store i16 %23, ptr %24, align 2, !tbaa !25
  %25 = getelementptr inbounds i16, ptr %1, i64 10
  %26 = load i16, ptr %25, align 2, !tbaa !25
  %27 = getelementptr inbounds i16, ptr %0, i64 8
  store i16 %26, ptr %27, align 2, !tbaa !25
  %28 = getelementptr inbounds i16, ptr %1, i64 3
  %29 = load i16, ptr %28, align 2, !tbaa !25
  %30 = getelementptr inbounds i16, ptr %0, i64 9
  store i16 %29, ptr %30, align 2, !tbaa !25
  %31 = getelementptr inbounds i16, ptr %1, i64 4
  %32 = load i16, ptr %31, align 2, !tbaa !25
  %33 = getelementptr inbounds i16, ptr %0, i64 10
  store i16 %32, ptr %33, align 2, !tbaa !25
  %34 = getelementptr inbounds i16, ptr %1, i64 11
  %35 = load i16, ptr %34, align 2, !tbaa !25
  %36 = getelementptr inbounds i16, ptr %0, i64 11
  store i16 %35, ptr %36, align 2, !tbaa !25
  %37 = getelementptr inbounds i16, ptr %1, i64 18
  %38 = load i16, ptr %37, align 2, !tbaa !25
  %39 = getelementptr inbounds i16, ptr %0, i64 12
  store i16 %38, ptr %39, align 2, !tbaa !25
  %40 = getelementptr inbounds i16, ptr %1, i64 25
  %41 = load i16, ptr %40, align 2, !tbaa !25
  %42 = getelementptr inbounds i16, ptr %0, i64 13
  store i16 %41, ptr %42, align 2, !tbaa !25
  %43 = getelementptr inbounds i16, ptr %1, i64 32
  %44 = load i16, ptr %43, align 2, !tbaa !25
  %45 = getelementptr inbounds i16, ptr %0, i64 14
  store i16 %44, ptr %45, align 2, !tbaa !25
  %46 = getelementptr inbounds i16, ptr %1, i64 40
  %47 = load i16, ptr %46, align 2, !tbaa !25
  %48 = getelementptr inbounds i16, ptr %0, i64 15
  store i16 %47, ptr %48, align 2, !tbaa !25
  %49 = getelementptr inbounds i16, ptr %1, i64 33
  %50 = load i16, ptr %49, align 2, !tbaa !25
  %51 = getelementptr inbounds i16, ptr %0, i64 16
  store i16 %50, ptr %51, align 2, !tbaa !25
  %52 = getelementptr inbounds i16, ptr %1, i64 26
  %53 = load i16, ptr %52, align 2, !tbaa !25
  %54 = getelementptr inbounds i16, ptr %0, i64 17
  store i16 %53, ptr %54, align 2, !tbaa !25
  %55 = getelementptr inbounds i16, ptr %1, i64 19
  %56 = load i16, ptr %55, align 2, !tbaa !25
  %57 = getelementptr inbounds i16, ptr %0, i64 18
  store i16 %56, ptr %57, align 2, !tbaa !25
  %58 = getelementptr inbounds i16, ptr %1, i64 12
  %59 = load i16, ptr %58, align 2, !tbaa !25
  %60 = getelementptr inbounds i16, ptr %0, i64 19
  store i16 %59, ptr %60, align 2, !tbaa !25
  %61 = getelementptr inbounds i16, ptr %1, i64 5
  %62 = load i16, ptr %61, align 2, !tbaa !25
  %63 = getelementptr inbounds i16, ptr %0, i64 20
  store i16 %62, ptr %63, align 2, !tbaa !25
  %64 = getelementptr inbounds i16, ptr %1, i64 6
  %65 = load i16, ptr %64, align 2, !tbaa !25
  %66 = getelementptr inbounds i16, ptr %0, i64 21
  store i16 %65, ptr %66, align 2, !tbaa !25
  %67 = getelementptr inbounds i16, ptr %1, i64 13
  %68 = load i16, ptr %67, align 2, !tbaa !25
  %69 = getelementptr inbounds i16, ptr %0, i64 22
  store i16 %68, ptr %69, align 2, !tbaa !25
  %70 = getelementptr inbounds i16, ptr %1, i64 20
  %71 = load i16, ptr %70, align 2, !tbaa !25
  %72 = getelementptr inbounds i16, ptr %0, i64 23
  store i16 %71, ptr %72, align 2, !tbaa !25
  %73 = getelementptr inbounds i16, ptr %1, i64 27
  %74 = load i16, ptr %73, align 2, !tbaa !25
  %75 = getelementptr inbounds i16, ptr %0, i64 24
  store i16 %74, ptr %75, align 2, !tbaa !25
  %76 = getelementptr inbounds i16, ptr %1, i64 34
  %77 = load i16, ptr %76, align 2, !tbaa !25
  %78 = getelementptr inbounds i16, ptr %0, i64 25
  store i16 %77, ptr %78, align 2, !tbaa !25
  %79 = getelementptr inbounds i16, ptr %1, i64 41
  %80 = load i16, ptr %79, align 2, !tbaa !25
  %81 = getelementptr inbounds i16, ptr %0, i64 26
  store i16 %80, ptr %81, align 2, !tbaa !25
  %82 = getelementptr inbounds i16, ptr %1, i64 48
  %83 = load i16, ptr %82, align 2, !tbaa !25
  %84 = getelementptr inbounds i16, ptr %0, i64 27
  store i16 %83, ptr %84, align 2, !tbaa !25
  %85 = getelementptr inbounds i16, ptr %1, i64 56
  %86 = load i16, ptr %85, align 2, !tbaa !25
  %87 = getelementptr inbounds i16, ptr %0, i64 28
  store i16 %86, ptr %87, align 2, !tbaa !25
  %88 = getelementptr inbounds i16, ptr %1, i64 49
  %89 = load i16, ptr %88, align 2, !tbaa !25
  %90 = getelementptr inbounds i16, ptr %0, i64 29
  store i16 %89, ptr %90, align 2, !tbaa !25
  %91 = getelementptr inbounds i16, ptr %1, i64 42
  %92 = load i16, ptr %91, align 2, !tbaa !25
  %93 = getelementptr inbounds i16, ptr %0, i64 30
  store i16 %92, ptr %93, align 2, !tbaa !25
  %94 = getelementptr inbounds i16, ptr %1, i64 35
  %95 = load i16, ptr %94, align 2, !tbaa !25
  %96 = getelementptr inbounds i16, ptr %0, i64 31
  store i16 %95, ptr %96, align 2, !tbaa !25
  %97 = getelementptr inbounds i16, ptr %1, i64 28
  %98 = load i16, ptr %97, align 2, !tbaa !25
  %99 = getelementptr inbounds i16, ptr %0, i64 32
  store i16 %98, ptr %99, align 2, !tbaa !25
  %100 = getelementptr inbounds i16, ptr %1, i64 21
  %101 = load i16, ptr %100, align 2, !tbaa !25
  %102 = getelementptr inbounds i16, ptr %0, i64 33
  store i16 %101, ptr %102, align 2, !tbaa !25
  %103 = getelementptr inbounds i16, ptr %1, i64 14
  %104 = load i16, ptr %103, align 2, !tbaa !25
  %105 = getelementptr inbounds i16, ptr %0, i64 34
  store i16 %104, ptr %105, align 2, !tbaa !25
  %106 = getelementptr inbounds i16, ptr %1, i64 7
  %107 = load i16, ptr %106, align 2, !tbaa !25
  %108 = getelementptr inbounds i16, ptr %0, i64 35
  store i16 %107, ptr %108, align 2, !tbaa !25
  %109 = getelementptr inbounds i16, ptr %1, i64 15
  %110 = load i16, ptr %109, align 2, !tbaa !25
  %111 = getelementptr inbounds i16, ptr %0, i64 36
  store i16 %110, ptr %111, align 2, !tbaa !25
  %112 = getelementptr inbounds i16, ptr %1, i64 22
  %113 = load i16, ptr %112, align 2, !tbaa !25
  %114 = getelementptr inbounds i16, ptr %0, i64 37
  store i16 %113, ptr %114, align 2, !tbaa !25
  %115 = getelementptr inbounds i16, ptr %1, i64 29
  %116 = load i16, ptr %115, align 2, !tbaa !25
  %117 = getelementptr inbounds i16, ptr %0, i64 38
  store i16 %116, ptr %117, align 2, !tbaa !25
  %118 = getelementptr inbounds i16, ptr %1, i64 36
  %119 = load i16, ptr %118, align 2, !tbaa !25
  %120 = getelementptr inbounds i16, ptr %0, i64 39
  store i16 %119, ptr %120, align 2, !tbaa !25
  %121 = getelementptr inbounds i16, ptr %1, i64 43
  %122 = load i16, ptr %121, align 2, !tbaa !25
  %123 = getelementptr inbounds i16, ptr %0, i64 40
  store i16 %122, ptr %123, align 2, !tbaa !25
  %124 = getelementptr inbounds i16, ptr %1, i64 50
  %125 = load i16, ptr %124, align 2, !tbaa !25
  %126 = getelementptr inbounds i16, ptr %0, i64 41
  store i16 %125, ptr %126, align 2, !tbaa !25
  %127 = getelementptr inbounds i16, ptr %1, i64 57
  %128 = load i16, ptr %127, align 2, !tbaa !25
  %129 = getelementptr inbounds i16, ptr %0, i64 42
  store i16 %128, ptr %129, align 2, !tbaa !25
  %130 = getelementptr inbounds i16, ptr %1, i64 58
  %131 = load i16, ptr %130, align 2, !tbaa !25
  %132 = getelementptr inbounds i16, ptr %0, i64 43
  store i16 %131, ptr %132, align 2, !tbaa !25
  %133 = getelementptr inbounds i16, ptr %1, i64 51
  %134 = load i16, ptr %133, align 2, !tbaa !25
  %135 = getelementptr inbounds i16, ptr %0, i64 44
  store i16 %134, ptr %135, align 2, !tbaa !25
  %136 = getelementptr inbounds i16, ptr %1, i64 44
  %137 = load i16, ptr %136, align 2, !tbaa !25
  %138 = getelementptr inbounds i16, ptr %0, i64 45
  store i16 %137, ptr %138, align 2, !tbaa !25
  %139 = getelementptr inbounds i16, ptr %1, i64 37
  %140 = load i16, ptr %139, align 2, !tbaa !25
  %141 = getelementptr inbounds i16, ptr %0, i64 46
  store i16 %140, ptr %141, align 2, !tbaa !25
  %142 = getelementptr inbounds i16, ptr %1, i64 30
  %143 = load i16, ptr %142, align 2, !tbaa !25
  %144 = getelementptr inbounds i16, ptr %0, i64 47
  store i16 %143, ptr %144, align 2, !tbaa !25
  %145 = getelementptr inbounds i16, ptr %1, i64 23
  %146 = load i16, ptr %145, align 2, !tbaa !25
  %147 = getelementptr inbounds i16, ptr %0, i64 48
  store i16 %146, ptr %147, align 2, !tbaa !25
  %148 = getelementptr inbounds i16, ptr %1, i64 31
  %149 = load i16, ptr %148, align 2, !tbaa !25
  %150 = getelementptr inbounds i16, ptr %0, i64 49
  store i16 %149, ptr %150, align 2, !tbaa !25
  %151 = getelementptr inbounds i16, ptr %1, i64 38
  %152 = load i16, ptr %151, align 2, !tbaa !25
  %153 = getelementptr inbounds i16, ptr %0, i64 50
  store i16 %152, ptr %153, align 2, !tbaa !25
  %154 = getelementptr inbounds i16, ptr %1, i64 45
  %155 = load i16, ptr %154, align 2, !tbaa !25
  %156 = getelementptr inbounds i16, ptr %0, i64 51
  store i16 %155, ptr %156, align 2, !tbaa !25
  %157 = getelementptr inbounds i16, ptr %1, i64 52
  %158 = load i16, ptr %157, align 2, !tbaa !25
  %159 = getelementptr inbounds i16, ptr %0, i64 52
  store i16 %158, ptr %159, align 2, !tbaa !25
  %160 = getelementptr inbounds i16, ptr %1, i64 59
  %161 = load i16, ptr %160, align 2, !tbaa !25
  %162 = getelementptr inbounds i16, ptr %0, i64 53
  store i16 %161, ptr %162, align 2, !tbaa !25
  %163 = getelementptr inbounds i16, ptr %1, i64 60
  %164 = load i16, ptr %163, align 2, !tbaa !25
  %165 = getelementptr inbounds i16, ptr %0, i64 54
  store i16 %164, ptr %165, align 2, !tbaa !25
  %166 = getelementptr inbounds i16, ptr %1, i64 53
  %167 = load i16, ptr %166, align 2, !tbaa !25
  %168 = getelementptr inbounds i16, ptr %0, i64 55
  store i16 %167, ptr %168, align 2, !tbaa !25
  %169 = getelementptr inbounds i16, ptr %1, i64 46
  %170 = load i16, ptr %169, align 2, !tbaa !25
  %171 = getelementptr inbounds i16, ptr %0, i64 56
  store i16 %170, ptr %171, align 2, !tbaa !25
  %172 = getelementptr inbounds i16, ptr %1, i64 39
  %173 = load i16, ptr %172, align 2, !tbaa !25
  %174 = getelementptr inbounds i16, ptr %0, i64 57
  store i16 %173, ptr %174, align 2, !tbaa !25
  %175 = getelementptr inbounds i16, ptr %1, i64 47
  %176 = load i16, ptr %175, align 2, !tbaa !25
  %177 = getelementptr inbounds i16, ptr %0, i64 58
  store i16 %176, ptr %177, align 2, !tbaa !25
  %178 = getelementptr inbounds i16, ptr %1, i64 54
  %179 = load i16, ptr %178, align 2, !tbaa !25
  %180 = getelementptr inbounds i16, ptr %0, i64 59
  store i16 %179, ptr %180, align 2, !tbaa !25
  %181 = getelementptr inbounds i16, ptr %1, i64 61
  %182 = load i16, ptr %181, align 2, !tbaa !25
  %183 = getelementptr inbounds i16, ptr %0, i64 60
  store i16 %182, ptr %183, align 2, !tbaa !25
  %184 = getelementptr inbounds i16, ptr %1, i64 62
  %185 = load i16, ptr %184, align 2, !tbaa !25
  %186 = getelementptr inbounds i16, ptr %0, i64 61
  store i16 %185, ptr %186, align 2, !tbaa !25
  %187 = getelementptr inbounds i16, ptr %1, i64 55
  %188 = load i16, ptr %187, align 2, !tbaa !25
  %189 = getelementptr inbounds i16, ptr %0, i64 62
  store i16 %188, ptr %189, align 2, !tbaa !25
  %190 = getelementptr inbounds i16, ptr %1, i64 63
  %191 = load i16, ptr %190, align 2, !tbaa !25
  %192 = getelementptr inbounds i16, ptr %0, i64 63
  store i16 %191, ptr %192, align 2, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @zigzag_scan_4x4_frame(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #7 {
  %3 = load i16, ptr %1, align 2, !tbaa !25
  store i16 %3, ptr %0, align 2, !tbaa !25
  %4 = getelementptr inbounds i16, ptr %1, i64 4
  %5 = load i16, ptr %4, align 2, !tbaa !25
  %6 = getelementptr inbounds i16, ptr %0, i64 1
  store i16 %5, ptr %6, align 2, !tbaa !25
  %7 = getelementptr inbounds i16, ptr %1, i64 1
  %8 = load i16, ptr %7, align 2, !tbaa !25
  %9 = getelementptr inbounds i16, ptr %0, i64 2
  store i16 %8, ptr %9, align 2, !tbaa !25
  %10 = getelementptr inbounds i16, ptr %1, i64 2
  %11 = load i16, ptr %10, align 2, !tbaa !25
  %12 = getelementptr inbounds i16, ptr %0, i64 3
  store i16 %11, ptr %12, align 2, !tbaa !25
  %13 = getelementptr inbounds i16, ptr %1, i64 5
  %14 = load i16, ptr %13, align 2, !tbaa !25
  %15 = getelementptr inbounds i16, ptr %0, i64 4
  store i16 %14, ptr %15, align 2, !tbaa !25
  %16 = getelementptr inbounds i16, ptr %1, i64 8
  %17 = load i16, ptr %16, align 2, !tbaa !25
  %18 = getelementptr inbounds i16, ptr %0, i64 5
  store i16 %17, ptr %18, align 2, !tbaa !25
  %19 = getelementptr inbounds i16, ptr %1, i64 12
  %20 = load i16, ptr %19, align 2, !tbaa !25
  %21 = getelementptr inbounds i16, ptr %0, i64 6
  store i16 %20, ptr %21, align 2, !tbaa !25
  %22 = getelementptr inbounds i16, ptr %1, i64 9
  %23 = load i16, ptr %22, align 2, !tbaa !25
  %24 = getelementptr inbounds i16, ptr %0, i64 7
  store i16 %23, ptr %24, align 2, !tbaa !25
  %25 = getelementptr inbounds i16, ptr %1, i64 6
  %26 = load i16, ptr %25, align 2, !tbaa !25
  %27 = getelementptr inbounds i16, ptr %0, i64 8
  store i16 %26, ptr %27, align 2, !tbaa !25
  %28 = getelementptr inbounds i16, ptr %1, i64 3
  %29 = load i16, ptr %28, align 2, !tbaa !25
  %30 = getelementptr inbounds i16, ptr %0, i64 9
  store i16 %29, ptr %30, align 2, !tbaa !25
  %31 = getelementptr inbounds i16, ptr %1, i64 7
  %32 = load i16, ptr %31, align 2, !tbaa !25
  %33 = getelementptr inbounds i16, ptr %0, i64 10
  store i16 %32, ptr %33, align 2, !tbaa !25
  %34 = getelementptr inbounds i16, ptr %1, i64 10
  %35 = load i16, ptr %34, align 2, !tbaa !25
  %36 = getelementptr inbounds i16, ptr %0, i64 11
  store i16 %35, ptr %36, align 2, !tbaa !25
  %37 = getelementptr inbounds i16, ptr %1, i64 13
  %38 = load i16, ptr %37, align 2, !tbaa !25
  %39 = getelementptr inbounds i16, ptr %0, i64 12
  store i16 %38, ptr %39, align 2, !tbaa !25
  %40 = getelementptr inbounds i16, ptr %1, i64 14
  %41 = load i16, ptr %40, align 2, !tbaa !25
  %42 = getelementptr inbounds i16, ptr %0, i64 13
  store i16 %41, ptr %42, align 2, !tbaa !25
  %43 = getelementptr inbounds i16, ptr %1, i64 11
  %44 = load i16, ptr %43, align 2, !tbaa !25
  %45 = getelementptr inbounds i16, ptr %0, i64 14
  store i16 %44, ptr %45, align 2, !tbaa !25
  %46 = getelementptr inbounds i16, ptr %1, i64 15
  %47 = load i16, ptr %46, align 2, !tbaa !25
  %48 = getelementptr inbounds i16, ptr %0, i64 15
  store i16 %47, ptr %48, align 2, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal i32 @zigzag_sub_8x8_frame(ptr noundef writeonly %0, ptr noundef readonly %1, ptr noundef %2) #7 {
  %4 = load i8, ptr %1, align 1, !tbaa !30
  %5 = zext i8 %4 to i16
  %6 = load i8, ptr %2, align 1, !tbaa !30
  %7 = zext i8 %6 to i16
  %8 = sub nsw i16 %5, %7
  store i16 %8, ptr %0, align 2, !tbaa !25
  %9 = getelementptr inbounds i8, ptr %1, i64 1
  %10 = load i8, ptr %9, align 1, !tbaa !30
  %11 = zext i8 %10 to i16
  %12 = getelementptr inbounds i8, ptr %2, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !30
  %14 = zext i8 %13 to i16
  %15 = sub nsw i16 %11, %14
  %16 = getelementptr inbounds i16, ptr %0, i64 1
  store i16 %15, ptr %16, align 2, !tbaa !25
  %17 = or i16 %15, %8
  %18 = getelementptr inbounds i8, ptr %1, i64 16
  %19 = load i8, ptr %18, align 1, !tbaa !30
  %20 = zext i8 %19 to i16
  %21 = getelementptr inbounds i8, ptr %2, i64 32
  %22 = load i8, ptr %21, align 1, !tbaa !30
  %23 = zext i8 %22 to i16
  %24 = sub nsw i16 %20, %23
  %25 = getelementptr inbounds i16, ptr %0, i64 2
  store i16 %24, ptr %25, align 2, !tbaa !25
  %26 = or i16 %17, %24
  %27 = getelementptr inbounds i8, ptr %1, i64 32
  %28 = load i8, ptr %27, align 1, !tbaa !30
  %29 = zext i8 %28 to i16
  %30 = getelementptr inbounds i8, ptr %2, i64 64
  %31 = load i8, ptr %30, align 1, !tbaa !30
  %32 = zext i8 %31 to i16
  %33 = sub nsw i16 %29, %32
  %34 = getelementptr inbounds i16, ptr %0, i64 3
  store i16 %33, ptr %34, align 2, !tbaa !25
  %35 = or i16 %26, %33
  %36 = getelementptr inbounds i8, ptr %1, i64 17
  %37 = load i8, ptr %36, align 1, !tbaa !30
  %38 = zext i8 %37 to i16
  %39 = getelementptr inbounds i8, ptr %2, i64 33
  %40 = load i8, ptr %39, align 1, !tbaa !30
  %41 = zext i8 %40 to i16
  %42 = sub nsw i16 %38, %41
  %43 = getelementptr inbounds i16, ptr %0, i64 4
  store i16 %42, ptr %43, align 2, !tbaa !25
  %44 = or i16 %35, %42
  %45 = getelementptr inbounds i8, ptr %1, i64 2
  %46 = load i8, ptr %45, align 1, !tbaa !30
  %47 = zext i8 %46 to i16
  %48 = getelementptr inbounds i8, ptr %2, i64 2
  %49 = load i8, ptr %48, align 1, !tbaa !30
  %50 = zext i8 %49 to i16
  %51 = sub nsw i16 %47, %50
  %52 = getelementptr inbounds i16, ptr %0, i64 5
  store i16 %51, ptr %52, align 2, !tbaa !25
  %53 = or i16 %44, %51
  %54 = getelementptr inbounds i8, ptr %1, i64 3
  %55 = load i8, ptr %54, align 1, !tbaa !30
  %56 = zext i8 %55 to i16
  %57 = getelementptr inbounds i8, ptr %2, i64 3
  %58 = load i8, ptr %57, align 1, !tbaa !30
  %59 = zext i8 %58 to i16
  %60 = sub nsw i16 %56, %59
  %61 = getelementptr inbounds i16, ptr %0, i64 6
  store i16 %60, ptr %61, align 2, !tbaa !25
  %62 = or i16 %53, %60
  %63 = getelementptr inbounds i8, ptr %1, i64 18
  %64 = load i8, ptr %63, align 1, !tbaa !30
  %65 = zext i8 %64 to i16
  %66 = getelementptr inbounds i8, ptr %2, i64 34
  %67 = load i8, ptr %66, align 1, !tbaa !30
  %68 = zext i8 %67 to i16
  %69 = sub nsw i16 %65, %68
  %70 = getelementptr inbounds i16, ptr %0, i64 7
  store i16 %69, ptr %70, align 2, !tbaa !25
  %71 = or i16 %62, %69
  %72 = getelementptr inbounds i8, ptr %1, i64 33
  %73 = load i8, ptr %72, align 1, !tbaa !30
  %74 = zext i8 %73 to i16
  %75 = getelementptr inbounds i8, ptr %2, i64 65
  %76 = load i8, ptr %75, align 1, !tbaa !30
  %77 = zext i8 %76 to i16
  %78 = sub nsw i16 %74, %77
  %79 = getelementptr inbounds i16, ptr %0, i64 8
  store i16 %78, ptr %79, align 2, !tbaa !25
  %80 = or i16 %71, %78
  %81 = getelementptr inbounds i8, ptr %1, i64 48
  %82 = load i8, ptr %81, align 1, !tbaa !30
  %83 = zext i8 %82 to i16
  %84 = getelementptr inbounds i8, ptr %2, i64 96
  %85 = load i8, ptr %84, align 1, !tbaa !30
  %86 = zext i8 %85 to i16
  %87 = sub nsw i16 %83, %86
  %88 = getelementptr inbounds i16, ptr %0, i64 9
  store i16 %87, ptr %88, align 2, !tbaa !25
  %89 = or i16 %80, %87
  %90 = getelementptr inbounds i8, ptr %1, i64 64
  %91 = load i8, ptr %90, align 1, !tbaa !30
  %92 = zext i8 %91 to i16
  %93 = getelementptr inbounds i8, ptr %2, i64 128
  %94 = load i8, ptr %93, align 1, !tbaa !30
  %95 = zext i8 %94 to i16
  %96 = sub nsw i16 %92, %95
  %97 = getelementptr inbounds i16, ptr %0, i64 10
  store i16 %96, ptr %97, align 2, !tbaa !25
  %98 = or i16 %89, %96
  %99 = getelementptr inbounds i8, ptr %1, i64 49
  %100 = load i8, ptr %99, align 1, !tbaa !30
  %101 = zext i8 %100 to i16
  %102 = getelementptr inbounds i8, ptr %2, i64 97
  %103 = load i8, ptr %102, align 1, !tbaa !30
  %104 = zext i8 %103 to i16
  %105 = sub nsw i16 %101, %104
  %106 = getelementptr inbounds i16, ptr %0, i64 11
  store i16 %105, ptr %106, align 2, !tbaa !25
  %107 = or i16 %98, %105
  %108 = getelementptr inbounds i8, ptr %1, i64 34
  %109 = load i8, ptr %108, align 1, !tbaa !30
  %110 = zext i8 %109 to i16
  %111 = getelementptr inbounds i8, ptr %2, i64 66
  %112 = load i8, ptr %111, align 1, !tbaa !30
  %113 = zext i8 %112 to i16
  %114 = sub nsw i16 %110, %113
  %115 = getelementptr inbounds i16, ptr %0, i64 12
  store i16 %114, ptr %115, align 2, !tbaa !25
  %116 = or i16 %107, %114
  %117 = getelementptr inbounds i8, ptr %1, i64 19
  %118 = load i8, ptr %117, align 1, !tbaa !30
  %119 = zext i8 %118 to i16
  %120 = getelementptr inbounds i8, ptr %2, i64 35
  %121 = load i8, ptr %120, align 1, !tbaa !30
  %122 = zext i8 %121 to i16
  %123 = sub nsw i16 %119, %122
  %124 = getelementptr inbounds i16, ptr %0, i64 13
  store i16 %123, ptr %124, align 2, !tbaa !25
  %125 = or i16 %116, %123
  %126 = getelementptr inbounds i8, ptr %1, i64 4
  %127 = load i8, ptr %126, align 1, !tbaa !30
  %128 = zext i8 %127 to i16
  %129 = getelementptr inbounds i8, ptr %2, i64 4
  %130 = load i8, ptr %129, align 1, !tbaa !30
  %131 = zext i8 %130 to i16
  %132 = sub nsw i16 %128, %131
  %133 = getelementptr inbounds i16, ptr %0, i64 14
  store i16 %132, ptr %133, align 2, !tbaa !25
  %134 = or i16 %125, %132
  %135 = getelementptr inbounds i8, ptr %1, i64 5
  %136 = load i8, ptr %135, align 1, !tbaa !30
  %137 = zext i8 %136 to i16
  %138 = getelementptr inbounds i8, ptr %2, i64 5
  %139 = load i8, ptr %138, align 1, !tbaa !30
  %140 = zext i8 %139 to i16
  %141 = sub nsw i16 %137, %140
  %142 = getelementptr inbounds i16, ptr %0, i64 15
  store i16 %141, ptr %142, align 2, !tbaa !25
  %143 = or i16 %134, %141
  %144 = getelementptr inbounds i8, ptr %1, i64 20
  %145 = load i8, ptr %144, align 1, !tbaa !30
  %146 = zext i8 %145 to i16
  %147 = getelementptr inbounds i8, ptr %2, i64 36
  %148 = load i8, ptr %147, align 1, !tbaa !30
  %149 = zext i8 %148 to i16
  %150 = sub nsw i16 %146, %149
  %151 = getelementptr inbounds i16, ptr %0, i64 16
  store i16 %150, ptr %151, align 2, !tbaa !25
  %152 = or i16 %143, %150
  %153 = getelementptr inbounds i8, ptr %1, i64 35
  %154 = load i8, ptr %153, align 1, !tbaa !30
  %155 = zext i8 %154 to i16
  %156 = getelementptr inbounds i8, ptr %2, i64 67
  %157 = load i8, ptr %156, align 1, !tbaa !30
  %158 = zext i8 %157 to i16
  %159 = sub nsw i16 %155, %158
  %160 = getelementptr inbounds i16, ptr %0, i64 17
  store i16 %159, ptr %160, align 2, !tbaa !25
  %161 = or i16 %152, %159
  %162 = getelementptr inbounds i8, ptr %1, i64 50
  %163 = load i8, ptr %162, align 1, !tbaa !30
  %164 = zext i8 %163 to i16
  %165 = getelementptr inbounds i8, ptr %2, i64 98
  %166 = load i8, ptr %165, align 1, !tbaa !30
  %167 = zext i8 %166 to i16
  %168 = sub nsw i16 %164, %167
  %169 = getelementptr inbounds i16, ptr %0, i64 18
  store i16 %168, ptr %169, align 2, !tbaa !25
  %170 = or i16 %161, %168
  %171 = getelementptr inbounds i8, ptr %1, i64 65
  %172 = load i8, ptr %171, align 1, !tbaa !30
  %173 = zext i8 %172 to i16
  %174 = getelementptr inbounds i8, ptr %2, i64 129
  %175 = load i8, ptr %174, align 1, !tbaa !30
  %176 = zext i8 %175 to i16
  %177 = sub nsw i16 %173, %176
  %178 = getelementptr inbounds i16, ptr %0, i64 19
  store i16 %177, ptr %178, align 2, !tbaa !25
  %179 = or i16 %170, %177
  %180 = getelementptr inbounds i8, ptr %1, i64 80
  %181 = load i8, ptr %180, align 1, !tbaa !30
  %182 = zext i8 %181 to i16
  %183 = getelementptr inbounds i8, ptr %2, i64 160
  %184 = load i8, ptr %183, align 1, !tbaa !30
  %185 = zext i8 %184 to i16
  %186 = sub nsw i16 %182, %185
  %187 = getelementptr inbounds i16, ptr %0, i64 20
  store i16 %186, ptr %187, align 2, !tbaa !25
  %188 = or i16 %179, %186
  %189 = getelementptr inbounds i8, ptr %1, i64 96
  %190 = load i8, ptr %189, align 1, !tbaa !30
  %191 = zext i8 %190 to i16
  %192 = getelementptr inbounds i8, ptr %2, i64 192
  %193 = load i8, ptr %192, align 1, !tbaa !30
  %194 = zext i8 %193 to i16
  %195 = sub nsw i16 %191, %194
  %196 = getelementptr inbounds i16, ptr %0, i64 21
  store i16 %195, ptr %196, align 2, !tbaa !25
  %197 = or i16 %188, %195
  %198 = getelementptr inbounds i8, ptr %1, i64 81
  %199 = load i8, ptr %198, align 1, !tbaa !30
  %200 = zext i8 %199 to i16
  %201 = getelementptr inbounds i8, ptr %2, i64 161
  %202 = load i8, ptr %201, align 1, !tbaa !30
  %203 = zext i8 %202 to i16
  %204 = sub nsw i16 %200, %203
  %205 = getelementptr inbounds i16, ptr %0, i64 22
  store i16 %204, ptr %205, align 2, !tbaa !25
  %206 = or i16 %197, %204
  %207 = getelementptr inbounds i8, ptr %1, i64 66
  %208 = load i8, ptr %207, align 1, !tbaa !30
  %209 = zext i8 %208 to i16
  %210 = getelementptr inbounds i8, ptr %2, i64 130
  %211 = load i8, ptr %210, align 1, !tbaa !30
  %212 = zext i8 %211 to i16
  %213 = sub nsw i16 %209, %212
  %214 = getelementptr inbounds i16, ptr %0, i64 23
  store i16 %213, ptr %214, align 2, !tbaa !25
  %215 = or i16 %206, %213
  %216 = getelementptr inbounds i8, ptr %1, i64 51
  %217 = load i8, ptr %216, align 1, !tbaa !30
  %218 = zext i8 %217 to i16
  %219 = getelementptr inbounds i8, ptr %2, i64 99
  %220 = load i8, ptr %219, align 1, !tbaa !30
  %221 = zext i8 %220 to i16
  %222 = sub nsw i16 %218, %221
  %223 = getelementptr inbounds i16, ptr %0, i64 24
  store i16 %222, ptr %223, align 2, !tbaa !25
  %224 = or i16 %215, %222
  %225 = getelementptr inbounds i8, ptr %1, i64 36
  %226 = load i8, ptr %225, align 1, !tbaa !30
  %227 = zext i8 %226 to i16
  %228 = getelementptr inbounds i8, ptr %2, i64 68
  %229 = load i8, ptr %228, align 1, !tbaa !30
  %230 = zext i8 %229 to i16
  %231 = sub nsw i16 %227, %230
  %232 = getelementptr inbounds i16, ptr %0, i64 25
  store i16 %231, ptr %232, align 2, !tbaa !25
  %233 = or i16 %224, %231
  %234 = getelementptr inbounds i8, ptr %1, i64 21
  %235 = load i8, ptr %234, align 1, !tbaa !30
  %236 = zext i8 %235 to i16
  %237 = getelementptr inbounds i8, ptr %2, i64 37
  %238 = load i8, ptr %237, align 1, !tbaa !30
  %239 = zext i8 %238 to i16
  %240 = sub nsw i16 %236, %239
  %241 = getelementptr inbounds i16, ptr %0, i64 26
  store i16 %240, ptr %241, align 2, !tbaa !25
  %242 = or i16 %233, %240
  %243 = getelementptr inbounds i8, ptr %1, i64 6
  %244 = load i8, ptr %243, align 1, !tbaa !30
  %245 = zext i8 %244 to i16
  %246 = getelementptr inbounds i8, ptr %2, i64 6
  %247 = load i8, ptr %246, align 1, !tbaa !30
  %248 = zext i8 %247 to i16
  %249 = sub nsw i16 %245, %248
  %250 = getelementptr inbounds i16, ptr %0, i64 27
  store i16 %249, ptr %250, align 2, !tbaa !25
  %251 = or i16 %242, %249
  %252 = getelementptr inbounds i8, ptr %1, i64 7
  %253 = load i8, ptr %252, align 1, !tbaa !30
  %254 = zext i8 %253 to i16
  %255 = getelementptr inbounds i8, ptr %2, i64 7
  %256 = load i8, ptr %255, align 1, !tbaa !30
  %257 = zext i8 %256 to i16
  %258 = sub nsw i16 %254, %257
  %259 = getelementptr inbounds i16, ptr %0, i64 28
  store i16 %258, ptr %259, align 2, !tbaa !25
  %260 = or i16 %251, %258
  %261 = getelementptr inbounds i8, ptr %1, i64 22
  %262 = load i8, ptr %261, align 1, !tbaa !30
  %263 = zext i8 %262 to i16
  %264 = getelementptr inbounds i8, ptr %2, i64 38
  %265 = load i8, ptr %264, align 1, !tbaa !30
  %266 = zext i8 %265 to i16
  %267 = sub nsw i16 %263, %266
  %268 = getelementptr inbounds i16, ptr %0, i64 29
  store i16 %267, ptr %268, align 2, !tbaa !25
  %269 = or i16 %260, %267
  %270 = getelementptr inbounds i8, ptr %1, i64 37
  %271 = load i8, ptr %270, align 1, !tbaa !30
  %272 = zext i8 %271 to i16
  %273 = getelementptr inbounds i8, ptr %2, i64 69
  %274 = load i8, ptr %273, align 1, !tbaa !30
  %275 = zext i8 %274 to i16
  %276 = sub nsw i16 %272, %275
  %277 = getelementptr inbounds i16, ptr %0, i64 30
  store i16 %276, ptr %277, align 2, !tbaa !25
  %278 = or i16 %269, %276
  %279 = getelementptr inbounds i8, ptr %1, i64 52
  %280 = load i8, ptr %279, align 1, !tbaa !30
  %281 = zext i8 %280 to i16
  %282 = getelementptr inbounds i8, ptr %2, i64 100
  %283 = load i8, ptr %282, align 1, !tbaa !30
  %284 = zext i8 %283 to i16
  %285 = sub nsw i16 %281, %284
  %286 = getelementptr inbounds i16, ptr %0, i64 31
  store i16 %285, ptr %286, align 2, !tbaa !25
  %287 = or i16 %278, %285
  %288 = getelementptr inbounds i8, ptr %1, i64 67
  %289 = load i8, ptr %288, align 1, !tbaa !30
  %290 = zext i8 %289 to i16
  %291 = getelementptr inbounds i8, ptr %2, i64 131
  %292 = load i8, ptr %291, align 1, !tbaa !30
  %293 = zext i8 %292 to i16
  %294 = sub nsw i16 %290, %293
  %295 = getelementptr inbounds i16, ptr %0, i64 32
  store i16 %294, ptr %295, align 2, !tbaa !25
  %296 = or i16 %287, %294
  %297 = getelementptr inbounds i8, ptr %1, i64 82
  %298 = load i8, ptr %297, align 1, !tbaa !30
  %299 = zext i8 %298 to i16
  %300 = getelementptr inbounds i8, ptr %2, i64 162
  %301 = load i8, ptr %300, align 1, !tbaa !30
  %302 = zext i8 %301 to i16
  %303 = sub nsw i16 %299, %302
  %304 = getelementptr inbounds i16, ptr %0, i64 33
  store i16 %303, ptr %304, align 2, !tbaa !25
  %305 = or i16 %296, %303
  %306 = getelementptr inbounds i8, ptr %1, i64 97
  %307 = load i8, ptr %306, align 1, !tbaa !30
  %308 = zext i8 %307 to i16
  %309 = getelementptr inbounds i8, ptr %2, i64 193
  %310 = load i8, ptr %309, align 1, !tbaa !30
  %311 = zext i8 %310 to i16
  %312 = sub nsw i16 %308, %311
  %313 = getelementptr inbounds i16, ptr %0, i64 34
  store i16 %312, ptr %313, align 2, !tbaa !25
  %314 = or i16 %305, %312
  %315 = getelementptr inbounds i8, ptr %1, i64 112
  %316 = load i8, ptr %315, align 1, !tbaa !30
  %317 = zext i8 %316 to i16
  %318 = getelementptr inbounds i8, ptr %2, i64 224
  %319 = load i8, ptr %318, align 1, !tbaa !30
  %320 = zext i8 %319 to i16
  %321 = sub nsw i16 %317, %320
  %322 = getelementptr inbounds i16, ptr %0, i64 35
  store i16 %321, ptr %322, align 2, !tbaa !25
  %323 = or i16 %314, %321
  %324 = getelementptr inbounds i8, ptr %1, i64 113
  %325 = load i8, ptr %324, align 1, !tbaa !30
  %326 = zext i8 %325 to i16
  %327 = getelementptr inbounds i8, ptr %2, i64 225
  %328 = load i8, ptr %327, align 1, !tbaa !30
  %329 = zext i8 %328 to i16
  %330 = sub nsw i16 %326, %329
  %331 = getelementptr inbounds i16, ptr %0, i64 36
  store i16 %330, ptr %331, align 2, !tbaa !25
  %332 = or i16 %323, %330
  %333 = getelementptr inbounds i8, ptr %1, i64 98
  %334 = load i8, ptr %333, align 1, !tbaa !30
  %335 = zext i8 %334 to i16
  %336 = getelementptr inbounds i8, ptr %2, i64 194
  %337 = load i8, ptr %336, align 1, !tbaa !30
  %338 = zext i8 %337 to i16
  %339 = sub nsw i16 %335, %338
  %340 = getelementptr inbounds i16, ptr %0, i64 37
  store i16 %339, ptr %340, align 2, !tbaa !25
  %341 = or i16 %332, %339
  %342 = getelementptr inbounds i8, ptr %1, i64 83
  %343 = load i8, ptr %342, align 1, !tbaa !30
  %344 = zext i8 %343 to i16
  %345 = getelementptr inbounds i8, ptr %2, i64 163
  %346 = load i8, ptr %345, align 1, !tbaa !30
  %347 = zext i8 %346 to i16
  %348 = sub nsw i16 %344, %347
  %349 = getelementptr inbounds i16, ptr %0, i64 38
  store i16 %348, ptr %349, align 2, !tbaa !25
  %350 = or i16 %341, %348
  %351 = getelementptr inbounds i8, ptr %1, i64 68
  %352 = load i8, ptr %351, align 1, !tbaa !30
  %353 = zext i8 %352 to i16
  %354 = getelementptr inbounds i8, ptr %2, i64 132
  %355 = load i8, ptr %354, align 1, !tbaa !30
  %356 = zext i8 %355 to i16
  %357 = sub nsw i16 %353, %356
  %358 = getelementptr inbounds i16, ptr %0, i64 39
  store i16 %357, ptr %358, align 2, !tbaa !25
  %359 = or i16 %350, %357
  %360 = getelementptr inbounds i8, ptr %1, i64 53
  %361 = load i8, ptr %360, align 1, !tbaa !30
  %362 = zext i8 %361 to i16
  %363 = getelementptr inbounds i8, ptr %2, i64 101
  %364 = load i8, ptr %363, align 1, !tbaa !30
  %365 = zext i8 %364 to i16
  %366 = sub nsw i16 %362, %365
  %367 = getelementptr inbounds i16, ptr %0, i64 40
  store i16 %366, ptr %367, align 2, !tbaa !25
  %368 = or i16 %359, %366
  %369 = getelementptr inbounds i8, ptr %1, i64 38
  %370 = load i8, ptr %369, align 1, !tbaa !30
  %371 = zext i8 %370 to i16
  %372 = getelementptr inbounds i8, ptr %2, i64 70
  %373 = load i8, ptr %372, align 1, !tbaa !30
  %374 = zext i8 %373 to i16
  %375 = sub nsw i16 %371, %374
  %376 = getelementptr inbounds i16, ptr %0, i64 41
  store i16 %375, ptr %376, align 2, !tbaa !25
  %377 = or i16 %368, %375
  %378 = getelementptr inbounds i8, ptr %1, i64 23
  %379 = load i8, ptr %378, align 1, !tbaa !30
  %380 = zext i8 %379 to i16
  %381 = getelementptr inbounds i8, ptr %2, i64 39
  %382 = load i8, ptr %381, align 1, !tbaa !30
  %383 = zext i8 %382 to i16
  %384 = sub nsw i16 %380, %383
  %385 = getelementptr inbounds i16, ptr %0, i64 42
  store i16 %384, ptr %385, align 2, !tbaa !25
  %386 = or i16 %377, %384
  %387 = getelementptr inbounds i8, ptr %1, i64 39
  %388 = load i8, ptr %387, align 1, !tbaa !30
  %389 = zext i8 %388 to i16
  %390 = getelementptr inbounds i8, ptr %2, i64 71
  %391 = load i8, ptr %390, align 1, !tbaa !30
  %392 = zext i8 %391 to i16
  %393 = sub nsw i16 %389, %392
  %394 = getelementptr inbounds i16, ptr %0, i64 43
  store i16 %393, ptr %394, align 2, !tbaa !25
  %395 = or i16 %386, %393
  %396 = getelementptr inbounds i8, ptr %1, i64 54
  %397 = load i8, ptr %396, align 1, !tbaa !30
  %398 = zext i8 %397 to i16
  %399 = getelementptr inbounds i8, ptr %2, i64 102
  %400 = load i8, ptr %399, align 1, !tbaa !30
  %401 = zext i8 %400 to i16
  %402 = sub nsw i16 %398, %401
  %403 = getelementptr inbounds i16, ptr %0, i64 44
  store i16 %402, ptr %403, align 2, !tbaa !25
  %404 = or i16 %395, %402
  %405 = getelementptr inbounds i8, ptr %1, i64 69
  %406 = load i8, ptr %405, align 1, !tbaa !30
  %407 = zext i8 %406 to i16
  %408 = getelementptr inbounds i8, ptr %2, i64 133
  %409 = load i8, ptr %408, align 1, !tbaa !30
  %410 = zext i8 %409 to i16
  %411 = sub nsw i16 %407, %410
  %412 = getelementptr inbounds i16, ptr %0, i64 45
  store i16 %411, ptr %412, align 2, !tbaa !25
  %413 = or i16 %404, %411
  %414 = getelementptr inbounds i8, ptr %1, i64 84
  %415 = load i8, ptr %414, align 1, !tbaa !30
  %416 = zext i8 %415 to i16
  %417 = getelementptr inbounds i8, ptr %2, i64 164
  %418 = load i8, ptr %417, align 1, !tbaa !30
  %419 = zext i8 %418 to i16
  %420 = sub nsw i16 %416, %419
  %421 = getelementptr inbounds i16, ptr %0, i64 46
  store i16 %420, ptr %421, align 2, !tbaa !25
  %422 = or i16 %413, %420
  %423 = getelementptr inbounds i8, ptr %1, i64 99
  %424 = load i8, ptr %423, align 1, !tbaa !30
  %425 = zext i8 %424 to i16
  %426 = getelementptr inbounds i8, ptr %2, i64 195
  %427 = load i8, ptr %426, align 1, !tbaa !30
  %428 = zext i8 %427 to i16
  %429 = sub nsw i16 %425, %428
  %430 = getelementptr inbounds i16, ptr %0, i64 47
  store i16 %429, ptr %430, align 2, !tbaa !25
  %431 = or i16 %422, %429
  %432 = getelementptr inbounds i8, ptr %1, i64 114
  %433 = load i8, ptr %432, align 1, !tbaa !30
  %434 = zext i8 %433 to i16
  %435 = getelementptr inbounds i8, ptr %2, i64 226
  %436 = load i8, ptr %435, align 1, !tbaa !30
  %437 = zext i8 %436 to i16
  %438 = sub nsw i16 %434, %437
  %439 = getelementptr inbounds i16, ptr %0, i64 48
  store i16 %438, ptr %439, align 2, !tbaa !25
  %440 = or i16 %431, %438
  %441 = getelementptr inbounds i8, ptr %1, i64 115
  %442 = load i8, ptr %441, align 1, !tbaa !30
  %443 = zext i8 %442 to i16
  %444 = getelementptr inbounds i8, ptr %2, i64 227
  %445 = load i8, ptr %444, align 1, !tbaa !30
  %446 = zext i8 %445 to i16
  %447 = sub nsw i16 %443, %446
  %448 = getelementptr inbounds i16, ptr %0, i64 49
  store i16 %447, ptr %448, align 2, !tbaa !25
  %449 = or i16 %440, %447
  %450 = getelementptr inbounds i8, ptr %1, i64 100
  %451 = load i8, ptr %450, align 1, !tbaa !30
  %452 = zext i8 %451 to i16
  %453 = getelementptr inbounds i8, ptr %2, i64 196
  %454 = load i8, ptr %453, align 1, !tbaa !30
  %455 = zext i8 %454 to i16
  %456 = sub nsw i16 %452, %455
  %457 = getelementptr inbounds i16, ptr %0, i64 50
  store i16 %456, ptr %457, align 2, !tbaa !25
  %458 = or i16 %449, %456
  %459 = getelementptr inbounds i8, ptr %1, i64 85
  %460 = load i8, ptr %459, align 1, !tbaa !30
  %461 = zext i8 %460 to i16
  %462 = getelementptr inbounds i8, ptr %2, i64 165
  %463 = load i8, ptr %462, align 1, !tbaa !30
  %464 = zext i8 %463 to i16
  %465 = sub nsw i16 %461, %464
  %466 = getelementptr inbounds i16, ptr %0, i64 51
  store i16 %465, ptr %466, align 2, !tbaa !25
  %467 = or i16 %458, %465
  %468 = getelementptr inbounds i8, ptr %1, i64 70
  %469 = load i8, ptr %468, align 1, !tbaa !30
  %470 = zext i8 %469 to i16
  %471 = getelementptr inbounds i8, ptr %2, i64 134
  %472 = load i8, ptr %471, align 1, !tbaa !30
  %473 = zext i8 %472 to i16
  %474 = sub nsw i16 %470, %473
  %475 = getelementptr inbounds i16, ptr %0, i64 52
  store i16 %474, ptr %475, align 2, !tbaa !25
  %476 = or i16 %467, %474
  %477 = getelementptr inbounds i8, ptr %1, i64 55
  %478 = load i8, ptr %477, align 1, !tbaa !30
  %479 = zext i8 %478 to i16
  %480 = getelementptr inbounds i8, ptr %2, i64 103
  %481 = load i8, ptr %480, align 1, !tbaa !30
  %482 = zext i8 %481 to i16
  %483 = sub nsw i16 %479, %482
  %484 = getelementptr inbounds i16, ptr %0, i64 53
  store i16 %483, ptr %484, align 2, !tbaa !25
  %485 = or i16 %476, %483
  %486 = getelementptr inbounds i8, ptr %1, i64 71
  %487 = load i8, ptr %486, align 1, !tbaa !30
  %488 = zext i8 %487 to i16
  %489 = getelementptr inbounds i8, ptr %2, i64 135
  %490 = load i8, ptr %489, align 1, !tbaa !30
  %491 = zext i8 %490 to i16
  %492 = sub nsw i16 %488, %491
  %493 = getelementptr inbounds i16, ptr %0, i64 54
  store i16 %492, ptr %493, align 2, !tbaa !25
  %494 = or i16 %485, %492
  %495 = getelementptr inbounds i8, ptr %1, i64 86
  %496 = load i8, ptr %495, align 1, !tbaa !30
  %497 = zext i8 %496 to i16
  %498 = getelementptr inbounds i8, ptr %2, i64 166
  %499 = load i8, ptr %498, align 1, !tbaa !30
  %500 = zext i8 %499 to i16
  %501 = sub nsw i16 %497, %500
  %502 = getelementptr inbounds i16, ptr %0, i64 55
  store i16 %501, ptr %502, align 2, !tbaa !25
  %503 = or i16 %494, %501
  %504 = getelementptr inbounds i8, ptr %1, i64 101
  %505 = load i8, ptr %504, align 1, !tbaa !30
  %506 = zext i8 %505 to i16
  %507 = getelementptr inbounds i8, ptr %2, i64 197
  %508 = load i8, ptr %507, align 1, !tbaa !30
  %509 = zext i8 %508 to i16
  %510 = sub nsw i16 %506, %509
  %511 = getelementptr inbounds i16, ptr %0, i64 56
  store i16 %510, ptr %511, align 2, !tbaa !25
  %512 = or i16 %503, %510
  %513 = getelementptr inbounds i8, ptr %1, i64 116
  %514 = load i8, ptr %513, align 1, !tbaa !30
  %515 = zext i8 %514 to i16
  %516 = getelementptr inbounds i8, ptr %2, i64 228
  %517 = load i8, ptr %516, align 1, !tbaa !30
  %518 = zext i8 %517 to i16
  %519 = sub nsw i16 %515, %518
  %520 = getelementptr inbounds i16, ptr %0, i64 57
  store i16 %519, ptr %520, align 2, !tbaa !25
  %521 = or i16 %512, %519
  %522 = getelementptr inbounds i8, ptr %1, i64 117
  %523 = load i8, ptr %522, align 1, !tbaa !30
  %524 = zext i8 %523 to i16
  %525 = getelementptr inbounds i8, ptr %2, i64 229
  %526 = load i8, ptr %525, align 1, !tbaa !30
  %527 = zext i8 %526 to i16
  %528 = sub nsw i16 %524, %527
  %529 = getelementptr inbounds i16, ptr %0, i64 58
  store i16 %528, ptr %529, align 2, !tbaa !25
  %530 = or i16 %521, %528
  %531 = getelementptr inbounds i8, ptr %1, i64 102
  %532 = load i8, ptr %531, align 1, !tbaa !30
  %533 = zext i8 %532 to i16
  %534 = getelementptr inbounds i8, ptr %2, i64 198
  %535 = load i8, ptr %534, align 1, !tbaa !30
  %536 = zext i8 %535 to i16
  %537 = sub nsw i16 %533, %536
  %538 = getelementptr inbounds i16, ptr %0, i64 59
  store i16 %537, ptr %538, align 2, !tbaa !25
  %539 = or i16 %530, %537
  %540 = getelementptr inbounds i8, ptr %1, i64 87
  %541 = load i8, ptr %540, align 1, !tbaa !30
  %542 = zext i8 %541 to i16
  %543 = getelementptr inbounds i8, ptr %2, i64 167
  %544 = load i8, ptr %543, align 1, !tbaa !30
  %545 = zext i8 %544 to i16
  %546 = sub nsw i16 %542, %545
  %547 = getelementptr inbounds i16, ptr %0, i64 60
  store i16 %546, ptr %547, align 2, !tbaa !25
  %548 = or i16 %539, %546
  %549 = getelementptr inbounds i8, ptr %1, i64 103
  %550 = load i8, ptr %549, align 1, !tbaa !30
  %551 = zext i8 %550 to i16
  %552 = getelementptr inbounds i8, ptr %2, i64 199
  %553 = load i8, ptr %552, align 1, !tbaa !30
  %554 = zext i8 %553 to i16
  %555 = sub nsw i16 %551, %554
  %556 = getelementptr inbounds i16, ptr %0, i64 61
  store i16 %555, ptr %556, align 2, !tbaa !25
  %557 = or i16 %548, %555
  %558 = getelementptr inbounds i8, ptr %1, i64 118
  %559 = load i8, ptr %558, align 1, !tbaa !30
  %560 = zext i8 %559 to i16
  %561 = getelementptr inbounds i8, ptr %2, i64 230
  %562 = load i8, ptr %561, align 1, !tbaa !30
  %563 = zext i8 %562 to i16
  %564 = sub nsw i16 %560, %563
  %565 = getelementptr inbounds i16, ptr %0, i64 62
  store i16 %564, ptr %565, align 2, !tbaa !25
  %566 = or i16 %557, %564
  %567 = getelementptr inbounds i8, ptr %1, i64 119
  %568 = load i8, ptr %567, align 1, !tbaa !30
  %569 = zext i8 %568 to i16
  %570 = getelementptr inbounds i8, ptr %2, i64 231
  %571 = load i8, ptr %570, align 1, !tbaa !30
  %572 = zext i8 %571 to i16
  %573 = sub nsw i16 %569, %572
  %574 = getelementptr inbounds i16, ptr %0, i64 63
  store i16 %573, ptr %574, align 2, !tbaa !25
  %575 = or i16 %566, %573
  %576 = load i64, ptr %1, align 8, !tbaa !30
  store i64 %576, ptr %2, align 8, !tbaa !30
  %577 = load i64, ptr %18, align 8, !tbaa !30
  store i64 %577, ptr %21, align 8, !tbaa !30
  %578 = load i64, ptr %27, align 8, !tbaa !30
  store i64 %578, ptr %30, align 8, !tbaa !30
  %579 = load i64, ptr %81, align 8, !tbaa !30
  store i64 %579, ptr %84, align 8, !tbaa !30
  %580 = load i64, ptr %90, align 8, !tbaa !30
  store i64 %580, ptr %93, align 8, !tbaa !30
  %581 = load i64, ptr %180, align 8, !tbaa !30
  store i64 %581, ptr %183, align 8, !tbaa !30
  %582 = load i64, ptr %189, align 8, !tbaa !30
  store i64 %582, ptr %192, align 8, !tbaa !30
  %583 = load i64, ptr %315, align 8, !tbaa !30
  store i64 %583, ptr %318, align 8, !tbaa !30
  %584 = icmp ne i16 %575, 0
  %585 = zext i1 %584 to i32
  ret i32 %585
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal i32 @zigzag_sub_4x4_frame(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #7 {
  %4 = load i8, ptr %1, align 1, !tbaa !30
  %5 = zext i8 %4 to i16
  %6 = load i8, ptr %2, align 1, !tbaa !30
  %7 = zext i8 %6 to i16
  %8 = sub nsw i16 %5, %7
  store i16 %8, ptr %0, align 2, !tbaa !25
  %9 = getelementptr inbounds i8, ptr %1, i64 1
  %10 = load i8, ptr %9, align 1, !tbaa !30
  %11 = zext i8 %10 to i16
  %12 = getelementptr inbounds i8, ptr %2, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !30
  %14 = zext i8 %13 to i16
  %15 = sub nsw i16 %11, %14
  %16 = getelementptr inbounds i16, ptr %0, i64 1
  store i16 %15, ptr %16, align 2, !tbaa !25
  %17 = or i16 %15, %8
  %18 = getelementptr inbounds i8, ptr %1, i64 16
  %19 = load i8, ptr %18, align 1, !tbaa !30
  %20 = zext i8 %19 to i16
  %21 = getelementptr inbounds i8, ptr %2, i64 32
  %22 = load i8, ptr %21, align 1, !tbaa !30
  %23 = zext i8 %22 to i16
  %24 = sub nsw i16 %20, %23
  %25 = getelementptr inbounds i16, ptr %0, i64 2
  store i16 %24, ptr %25, align 2, !tbaa !25
  %26 = or i16 %17, %24
  %27 = getelementptr inbounds i8, ptr %1, i64 32
  %28 = load i8, ptr %27, align 1, !tbaa !30
  %29 = zext i8 %28 to i16
  %30 = getelementptr inbounds i8, ptr %2, i64 64
  %31 = load i8, ptr %30, align 1, !tbaa !30
  %32 = zext i8 %31 to i16
  %33 = sub nsw i16 %29, %32
  %34 = getelementptr inbounds i16, ptr %0, i64 3
  store i16 %33, ptr %34, align 2, !tbaa !25
  %35 = or i16 %26, %33
  %36 = getelementptr inbounds i8, ptr %1, i64 17
  %37 = load i8, ptr %36, align 1, !tbaa !30
  %38 = zext i8 %37 to i16
  %39 = getelementptr inbounds i8, ptr %2, i64 33
  %40 = load i8, ptr %39, align 1, !tbaa !30
  %41 = zext i8 %40 to i16
  %42 = sub nsw i16 %38, %41
  %43 = getelementptr inbounds i16, ptr %0, i64 4
  store i16 %42, ptr %43, align 2, !tbaa !25
  %44 = or i16 %35, %42
  %45 = getelementptr inbounds i8, ptr %1, i64 2
  %46 = load i8, ptr %45, align 1, !tbaa !30
  %47 = zext i8 %46 to i16
  %48 = getelementptr inbounds i8, ptr %2, i64 2
  %49 = load i8, ptr %48, align 1, !tbaa !30
  %50 = zext i8 %49 to i16
  %51 = sub nsw i16 %47, %50
  %52 = getelementptr inbounds i16, ptr %0, i64 5
  store i16 %51, ptr %52, align 2, !tbaa !25
  %53 = or i16 %44, %51
  %54 = getelementptr inbounds i8, ptr %1, i64 3
  %55 = load i8, ptr %54, align 1, !tbaa !30
  %56 = zext i8 %55 to i16
  %57 = getelementptr inbounds i8, ptr %2, i64 3
  %58 = load i8, ptr %57, align 1, !tbaa !30
  %59 = zext i8 %58 to i16
  %60 = sub nsw i16 %56, %59
  %61 = getelementptr inbounds i16, ptr %0, i64 6
  store i16 %60, ptr %61, align 2, !tbaa !25
  %62 = or i16 %53, %60
  %63 = getelementptr inbounds i8, ptr %1, i64 18
  %64 = load i8, ptr %63, align 1, !tbaa !30
  %65 = zext i8 %64 to i16
  %66 = getelementptr inbounds i8, ptr %2, i64 34
  %67 = load i8, ptr %66, align 1, !tbaa !30
  %68 = zext i8 %67 to i16
  %69 = sub nsw i16 %65, %68
  %70 = getelementptr inbounds i16, ptr %0, i64 7
  store i16 %69, ptr %70, align 2, !tbaa !25
  %71 = or i16 %62, %69
  %72 = getelementptr inbounds i8, ptr %1, i64 33
  %73 = load i8, ptr %72, align 1, !tbaa !30
  %74 = zext i8 %73 to i16
  %75 = getelementptr inbounds i8, ptr %2, i64 65
  %76 = load i8, ptr %75, align 1, !tbaa !30
  %77 = zext i8 %76 to i16
  %78 = sub nsw i16 %74, %77
  %79 = getelementptr inbounds i16, ptr %0, i64 8
  store i16 %78, ptr %79, align 2, !tbaa !25
  %80 = or i16 %71, %78
  %81 = getelementptr inbounds i8, ptr %1, i64 48
  %82 = load i8, ptr %81, align 1, !tbaa !30
  %83 = zext i8 %82 to i16
  %84 = getelementptr inbounds i8, ptr %2, i64 96
  %85 = load i8, ptr %84, align 1, !tbaa !30
  %86 = zext i8 %85 to i16
  %87 = sub nsw i16 %83, %86
  %88 = getelementptr inbounds i16, ptr %0, i64 9
  store i16 %87, ptr %88, align 2, !tbaa !25
  %89 = or i16 %80, %87
  %90 = getelementptr inbounds i8, ptr %1, i64 49
  %91 = load i8, ptr %90, align 1, !tbaa !30
  %92 = zext i8 %91 to i16
  %93 = getelementptr inbounds i8, ptr %2, i64 97
  %94 = load i8, ptr %93, align 1, !tbaa !30
  %95 = zext i8 %94 to i16
  %96 = sub nsw i16 %92, %95
  %97 = getelementptr inbounds i16, ptr %0, i64 10
  store i16 %96, ptr %97, align 2, !tbaa !25
  %98 = or i16 %89, %96
  %99 = getelementptr inbounds i8, ptr %1, i64 34
  %100 = load i8, ptr %99, align 1, !tbaa !30
  %101 = zext i8 %100 to i16
  %102 = getelementptr inbounds i8, ptr %2, i64 66
  %103 = load i8, ptr %102, align 1, !tbaa !30
  %104 = zext i8 %103 to i16
  %105 = sub nsw i16 %101, %104
  %106 = getelementptr inbounds i16, ptr %0, i64 11
  store i16 %105, ptr %106, align 2, !tbaa !25
  %107 = or i16 %98, %105
  %108 = getelementptr inbounds i8, ptr %1, i64 19
  %109 = load i8, ptr %108, align 1, !tbaa !30
  %110 = zext i8 %109 to i16
  %111 = getelementptr inbounds i8, ptr %2, i64 35
  %112 = load i8, ptr %111, align 1, !tbaa !30
  %113 = zext i8 %112 to i16
  %114 = sub nsw i16 %110, %113
  %115 = getelementptr inbounds i16, ptr %0, i64 12
  store i16 %114, ptr %115, align 2, !tbaa !25
  %116 = or i16 %107, %114
  %117 = getelementptr inbounds i8, ptr %1, i64 35
  %118 = load i8, ptr %117, align 1, !tbaa !30
  %119 = zext i8 %118 to i16
  %120 = getelementptr inbounds i8, ptr %2, i64 67
  %121 = load i8, ptr %120, align 1, !tbaa !30
  %122 = zext i8 %121 to i16
  %123 = sub nsw i16 %119, %122
  %124 = getelementptr inbounds i16, ptr %0, i64 13
  store i16 %123, ptr %124, align 2, !tbaa !25
  %125 = or i16 %116, %123
  %126 = getelementptr inbounds i8, ptr %1, i64 50
  %127 = load i8, ptr %126, align 1, !tbaa !30
  %128 = zext i8 %127 to i16
  %129 = getelementptr inbounds i8, ptr %2, i64 98
  %130 = load i8, ptr %129, align 1, !tbaa !30
  %131 = zext i8 %130 to i16
  %132 = sub nsw i16 %128, %131
  %133 = getelementptr inbounds i16, ptr %0, i64 14
  store i16 %132, ptr %133, align 2, !tbaa !25
  %134 = or i16 %125, %132
  %135 = getelementptr inbounds i8, ptr %1, i64 51
  %136 = load i8, ptr %135, align 1, !tbaa !30
  %137 = zext i8 %136 to i16
  %138 = getelementptr inbounds i8, ptr %2, i64 99
  %139 = load i8, ptr %138, align 1, !tbaa !30
  %140 = zext i8 %139 to i16
  %141 = sub nsw i16 %137, %140
  %142 = getelementptr inbounds i16, ptr %0, i64 15
  store i16 %141, ptr %142, align 2, !tbaa !25
  %143 = or i16 %134, %141
  %144 = load i32, ptr %1, align 4, !tbaa !30
  store i32 %144, ptr %2, align 4, !tbaa !30
  %145 = load i32, ptr %18, align 4, !tbaa !30
  store i32 %145, ptr %21, align 4, !tbaa !30
  %146 = load i32, ptr %27, align 4, !tbaa !30
  store i32 %146, ptr %30, align 4, !tbaa !30
  %147 = load i32, ptr %81, align 4, !tbaa !30
  store i32 %147, ptr %84, align 4, !tbaa !30
  %148 = icmp ne i16 %143, 0
  %149 = zext i1 %148 to i32
  ret i32 %149
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal i32 @zigzag_sub_4x4ac_frame(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) #7 {
  %5 = load i8, ptr %1, align 1, !tbaa !30
  %6 = zext i8 %5 to i16
  %7 = load i8, ptr %2, align 1, !tbaa !30
  %8 = zext i8 %7 to i16
  %9 = sub nsw i16 %6, %8
  store i16 %9, ptr %3, align 2, !tbaa !25
  store i16 0, ptr %0, align 2, !tbaa !25
  %10 = getelementptr inbounds i8, ptr %1, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !30
  %12 = zext i8 %11 to i16
  %13 = getelementptr inbounds i8, ptr %2, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !30
  %15 = zext i8 %14 to i16
  %16 = sub nsw i16 %12, %15
  %17 = getelementptr inbounds i16, ptr %0, i64 1
  store i16 %16, ptr %17, align 2, !tbaa !25
  %18 = getelementptr inbounds i8, ptr %1, i64 16
  %19 = load i8, ptr %18, align 1, !tbaa !30
  %20 = zext i8 %19 to i16
  %21 = getelementptr inbounds i8, ptr %2, i64 32
  %22 = load i8, ptr %21, align 1, !tbaa !30
  %23 = zext i8 %22 to i16
  %24 = sub nsw i16 %20, %23
  %25 = getelementptr inbounds i16, ptr %0, i64 2
  store i16 %24, ptr %25, align 2, !tbaa !25
  %26 = or i16 %24, %16
  %27 = getelementptr inbounds i8, ptr %1, i64 32
  %28 = load i8, ptr %27, align 1, !tbaa !30
  %29 = zext i8 %28 to i16
  %30 = getelementptr inbounds i8, ptr %2, i64 64
  %31 = load i8, ptr %30, align 1, !tbaa !30
  %32 = zext i8 %31 to i16
  %33 = sub nsw i16 %29, %32
  %34 = getelementptr inbounds i16, ptr %0, i64 3
  store i16 %33, ptr %34, align 2, !tbaa !25
  %35 = or i16 %26, %33
  %36 = getelementptr inbounds i8, ptr %1, i64 17
  %37 = load i8, ptr %36, align 1, !tbaa !30
  %38 = zext i8 %37 to i16
  %39 = getelementptr inbounds i8, ptr %2, i64 33
  %40 = load i8, ptr %39, align 1, !tbaa !30
  %41 = zext i8 %40 to i16
  %42 = sub nsw i16 %38, %41
  %43 = getelementptr inbounds i16, ptr %0, i64 4
  store i16 %42, ptr %43, align 2, !tbaa !25
  %44 = or i16 %35, %42
  %45 = getelementptr inbounds i8, ptr %1, i64 2
  %46 = load i8, ptr %45, align 1, !tbaa !30
  %47 = zext i8 %46 to i16
  %48 = getelementptr inbounds i8, ptr %2, i64 2
  %49 = load i8, ptr %48, align 1, !tbaa !30
  %50 = zext i8 %49 to i16
  %51 = sub nsw i16 %47, %50
  %52 = getelementptr inbounds i16, ptr %0, i64 5
  store i16 %51, ptr %52, align 2, !tbaa !25
  %53 = or i16 %44, %51
  %54 = getelementptr inbounds i8, ptr %1, i64 3
  %55 = load i8, ptr %54, align 1, !tbaa !30
  %56 = zext i8 %55 to i16
  %57 = getelementptr inbounds i8, ptr %2, i64 3
  %58 = load i8, ptr %57, align 1, !tbaa !30
  %59 = zext i8 %58 to i16
  %60 = sub nsw i16 %56, %59
  %61 = getelementptr inbounds i16, ptr %0, i64 6
  store i16 %60, ptr %61, align 2, !tbaa !25
  %62 = or i16 %53, %60
  %63 = getelementptr inbounds i8, ptr %1, i64 18
  %64 = load i8, ptr %63, align 1, !tbaa !30
  %65 = zext i8 %64 to i16
  %66 = getelementptr inbounds i8, ptr %2, i64 34
  %67 = load i8, ptr %66, align 1, !tbaa !30
  %68 = zext i8 %67 to i16
  %69 = sub nsw i16 %65, %68
  %70 = getelementptr inbounds i16, ptr %0, i64 7
  store i16 %69, ptr %70, align 2, !tbaa !25
  %71 = or i16 %62, %69
  %72 = getelementptr inbounds i8, ptr %1, i64 33
  %73 = load i8, ptr %72, align 1, !tbaa !30
  %74 = zext i8 %73 to i16
  %75 = getelementptr inbounds i8, ptr %2, i64 65
  %76 = load i8, ptr %75, align 1, !tbaa !30
  %77 = zext i8 %76 to i16
  %78 = sub nsw i16 %74, %77
  %79 = getelementptr inbounds i16, ptr %0, i64 8
  store i16 %78, ptr %79, align 2, !tbaa !25
  %80 = or i16 %71, %78
  %81 = getelementptr inbounds i8, ptr %1, i64 48
  %82 = load i8, ptr %81, align 1, !tbaa !30
  %83 = zext i8 %82 to i16
  %84 = getelementptr inbounds i8, ptr %2, i64 96
  %85 = load i8, ptr %84, align 1, !tbaa !30
  %86 = zext i8 %85 to i16
  %87 = sub nsw i16 %83, %86
  %88 = getelementptr inbounds i16, ptr %0, i64 9
  store i16 %87, ptr %88, align 2, !tbaa !25
  %89 = or i16 %80, %87
  %90 = getelementptr inbounds i8, ptr %1, i64 49
  %91 = load i8, ptr %90, align 1, !tbaa !30
  %92 = zext i8 %91 to i16
  %93 = getelementptr inbounds i8, ptr %2, i64 97
  %94 = load i8, ptr %93, align 1, !tbaa !30
  %95 = zext i8 %94 to i16
  %96 = sub nsw i16 %92, %95
  %97 = getelementptr inbounds i16, ptr %0, i64 10
  store i16 %96, ptr %97, align 2, !tbaa !25
  %98 = or i16 %89, %96
  %99 = getelementptr inbounds i8, ptr %1, i64 34
  %100 = load i8, ptr %99, align 1, !tbaa !30
  %101 = zext i8 %100 to i16
  %102 = getelementptr inbounds i8, ptr %2, i64 66
  %103 = load i8, ptr %102, align 1, !tbaa !30
  %104 = zext i8 %103 to i16
  %105 = sub nsw i16 %101, %104
  %106 = getelementptr inbounds i16, ptr %0, i64 11
  store i16 %105, ptr %106, align 2, !tbaa !25
  %107 = or i16 %98, %105
  %108 = getelementptr inbounds i8, ptr %1, i64 19
  %109 = load i8, ptr %108, align 1, !tbaa !30
  %110 = zext i8 %109 to i16
  %111 = getelementptr inbounds i8, ptr %2, i64 35
  %112 = load i8, ptr %111, align 1, !tbaa !30
  %113 = zext i8 %112 to i16
  %114 = sub nsw i16 %110, %113
  %115 = getelementptr inbounds i16, ptr %0, i64 12
  store i16 %114, ptr %115, align 2, !tbaa !25
  %116 = or i16 %107, %114
  %117 = getelementptr inbounds i8, ptr %1, i64 35
  %118 = load i8, ptr %117, align 1, !tbaa !30
  %119 = zext i8 %118 to i16
  %120 = getelementptr inbounds i8, ptr %2, i64 67
  %121 = load i8, ptr %120, align 1, !tbaa !30
  %122 = zext i8 %121 to i16
  %123 = sub nsw i16 %119, %122
  %124 = getelementptr inbounds i16, ptr %0, i64 13
  store i16 %123, ptr %124, align 2, !tbaa !25
  %125 = or i16 %116, %123
  %126 = getelementptr inbounds i8, ptr %1, i64 50
  %127 = load i8, ptr %126, align 1, !tbaa !30
  %128 = zext i8 %127 to i16
  %129 = getelementptr inbounds i8, ptr %2, i64 98
  %130 = load i8, ptr %129, align 1, !tbaa !30
  %131 = zext i8 %130 to i16
  %132 = sub nsw i16 %128, %131
  %133 = getelementptr inbounds i16, ptr %0, i64 14
  store i16 %132, ptr %133, align 2, !tbaa !25
  %134 = or i16 %125, %132
  %135 = getelementptr inbounds i8, ptr %1, i64 51
  %136 = load i8, ptr %135, align 1, !tbaa !30
  %137 = zext i8 %136 to i16
  %138 = getelementptr inbounds i8, ptr %2, i64 99
  %139 = load i8, ptr %138, align 1, !tbaa !30
  %140 = zext i8 %139 to i16
  %141 = sub nsw i16 %137, %140
  %142 = getelementptr inbounds i16, ptr %0, i64 15
  store i16 %141, ptr %142, align 2, !tbaa !25
  %143 = or i16 %134, %141
  %144 = load i32, ptr %1, align 4, !tbaa !30
  store i32 %144, ptr %2, align 4, !tbaa !30
  %145 = load i32, ptr %18, align 4, !tbaa !30
  store i32 %145, ptr %21, align 4, !tbaa !30
  %146 = load i32, ptr %27, align 4, !tbaa !30
  store i32 %146, ptr %30, align 4, !tbaa !30
  %147 = load i32, ptr %81, align 4, !tbaa !30
  store i32 %147, ptr %84, align 4, !tbaa !30
  %148 = icmp ne i16 %143, 0
  %149 = zext i1 %148 to i32
  ret i32 %149
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
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
  store i8 %12, ptr %17, align 1, !tbaa !30
  %18 = add nuw nsw i64 %5, 1
  %19 = icmp eq i64 %18, 4
  br i1 %19, label %9, label %4, !llvm.loop !46

20:                                               ; preds = %4, %20
  %21 = phi i64 [ 0, %4 ], [ %29, %20 ]
  %22 = phi i32 [ 0, %4 ], [ %27, %20 ]
  %23 = shl nuw nsw i64 %21, 2
  %24 = getelementptr i16, ptr %7, i64 %23
  %25 = load i16, ptr %24, align 2, !tbaa !25
  %26 = sext i16 %25 to i32
  %27 = or i32 %22, %26
  %28 = getelementptr i16, ptr %8, i64 %21
  store i16 %25, ptr %28, align 2, !tbaa !25
  %29 = add nuw nsw i64 %21, 1
  %30 = icmp eq i64 %29, 16
  br i1 %30, label %10, label %20, !llvm.loop !47
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #8

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!7, !8, i64 8}
!12 = !{!7, !8, i64 16}
!13 = !{!7, !8, i64 24}
!14 = !{!7, !8, i64 32}
!15 = !{!7, !8, i64 40}
!16 = !{!7, !8, i64 48}
!17 = !{!7, !8, i64 56}
!18 = !{!7, !8, i64 64}
!19 = !{!7, !8, i64 72}
!20 = !{!7, !8, i64 80}
!21 = !{!7, !8, i64 88}
!22 = !{!7, !8, i64 96}
!23 = !{!7, !8, i64 104}
!24 = !{!7, !8, i64 112}
!25 = !{!26, !26, i64 0}
!26 = !{!"short", !9, i64 0}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = distinct !{!29, !28}
!30 = !{!9, !9, i64 0}
!31 = distinct !{!31, !28}
!32 = !{i32 -524288, i32 524273}
!33 = distinct !{!33, !28}
!34 = distinct !{!34, !28}
!35 = distinct !{!35, !28}
!36 = distinct !{!36, !28}
!37 = distinct !{!37, !28}
!38 = distinct !{!38, !28}
!39 = !{!40, !40, i64 0}
!40 = !{!"int", !9, i64 0}
!41 = distinct !{!41, !28}
!42 = distinct !{!42, !28}
!43 = distinct !{!43, !28}
!44 = !{!45, !8, i64 40}
!45 = !{!"", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40}
!46 = distinct !{!46, !28}
!47 = distinct !{!47, !28}
