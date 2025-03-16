; ModuleID = 'src/jcdctmgr.c'
source_filename = "src/jcdctmgr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_forward_dct = type { ptr, ptr }
%struct.my_fdct_controller = type { %struct.jpeg_forward_dct, ptr, [4 x ptr], ptr, [4 x ptr] }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }

@start_pass_fdctmgr.aanscales = internal unnamed_addr constant [64 x i16] [i16 16384, i16 22725, i16 21407, i16 19266, i16 16384, i16 12873, i16 8867, i16 4520, i16 22725, i16 31521, i16 29692, i16 26722, i16 22725, i16 17855, i16 12299, i16 6270, i16 21407, i16 29692, i16 27969, i16 25172, i16 21407, i16 16819, i16 11585, i16 5906, i16 19266, i16 26722, i16 25172, i16 22654, i16 19266, i16 15137, i16 10426, i16 5315, i16 16384, i16 22725, i16 21407, i16 19266, i16 16384, i16 12873, i16 8867, i16 4520, i16 12873, i16 17855, i16 16819, i16 15137, i16 12873, i16 10114, i16 6967, i16 3552, i16 8867, i16 12299, i16 11585, i16 10426, i16 8867, i16 6967, i16 4799, i16 2446, i16 4520, i16 6270, i16 5906, i16 5315, i16 4520, i16 3552, i16 2446, i16 1247], align 16
@start_pass_fdctmgr.aanscalefactor = internal unnamed_addr constant [8 x double] [double 1.000000e+00, double 0x3FF63150B14861EF, double 0x3FF4E7AE914D6FCA, double 0x3FF2D062EF6C11AA, double 1.000000e+00, double 0x3FE92469C0A7BF3B, double 0x3FE1517A7BC720BB, double 0x3FD1A855DE72AB5D], align 16

; Function Attrs: nounwind uwtable
define dso_local void @jinit_forward_dct(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef 1, i64 noundef 96) #4
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 58
  store ptr %5, ptr %6, align 8, !tbaa !16
  store ptr @start_pass_fdctmgr, ptr %5, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 28
  %8 = load i32, ptr %7, align 4, !tbaa !20
  switch i32 %8, label %18 [
    i32 0, label %9
    i32 1, label %12
    i32 2, label %15
  ]

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.jpeg_forward_dct, ptr %5, i64 0, i32 1
  store ptr @forward_DCT, ptr %10, align 8, !tbaa !21
  %11 = getelementptr inbounds %struct.my_fdct_controller, ptr %5, i64 0, i32 1
  store ptr @jpeg_fdct_islow, ptr %11, align 8, !tbaa !22
  br label %22

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.jpeg_forward_dct, ptr %5, i64 0, i32 1
  store ptr @forward_DCT, ptr %13, align 8, !tbaa !21
  %14 = getelementptr inbounds %struct.my_fdct_controller, ptr %5, i64 0, i32 1
  store ptr @jpeg_fdct_ifast, ptr %14, align 8, !tbaa !22
  br label %22

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.jpeg_forward_dct, ptr %5, i64 0, i32 1
  store ptr @forward_DCT_float, ptr %16, align 8, !tbaa !21
  %17 = getelementptr inbounds %struct.my_fdct_controller, ptr %5, i64 0, i32 3
  store ptr @jpeg_fdct_float, ptr %17, align 8, !tbaa !23
  br label %22

18:                                               ; preds = %1
  %19 = load ptr, ptr %0, align 8, !tbaa !24
  %20 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %19, i64 0, i32 5
  store i32 47, ptr %20, align 8, !tbaa !25
  %21 = load ptr, ptr %19, align 8, !tbaa !27
  tail call void %21(ptr noundef nonnull %0) #4
  br label %22

