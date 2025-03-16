; ModuleID = 'jcparam.c'
source_filename = "jcparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }

@jpeg_set_linear_quality.std_luminance_quant_tbl = internal unnamed_addr constant [64 x i32] [i32 16, i32 11, i32 10, i32 16, i32 24, i32 40, i32 51, i32 61, i32 12, i32 12, i32 14, i32 19, i32 26, i32 58, i32 60, i32 55, i32 14, i32 13, i32 16, i32 24, i32 40, i32 57, i32 69, i32 56, i32 14, i32 17, i32 22, i32 29, i32 51, i32 87, i32 80, i32 62, i32 18, i32 22, i32 37, i32 56, i32 68, i32 109, i32 103, i32 77, i32 24, i32 35, i32 55, i32 64, i32 81, i32 104, i32 113, i32 92, i32 49, i32 64, i32 78, i32 87, i32 103, i32 121, i32 120, i32 101, i32 72, i32 92, i32 95, i32 98, i32 112, i32 100, i32 103, i32 99], align 16
@jpeg_set_linear_quality.std_chrominance_quant_tbl = internal unnamed_addr constant [64 x i32] [i32 17, i32 18, i32 24, i32 47, i32 99, i32 99, i32 99, i32 99, i32 18, i32 21, i32 26, i32 66, i32 99, i32 99, i32 99, i32 99, i32 24, i32 26, i32 56, i32 99, i32 99, i32 99, i32 99, i32 99, i32 47, i32 66, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99], align 16
@std_huff_tables.bits_dc_luminance = internal unnamed_addr constant [17 x i8] c"\00\00\01\05\01\01\01\01\01\01\00\00\00\00\00\00\00", align 16
@std_huff_tables.bits_dc_chrominance = internal unnamed_addr constant [17 x i8] c"\00\00\03\01\01\01\01\01\01\01\01\01\00\00\00\00\00", align 16
@std_huff_tables.val_dc_chrominance = internal unnamed_addr constant [12 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B", align 1
@std_huff_tables.bits_ac_luminance = internal unnamed_addr constant [17 x i8] c"\00\00\02\01\03\03\02\04\03\05\05\04\04\00\00\01}", align 16
@std_huff_tables.val_ac_luminance = internal unnamed_addr constant [162 x i8] c"\01\02\03\00\04\11\05\12!1A\06\13Qa\07\22q\142\81\91\A1\08#B\B1\C1\15R\D1\F0$3br\82\09\0A\16\17\18\19\1A%&'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA", align 16
@std_huff_tables.bits_ac_chrominance = internal unnamed_addr constant [17 x i8] c"\00\00\02\01\02\04\04\03\04\07\05\04\04\00\01\02w", align 16
@std_huff_tables.val_ac_chrominance = internal unnamed_addr constant [162 x i8] c"\00\01\02\03\11\04\05!1\06\12AQ\07aq\13\222\81\08\14B\91\A1\B1\C1\09#3R\F0\15br\D1\0A\16$4\E1%\F1\17\18\19\1A&'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\82\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E2\E3\E4\E5\E6\E7\E8\E9\EA\F2\F3\F4\F5\F6\F7\F8\F9\FA", align 16

; Function Attrs: nounwind uwtable
define dso_local void @jpeg_add_quant_table(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 15, i64 %6
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !5
  %10 = icmp eq i32 %9, 100
  br i1 %10, label %17, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr %0, align 8, !tbaa !13
  %13 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %12, i64 0, i32 5
  store i32 18, ptr %13, align 8, !tbaa !14
  %14 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %12, i64 0, i32 6
  store i32 %9, ptr %14, align 4, !tbaa !17
  %15 = load ptr, ptr %0, align 8, !tbaa !13
  %16 = load ptr, ptr %15, align 8, !tbaa !18
  tail call void %16(ptr noundef nonnull %0) #6
  br label %17

17:                                               ; preds = %11, %5
  %18 = load ptr, ptr %7, align 8, !tbaa !19
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = tail call ptr @jpeg_alloc_quant_table(ptr noundef %0) #6
  store ptr %21, ptr %7, align 8, !tbaa !19
  br label %22

22:                                               ; preds = %20, %17
  %23 = sext i32 %3 to i64
  %24 = icmp ne i32 %4, 0
  %25 = load ptr, ptr %7, align 8, !tbaa !19
  br label %26

26:                                               ; preds = %22, %26
  %27 = phi i64 [ 0, %22 ], [ %41, %26 ]
  %28 = getelementptr inbounds i32, ptr %2, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !20
  %30 = zext i32 %29 to i64
  %31 = mul nsw i64 %30, %23
  %32 = add nsw i64 %31, 50
  %33 = sdiv i64 %32, 100
  %34 = tail call i64 @llvm.smax.i64(i64 %33, i64 1)
  %35 = tail call i64 @llvm.umin.i64(i64 %34, i64 32767)
  %36 = icmp sgt i64 %31, 25549
  %37 = select i1 %24, i1 %36, i1 false
  %38 = trunc i64 %35 to i16
  %39 = select i1 %37, i16 255, i16 %38
  %40 = getelementptr inbounds [64 x i16], ptr %25, i64 0, i64 %27
  store i16 %39, ptr %40, align 2, !tbaa !21
  %41 = add nuw nsw i64 %27, 1
  %42 = icmp eq i64 %41, 64
  br i1 %42, label %43, label %26, !llvm.loop !22

43:                                               ; preds = %26
  %44 = load ptr, ptr %7, align 8, !tbaa !19
  %45 = getelementptr inbounds %struct.JQUANT_TBL, ptr %44, i64 0, i32 1
  store i32 0, ptr %45, align 4, !tbaa !24
  ret void
}

declare ptr @jpeg_alloc_quant_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @jpeg_set_linear_quality(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 15, i64 0
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !5
  %7 = icmp eq i32 %6, 100
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %0, align 8, !tbaa !13
  %10 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i64 0, i32 5
  store i32 18, ptr %10, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i64 0, i32 6
  store i32 %6, ptr %11, align 4, !tbaa !17
  %12 = load ptr, ptr %0, align 8, !tbaa !13
  %13 = load ptr, ptr %12, align 8, !tbaa !18
  tail call void %13(ptr noundef nonnull %0) #6
  br label %14

14:                                               ; preds = %8, %3
  %15 = load ptr, ptr %4, align 8, !tbaa !19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = tail call ptr @jpeg_alloc_quant_table(ptr noundef %0) #6
  store ptr %18, ptr %4, align 8, !tbaa !19
  br label %19

19:                                               ; preds = %17, %14
  %20 = sext i32 %1 to i64
  %21 = icmp ne i32 %2, 0
  %22 = load ptr, ptr %4, align 8, !tbaa !19
  br label %23

23:                                               ; preds = %23, %19
  %24 = phi i64 [ 0, %19 ], [ %38, %23 ]
  %25 = getelementptr inbounds i32, ptr @jpeg_set_linear_quality.std_luminance_quant_tbl, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !20
  %27 = zext i32 %26 to i64
  %28 = mul nsw i64 %27, %20
  %29 = add nsw i64 %28, 50
  %30 = sdiv i64 %29, 100
  %31 = tail call i64 @llvm.smax.i64(i64 %30, i64 1)
  %32 = tail call i64 @llvm.umin.i64(i64 %31, i64 32767)
  %33 = icmp sgt i64 %28, 25549
  %34 = select i1 %21, i1 %33, i1 false
  %35 = trunc i64 %32 to i16
  %36 = select i1 %34, i16 255, i16 %35
  %37 = getelementptr inbounds [64 x i16], ptr %22, i64 0, i64 %24
  store i16 %36, ptr %37, align 2, !tbaa !21
  %38 = add nuw nsw i64 %24, 1
  %39 = icmp eq i64 %38, 64
  br i1 %39, label %40, label %23, !llvm.loop !22

40:                                               ; preds = %23
  %41 = getelementptr inbounds %struct.JQUANT_TBL, ptr %22, i64 0, i32 1
  store i32 0, ptr %41, align 4, !tbaa !24
  %42 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 15, i64 1
  %43 = load i32, ptr %5, align 4, !tbaa !5
  %44 = icmp eq i32 %43, 100
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = load ptr, ptr %0, align 8, !tbaa !13
  %47 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %46, i64 0, i32 5
  store i32 18, ptr %47, align 8, !tbaa !14
  %48 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %46, i64 0, i32 6
  store i32 %43, ptr %48, align 4, !tbaa !17
  %49 = load ptr, ptr %0, align 8, !tbaa !13
  %50 = load ptr, ptr %49, align 8, !tbaa !18
  tail call void %50(ptr noundef nonnull %0) #6
  br label %51

51:                                               ; preds = %45, %40
  %52 = load ptr, ptr %42, align 8, !tbaa !19
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = tail call ptr @jpeg_alloc_quant_table(ptr noundef %0) #6
  store ptr %55, ptr %42, align 8, !tbaa !19
  br label %56

56:                                               ; preds = %54, %51
  %57 = load ptr, ptr %42, align 8, !tbaa !19
  br label %58

58:                                               ; preds = %58, %56
  %59 = phi i64 [ 0, %56 ], [ %73, %58 ]
  %60 = getelementptr inbounds i32, ptr @jpeg_set_linear_quality.std_chrominance_quant_tbl, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !20
  %62 = zext i32 %61 to i64
  %63 = mul nsw i64 %62, %20
  %64 = add nsw i64 %63, 50
  %65 = sdiv i64 %64, 100
  %66 = tail call i64 @llvm.smax.i64(i64 %65, i64 1)
  %67 = tail call i64 @llvm.umin.i64(i64 %66, i64 32767)
  %68 = icmp sgt i64 %63, 25549
  %69 = select i1 %21, i1 %68, i1 false
  %70 = trunc i64 %67 to i16
  %71 = select i1 %69, i16 255, i16 %70
  %72 = getelementptr inbounds [64 x i16], ptr %57, i64 0, i64 %59
  store i16 %71, ptr %72, align 2, !tbaa !21
  %73 = add nuw nsw i64 %59, 1
  %74 = icmp eq i64 %73, 64
  br i1 %74, label %75, label %58, !llvm.loop !22

75:                                               ; preds = %58
  %76 = getelementptr inbounds %struct.JQUANT_TBL, ptr %57, i64 0, i32 1
  store i32 0, ptr %76, align 4, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @jpeg_quality_scaling(i32 noundef %0) local_unnamed_addr #2 {
  %2 = tail call i32 @llvm.smax.i32(i32 %0, i32 1)
  %3 = tail call i32 @llvm.umin.i32(i32 %2, i32 100)
  %4 = icmp slt i32 %0, 50
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = udiv i32 5000, %3
  br label %10

7:                                                ; preds = %1
  %8 = shl nuw nsw i32 %3, 1
  %9 = sub nuw nsw i32 200, %8
  br label %10

10:                                               ; preds = %7, %5
  %11 = phi i32 [ %6, %5 ], [ %9, %7 ]
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define dso_local void @jpeg_set_quality(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @llvm.smax.i32(i32 %1, i32 1)
  %5 = tail call i32 @llvm.umin.i32(i32 %4, i32 100)
  %6 = icmp slt i32 %1, 50
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = udiv i32 5000, %5
  br label %12

9:                                                ; preds = %3
  %10 = shl nuw nsw i32 %5, 1
  %11 = sub nuw nsw i32 200, %10
  br label %12

12:                                               ; preds = %7, %9
  %13 = phi i32 [ %8, %7 ], [ %11, %9 ]
  tail call void @jpeg_set_linear_quality(ptr noundef %0, i32 noundef %13, i32 noundef %2)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @jpeg_set_defaults(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 100
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !13
  %7 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %6, i64 0, i32 5
  store i32 18, ptr %7, align 8, !tbaa !14
  %8 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %6, i64 0, i32 6
  store i32 %3, ptr %8, align 4, !tbaa !17
  %9 = load ptr, ptr %0, align 8, !tbaa !13
  %10 = load ptr, ptr %9, align 8, !tbaa !18
  tail call void %10(ptr noundef nonnull %0) #6
  br label %11

11:                                               ; preds = %5, %1
  %12 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %13 = load ptr, ptr %12, align 8, !tbaa !26
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !27
  %18 = load ptr, ptr %17, align 8, !tbaa !28
  %19 = tail call ptr %18(ptr noundef %0, i32 noundef 0, i64 noundef 960) #6
  store ptr %19, ptr %12, align 8, !tbaa !26
  br label %20

20:                                               ; preds = %15, %11
  %21 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 11
  store i32 8, ptr %21, align 8, !tbaa !30
  tail call void @jpeg_set_linear_quality(ptr noundef %0, i32 noundef 50, i32 noundef 1)
  %22 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 16
  %23 = load ptr, ptr %22, align 8, !tbaa !19
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = tail call ptr @jpeg_alloc_huff_table(ptr noundef %0) #6
  store ptr %26, ptr %22, align 8, !tbaa !19
  br label %27

27:                                               ; preds = %25, %20
  %28 = load ptr, ptr %22, align 8, !tbaa !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %28, ptr noundef nonnull align 16 dereferenceable(17) @std_huff_tables.bits_dc_luminance, i64 17, i1 false)
  %29 = load ptr, ptr %22, align 8, !tbaa !19
  %30 = getelementptr inbounds %struct.JHUFF_TBL, ptr %29, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %30, ptr noundef nonnull align 1 dereferenceable(256) @std_huff_tables.val_dc_chrominance, i64 256, i1 false)
  %31 = load ptr, ptr %22, align 8, !tbaa !19
  %32 = getelementptr inbounds %struct.JHUFF_TBL, ptr %31, i64 0, i32 2
  store i32 0, ptr %32, align 4, !tbaa !31
  %33 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 17
  %34 = load ptr, ptr %33, align 8, !tbaa !19
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = tail call ptr @jpeg_alloc_huff_table(ptr noundef %0) #6
  store ptr %37, ptr %33, align 8, !tbaa !19
  br label %38

38:                                               ; preds = %36, %27
  %39 = load ptr, ptr %33, align 8, !tbaa !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %39, ptr noundef nonnull align 16 dereferenceable(17) @std_huff_tables.bits_ac_luminance, i64 17, i1 false)
  %40 = load ptr, ptr %33, align 8, !tbaa !19
  %41 = getelementptr inbounds %struct.JHUFF_TBL, ptr %40, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %41, ptr noundef nonnull align 16 dereferenceable(256) @std_huff_tables.val_ac_luminance, i64 256, i1 false)
  %42 = load ptr, ptr %33, align 8, !tbaa !19
  %43 = getelementptr inbounds %struct.JHUFF_TBL, ptr %42, i64 0, i32 2
  store i32 0, ptr %43, align 4, !tbaa !31
  %44 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 16, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !19
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = tail call ptr @jpeg_alloc_huff_table(ptr noundef %0) #6
  store ptr %48, ptr %44, align 8, !tbaa !19
  br label %49

