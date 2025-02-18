; ModuleID = 'libpng/pngwtran.c'
source_filename = "libpng/pngwtran.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.png_struct_def = type { [1 x %struct.__jmp_buf_tag], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i32, i32, i32, %struct.z_stream_s, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i32, ptr, i16, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [5 x i8], i16, i8, i32, %struct.png_color_16_struct, %struct.png_color_16_struct, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.png_color_8_struct, %struct.png_color_8_struct, ptr, %struct.png_color_16_struct, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i64, i32, i32, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, [29 x i8], i32, ptr, ptr, i32, ptr, i8, i8, i8, i16, i16, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i64, %struct.png_unknown_chunk_t, i64, ptr, i32, ptr, [4 x ptr] }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.png_color_8_struct = type { i8, i8, i8, i8, i8 }
%struct.png_color_16_struct = type { i8, i16, i16, i16, i16 }
%struct.png_unknown_chunk_t = type { [5 x i8], ptr, i64, i8 }
%struct.png_row_info_struct = type { i32, i64, i8, i8, i8, i8 }

; Function Attrs: nounwind uwtable
define dso_local void @png_do_write_transformations(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %98, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %6 = load i32, ptr %5, align 4, !tbaa !34
  %7 = and i32 %6, 1048576
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 39
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  %16 = getelementptr inbounds i8, ptr %15, i64 1
  tail call void %11(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %16) #4
  br label %17

17:                                               ; preds = %9, %13, %4
  %18 = load i32, ptr %5, align 4, !tbaa !34
  %19 = and i32 %18, 32768
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 39
  %23 = load ptr, ptr %22, align 8, !tbaa !47
  %24 = getelementptr inbounds i8, ptr %23, i64 1
  %25 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %26 = load i32, ptr %25, align 8, !tbaa !48
  %27 = lshr i32 %26, 7
  %28 = and i32 %27, 1
  %29 = xor i32 %28, 1
  tail call void @png_do_strip_channel(ptr noundef %1, ptr noundef nonnull %24, i32 noundef %29) #4
  br label %30

30:                                               ; preds = %21, %17
  %31 = load i32, ptr %5, align 4, !tbaa !34
  %32 = and i32 %31, 65536
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 39
  %36 = load ptr, ptr %35, align 8, !tbaa !47
  %37 = getelementptr inbounds i8, ptr %36, i64 1
  tail call void @png_do_packswap(ptr noundef %1, ptr noundef nonnull %37) #4
  br label %38

38:                                               ; preds = %34, %30
  %39 = load i32, ptr %5, align 4, !tbaa !34
  %40 = and i32 %39, 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 39
  %44 = load ptr, ptr %43, align 8, !tbaa !47
  %45 = getelementptr inbounds i8, ptr %44, i64 1
  %46 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 57
  %47 = load i8, ptr %46, align 8, !tbaa !49
  %48 = zext i8 %47 to i32
  tail call void @png_do_pack(ptr noundef %1, ptr noundef nonnull %45, i32 noundef %48)
  br label %49

49:                                               ; preds = %42, %38
  %50 = load i32, ptr %5, align 4, !tbaa !34
  %51 = and i32 %50, 16
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 39
  %55 = load ptr, ptr %54, align 8, !tbaa !47
  %56 = getelementptr inbounds i8, ptr %55, i64 1
  tail call void @png_do_swap(ptr noundef %1, ptr noundef nonnull %56) #4
  br label %57

57:                                               ; preds = %53, %49
  %58 = load i32, ptr %5, align 4, !tbaa !34
  %59 = and i32 %58, 8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 39
  %63 = load ptr, ptr %62, align 8, !tbaa !47
  %64 = getelementptr inbounds i8, ptr %63, i64 1
  %65 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 84
  tail call void @png_do_shift(ptr noundef %1, ptr noundef nonnull %64, ptr noundef nonnull %65)
  br label %66

66:                                               ; preds = %61, %57
  %67 = load i32, ptr %5, align 4, !tbaa !34
  %68 = and i32 %67, 131072
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 39
  %72 = load ptr, ptr %71, align 8, !tbaa !47
  %73 = getelementptr inbounds i8, ptr %72, i64 1
  tail call void @png_do_write_swap_alpha(ptr noundef %1, ptr noundef nonnull %73)
  br label %74

74:                                               ; preds = %70, %66
  %75 = load i32, ptr %5, align 4, !tbaa !34
  %76 = and i32 %75, 524288
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 39
  %80 = load ptr, ptr %79, align 8, !tbaa !47
  %81 = getelementptr inbounds i8, ptr %80, i64 1
  tail call void @png_do_write_invert_alpha(ptr noundef %1, ptr noundef nonnull %81)
  br label %82

82:                                               ; preds = %78, %74
  %83 = load i32, ptr %5, align 4, !tbaa !34
  %84 = and i32 %83, 1
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 39
  %88 = load ptr, ptr %87, align 8, !tbaa !47
  %89 = getelementptr inbounds i8, ptr %88, i64 1
  tail call void @png_do_bgr(ptr noundef %1, ptr noundef nonnull %89) #4
  br label %90

90:                                               ; preds = %86, %82
  %91 = load i32, ptr %5, align 4, !tbaa !34
  %92 = and i32 %91, 32
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 39
  %96 = load ptr, ptr %95, align 8, !tbaa !47
  %97 = getelementptr inbounds i8, ptr %96, i64 1
  tail call void @png_do_invert(ptr noundef %1, ptr noundef nonnull %97) #4
  br label %98

98:                                               ; preds = %2, %94, %90
  ret void
}