22:                                               ; preds = %18, %15, %12, %9
  %23 = getelementptr i8, ptr %5, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %23, i8 0, i64 32, i1 false), !tbaa !28
  %24 = getelementptr i8, ptr %5, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %24, i8 0, i64 32, i1 false), !tbaa !28
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @start_pass_fdctmgr(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 58
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  %4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %5 = load i32, ptr %4, align 4, !tbaa !29
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %126

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %9 = load ptr, ptr %8, align 8, !tbaa !30
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 28
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %12 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %13 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  br label %14

14:                                               ; preds = %7, %121
  %15 = phi i32 [ 0, %7 ], [ %122, %121 ]
  %16 = phi ptr [ %9, %7 ], [ %123, %121 ]
  %17 = getelementptr inbounds %struct.jpeg_component_info, ptr %16, i64 0, i32 4
  %18 = load i32, ptr %17, align 8, !tbaa !31
  %19 = icmp ugt i32 %18, 3
  br i1 %19, label %25, label %20

20:                                               ; preds = %14
  %21 = zext nneg i32 %18 to i64
  %22 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 15, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !28
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %20, %14
  %26 = load ptr, ptr %0, align 8, !tbaa !24
  %27 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %26, i64 0, i32 5
  store i32 51, ptr %27, align 8, !tbaa !25
  %28 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %26, i64 0, i32 6
  store i32 %18, ptr %28, align 4, !tbaa !33
  %29 = load ptr, ptr %0, align 8, !tbaa !24
  %30 = load ptr, ptr %29, align 8, !tbaa !27
  tail call void %30(ptr noundef nonnull %0) #4
  br label %31

31:                                               ; preds = %25, %20
  %32 = sext i32 %18 to i64
  %33 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 15, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !28
  %35 = load i32, ptr %10, align 4, !tbaa !20
  switch i32 %35, label %117 [
    i32 0, label %36
    i32 1, label %55
    i32 2, label %80
  ]

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.my_fdct_controller, ptr %3, i64 0, i32 2, i64 %32
  %38 = load ptr, ptr %37, align 8, !tbaa !28
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load ptr, ptr %13, align 8, !tbaa !5
  %42 = load ptr, ptr %41, align 8, !tbaa !13
  %43 = tail call ptr %42(ptr noundef %0, i32 noundef 1, i64 noundef 256) #4
  store ptr %43, ptr %37, align 8, !tbaa !28
  br label %44

44:                                               ; preds = %40, %36
  %45 = load ptr, ptr %37, align 8, !tbaa !28
  br label %46

46:                                               ; preds = %44, %46
  %47 = phi i64 [ 0, %44 ], [ %53, %46 ]
  %48 = getelementptr inbounds [64 x i16], ptr %34, i64 0, i64 %47
  %49 = load i16, ptr %48, align 2, !tbaa !34
  %50 = zext i16 %49 to i32
  %51 = shl nuw nsw i32 %50, 3
  %52 = getelementptr inbounds i32, ptr %45, i64 %47
  store i32 %51, ptr %52, align 4, !tbaa !35
  %53 = add nuw nsw i64 %47, 1
  %54 = icmp eq i64 %53, 64
  br i1 %54, label %121, label %46, !llvm.loop !36

55:                                               ; preds = %31
  %56 = getelementptr inbounds %struct.my_fdct_controller, ptr %3, i64 0, i32 2, i64 %32
  %57 = load ptr, ptr %56, align 8, !tbaa !28
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load ptr, ptr %12, align 8, !tbaa !5
  %61 = load ptr, ptr %60, align 8, !tbaa !13
  %62 = tail call ptr %61(ptr noundef %0, i32 noundef 1, i64 noundef 256) #4
  store ptr %62, ptr %56, align 8, !tbaa !28
  br label %63

63:                                               ; preds = %59, %55
  %64 = load ptr, ptr %56, align 8, !tbaa !28
  br label %65

65:                                               ; preds = %63, %65
  %66 = phi i64 [ 0, %63 ], [ %78, %65 ]
  %67 = getelementptr inbounds [64 x i16], ptr %34, i64 0, i64 %66
  %68 = load i16, ptr %67, align 2, !tbaa !34
  %69 = zext i16 %68 to i64
  %70 = getelementptr inbounds [64 x i16], ptr @start_pass_fdctmgr.aanscales, i64 0, i64 %66
  %71 = load i16, ptr %70, align 2, !tbaa !34
  %72 = sext i16 %71 to i64
  %73 = mul nsw i64 %72, %69
  %74 = add nsw i64 %73, 1024
  %75 = ashr i64 %74, 11
  %76 = trunc i64 %75 to i32
  %77 = getelementptr inbounds i32, ptr %64, i64 %66
  store i32 %76, ptr %77, align 4, !tbaa !35
  %78 = add nuw nsw i64 %66, 1
  %79 = icmp eq i64 %78, 64
  br i1 %79, label %121, label %65, !llvm.loop !38

80:                                               ; preds = %31
  %81 = getelementptr inbounds %struct.my_fdct_controller, ptr %3, i64 0, i32 4, i64 %32
  %82 = load ptr, ptr %81, align 8, !tbaa !28
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load ptr, ptr %11, align 8, !tbaa !5
  %86 = load ptr, ptr %85, align 8, !tbaa !13
  %87 = tail call ptr %86(ptr noundef %0, i32 noundef 1, i64 noundef 256) #4
  store ptr %87, ptr %81, align 8, !tbaa !28
  br label %88

88:                                               ; preds = %84, %80
  %89 = load ptr, ptr %81, align 8, !tbaa !28
  br label %90

90:                                               ; preds = %88, %114
  %91 = phi i64 [ 0, %88 ], [ %115, %114 ]
  %92 = phi i64 [ 0, %88 ], [ %111, %114 ]
  %93 = getelementptr inbounds [8 x double], ptr @start_pass_fdctmgr.aanscalefactor, i64 0, i64 %91
  %94 = load double, ptr %93, align 8, !tbaa !39
  %95 = shl i64 %92, 32
  %96 = ashr exact i64 %95, 32
  br label %97

97:                                               ; preds = %90, %97
  %98 = phi i64 [ %96, %90 ], [ %111, %97 ]
  %99 = phi i64 [ 0, %90 ], [ %112, %97 ]
  %100 = getelementptr inbounds [64 x i16], ptr %34, i64 0, i64 %98
  %101 = load i16, ptr %100, align 2, !tbaa !34
  %102 = uitofp i16 %101 to double
  %103 = fmul double %94, %102
  %104 = getelementptr inbounds [8 x double], ptr @start_pass_fdctmgr.aanscalefactor, i64 0, i64 %99
  %105 = load double, ptr %104, align 8, !tbaa !39
  %106 = fmul double %103, %105
  %107 = fmul double %106, 8.000000e+00
  %108 = fdiv double 1.000000e+00, %107
  %109 = fptrunc double %108 to float
  %110 = getelementptr inbounds float, ptr %89, i64 %98
  store float %109, ptr %110, align 4, !tbaa !40
  %111 = add nsw i64 %98, 1
  %112 = add nuw nsw i64 %99, 1
  %113 = icmp eq i64 %112, 8
  br i1 %113, label %114, label %97, !llvm.loop !42

114:                                              ; preds = %97
  %115 = add nuw nsw i64 %91, 1
  %116 = icmp eq i64 %115, 8
  br i1 %116, label %121, label %90, !llvm.loop !43

117:                                              ; preds = %31
  %118 = load ptr, ptr %0, align 8, !tbaa !24
  %119 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %118, i64 0, i32 5
  store i32 47, ptr %119, align 8, !tbaa !25
  %120 = load ptr, ptr %118, align 8, !tbaa !27
  tail call void %120(ptr noundef nonnull %0) #4
  br label %121

121:                                              ; preds = %114, %65, %46, %117
  %122 = add nuw nsw i32 %15, 1
  %123 = getelementptr inbounds %struct.jpeg_component_info, ptr %16, i64 1
  %124 = load i32, ptr %4, align 4, !tbaa !29
  %125 = icmp slt i32 %122, %124
  br i1 %125, label %14, label %126, !llvm.loop !44

126:                                              ; preds = %121, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @forward_DCT(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca [64 x i32], align 16
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 58
  %10 = load ptr, ptr %9, align 8, !tbaa !16
  %11 = getelementptr inbounds %struct.my_fdct_controller, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  %13 = getelementptr inbounds %struct.jpeg_component_info, ptr %1, i64 0, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !31
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.my_fdct_controller, ptr %10, i64 0, i32 2, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %8) #4
  %18 = zext i32 %4 to i64
  %19 = getelementptr inbounds ptr, ptr %2, i64 %18
  %20 = icmp eq i32 %6, 0
  br i1 %20, label %107, label %21

21:                                               ; preds = %7
  %22 = zext i32 %6 to i64
  br label %23

23:                                               ; preds = %21, %103
  %24 = phi i64 [ 0, %21 ], [ %104, %103 ]
  %25 = phi i32 [ %5, %21 ], [ %105, %103 ]
  %26 = zext i32 %25 to i64
  br label %27

27:                                               ; preds = %23, %27
  %28 = phi i64 [ 0, %23 ], [ %72, %27 ]
  %29 = phi ptr [ %8, %23 ], [ %71, %27 ]
  %30 = getelementptr inbounds ptr, ptr %19, i64 %28
  %31 = load ptr, ptr %30, align 8, !tbaa !28
  %32 = getelementptr inbounds i8, ptr %31, i64 %26
  %33 = getelementptr inbounds i8, ptr %32, i64 1
  %34 = load i8, ptr %32, align 1, !tbaa !33
  %35 = zext i8 %34 to i32
  %36 = add nsw i32 %35, -128
  %37 = getelementptr inbounds i32, ptr %29, i64 1
  store i32 %36, ptr %29, align 4, !tbaa !35
  %38 = getelementptr inbounds i8, ptr %32, i64 2
  %39 = load i8, ptr %33, align 1, !tbaa !33
  %40 = zext i8 %39 to i32
  %41 = add nsw i32 %40, -128
  %42 = getelementptr inbounds i32, ptr %29, i64 2
  store i32 %41, ptr %37, align 4, !tbaa !35
  %43 = getelementptr inbounds i8, ptr %32, i64 3
  %44 = load i8, ptr %38, align 1, !tbaa !33
  %45 = zext i8 %44 to i32
  %46 = add nsw i32 %45, -128
  %47 = getelementptr inbounds i32, ptr %29, i64 3
  store i32 %46, ptr %42, align 4, !tbaa !35
  %48 = getelementptr inbounds i8, ptr %32, i64 4
  %49 = load i8, ptr %43, align 1, !tbaa !33
  %50 = zext i8 %49 to i32
  %51 = add nsw i32 %50, -128
  %52 = getelementptr inbounds i32, ptr %29, i64 4
  store i32 %51, ptr %47, align 4, !tbaa !35
  %53 = getelementptr inbounds i8, ptr %32, i64 5
  %54 = load i8, ptr %48, align 1, !tbaa !33
  %55 = zext i8 %54 to i32
  %56 = add nsw i32 %55, -128
  %57 = getelementptr inbounds i32, ptr %29, i64 5
  store i32 %56, ptr %52, align 4, !tbaa !35
  %58 = getelementptr inbounds i8, ptr %32, i64 6
  %59 = load i8, ptr %53, align 1, !tbaa !33
  %60 = zext i8 %59 to i32
  %61 = add nsw i32 %60, -128
  %62 = getelementptr inbounds i32, ptr %29, i64 6
  store i32 %61, ptr %57, align 4, !tbaa !35
  %63 = getelementptr inbounds i8, ptr %32, i64 7
  %64 = load i8, ptr %58, align 1, !tbaa !33
  %65 = zext i8 %64 to i32
  %66 = add nsw i32 %65, -128
  %67 = getelementptr inbounds i32, ptr %29, i64 7
  store i32 %66, ptr %62, align 4, !tbaa !35
  %68 = load i8, ptr %63, align 1, !tbaa !33
  %69 = zext i8 %68 to i32
  %70 = add nsw i32 %69, -128
  %71 = getelementptr inbounds i32, ptr %29, i64 8
  store i32 %70, ptr %67, align 4, !tbaa !35
  %72 = add nuw nsw i64 %28, 1
  %73 = icmp eq i64 %72, 8
  br i1 %73, label %74, label %27, !llvm.loop !45

74:                                               ; preds = %27
  call void %12(ptr noundef nonnull %8) #4
  %75 = getelementptr inbounds [64 x i16], ptr %3, i64 %24
  br label %76

76:                                               ; preds = %74, %97
  %77 = phi i64 [ 0, %74 ], [ %101, %97 ]
  %78 = getelementptr inbounds i32, ptr %17, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !35
  %80 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 %77
  %81 = load i32, ptr %80, align 4, !tbaa !35
  %82 = icmp slt i32 %81, 0
  %83 = ashr i32 %79, 1
  br i1 %82, label %84, label %92

84:                                               ; preds = %76
  %85 = sub i32 %83, %81
  %86 = icmp slt i32 %85, %79
  br i1 %86, label %89, label %87

87:                                               ; preds = %84
  %88 = sdiv i32 %85, %79
  br label %89

89:                                               ; preds = %84, %87
  %90 = phi i32 [ %88, %87 ], [ 0, %84 ]
  %91 = sub nsw i32 0, %90
  br label %97

92:                                               ; preds = %76
  %93 = add nsw i32 %81, %83
  %94 = icmp slt i32 %93, %79
  br i1 %94, label %97, label %95

95:                                               ; preds = %92
  %96 = sdiv i32 %93, %79
  br label %97

97:                                               ; preds = %92, %95, %89
  %98 = phi i32 [ %91, %89 ], [ %96, %95 ], [ 0, %92 ]
  %99 = trunc i32 %98 to i16
  %100 = getelementptr inbounds i16, ptr %75, i64 %77
  store i16 %99, ptr %100, align 2, !tbaa !34
  %101 = add nuw nsw i64 %77, 1
  %102 = icmp eq i64 %101, 64
  br i1 %102, label %103, label %76, !llvm.loop !46

103:                                              ; preds = %97
  %104 = add nuw nsw i64 %24, 1
  %105 = add i32 %25, 8
  %106 = icmp eq i64 %104, %22
  br i1 %106, label %107, label %23, !llvm.loop !47

107:                                              ; preds = %103, %7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %8) #4
  ret void
}

