; ModuleID = 'src/jquant2.c'
source_filename = "src/jquant2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_color_quantizer = type { ptr, ptr, ptr, ptr }
%struct.my_cquantizer = type { %struct.jpeg_color_quantizer, ptr, i32, ptr, i32, ptr, i32, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.box = type { i32, i32, i32, i32, i32, i32, i64, i64 }

; Function Attrs: nounwind uwtable
define dso_local void @jinit_2pass_quantizer(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef 1, i64 noundef 88) #8
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 83
  store ptr %5, ptr %6, align 8, !tbaa !16
  store ptr @start_pass_2_quant, ptr %5, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %5, i64 0, i32 3
  store ptr @new_color_map_2_quant, ptr %7, align 8, !tbaa !20
  %8 = getelementptr inbounds %struct.my_cquantizer, ptr %5, i64 0, i32 5
  store ptr null, ptr %8, align 8, !tbaa !21
  %9 = getelementptr inbounds %struct.my_cquantizer, ptr %5, i64 0, i32 7
  store ptr null, ptr %9, align 8, !tbaa !22
  %10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 28
  %11 = load i32, ptr %10, align 8, !tbaa !23
  %12 = icmp eq i32 %11, 3
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load ptr, ptr %0, align 8, !tbaa !24
  %15 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %14, i64 0, i32 5
  store i32 46, ptr %15, align 8, !tbaa !25
  %16 = load ptr, ptr %14, align 8, !tbaa !27
  tail call void %16(ptr noundef nonnull %0) #8
  br label %17

17:                                               ; preds = %13, %1
  %18 = load ptr, ptr %2, align 8, !tbaa !5
  %19 = load ptr, ptr %18, align 8, !tbaa !13
  %20 = tail call ptr %19(ptr noundef %0, i32 noundef 1, i64 noundef 256) #8
  %21 = getelementptr inbounds %struct.my_cquantizer, ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !28
  br label %22

22:                                               ; preds = %17, %22
  %23 = phi i64 [ 0, %17 ], [ %30, %22 ]
  %24 = load ptr, ptr %2, align 8, !tbaa !5
  %25 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !29
  %27 = tail call ptr %26(ptr noundef %0, i32 noundef 1, i64 noundef 4096) #8
  %28 = load ptr, ptr %21, align 8, !tbaa !28
  %29 = getelementptr inbounds ptr, ptr %28, i64 %23
  store ptr %27, ptr %29, align 8, !tbaa !30
  %30 = add nuw nsw i64 %23, 1
  %31 = icmp eq i64 %30, 32
  br i1 %31, label %32, label %22, !llvm.loop !31

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.my_cquantizer, ptr %5, i64 0, i32 4
  store i32 1, ptr %33, align 8, !tbaa !33
  %34 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 25
  %35 = load i32, ptr %34, align 4, !tbaa !34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %62, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 22
  %39 = load i32, ptr %38, align 8, !tbaa !35
  %40 = icmp slt i32 %39, 8
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load ptr, ptr %0, align 8, !tbaa !24
  %43 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %42, i64 0, i32 5
  store i32 55, ptr %43, align 8, !tbaa !25
  %44 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %42, i64 0, i32 6
  store i32 8, ptr %44, align 4, !tbaa !36
  %45 = load ptr, ptr %0, align 8, !tbaa !24
  %46 = load ptr, ptr %45, align 8, !tbaa !27
  tail call void %46(ptr noundef nonnull %0) #8
  br label %47

47:                                               ; preds = %41, %37
  %48 = icmp sgt i32 %39, 256
  br i1 %48, label %49, label %55

49:                                               ; preds = %47
  %50 = load ptr, ptr %0, align 8, !tbaa !24
  %51 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %50, i64 0, i32 5
  store i32 56, ptr %51, align 8, !tbaa !25
  %52 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %50, i64 0, i32 6
  store i32 256, ptr %52, align 4, !tbaa !36
  %53 = load ptr, ptr %0, align 8, !tbaa !24
  %54 = load ptr, ptr %53, align 8, !tbaa !27
  tail call void %54(ptr noundef nonnull %0) #8
  br label %55

55:                                               ; preds = %49, %47
  %56 = load ptr, ptr %2, align 8, !tbaa !5
  %57 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %56, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !37
  %59 = tail call ptr %58(ptr noundef %0, i32 noundef 1, i32 noundef %39, i32 noundef 3) #8
  %60 = getelementptr inbounds %struct.my_cquantizer, ptr %5, i64 0, i32 1
  store ptr %59, ptr %60, align 8, !tbaa !38
  %61 = getelementptr inbounds %struct.my_cquantizer, ptr %5, i64 0, i32 2
  store i32 %39, ptr %61, align 8, !tbaa !39
  br label %64

62:                                               ; preds = %32
  %63 = getelementptr inbounds %struct.my_cquantizer, ptr %5, i64 0, i32 1
  store ptr null, ptr %63, align 8, !tbaa !38
  br label %64

64:                                               ; preds = %62, %55
  %65 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 20
  %66 = load i32, ptr %65, align 8, !tbaa !40
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  store i32 2, ptr %65, align 8, !tbaa !40
  br label %69

69:                                               ; preds = %68, %64
  %70 = load i32, ptr %65, align 8, !tbaa !40
  %71 = icmp eq i32 %70, 2
  br i1 %71, label %72, label %116

72:                                               ; preds = %69
  %73 = load ptr, ptr %2, align 8, !tbaa !5
  %74 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %73, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !29
  %76 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 26
  %77 = load i32, ptr %76, align 8, !tbaa !41
  %78 = add i32 %77, 2
  %79 = zext i32 %78 to i64
  %80 = mul nuw nsw i64 %79, 6
  %81 = tail call ptr %75(ptr noundef %0, i32 noundef 1, i64 noundef %80) #8
  store ptr %81, ptr %8, align 8, !tbaa !21
  %82 = load ptr, ptr %6, align 8, !tbaa !16
  %83 = load ptr, ptr %2, align 8, !tbaa !5
  %84 = load ptr, ptr %83, align 8, !tbaa !13
  %85 = tail call ptr %84(ptr noundef %0, i32 noundef 1, i64 noundef 2044) #8
  %86 = getelementptr inbounds i32, ptr %85, i64 255
  %87 = getelementptr inbounds %struct.my_cquantizer, ptr %82, i64 0, i32 7
  store ptr %86, ptr %87, align 8, !tbaa !22
  br label %88

88:                                               ; preds = %88, %72
  %89 = phi i64 [ 0, %72 ], [ %95, %88 ]
  %90 = trunc i64 %89 to i32
  %91 = getelementptr inbounds i32, ptr %86, i64 %89
  store i32 %90, ptr %91, align 4, !tbaa !42
  %92 = sub nsw i32 0, %90
  %93 = sub nsw i64 0, %89
  %94 = getelementptr inbounds i32, ptr %86, i64 %93
  store i32 %92, ptr %94, align 4, !tbaa !42
  %95 = add nuw nsw i64 %89, 1
  %96 = icmp eq i64 %95, 16
  br i1 %96, label %97, label %88, !llvm.loop !43

97:                                               ; preds = %88, %97
  %98 = phi i64 [ %104, %97 ], [ 16, %88 ]
  %99 = phi i32 [ %107, %97 ], [ 16, %88 ]
  %100 = getelementptr inbounds i32, ptr %86, i64 %98
  store i32 %99, ptr %100, align 4, !tbaa !42
  %101 = sub nsw i32 0, %99
  %102 = sub nsw i64 0, %98
  %103 = getelementptr inbounds i32, ptr %86, i64 %102
  store i32 %101, ptr %103, align 4, !tbaa !42
  %104 = add nuw nsw i64 %98, 1
  %105 = trunc i64 %98 to i32
  %106 = and i32 %105, 1
  %107 = add nuw nsw i32 %106, %99
  %108 = icmp eq i64 %104, 48
  br i1 %108, label %109, label %97, !llvm.loop !44

109:                                              ; preds = %97, %109
  %110 = phi i64 [ %114, %109 ], [ 48, %97 ]
  %111 = getelementptr inbounds i32, ptr %86, i64 %110
  store i32 32, ptr %111, align 4, !tbaa !42
  %112 = sub nsw i64 0, %110
  %113 = getelementptr inbounds i32, ptr %86, i64 %112
  store i32 -32, ptr %113, align 4, !tbaa !42
  %114 = add nuw nsw i64 %110, 1
  %115 = icmp eq i64 %114, 256
  br i1 %115, label %116, label %109, !llvm.loop !45

116:                                              ; preds = %109, %69
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @start_pass_2_quant(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 83
  %4 = load ptr, ptr %3, align 8, !tbaa !16
  %5 = getelementptr inbounds %struct.my_cquantizer, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !28
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 20
  %8 = load i32, ptr %7, align 8, !tbaa !40
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 2, ptr %7, align 8, !tbaa !40
  br label %11

11:                                               ; preds = %10, %2
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %4, i64 0, i32 1
  store ptr @prescan_quantize, ptr %14, align 8, !tbaa !46
  %15 = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %4, i64 0, i32 2
  store ptr @finish_pass1, ptr %15, align 8, !tbaa !47
  %16 = getelementptr inbounds %struct.my_cquantizer, ptr %4, i64 0, i32 4
  store i32 1, ptr %16, align 8, !tbaa !33
  br label %101

17:                                               ; preds = %11
  %18 = load i32, ptr %7, align 8, !tbaa !40
  %19 = icmp eq i32 %18, 2
  %20 = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %4, i64 0, i32 1
  %21 = select i1 %19, ptr @pass2_fs_dither, ptr @pass2_no_dither
  store ptr %21, ptr %20, align 8, !tbaa !46
  %22 = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %4, i64 0, i32 2
  store ptr @finish_pass2, ptr %22, align 8, !tbaa !47
  %23 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 31
  %24 = load i32, ptr %23, align 4, !tbaa !48
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %26, label %32

26:                                               ; preds = %17
  %27 = load ptr, ptr %0, align 8, !tbaa !24
  %28 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %27, i64 0, i32 5
  store i32 55, ptr %28, align 8, !tbaa !25
  %29 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %27, i64 0, i32 6
  store i32 1, ptr %29, align 4, !tbaa !36
  %30 = load ptr, ptr %0, align 8, !tbaa !24
  %31 = load ptr, ptr %30, align 8, !tbaa !27
  tail call void %31(ptr noundef nonnull %0) #8
  br label %32

32:                                               ; preds = %26, %17
  %33 = icmp sgt i32 %24, 256
  br i1 %33, label %34, label %40

34:                                               ; preds = %32
  %35 = load ptr, ptr %0, align 8, !tbaa !24
  %36 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %35, i64 0, i32 5
  store i32 56, ptr %36, align 8, !tbaa !25
  %37 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %35, i64 0, i32 6
  store i32 256, ptr %37, align 4, !tbaa !36
  %38 = load ptr, ptr %0, align 8, !tbaa !24
  %39 = load ptr, ptr %38, align 8, !tbaa !27
  tail call void %39(ptr noundef nonnull %0) #8
  br label %40

40:                                               ; preds = %34, %32
  %41 = load i32, ptr %7, align 8, !tbaa !40
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %101

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 26
  %45 = load i32, ptr %44, align 8, !tbaa !41
  %46 = add i32 %45, 2
  %47 = zext i32 %46 to i64
  %48 = mul nuw nsw i64 %47, 6
  %49 = getelementptr inbounds %struct.my_cquantizer, ptr %4, i64 0, i32 5
  %50 = load ptr, ptr %49, align 8, !tbaa !21
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %43
  %53 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !5
  %55 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !29
  %57 = tail call ptr %56(ptr noundef %0, i32 noundef 1, i64 noundef %48) #8
  store ptr %57, ptr %49, align 8, !tbaa !21
  br label %58

58:                                               ; preds = %52, %43
  %59 = load ptr, ptr %49, align 8, !tbaa !21
  tail call void @jzero_far(ptr noundef %59, i64 noundef %48) #8
  %60 = getelementptr inbounds %struct.my_cquantizer, ptr %4, i64 0, i32 7
  %61 = load ptr, ptr %60, align 8, !tbaa !22
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %99

63:                                               ; preds = %58
  %64 = load ptr, ptr %3, align 8, !tbaa !16
  %65 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !5
  %67 = load ptr, ptr %66, align 8, !tbaa !13
  %68 = tail call ptr %67(ptr noundef %0, i32 noundef 1, i64 noundef 2044) #8
  %69 = getelementptr inbounds i32, ptr %68, i64 255
  %70 = getelementptr inbounds %struct.my_cquantizer, ptr %64, i64 0, i32 7
  store ptr %69, ptr %70, align 8, !tbaa !22
  br label %71

71:                                               ; preds = %71, %63
  %72 = phi i64 [ 0, %63 ], [ %78, %71 ]
  %73 = trunc i64 %72 to i32
  %74 = getelementptr inbounds i32, ptr %69, i64 %72
  store i32 %73, ptr %74, align 4, !tbaa !42
  %75 = sub nsw i32 0, %73
  %76 = sub nsw i64 0, %72
  %77 = getelementptr inbounds i32, ptr %69, i64 %76
  store i32 %75, ptr %77, align 4, !tbaa !42
  %78 = add nuw nsw i64 %72, 1
  %79 = icmp eq i64 %78, 16
  br i1 %79, label %80, label %71, !llvm.loop !43

80:                                               ; preds = %71, %80
  %81 = phi i64 [ %87, %80 ], [ 16, %71 ]
  %82 = phi i32 [ %90, %80 ], [ 16, %71 ]
  %83 = getelementptr inbounds i32, ptr %69, i64 %81
  store i32 %82, ptr %83, align 4, !tbaa !42
  %84 = sub nsw i32 0, %82
  %85 = sub nsw i64 0, %81
  %86 = getelementptr inbounds i32, ptr %69, i64 %85
  store i32 %84, ptr %86, align 4, !tbaa !42
  %87 = add nuw nsw i64 %81, 1
  %88 = trunc i64 %81 to i32
  %89 = and i32 %88, 1
  %90 = add nuw nsw i32 %89, %82
  %91 = icmp eq i64 %87, 48
  br i1 %91, label %92, label %80, !llvm.loop !44

92:                                               ; preds = %80, %92
  %93 = phi i64 [ %97, %92 ], [ 48, %80 ]
  %94 = getelementptr inbounds i32, ptr %69, i64 %93
  store i32 32, ptr %94, align 4, !tbaa !42
  %95 = sub nsw i64 0, %93
  %96 = getelementptr inbounds i32, ptr %69, i64 %95
  store i32 -32, ptr %96, align 4, !tbaa !42
  %97 = add nuw nsw i64 %93, 1
  %98 = icmp eq i64 %97, 256
  br i1 %98, label %99, label %92, !llvm.loop !45

99:                                               ; preds = %92, %58
  %100 = getelementptr inbounds %struct.my_cquantizer, ptr %4, i64 0, i32 6
  store i32 0, ptr %100, align 8, !tbaa !49
  br label %101

101:                                              ; preds = %40, %99, %13
  %102 = getelementptr inbounds %struct.my_cquantizer, ptr %4, i64 0, i32 4
  %103 = load i32, ptr %102, align 8, !tbaa !33
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %112, label %105

105:                                              ; preds = %101, %105
  %106 = phi i64 [ %109, %105 ], [ 0, %101 ]
  %107 = getelementptr inbounds ptr, ptr %6, i64 %106
  %108 = load ptr, ptr %107, align 8, !tbaa !30
  tail call void @jzero_far(ptr noundef %108, i64 noundef 4096) #8
  %109 = add nuw nsw i64 %106, 1
  %110 = icmp eq i64 %109, 32
  br i1 %110, label %111, label %105, !llvm.loop !50

111:                                              ; preds = %105
  store i32 0, ptr %102, align 8, !tbaa !33
  br label %112

112:                                              ; preds = %111, %101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @new_color_map_2_quant(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 83
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  %4 = getelementptr inbounds %struct.my_cquantizer, ptr %3, i64 0, i32 4
  store i32 1, ptr %4, align 8, !tbaa !33
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @prescan_quantize(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, i32 noundef %3) #3 {
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 83
  %6 = load ptr, ptr %5, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.my_cquantizer, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !28
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 26
  %10 = load i32, ptr %9, align 8, !tbaa !41
  %11 = icmp sgt i32 %3, 0
  br i1 %11, label %12, label %47

12:                                               ; preds = %4
  %13 = icmp eq i32 %10, 0
  %14 = zext nneg i32 %3 to i64
  br label %15

15:                                               ; preds = %12, %44
  %16 = phi i64 [ 0, %12 ], [ %45, %44 ]
  br i1 %13, label %44, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds ptr, ptr %1, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !30
  br label %20

20:                                               ; preds = %17, %20
  %21 = phi ptr [ %41, %20 ], [ %19, %17 ]
  %22 = phi i32 [ %42, %20 ], [ %10, %17 ]
  %23 = load i8, ptr %21, align 1, !tbaa !36
  %24 = lshr i8 %23, 3
  %25 = zext nneg i8 %24 to i64
  %26 = getelementptr inbounds ptr, ptr %8, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !30
  %28 = getelementptr inbounds i8, ptr %21, i64 1
  %29 = load i8, ptr %28, align 1, !tbaa !36
  %30 = lshr i8 %29, 2
  %31 = zext nneg i8 %30 to i64
  %32 = getelementptr inbounds i8, ptr %21, i64 2
  %33 = load i8, ptr %32, align 1, !tbaa !36
  %34 = lshr i8 %33, 3
  %35 = zext nneg i8 %34 to i64
  %36 = getelementptr inbounds [32 x i16], ptr %27, i64 %31, i64 %35
  %37 = load i16, ptr %36, align 2, !tbaa !51
  %38 = add i16 %37, 1
  %39 = icmp eq i16 %38, 0
  %40 = select i1 %39, i16 %37, i16 %38
  store i16 %40, ptr %36, align 2, !tbaa !51
  %41 = getelementptr inbounds i8, ptr %21, i64 3
  %42 = add i32 %22, -1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %20, !llvm.loop !52

44:                                               ; preds = %20, %15
  %45 = add nuw nsw i64 %16, 1
  %46 = icmp eq i64 %45, %14
  br i1 %46, label %47, label %15, !llvm.loop !53

47:                                               ; preds = %44, %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @finish_pass1(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 83
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  %4 = getelementptr inbounds %struct.my_cquantizer, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 32
  store ptr %5, ptr %6, align 8, !tbaa !54
  %7 = getelementptr inbounds %struct.my_cquantizer, ptr %3, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !39
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = load ptr, ptr %10, align 8, !tbaa !13
  %12 = sext i32 %8 to i64
  %13 = mul nsw i64 %12, 40
  %14 = tail call ptr %11(ptr noundef %0, i32 noundef 1, i64 noundef %13) #8
  store i32 0, ptr %14, align 8, !tbaa !55
  %15 = getelementptr inbounds %struct.box, ptr %14, i64 0, i32 1
  store i32 31, ptr %15, align 4, !tbaa !57
  %16 = getelementptr inbounds %struct.box, ptr %14, i64 0, i32 2
  store i32 0, ptr %16, align 8, !tbaa !58
  %17 = getelementptr inbounds %struct.box, ptr %14, i64 0, i32 3
  store i32 63, ptr %17, align 4, !tbaa !59
  %18 = getelementptr inbounds %struct.box, ptr %14, i64 0, i32 4
  store i32 0, ptr %18, align 8, !tbaa !60
  %19 = getelementptr inbounds %struct.box, ptr %14, i64 0, i32 5
  store i32 31, ptr %19, align 4, !tbaa !61
  tail call fastcc void @update_box(ptr noundef %0, ptr noundef nonnull %14)
  %20 = icmp sgt i32 %8, 1
  br i1 %20, label %21, label %116

21:                                               ; preds = %1
  %22 = zext nneg i32 %8 to i64
  br label %23

23:                                               ; preds = %108, %21
  %24 = phi i64 [ 1, %21 ], [ %112, %108 ]
  %25 = shl nuw nsw i64 %24, 1
  %26 = icmp ugt i64 %25, %22
  br i1 %26, label %47, label %27

27:                                               ; preds = %23, %41
  %28 = phi i64 [ %44, %41 ], [ 0, %23 ]
  %29 = phi ptr [ %43, %41 ], [ null, %23 ]
  %30 = phi i64 [ %42, %41 ], [ 0, %23 ]
  %31 = phi ptr [ %45, %41 ], [ %14, %23 ]
  %32 = getelementptr inbounds %struct.box, ptr %31, i64 0, i32 7
  %33 = load i64, ptr %32, align 8, !tbaa !62
  %34 = icmp sgt i64 %33, %30
  br i1 %34, label %35, label %41

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.box, ptr %31, i64 0, i32 6
  %37 = load i64, ptr %36, align 8, !tbaa !63
  %38 = icmp sgt i64 %37, 0
  %39 = select i1 %38, i64 %33, i64 %30
  %40 = select i1 %38, ptr %31, ptr %29
  br label %41

41:                                               ; preds = %35, %27
  %42 = phi i64 [ %30, %27 ], [ %39, %35 ]
  %43 = phi ptr [ %29, %27 ], [ %40, %35 ]
  %44 = add nuw nsw i64 %28, 1
  %45 = getelementptr inbounds %struct.box, ptr %31, i64 1
  %46 = icmp eq i64 %24, %44
  br i1 %46, label %60, label %27, !llvm.loop !64

47:                                               ; preds = %23, %47
  %48 = phi i64 [ %57, %47 ], [ 0, %23 ]
  %49 = phi ptr [ %56, %47 ], [ null, %23 ]
  %50 = phi i64 [ %55, %47 ], [ 0, %23 ]
  %51 = phi ptr [ %58, %47 ], [ %14, %23 ]
  %52 = getelementptr inbounds %struct.box, ptr %51, i64 0, i32 6
  %53 = load i64, ptr %52, align 8, !tbaa !63
  %54 = icmp sgt i64 %53, %50
  %55 = tail call i64 @llvm.smax.i64(i64 %53, i64 %50)
  %56 = select i1 %54, ptr %51, ptr %49
  %57 = add nuw nsw i64 %48, 1
  %58 = getelementptr inbounds %struct.box, ptr %51, i64 1
  %59 = icmp eq i64 %24, %57
  br i1 %59, label %60, label %47, !llvm.loop !65

60:                                               ; preds = %41, %47
  %61 = phi ptr [ %56, %47 ], [ %43, %41 ]
  %62 = icmp eq ptr %61, null
  br i1 %62, label %114, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.box, ptr %14, i64 %24
  %65 = getelementptr inbounds %struct.box, ptr %61, i64 0, i32 1
  %66 = load i32, ptr %65, align 4, !tbaa !57
  %67 = getelementptr inbounds %struct.box, ptr %14, i64 %24, i32 1
  store i32 %66, ptr %67, align 4, !tbaa !57
  %68 = getelementptr inbounds %struct.box, ptr %61, i64 0, i32 3
  %69 = load i32, ptr %68, align 4, !tbaa !59
  %70 = getelementptr inbounds %struct.box, ptr %14, i64 %24, i32 3
  store i32 %69, ptr %70, align 4, !tbaa !59
  %71 = getelementptr inbounds %struct.box, ptr %61, i64 0, i32 5
  %72 = load i32, ptr %71, align 4, !tbaa !61
  %73 = getelementptr inbounds %struct.box, ptr %14, i64 %24, i32 5
  store i32 %72, ptr %73, align 4, !tbaa !61
  %74 = load i32, ptr %61, align 8, !tbaa !55
  store i32 %74, ptr %64, align 8, !tbaa !55
  %75 = getelementptr inbounds %struct.box, ptr %61, i64 0, i32 2
  %76 = load i32, ptr %75, align 8, !tbaa !58
  %77 = getelementptr inbounds %struct.box, ptr %14, i64 %24, i32 2
  store i32 %76, ptr %77, align 8, !tbaa !58
  %78 = getelementptr inbounds %struct.box, ptr %61, i64 0, i32 4
  %79 = load i32, ptr %78, align 8, !tbaa !60
  %80 = getelementptr inbounds %struct.box, ptr %14, i64 %24, i32 4
  store i32 %79, ptr %80, align 8, !tbaa !60
  %81 = load i32, ptr %65, align 4, !tbaa !57
  %82 = load i32, ptr %61, align 8, !tbaa !55
  %83 = sub nsw i32 %81, %82
  %84 = shl i32 %83, 4
  %85 = load i32, ptr %68, align 4, !tbaa !59
  %86 = load i32, ptr %75, align 8, !tbaa !58
  %87 = sub nsw i32 %85, %86
  %88 = mul i32 %87, 12
  %89 = load i32, ptr %71, align 4, !tbaa !61
  %90 = load i32, ptr %78, align 8, !tbaa !60
  %91 = sub nsw i32 %89, %90
  %92 = shl i32 %91, 3
  %93 = icmp sle i32 %84, %88
  %94 = zext i1 %93 to i32
  %95 = tail call i32 @llvm.smax.i32(i32 %84, i32 %88)
  %96 = icmp sgt i32 %92, %95
  %97 = select i1 %96, i32 2, i32 %94
  switch i32 %97, label %107 [
    i32 0, label %98
    i32 1, label %101
    i32 2, label %104
  ]

98:                                               ; preds = %63
  %99 = add nsw i32 %82, %81
  %100 = sdiv i32 %99, 2
  store i32 %100, ptr %65, align 4, !tbaa !57
  br label %108

101:                                              ; preds = %63
  %102 = add nsw i32 %86, %85
  %103 = sdiv i32 %102, 2
  store i32 %103, ptr %68, align 4, !tbaa !59
  br label %108

104:                                              ; preds = %63
  %105 = add nsw i32 %90, %89
  %106 = sdiv i32 %105, 2
  store i32 %106, ptr %71, align 4, !tbaa !61
  br label %108

107:                                              ; preds = %63
  unreachable

108:                                              ; preds = %104, %101, %98
  %109 = phi i32 [ %106, %104 ], [ %103, %101 ], [ %100, %98 ]
  %110 = phi ptr [ %80, %104 ], [ %77, %101 ], [ %64, %98 ]
  %111 = add nsw i32 %109, 1
  store i32 %111, ptr %110, align 8, !tbaa !42
  tail call fastcc void @update_box(ptr noundef %0, ptr noundef nonnull %61)
  tail call fastcc void @update_box(ptr noundef %0, ptr noundef nonnull %64)
  %112 = add nuw nsw i64 %24, 1
  %113 = icmp eq i64 %112, %22
  br i1 %113, label %116, label %23, !llvm.loop !66

114:                                              ; preds = %60
  %115 = trunc i64 %24 to i32
  br label %116

116:                                              ; preds = %108, %114, %1
  %117 = phi i32 [ 1, %1 ], [ %115, %114 ], [ %8, %108 ]
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %248

119:                                              ; preds = %116
  %120 = zext nneg i32 %117 to i64
  br label %121

121:                                              ; preds = %220, %119
  %122 = phi i64 [ 0, %119 ], [ %246, %220 ]
  %123 = getelementptr inbounds %struct.box, ptr %14, i64 %122
  %124 = load ptr, ptr %2, align 8, !tbaa !16
  %125 = getelementptr inbounds %struct.my_cquantizer, ptr %124, i64 0, i32 3
  %126 = load ptr, ptr %125, align 8, !tbaa !28
  %127 = load i32, ptr %123, align 8, !tbaa !55
  %128 = getelementptr inbounds %struct.box, ptr %14, i64 %122, i32 1
  %129 = load i32, ptr %128, align 4, !tbaa !57
  %130 = icmp sgt i32 %127, %129
  br i1 %130, label %220, label %131

131:                                              ; preds = %121
  %132 = getelementptr inbounds %struct.box, ptr %14, i64 %122, i32 5
  %133 = load i32, ptr %132, align 4, !tbaa !61
  %134 = getelementptr inbounds %struct.box, ptr %14, i64 %122, i32 4
  %135 = load i32, ptr %134, align 8, !tbaa !60
  %136 = getelementptr inbounds %struct.box, ptr %14, i64 %122, i32 3
  %137 = load i32, ptr %136, align 4, !tbaa !59
  %138 = getelementptr inbounds %struct.box, ptr %14, i64 %122, i32 2
  %139 = load i32, ptr %138, align 8, !tbaa !58
  %140 = icmp sgt i32 %139, %137
  %141 = sext i32 %135 to i64
  %142 = icmp sgt i32 %135, %133
  %143 = add i32 %133, 1
  %144 = sext i32 %139 to i64
  %145 = add i32 %137, 1
  %146 = sext i32 %127 to i64
  %147 = add i32 %129, 1
  br label %148

148:                                              ; preds = %212, %131
  %149 = phi i64 [ %146, %131 ], [ %217, %212 ]
  %150 = phi i64 [ 0, %131 ], [ %216, %212 ]
  %151 = phi i64 [ 0, %131 ], [ %215, %212 ]
  %152 = phi i64 [ 0, %131 ], [ %214, %212 ]
  %153 = phi i64 [ 0, %131 ], [ %213, %212 ]
  br i1 %140, label %212, label %154

154:                                              ; preds = %148
  %155 = getelementptr inbounds ptr, ptr %126, i64 %149
  %156 = load ptr, ptr %155, align 8, !tbaa !30
  %157 = trunc i64 %149 to i32
  %158 = shl i32 %157, 3
  %159 = or disjoint i32 %158, 4
  %160 = sext i32 %159 to i64
  br label %161

161:                                              ; preds = %204, %154
  %162 = phi i64 [ %144, %154 ], [ %209, %204 ]
  %163 = phi i64 [ %150, %154 ], [ %208, %204 ]
  %164 = phi i64 [ %151, %154 ], [ %207, %204 ]
  %165 = phi i64 [ %152, %154 ], [ %206, %204 ]
  %166 = phi i64 [ %153, %154 ], [ %205, %204 ]
  br i1 %142, label %204, label %167

167:                                              ; preds = %161
  %168 = getelementptr inbounds [32 x i16], ptr %156, i64 %162, i64 %141
  %169 = trunc i64 %162 to i32
  %170 = shl i32 %169, 2
  %171 = or disjoint i32 %170, 2
  %172 = sext i32 %171 to i64
  br label %173

173:                                              ; preds = %196, %167
  %174 = phi i64 [ %141, %167 ], [ %201, %196 ]
  %175 = phi i64 [ %163, %167 ], [ %200, %196 ]
  %176 = phi i64 [ %164, %167 ], [ %199, %196 ]
  %177 = phi i64 [ %165, %167 ], [ %198, %196 ]
  %178 = phi i64 [ %166, %167 ], [ %197, %196 ]
  %179 = phi ptr [ %168, %167 ], [ %180, %196 ]
  %180 = getelementptr inbounds i16, ptr %179, i64 1
  %181 = load i16, ptr %179, align 2, !tbaa !51
  %182 = icmp eq i16 %181, 0
  br i1 %182, label %196, label %183

183:                                              ; preds = %173
  %184 = zext i16 %181 to i64
  %185 = add nsw i64 %178, %184
  %186 = mul nsw i64 %184, %160
  %187 = add nsw i64 %186, %177
  %188 = mul nsw i64 %184, %172
  %189 = add nsw i64 %188, %176
  %190 = trunc i64 %174 to i32
  %191 = shl i32 %190, 3
  %192 = or disjoint i32 %191, 4
  %193 = sext i32 %192 to i64
  %194 = mul nsw i64 %184, %193
  %195 = add nsw i64 %194, %175
  br label %196

196:                                              ; preds = %183, %173
  %197 = phi i64 [ %185, %183 ], [ %178, %173 ]
  %198 = phi i64 [ %187, %183 ], [ %177, %173 ]
  %199 = phi i64 [ %189, %183 ], [ %176, %173 ]
  %200 = phi i64 [ %195, %183 ], [ %175, %173 ]
  %201 = add nsw i64 %174, 1
  %202 = trunc i64 %201 to i32
  %203 = icmp eq i32 %143, %202
  br i1 %203, label %204, label %173, !llvm.loop !67

204:                                              ; preds = %196, %161
  %205 = phi i64 [ %166, %161 ], [ %197, %196 ]
  %206 = phi i64 [ %165, %161 ], [ %198, %196 ]
  %207 = phi i64 [ %164, %161 ], [ %199, %196 ]
  %208 = phi i64 [ %163, %161 ], [ %200, %196 ]
  %209 = add nsw i64 %162, 1
  %210 = trunc i64 %209 to i32
  %211 = icmp eq i32 %145, %210
  br i1 %211, label %212, label %161, !llvm.loop !68

212:                                              ; preds = %204, %148
  %213 = phi i64 [ %153, %148 ], [ %205, %204 ]
  %214 = phi i64 [ %152, %148 ], [ %206, %204 ]
  %215 = phi i64 [ %151, %148 ], [ %207, %204 ]
  %216 = phi i64 [ %150, %148 ], [ %208, %204 ]
  %217 = add nsw i64 %149, 1
  %218 = trunc i64 %217 to i32
  %219 = icmp eq i32 %147, %218
  br i1 %219, label %220, label %148, !llvm.loop !69

220:                                              ; preds = %212, %121
  %221 = phi i64 [ 0, %121 ], [ %213, %212 ]
  %222 = phi i64 [ 0, %121 ], [ %214, %212 ]
  %223 = phi i64 [ 0, %121 ], [ %215, %212 ]
  %224 = phi i64 [ 0, %121 ], [ %216, %212 ]
  %225 = ashr i64 %221, 1
  %226 = add nsw i64 %222, %225
  %227 = sdiv i64 %226, %221
  %228 = trunc i64 %227 to i8
  %229 = load ptr, ptr %6, align 8, !tbaa !54
  %230 = load ptr, ptr %229, align 8, !tbaa !30
  %231 = getelementptr inbounds i8, ptr %230, i64 %122
  store i8 %228, ptr %231, align 1, !tbaa !36
  %232 = add nsw i64 %223, %225
  %233 = sdiv i64 %232, %221
  %234 = trunc i64 %233 to i8
  %235 = load ptr, ptr %6, align 8, !tbaa !54
  %236 = getelementptr inbounds ptr, ptr %235, i64 1
  %237 = load ptr, ptr %236, align 8, !tbaa !30
  %238 = getelementptr inbounds i8, ptr %237, i64 %122
  store i8 %234, ptr %238, align 1, !tbaa !36
  %239 = add nsw i64 %224, %225
  %240 = sdiv i64 %239, %221
  %241 = trunc i64 %240 to i8
  %242 = load ptr, ptr %6, align 8, !tbaa !54
  %243 = getelementptr inbounds ptr, ptr %242, i64 2
  %244 = load ptr, ptr %243, align 8, !tbaa !30
  %245 = getelementptr inbounds i8, ptr %244, i64 %122
  store i8 %241, ptr %245, align 1, !tbaa !36
  %246 = add nuw nsw i64 %122, 1
  %247 = icmp eq i64 %246, %120
  br i1 %247, label %248, label %121, !llvm.loop !70

248:                                              ; preds = %220, %116
  %249 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 31
  store i32 %117, ptr %249, align 4, !tbaa !48
  %250 = load ptr, ptr %0, align 8, !tbaa !24
  %251 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %250, i64 0, i32 5
  store i32 95, ptr %251, align 8, !tbaa !25
  %252 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %250, i64 0, i32 6
  store i32 %117, ptr %252, align 4, !tbaa !36
  %253 = load ptr, ptr %0, align 8, !tbaa !24
  %254 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %253, i64 0, i32 1
  %255 = load ptr, ptr %254, align 8, !tbaa !71
  tail call void %255(ptr noundef nonnull %0, i32 noundef 1) #8
  %256 = getelementptr inbounds %struct.my_cquantizer, ptr %3, i64 0, i32 4
  store i32 1, ptr %256, align 8, !tbaa !33
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @pass2_fs_dither(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) #3 {
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 83
  %6 = load ptr, ptr %5, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.my_cquantizer, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !28
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 26
  %10 = load i32, ptr %9, align 8, !tbaa !41
  %11 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 61
  %12 = load ptr, ptr %11, align 8, !tbaa !72
  %13 = getelementptr inbounds %struct.my_cquantizer, ptr %6, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !22
  %15 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 32
  %16 = load ptr, ptr %15, align 8, !tbaa !54
  %17 = load ptr, ptr %16, align 8, !tbaa !30
  %18 = getelementptr inbounds ptr, ptr %16, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !30
  %20 = getelementptr inbounds ptr, ptr %16, i64 2
  %21 = load ptr, ptr %20, align 8, !tbaa !30
  %22 = icmp sgt i32 %3, 0
  br i1 %22, label %23, label %194

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.my_cquantizer, ptr %6, i64 0, i32 6
  %25 = add i32 %10, -1
  %26 = mul i32 %25, 3
  %27 = zext i32 %26 to i64
  %28 = zext i32 %25 to i64
  %29 = getelementptr inbounds %struct.my_cquantizer, ptr %6, i64 0, i32 5
  %30 = mul i32 %10, 3
  %31 = add i32 %30, 3
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.my_cquantizer, ptr %6, i64 0, i32 5
  %34 = icmp eq i32 %10, 0
  %35 = zext nneg i32 %3 to i64
  br label %36

36:                                               ; preds = %23, %182
  %37 = phi i64 [ 0, %23 ], [ %192, %182 ]
  %38 = getelementptr inbounds ptr, ptr %1, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !30
  %40 = getelementptr inbounds ptr, ptr %2, i64 %37
  %41 = load ptr, ptr %40, align 8, !tbaa !30
  %42 = load i32, ptr %24, align 8, !tbaa !49
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %36
  %45 = getelementptr inbounds i8, ptr %39, i64 %27
  %46 = getelementptr inbounds i8, ptr %41, i64 %28
  %47 = load ptr, ptr %29, align 8, !tbaa !21
  %48 = getelementptr inbounds i16, ptr %47, i64 %32
  br label %51

49:                                               ; preds = %36
  %50 = load ptr, ptr %33, align 8, !tbaa !21
  br label %51

51:                                               ; preds = %49, %44
  %52 = phi i32 [ 1, %49 ], [ 0, %44 ]
  %53 = phi ptr [ %39, %49 ], [ %45, %44 ]
  %54 = phi ptr [ %41, %49 ], [ %46, %44 ]
  %55 = phi ptr [ %50, %49 ], [ %48, %44 ]
  %56 = phi i64 [ 1, %49 ], [ -1, %44 ]
  %57 = phi i32 [ 3, %49 ], [ -3, %44 ]
  store i32 %52, ptr %24, align 8, !tbaa !49
  br i1 %34, label %182, label %58

58:                                               ; preds = %51
  %59 = sext i32 %57 to i64
  %60 = add nsw i32 %57, 1
  %61 = sext i32 %60 to i64
  %62 = add nsw i32 %57, 2
  %63 = sext i32 %62 to i64
  br label %64

64:                                               ; preds = %58, %140
  %65 = phi i32 [ 0, %58 ], [ %163, %140 ]
  %66 = phi i32 [ 0, %58 ], [ %170, %140 ]
  %67 = phi i32 [ 0, %58 ], [ %177, %140 ]
  %68 = phi i32 [ 0, %58 ], [ %149, %140 ]
  %69 = phi i32 [ 0, %58 ], [ %153, %140 ]
  %70 = phi i32 [ 0, %58 ], [ %157, %140 ]
  %71 = phi i32 [ 0, %58 ], [ %162, %140 ]
  %72 = phi i32 [ 0, %58 ], [ %169, %140 ]
  %73 = phi i32 [ 0, %58 ], [ %176, %140 ]
  %74 = phi i32 [ %10, %58 ], [ %180, %140 ]
  %75 = phi ptr [ %55, %58 ], [ %78, %140 ]
  %76 = phi ptr [ %54, %58 ], [ %179, %140 ]
  %77 = phi ptr [ %53, %58 ], [ %178, %140 ]
  %78 = getelementptr inbounds i16, ptr %75, i64 %59
  %79 = load i16, ptr %78, align 2, !tbaa !51
  %80 = sext i16 %79 to i32
  %81 = add nsw i32 %65, 8
  %82 = add nsw i32 %81, %80
  %83 = ashr i32 %82, 4
  %84 = getelementptr inbounds i16, ptr %75, i64 %61
  %85 = load i16, ptr %84, align 2, !tbaa !51
  %86 = sext i16 %85 to i32
  %87 = add nsw i32 %66, 8
  %88 = add nsw i32 %87, %86
  %89 = ashr i32 %88, 4
  %90 = getelementptr inbounds i16, ptr %75, i64 %63
  %91 = load i16, ptr %90, align 2, !tbaa !51
  %92 = sext i16 %91 to i32
  %93 = add nsw i32 %67, 8
  %94 = add nsw i32 %93, %92
  %95 = ashr i32 %94, 4
  %96 = sext i32 %83 to i64
  %97 = getelementptr inbounds i32, ptr %14, i64 %96
  %98 = load i32, ptr %97, align 4, !tbaa !42
  %99 = sext i32 %89 to i64
  %100 = getelementptr inbounds i32, ptr %14, i64 %99
  %101 = load i32, ptr %100, align 4, !tbaa !42
  %102 = sext i32 %95 to i64
  %103 = getelementptr inbounds i32, ptr %14, i64 %102
  %104 = load i32, ptr %103, align 4, !tbaa !42
  %105 = load i8, ptr %77, align 1, !tbaa !36
  %106 = zext i8 %105 to i32
  %107 = add nsw i32 %98, %106
  %108 = getelementptr inbounds i8, ptr %77, i64 1
  %109 = load i8, ptr %108, align 1, !tbaa !36
  %110 = zext i8 %109 to i32
  %111 = add nsw i32 %101, %110
  %112 = getelementptr inbounds i8, ptr %77, i64 2
  %113 = load i8, ptr %112, align 1, !tbaa !36
  %114 = zext i8 %113 to i32
  %115 = add nsw i32 %104, %114
  %116 = sext i32 %107 to i64
  %117 = getelementptr inbounds i8, ptr %12, i64 %116
  %118 = load i8, ptr %117, align 1, !tbaa !36
  %119 = zext i8 %118 to i32
  %120 = sext i32 %111 to i64
  %121 = getelementptr inbounds i8, ptr %12, i64 %120
  %122 = load i8, ptr %121, align 1, !tbaa !36
  %123 = zext i8 %122 to i32
  %124 = sext i32 %115 to i64
  %125 = getelementptr inbounds i8, ptr %12, i64 %124
  %126 = load i8, ptr %125, align 1, !tbaa !36
  %127 = zext i8 %126 to i32
  %128 = lshr i32 %119, 3
  %129 = zext nneg i32 %128 to i64
  %130 = getelementptr inbounds ptr, ptr %8, i64 %129
  %131 = load ptr, ptr %130, align 8, !tbaa !30
  %132 = lshr i32 %123, 2
  %133 = zext nneg i32 %132 to i64
  %134 = lshr i32 %127, 3
  %135 = zext nneg i32 %134 to i64
  %136 = getelementptr inbounds [32 x i16], ptr %131, i64 %133, i64 %135
  %137 = load i16, ptr %136, align 2, !tbaa !51
  %138 = icmp eq i16 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %64
  tail call fastcc void @fill_inverse_cmap(ptr noundef %0, i32 noundef %128, i32 noundef %132, i32 noundef %134)
  br label %140

140:                                              ; preds = %139, %64
  %141 = load i16, ptr %136, align 2, !tbaa !51
  %142 = zext i16 %141 to i32
  %143 = add nsw i32 %142, -1
  %144 = trunc i32 %143 to i8
  store i8 %144, ptr %76, align 1, !tbaa !36
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds i8, ptr %17, i64 %145
  %147 = load i8, ptr %146, align 1, !tbaa !36
  %148 = zext i8 %147 to i32
  %149 = sub nsw i32 %119, %148
  %150 = getelementptr inbounds i8, ptr %19, i64 %145
  %151 = load i8, ptr %150, align 1, !tbaa !36
  %152 = zext i8 %151 to i32
  %153 = sub nsw i32 %123, %152
  %154 = getelementptr inbounds i8, ptr %21, i64 %145
  %155 = load i8, ptr %154, align 1, !tbaa !36
  %156 = zext i8 %155 to i32
  %157 = sub nsw i32 %127, %156
  %158 = mul nsw i32 %149, 3
  %159 = add nsw i32 %158, %71
  %160 = trunc i32 %159 to i16
  store i16 %160, ptr %75, align 2, !tbaa !51
  %161 = mul nsw i32 %149, 5
  %162 = add nsw i32 %161, %68
  %163 = mul nsw i32 %149, 7
  %164 = mul nsw i32 %153, 3
  %165 = add nsw i32 %164, %72
  %166 = trunc i32 %165 to i16
  %167 = getelementptr inbounds i16, ptr %75, i64 1
  store i16 %166, ptr %167, align 2, !tbaa !51
  %168 = mul nsw i32 %153, 5
  %169 = add nsw i32 %168, %69
  %170 = mul nsw i32 %153, 7
  %171 = mul nsw i32 %157, 3
  %172 = add nsw i32 %171, %73
  %173 = trunc i32 %172 to i16
  %174 = getelementptr inbounds i16, ptr %75, i64 2
  store i16 %173, ptr %174, align 2, !tbaa !51
  %175 = mul nsw i32 %157, 5
  %176 = add nsw i32 %175, %70
  %177 = mul nsw i32 %157, 7
  %178 = getelementptr inbounds i8, ptr %77, i64 %59
  %179 = getelementptr inbounds i8, ptr %76, i64 %56
  %180 = add i32 %74, -1
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %64, !llvm.loop !73

182:                                              ; preds = %140, %51
  %183 = phi ptr [ %55, %51 ], [ %78, %140 ]
  %184 = phi i32 [ 0, %51 ], [ %176, %140 ]
  %185 = phi i32 [ 0, %51 ], [ %169, %140 ]
  %186 = phi i32 [ 0, %51 ], [ %162, %140 ]
  %187 = trunc i32 %186 to i16
  store i16 %187, ptr %183, align 2, !tbaa !51
  %188 = trunc i32 %185 to i16
  %189 = getelementptr inbounds i16, ptr %183, i64 1
  store i16 %188, ptr %189, align 2, !tbaa !51
  %190 = trunc i32 %184 to i16
  %191 = getelementptr inbounds i16, ptr %183, i64 2
  store i16 %190, ptr %191, align 2, !tbaa !51
  %192 = add nuw nsw i64 %37, 1
  %193 = icmp eq i64 %192, %35
  br i1 %193, label %194, label %36, !llvm.loop !74

194:                                              ; preds = %182, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @pass2_no_dither(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) #3 {
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 83
  %6 = load ptr, ptr %5, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.my_cquantizer, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !28
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 26
  %10 = load i32, ptr %9, align 8, !tbaa !41
  %11 = icmp sgt i32 %3, 0
  br i1 %11, label %12, label %57

12:                                               ; preds = %4
  %13 = icmp eq i32 %10, 0
  %14 = zext nneg i32 %3 to i64
  br label %15

15:                                               ; preds = %12, %54
  %16 = phi i64 [ 0, %12 ], [ %55, %54 ]
  br i1 %13, label %54, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds ptr, ptr %2, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !30
  %20 = getelementptr inbounds ptr, ptr %1, i64 %16
  %21 = load ptr, ptr %20, align 8, !tbaa !30
  br label %22

22:                                               ; preds = %17, %47
  %23 = phi ptr [ %32, %47 ], [ %21, %17 ]
  %24 = phi i32 [ %52, %47 ], [ %10, %17 ]
  %25 = phi ptr [ %51, %47 ], [ %19, %17 ]
  %26 = getelementptr inbounds i8, ptr %23, i64 1
  %27 = load i8, ptr %23, align 1, !tbaa !36
  %28 = lshr i8 %27, 3
  %29 = getelementptr inbounds i8, ptr %23, i64 2
  %30 = load i8, ptr %26, align 1, !tbaa !36
  %31 = lshr i8 %30, 2
  %32 = getelementptr inbounds i8, ptr %23, i64 3
  %33 = load i8, ptr %29, align 1, !tbaa !36
  %34 = lshr i8 %33, 3
  %35 = zext nneg i8 %28 to i64
  %36 = getelementptr inbounds ptr, ptr %8, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !30
  %38 = zext nneg i8 %31 to i64
  %39 = zext nneg i8 %34 to i64
  %40 = getelementptr inbounds [32 x i16], ptr %37, i64 %38, i64 %39
  %41 = load i16, ptr %40, align 2, !tbaa !51
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %22
  %44 = zext nneg i8 %34 to i32
  %45 = zext nneg i8 %31 to i32
  %46 = zext nneg i8 %28 to i32
  tail call fastcc void @fill_inverse_cmap(ptr noundef %0, i32 noundef %46, i32 noundef %45, i32 noundef %44)
  br label %47

47:                                               ; preds = %43, %22
  %48 = load i16, ptr %40, align 2, !tbaa !51
  %49 = trunc i16 %48 to i8
  %50 = add i8 %49, -1
  %51 = getelementptr inbounds i8, ptr %25, i64 1
  store i8 %50, ptr %25, align 1, !tbaa !36
  %52 = add i32 %24, -1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %22, !llvm.loop !75

54:                                               ; preds = %47, %15
  %55 = add nuw nsw i64 %16, 1
  %56 = icmp eq i64 %55, %14
  br i1 %56, label %57, label %15, !llvm.loop !76

57:                                               ; preds = %54, %4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @finish_pass2(ptr nocapture readnone %0) #4 {
  ret void
}

declare void @jzero_far(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @update_box(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 83
  %4 = load ptr, ptr %3, align 8, !tbaa !16
  %5 = getelementptr inbounds %struct.my_cquantizer, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !28
  %7 = load i32, ptr %1, align 8, !tbaa !55
  %8 = getelementptr inbounds %struct.box, ptr %1, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !57
  %10 = getelementptr inbounds %struct.box, ptr %1, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !58
  %12 = getelementptr inbounds %struct.box, ptr %1, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !59
  %14 = getelementptr inbounds %struct.box, ptr %1, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !60
  %16 = getelementptr inbounds %struct.box, ptr %1, i64 0, i32 5
  %17 = load i32, ptr %16, align 4, !tbaa !61
  %18 = icmp sgt i32 %9, %7
  br i1 %18, label %19, label %55

19:                                               ; preds = %2
  %20 = icmp sgt i32 %11, %13
  %21 = sext i32 %15 to i64
  %22 = icmp sgt i32 %15, %17
  %23 = sext i32 %11 to i64
  %24 = add i32 %13, 1
  %25 = sext i32 %7 to i64
  %26 = add i32 %9, 1
  br label %27

27:                                               ; preds = %19, %51
  %28 = phi i64 [ %25, %19 ], [ %52, %51 ]
  br i1 %20, label %51, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds ptr, ptr %6, i64 %28
  %31 = load ptr, ptr %30, align 8, !tbaa !30
  br label %32

32:                                               ; preds = %29, %47
  %33 = phi i64 [ %23, %29 ], [ %48, %47 ]
  br i1 %22, label %47, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds [32 x i16], ptr %31, i64 %33, i64 %21
  br label %36

36:                                               ; preds = %34, %43
  %37 = phi ptr [ %44, %43 ], [ %35, %34 ]
  %38 = phi i32 [ %45, %43 ], [ %15, %34 ]
  %39 = load i16, ptr %37, align 2, !tbaa !51
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %36
  %42 = trunc i64 %28 to i32
  store i32 %42, ptr %1, align 8, !tbaa !55
  br label %55

43:                                               ; preds = %36
  %44 = getelementptr inbounds i16, ptr %37, i64 1
  %45 = add i32 %38, 1
  %46 = icmp eq i32 %38, %17
  br i1 %46, label %47, label %36, !llvm.loop !77

47:                                               ; preds = %43, %32
  %48 = add nsw i64 %33, 1
  %49 = trunc i64 %48 to i32
  %50 = icmp eq i32 %24, %49
  br i1 %50, label %51, label %32, !llvm.loop !78

51:                                               ; preds = %47, %27
  %52 = add nsw i64 %28, 1
  %53 = trunc i64 %52 to i32
  %54 = icmp eq i32 %26, %53
  br i1 %54, label %55, label %27, !llvm.loop !79

55:                                               ; preds = %51, %2, %41
  %56 = phi i32 [ %42, %41 ], [ %7, %2 ], [ %7, %51 ]
  %57 = icmp sgt i32 %9, %56
  br i1 %57, label %58, label %93

58:                                               ; preds = %55
  %59 = icmp sgt i32 %11, %13
  %60 = sext i32 %15 to i64
  %61 = icmp sgt i32 %15, %17
  %62 = sext i32 %11 to i64
  %63 = add i32 %13, 1
  %64 = sext i32 %9 to i64
  %65 = sext i32 %56 to i64
  br label %66

66:                                               ; preds = %58, %90
  %67 = phi i64 [ %64, %58 ], [ %91, %90 ]
  br i1 %59, label %90, label %68

68:                                               ; preds = %66
  %69 = getelementptr inbounds ptr, ptr %6, i64 %67
  %70 = load ptr, ptr %69, align 8, !tbaa !30
  br label %71

71:                                               ; preds = %68, %86
  %72 = phi i64 [ %62, %68 ], [ %87, %86 ]
  br i1 %61, label %86, label %73

73:                                               ; preds = %71
  %74 = getelementptr inbounds [32 x i16], ptr %70, i64 %72, i64 %60
  br label %75

75:                                               ; preds = %73, %82
  %76 = phi ptr [ %83, %82 ], [ %74, %73 ]
  %77 = phi i32 [ %84, %82 ], [ %15, %73 ]
  %78 = load i16, ptr %76, align 2, !tbaa !51
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %75
  %81 = trunc i64 %67 to i32
  store i32 %81, ptr %8, align 4, !tbaa !57
  br label %93

82:                                               ; preds = %75
  %83 = getelementptr inbounds i16, ptr %76, i64 1
  %84 = add i32 %77, 1
  %85 = icmp eq i32 %77, %17
  br i1 %85, label %86, label %75, !llvm.loop !80

86:                                               ; preds = %82, %71
  %87 = add nsw i64 %72, 1
  %88 = trunc i64 %87 to i32
  %89 = icmp eq i32 %63, %88
  br i1 %89, label %90, label %71, !llvm.loop !81

90:                                               ; preds = %86, %66
  %91 = add nsw i64 %67, -1
  %92 = icmp sgt i64 %67, %65
  br i1 %92, label %66, label %93, !llvm.loop !82

93:                                               ; preds = %90, %55, %80
  %94 = phi i32 [ %81, %80 ], [ %9, %55 ], [ %9, %90 ]
  %95 = icmp sgt i32 %13, %11
  br i1 %95, label %96, label %131

96:                                               ; preds = %93
  %97 = icmp sgt i32 %56, %94
  %98 = sext i32 %15 to i64
  %99 = icmp sgt i32 %15, %17
  %100 = sext i32 %56 to i64
  %101 = add i32 %94, 1
  %102 = sext i32 %11 to i64
  %103 = add i32 %13, 1
  br label %104

104:                                              ; preds = %96, %127
  %105 = phi i64 [ %102, %96 ], [ %128, %127 ]
  br i1 %97, label %127, label %106

106:                                              ; preds = %104, %123
  %107 = phi i64 [ %124, %123 ], [ %100, %104 ]
  br i1 %99, label %123, label %108

108:                                              ; preds = %106
  %109 = getelementptr inbounds ptr, ptr %6, i64 %107
  %110 = load ptr, ptr %109, align 8, !tbaa !30
  %111 = getelementptr inbounds [32 x i16], ptr %110, i64 %105, i64 %98
  br label %112

112:                                              ; preds = %108, %119
  %113 = phi ptr [ %120, %119 ], [ %111, %108 ]
  %114 = phi i32 [ %121, %119 ], [ %15, %108 ]
  %115 = load i16, ptr %113, align 2, !tbaa !51
  %116 = icmp eq i16 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %112
  %118 = trunc i64 %105 to i32
  store i32 %118, ptr %10, align 8, !tbaa !58
  br label %131

119:                                              ; preds = %112
  %120 = getelementptr inbounds i16, ptr %113, i64 1
  %121 = add i32 %114, 1
  %122 = icmp eq i32 %114, %17
  br i1 %122, label %123, label %112, !llvm.loop !83

123:                                              ; preds = %119, %106
  %124 = add nsw i64 %107, 1
  %125 = trunc i64 %124 to i32
  %126 = icmp eq i32 %101, %125
  br i1 %126, label %127, label %106, !llvm.loop !84

127:                                              ; preds = %123, %104
  %128 = add nsw i64 %105, 1
  %129 = trunc i64 %128 to i32
  %130 = icmp eq i32 %103, %129
  br i1 %130, label %131, label %104, !llvm.loop !85

131:                                              ; preds = %127, %93, %117
  %132 = phi i32 [ %118, %117 ], [ %11, %93 ], [ %11, %127 ]
  %133 = icmp sgt i32 %13, %132
  br i1 %133, label %134, label %168

134:                                              ; preds = %131
  %135 = icmp sgt i32 %56, %94
  %136 = sext i32 %15 to i64
  %137 = icmp sgt i32 %15, %17
  %138 = sext i32 %56 to i64
  %139 = add i32 %94, 1
  %140 = sext i32 %13 to i64
  %141 = sext i32 %132 to i64
  br label %142

142:                                              ; preds = %134, %165
  %143 = phi i64 [ %140, %134 ], [ %166, %165 ]
  br i1 %135, label %165, label %144

144:                                              ; preds = %142, %161
  %145 = phi i64 [ %162, %161 ], [ %138, %142 ]
  br i1 %137, label %161, label %146

146:                                              ; preds = %144
  %147 = getelementptr inbounds ptr, ptr %6, i64 %145
  %148 = load ptr, ptr %147, align 8, !tbaa !30
  %149 = getelementptr inbounds [32 x i16], ptr %148, i64 %143, i64 %136
  br label %150

150:                                              ; preds = %146, %157
  %151 = phi ptr [ %158, %157 ], [ %149, %146 ]
  %152 = phi i32 [ %159, %157 ], [ %15, %146 ]
  %153 = load i16, ptr %151, align 2, !tbaa !51
  %154 = icmp eq i16 %153, 0
  br i1 %154, label %157, label %155

155:                                              ; preds = %150
  %156 = trunc i64 %143 to i32
  store i32 %156, ptr %12, align 4, !tbaa !59
  br label %168

157:                                              ; preds = %150
  %158 = getelementptr inbounds i16, ptr %151, i64 1
  %159 = add i32 %152, 1
  %160 = icmp eq i32 %152, %17
  br i1 %160, label %161, label %150, !llvm.loop !86

161:                                              ; preds = %157, %144
  %162 = add nsw i64 %145, 1
  %163 = trunc i64 %162 to i32
  %164 = icmp eq i32 %139, %163
  br i1 %164, label %165, label %144, !llvm.loop !87

165:                                              ; preds = %161, %142
  %166 = add nsw i64 %143, -1
  %167 = icmp sgt i64 %143, %141
  br i1 %167, label %142, label %168, !llvm.loop !88

168:                                              ; preds = %165, %131, %155
  %169 = phi i32 [ %156, %155 ], [ %13, %131 ], [ %13, %165 ]
  %170 = icmp sgt i32 %17, %15
  br i1 %170, label %171, label %206

171:                                              ; preds = %168
  %172 = icmp sgt i32 %56, %94
  %173 = sext i32 %132 to i64
  %174 = icmp sgt i32 %132, %169
  %175 = sext i32 %56 to i64
  %176 = add i32 %94, 1
  %177 = sext i32 %15 to i64
  %178 = add i32 %17, 1
  br label %179

179:                                              ; preds = %171, %202
  %180 = phi i64 [ %177, %171 ], [ %203, %202 ]
  br i1 %172, label %202, label %181

181:                                              ; preds = %179, %198
  %182 = phi i64 [ %199, %198 ], [ %175, %179 ]
  br i1 %174, label %198, label %183

183:                                              ; preds = %181
  %184 = getelementptr inbounds ptr, ptr %6, i64 %182
  %185 = load ptr, ptr %184, align 8, !tbaa !30
  %186 = getelementptr inbounds [32 x i16], ptr %185, i64 %173, i64 %180
  br label %187

187:                                              ; preds = %183, %194
  %188 = phi ptr [ %196, %194 ], [ %186, %183 ]
  %189 = phi i32 [ %195, %194 ], [ %132, %183 ]
  %190 = load i16, ptr %188, align 2, !tbaa !51
  %191 = icmp eq i16 %190, 0
  br i1 %191, label %194, label %192

192:                                              ; preds = %187
  %193 = trunc i64 %180 to i32
  store i32 %193, ptr %14, align 8, !tbaa !60
  br label %206

194:                                              ; preds = %187
  %195 = add i32 %189, 1
  %196 = getelementptr inbounds i16, ptr %188, i64 32
  %197 = icmp eq i32 %189, %169
  br i1 %197, label %198, label %187, !llvm.loop !89

198:                                              ; preds = %194, %181
  %199 = add nsw i64 %182, 1
  %200 = trunc i64 %199 to i32
  %201 = icmp eq i32 %176, %200
  br i1 %201, label %202, label %181, !llvm.loop !90

202:                                              ; preds = %198, %179
  %203 = add nsw i64 %180, 1
  %204 = trunc i64 %203 to i32
  %205 = icmp eq i32 %178, %204
  br i1 %205, label %206, label %179, !llvm.loop !91

206:                                              ; preds = %202, %168, %192
  %207 = phi i32 [ %193, %192 ], [ %15, %168 ], [ %15, %202 ]
  %208 = icmp sgt i32 %17, %207
  br i1 %208, label %209, label %243

209:                                              ; preds = %206
  %210 = icmp sgt i32 %56, %94
  %211 = sext i32 %132 to i64
  %212 = icmp sgt i32 %132, %169
  %213 = sext i32 %56 to i64
  %214 = add i32 %94, 1
  %215 = sext i32 %17 to i64
  %216 = sext i32 %207 to i64
  br label %217

217:                                              ; preds = %209, %240
  %218 = phi i64 [ %215, %209 ], [ %241, %240 ]
  br i1 %210, label %240, label %219

219:                                              ; preds = %217, %236
  %220 = phi i64 [ %237, %236 ], [ %213, %217 ]
  br i1 %212, label %236, label %221

221:                                              ; preds = %219
  %222 = getelementptr inbounds ptr, ptr %6, i64 %220
  %223 = load ptr, ptr %222, align 8, !tbaa !30
  %224 = getelementptr inbounds [32 x i16], ptr %223, i64 %211, i64 %218
  br label %225

225:                                              ; preds = %221, %232
  %226 = phi ptr [ %234, %232 ], [ %224, %221 ]
  %227 = phi i32 [ %233, %232 ], [ %132, %221 ]
  %228 = load i16, ptr %226, align 2, !tbaa !51
  %229 = icmp eq i16 %228, 0
  br i1 %229, label %232, label %230

230:                                              ; preds = %225
  %231 = trunc i64 %218 to i32
  store i32 %231, ptr %16, align 4, !tbaa !61
  br label %243

232:                                              ; preds = %225
  %233 = add i32 %227, 1
  %234 = getelementptr inbounds i16, ptr %226, i64 32
  %235 = icmp eq i32 %227, %169
  br i1 %235, label %236, label %225, !llvm.loop !92

236:                                              ; preds = %232, %219
  %237 = add nsw i64 %220, 1
  %238 = trunc i64 %237 to i32
  %239 = icmp eq i32 %214, %238
  br i1 %239, label %240, label %219, !llvm.loop !93

240:                                              ; preds = %236, %217
  %241 = add nsw i64 %218, -1
  %242 = icmp sgt i64 %218, %216
  br i1 %242, label %217, label %243, !llvm.loop !94

243:                                              ; preds = %240, %206, %230
  %244 = phi i32 [ %231, %230 ], [ %17, %206 ], [ %17, %240 ]
  %245 = sub nsw i32 %94, %56
  %246 = shl i32 %245, 4
  %247 = sext i32 %246 to i64
  %248 = sub nsw i32 %169, %132
  %249 = mul i32 %248, 12
  %250 = sext i32 %249 to i64
  %251 = sub nsw i32 %244, %207
  %252 = shl i32 %251, 3
  %253 = sext i32 %252 to i64
  %254 = mul nsw i64 %247, %247
  %255 = mul nsw i64 %250, %250
  %256 = add nuw nsw i64 %255, %254
  %257 = mul nsw i64 %253, %253
  %258 = add nuw nsw i64 %256, %257
  %259 = getelementptr inbounds %struct.box, ptr %1, i64 0, i32 6
  store i64 %258, ptr %259, align 8, !tbaa !63
  %260 = icmp sgt i32 %56, %94
  br i1 %260, label %301, label %261

261:                                              ; preds = %243
  %262 = icmp sgt i32 %132, %169
  %263 = sext i32 %207 to i64
  %264 = icmp sgt i32 %207, %244
  %265 = sext i32 %132 to i64
  %266 = add i32 %169, 1
  %267 = sext i32 %56 to i64
  %268 = add i32 %94, 1
  br label %269

269:                                              ; preds = %261, %296
  %270 = phi i64 [ %267, %261 ], [ %298, %296 ]
  %271 = phi i64 [ 0, %261 ], [ %297, %296 ]
  br i1 %262, label %296, label %272

272:                                              ; preds = %269
  %273 = getelementptr inbounds ptr, ptr %6, i64 %270
  %274 = load ptr, ptr %273, align 8, !tbaa !30
  br label %275

275:                                              ; preds = %272, %291
  %276 = phi i64 [ %265, %272 ], [ %293, %291 ]
  %277 = phi i64 [ %271, %272 ], [ %292, %291 ]
  br i1 %264, label %291, label %278

278:                                              ; preds = %275
  %279 = getelementptr inbounds [32 x i16], ptr %274, i64 %276, i64 %263
  br label %280

280:                                              ; preds = %278, %280
  %281 = phi i64 [ %287, %280 ], [ %277, %278 ]
  %282 = phi ptr [ %289, %280 ], [ %279, %278 ]
  %283 = phi i32 [ %288, %280 ], [ %207, %278 ]
  %284 = load i16, ptr %282, align 2, !tbaa !51
  %285 = icmp ne i16 %284, 0
  %286 = zext i1 %285 to i64
  %287 = add nsw i64 %281, %286
  %288 = add i32 %283, 1
  %289 = getelementptr inbounds i16, ptr %282, i64 1
  %290 = icmp eq i32 %283, %244
  br i1 %290, label %291, label %280, !llvm.loop !95

291:                                              ; preds = %280, %275
  %292 = phi i64 [ %277, %275 ], [ %287, %280 ]
  %293 = add nsw i64 %276, 1
  %294 = trunc i64 %293 to i32
  %295 = icmp eq i32 %266, %294
  br i1 %295, label %296, label %275, !llvm.loop !96

296:                                              ; preds = %291, %269
  %297 = phi i64 [ %271, %269 ], [ %292, %291 ]
  %298 = add nsw i64 %270, 1
  %299 = trunc i64 %298 to i32
  %300 = icmp eq i32 %268, %299
  br i1 %300, label %301, label %269, !llvm.loop !97

301:                                              ; preds = %296, %243
  %302 = phi i64 [ 0, %243 ], [ %297, %296 ]
  %303 = getelementptr inbounds %struct.box, ptr %1, i64 0, i32 7
  store i64 %302, ptr %303, align 8, !tbaa !62
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @fill_inverse_cmap(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #3 {
  %5 = alloca [128 x i64], align 16
  %6 = alloca [256 x i64], align 16
  %7 = alloca [256 x i8], align 16
  %8 = alloca [128 x i8], align 16
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 83
  %10 = load ptr, ptr %9, align 8, !tbaa !16
  %11 = getelementptr inbounds %struct.my_cquantizer, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %8) #8
  %13 = shl i32 %1, 3
  %14 = and i32 %13, -32
  %15 = or disjoint i32 %14, 4
  %16 = shl i32 %2, 2
  %17 = and i32 %16, -32
  %18 = or disjoint i32 %17, 2
  %19 = shl i32 %3, 3
  %20 = and i32 %19, -32
  %21 = or disjoint i32 %20, 4
  %22 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 31
  %23 = load i32, ptr %22, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %6) #8
  %24 = or i32 %13, 28
  %25 = add nuw nsw i32 %15, %24
  %26 = lshr exact i32 %25, 1
  %27 = or i32 %16, 30
  %28 = add nuw nsw i32 %18, %27
  %29 = lshr exact i32 %28, 1
  %30 = or i32 %19, 28
  %31 = add nuw nsw i32 %21, %30
  %32 = lshr exact i32 %31, 1
  %33 = icmp sgt i32 %23, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %4
  %35 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 32
  %36 = load ptr, ptr %35, align 8, !tbaa !54
  %37 = load ptr, ptr %36, align 8, !tbaa !30
  %38 = getelementptr inbounds ptr, ptr %36, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !30
  %40 = getelementptr inbounds ptr, ptr %36, i64 2
  %41 = load ptr, ptr %40, align 8, !tbaa !30
  %42 = zext nneg i32 %23 to i64
  br label %47

43:                                               ; preds = %163, %4
  %44 = phi i64 [ 2147483647, %4 ], [ %168, %163 ]
  br i1 %33, label %45, label %186

45:                                               ; preds = %43
  %46 = zext nneg i32 %23 to i64
  br label %171

47:                                               ; preds = %163, %34
  %48 = phi i64 [ 0, %34 ], [ %169, %163 ]
  %49 = phi i64 [ 2147483647, %34 ], [ %168, %163 ]
  %50 = getelementptr inbounds i8, ptr %37, i64 %48
  %51 = load i8, ptr %50, align 1, !tbaa !36
  %52 = zext i8 %51 to i32
  %53 = icmp sgt i32 %15, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %47
  %55 = sub nsw i32 %52, %15
  %56 = shl nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = mul nsw i64 %57, %57
  %59 = sub nsw i32 %52, %24
  %60 = shl nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = mul nsw i64 %61, %61
  br label %86

63:                                               ; preds = %47
  %64 = icmp slt i32 %24, %52
  br i1 %64, label %65, label %74

65:                                               ; preds = %63
  %66 = sub nsw i32 %52, %24
  %67 = shl nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = mul nsw i64 %68, %68
  %70 = sub nsw i32 %52, %15
  %71 = shl nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = mul nsw i64 %72, %72
  br label %86

74:                                               ; preds = %63
  %75 = icmp ult i32 %26, %52
  br i1 %75, label %81, label %76

76:                                               ; preds = %74
  %77 = sub nsw i32 %52, %24
  %78 = shl nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = mul nsw i64 %79, %79
  br label %86

81:                                               ; preds = %74
  %82 = sub nsw i32 %52, %15
  %83 = shl nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = mul nsw i64 %84, %84
  br label %86

86:                                               ; preds = %81, %76, %65, %54
  %87 = phi i64 [ %58, %54 ], [ %69, %65 ], [ 0, %76 ], [ 0, %81 ]
  %88 = phi i64 [ %62, %54 ], [ %73, %65 ], [ %80, %76 ], [ %85, %81 ]
  %89 = getelementptr inbounds i8, ptr %39, i64 %48
  %90 = load i8, ptr %89, align 1, !tbaa !36
  %91 = zext i8 %90 to i32
  %92 = icmp sgt i32 %18, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %86
  %94 = sub nsw i32 %91, %18
  %95 = mul nsw i32 %94, 3
  %96 = sext i32 %95 to i64
  %97 = mul nsw i64 %96, %96
  %98 = add nuw nsw i64 %97, %87
  %99 = sub nsw i32 %91, %27
  %100 = mul nsw i32 %99, 3
  %101 = sext i32 %100 to i64
  %102 = mul nsw i64 %101, %101
  br label %127

103:                                              ; preds = %86
  %104 = icmp slt i32 %27, %91
  br i1 %104, label %105, label %115

105:                                              ; preds = %103
  %106 = sub nsw i32 %91, %27
  %107 = mul nsw i32 %106, 3
  %108 = sext i32 %107 to i64
  %109 = mul nsw i64 %108, %108
  %110 = add nuw nsw i64 %109, %87
  %111 = sub nsw i32 %91, %18
  %112 = mul nsw i32 %111, 3
  %113 = sext i32 %112 to i64
  %114 = mul nsw i64 %113, %113
  br label %127

115:                                              ; preds = %103
  %116 = icmp ult i32 %29, %91
  br i1 %116, label %122, label %117

117:                                              ; preds = %115
  %118 = sub nsw i32 %91, %27
  %119 = mul nsw i32 %118, 3
  %120 = sext i32 %119 to i64
  %121 = mul nsw i64 %120, %120
  br label %127

122:                                              ; preds = %115
  %123 = sub nsw i32 %91, %18
  %124 = mul nsw i32 %123, 3
  %125 = sext i32 %124 to i64
  %126 = mul nsw i64 %125, %125
  br label %127

127:                                              ; preds = %122, %117, %105, %93
  %128 = phi i64 [ %98, %93 ], [ %110, %105 ], [ %87, %117 ], [ %87, %122 ]
  %129 = phi i64 [ %102, %93 ], [ %114, %105 ], [ %121, %117 ], [ %126, %122 ]
  %130 = add nuw nsw i64 %129, %88
  %131 = getelementptr inbounds i8, ptr %41, i64 %48
  %132 = load i8, ptr %131, align 1, !tbaa !36
  %133 = zext i8 %132 to i32
  %134 = icmp sgt i32 %21, %133
  br i1 %134, label %135, label %143

135:                                              ; preds = %127
  %136 = sub nsw i32 %133, %21
  %137 = sext i32 %136 to i64
  %138 = mul nsw i64 %137, %137
  %139 = add nsw i64 %138, %128
  %140 = sub nsw i32 %133, %30
  %141 = sext i32 %140 to i64
  %142 = mul nsw i64 %141, %141
  br label %163

143:                                              ; preds = %127
  %144 = icmp slt i32 %30, %133
  br i1 %144, label %145, label %153

145:                                              ; preds = %143
  %146 = sub nsw i32 %133, %30
  %147 = sext i32 %146 to i64
  %148 = mul nsw i64 %147, %147
  %149 = add nsw i64 %148, %128
  %150 = sub nsw i32 %133, %21
  %151 = sext i32 %150 to i64
  %152 = mul nsw i64 %151, %151
  br label %163

153:                                              ; preds = %143
  %154 = icmp ult i32 %32, %133
  br i1 %154, label %159, label %155

155:                                              ; preds = %153
  %156 = sub nsw i32 %133, %30
  %157 = sext i32 %156 to i64
  %158 = mul nsw i64 %157, %157
  br label %163

159:                                              ; preds = %153
  %160 = sub nsw i32 %133, %21
  %161 = sext i32 %160 to i64
  %162 = mul nsw i64 %161, %161
  br label %163

163:                                              ; preds = %159, %155, %145, %135
  %164 = phi i64 [ %139, %135 ], [ %149, %145 ], [ %128, %155 ], [ %128, %159 ]
  %165 = phi i64 [ %142, %135 ], [ %152, %145 ], [ %158, %155 ], [ %162, %159 ]
  %166 = add nuw nsw i64 %130, %165
  %167 = getelementptr inbounds [256 x i64], ptr %6, i64 0, i64 %48
  store i64 %164, ptr %167, align 8, !tbaa !98
  %168 = tail call i64 @llvm.smin.i64(i64 %166, i64 %49)
  %169 = add nuw nsw i64 %48, 1
  %170 = icmp eq i64 %169, %42
  br i1 %170, label %43, label %47, !llvm.loop !99

171:                                              ; preds = %182, %45
  %172 = phi i64 [ 0, %45 ], [ %184, %182 ]
  %173 = phi i32 [ 0, %45 ], [ %183, %182 ]
  %174 = getelementptr inbounds [256 x i64], ptr %6, i64 0, i64 %172
  %175 = load i64, ptr %174, align 8, !tbaa !98
  %176 = icmp sgt i64 %175, %44
  br i1 %176, label %182, label %177

177:                                              ; preds = %171
  %178 = trunc i64 %172 to i8
  %179 = add nsw i32 %173, 1
  %180 = sext i32 %173 to i64
  %181 = getelementptr inbounds i8, ptr %7, i64 %180
  store i8 %178, ptr %181, align 1, !tbaa !36
  br label %182

182:                                              ; preds = %177, %171
  %183 = phi i32 [ %179, %177 ], [ %173, %171 ]
  %184 = add nuw nsw i64 %172, 1
  %185 = icmp eq i64 %184, %46
  br i1 %185, label %186, label %171, !llvm.loop !100

186:                                              ; preds = %182, %43
  %187 = phi i32 [ 0, %43 ], [ %183, %182 ]
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #8
  br label %193

188:                                              ; preds = %193
  %189 = icmp sgt i32 %187, 0
  br i1 %189, label %190, label %279

190:                                              ; preds = %188
  %191 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 32
  %192 = zext nneg i32 %187 to i64
  br label %199

193:                                              ; preds = %193, %186
  %194 = phi ptr [ %5, %186 ], [ %196, %193 ]
  %195 = phi i32 [ 127, %186 ], [ %197, %193 ]
  %196 = getelementptr inbounds i64, ptr %194, i64 1
  store i64 2147483647, ptr %194, align 8, !tbaa !98
  %197 = add nsw i32 %195, -1
  %198 = icmp eq i32 %195, 0
  br i1 %198, label %188, label %193, !llvm.loop !101

199:                                              ; preds = %276, %190
  %200 = phi i64 [ 0, %190 ], [ %277, %276 ]
  %201 = getelementptr inbounds i8, ptr %7, i64 %200
  %202 = load i8, ptr %201, align 1, !tbaa !36
  %203 = load ptr, ptr %191, align 8, !tbaa !54
  %204 = load ptr, ptr %203, align 8, !tbaa !30
  %205 = zext i8 %202 to i64
  %206 = getelementptr inbounds i8, ptr %204, i64 %205
  %207 = load i8, ptr %206, align 1, !tbaa !36
  %208 = zext i8 %207 to i32
  %209 = sub nsw i32 %15, %208
  %210 = shl nsw i32 %209, 1
  %211 = sext i32 %210 to i64
  %212 = mul nsw i64 %211, %211
  %213 = getelementptr inbounds ptr, ptr %203, i64 1
  %214 = load ptr, ptr %213, align 8, !tbaa !30
  %215 = getelementptr inbounds i8, ptr %214, i64 %205
  %216 = load i8, ptr %215, align 1, !tbaa !36
  %217 = zext i8 %216 to i32
  %218 = sub nsw i32 %18, %217
  %219 = mul nsw i32 %218, 3
  %220 = sext i32 %219 to i64
  %221 = mul nsw i64 %220, %220
  %222 = add nuw nsw i64 %221, %212
  %223 = getelementptr inbounds ptr, ptr %203, i64 2
  %224 = load ptr, ptr %223, align 8, !tbaa !30
  %225 = getelementptr inbounds i8, ptr %224, i64 %205
  %226 = load i8, ptr %225, align 1, !tbaa !36
  %227 = zext i8 %226 to i32
  %228 = sub nsw i32 %21, %227
  %229 = sext i32 %228 to i64
  %230 = mul nsw i64 %229, %229
  %231 = add nuw nsw i64 %222, %230
  %232 = shl nsw i64 %211, 5
  %233 = add nsw i64 %232, 256
  %234 = mul nsw i64 %220, 24
  %235 = add nsw i64 %234, 144
  %236 = shl nsw i64 %229, 4
  %237 = add nsw i64 %236, 64
  br label %238

238:                                              ; preds = %271, %199
  %239 = phi i32 [ 3, %199 ], [ %274, %271 ]
  %240 = phi i64 [ %233, %199 ], [ %273, %271 ]
  %241 = phi i64 [ %231, %199 ], [ %272, %271 ]
  %242 = phi ptr [ %8, %199 ], [ %263, %271 ]
  %243 = phi ptr [ %5, %199 ], [ %262, %271 ]
  br label %244

244:                                              ; preds = %266, %238
  %245 = phi i64 [ %235, %238 ], [ %268, %266 ]
  %246 = phi i64 [ %241, %238 ], [ %267, %266 ]
  %247 = phi ptr [ %242, %238 ], [ %263, %266 ]
  %248 = phi ptr [ %243, %238 ], [ %262, %266 ]
  %249 = phi i32 [ 7, %238 ], [ %269, %266 ]
  br label %250

250:                                              ; preds = %259, %244
  %251 = phi i64 [ %237, %244 ], [ %261, %259 ]
  %252 = phi i64 [ %246, %244 ], [ %260, %259 ]
  %253 = phi ptr [ %247, %244 ], [ %263, %259 ]
  %254 = phi ptr [ %248, %244 ], [ %262, %259 ]
  %255 = phi i32 [ 3, %244 ], [ %264, %259 ]
  %256 = load i64, ptr %254, align 8, !tbaa !98
  %257 = icmp slt i64 %252, %256
  br i1 %257, label %258, label %259

258:                                              ; preds = %250
  store i64 %252, ptr %254, align 8, !tbaa !98
  store i8 %202, ptr %253, align 1, !tbaa !36
  br label %259

259:                                              ; preds = %258, %250
  %260 = add nsw i64 %252, %251
  %261 = add nsw i64 %251, 128
  %262 = getelementptr inbounds i64, ptr %254, i64 1
  %263 = getelementptr inbounds i8, ptr %253, i64 1
  %264 = add nsw i32 %255, -1
  %265 = icmp eq i32 %255, 0
  br i1 %265, label %266, label %250, !llvm.loop !102

266:                                              ; preds = %259
  %267 = add nsw i64 %246, %245
  %268 = add nsw i64 %245, 288
  %269 = add nsw i32 %249, -1
  %270 = icmp eq i32 %249, 0
  br i1 %270, label %271, label %244, !llvm.loop !103

271:                                              ; preds = %266
  %272 = add nsw i64 %241, %240
  %273 = add nsw i64 %240, 512
  %274 = add nsw i32 %239, -1
  %275 = icmp eq i32 %239, 0
  br i1 %275, label %276, label %238, !llvm.loop !104

276:                                              ; preds = %271
  %277 = add nuw nsw i64 %200, 1
  %278 = icmp eq i64 %277, %192
  br i1 %278, label %279, label %199, !llvm.loop !105

279:                                              ; preds = %276, %188
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #8
  %280 = and i32 %1, -4
  %281 = and i32 %2, -8
  %282 = and i32 %3, -4
  %283 = zext nneg i32 %282 to i64
  %284 = sext i32 %281 to i64
  %285 = sext i32 %280 to i64
  br label %286

286:                                              ; preds = %279, %310
  %287 = phi i64 [ 0, %279 ], [ %311, %310 ]
  %288 = phi ptr [ %8, %279 ], [ %301, %310 ]
  %289 = or disjoint i64 %287, %285
  %290 = getelementptr inbounds ptr, ptr %12, i64 %289
  %291 = load ptr, ptr %290, align 8, !tbaa !30
  br label %292

292:                                              ; preds = %286, %307
  %293 = phi i64 [ 0, %286 ], [ %308, %307 ]
  %294 = phi ptr [ %288, %286 ], [ %301, %307 ]
  %295 = or disjoint i64 %293, %284
  %296 = getelementptr inbounds [32 x i16], ptr %291, i64 %295, i64 %283
  %297 = getelementptr i8, ptr %294, i64 3
  br label %298

298:                                              ; preds = %292, %298
  %299 = phi ptr [ %296, %292 ], [ %305, %298 ]
  %300 = phi ptr [ %294, %292 ], [ %301, %298 ]
  %301 = getelementptr inbounds i8, ptr %300, i64 1
  %302 = load i8, ptr %300, align 1, !tbaa !36
  %303 = zext i8 %302 to i16
  %304 = add nuw nsw i16 %303, 1
  %305 = getelementptr inbounds i16, ptr %299, i64 1
  store i16 %304, ptr %299, align 2, !tbaa !51
  %306 = icmp eq ptr %300, %297
  br i1 %306, label %307, label %298, !llvm.loop !106

307:                                              ; preds = %298
  %308 = add nuw nsw i64 %293, 1
  %309 = icmp eq i64 %308, 8
  br i1 %309, label %310, label %292, !llvm.loop !107

310:                                              ; preds = %307
  %311 = add nuw nsw i64 %287, 1
  %312 = icmp eq i64 %311, 4
  br i1 %312, label %313, label %286, !llvm.loop !108

313:                                              ; preds = %310
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 8}
!6 = !{!"jpeg_decompress_struct", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !7, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !11, i64 72, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !10, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !10, i64 144, !10, i64 148, !7, i64 152, !10, i64 160, !10, i64 164, !10, i64 168, !10, i64 172, !10, i64 176, !7, i64 184, !8, i64 192, !8, i64 224, !8, i64 256, !10, i64 288, !7, i64 296, !10, i64 304, !10, i64 308, !8, i64 312, !8, i64 328, !8, i64 344, !10, i64 360, !10, i64 364, !8, i64 368, !12, i64 370, !12, i64 372, !10, i64 376, !8, i64 380, !10, i64 384, !10, i64 388, !10, i64 392, !10, i64 396, !10, i64 400, !7, i64 408, !10, i64 416, !8, i64 424, !10, i64 456, !10, i64 460, !10, i64 464, !8, i64 468, !10, i64 508, !10, i64 512, !10, i64 516, !10, i64 520, !10, i64 524, !7, i64 528, !7, i64 536, !7, i64 544, !7, i64 552, !7, i64 560, !7, i64 568, !7, i64 576, !7, i64 584, !7, i64 592, !7, i64 600, !7, i64 608}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"double", !8, i64 0}
!12 = !{!"short", !8, i64 0}
!13 = !{!14, !7, i64 0}
!14 = !{!"jpeg_memory_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !15, i64 88}
!15 = !{!"long", !8, i64 0}
!16 = !{!6, !7, i64 608}
!17 = !{!18, !7, i64 0}
!18 = !{!"", !19, i64 0, !7, i64 32, !10, i64 40, !7, i64 48, !10, i64 56, !7, i64 64, !10, i64 72, !7, i64 80}
!19 = !{!"jpeg_color_quantizer", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!20 = !{!18, !7, i64 24}
!21 = !{!18, !7, i64 64}
!22 = !{!18, !7, i64 80}
!23 = !{!6, !10, i64 136}
!24 = !{!6, !7, i64 0}
!25 = !{!26, !10, i64 40}
!26 = !{!"jpeg_error_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !8, i64 44, !10, i64 124, !15, i64 128, !7, i64 136, !10, i64 144, !7, i64 152, !10, i64 160, !10, i64 164}
!27 = !{!26, !7, i64 0}
!28 = !{!18, !7, i64 48}
!29 = !{!14, !7, i64 8}
!30 = !{!7, !7, i64 0}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.unroll.disable"}
!33 = !{!18, !10, i64 56}
!34 = !{!6, !10, i64 124}
!35 = !{!6, !10, i64 112}
!36 = !{!8, !8, i64 0}
!37 = !{!14, !7, i64 16}
!38 = !{!18, !7, i64 32}
!39 = !{!18, !10, i64 40}
!40 = !{!6, !10, i64 104}
!41 = !{!6, !10, i64 128}
!42 = !{!10, !10, i64 0}
!43 = distinct !{!43, !32}
!44 = distinct !{!44, !32}
!45 = distinct !{!45, !32}
!46 = !{!18, !7, i64 8}
!47 = !{!18, !7, i64 16}
!48 = !{!6, !10, i64 148}
!49 = !{!18, !10, i64 72}
!50 = distinct !{!50, !32}
!51 = !{!12, !12, i64 0}
!52 = distinct !{!52, !32}
!53 = distinct !{!53, !32}
!54 = !{!6, !7, i64 152}
!55 = !{!56, !10, i64 0}
!56 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !15, i64 24, !15, i64 32}
!57 = !{!56, !10, i64 4}
!58 = !{!56, !10, i64 8}
!59 = !{!56, !10, i64 12}
!60 = !{!56, !10, i64 16}
!61 = !{!56, !10, i64 20}
!62 = !{!56, !15, i64 32}
!63 = !{!56, !15, i64 24}
!64 = distinct !{!64, !32}
!65 = distinct !{!65, !32}
!66 = distinct !{!66, !32}
!67 = distinct !{!67, !32}
!68 = distinct !{!68, !32}
!69 = distinct !{!69, !32}
!70 = distinct !{!70, !32}
!71 = !{!26, !7, i64 8}
!72 = !{!6, !7, i64 408}
!73 = distinct !{!73, !32}
!74 = distinct !{!74, !32}
!75 = distinct !{!75, !32}
!76 = distinct !{!76, !32}
!77 = distinct !{!77, !32}
!78 = distinct !{!78, !32}
!79 = distinct !{!79, !32}
!80 = distinct !{!80, !32}
!81 = distinct !{!81, !32}
!82 = distinct !{!82, !32}
!83 = distinct !{!83, !32}
!84 = distinct !{!84, !32}
!85 = distinct !{!85, !32}
!86 = distinct !{!86, !32}
!87 = distinct !{!87, !32}
!88 = distinct !{!88, !32}
!89 = distinct !{!89, !32}
!90 = distinct !{!90, !32}
!91 = distinct !{!91, !32}
!92 = distinct !{!92, !32}
!93 = distinct !{!93, !32}
!94 = distinct !{!94, !32}
!95 = distinct !{!95, !32}
!96 = distinct !{!96, !32}
!97 = distinct !{!97, !32}
!98 = !{!15, !15, i64 0}
!99 = distinct !{!99, !32}
!100 = distinct !{!100, !32}
!101 = distinct !{!101, !32}
!102 = distinct !{!102, !32}
!103 = distinct !{!103, !32}
!104 = distinct !{!104, !32}
!105 = distinct !{!105, !32}
!106 = distinct !{!106, !32}
!107 = distinct !{!107, !32}
!108 = distinct !{!108, !32}
