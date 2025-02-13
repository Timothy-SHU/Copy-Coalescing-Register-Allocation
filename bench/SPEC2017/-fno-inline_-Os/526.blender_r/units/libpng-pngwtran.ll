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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_do_write_transformations(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %107, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %6 = load i32, ptr %5, align 4, !tbaa !34
  %7 = and i32 %6, 1048576
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 39
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  %16 = getelementptr inbounds i8, ptr %15, i64 1
  tail call void %11(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %16) #4
  %17 = load i32, ptr %5, align 4, !tbaa !34
  br label %18

18:                                               ; preds = %9, %13, %4
  %19 = phi i32 [ %6, %9 ], [ %17, %13 ], [ %6, %4 ]
  %20 = and i32 %19, 32768
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 39
  %24 = load ptr, ptr %23, align 8, !tbaa !47
  %25 = getelementptr inbounds i8, ptr %24, i64 1
  %26 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %27 = load i32, ptr %26, align 8, !tbaa !48
  %28 = lshr i32 %27, 7
  %29 = and i32 %28, 1
  %30 = xor i32 %29, 1
  tail call void @png_do_strip_channel(ptr noundef %1, ptr noundef nonnull %25, i32 noundef %30) #4
  %31 = load i32, ptr %5, align 4, !tbaa !34
  br label %32

32:                                               ; preds = %22, %18
  %33 = phi i32 [ %31, %22 ], [ %19, %18 ]
  %34 = and i32 %33, 65536
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 39
  %38 = load ptr, ptr %37, align 8, !tbaa !47
  %39 = getelementptr inbounds i8, ptr %38, i64 1
  tail call void @png_do_packswap(ptr noundef %1, ptr noundef nonnull %39) #4
  %40 = load i32, ptr %5, align 4, !tbaa !34
  br label %41

41:                                               ; preds = %36, %32
  %42 = phi i32 [ %40, %36 ], [ %33, %32 ]
  %43 = and i32 %42, 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 39
  %47 = load ptr, ptr %46, align 8, !tbaa !47
  %48 = getelementptr inbounds i8, ptr %47, i64 1
  %49 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 57
  %50 = load i8, ptr %49, align 8, !tbaa !49
  %51 = zext i8 %50 to i32
  tail call void @png_do_pack(ptr noundef %1, ptr noundef nonnull %48, i32 noundef %51) #5
  %52 = load i32, ptr %5, align 4, !tbaa !34
  br label %53

53:                                               ; preds = %45, %41
  %54 = phi i32 [ %52, %45 ], [ %42, %41 ]
  %55 = and i32 %54, 16
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 39
  %59 = load ptr, ptr %58, align 8, !tbaa !47
  %60 = getelementptr inbounds i8, ptr %59, i64 1
  tail call void @png_do_swap(ptr noundef %1, ptr noundef nonnull %60) #4
  %61 = load i32, ptr %5, align 4, !tbaa !34
  br label %62

62:                                               ; preds = %57, %53
  %63 = phi i32 [ %61, %57 ], [ %54, %53 ]
  %64 = and i32 %63, 8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 39
  %68 = load ptr, ptr %67, align 8, !tbaa !47
  %69 = getelementptr inbounds i8, ptr %68, i64 1
  %70 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 84
  tail call void @png_do_shift(ptr noundef %1, ptr noundef nonnull %69, ptr noundef nonnull %70) #5
  %71 = load i32, ptr %5, align 4, !tbaa !34
  br label %72

72:                                               ; preds = %66, %62
  %73 = phi i32 [ %71, %66 ], [ %63, %62 ]
  %74 = and i32 %73, 131072
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 39
  %78 = load ptr, ptr %77, align 8, !tbaa !47
  %79 = getelementptr inbounds i8, ptr %78, i64 1
  tail call void @png_do_write_swap_alpha(ptr noundef %1, ptr noundef nonnull %79) #5
  %80 = load i32, ptr %5, align 4, !tbaa !34
  br label %81

81:                                               ; preds = %76, %72
  %82 = phi i32 [ %80, %76 ], [ %73, %72 ]
  %83 = and i32 %82, 524288
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 39
  %87 = load ptr, ptr %86, align 8, !tbaa !47
  %88 = getelementptr inbounds i8, ptr %87, i64 1
  tail call void @png_do_write_invert_alpha(ptr noundef %1, ptr noundef nonnull %88) #5
  %89 = load i32, ptr %5, align 4, !tbaa !34
  br label %90

90:                                               ; preds = %85, %81
  %91 = phi i32 [ %89, %85 ], [ %82, %81 ]
  %92 = and i32 %91, 1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 39
  %96 = load ptr, ptr %95, align 8, !tbaa !47
  %97 = getelementptr inbounds i8, ptr %96, i64 1
  tail call void @png_do_bgr(ptr noundef %1, ptr noundef nonnull %97) #4
  %98 = load i32, ptr %5, align 4, !tbaa !34
  br label %99

99:                                               ; preds = %94, %90
  %100 = phi i32 [ %98, %94 ], [ %91, %90 ]
  %101 = and i32 %100, 32
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 39
  %105 = load ptr, ptr %104, align 8, !tbaa !47
  %106 = getelementptr inbounds i8, ptr %105, i64 1
  tail call void @png_do_invert(ptr noundef %1, ptr noundef nonnull %106) #4
  br label %107

107:                                              ; preds = %2, %103, %99
  ret void
}