declare void @jpeg_fdct_islow(ptr noundef) #2

declare void @jpeg_fdct_ifast(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @forward_DCT_float(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca [64 x float], align 16
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 58
  %10 = load ptr, ptr %9, align 8, !tbaa !16
  %11 = getelementptr inbounds %struct.my_fdct_controller, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !23
  %13 = getelementptr inbounds %struct.jpeg_component_info, ptr %1, i64 0, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !31
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.my_fdct_controller, ptr %10, i64 0, i32 4, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %8) #4
  %18 = zext i32 %4 to i64
  %19 = getelementptr inbounds ptr, ptr %2, i64 %18
  %20 = icmp eq i32 %6, 0
  br i1 %20, label %102, label %21

21:                                               ; preds = %7
  %22 = zext i32 %6 to i64
  br label %23

23:                                               ; preds = %21, %98
  %24 = phi i64 [ 0, %21 ], [ %99, %98 ]
  %25 = phi i32 [ %5, %21 ], [ %100, %98 ]
  %26 = zext i32 %25 to i64
  br label %27

27:                                               ; preds = %23, %27
  %28 = phi i64 [ 0, %23 ], [ %80, %27 ]
  %29 = phi ptr [ %8, %23 ], [ %79, %27 ]
  %30 = getelementptr inbounds ptr, ptr %19, i64 %28
  %31 = load ptr, ptr %30, align 8, !tbaa !28
  %32 = getelementptr inbounds i8, ptr %31, i64 %26
  %33 = getelementptr inbounds i8, ptr %32, i64 1
  %34 = load i8, ptr %32, align 1, !tbaa !33
  %35 = zext i8 %34 to i32
  %36 = add nsw i32 %35, -128
  %37 = sitofp i32 %36 to float
  %38 = getelementptr inbounds float, ptr %29, i64 1
  store float %37, ptr %29, align 4, !tbaa !40
  %39 = getelementptr inbounds i8, ptr %32, i64 2
  %40 = load i8, ptr %33, align 1, !tbaa !33
  %41 = zext i8 %40 to i32
  %42 = add nsw i32 %41, -128
  %43 = sitofp i32 %42 to float
  %44 = getelementptr inbounds float, ptr %29, i64 2
  store float %43, ptr %38, align 4, !tbaa !40
  %45 = getelementptr inbounds i8, ptr %32, i64 3
  %46 = load i8, ptr %39, align 1, !tbaa !33
  %47 = zext i8 %46 to i32
  %48 = add nsw i32 %47, -128
  %49 = sitofp i32 %48 to float
  %50 = getelementptr inbounds float, ptr %29, i64 3
  store float %49, ptr %44, align 4, !tbaa !40
  %51 = getelementptr inbounds i8, ptr %32, i64 4
  %52 = load i8, ptr %45, align 1, !tbaa !33
  %53 = zext i8 %52 to i32
  %54 = add nsw i32 %53, -128
  %55 = sitofp i32 %54 to float
  %56 = getelementptr inbounds float, ptr %29, i64 4
  store float %55, ptr %50, align 4, !tbaa !40
  %57 = getelementptr inbounds i8, ptr %32, i64 5
  %58 = load i8, ptr %51, align 1, !tbaa !33
  %59 = zext i8 %58 to i32
  %60 = add nsw i32 %59, -128
  %61 = sitofp i32 %60 to float
  %62 = getelementptr inbounds float, ptr %29, i64 5
  store float %61, ptr %56, align 4, !tbaa !40
  %63 = getelementptr inbounds i8, ptr %32, i64 6
  %64 = load i8, ptr %57, align 1, !tbaa !33
  %65 = zext i8 %64 to i32
  %66 = add nsw i32 %65, -128
  %67 = sitofp i32 %66 to float
  %68 = getelementptr inbounds float, ptr %29, i64 6
  store float %67, ptr %62, align 4, !tbaa !40
  %69 = getelementptr inbounds i8, ptr %32, i64 7
  %70 = load i8, ptr %63, align 1, !tbaa !33
  %71 = zext i8 %70 to i32
  %72 = add nsw i32 %71, -128
  %73 = sitofp i32 %72 to float
  %74 = getelementptr inbounds float, ptr %29, i64 7
  store float %73, ptr %68, align 4, !tbaa !40
  %75 = load i8, ptr %69, align 1, !tbaa !33
  %76 = zext i8 %75 to i32
  %77 = add nsw i32 %76, -128
  %78 = sitofp i32 %77 to float
  %79 = getelementptr inbounds float, ptr %29, i64 8
  store float %78, ptr %74, align 4, !tbaa !40
  %80 = add nuw nsw i64 %28, 1
  %81 = icmp eq i64 %80, 8
  br i1 %81, label %82, label %27, !llvm.loop !48

82:                                               ; preds = %27
  call void %12(ptr noundef nonnull %8) #4
  %83 = getelementptr inbounds [64 x i16], ptr %3, i64 %24
  br label %84

84:                                               ; preds = %82, %84
  %85 = phi i64 [ 0, %82 ], [ %96, %84 ]
  %86 = getelementptr inbounds [64 x float], ptr %8, i64 0, i64 %85
  %87 = load float, ptr %86, align 4, !tbaa !40
  %88 = getelementptr inbounds float, ptr %17, i64 %85
  %89 = load float, ptr %88, align 4, !tbaa !40
  %90 = fmul float %87, %89
  %91 = fadd float %90, 1.638450e+04
  %92 = fptosi float %91 to i32
  %93 = trunc i32 %92 to i16
  %94 = add i16 %93, -16384
  %95 = getelementptr inbounds i16, ptr %83, i64 %85
  store i16 %94, ptr %95, align 2, !tbaa !34
  %96 = add nuw nsw i64 %85, 1
  %97 = icmp eq i64 %96, 64
  br i1 %97, label %98, label %84, !llvm.loop !49

98:                                               ; preds = %84
  %99 = add nuw nsw i64 %24, 1
  %100 = add i32 %25, 8
  %101 = icmp eq i64 %99, %22
  br i1 %101, label %102, label %23, !llvm.loop !50

102:                                              ; preds = %98, %7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %8) #4
  ret void
}