declare void @png_do_strip_channel(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @png_do_packswap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_do_pack(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %5 = load i8, ptr %4, align 1, !tbaa !50
  %6 = icmp eq i8 %5, 8
  br i1 %6, label %7, label %136

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 4
  %9 = load i8, ptr %8, align 2, !tbaa !52
  %10 = icmp eq i8 %9, 1
  br i1 %10, label %11, label %136

11:                                               ; preds = %7
  switch i32 %2, label %116 [
    i32 1, label %12
    i32 2, label %46
    i32 4, label %81
  ]

12:                                               ; preds = %11
  %13 = load i32, ptr %0, align 8, !tbaa !53
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %41, label %15

15:                                               ; preds = %12, %32
  %16 = phi ptr [ %25, %32 ], [ %1, %12 ]
  %17 = phi ptr [ %35, %32 ], [ %1, %12 ]
  %18 = phi i32 [ %34, %32 ], [ 128, %12 ]
  %19 = phi i32 [ %33, %32 ], [ 0, %12 ]
  %20 = phi i32 [ %36, %32 ], [ 0, %12 ]
  %21 = load i8, ptr %16, align 1, !tbaa !54
  %22 = icmp eq i8 %21, 0
  %23 = select i1 %22, i32 0, i32 %18
  %24 = or i32 %23, %19
  %25 = getelementptr inbounds i8, ptr %16, i64 1
  %26 = icmp ugt i32 %18, 1
  br i1 %26, label %27, label %29

27:                                               ; preds = %15
  %28 = lshr i32 %18, 1
  br label %32

29:                                               ; preds = %15
  %30 = trunc i32 %24 to i8
  store i8 %30, ptr %17, align 1, !tbaa !54
  %31 = getelementptr inbounds i8, ptr %17, i64 1
  br label %32

32:                                               ; preds = %27, %29
  %33 = phi i32 [ %24, %27 ], [ 0, %29 ]
  %34 = phi i32 [ %28, %27 ], [ 128, %29 ]
  %35 = phi ptr [ %17, %27 ], [ %31, %29 ]
  %36 = add nuw i32 %20, 1
  %37 = icmp eq i32 %36, %13
  br i1 %37, label %38, label %15, !llvm.loop !55

38:                                               ; preds = %32
  %39 = icmp eq i32 %34, 128
  %40 = trunc i32 %33 to i8
  br label %41

41:                                               ; preds = %38, %12
  %42 = phi i8 [ 0, %12 ], [ %40, %38 ]
  %43 = phi i1 [ true, %12 ], [ %39, %38 ]
  %44 = phi ptr [ %1, %12 ], [ %35, %38 ]
  br i1 %43, label %116, label %45

45:                                               ; preds = %41
  store i8 %42, ptr %44, align 1, !tbaa !54
  br label %116

46:                                               ; preds = %11
  %47 = load i32, ptr %0, align 8, !tbaa !53
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %76, label %49

49:                                               ; preds = %46, %66
  %50 = phi i32 [ %71, %66 ], [ 0, %46 ]
  %51 = phi i32 [ %69, %66 ], [ 0, %46 ]
  %52 = phi i32 [ %68, %66 ], [ 6, %46 ]
  %53 = phi ptr [ %67, %66 ], [ %1, %46 ]
  %54 = phi ptr [ %70, %66 ], [ %1, %46 ]
  %55 = load i8, ptr %54, align 1, !tbaa !54
  %56 = and i8 %55, 3
  %57 = zext nneg i8 %56 to i32
  %58 = shl i32 %57, %52
  %59 = or i32 %58, %51
  %60 = icmp eq i32 %52, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %49
  %62 = trunc i32 %59 to i8
  store i8 %62, ptr %53, align 1, !tbaa !54
  %63 = getelementptr inbounds i8, ptr %53, i64 1
  br label %66

64:                                               ; preds = %49
  %65 = add nsw i32 %52, -2
  br label %66

66:                                               ; preds = %64, %61
  %67 = phi ptr [ %63, %61 ], [ %53, %64 ]
  %68 = phi i32 [ 6, %61 ], [ %65, %64 ]
  %69 = phi i32 [ 0, %61 ], [ %59, %64 ]
  %70 = getelementptr inbounds i8, ptr %54, i64 1
  %71 = add nuw i32 %50, 1
  %72 = icmp eq i32 %71, %47
  br i1 %72, label %73, label %49, !llvm.loop !58

73:                                               ; preds = %66
  %74 = icmp eq i32 %68, 6
  %75 = trunc i32 %69 to i8
  br label %76

76:                                               ; preds = %73, %46
  %77 = phi ptr [ %1, %46 ], [ %67, %73 ]
  %78 = phi i1 [ true, %46 ], [ %74, %73 ]
  %79 = phi i8 [ 0, %46 ], [ %75, %73 ]
  br i1 %78, label %116, label %80

80:                                               ; preds = %76
  store i8 %79, ptr %77, align 1, !tbaa !54
  br label %116

81:                                               ; preds = %11
  %82 = load i32, ptr %0, align 8, !tbaa !53
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %111, label %84

84:                                               ; preds = %81, %101
  %85 = phi i32 [ %106, %101 ], [ 0, %81 ]
  %86 = phi i32 [ %104, %101 ], [ 0, %81 ]
  %87 = phi i32 [ %103, %101 ], [ 4, %81 ]
  %88 = phi ptr [ %102, %101 ], [ %1, %81 ]
  %89 = phi ptr [ %105, %101 ], [ %1, %81 ]
  %90 = load i8, ptr %89, align 1, !tbaa !54
  %91 = and i8 %90, 15
  %92 = zext nneg i8 %91 to i32
  %93 = shl i32 %92, %87
  %94 = or i32 %93, %86
  %95 = icmp eq i32 %87, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %84
  %97 = trunc i32 %94 to i8
  store i8 %97, ptr %88, align 1, !tbaa !54
  %98 = getelementptr inbounds i8, ptr %88, i64 1
  br label %101

99:                                               ; preds = %84
  %100 = add nsw i32 %87, -4
  br label %101

101:                                              ; preds = %99, %96
  %102 = phi ptr [ %98, %96 ], [ %88, %99 ]
  %103 = phi i32 [ 4, %96 ], [ %100, %99 ]
  %104 = phi i32 [ 0, %96 ], [ %94, %99 ]
  %105 = getelementptr inbounds i8, ptr %89, i64 1
  %106 = add nuw i32 %85, 1
  %107 = icmp eq i32 %106, %82
  br i1 %107, label %108, label %84, !llvm.loop !59

108:                                              ; preds = %101
  %109 = icmp eq i32 %103, 4
  %110 = trunc i32 %104 to i8
  br label %111

111:                                              ; preds = %108, %81
  %112 = phi ptr [ %1, %81 ], [ %102, %108 ]
  %113 = phi i1 [ true, %81 ], [ %109, %108 ]
  %114 = phi i8 [ 0, %81 ], [ %110, %108 ]
  br i1 %113, label %116, label %115

115:                                              ; preds = %111
  store i8 %114, ptr %112, align 1, !tbaa !54
  br label %116

116:                                              ; preds = %111, %115, %76, %80, %41, %45, %11
  %117 = trunc i32 %2 to i8
  store i8 %117, ptr %4, align 1, !tbaa !50
  %118 = load i8, ptr %8, align 2, !tbaa !52
  %119 = mul i8 %118, %117
  %120 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 5
  store i8 %119, ptr %120, align 1, !tbaa !60
  %121 = icmp ugt i8 %119, 7
  %122 = load i32, ptr %0, align 8, !tbaa !53
  %123 = zext i32 %122 to i64
  br i1 %121, label %124, label %128

124:                                              ; preds = %116
  %125 = lshr i8 %119, 3
  %126 = zext nneg i8 %125 to i64
  %127 = mul nuw nsw i64 %123, %126
  br label %133

128:                                              ; preds = %116
  %129 = zext nneg i8 %119 to i64
  %130 = mul nuw nsw i64 %123, %129
  %131 = add nuw nsw i64 %130, 7
  %132 = lshr i64 %131, 3
  br label %133

133:                                              ; preds = %128, %124
  %134 = phi i64 [ %127, %124 ], [ %132, %128 ]
  %135 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  store i64 %134, ptr %135, align 8, !tbaa !61
  br label %136

136:                                              ; preds = %133, %7, %3
  ret void
}

declare void @png_do_swap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_do_shift(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = alloca [4 x i32], align 16
  %5 = alloca [4 x i32], align 16
  %6 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 2
  %7 = load i8, ptr %6, align 8, !tbaa !62
  %8 = icmp eq i8 %7, 3
  br i1 %8, label %184, label %9

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #4
  %10 = and i8 %7, 2
  %11 = icmp eq i8 %10, 0
  %12 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %13 = load i8, ptr %12, align 1, !tbaa !50
  %14 = zext i8 %13 to i32
  br i1 %11, label %31, label %15

15:                                               ; preds = %9
  %16 = load i8, ptr %2, align 1, !tbaa !63
  %17 = zext i8 %16 to i32
  %18 = sub nsw i32 %14, %17
  store i32 %18, ptr %4, align 16, !tbaa !64
  store i32 %17, ptr %5, align 16, !tbaa !64
  %19 = getelementptr inbounds %struct.png_color_8_struct, ptr %2, i64 0, i32 1
  %20 = load i8, ptr %19, align 1, !tbaa !65
  %21 = zext i8 %20 to i32
  %22 = sub nsw i32 %14, %21
  %23 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 1
  store i32 %22, ptr %23, align 4, !tbaa !64
  %24 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 1
  store i32 %21, ptr %24, align 4, !tbaa !64
  %25 = getelementptr inbounds %struct.png_color_8_struct, ptr %2, i64 0, i32 2
  %26 = load i8, ptr %25, align 1, !tbaa !66
  %27 = zext i8 %26 to i32
  %28 = sub nsw i32 %14, %27
  %29 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 2
  store i32 %28, ptr %29, align 8, !tbaa !64
  %30 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 2
  store i32 %27, ptr %30, align 8, !tbaa !64
  br label %36

31:                                               ; preds = %9
  %32 = getelementptr inbounds %struct.png_color_8_struct, ptr %2, i64 0, i32 3
  %33 = load i8, ptr %32, align 1, !tbaa !67
  %34 = zext i8 %33 to i32
  %35 = sub nsw i32 %14, %34
  store i32 %35, ptr %4, align 16, !tbaa !64
  store i32 %34, ptr %5, align 16, !tbaa !64
  br label %36

36:                                               ; preds = %31, %15
  %37 = phi i32 [ 3, %15 ], [ 1, %31 ]
  %38 = and i8 %7, 4
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %42 = load i8, ptr %41, align 1, !tbaa !50
  %43 = zext i8 %42 to i32
  %44 = getelementptr inbounds %struct.png_color_8_struct, ptr %2, i64 0, i32 4
  %45 = load i8, ptr %44, align 1, !tbaa !68
  %46 = zext i8 %45 to i32
  %47 = sub nsw i32 %43, %46
  %48 = zext nneg i32 %37 to i64
  %49 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 %48
  store i32 %47, ptr %49, align 4, !tbaa !64
  %50 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 %48
  store i32 %46, ptr %50, align 4, !tbaa !64
  %51 = add nuw nsw i32 %37, 1
  br label %52

52:                                               ; preds = %40, %36
  %53 = phi i32 [ %51, %40 ], [ %37, %36 ]
  %54 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %55 = load i8, ptr %54, align 1, !tbaa !50
  %56 = icmp ult i8 %55, 8
  br i1 %56, label %57, label %102

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  %59 = load i64, ptr %58, align 8, !tbaa !61
  %60 = getelementptr inbounds %struct.png_color_8_struct, ptr %2, i64 0, i32 3
  %61 = load i8, ptr %60, align 1, !tbaa !67
  %62 = icmp eq i8 %61, 1
  %63 = icmp eq i8 %55, 2
  %64 = and i1 %63, %62
  %65 = icmp eq i8 %55, 4
  %66 = icmp eq i8 %61, 3
  %67 = and i1 %65, %66
  %68 = select i1 %67, i32 17, i32 255
  %69 = select i1 %64, i32 85, i32 %68
  %70 = icmp eq i64 %59, 0
  br i1 %70, label %183, label %71

71:                                               ; preds = %57
  %72 = load i32, ptr %4, align 16, !tbaa !64
  %73 = load i32, ptr %5, align 16, !tbaa !64
  %74 = sub nsw i32 0, %73
  %75 = icmp sgt i32 %72, %74
  br label %76

76:                                               ; preds = %71, %98
  %77 = phi ptr [ %1, %71 ], [ %100, %98 ]
  %78 = phi i64 [ 0, %71 ], [ %99, %98 ]
  %79 = load i8, ptr %77, align 1, !tbaa !54
  store i8 0, ptr %77, align 1, !tbaa !54
  br i1 %75, label %80, label %98

80:                                               ; preds = %76
  %81 = zext i8 %79 to i32
  %82 = zext i8 %79 to i32
  %83 = load i8, ptr %77, align 1, !tbaa !54
  br label %84

84:                                               ; preds = %80, %84
  %85 = phi i8 [ %83, %80 ], [ %94, %84 ]
  %86 = phi i32 [ %72, %80 ], [ %95, %84 ]
  %87 = icmp sgt i32 %86, 0
  %88 = sub nsw i32 0, %86
  %89 = lshr i32 %81, %88
  %90 = and i32 %89, %69
  %91 = shl i32 %82, %86
  %92 = select i1 %87, i32 %91, i32 %90
  %93 = trunc i32 %92 to i8
  %94 = or i8 %85, %93
  %95 = sub nsw i32 %86, %73
  %96 = icmp sgt i32 %86, 0
  br i1 %96, label %84, label %97, !llvm.loop !69

97:                                               ; preds = %84
  store i8 %94, ptr %77, align 1, !tbaa !54
  br label %98

98:                                               ; preds = %97, %76
  %99 = add nuw i64 %78, 1
  %100 = getelementptr inbounds i8, ptr %77, i64 1
  %101 = icmp eq i64 %99, %59
  br i1 %101, label %183, label %76, !llvm.loop !70

102:                                              ; preds = %52
  %103 = icmp eq i8 %55, 8
  %104 = load i32, ptr %0, align 8, !tbaa !53
  %105 = mul i32 %104, %53
  %106 = icmp eq i32 %105, 0
  br i1 %103, label %107, label %141

107:                                              ; preds = %102
  br i1 %106, label %183, label %108

108:                                              ; preds = %107, %137
  %109 = phi ptr [ %139, %137 ], [ %1, %107 ]
  %110 = phi i32 [ %138, %137 ], [ 0, %107 ]
  %111 = urem i32 %110, %53
  %112 = load i8, ptr %109, align 1, !tbaa !54
  store i8 0, ptr %109, align 1, !tbaa !54
  %113 = zext nneg i32 %111 to i64
  %114 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 %113
  %115 = load i32, ptr %114, align 4, !tbaa !64
  %116 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 %113
  %117 = load i32, ptr %116, align 4, !tbaa !64
  %118 = sub nsw i32 0, %117
  %119 = icmp sgt i32 %115, %118
  br i1 %119, label %120, label %137

120:                                              ; preds = %108
  %121 = zext i8 %112 to i32
  %122 = zext i8 %112 to i32
  %123 = load i8, ptr %109, align 1, !tbaa !54
  br label %124

124:                                              ; preds = %120, %124
  %125 = phi i8 [ %123, %120 ], [ %133, %124 ]
  %126 = phi i32 [ %115, %120 ], [ %134, %124 ]
  %127 = icmp sgt i32 %126, 0
  %128 = sub nsw i32 0, %126
  %129 = lshr i32 %121, %128
  %130 = shl i32 %122, %126
  %131 = select i1 %127, i32 %130, i32 %129
  %132 = trunc i32 %131 to i8
  %133 = or i8 %125, %132
  %134 = sub nsw i32 %126, %117
  %135 = icmp sgt i32 %126, 0
  br i1 %135, label %124, label %136, !llvm.loop !71

136:                                              ; preds = %124
  store i8 %133, ptr %109, align 1, !tbaa !54
  br label %137

137:                                              ; preds = %136, %108
  %138 = add nuw i32 %110, 1
  %139 = getelementptr inbounds i8, ptr %109, i64 1
  %140 = icmp eq i32 %138, %105
  br i1 %140, label %183, label %108, !llvm.loop !72

141:                                              ; preds = %102
  br i1 %106, label %183, label %142

142:                                              ; preds = %141, %175
  %143 = phi i32 [ %181, %175 ], [ 0, %141 ]
  %144 = phi ptr [ %180, %175 ], [ %1, %141 ]
  %145 = urem i32 %143, %53
  %146 = getelementptr inbounds i8, ptr %144, i64 1
  %147 = zext nneg i32 %145 to i64
  %148 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 %147
  %149 = load i32, ptr %148, align 4, !tbaa !64
  %150 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 %147
  %151 = load i32, ptr %150, align 4, !tbaa !64
  %152 = sub nsw i32 0, %151
  %153 = icmp sgt i32 %149, %152
  br i1 %153, label %154, label %175

154:                                              ; preds = %142
  %155 = load i8, ptr %144, align 1, !tbaa !54
  %156 = zext i8 %155 to i16
  %157 = shl nuw i16 %156, 8
  %158 = load i8, ptr %146, align 1, !tbaa !54
  %159 = zext i8 %158 to i16
  %160 = or disjoint i16 %157, %159
  %161 = zext i16 %160 to i32
  %162 = zext i16 %160 to i32
  br label %163

163:                                              ; preds = %154, %163
  %164 = phi i32 [ %149, %154 ], [ %173, %163 ]
  %165 = phi i16 [ 0, %154 ], [ %172, %163 ]
  %166 = icmp sgt i32 %164, 0
  %167 = shl i32 %162, %164
  %168 = sub nsw i32 0, %164
  %169 = lshr i32 %161, %168
  %170 = select i1 %166, i32 %167, i32 %169
  %171 = trunc i32 %170 to i16
  %172 = or i16 %165, %171
  %173 = sub nsw i32 %164, %151
  %174 = icmp sgt i32 %164, 0
  br i1 %174, label %163, label %175, !llvm.loop !73

175:                                              ; preds = %163, %142
  %176 = phi i16 [ 0, %142 ], [ %172, %163 ]
  %177 = lshr i16 %176, 8
  %178 = trunc i16 %177 to i8
  store i8 %178, ptr %144, align 1, !tbaa !54
  %179 = trunc i16 %176 to i8
  %180 = getelementptr inbounds i8, ptr %144, i64 2
  store i8 %179, ptr %146, align 1, !tbaa !54
  %181 = add nuw i32 %143, 1
  %182 = icmp eq i32 %181, %105
  br i1 %182, label %183, label %142, !llvm.loop !74

183:                                              ; preds = %175, %137, %98, %141, %107, %57
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #4
  br label %184

184:                                              ; preds = %183, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_do_write_swap_alpha(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 2
  %4 = load i8, ptr %3, align 8, !tbaa !62
  switch i8 %4, label %91 [
    i8 6, label %5
    i8 4, label %57
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %7 = load i8, ptr %6, align 1, !tbaa !50
  %8 = icmp eq i8 %7, 8
  %9 = load i32, ptr %0, align 8, !tbaa !53
  %10 = icmp eq i32 %9, 0
  br i1 %8, label %11, label %28

11:                                               ; preds = %5
  br i1 %10, label %91, label %12

12:                                               ; preds = %11, %12
  %13 = phi ptr [ %23, %12 ], [ %1, %11 ]
  %14 = phi i32 [ %26, %12 ], [ 0, %11 ]
  %15 = getelementptr inbounds i8, ptr %13, i64 1
  %16 = load i8, ptr %13, align 1, !tbaa !54
  %17 = getelementptr inbounds i8, ptr %13, i64 2
  %18 = load i8, ptr %15, align 1, !tbaa !54
  %19 = getelementptr inbounds i8, ptr %13, i64 1
  store i8 %18, ptr %13, align 1, !tbaa !54
  %20 = getelementptr inbounds i8, ptr %13, i64 3
  %21 = load i8, ptr %17, align 1, !tbaa !54
  %22 = getelementptr inbounds i8, ptr %13, i64 2
  store i8 %21, ptr %19, align 1, !tbaa !54
  %23 = getelementptr i8, ptr %13, i64 4
  %24 = load i8, ptr %20, align 1, !tbaa !54
  %25 = getelementptr inbounds i8, ptr %13, i64 3
  store i8 %24, ptr %22, align 1, !tbaa !54
  store i8 %16, ptr %25, align 1, !tbaa !54
  %26 = add nuw i32 %14, 1
  %27 = icmp eq i32 %26, %9
  br i1 %27, label %91, label %12, !llvm.loop !75

28:                                               ; preds = %5
  br i1 %10, label %91, label %29

29:                                               ; preds = %28, %29
  %30 = phi ptr [ %51, %29 ], [ %1, %28 ]
  %31 = phi i32 [ %55, %29 ], [ 0, %28 ]
  %32 = getelementptr inbounds i8, ptr %30, i64 1
  %33 = load i8, ptr %30, align 1, !tbaa !54
  %34 = getelementptr inbounds i8, ptr %30, i64 2
  %35 = load i8, ptr %32, align 1, !tbaa !54
  %36 = getelementptr inbounds i8, ptr %30, i64 3
  %37 = load i8, ptr %34, align 1, !tbaa !54
  %38 = getelementptr inbounds i8, ptr %30, i64 1
  store i8 %37, ptr %30, align 1, !tbaa !54
  %39 = getelementptr inbounds i8, ptr %30, i64 4
  %40 = load i8, ptr %36, align 1, !tbaa !54
  %41 = getelementptr inbounds i8, ptr %30, i64 2
  store i8 %40, ptr %38, align 1, !tbaa !54
  %42 = getelementptr inbounds i8, ptr %30, i64 5
  %43 = load i8, ptr %39, align 1, !tbaa !54
  %44 = getelementptr inbounds i8, ptr %30, i64 3
  store i8 %43, ptr %41, align 1, !tbaa !54
  %45 = getelementptr inbounds i8, ptr %30, i64 6
  %46 = load i8, ptr %42, align 1, !tbaa !54
  %47 = getelementptr inbounds i8, ptr %30, i64 4
  store i8 %46, ptr %44, align 1, !tbaa !54
  %48 = getelementptr inbounds i8, ptr %30, i64 7
  %49 = load i8, ptr %45, align 1, !tbaa !54
  %50 = getelementptr inbounds i8, ptr %30, i64 5
  store i8 %49, ptr %47, align 1, !tbaa !54
  %51 = getelementptr i8, ptr %30, i64 8
  %52 = load i8, ptr %48, align 1, !tbaa !54
  %53 = getelementptr inbounds i8, ptr %30, i64 6
  store i8 %52, ptr %50, align 1, !tbaa !54
  %54 = getelementptr inbounds i8, ptr %30, i64 7
  store i8 %33, ptr %53, align 1, !tbaa !54
  store i8 %35, ptr %54, align 1, !tbaa !54
  %55 = add nuw i32 %31, 1
  %56 = icmp eq i32 %55, %9
  br i1 %56, label %91, label %29, !llvm.loop !76

57:                                               ; preds = %2
  %58 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %59 = load i8, ptr %58, align 1, !tbaa !50
  %60 = icmp eq i8 %59, 8
  %61 = load i32, ptr %0, align 8, !tbaa !53
  %62 = icmp eq i32 %61, 0
  br i1 %60, label %63, label %74

63:                                               ; preds = %57
  br i1 %62, label %91, label %64

64:                                               ; preds = %63, %64
  %65 = phi i32 [ %72, %64 ], [ 0, %63 ]
  %66 = phi ptr [ %69, %64 ], [ %1, %63 ]
  %67 = getelementptr inbounds i8, ptr %66, i64 1
  %68 = load i8, ptr %66, align 1, !tbaa !54
  %69 = getelementptr i8, ptr %66, i64 2
  %70 = load i8, ptr %67, align 1, !tbaa !54
  %71 = getelementptr inbounds i8, ptr %66, i64 1
  store i8 %70, ptr %66, align 1, !tbaa !54
  store i8 %68, ptr %71, align 1, !tbaa !54
  %72 = add nuw i32 %65, 1
  %73 = icmp eq i32 %72, %61
  br i1 %73, label %91, label %64, !llvm.loop !77

74:                                               ; preds = %57
  br i1 %62, label %91, label %75

75:                                               ; preds = %74, %75
  %76 = phi i32 [ %89, %75 ], [ 0, %74 ]
  %77 = phi ptr [ %85, %75 ], [ %1, %74 ]
  %78 = getelementptr inbounds i8, ptr %77, i64 1
  %79 = load i8, ptr %77, align 1, !tbaa !54
  %80 = getelementptr inbounds i8, ptr %77, i64 2
  %81 = load i8, ptr %78, align 1, !tbaa !54
  %82 = getelementptr inbounds i8, ptr %77, i64 3
  %83 = load i8, ptr %80, align 1, !tbaa !54
  %84 = getelementptr inbounds i8, ptr %77, i64 1
  store i8 %83, ptr %77, align 1, !tbaa !54
  %85 = getelementptr i8, ptr %77, i64 4
  %86 = load i8, ptr %82, align 1, !tbaa !54
  %87 = getelementptr inbounds i8, ptr %77, i64 2
  store i8 %86, ptr %84, align 1, !tbaa !54
  %88 = getelementptr inbounds i8, ptr %77, i64 3
  store i8 %79, ptr %87, align 1, !tbaa !54
  store i8 %81, ptr %88, align 1, !tbaa !54
  %89 = add nuw i32 %76, 1
  %90 = icmp eq i32 %89, %61
  br i1 %90, label %91, label %75, !llvm.loop !78

91:                                               ; preds = %75, %64, %29, %12, %74, %63, %28, %11, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_do_write_invert_alpha(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 2
  %4 = load i8, ptr %3, align 8, !tbaa !62
  switch i8 %4, label %64 [
    i8 6, label %5
    i8 4, label %34
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %7 = load i8, ptr %6, align 1, !tbaa !50
  %8 = icmp eq i8 %7, 8
  %9 = load i32, ptr %0, align 8, !tbaa !53
  %10 = icmp eq i32 %9, 0
  br i1 %8, label %11, label %21

11:                                               ; preds = %5
  br i1 %10, label %64, label %12

12:                                               ; preds = %11, %12
  %13 = phi ptr [ %16, %12 ], [ %1, %11 ]
  %14 = phi i32 [ %19, %12 ], [ 0, %11 ]
  %15 = getelementptr inbounds i8, ptr %13, i64 3
  %16 = getelementptr inbounds i8, ptr %13, i64 4
  %17 = load i8, ptr %15, align 1, !tbaa !54
  %18 = xor i8 %17, -1
  store i8 %18, ptr %15, align 1, !tbaa !54
  %19 = add nuw i32 %14, 1
  %20 = icmp eq i32 %19, %9
  br i1 %20, label %64, label %12, !llvm.loop !79

21:                                               ; preds = %5
  br i1 %10, label %64, label %22

22:                                               ; preds = %21, %22
  %23 = phi i32 [ %32, %22 ], [ 0, %21 ]
  %24 = phi ptr [ %29, %22 ], [ %1, %21 ]
  %25 = getelementptr inbounds i8, ptr %24, i64 6
  %26 = getelementptr inbounds i8, ptr %24, i64 7
  %27 = load i8, ptr %25, align 1, !tbaa !54
  %28 = xor i8 %27, -1
  store i8 %28, ptr %25, align 1, !tbaa !54
  %29 = getelementptr inbounds i8, ptr %24, i64 8
  %30 = load i8, ptr %26, align 1, !tbaa !54
  %31 = xor i8 %30, -1
  store i8 %31, ptr %26, align 1, !tbaa !54
  %32 = add nuw i32 %23, 1
  %33 = icmp eq i32 %32, %9
  br i1 %33, label %64, label %22, !llvm.loop !80

34:                                               ; preds = %2
  %35 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %36 = load i8, ptr %35, align 1, !tbaa !50
  %37 = icmp eq i8 %36, 8
  %38 = load i32, ptr %0, align 8, !tbaa !53
  %39 = icmp eq i32 %38, 0
  br i1 %37, label %40, label %51

40:                                               ; preds = %34
  br i1 %39, label %64, label %41

41:                                               ; preds = %40, %41
  %42 = phi i32 [ %49, %41 ], [ 0, %40 ]
  %43 = phi ptr [ %46, %41 ], [ %1, %40 ]
  %44 = getelementptr inbounds i8, ptr %43, i64 1
  %45 = getelementptr inbounds i8, ptr %43, i64 1
  %46 = getelementptr i8, ptr %43, i64 2
  %47 = load i8, ptr %44, align 1, !tbaa !54
  %48 = xor i8 %47, -1
  store i8 %48, ptr %45, align 1, !tbaa !54
  %49 = add nuw i32 %42, 1
  %50 = icmp eq i32 %49, %38
  br i1 %50, label %64, label %41, !llvm.loop !81

51:                                               ; preds = %34
  br i1 %39, label %64, label %52

52:                                               ; preds = %51, %52
  %53 = phi i32 [ %62, %52 ], [ 0, %51 ]
  %54 = phi ptr [ %59, %52 ], [ %1, %51 ]
  %55 = getelementptr inbounds i8, ptr %54, i64 2
  %56 = getelementptr inbounds i8, ptr %54, i64 3
  %57 = load i8, ptr %55, align 1, !tbaa !54
  %58 = xor i8 %57, -1
  store i8 %58, ptr %55, align 1, !tbaa !54
  %59 = getelementptr inbounds i8, ptr %54, i64 4
  %60 = load i8, ptr %56, align 1, !tbaa !54
  %61 = xor i8 %60, -1
  store i8 %61, ptr %56, align 1, !tbaa !54
  %62 = add nuw i32 %53, 1
  %63 = icmp eq i32 %62, %38
  br i1 %63, label %64, label %52, !llvm.loop !82

64:                                               ; preds = %52, %41, %22, %12, %51, %40, %21, %11, %2
  ret void
}

declare void @png_do_bgr(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @png_do_invert(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_do_write_intrapixel(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 2
  %4 = load i8, ptr %3, align 8, !tbaa !62
  %5 = and i8 %4, 2
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %71, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr %0, align 8, !tbaa !53
  %9 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %10 = load i8, ptr %9, align 1, !tbaa !50
  switch i8 %10, label %71 [
    i8 8, label %11
    i8 16, label %29
  ]

11:                                               ; preds = %7
  switch i8 %4, label %71 [
    i8 2, label %13
    i8 6, label %12
  ]

12:                                               ; preds = %11
  br label %13

13:                                               ; preds = %11, %12
  %14 = phi i64 [ 4, %12 ], [ 3, %11 ]
  %15 = icmp eq i32 %8, 0
  br i1 %15, label %71, label %16

16:                                               ; preds = %13, %16
  %17 = phi ptr [ %27, %16 ], [ %1, %13 ]
  %18 = phi i32 [ %26, %16 ], [ 0, %13 ]
  %19 = load i8, ptr %17, align 1, !tbaa !54
  %20 = getelementptr inbounds i8, ptr %17, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !54
  %22 = sub i8 %19, %21
  store i8 %22, ptr %17, align 1, !tbaa !54
  %23 = getelementptr inbounds i8, ptr %17, i64 2
  %24 = load i8, ptr %23, align 1, !tbaa !54
  %25 = sub i8 %24, %21
  store i8 %25, ptr %23, align 1, !tbaa !54
  %26 = add nuw i32 %18, 1
  %27 = getelementptr inbounds i8, ptr %17, i64 %14
  %28 = icmp eq i32 %26, %8
  br i1 %28, label %71, label %16, !llvm.loop !83

29:                                               ; preds = %7
  switch i8 %4, label %71 [
    i8 2, label %31
    i8 6, label %30
  ]

30:                                               ; preds = %29
  br label %31

31:                                               ; preds = %29, %30
  %32 = phi i64 [ 8, %30 ], [ 6, %29 ]
  %33 = icmp eq i32 %8, 0
  br i1 %33, label %71, label %34

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %69, %34 ], [ %1, %31 ]
  %36 = phi i32 [ %68, %34 ], [ 0, %31 ]
  %37 = load i8, ptr %35, align 1, !tbaa !54
  %38 = zext i8 %37 to i32
  %39 = shl nuw nsw i32 %38, 8
  %40 = getelementptr inbounds i8, ptr %35, i64 1
  %41 = load i8, ptr %40, align 1, !tbaa !54
  %42 = zext i8 %41 to i32
  %43 = or disjoint i32 %39, %42
  %44 = getelementptr inbounds i8, ptr %35, i64 2
  %45 = load i8, ptr %44, align 1, !tbaa !54
  %46 = zext i8 %45 to i32
  %47 = shl nuw nsw i32 %46, 8
  %48 = getelementptr inbounds i8, ptr %35, i64 3
  %49 = load i8, ptr %48, align 1, !tbaa !54
  %50 = zext i8 %49 to i32
  %51 = or disjoint i32 %47, %50
  %52 = getelementptr inbounds i8, ptr %35, i64 4
  %53 = load i8, ptr %52, align 1, !tbaa !54
  %54 = zext i8 %53 to i32
  %55 = shl nuw nsw i32 %54, 8
  %56 = getelementptr inbounds i8, ptr %35, i64 5
  %57 = load i8, ptr %56, align 1, !tbaa !54
  %58 = zext i8 %57 to i32
  %59 = or disjoint i32 %55, %58
  %60 = sub nsw i32 %43, %51
  %61 = sub nsw i32 %59, %51
  %62 = lshr i32 %60, 8
  %63 = trunc i32 %62 to i8
  store i8 %63, ptr %35, align 1, !tbaa !54
  %64 = trunc i32 %60 to i8
  store i8 %64, ptr %40, align 1, !tbaa !54
  %65 = lshr i32 %61, 8
  %66 = trunc i32 %65 to i8
  store i8 %66, ptr %52, align 1, !tbaa !54
  %67 = trunc i32 %61 to i8
  store i8 %67, ptr %56, align 1, !tbaa !54
  %68 = add nuw i32 %36, 1
  %69 = getelementptr inbounds i8, ptr %35, i64 %32
  %70 = icmp eq i32 %68, %8
  br i1 %70, label %71, label %34, !llvm.loop !84

71:                                               ; preds = %34, %16, %31, %13, %7, %11, %29, %2
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

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
!34 = !{!35, !39, i64 292}
!35 = !{!"png_struct_def", !36, i64 0, !38, i64 200, !38, i64 208, !38, i64 216, !38, i64 224, !38, i64 232, !38, i64 240, !38, i64 248, !38, i64 256, !38, i64 264, !38, i64 272, !36, i64 280, !36, i64 281, !39, i64 284, !39, i64 288, !39, i64 292, !40, i64 296, !38, i64 408, !39, i64 416, !39, i64 420, !39, i64 424, !39, i64 428, !39, i64 432, !39, i64 436, !39, i64 440, !39, i64 444, !39, i64 448, !39, i64 452, !39, i64 456, !39, i64 460, !39, i64 464, !39, i64 468, !39, i64 472, !39, i64 476, !41, i64 480, !39, i64 488, !39, i64 492, !39, i64 496, !38, i64 504, !38, i64 512, !38, i64 520, !38, i64 528, !38, i64 536, !38, i64 544, !41, i64 552, !39, i64 560, !39, i64 564, !38, i64 568, !42, i64 576, !39, i64 580, !42, i64 584, !36, i64 586, !36, i64 587, !36, i64 588, !36, i64 589, !36, i64 590, !36, i64 591, !36, i64 592, !36, i64 593, !36, i64 594, !36, i64 595, !36, i64 596, !36, i64 597, !36, i64 598, !36, i64 599, !36, i64 600, !42, i64 606, !36, i64 608, !39, i64 612, !43, i64 616, !43, i64 626, !38, i64 640, !39, i64 648, !39, i64 652, !39, i64 656, !39, i64 660, !39, i64 664, !38, i64 672, !38, i64 680, !38, i64 688, !38, i64 696, !38, i64 704, !38, i64 712, !44, i64 720, !44, i64 725, !38, i64 736, !43, i64 744, !38, i64 760, !38, i64 768, !38, i64 776, !38, i64 784, !38, i64 792, !38, i64 800, !38, i64 808, !38, i64 816, !38, i64 824, !39, i64 832, !39, i64 836, !41, i64 840, !41, i64 848, !41, i64 856, !41, i64 864, !39, i64 872, !39, i64 876, !38, i64 880, !38, i64 888, !38, i64 896, !36, i64 904, !36, i64 905, !38, i64 912, !38, i64 920, !38, i64 928, !38, i64 936, !38, i64 944, !36, i64 952, !39, i64 984, !38, i64 992, !38, i64 1000, !39, i64 1008, !38, i64 1016, !36, i64 1024, !36, i64 1025, !36, i64 1026, !42, i64 1028, !42, i64 1030, !39, i64 1032, !36, i64 1036, !38, i64 1040, !38, i64 1048, !38, i64 1056, !38, i64 1064, !38, i64 1072, !38, i64 1080, !38, i64 1088, !36, i64 1096, !39, i64 1100, !39, i64 1104, !39, i64 1108, !41, i64 1112, !45, i64 1120, !41, i64 1152, !38, i64 1160, !39, i64 1168, !38, i64 1176, !36, i64 1184}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!"any pointer", !36, i64 0}
!39 = !{!"int", !36, i64 0}
!40 = !{!"z_stream_s", !38, i64 0, !39, i64 8, !41, i64 16, !38, i64 24, !39, i64 32, !41, i64 40, !38, i64 48, !38, i64 56, !38, i64 64, !38, i64 72, !38, i64 80, !39, i64 88, !41, i64 96, !41, i64 104}
!41 = !{!"long", !36, i64 0}
!42 = !{!"short", !36, i64 0}
!43 = !{!"png_color_16_struct", !36, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !42, i64 8}
!44 = !{!"png_color_8_struct", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4}
!45 = !{!"png_unknown_chunk_t", !36, i64 0, !38, i64 8, !41, i64 16, !36, i64 24}
!46 = !{!35, !38, i64 264}
!47 = !{!35, !38, i64 512}
!48 = !{!35, !39, i64 288}
!49 = !{!35, !36, i64 592}
!50 = !{!51, !36, i64 17}
!51 = !{!"png_row_info_struct", !39, i64 0, !41, i64 8, !36, i64 16, !36, i64 17, !36, i64 18, !36, i64 19}
!52 = !{!51, !36, i64 18}
!53 = !{!51, !39, i64 0}
!54 = !{!36, !36, i64 0}
!55 = distinct !{!55, !56, !57}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = distinct !{!58, !56, !57}
!59 = distinct !{!59, !56, !57}
!60 = !{!51, !36, i64 19}
!61 = !{!51, !41, i64 8}
!62 = !{!51, !36, i64 16}
!63 = !{!44, !36, i64 0}
!64 = !{!39, !39, i64 0}
!65 = !{!44, !36, i64 1}
!66 = !{!44, !36, i64 2}
!67 = !{!44, !36, i64 3}
!68 = !{!44, !36, i64 4}
!69 = distinct !{!69, !56, !57}
!70 = distinct !{!70, !56, !57}
!71 = distinct !{!71, !56, !57}
!72 = distinct !{!72, !56, !57}
!73 = distinct !{!73, !56, !57}
!74 = distinct !{!74, !56, !57}
!75 = distinct !{!75, !56, !57}
!76 = distinct !{!76, !56, !57}
!77 = distinct !{!77, !56, !57}
!78 = distinct !{!78, !56, !57}
!79 = distinct !{!79, !56, !57}
!80 = distinct !{!80, !56, !57}
!81 = distinct !{!81, !56, !57}
!82 = distinct !{!82, !56, !57}
!83 = distinct !{!83, !56, !57}
!84 = distinct !{!84, !56, !57}