; Function Attrs: optsize
declare void @png_do_strip_channel(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @png_do_packswap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_do_pack(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %5 = load i8, ptr %4, align 1, !tbaa !50
  %6 = icmp eq i8 %5, 8
  br i1 %6, label %7, label %116

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 4
  %9 = load i8, ptr %8, align 2, !tbaa !52
  %10 = icmp eq i8 %9, 1
  br i1 %10, label %11, label %116

11:                                               ; preds = %7
  switch i32 %2, label %96 [
    i32 1, label %12
    i32 2, label %39
    i32 4, label %70
  ]

12:                                               ; preds = %11
  %13 = load i32, ptr %0, align 8, !tbaa !53
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %96, label %15

15:                                               ; preds = %12, %34
  %16 = phi ptr [ %28, %34 ], [ %1, %12 ]
  %17 = phi ptr [ %36, %34 ], [ %1, %12 ]
  %18 = phi i32 [ %37, %34 ], [ 0, %12 ]
  br label %19

19:                                               ; preds = %15, %30
  %20 = phi ptr [ %28, %30 ], [ %16, %15 ]
  %21 = phi i32 [ %31, %30 ], [ 128, %15 ]
  %22 = phi i32 [ %27, %30 ], [ 0, %15 ]
  %23 = phi i32 [ %32, %30 ], [ %18, %15 ]
  %24 = load i8, ptr %20, align 1, !tbaa !54
  %25 = icmp eq i8 %24, 0
  %26 = select i1 %25, i32 0, i32 %21
  %27 = or i32 %26, %22
  %28 = getelementptr inbounds i8, ptr %20, i64 1
  %29 = icmp ugt i32 %21, 1
  br i1 %29, label %30, label %34

30:                                               ; preds = %19
  %31 = lshr i32 %21, 1
  %32 = add nuw i32 %23, 1
  %33 = icmp eq i32 %32, %13
  br i1 %33, label %92, label %19, !llvm.loop !55

34:                                               ; preds = %19
  %35 = trunc i32 %27 to i8
  store i8 %35, ptr %17, align 1, !tbaa !54
  %36 = getelementptr inbounds i8, ptr %17, i64 1
  %37 = add nuw i32 %23, 1
  %38 = icmp eq i32 %37, %13
  br i1 %38, label %96, label %15, !llvm.loop !55

39:                                               ; preds = %11
  %40 = load i32, ptr %0, align 8, !tbaa !53
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %96, label %42

42:                                               ; preds = %39, %62
  %43 = phi i32 [ %66, %62 ], [ 0, %39 ]
  %44 = phi ptr [ %64, %62 ], [ %1, %39 ]
  %45 = phi ptr [ %65, %62 ], [ %1, %39 ]
  br label %46

46:                                               ; preds = %42, %57
  %47 = phi i32 [ %60, %57 ], [ %43, %42 ]
  %48 = phi i32 [ %55, %57 ], [ 0, %42 ]
  %49 = phi i32 [ %58, %57 ], [ 6, %42 ]
  %50 = phi ptr [ %59, %57 ], [ %45, %42 ]
  %51 = load i8, ptr %50, align 1, !tbaa !54
  %52 = and i8 %51, 3
  %53 = zext nneg i8 %52 to i32
  %54 = shl i32 %53, %49
  %55 = or i32 %54, %48
  %56 = icmp eq i32 %49, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %46
  %58 = add nsw i32 %49, -2
  %59 = getelementptr inbounds i8, ptr %50, i64 1
  %60 = add nuw i32 %47, 1
  %61 = icmp eq i32 %60, %40
  br i1 %61, label %68, label %46, !llvm.loop !57

62:                                               ; preds = %46
  %63 = trunc i32 %55 to i8
  store i8 %63, ptr %44, align 1, !tbaa !54
  %64 = getelementptr inbounds i8, ptr %44, i64 1
  %65 = getelementptr inbounds i8, ptr %50, i64 1
  %66 = add nuw i32 %47, 1
  %67 = icmp eq i32 %66, %40
  br i1 %67, label %96, label %42, !llvm.loop !57

68:                                               ; preds = %57
  %69 = icmp eq i32 %58, 6
  br i1 %69, label %96, label %92

70:                                               ; preds = %11
  %71 = load i32, ptr %0, align 8, !tbaa !53
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %96, label %73

73:                                               ; preds = %70, %81
  %74 = phi i32 [ %88, %81 ], [ 0, %70 ]
  %75 = phi ptr [ %86, %81 ], [ %1, %70 ]
  %76 = phi ptr [ %87, %81 ], [ %1, %70 ]
  %77 = load i8, ptr %76, align 1, !tbaa !54
  %78 = shl i8 %77, 4
  %79 = or disjoint i32 %74, 1
  %80 = icmp eq i32 %79, %71
  br i1 %80, label %90, label %81, !llvm.loop !58

81:                                               ; preds = %73
  %82 = getelementptr inbounds i8, ptr %76, i64 1
  %83 = load i8, ptr %82, align 1, !tbaa !54
  %84 = and i8 %83, 15
  %85 = or disjoint i8 %84, %78
  store i8 %85, ptr %75, align 1, !tbaa !54
  %86 = getelementptr inbounds i8, ptr %75, i64 1
  %87 = getelementptr inbounds i8, ptr %76, i64 2
  %88 = add nuw i32 %74, 2
  %89 = icmp eq i32 %88, %71
  br i1 %89, label %96, label %73, !llvm.loop !58

90:                                               ; preds = %73
  %91 = zext i8 %78 to i32
  br label %92

92:                                               ; preds = %30, %90, %68
  %93 = phi i32 [ %55, %68 ], [ %91, %90 ], [ %27, %30 ]
  %94 = phi ptr [ %44, %68 ], [ %75, %90 ], [ %17, %30 ]
  %95 = trunc i32 %93 to i8
  store i8 %95, ptr %94, align 1, !tbaa !54
  br label %96

96:                                               ; preds = %81, %62, %34, %92, %70, %39, %12, %68, %11
  %97 = trunc i32 %2 to i8
  store i8 %97, ptr %4, align 1, !tbaa !50
  %98 = load i8, ptr %8, align 2, !tbaa !52
  %99 = mul i8 %98, %97
  %100 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 5
  store i8 %99, ptr %100, align 1, !tbaa !59
  %101 = icmp ugt i8 %99, 7
  %102 = load i32, ptr %0, align 8, !tbaa !53
  %103 = zext i32 %102 to i64
  br i1 %101, label %104, label %108

104:                                              ; preds = %96
  %105 = lshr i8 %99, 3
  %106 = zext nneg i8 %105 to i64
  %107 = mul nuw nsw i64 %103, %106
  br label %113

108:                                              ; preds = %96
  %109 = zext nneg i8 %99 to i64
  %110 = mul nuw nsw i64 %103, %109
  %111 = add nuw nsw i64 %110, 7
  %112 = lshr i64 %111, 3
  br label %113

113:                                              ; preds = %108, %104
  %114 = phi i64 [ %107, %104 ], [ %112, %108 ]
  %115 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  store i64 %114, ptr %115, align 8, !tbaa !60
  br label %116

116:                                              ; preds = %113, %7, %3
  ret void
}

; Function Attrs: optsize
declare void @png_do_swap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_do_shift(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = alloca [4 x i32], align 16
  %5 = alloca [4 x i32], align 16
  %6 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 2
  %7 = load i8, ptr %6, align 8, !tbaa !61
  %8 = icmp eq i8 %7, 3
  br i1 %8, label %175, label %9

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  %10 = and i8 %7, 2
  %11 = icmp eq i8 %10, 0
  %12 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %13 = load i8, ptr %12, align 1, !tbaa !50
  %14 = zext i8 %13 to i32
  br i1 %11, label %29, label %15

15:                                               ; preds = %9
  %16 = load i8, ptr %2, align 1, !tbaa !62
  %17 = getelementptr inbounds %struct.png_color_8_struct, ptr %2, i64 0, i32 1
  %18 = load i8, ptr %17, align 1, !tbaa !63
  %19 = zext i8 %18 to i32
  %20 = sub nsw i32 %14, %19
  %21 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 1
  store i32 %20, ptr %21, align 4, !tbaa !64
  %22 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 1
  store i32 %19, ptr %22, align 4, !tbaa !64
  %23 = getelementptr inbounds %struct.png_color_8_struct, ptr %2, i64 0, i32 2
  %24 = load i8, ptr %23, align 1, !tbaa !65
  %25 = zext i8 %24 to i32
  %26 = sub nsw i32 %14, %25
  %27 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 2
  store i32 %26, ptr %27, align 8, !tbaa !64
  %28 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 2
  store i32 %25, ptr %28, align 8, !tbaa !64
  br label %32

29:                                               ; preds = %9
  %30 = getelementptr inbounds %struct.png_color_8_struct, ptr %2, i64 0, i32 3
  %31 = load i8, ptr %30, align 1, !tbaa !66
  br label %32

32:                                               ; preds = %29, %15
  %33 = phi i8 [ %31, %29 ], [ %16, %15 ]
  %34 = phi i32 [ 1, %29 ], [ 3, %15 ]
  %35 = zext i8 %33 to i32
  %36 = sub nsw i32 %14, %35
  store i32 %36, ptr %4, align 16
  store i32 %35, ptr %5, align 16
  %37 = and i8 %7, 4
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %32
  %40 = zext i8 %13 to i32
  %41 = getelementptr inbounds %struct.png_color_8_struct, ptr %2, i64 0, i32 4
  %42 = load i8, ptr %41, align 1, !tbaa !67
  %43 = zext i8 %42 to i32
  %44 = sub nsw i32 %40, %43
  %45 = zext nneg i32 %34 to i64
  %46 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 %45
  store i32 %44, ptr %46, align 4, !tbaa !64
  %47 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 %45
  store i32 %43, ptr %47, align 4, !tbaa !64
  %48 = add nuw nsw i32 %34, 1
  br label %49

49:                                               ; preds = %39, %32
  %50 = phi i32 [ %48, %39 ], [ %34, %32 ]
  %51 = icmp ult i8 %13, 8
  br i1 %51, label %52, label %95

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  %54 = load i64, ptr %53, align 8, !tbaa !60
  %55 = getelementptr inbounds %struct.png_color_8_struct, ptr %2, i64 0, i32 3
  %56 = load i8, ptr %55, align 1, !tbaa !66
  %57 = icmp eq i8 %56, 1
  %58 = icmp eq i8 %13, 2
  %59 = and i1 %58, %57
  %60 = icmp eq i8 %13, 4
  %61 = icmp eq i8 %56, 3
  %62 = and i1 %60, %61
  %63 = select i1 %62, i32 17, i32 255
  %64 = select i1 %59, i32 85, i32 %63
  %65 = icmp eq i64 %54, 0
  br i1 %65, label %174, label %66

66:                                               ; preds = %52
  %67 = icmp eq i8 %13, 0
  %68 = icmp sgt i32 %36, 0
  br label %69

69:                                               ; preds = %66, %91
  %70 = phi ptr [ %1, %66 ], [ %93, %91 ]
  %71 = phi i64 [ 0, %66 ], [ %92, %91 ]
  %72 = load i8, ptr %70, align 1, !tbaa !54
  store i8 0, ptr %70, align 1, !tbaa !54
  br i1 %67, label %91, label %73

73:                                               ; preds = %69
  %74 = zext i8 %72 to i32
  br i1 %68, label %75, label %83

75:                                               ; preds = %73, %75
  %76 = phi i32 [ %81, %75 ], [ %36, %73 ]
  %77 = phi i8 [ %80, %75 ], [ 0, %73 ]
  %78 = shl i32 %74, %76
  %79 = trunc i32 %78 to i8
  %80 = or i8 %77, %79
  %81 = sub nsw i32 %76, %35
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %75, label %83, !llvm.loop !68

83:                                               ; preds = %75, %73
  %84 = phi i8 [ 0, %73 ], [ %80, %75 ]
  %85 = phi i32 [ %36, %73 ], [ %81, %75 ]
  %86 = sub nsw i32 0, %85
  %87 = lshr i32 %74, %86
  %88 = and i32 %87, %64
  %89 = trunc i32 %88 to i8
  %90 = or i8 %84, %89
  store i8 %90, ptr %70, align 1, !tbaa !54
  br label %91

91:                                               ; preds = %83, %69
  %92 = add nuw i64 %71, 1
  %93 = getelementptr inbounds i8, ptr %70, i64 1
  %94 = icmp eq i64 %92, %54
  br i1 %94, label %174, label %69, !llvm.loop !69

95:                                               ; preds = %49
  %96 = icmp eq i8 %13, 8
  %97 = load i32, ptr %0, align 8, !tbaa !53
  %98 = mul i32 %97, %50
  %99 = icmp eq i32 %98, 0
  br i1 %96, label %100, label %135

100:                                              ; preds = %95
  br i1 %99, label %174, label %101

101:                                              ; preds = %100, %131
  %102 = phi ptr [ %133, %131 ], [ %1, %100 ]
  %103 = phi i32 [ %132, %131 ], [ 0, %100 ]
  %104 = urem i32 %103, %50
  %105 = load i8, ptr %102, align 1, !tbaa !54
  store i8 0, ptr %102, align 1, !tbaa !54
  %106 = zext nneg i32 %104 to i64
  %107 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 %106
  %108 = load i32, ptr %107, align 4, !tbaa !64
  %109 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 %106
  %110 = load i32, ptr %109, align 4, !tbaa !64
  %111 = sub nsw i32 0, %110
  %112 = icmp sgt i32 %108, %111
  br i1 %112, label %113, label %131

113:                                              ; preds = %101
  %114 = zext i8 %105 to i32
  %115 = icmp sgt i32 %108, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %113, %116
  %117 = phi i32 [ %122, %116 ], [ %108, %113 ]
  %118 = phi i8 [ %121, %116 ], [ 0, %113 ]
  %119 = shl i32 %114, %117
  %120 = trunc i32 %119 to i8
  %121 = or i8 %118, %120
  %122 = sub nsw i32 %117, %110
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %116, label %124, !llvm.loop !70

124:                                              ; preds = %116, %113
  %125 = phi i8 [ 0, %113 ], [ %121, %116 ]
  %126 = phi i32 [ %108, %113 ], [ %122, %116 ]
  %127 = sub nsw i32 0, %126
  %128 = lshr i32 %114, %127
  %129 = trunc i32 %128 to i8
  %130 = or i8 %125, %129
  store i8 %130, ptr %102, align 1, !tbaa !54
  br label %131

131:                                              ; preds = %124, %101
  %132 = add nuw i32 %103, 1
  %133 = getelementptr inbounds i8, ptr %102, i64 1
  %134 = icmp eq i32 %132, %98
  br i1 %134, label %174, label %101, !llvm.loop !71

135:                                              ; preds = %95
  br i1 %99, label %174, label %136

136:                                              ; preds = %135, %166
  %137 = phi i32 [ %172, %166 ], [ 0, %135 ]
  %138 = phi ptr [ %171, %166 ], [ %1, %135 ]
  %139 = urem i32 %137, %50
  %140 = getelementptr inbounds i8, ptr %138, i64 1
  %141 = zext nneg i32 %139 to i64
  %142 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 %141
  %143 = load i32, ptr %142, align 4, !tbaa !64
  %144 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 %141
  %145 = load i32, ptr %144, align 4, !tbaa !64
  %146 = sub nsw i32 0, %145
  %147 = icmp sgt i32 %143, %146
  br i1 %147, label %148, label %166

148:                                              ; preds = %136
  %149 = load i8, ptr %138, align 1, !tbaa !54
  %150 = zext i8 %149 to i32
  %151 = shl nuw nsw i32 %150, 8
  %152 = load i8, ptr %140, align 1, !tbaa !54
  %153 = zext i8 %152 to i32
  %154 = or disjoint i32 %151, %153
  br label %155

155:                                              ; preds = %148, %155
  %156 = phi i32 [ %143, %148 ], [ %165, %155 ]
  %157 = phi i16 [ 0, %148 ], [ %164, %155 ]
  %158 = icmp sgt i32 %156, 0
  %159 = shl i32 %154, %156
  %160 = sub nsw i32 0, %156
  %161 = lshr i32 %154, %160
  %162 = select i1 %158, i32 %159, i32 %161
  %163 = trunc i32 %162 to i16
  %164 = or i16 %157, %163
  %165 = sub nsw i32 %156, %145
  br i1 %158, label %155, label %166, !llvm.loop !72

166:                                              ; preds = %155, %136
  %167 = phi i16 [ 0, %136 ], [ %164, %155 ]
  %168 = lshr i16 %167, 8
  %169 = trunc i16 %168 to i8
  store i8 %169, ptr %138, align 1, !tbaa !54
  %170 = trunc i16 %167 to i8
  %171 = getelementptr inbounds i8, ptr %138, i64 2
  store i8 %170, ptr %140, align 1, !tbaa !54
  %172 = add nuw i32 %137, 1
  %173 = icmp eq i32 %172, %98
  br i1 %173, label %174, label %136, !llvm.loop !73

174:                                              ; preds = %166, %131, %91, %135, %100, %52
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  br label %175

175:                                              ; preds = %174, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_do_write_swap_alpha(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 2
  %4 = load i8, ptr %3, align 8, !tbaa !61
  switch i8 %4, label %54 [
    i8 6, label %5
    i8 4, label %29
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %7 = load i8, ptr %6, align 1, !tbaa !50
  %8 = icmp eq i8 %7, 8
  %9 = load i32, ptr %0, align 8, !tbaa !53
  %10 = icmp eq i32 %9, 0
  br i1 %8, label %11, label %20

11:                                               ; preds = %5
  br i1 %10, label %54, label %12

12:                                               ; preds = %11, %12
  %13 = phi ptr [ %15, %12 ], [ %1, %11 ]
  %14 = phi i32 [ %18, %12 ], [ 0, %11 ]
  %15 = getelementptr i8, ptr %13, i64 4
  %16 = load <4 x i8>, ptr %13, align 1, !tbaa !54
  %17 = shufflevector <4 x i8> %16, <4 x i8> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i8> %17, ptr %13, align 1, !tbaa !54
  %18 = add nuw i32 %14, 1
  %19 = icmp eq i32 %18, %9
  br i1 %19, label %54, label %12, !llvm.loop !74

20:                                               ; preds = %5
  br i1 %10, label %54, label %21

21:                                               ; preds = %20, %21
  %22 = phi ptr [ %24, %21 ], [ %1, %20 ]
  %23 = phi i32 [ %27, %21 ], [ 0, %20 ]
  %24 = getelementptr i8, ptr %22, i64 8
  %25 = load <8 x i8>, ptr %22, align 1, !tbaa !54
  %26 = shufflevector <8 x i8> %25, <8 x i8> poison, <8 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1>
  store <8 x i8> %26, ptr %22, align 1, !tbaa !54
  %27 = add nuw i32 %23, 1
  %28 = icmp eq i32 %27, %9
  br i1 %28, label %54, label %21, !llvm.loop !75

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %31 = load i8, ptr %30, align 1, !tbaa !50
  %32 = icmp eq i8 %31, 8
  %33 = load i32, ptr %0, align 8, !tbaa !53
  %34 = icmp eq i32 %33, 0
  br i1 %32, label %35, label %45

35:                                               ; preds = %29
  br i1 %34, label %54, label %36

36:                                               ; preds = %35, %36
  %37 = phi i32 [ %43, %36 ], [ 0, %35 ]
  %38 = phi ptr [ %41, %36 ], [ %1, %35 ]
  %39 = getelementptr inbounds i8, ptr %38, i64 1
  %40 = load i8, ptr %38, align 1, !tbaa !54
  %41 = getelementptr i8, ptr %38, i64 2
  %42 = load i8, ptr %39, align 1, !tbaa !54
  store i8 %42, ptr %38, align 1, !tbaa !54
  store i8 %40, ptr %39, align 1, !tbaa !54
  %43 = add nuw i32 %37, 1
  %44 = icmp eq i32 %43, %33
  br i1 %44, label %54, label %36, !llvm.loop !76

45:                                               ; preds = %29
  br i1 %34, label %54, label %46

46:                                               ; preds = %45, %46
  %47 = phi i32 [ %52, %46 ], [ 0, %45 ]
  %48 = phi ptr [ %49, %46 ], [ %1, %45 ]
  %49 = getelementptr i8, ptr %48, i64 4
  %50 = load <4 x i8>, ptr %48, align 1, !tbaa !54
  %51 = shufflevector <4 x i8> %50, <4 x i8> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i8> %51, ptr %48, align 1, !tbaa !54
  %52 = add nuw i32 %47, 1
  %53 = icmp eq i32 %52, %33
  br i1 %53, label %54, label %46, !llvm.loop !77

54:                                               ; preds = %46, %36, %21, %12, %45, %35, %20, %11, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_do_write_invert_alpha(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 2
  %4 = load i8, ptr %3, align 8, !tbaa !61
  switch i8 %4, label %63 [
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
  br i1 %10, label %63, label %12

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
  br i1 %20, label %63, label %12, !llvm.loop !78

21:                                               ; preds = %5
  br i1 %10, label %63, label %22

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
  br i1 %33, label %63, label %22, !llvm.loop !79

34:                                               ; preds = %2
  %35 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %36 = load i8, ptr %35, align 1, !tbaa !50
  %37 = icmp eq i8 %36, 8
  %38 = load i32, ptr %0, align 8, !tbaa !53
  %39 = icmp eq i32 %38, 0
  br i1 %37, label %40, label %50

40:                                               ; preds = %34
  br i1 %39, label %63, label %41

41:                                               ; preds = %40, %41
  %42 = phi i32 [ %48, %41 ], [ 0, %40 ]
  %43 = phi ptr [ %45, %41 ], [ %1, %40 ]
  %44 = getelementptr inbounds i8, ptr %43, i64 1
  %45 = getelementptr i8, ptr %43, i64 2
  %46 = load i8, ptr %44, align 1, !tbaa !54
  %47 = xor i8 %46, -1
  store i8 %47, ptr %44, align 1, !tbaa !54
  %48 = add nuw i32 %42, 1
  %49 = icmp eq i32 %48, %38
  br i1 %49, label %63, label %41, !llvm.loop !80

50:                                               ; preds = %34
  br i1 %39, label %63, label %51

51:                                               ; preds = %50, %51
  %52 = phi i32 [ %61, %51 ], [ 0, %50 ]
  %53 = phi ptr [ %58, %51 ], [ %1, %50 ]
  %54 = getelementptr inbounds i8, ptr %53, i64 2
  %55 = getelementptr inbounds i8, ptr %53, i64 3
  %56 = load i8, ptr %54, align 1, !tbaa !54
  %57 = xor i8 %56, -1
  store i8 %57, ptr %54, align 1, !tbaa !54
  %58 = getelementptr inbounds i8, ptr %53, i64 4
  %59 = load i8, ptr %55, align 1, !tbaa !54
  %60 = xor i8 %59, -1
  store i8 %60, ptr %55, align 1, !tbaa !54
  %61 = add nuw i32 %52, 1
  %62 = icmp eq i32 %61, %38
  br i1 %62, label %63, label %51, !llvm.loop !81

63:                                               ; preds = %51, %41, %22, %12, %50, %40, %21, %11, %2
  ret void
}

; Function Attrs: optsize
declare void @png_do_bgr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @png_do_invert(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_do_write_intrapixel(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 2
  %4 = load i8, ptr %3, align 8, !tbaa !61
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
  br i1 %28, label %71, label %16, !llvm.loop !82

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
  br i1 %70, label %71, label %34, !llvm.loop !83

71:                                               ; preds = %34, %16, %31, %13, %7, %11, %29, %2
  ret void
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }
attributes #6 = { nounwind }

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
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.mustprogress"}
!57 = distinct !{!57, !56}
!58 = distinct !{!58, !56}
!59 = !{!51, !36, i64 19}
!60 = !{!51, !41, i64 8}
!61 = !{!51, !36, i64 16}
!62 = !{!44, !36, i64 0}
!63 = !{!44, !36, i64 1}
!64 = !{!39, !39, i64 0}
!65 = !{!44, !36, i64 2}
!66 = !{!44, !36, i64 3}
!67 = !{!44, !36, i64 4}
!68 = distinct !{!68, !56}
!69 = distinct !{!69, !56}
!70 = distinct !{!70, !56}
!71 = distinct !{!71, !56}
!72 = distinct !{!72, !56}
!73 = distinct !{!73, !56}
!74 = distinct !{!74, !56}
!75 = distinct !{!75, !56}
!76 = distinct !{!76, !56}
!77 = distinct !{!77, !56}
!78 = distinct !{!78, !56}
!79 = distinct !{!79, !56}
!80 = distinct !{!80, !56}
!81 = distinct !{!81, !56}
!82 = distinct !{!82, !56}
!83 = distinct !{!83, !56}