declare void @jpeg_fdct_float(ptr noundef) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 8}
!6 = !{!"jpeg_compress_struct", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !7, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !11, i64 56, !10, i64 64, !10, i64 68, !10, i64 72, !7, i64 80, !8, i64 88, !8, i64 120, !8, i64 152, !8, i64 184, !8, i64 200, !8, i64 216, !10, i64 232, !7, i64 240, !10, i64 248, !10, i64 252, !10, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !10, i64 272, !10, i64 276, !10, i64 280, !8, i64 284, !12, i64 286, !12, i64 288, !10, i64 292, !10, i64 296, !10, i64 300, !10, i64 304, !10, i64 308, !10, i64 312, !10, i64 316, !8, i64 320, !10, i64 352, !10, i64 356, !10, i64 360, !8, i64 364, !10, i64 404, !10, i64 408, !10, i64 412, !10, i64 416, !7, i64 424, !7, i64 432, !7, i64 440, !7, i64 448, !7, i64 456, !7, i64 464, !7, i64 472, !7, i64 480, !7, i64 488}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"double", !8, i64 0}
!12 = !{!"short", !8, i64 0}
!13 = !{!14, !7, i64 0}
!14 = !{!"jpeg_memory_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !15, i64 88}
!15 = !{!"long", !8, i64 0}
!16 = !{!6, !7, i64 480}
!17 = !{!18, !7, i64 0}
!18 = !{!"", !19, i64 0, !7, i64 16, !8, i64 24, !7, i64 56, !8, i64 64}
!19 = !{!"jpeg_forward_dct", !7, i64 0, !7, i64 8}
!20 = !{!6, !10, i64 268}
!21 = !{!18, !7, i64 8}
!22 = !{!18, !7, i64 16}
!23 = !{!18, !7, i64 56}
!24 = !{!6, !7, i64 0}
!25 = !{!26, !10, i64 40}
!26 = !{!"jpeg_error_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !8, i64 44, !10, i64 124, !15, i64 128, !7, i64 136, !10, i64 144, !7, i64 152, !10, i64 160, !10, i64 164}
!27 = !{!26, !7, i64 0}
!28 = !{!7, !7, i64 0}
!29 = !{!6, !10, i64 68}
!30 = !{!6, !7, i64 80}
!31 = !{!32, !10, i64 16}
!32 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !7, i64 80, !7, i64 88}
!33 = !{!8, !8, i64 0}
!34 = !{!12, !12, i64 0}
!35 = !{!10, !10, i64 0}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.unroll.disable"}
!38 = distinct !{!38, !37}
!39 = !{!11, !11, i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"float", !8, i64 0}
!42 = distinct !{!42, !37}
!43 = distinct !{!43, !37}
!44 = distinct !{!44, !37}
!45 = distinct !{!45, !37}
!46 = distinct !{!46, !37}
!47 = distinct !{!47, !37}
!48 = distinct !{!48, !37}
!49 = distinct !{!49, !37}
!50 = distinct !{!50, !37}