49:                                               ; preds = %47, %38
  %50 = load ptr, ptr %44, align 8, !tbaa !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %50, ptr noundef nonnull align 16 dereferenceable(17) @std_huff_tables.bits_dc_chrominance, i64 17, i1 false)
  %51 = load ptr, ptr %44, align 8, !tbaa !19
  %52 = getelementptr inbounds %struct.JHUFF_TBL, ptr %51, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %52, ptr noundef nonnull align 1 dereferenceable(256) @std_huff_tables.val_dc_chrominance, i64 256, i1 false)
  %53 = load ptr, ptr %44, align 8, !tbaa !19
  %54 = getelementptr inbounds %struct.JHUFF_TBL, ptr %53, i64 0, i32 2
  store i32 0, ptr %54, align 4, !tbaa !31
  %55 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 17, i64 1
  %56 = load ptr, ptr %55, align 8, !tbaa !19
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = tail call ptr @jpeg_alloc_huff_table(ptr noundef %0) #6
  store ptr %59, ptr %55, align 8, !tbaa !19
  br label %60

60:                                               ; preds = %49, %58
  %61 = load ptr, ptr %55, align 8, !tbaa !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %61, ptr noundef nonnull align 16 dereferenceable(17) @std_huff_tables.bits_ac_chrominance, i64 17, i1 false)
  %62 = load ptr, ptr %55, align 8, !tbaa !19
  %63 = getelementptr inbounds %struct.JHUFF_TBL, ptr %62, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %63, ptr noundef nonnull align 16 dereferenceable(256) @std_huff_tables.val_ac_chrominance, i64 256, i1 false)
  %64 = load ptr, ptr %55, align 8, !tbaa !19
  %65 = getelementptr inbounds %struct.JHUFF_TBL, ptr %64, i64 0, i32 2
  store i32 0, ptr %65, align 4, !tbaa !31
  %66 = getelementptr i8, ptr %0, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %66, i8 0, i64 16, i1 false), !tbaa !17
  %67 = getelementptr i8, ptr %0, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %67, i8 1, i64 16, i1 false), !tbaa !17
  %68 = getelementptr i8, ptr %0, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %68, i8 5, i64 16, i1 false), !tbaa !17
  %69 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 22
  %70 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 21
  store i32 0, ptr %70, align 8, !tbaa !33
  %71 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %69, i8 0, i64 20, i1 false)
  %72 = load i32, ptr %21, align 8, !tbaa !30
  %73 = icmp sgt i32 %72, 8
  %74 = zext i1 %73 to i32
  store i32 %74, ptr %71, align 8
  %75 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 26
  %76 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 32
  store i8 0, ptr %76, align 4, !tbaa !34
  %77 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 33
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %75, i8 0, i64 20, i1 false)
  store i16 1, ptr %77, align 2, !tbaa !35
  %78 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 34
  store i16 1, ptr %78, align 8, !tbaa !36
  tail call void @jpeg_default_colorspace(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @jpeg_default_colorspace(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 4, !tbaa !37
  switch i32 %3, label %219 [
    i32 1, label %4
    i32 2, label %26
    i32 3, label %60
    i32 4, label %94
    i32 5, label %134
    i32 0, label %174
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !5
  %7 = icmp eq i32 %6, 100
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 8, !tbaa !13
  %10 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i64 0, i32 5
  store i32 18, ptr %10, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i64 0, i32 6
  store i32 %6, ptr %11, align 4, !tbaa !17
  %12 = load ptr, ptr %0, align 8, !tbaa !13
  %13 = load ptr, ptr %12, align 8, !tbaa !18
  tail call void %13(ptr noundef nonnull %0) #6
  br label %14

14:                                               ; preds = %4, %8
  %15 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 13
  store i32 1, ptr %15, align 8, !tbaa !38
  %16 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 31
  store i32 0, ptr %16, align 8, !tbaa !39
  %17 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 35
  store i32 0, ptr %17, align 4, !tbaa !40
  store i32 1, ptr %16, align 8, !tbaa !39
  %18 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  store i32 1, ptr %18, align 4, !tbaa !41
  %19 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %20 = load ptr, ptr %19, align 8, !tbaa !26
  store i32 1, ptr %20, align 8, !tbaa !42
  %21 = getelementptr inbounds %struct.jpeg_component_info, ptr %20, i64 0, i32 2
  store i32 1, ptr %21, align 8, !tbaa !44
  %22 = getelementptr inbounds %struct.jpeg_component_info, ptr %20, i64 0, i32 3
  store i32 1, ptr %22, align 4, !tbaa !45
  %23 = getelementptr inbounds %struct.jpeg_component_info, ptr %20, i64 0, i32 4
  store i32 0, ptr %23, align 8, !tbaa !46
  %24 = getelementptr inbounds %struct.jpeg_component_info, ptr %20, i64 0, i32 5
  store i32 0, ptr %24, align 4, !tbaa !47
  %25 = getelementptr inbounds %struct.jpeg_component_info, ptr %20, i64 0, i32 6
  store i32 0, ptr %25, align 8, !tbaa !48
  br label %223

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 4
  %28 = load i32, ptr %27, align 4, !tbaa !5
  %29 = icmp eq i32 %28, 100
  br i1 %29, label %36, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %0, align 8, !tbaa !13
  %32 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %31, i64 0, i32 5
  store i32 18, ptr %32, align 8, !tbaa !14
  %33 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %31, i64 0, i32 6
  store i32 %28, ptr %33, align 4, !tbaa !17
  %34 = load ptr, ptr %0, align 8, !tbaa !13
  %35 = load ptr, ptr %34, align 8, !tbaa !18
  tail call void %35(ptr noundef nonnull %0) #6
  br label %36

36:                                               ; preds = %26, %30
  %37 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 13
  store i32 3, ptr %37, align 8, !tbaa !38
  %38 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 31
  store i32 0, ptr %38, align 8, !tbaa !39
  %39 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 35
  store i32 0, ptr %39, align 4, !tbaa !40
  store i32 1, ptr %38, align 8, !tbaa !39
  %40 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  store i32 3, ptr %40, align 4, !tbaa !41
  %41 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %42 = load ptr, ptr %41, align 8, !tbaa !26
  store i32 1, ptr %42, align 8, !tbaa !42
  %43 = getelementptr inbounds %struct.jpeg_component_info, ptr %42, i64 0, i32 2
  store i32 2, ptr %43, align 8, !tbaa !44
  %44 = getelementptr inbounds %struct.jpeg_component_info, ptr %42, i64 0, i32 3
  store i32 2, ptr %44, align 4, !tbaa !45
  %45 = getelementptr inbounds %struct.jpeg_component_info, ptr %42, i64 0, i32 4
  store i32 0, ptr %45, align 8, !tbaa !46
  %46 = getelementptr inbounds %struct.jpeg_component_info, ptr %42, i64 0, i32 5
  store i32 0, ptr %46, align 4, !tbaa !47
  %47 = getelementptr inbounds %struct.jpeg_component_info, ptr %42, i64 0, i32 6
  store i32 0, ptr %47, align 8, !tbaa !48
  %48 = getelementptr inbounds %struct.jpeg_component_info, ptr %42, i64 1
  store i32 2, ptr %48, align 8, !tbaa !42
  %49 = getelementptr inbounds %struct.jpeg_component_info, ptr %42, i64 1, i32 2
  store i32 1, ptr %49, align 8, !tbaa !44
  %50 = getelementptr inbounds %struct.jpeg_component_info, ptr %42, i64 1, i32 3
  store i32 1, ptr %50, align 4, !tbaa !45
  %51 = getelementptr inbounds %struct.jpeg_component_info, ptr %42, i64 1, i32 4
  store i32 1, ptr %51, align 8, !tbaa !46
  %52 = getelementptr inbounds %struct.jpeg_component_info, ptr %42, i64 1, i32 5
  store i32 1, ptr %52, align 4, !tbaa !47
  %53 = getelementptr inbounds %struct.jpeg_component_info, ptr %42, i64 1, i32 6
  store i32 1, ptr %53, align 8, !tbaa !48
  %54 = getelementptr inbounds %struct.jpeg_component_info, ptr %42, i64 2
  store i32 3, ptr %54, align 8, !tbaa !42
  %55 = getelementptr inbounds %struct.jpeg_component_info, ptr %42, i64 2, i32 2
  store i32 1, ptr %55, align 8, !tbaa !44
  %56 = getelementptr inbounds %struct.jpeg_component_info, ptr %42, i64 2, i32 3
  store i32 1, ptr %56, align 4, !tbaa !45
  %57 = getelementptr inbounds %struct.jpeg_component_info, ptr %42, i64 2, i32 4
  store i32 1, ptr %57, align 8, !tbaa !46
  %58 = getelementptr inbounds %struct.jpeg_component_info, ptr %42, i64 2, i32 5
  store i32 1, ptr %58, align 4, !tbaa !47
  %59 = getelementptr inbounds %struct.jpeg_component_info, ptr %42, i64 2, i32 6
  store i32 1, ptr %59, align 8, !tbaa !48
  br label %223

60:                                               ; preds = %1
  %61 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 4
  %62 = load i32, ptr %61, align 4, !tbaa !5
  %63 = icmp eq i32 %62, 100
  br i1 %63, label %70, label %64

64:                                               ; preds = %60
  %65 = load ptr, ptr %0, align 8, !tbaa !13
  %66 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %65, i64 0, i32 5
  store i32 18, ptr %66, align 8, !tbaa !14
  %67 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %65, i64 0, i32 6
  store i32 %62, ptr %67, align 4, !tbaa !17
  %68 = load ptr, ptr %0, align 8, !tbaa !13
  %69 = load ptr, ptr %68, align 8, !tbaa !18
  tail call void %69(ptr noundef nonnull %0) #6
  br label %70

70:                                               ; preds = %60, %64
  %71 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 13
  store i32 3, ptr %71, align 8, !tbaa !38
  %72 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 31
  store i32 0, ptr %72, align 8, !tbaa !39
  %73 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 35
  store i32 0, ptr %73, align 4, !tbaa !40
  store i32 1, ptr %72, align 8, !tbaa !39
  %74 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  store i32 3, ptr %74, align 4, !tbaa !41
  %75 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %76 = load ptr, ptr %75, align 8, !tbaa !26
  store i32 1, ptr %76, align 8, !tbaa !42
  %77 = getelementptr inbounds %struct.jpeg_component_info, ptr %76, i64 0, i32 2
  store i32 2, ptr %77, align 8, !tbaa !44
  %78 = getelementptr inbounds %struct.jpeg_component_info, ptr %76, i64 0, i32 3
  store i32 2, ptr %78, align 4, !tbaa !45
  %79 = getelementptr inbounds %struct.jpeg_component_info, ptr %76, i64 0, i32 4
  store i32 0, ptr %79, align 8, !tbaa !46
  %80 = getelementptr inbounds %struct.jpeg_component_info, ptr %76, i64 0, i32 5
  store i32 0, ptr %80, align 4, !tbaa !47
  %81 = getelementptr inbounds %struct.jpeg_component_info, ptr %76, i64 0, i32 6
  store i32 0, ptr %81, align 8, !tbaa !48
  %82 = getelementptr inbounds %struct.jpeg_component_info, ptr %76, i64 1
  store i32 2, ptr %82, align 8, !tbaa !42
  %83 = getelementptr inbounds %struct.jpeg_component_info, ptr %76, i64 1, i32 2
  store i32 1, ptr %83, align 8, !tbaa !44
  %84 = getelementptr inbounds %struct.jpeg_component_info, ptr %76, i64 1, i32 3
  store i32 1, ptr %84, align 4, !tbaa !45
  %85 = getelementptr inbounds %struct.jpeg_component_info, ptr %76, i64 1, i32 4
  store i32 1, ptr %85, align 8, !tbaa !46
  %86 = getelementptr inbounds %struct.jpeg_component_info, ptr %76, i64 1, i32 5
  store i32 1, ptr %86, align 4, !tbaa !47
  %87 = getelementptr inbounds %struct.jpeg_component_info, ptr %76, i64 1, i32 6
  store i32 1, ptr %87, align 8, !tbaa !48
  %88 = getelementptr inbounds %struct.jpeg_component_info, ptr %76, i64 2
  store i32 3, ptr %88, align 8, !tbaa !42
  %89 = getelementptr inbounds %struct.jpeg_component_info, ptr %76, i64 2, i32 2
  store i32 1, ptr %89, align 8, !tbaa !44
  %90 = getelementptr inbounds %struct.jpeg_component_info, ptr %76, i64 2, i32 3
  store i32 1, ptr %90, align 4, !tbaa !45
  %91 = getelementptr inbounds %struct.jpeg_component_info, ptr %76, i64 2, i32 4
  store i32 1, ptr %91, align 8, !tbaa !46
  %92 = getelementptr inbounds %struct.jpeg_component_info, ptr %76, i64 2, i32 5
  store i32 1, ptr %92, align 4, !tbaa !47
  %93 = getelementptr inbounds %struct.jpeg_component_info, ptr %76, i64 2, i32 6
  store i32 1, ptr %93, align 8, !tbaa !48
  br label %223

94:                                               ; preds = %1
  %95 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 4
  %96 = load i32, ptr %95, align 4, !tbaa !5
  %97 = icmp eq i32 %96, 100
  br i1 %97, label %104, label %98

98:                                               ; preds = %94
  %99 = load ptr, ptr %0, align 8, !tbaa !13
  %100 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %99, i64 0, i32 5
  store i32 18, ptr %100, align 8, !tbaa !14
  %101 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %99, i64 0, i32 6
  store i32 %96, ptr %101, align 4, !tbaa !17
  %102 = load ptr, ptr %0, align 8, !tbaa !13
  %103 = load ptr, ptr %102, align 8, !tbaa !18
  tail call void %103(ptr noundef nonnull %0) #6
  br label %104

104:                                              ; preds = %94, %98
  %105 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 13
  store i32 4, ptr %105, align 8, !tbaa !38
  %106 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 31
  store i32 0, ptr %106, align 8, !tbaa !39
  %107 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 35
  store i32 1, ptr %107, align 4, !tbaa !40
  %108 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  store i32 4, ptr %108, align 4, !tbaa !41
  %109 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %110 = load ptr, ptr %109, align 8, !tbaa !26
  store i32 67, ptr %110, align 8, !tbaa !42
  %111 = getelementptr inbounds %struct.jpeg_component_info, ptr %110, i64 0, i32 2
  store i32 1, ptr %111, align 8, !tbaa !44
  %112 = getelementptr inbounds %struct.jpeg_component_info, ptr %110, i64 0, i32 3
  store i32 1, ptr %112, align 4, !tbaa !45
  %113 = getelementptr inbounds %struct.jpeg_component_info, ptr %110, i64 0, i32 4
  store i32 0, ptr %113, align 8, !tbaa !46
  %114 = getelementptr inbounds %struct.jpeg_component_info, ptr %110, i64 0, i32 5
  store i32 0, ptr %114, align 4, !tbaa !47
  %115 = getelementptr inbounds %struct.jpeg_component_info, ptr %110, i64 0, i32 6
  store i32 0, ptr %115, align 8, !tbaa !48
  %116 = getelementptr inbounds %struct.jpeg_component_info, ptr %110, i64 1
  store i32 77, ptr %116, align 8, !tbaa !42
  %117 = getelementptr inbounds %struct.jpeg_component_info, ptr %110, i64 1, i32 2
  store i32 1, ptr %117, align 8, !tbaa !44
  %118 = getelementptr inbounds %struct.jpeg_component_info, ptr %110, i64 1, i32 3
  store i32 1, ptr %118, align 4, !tbaa !45
  %119 = getelementptr inbounds %struct.jpeg_component_info, ptr %110, i64 1, i32 4
  store i32 0, ptr %119, align 8, !tbaa !46
  %120 = getelementptr inbounds %struct.jpeg_component_info, ptr %110, i64 1, i32 5
  store i32 0, ptr %120, align 4, !tbaa !47
  %121 = getelementptr inbounds %struct.jpeg_component_info, ptr %110, i64 1, i32 6
  store i32 0, ptr %121, align 8, !tbaa !48
  %122 = getelementptr inbounds %struct.jpeg_component_info, ptr %110, i64 2
  store i32 89, ptr %122, align 8, !tbaa !42
  %123 = getelementptr inbounds %struct.jpeg_component_info, ptr %110, i64 2, i32 2
  store i32 1, ptr %123, align 8, !tbaa !44
  %124 = getelementptr inbounds %struct.jpeg_component_info, ptr %110, i64 2, i32 3
  store i32 1, ptr %124, align 4, !tbaa !45
  %125 = getelementptr inbounds %struct.jpeg_component_info, ptr %110, i64 2, i32 4
  store i32 0, ptr %125, align 8, !tbaa !46
  %126 = getelementptr inbounds %struct.jpeg_component_info, ptr %110, i64 2, i32 5
  store i32 0, ptr %126, align 4, !tbaa !47
  %127 = getelementptr inbounds %struct.jpeg_component_info, ptr %110, i64 2, i32 6
  store i32 0, ptr %127, align 8, !tbaa !48
  %128 = getelementptr inbounds %struct.jpeg_component_info, ptr %110, i64 3
  store i32 75, ptr %128, align 8, !tbaa !42
  %129 = getelementptr inbounds %struct.jpeg_component_info, ptr %110, i64 3, i32 2
  store i32 1, ptr %129, align 8, !tbaa !44
  %130 = getelementptr inbounds %struct.jpeg_component_info, ptr %110, i64 3, i32 3
  store i32 1, ptr %130, align 4, !tbaa !45
  %131 = getelementptr inbounds %struct.jpeg_component_info, ptr %110, i64 3, i32 4
  store i32 0, ptr %131, align 8, !tbaa !46
  %132 = getelementptr inbounds %struct.jpeg_component_info, ptr %110, i64 3, i32 5
  store i32 0, ptr %132, align 4, !tbaa !47
  %133 = getelementptr inbounds %struct.jpeg_component_info, ptr %110, i64 3, i32 6
  store i32 0, ptr %133, align 8, !tbaa !48
  br label %223

134:                                              ; preds = %1
  %135 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 4
  %136 = load i32, ptr %135, align 4, !tbaa !5
  %137 = icmp eq i32 %136, 100
  br i1 %137, label %144, label %138

138:                                              ; preds = %134
  %139 = load ptr, ptr %0, align 8, !tbaa !13
  %140 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %139, i64 0, i32 5
  store i32 18, ptr %140, align 8, !tbaa !14
  %141 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %139, i64 0, i32 6
  store i32 %136, ptr %141, align 4, !tbaa !17
  %142 = load ptr, ptr %0, align 8, !tbaa !13
  %143 = load ptr, ptr %142, align 8, !tbaa !18
  tail call void %143(ptr noundef nonnull %0) #6
  br label %144

144:                                              ; preds = %134, %138
  %145 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 13
  store i32 5, ptr %145, align 8, !tbaa !38
  %146 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 31
  store i32 0, ptr %146, align 8, !tbaa !39
  %147 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 35
  store i32 1, ptr %147, align 4, !tbaa !40
  %148 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  store i32 4, ptr %148, align 4, !tbaa !41
  %149 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %150 = load ptr, ptr %149, align 8, !tbaa !26
  store i32 1, ptr %150, align 8, !tbaa !42
  %151 = getelementptr inbounds %struct.jpeg_component_info, ptr %150, i64 0, i32 2
  store i32 2, ptr %151, align 8, !tbaa !44
  %152 = getelementptr inbounds %struct.jpeg_component_info, ptr %150, i64 0, i32 3
  store i32 2, ptr %152, align 4, !tbaa !45
  %153 = getelementptr inbounds %struct.jpeg_component_info, ptr %150, i64 0, i32 4
  store i32 0, ptr %153, align 8, !tbaa !46
  %154 = getelementptr inbounds %struct.jpeg_component_info, ptr %150, i64 0, i32 5
  store i32 0, ptr %154, align 4, !tbaa !47
  %155 = getelementptr inbounds %struct.jpeg_component_info, ptr %150, i64 0, i32 6
  store i32 0, ptr %155, align 8, !tbaa !48
  %156 = getelementptr inbounds %struct.jpeg_component_info, ptr %150, i64 1
  store i32 2, ptr %156, align 8, !tbaa !42
  %157 = getelementptr inbounds %struct.jpeg_component_info, ptr %150, i64 1, i32 2
  store i32 1, ptr %157, align 8, !tbaa !44
  %158 = getelementptr inbounds %struct.jpeg_component_info, ptr %150, i64 1, i32 3
  store i32 1, ptr %158, align 4, !tbaa !45
  %159 = getelementptr inbounds %struct.jpeg_component_info, ptr %150, i64 1, i32 4
  store i32 1, ptr %159, align 8, !tbaa !46
  %160 = getelementptr inbounds %struct.jpeg_component_info, ptr %150, i64 1, i32 5
  store i32 1, ptr %160, align 4, !tbaa !47
  %161 = getelementptr inbounds %struct.jpeg_component_info, ptr %150, i64 1, i32 6
  store i32 1, ptr %161, align 8, !tbaa !48
  %162 = getelementptr inbounds %struct.jpeg_component_info, ptr %150, i64 2
  store i32 3, ptr %162, align 8, !tbaa !42
  %163 = getelementptr inbounds %struct.jpeg_component_info, ptr %150, i64 2, i32 2
  store i32 1, ptr %163, align 8, !tbaa !44
  %164 = getelementptr inbounds %struct.jpeg_component_info, ptr %150, i64 2, i32 3
  store i32 1, ptr %164, align 4, !tbaa !45
  %165 = getelementptr inbounds %struct.jpeg_component_info, ptr %150, i64 2, i32 4
  store i32 1, ptr %165, align 8, !tbaa !46
  %166 = getelementptr inbounds %struct.jpeg_component_info, ptr %150, i64 2, i32 5
  store i32 1, ptr %166, align 4, !tbaa !47
  %167 = getelementptr inbounds %struct.jpeg_component_info, ptr %150, i64 2, i32 6
  store i32 1, ptr %167, align 8, !tbaa !48
  %168 = getelementptr inbounds %struct.jpeg_component_info, ptr %150, i64 3
  store i32 4, ptr %168, align 8, !tbaa !42
  %169 = getelementptr inbounds %struct.jpeg_component_info, ptr %150, i64 3, i32 2
  store i32 2, ptr %169, align 8, !tbaa !44
  %170 = getelementptr inbounds %struct.jpeg_component_info, ptr %150, i64 3, i32 3
  store i32 2, ptr %170, align 4, !tbaa !45
  %171 = getelementptr inbounds %struct.jpeg_component_info, ptr %150, i64 3, i32 4
  store i32 0, ptr %171, align 8, !tbaa !46
  %172 = getelementptr inbounds %struct.jpeg_component_info, ptr %150, i64 3, i32 5
  store i32 0, ptr %172, align 4, !tbaa !47
  %173 = getelementptr inbounds %struct.jpeg_component_info, ptr %150, i64 3, i32 6
  store i32 0, ptr %173, align 8, !tbaa !48
  br label %223

174:                                              ; preds = %1
  %175 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 4
  %176 = load i32, ptr %175, align 4, !tbaa !5
  %177 = icmp eq i32 %176, 100
  br i1 %177, label %184, label %178

178:                                              ; preds = %174
  %179 = load ptr, ptr %0, align 8, !tbaa !13
  %180 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %179, i64 0, i32 5
  store i32 18, ptr %180, align 8, !tbaa !14
  %181 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %179, i64 0, i32 6
  store i32 %176, ptr %181, align 4, !tbaa !17
  %182 = load ptr, ptr %0, align 8, !tbaa !13
  %183 = load ptr, ptr %182, align 8, !tbaa !18
  tail call void %183(ptr noundef nonnull %0) #6
  br label %184

184:                                              ; preds = %178, %174
  %185 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 13
  store i32 0, ptr %185, align 8, !tbaa !38
  %186 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 31
  store i32 0, ptr %186, align 8, !tbaa !39
  %187 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 35
  store i32 0, ptr %187, align 4, !tbaa !40
  %188 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 8
  %189 = load i32, ptr %188, align 8, !tbaa !49
  %190 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  store i32 %189, ptr %190, align 4, !tbaa !41
  %191 = add i32 %189, -11
  %192 = icmp ult i32 %191, -10
  br i1 %192, label %193, label %201

193:                                              ; preds = %184
  %194 = load ptr, ptr %0, align 8, !tbaa !13
  %195 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %194, i64 0, i32 5
  store i32 24, ptr %195, align 8, !tbaa !14
  %196 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %194, i64 0, i32 6
  store i32 %189, ptr %196, align 4, !tbaa !17
  %197 = load ptr, ptr %0, align 8, !tbaa !13
  %198 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %197, i64 0, i32 6, i32 0, i64 1
  store i32 10, ptr %198, align 4, !tbaa !17
  %199 = load ptr, ptr %0, align 8, !tbaa !13
  %200 = load ptr, ptr %199, align 8, !tbaa !18
  tail call void %200(ptr noundef nonnull %0) #6
  br label %201

201:                                              ; preds = %193, %184
  %202 = load i32, ptr %190, align 4, !tbaa !41
  %203 = icmp sgt i32 %202, 0
  br i1 %203, label %204, label %223

204:                                              ; preds = %201
  %205 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %206 = load ptr, ptr %205, align 8, !tbaa !26
  %207 = zext nneg i32 %202 to i64
  br label %208

208:                                              ; preds = %208, %204
  %209 = phi i64 [ 0, %204 ], [ %217, %208 ]
  %210 = getelementptr inbounds %struct.jpeg_component_info, ptr %206, i64 %209
  %211 = trunc i64 %209 to i32
  store i32 %211, ptr %210, align 8, !tbaa !42
  %212 = getelementptr inbounds %struct.jpeg_component_info, ptr %206, i64 %209, i32 2
  store i32 1, ptr %212, align 8, !tbaa !44
  %213 = getelementptr inbounds %struct.jpeg_component_info, ptr %206, i64 %209, i32 3
  store i32 1, ptr %213, align 4, !tbaa !45
  %214 = getelementptr inbounds %struct.jpeg_component_info, ptr %206, i64 %209, i32 4
  store i32 0, ptr %214, align 8, !tbaa !46
  %215 = getelementptr inbounds %struct.jpeg_component_info, ptr %206, i64 %209, i32 5
  store i32 0, ptr %215, align 4, !tbaa !47
  %216 = getelementptr inbounds %struct.jpeg_component_info, ptr %206, i64 %209, i32 6
  store i32 0, ptr %216, align 8, !tbaa !48
  %217 = add nuw nsw i64 %209, 1
  %218 = icmp eq i64 %217, %207
  br i1 %218, label %223, label %208, !llvm.loop !50

219:                                              ; preds = %1
  %220 = load ptr, ptr %0, align 8, !tbaa !13
  %221 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %220, i64 0, i32 5
  store i32 7, ptr %221, align 8, !tbaa !14
  %222 = load ptr, ptr %220, align 8, !tbaa !18
  tail call void %222(ptr noundef nonnull %0) #6
  br label %223

223:                                              ; preds = %208, %201, %219, %144, %104, %70, %36, %14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @jpeg_set_colorspace(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 100
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !13
  %8 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 5
  store i32 18, ptr %8, align 8, !tbaa !14
  %9 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 6
  store i32 %4, ptr %9, align 4, !tbaa !17
  %10 = load ptr, ptr %0, align 8, !tbaa !13
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  tail call void %11(ptr noundef nonnull %0) #6
  br label %12

12:                                               ; preds = %6, %2
  %13 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 13
  store i32 %1, ptr %13, align 8, !tbaa !38
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 31
  store i32 0, ptr %14, align 8, !tbaa !39
  %15 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 35
  store i32 0, ptr %15, align 4, !tbaa !40
  switch i32 %1, label %153 [
    i32 1, label %16
    i32 2, label %25
    i32 3, label %46
    i32 4, label %67
    i32 5, label %94
    i32 0, label %121
  ]

16:                                               ; preds = %12
  store i32 1, ptr %14, align 8, !tbaa !39
  %17 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  store i32 1, ptr %17, align 4, !tbaa !41
  %18 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %19 = load ptr, ptr %18, align 8, !tbaa !26
  store i32 1, ptr %19, align 8, !tbaa !42
  %20 = getelementptr inbounds %struct.jpeg_component_info, ptr %19, i64 0, i32 2
  store i32 1, ptr %20, align 8, !tbaa !44
  %21 = getelementptr inbounds %struct.jpeg_component_info, ptr %19, i64 0, i32 3
  store i32 1, ptr %21, align 4, !tbaa !45
  %22 = getelementptr inbounds %struct.jpeg_component_info, ptr %19, i64 0, i32 4
  store i32 0, ptr %22, align 8, !tbaa !46
  %23 = getelementptr inbounds %struct.jpeg_component_info, ptr %19, i64 0, i32 5
  store i32 0, ptr %23, align 4, !tbaa !47
  %24 = getelementptr inbounds %struct.jpeg_component_info, ptr %19, i64 0, i32 6
  store i32 0, ptr %24, align 8, !tbaa !48
  br label %157

25:                                               ; preds = %12
  store i32 1, ptr %15, align 4, !tbaa !40
  %26 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  store i32 3, ptr %26, align 4, !tbaa !41
  %27 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %28 = load ptr, ptr %27, align 8, !tbaa !26
  store i32 82, ptr %28, align 8, !tbaa !42
  %29 = getelementptr inbounds %struct.jpeg_component_info, ptr %28, i64 0, i32 2
  store i32 1, ptr %29, align 8, !tbaa !44
  %30 = getelementptr inbounds %struct.jpeg_component_info, ptr %28, i64 0, i32 3
  store i32 1, ptr %30, align 4, !tbaa !45
  %31 = getelementptr inbounds %struct.jpeg_component_info, ptr %28, i64 0, i32 4
  store i32 0, ptr %31, align 8, !tbaa !46
  %32 = getelementptr inbounds %struct.jpeg_component_info, ptr %28, i64 0, i32 5
  store i32 0, ptr %32, align 4, !tbaa !47
  %33 = getelementptr inbounds %struct.jpeg_component_info, ptr %28, i64 0, i32 6
  store i32 0, ptr %33, align 8, !tbaa !48
  %34 = getelementptr inbounds %struct.jpeg_component_info, ptr %28, i64 1
  store i32 71, ptr %34, align 8, !tbaa !42
  %35 = getelementptr inbounds %struct.jpeg_component_info, ptr %28, i64 1, i32 2
  store i32 1, ptr %35, align 8, !tbaa !44
  %36 = getelementptr inbounds %struct.jpeg_component_info, ptr %28, i64 1, i32 3
  store i32 1, ptr %36, align 4, !tbaa !45
  %37 = getelementptr inbounds %struct.jpeg_component_info, ptr %28, i64 1, i32 4
  store i32 0, ptr %37, align 8, !tbaa !46
  %38 = getelementptr inbounds %struct.jpeg_component_info, ptr %28, i64 1, i32 5
  store i32 0, ptr %38, align 4, !tbaa !47
  %39 = getelementptr inbounds %struct.jpeg_component_info, ptr %28, i64 1, i32 6
  store i32 0, ptr %39, align 8, !tbaa !48
  %40 = getelementptr inbounds %struct.jpeg_component_info, ptr %28, i64 2
  store i32 66, ptr %40, align 8, !tbaa !42
  %41 = getelementptr inbounds %struct.jpeg_component_info, ptr %28, i64 2, i32 2
  store i32 1, ptr %41, align 8, !tbaa !44
  %42 = getelementptr inbounds %struct.jpeg_component_info, ptr %28, i64 2, i32 3
  store i32 1, ptr %42, align 4, !tbaa !45
  %43 = getelementptr inbounds %struct.jpeg_component_info, ptr %28, i64 2, i32 4
  store i32 0, ptr %43, align 8, !tbaa !46
  %44 = getelementptr inbounds %struct.jpeg_component_info, ptr %28, i64 2, i32 5
  store i32 0, ptr %44, align 4, !tbaa !47
  %45 = getelementptr inbounds %struct.jpeg_component_info, ptr %28, i64 2, i32 6
  store i32 0, ptr %45, align 8, !tbaa !48
  br label %157

46:                                               ; preds = %12
  store i32 1, ptr %14, align 8, !tbaa !39
  %47 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  store i32 3, ptr %47, align 4, !tbaa !41
  %48 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %49 = load ptr, ptr %48, align 8, !tbaa !26
  store i32 1, ptr %49, align 8, !tbaa !42
  %50 = getelementptr inbounds %struct.jpeg_component_info, ptr %49, i64 0, i32 2
  store i32 2, ptr %50, align 8, !tbaa !44
  %51 = getelementptr inbounds %struct.jpeg_component_info, ptr %49, i64 0, i32 3
  store i32 2, ptr %51, align 4, !tbaa !45
  %52 = getelementptr inbounds %struct.jpeg_component_info, ptr %49, i64 0, i32 4
  store i32 0, ptr %52, align 8, !tbaa !46
  %53 = getelementptr inbounds %struct.jpeg_component_info, ptr %49, i64 0, i32 5
  store i32 0, ptr %53, align 4, !tbaa !47
  %54 = getelementptr inbounds %struct.jpeg_component_info, ptr %49, i64 0, i32 6
  store i32 0, ptr %54, align 8, !tbaa !48
  %55 = getelementptr inbounds %struct.jpeg_component_info, ptr %49, i64 1
  store i32 2, ptr %55, align 8, !tbaa !42
  %56 = getelementptr inbounds %struct.jpeg_component_info, ptr %49, i64 1, i32 2
  store i32 1, ptr %56, align 8, !tbaa !44
  %57 = getelementptr inbounds %struct.jpeg_component_info, ptr %49, i64 1, i32 3
  store i32 1, ptr %57, align 4, !tbaa !45
  %58 = getelementptr inbounds %struct.jpeg_component_info, ptr %49, i64 1, i32 4
  store i32 1, ptr %58, align 8, !tbaa !46
  %59 = getelementptr inbounds %struct.jpeg_component_info, ptr %49, i64 1, i32 5
  store i32 1, ptr %59, align 4, !tbaa !47
  %60 = getelementptr inbounds %struct.jpeg_component_info, ptr %49, i64 1, i32 6
  store i32 1, ptr %60, align 8, !tbaa !48
  %61 = getelementptr inbounds %struct.jpeg_component_info, ptr %49, i64 2
  store i32 3, ptr %61, align 8, !tbaa !42
  %62 = getelementptr inbounds %struct.jpeg_component_info, ptr %49, i64 2, i32 2
  store i32 1, ptr %62, align 8, !tbaa !44
  %63 = getelementptr inbounds %struct.jpeg_component_info, ptr %49, i64 2, i32 3
  store i32 1, ptr %63, align 4, !tbaa !45
  %64 = getelementptr inbounds %struct.jpeg_component_info, ptr %49, i64 2, i32 4
  store i32 1, ptr %64, align 8, !tbaa !46
  %65 = getelementptr inbounds %struct.jpeg_component_info, ptr %49, i64 2, i32 5
  store i32 1, ptr %65, align 4, !tbaa !47
  %66 = getelementptr inbounds %struct.jpeg_component_info, ptr %49, i64 2, i32 6
  store i32 1, ptr %66, align 8, !tbaa !48
  br label %157

67:                                               ; preds = %12
  store i32 1, ptr %15, align 4, !tbaa !40
  %68 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  store i32 4, ptr %68, align 4, !tbaa !41
  %69 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %70 = load ptr, ptr %69, align 8, !tbaa !26
  store i32 67, ptr %70, align 8, !tbaa !42
  %71 = getelementptr inbounds %struct.jpeg_component_info, ptr %70, i64 0, i32 2
  store i32 1, ptr %71, align 8, !tbaa !44
  %72 = getelementptr inbounds %struct.jpeg_component_info, ptr %70, i64 0, i32 3
  store i32 1, ptr %72, align 4, !tbaa !45
  %73 = getelementptr inbounds %struct.jpeg_component_info, ptr %70, i64 0, i32 4
  store i32 0, ptr %73, align 8, !tbaa !46
  %74 = getelementptr inbounds %struct.jpeg_component_info, ptr %70, i64 0, i32 5
  store i32 0, ptr %74, align 4, !tbaa !47
  %75 = getelementptr inbounds %struct.jpeg_component_info, ptr %70, i64 0, i32 6
  store i32 0, ptr %75, align 8, !tbaa !48
  %76 = getelementptr inbounds %struct.jpeg_component_info, ptr %70, i64 1
  store i32 77, ptr %76, align 8, !tbaa !42
  %77 = getelementptr inbounds %struct.jpeg_component_info, ptr %70, i64 1, i32 2
  store i32 1, ptr %77, align 8, !tbaa !44
  %78 = getelementptr inbounds %struct.jpeg_component_info, ptr %70, i64 1, i32 3
  store i32 1, ptr %78, align 4, !tbaa !45
  %79 = getelementptr inbounds %struct.jpeg_component_info, ptr %70, i64 1, i32 4
  store i32 0, ptr %79, align 8, !tbaa !46
  %80 = getelementptr inbounds %struct.jpeg_component_info, ptr %70, i64 1, i32 5
  store i32 0, ptr %80, align 4, !tbaa !47
  %81 = getelementptr inbounds %struct.jpeg_component_info, ptr %70, i64 1, i32 6
  store i32 0, ptr %81, align 8, !tbaa !48
  %82 = getelementptr inbounds %struct.jpeg_component_info, ptr %70, i64 2
  store i32 89, ptr %82, align 8, !tbaa !42
  %83 = getelementptr inbounds %struct.jpeg_component_info, ptr %70, i64 2, i32 2
  store i32 1, ptr %83, align 8, !tbaa !44
  %84 = getelementptr inbounds %struct.jpeg_component_info, ptr %70, i64 2, i32 3
  store i32 1, ptr %84, align 4, !tbaa !45
  %85 = getelementptr inbounds %struct.jpeg_component_info, ptr %70, i64 2, i32 4
  store i32 0, ptr %85, align 8, !tbaa !46
  %86 = getelementptr inbounds %struct.jpeg_component_info, ptr %70, i64 2, i32 5
  store i32 0, ptr %86, align 4, !tbaa !47
  %87 = getelementptr inbounds %struct.jpeg_component_info, ptr %70, i64 2, i32 6
  store i32 0, ptr %87, align 8, !tbaa !48
  %88 = getelementptr inbounds %struct.jpeg_component_info, ptr %70, i64 3
  store i32 75, ptr %88, align 8, !tbaa !42
  %89 = getelementptr inbounds %struct.jpeg_component_info, ptr %70, i64 3, i32 2
  store i32 1, ptr %89, align 8, !tbaa !44
  %90 = getelementptr inbounds %struct.jpeg_component_info, ptr %70, i64 3, i32 3
  store i32 1, ptr %90, align 4, !tbaa !45
  %91 = getelementptr inbounds %struct.jpeg_component_info, ptr %70, i64 3, i32 4
  store i32 0, ptr %91, align 8, !tbaa !46
  %92 = getelementptr inbounds %struct.jpeg_component_info, ptr %70, i64 3, i32 5
  store i32 0, ptr %92, align 4, !tbaa !47
  %93 = getelementptr inbounds %struct.jpeg_component_info, ptr %70, i64 3, i32 6
  store i32 0, ptr %93, align 8, !tbaa !48
  br label %157

94:                                               ; preds = %12
  store i32 1, ptr %15, align 4, !tbaa !40
  %95 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  store i32 4, ptr %95, align 4, !tbaa !41
  %96 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %97 = load ptr, ptr %96, align 8, !tbaa !26
  store i32 1, ptr %97, align 8, !tbaa !42
  %98 = getelementptr inbounds %struct.jpeg_component_info, ptr %97, i64 0, i32 2
  store i32 2, ptr %98, align 8, !tbaa !44
  %99 = getelementptr inbounds %struct.jpeg_component_info, ptr %97, i64 0, i32 3
  store i32 2, ptr %99, align 4, !tbaa !45
  %100 = getelementptr inbounds %struct.jpeg_component_info, ptr %97, i64 0, i32 4
  store i32 0, ptr %100, align 8, !tbaa !46
  %101 = getelementptr inbounds %struct.jpeg_component_info, ptr %97, i64 0, i32 5
  store i32 0, ptr %101, align 4, !tbaa !47
  %102 = getelementptr inbounds %struct.jpeg_component_info, ptr %97, i64 0, i32 6
  store i32 0, ptr %102, align 8, !tbaa !48
  %103 = getelementptr inbounds %struct.jpeg_component_info, ptr %97, i64 1
  store i32 2, ptr %103, align 8, !tbaa !42
  %104 = getelementptr inbounds %struct.jpeg_component_info, ptr %97, i64 1, i32 2
  store i32 1, ptr %104, align 8, !tbaa !44
  %105 = getelementptr inbounds %struct.jpeg_component_info, ptr %97, i64 1, i32 3
  store i32 1, ptr %105, align 4, !tbaa !45
  %106 = getelementptr inbounds %struct.jpeg_component_info, ptr %97, i64 1, i32 4
  store i32 1, ptr %106, align 8, !tbaa !46
  %107 = getelementptr inbounds %struct.jpeg_component_info, ptr %97, i64 1, i32 5
  store i32 1, ptr %107, align 4, !tbaa !47
  %108 = getelementptr inbounds %struct.jpeg_component_info, ptr %97, i64 1, i32 6
  store i32 1, ptr %108, align 8, !tbaa !48
  %109 = getelementptr inbounds %struct.jpeg_component_info, ptr %97, i64 2
  store i32 3, ptr %109, align 8, !tbaa !42
  %110 = getelementptr inbounds %struct.jpeg_component_info, ptr %97, i64 2, i32 2
  store i32 1, ptr %110, align 8, !tbaa !44
  %111 = getelementptr inbounds %struct.jpeg_component_info, ptr %97, i64 2, i32 3
  store i32 1, ptr %111, align 4, !tbaa !45
  %112 = getelementptr inbounds %struct.jpeg_component_info, ptr %97, i64 2, i32 4
  store i32 1, ptr %112, align 8, !tbaa !46
  %113 = getelementptr inbounds %struct.jpeg_component_info, ptr %97, i64 2, i32 5
  store i32 1, ptr %113, align 4, !tbaa !47
  %114 = getelementptr inbounds %struct.jpeg_component_info, ptr %97, i64 2, i32 6
  store i32 1, ptr %114, align 8, !tbaa !48
  %115 = getelementptr inbounds %struct.jpeg_component_info, ptr %97, i64 3
  store i32 4, ptr %115, align 8, !tbaa !42
  %116 = getelementptr inbounds %struct.jpeg_component_info, ptr %97, i64 3, i32 2
  store i32 2, ptr %116, align 8, !tbaa !44
  %117 = getelementptr inbounds %struct.jpeg_component_info, ptr %97, i64 3, i32 3
  store i32 2, ptr %117, align 4, !tbaa !45
  %118 = getelementptr inbounds %struct.jpeg_component_info, ptr %97, i64 3, i32 4
  store i32 0, ptr %118, align 8, !tbaa !46
  %119 = getelementptr inbounds %struct.jpeg_component_info, ptr %97, i64 3, i32 5
  store i32 0, ptr %119, align 4, !tbaa !47
  %120 = getelementptr inbounds %struct.jpeg_component_info, ptr %97, i64 3, i32 6
  store i32 0, ptr %120, align 8, !tbaa !48
  br label %157

121:                                              ; preds = %12
  %122 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 8
  %123 = load i32, ptr %122, align 8, !tbaa !49
  %124 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  store i32 %123, ptr %124, align 4, !tbaa !41
  %125 = add i32 %123, -11
  %126 = icmp ult i32 %125, -10
  br i1 %126, label %127, label %135

127:                                              ; preds = %121
  %128 = load ptr, ptr %0, align 8, !tbaa !13
  %129 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %128, i64 0, i32 5
  store i32 24, ptr %129, align 8, !tbaa !14
  %130 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %128, i64 0, i32 6
  store i32 %123, ptr %130, align 4, !tbaa !17
  %131 = load ptr, ptr %0, align 8, !tbaa !13
  %132 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %131, i64 0, i32 6, i32 0, i64 1
  store i32 10, ptr %132, align 4, !tbaa !17
  %133 = load ptr, ptr %0, align 8, !tbaa !13
  %134 = load ptr, ptr %133, align 8, !tbaa !18
  tail call void %134(ptr noundef nonnull %0) #6
  br label %135

135:                                              ; preds = %121, %127
  %136 = load i32, ptr %124, align 4, !tbaa !41
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %157

138:                                              ; preds = %135
  %139 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %140 = load ptr, ptr %139, align 8, !tbaa !26
  %141 = zext nneg i32 %136 to i64
  br label %142

142:                                              ; preds = %138, %142
  %143 = phi i64 [ 0, %138 ], [ %151, %142 ]
  %144 = getelementptr inbounds %struct.jpeg_component_info, ptr %140, i64 %143
  %145 = trunc i64 %143 to i32
  store i32 %145, ptr %144, align 8, !tbaa !42
  %146 = getelementptr inbounds %struct.jpeg_component_info, ptr %140, i64 %143, i32 2
  store i32 1, ptr %146, align 8, !tbaa !44
  %147 = getelementptr inbounds %struct.jpeg_component_info, ptr %140, i64 %143, i32 3
  store i32 1, ptr %147, align 4, !tbaa !45
  %148 = getelementptr inbounds %struct.jpeg_component_info, ptr %140, i64 %143, i32 4
  store i32 0, ptr %148, align 8, !tbaa !46
  %149 = getelementptr inbounds %struct.jpeg_component_info, ptr %140, i64 %143, i32 5
  store i32 0, ptr %149, align 4, !tbaa !47
  %150 = getelementptr inbounds %struct.jpeg_component_info, ptr %140, i64 %143, i32 6
  store i32 0, ptr %150, align 8, !tbaa !48
  %151 = add nuw nsw i64 %143, 1
  %152 = icmp eq i64 %151, %141
  br i1 %152, label %157, label %142, !llvm.loop !50

153:                                              ; preds = %12
  %154 = load ptr, ptr %0, align 8, !tbaa !13
  %155 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %154, i64 0, i32 5
  store i32 8, ptr %155, align 8, !tbaa !14
  %156 = load ptr, ptr %154, align 8, !tbaa !18
  tail call void %156(ptr noundef nonnull %0) #6
  br label %157

157:                                              ; preds = %142, %135, %153, %94, %67, %46, %25, %16
  ret void
}

declare ptr @jpeg_alloc_huff_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 28}
!6 = !{!"jpeg_compress_struct", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !7, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !11, i64 56, !10, i64 64, !10, i64 68, !10, i64 72, !7, i64 80, !8, i64 88, !8, i64 120, !8, i64 152, !8, i64 184, !8, i64 200, !8, i64 216, !10, i64 232, !7, i64 240, !10, i64 248, !10, i64 252, !10, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !10, i64 272, !10, i64 276, !10, i64 280, !8, i64 284, !12, i64 286, !12, i64 288, !10, i64 292, !10, i64 296, !10, i64 300, !10, i64 304, !10, i64 308, !10, i64 312, !10, i64 316, !8, i64 320, !10, i64 352, !10, i64 356, !10, i64 360, !8, i64 364, !10, i64 404, !10, i64 408, !10, i64 412, !10, i64 416, !7, i64 424, !7, i64 432, !7, i64 440, !7, i64 448, !7, i64 456, !7, i64 464, !7, i64 472, !7, i64 480, !7, i64 488}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"double", !8, i64 0}
!12 = !{!"short", !8, i64 0}
!13 = !{!6, !7, i64 0}
!14 = !{!15, !10, i64 40}
!15 = !{!"jpeg_error_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !8, i64 44, !10, i64 124, !16, i64 128, !7, i64 136, !10, i64 144, !7, i64 152, !10, i64 160, !10, i64 164}
!16 = !{!"long", !8, i64 0}
!17 = !{!8, !8, i64 0}
!18 = !{!15, !7, i64 0}
!19 = !{!7, !7, i64 0}
!20 = !{!10, !10, i64 0}
!21 = !{!12, !12, i64 0}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = !{!25, !10, i64 128}
!25 = !{!"", !8, i64 0, !10, i64 128}
!26 = !{!6, !7, i64 80}
!27 = !{!6, !7, i64 8}
!28 = !{!29, !7, i64 0}
!29 = !{!"jpeg_memory_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !16, i64 88}
!30 = !{!6, !10, i64 64}
!31 = !{!32, !10, i64 276}
!32 = !{!"", !8, i64 0, !8, i64 17, !10, i64 276}
!33 = !{!6, !10, i64 232}
!34 = !{!6, !8, i64 284}
!35 = !{!6, !12, i64 286}
!36 = !{!6, !12, i64 288}
!37 = !{!6, !10, i64 52}
!38 = !{!6, !10, i64 72}
!39 = !{!6, !10, i64 280}
!40 = !{!6, !10, i64 292}
!41 = !{!6, !10, i64 68}
!42 = !{!43, !10, i64 0}
!43 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !7, i64 80, !7, i64 88}
!44 = !{!43, !10, i64 8}
!45 = !{!43, !10, i64 12}
!46 = !{!43, !10, i64 16}
!47 = !{!43, !10, i64 20}
!48 = !{!43, !10, i64 24}
!49 = !{!6, !10, i64 48}
!50 = distinct !{!50, !23}
