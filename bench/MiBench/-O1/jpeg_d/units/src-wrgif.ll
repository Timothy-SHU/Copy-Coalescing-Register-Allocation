; ModuleID = 'src/wrgif.c'
source_filename = "src/wrgif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gif_dest_struct = type { %struct.djpeg_dest_struct, ptr, i32, i16, i32, i64, i32, i16, i32, i16, i16, i16, ptr, ptr, i32, [256 x i8] }
%struct.djpeg_dest_struct = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @jinit_write_gif(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef 1, i64 noundef 384) #6
  %6 = getelementptr inbounds %struct.gif_dest_struct, ptr %5, i64 0, i32 1
  store ptr %0, ptr %6, align 8, !tbaa !16
  store ptr @start_output_gif, ptr %5, align 8, !tbaa !19
  %7 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %5, i64 0, i32 1
  store ptr @put_pixel_rows, ptr %7, align 8, !tbaa !20
  %8 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %5, i64 0, i32 2
  store ptr @finish_output_gif, ptr %8, align 8, !tbaa !21
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 10
  %10 = load i32, ptr %9, align 8, !tbaa !22
  %11 = add i32 %10, -1
  %12 = icmp ult i32 %11, 2
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load ptr, ptr %0, align 8, !tbaa !23
  %15 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %14, i64 0, i32 5
  store i32 1014, ptr %15, align 8, !tbaa !24
  %16 = load ptr, ptr %14, align 8, !tbaa !26
  tail call void %16(ptr noundef nonnull %0) #6
  br label %17

17:                                               ; preds = %1, %13
  %18 = load i32, ptr %9, align 8, !tbaa !22
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 42
  %22 = load i32, ptr %21, align 8, !tbaa !27
  %23 = icmp sgt i32 %22, 8
  br i1 %23, label %24, label %30

24:                                               ; preds = %20, %17
  %25 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 19
  store i32 1, ptr %25, align 4, !tbaa !28
  %26 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 22
  %27 = load i32, ptr %26, align 8, !tbaa !29
  %28 = icmp sgt i32 %27, 256
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 256, ptr %26, align 8, !tbaa !29
  br label %30

30:                                               ; preds = %24, %29, %20
  tail call void @jpeg_calc_output_dimensions(ptr noundef %0) #6
  %31 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 29
  %32 = load i32, ptr %31, align 4, !tbaa !30
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %0, align 8, !tbaa !23
  %36 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %35, i64 0, i32 5
  store i32 1012, ptr %36, align 8, !tbaa !24
  %37 = load ptr, ptr %35, align 8, !tbaa !26
  tail call void %37(ptr noundef nonnull %0) #6
  br label %38

38:                                               ; preds = %34, %30
  %39 = load ptr, ptr %2, align 8, !tbaa !5
  %40 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !31
  %42 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 26
  %43 = load i32, ptr %42, align 8, !tbaa !32
  %44 = tail call ptr %41(ptr noundef %0, i32 noundef 1, i32 noundef %43, i32 noundef 1) #6
  %45 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %5, i64 0, i32 4
  store ptr %44, ptr %45, align 8, !tbaa !33
  %46 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %5, i64 0, i32 5
  store i32 1, ptr %46, align 8, !tbaa !34
  %47 = load ptr, ptr %2, align 8, !tbaa !5
  %48 = load ptr, ptr %47, align 8, !tbaa !13
  %49 = tail call ptr %48(ptr noundef %0, i32 noundef 1, i64 noundef 10006) #6
  %50 = getelementptr inbounds %struct.gif_dest_struct, ptr %5, i64 0, i32 12
  store ptr %49, ptr %50, align 8, !tbaa !35
  %51 = load ptr, ptr %2, align 8, !tbaa !5
  %52 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !36
  %54 = tail call ptr %53(ptr noundef %0, i32 noundef 1, i64 noundef 40024) #6
  %55 = getelementptr inbounds %struct.gif_dest_struct, ptr %5, i64 0, i32 13
  store ptr %54, ptr %55, align 8, !tbaa !37
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define internal void @start_output_gif(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 19
  %4 = load i32, ptr %3, align 4, !tbaa !28
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 31
  %8 = load i32, ptr %7, align 4, !tbaa !38
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 32
  %10 = load ptr, ptr %9, align 8, !tbaa !39
  tail call fastcc void @emit_header(ptr noundef %1, i32 noundef %8, ptr noundef %10)
  br label %12

11:                                               ; preds = %2
  tail call fastcc void @emit_header(ptr noundef %1, i32 noundef 256, ptr noundef null)
  br label %12

12:                                               ; preds = %11, %6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @put_pixel_rows(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 %2) #0 {
  %4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 26
  %5 = load i32, ptr %4, align 8, !tbaa !32
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %98, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %1, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !33
  %10 = load ptr, ptr %9, align 8, !tbaa !40
  %11 = getelementptr inbounds %struct.gif_dest_struct, ptr %1, i64 0, i32 8
  %12 = getelementptr inbounds %struct.gif_dest_struct, ptr %1, i64 0, i32 7
  %13 = getelementptr inbounds %struct.gif_dest_struct, ptr %1, i64 0, i32 7
  %14 = getelementptr inbounds %struct.gif_dest_struct, ptr %1, i64 0, i32 12
  %15 = getelementptr inbounds %struct.gif_dest_struct, ptr %1, i64 0, i32 13
  %16 = getelementptr inbounds %struct.gif_dest_struct, ptr %1, i64 0, i32 11
  %17 = getelementptr inbounds %struct.gif_dest_struct, ptr %1, i64 0, i32 9
  %18 = getelementptr inbounds %struct.gif_dest_struct, ptr %1, i64 0, i32 4
  %19 = getelementptr inbounds %struct.gif_dest_struct, ptr %1, i64 0, i32 2
  %20 = getelementptr inbounds %struct.gif_dest_struct, ptr %1, i64 0, i32 3
  %21 = getelementptr inbounds %struct.gif_dest_struct, ptr %1, i64 0, i32 13
  br label %22

22:                                               ; preds = %7, %95
  %23 = phi i32 [ %5, %7 ], [ %96, %95 ]
  %24 = phi ptr [ %10, %7 ], [ %25, %95 ]
  %25 = getelementptr inbounds i8, ptr %24, i64 1
  %26 = load i8, ptr %24, align 1, !tbaa !41
  %27 = load i32, ptr %11, align 8, !tbaa !42
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %22
  %30 = zext i8 %26 to i16
  store i16 %30, ptr %12, align 4, !tbaa !43
  store i32 0, ptr %11, align 8, !tbaa !42
  br label %95

31:                                               ; preds = %22
  %32 = zext i8 %26 to i32
  %33 = shl nuw nsw i32 %32, 4
  %34 = load i16, ptr %13, align 4, !tbaa !43
  %35 = sext i16 %34 to i32
  %36 = add nsw i32 %33, %35
  %37 = icmp sgt i32 %36, 5002
  %38 = add nsw i32 %36, -5003
  %39 = select i1 %37, i32 %38, i32 %36
  %40 = sext i16 %34 to i64
  %41 = shl nsw i64 %40, 8
  %42 = zext i8 %26 to i64
  %43 = or disjoint i64 %41, %42
  %44 = load ptr, ptr %14, align 8, !tbaa !35
  %45 = sext i32 %39 to i64
  %46 = getelementptr inbounds i16, ptr %44, i64 %45
  %47 = load i16, ptr %46, align 2, !tbaa !44
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %74, label %49

49:                                               ; preds = %31
  %50 = load ptr, ptr %15, align 8, !tbaa !37
  %51 = getelementptr inbounds i64, ptr %50, i64 %45
  %52 = load i64, ptr %51, align 8, !tbaa !45
  %53 = icmp eq i64 %52, %43
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i16 %47, ptr %13, align 4, !tbaa !43
  br label %95

55:                                               ; preds = %49
  %56 = icmp eq i32 %39, 0
  %57 = add nsw i32 %39, -5003
  %58 = select i1 %56, i32 -1, i32 %57
  br label %59

59:                                               ; preds = %69, %55
  %60 = phi i32 [ %39, %55 ], [ %64, %69 ]
  %61 = add i32 %60, %58
  %62 = icmp slt i32 %61, 0
  %63 = add nsw i32 %61, 5003
  %64 = select i1 %62, i32 %63, i32 %61
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i16, ptr %44, i64 %65
  %67 = load i16, ptr %66, align 2, !tbaa !44
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %59
  %70 = getelementptr inbounds i64, ptr %50, i64 %65
  %71 = load i64, ptr %70, align 8, !tbaa !45
  %72 = icmp eq i64 %71, %43
  br i1 %72, label %73, label %59, !llvm.loop !46

73:                                               ; preds = %69
  store i16 %67, ptr %13, align 4, !tbaa !43
  br label %95

74:                                               ; preds = %59, %31
  %75 = phi i32 [ %39, %31 ], [ %64, %59 ]
  tail call fastcc void @output(ptr noundef %1, i16 noundef signext %34)
  %76 = load i16, ptr %16, align 8, !tbaa !48
  %77 = icmp slt i16 %76, 4096
  br i1 %77, label %78, label %85

78:                                               ; preds = %74
  %79 = add i16 %76, 1
  store i16 %79, ptr %16, align 8, !tbaa !48
  %80 = load ptr, ptr %14, align 8, !tbaa !35
  %81 = sext i32 %75 to i64
  %82 = getelementptr inbounds i16, ptr %80, i64 %81
  store i16 %76, ptr %82, align 2, !tbaa !44
  %83 = load ptr, ptr %21, align 8, !tbaa !37
  %84 = getelementptr inbounds i64, ptr %83, i64 %81
  store i64 %43, ptr %84, align 8, !tbaa !45
  br label %93

85:                                               ; preds = %74
  %86 = load ptr, ptr %14, align 8, !tbaa !35
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10006) %86, i8 0, i64 10006, i1 false)
  %87 = load i16, ptr %17, align 4, !tbaa !49
  %88 = add i16 %87, 2
  store i16 %88, ptr %16, align 8, !tbaa !48
  tail call fastcc void @output(ptr noundef %1, i16 noundef signext %87)
  %89 = load i32, ptr %18, align 8, !tbaa !50
  store i32 %89, ptr %19, align 8, !tbaa !51
  %90 = shl nsw i32 -1, %89
  %91 = trunc i32 %90 to i16
  %92 = xor i16 %91, -1
  store i16 %92, ptr %20, align 4, !tbaa !52
  br label %93

93:                                               ; preds = %85, %78
  %94 = zext i8 %26 to i16
  store i16 %94, ptr %13, align 4, !tbaa !43
  br label %95

95:                                               ; preds = %29, %54, %73, %93
  %96 = add i32 %23, -1
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %22, !llvm.loop !53

98:                                               ; preds = %95, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @finish_output_gif(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gif_dest_struct, ptr %1, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.gif_dest_struct, ptr %1, i64 0, i32 7
  %8 = load i16, ptr %7, align 4, !tbaa !43
  tail call fastcc void @output(ptr noundef %1, i16 noundef signext %8)
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct.gif_dest_struct, ptr %1, i64 0, i32 10
  %11 = load i16, ptr %10, align 2, !tbaa !54
  tail call fastcc void @output(ptr noundef %1, i16 noundef signext %11)
  %12 = getelementptr inbounds %struct.gif_dest_struct, ptr %1, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !55
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %44

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.gif_dest_struct, ptr %1, i64 0, i32 5
  %17 = load i64, ptr %16, align 8, !tbaa !56
  %18 = trunc i64 %17 to i8
  %19 = getelementptr inbounds %struct.gif_dest_struct, ptr %1, i64 0, i32 14
  %20 = load i32, ptr %19, align 8, !tbaa !57
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %19, align 8, !tbaa !57
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.gif_dest_struct, ptr %1, i64 0, i32 15, i64 %22
  store i8 %18, ptr %23, align 1, !tbaa !41
  %24 = load i32, ptr %19, align 8, !tbaa !57
  %25 = icmp sgt i32 %24, 254
  br i1 %25, label %26, label %44

26:                                               ; preds = %15
  %27 = add nuw nsw i32 %24, 1
  store i32 %27, ptr %19, align 8, !tbaa !57
  %28 = trunc i32 %24 to i8
  %29 = getelementptr inbounds %struct.gif_dest_struct, ptr %1, i64 0, i32 15
  store i8 %28, ptr %29, align 4, !tbaa !41
  %30 = zext nneg i32 %27 to i64
  %31 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %1, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !58
  %33 = tail call i64 @fwrite(ptr noundef nonnull %29, i64 noundef 1, i64 noundef %30, ptr noundef %32)
  %34 = load i32, ptr %19, align 8, !tbaa !57
  %35 = sext i32 %34 to i64
  %36 = icmp eq i64 %33, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %26
  %38 = getelementptr inbounds %struct.gif_dest_struct, ptr %1, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !16
  %40 = load ptr, ptr %39, align 8, !tbaa !23
  %41 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %40, i64 0, i32 5
  store i32 36, ptr %41, align 8, !tbaa !24
  %42 = load ptr, ptr %40, align 8, !tbaa !26
  tail call void %42(ptr noundef nonnull %39) #6
  br label %43

43:                                               ; preds = %37, %26
  store i32 0, ptr %19, align 8, !tbaa !57
  br label %44

44:                                               ; preds = %43, %15, %9
  %45 = getelementptr inbounds %struct.gif_dest_struct, ptr %1, i64 0, i32 14
  %46 = load i32, ptr %45, align 8, !tbaa !57
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %44
  %49 = add nuw nsw i32 %46, 1
  store i32 %49, ptr %45, align 8, !tbaa !57
  %50 = trunc i32 %46 to i8
  %51 = getelementptr inbounds %struct.gif_dest_struct, ptr %1, i64 0, i32 15
  store i8 %50, ptr %51, align 4, !tbaa !41
  %52 = zext nneg i32 %49 to i64
  %53 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %1, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !58
  %55 = tail call i64 @fwrite(ptr noundef nonnull %51, i64 noundef 1, i64 noundef %52, ptr noundef %54)
  %56 = load i32, ptr %45, align 8, !tbaa !57
  %57 = sext i32 %56 to i64
  %58 = icmp eq i64 %55, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %48
  %60 = getelementptr inbounds %struct.gif_dest_struct, ptr %1, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !16
  %62 = load ptr, ptr %61, align 8, !tbaa !23
  %63 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %62, i64 0, i32 5
  store i32 36, ptr %63, align 8, !tbaa !24
  %64 = load ptr, ptr %62, align 8, !tbaa !26
  tail call void %64(ptr noundef nonnull %61) #6
  br label %65

65:                                               ; preds = %59, %48
  store i32 0, ptr %45, align 8, !tbaa !57
  br label %66

66:                                               ; preds = %44, %65
  %67 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %1, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !58
  %69 = tail call i32 @putc(i32 noundef 0, ptr noundef %68)
  %70 = load ptr, ptr %67, align 8, !tbaa !58
  %71 = tail call i32 @putc(i32 noundef 59, ptr noundef %70)
  %72 = load ptr, ptr %67, align 8, !tbaa !58
  %73 = tail call i32 @fflush(ptr noundef %72)
  %74 = load ptr, ptr %67, align 8, !tbaa !58
  %75 = tail call i32 @ferror(ptr noundef %74) #6
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %66
  %78 = load ptr, ptr %0, align 8, !tbaa !23
  %79 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %78, i64 0, i32 5
  store i32 36, ptr %79, align 8, !tbaa !24
  %80 = load ptr, ptr %78, align 8, !tbaa !26
  tail call void %80(ptr noundef nonnull %0) #6
  br label %81

81:                                               ; preds = %77, %66
  ret void
}

declare void @jpeg_calc_output_dimensions(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @emit_header(ptr nocapture noundef %0, i32 noundef %1, ptr noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.gif_dest_struct, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i64 0, i32 42
  %7 = load i32, ptr %6, align 8, !tbaa !27
  %8 = add nsw i32 %7, -8
  %9 = icmp sgt i32 %1, 256
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = load ptr, ptr %5, align 8, !tbaa !23
  %12 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i64 0, i32 5
  store i32 1039, ptr %12, align 8, !tbaa !24
  %13 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i64 0, i32 6
  store i32 %1, ptr %13, align 4, !tbaa !41
  %14 = load ptr, ptr %4, align 8, !tbaa !16
  %15 = load ptr, ptr %14, align 8, !tbaa !23
  %16 = load ptr, ptr %15, align 8, !tbaa !26
  tail call void %16(ptr noundef nonnull %14) #6
  br label %17

17:                                               ; preds = %10, %3
  br label %18

18:                                               ; preds = %17, %18
  %19 = phi i32 [ %22, %18 ], [ 1, %17 ]
  %20 = shl nuw i32 1, %19
  %21 = icmp slt i32 %20, %1
  %22 = add nuw nsw i32 %19, 1
  br i1 %21, label %18, label %23, !llvm.loop !59

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !58
  %26 = tail call i32 @putc(i32 noundef 71, ptr noundef %25)
  %27 = load ptr, ptr %24, align 8, !tbaa !58
  %28 = tail call i32 @putc(i32 noundef 73, ptr noundef %27)
  %29 = load ptr, ptr %24, align 8, !tbaa !58
  %30 = tail call i32 @putc(i32 noundef 70, ptr noundef %29)
  %31 = load ptr, ptr %24, align 8, !tbaa !58
  %32 = tail call i32 @putc(i32 noundef 56, ptr noundef %31)
  %33 = load ptr, ptr %24, align 8, !tbaa !58
  %34 = tail call i32 @putc(i32 noundef 55, ptr noundef %33)
  %35 = load ptr, ptr %24, align 8, !tbaa !58
  %36 = tail call i32 @putc(i32 noundef 97, ptr noundef %35)
  %37 = load ptr, ptr %4, align 8, !tbaa !16
  %38 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %37, i64 0, i32 26
  %39 = load i32, ptr %38, align 8, !tbaa !32
  %40 = and i32 %39, 255
  %41 = load ptr, ptr %24, align 8, !tbaa !58
  %42 = tail call i32 @putc(i32 noundef %40, ptr noundef %41)
  %43 = lshr i32 %39, 8
  %44 = and i32 %43, 255
  %45 = load ptr, ptr %24, align 8, !tbaa !58
  %46 = tail call i32 @putc(i32 noundef %44, ptr noundef %45)
  %47 = load ptr, ptr %4, align 8, !tbaa !16
  %48 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %47, i64 0, i32 27
  %49 = load i32, ptr %48, align 4, !tbaa !60
  %50 = and i32 %49, 255
  %51 = load ptr, ptr %24, align 8, !tbaa !58
  %52 = tail call i32 @putc(i32 noundef %50, ptr noundef %51)
  %53 = lshr i32 %49, 8
  %54 = and i32 %53, 255
  %55 = load ptr, ptr %24, align 8, !tbaa !58
  %56 = tail call i32 @putc(i32 noundef %54, ptr noundef %55)
  %57 = add nsw i32 %19, -1
  %58 = shl i32 %57, 4
  %59 = or i32 %57, %58
  %60 = or i32 %59, 128
  %61 = load ptr, ptr %24, align 8, !tbaa !58
  %62 = tail call i32 @putc(i32 noundef %60, ptr noundef %61)
  %63 = load ptr, ptr %24, align 8, !tbaa !58
  %64 = tail call i32 @putc(i32 noundef 0, ptr noundef %63)
  %65 = load ptr, ptr %24, align 8, !tbaa !58
  %66 = tail call i32 @putc(i32 noundef 0, ptr noundef %65)
  %67 = icmp eq i32 %19, 31
  br i1 %67, label %129, label %68

68:                                               ; preds = %23
  %69 = icmp eq ptr %2, null
  %70 = getelementptr inbounds ptr, ptr %2, i64 1
  %71 = getelementptr inbounds ptr, ptr %2, i64 2
  %72 = add nsw i32 %1, -1
  %73 = sdiv i32 %72, 2
  %74 = sext i32 %1 to i64
  %75 = tail call i32 @llvm.smax.i32(i32 %20, i32 1)
  %76 = zext nneg i32 %75 to i64
  br label %77

77:                                               ; preds = %68, %123
  %78 = phi i64 [ 0, %68 ], [ %127, %123 ]
  %79 = icmp slt i64 %78, %74
  br i1 %79, label %80, label %118

80:                                               ; preds = %77
  br i1 %69, label %109, label %81

81:                                               ; preds = %80
  %82 = load ptr, ptr %4, align 8, !tbaa !16
  %83 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %82, i64 0, i32 10
  %84 = load i32, ptr %83, align 8, !tbaa !22
  %85 = icmp eq i32 %84, 2
  %86 = load ptr, ptr %2, align 8, !tbaa !40
  %87 = getelementptr inbounds i8, ptr %86, i64 %78
  %88 = load i8, ptr %87, align 1, !tbaa !41
  %89 = zext i8 %88 to i32
  %90 = lshr i32 %89, %8
  %91 = load ptr, ptr %24, align 8, !tbaa !58
  %92 = tail call i32 @putc(i32 noundef %90, ptr noundef %91)
  br i1 %85, label %93, label %106

93:                                               ; preds = %81
  %94 = load ptr, ptr %70, align 8, !tbaa !40
  %95 = getelementptr inbounds i8, ptr %94, i64 %78
  %96 = load i8, ptr %95, align 1, !tbaa !41
  %97 = zext i8 %96 to i32
  %98 = lshr i32 %97, %8
  %99 = load ptr, ptr %24, align 8, !tbaa !58
  %100 = tail call i32 @putc(i32 noundef %98, ptr noundef %99)
  %101 = load ptr, ptr %71, align 8, !tbaa !40
  %102 = getelementptr inbounds i8, ptr %101, i64 %78
  %103 = load i8, ptr %102, align 1, !tbaa !41
  %104 = zext i8 %103 to i32
  %105 = lshr i32 %104, %8
  br label %123

106:                                              ; preds = %81
  %107 = load ptr, ptr %24, align 8, !tbaa !58
  %108 = tail call i32 @putc(i32 noundef %90, ptr noundef %107)
  br label %123

109:                                              ; preds = %80
  %110 = trunc i64 %78 to i32
  %111 = mul i32 %110, 255
  %112 = add i32 %111, %73
  %113 = sdiv i32 %112, %72
  %114 = load ptr, ptr %24, align 8, !tbaa !58
  %115 = tail call i32 @putc(i32 noundef %113, ptr noundef %114)
  %116 = load ptr, ptr %24, align 8, !tbaa !58
  %117 = tail call i32 @putc(i32 noundef %113, ptr noundef %116)
  br label %123

118:                                              ; preds = %77
  %119 = load ptr, ptr %24, align 8, !tbaa !58
  %120 = tail call i32 @putc(i32 noundef 0, ptr noundef %119)
  %121 = load ptr, ptr %24, align 8, !tbaa !58
  %122 = tail call i32 @putc(i32 noundef 0, ptr noundef %121)
  br label %123

123:                                              ; preds = %118, %93, %106, %109
  %124 = phi i32 [ 0, %118 ], [ %105, %93 ], [ %90, %106 ], [ %113, %109 ]
  %125 = load ptr, ptr %24, align 8, !tbaa !58
  %126 = tail call i32 @putc(i32 noundef %124, ptr noundef %125)
  %127 = add nuw nsw i64 %78, 1
  %128 = icmp eq i64 %127, %76
  br i1 %128, label %129, label %77, !llvm.loop !61

129:                                              ; preds = %123, %23
  %130 = tail call i32 @llvm.umax.i32(i32 %19, i32 2)
  %131 = load ptr, ptr %24, align 8, !tbaa !58
  %132 = tail call i32 @putc(i32 noundef 44, ptr noundef %131)
  %133 = load ptr, ptr %24, align 8, !tbaa !58
  %134 = tail call i32 @putc(i32 noundef 0, ptr noundef %133)
  %135 = load ptr, ptr %24, align 8, !tbaa !58
  %136 = tail call i32 @putc(i32 noundef 0, ptr noundef %135)
  %137 = load ptr, ptr %24, align 8, !tbaa !58
  %138 = tail call i32 @putc(i32 noundef 0, ptr noundef %137)
  %139 = load ptr, ptr %24, align 8, !tbaa !58
  %140 = tail call i32 @putc(i32 noundef 0, ptr noundef %139)
  %141 = load ptr, ptr %4, align 8, !tbaa !16
  %142 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %141, i64 0, i32 26
  %143 = load i32, ptr %142, align 8, !tbaa !32
  %144 = and i32 %143, 255
  %145 = load ptr, ptr %24, align 8, !tbaa !58
  %146 = tail call i32 @putc(i32 noundef %144, ptr noundef %145)
  %147 = lshr i32 %143, 8
  %148 = and i32 %147, 255
  %149 = load ptr, ptr %24, align 8, !tbaa !58
  %150 = tail call i32 @putc(i32 noundef %148, ptr noundef %149)
  %151 = load ptr, ptr %4, align 8, !tbaa !16
  %152 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %151, i64 0, i32 27
  %153 = load i32, ptr %152, align 4, !tbaa !60
  %154 = and i32 %153, 255
  %155 = load ptr, ptr %24, align 8, !tbaa !58
  %156 = tail call i32 @putc(i32 noundef %154, ptr noundef %155)
  %157 = lshr i32 %153, 8
  %158 = and i32 %157, 255
  %159 = load ptr, ptr %24, align 8, !tbaa !58
  %160 = tail call i32 @putc(i32 noundef %158, ptr noundef %159)
  %161 = load ptr, ptr %24, align 8, !tbaa !58
  %162 = tail call i32 @putc(i32 noundef 0, ptr noundef %161)
  %163 = load ptr, ptr %24, align 8, !tbaa !58
  %164 = tail call i32 @putc(i32 noundef %130, ptr noundef %163)
  %165 = add nuw nsw i32 %130, 1
  %166 = getelementptr inbounds %struct.gif_dest_struct, ptr %0, i64 0, i32 4
  store i32 %165, ptr %166, align 8, !tbaa !50
  %167 = getelementptr inbounds %struct.gif_dest_struct, ptr %0, i64 0, i32 2
  store i32 %165, ptr %167, align 8, !tbaa !51
  %168 = shl i32 -2, %130
  %169 = trunc i32 %168 to i16
  %170 = xor i16 %169, -1
  %171 = getelementptr inbounds %struct.gif_dest_struct, ptr %0, i64 0, i32 3
  store i16 %170, ptr %171, align 4, !tbaa !52
  %172 = shl nuw i32 1, %130
  %173 = trunc i32 %172 to i16
  %174 = getelementptr inbounds %struct.gif_dest_struct, ptr %0, i64 0, i32 9
  store i16 %173, ptr %174, align 4, !tbaa !49
  %175 = add i16 %173, 1
  %176 = getelementptr inbounds %struct.gif_dest_struct, ptr %0, i64 0, i32 10
  store i16 %175, ptr %176, align 2, !tbaa !54
  %177 = add i16 %173, 2
  %178 = getelementptr inbounds %struct.gif_dest_struct, ptr %0, i64 0, i32 11
  store i16 %177, ptr %178, align 8, !tbaa !48
  %179 = getelementptr inbounds %struct.gif_dest_struct, ptr %0, i64 0, i32 8
  store i32 1, ptr %179, align 8, !tbaa !42
  %180 = getelementptr inbounds %struct.gif_dest_struct, ptr %0, i64 0, i32 14
  store i32 0, ptr %180, align 8, !tbaa !57
  %181 = getelementptr inbounds %struct.gif_dest_struct, ptr %0, i64 0, i32 5
  store i64 0, ptr %181, align 8, !tbaa !56
  %182 = getelementptr inbounds %struct.gif_dest_struct, ptr %0, i64 0, i32 6
  store i32 0, ptr %182, align 8, !tbaa !55
  %183 = getelementptr inbounds %struct.gif_dest_struct, ptr %0, i64 0, i32 12
  %184 = load ptr, ptr %183, align 8, !tbaa !35
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10006) %184, i8 0, i64 10006, i1 false)
  %185 = load i16, ptr %174, align 4, !tbaa !49
  tail call fastcc void @output(ptr noundef %0, i16 noundef signext %185)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @output(ptr nocapture noundef %0, i16 noundef signext %1) unnamed_addr #0 {
  %3 = sext i16 %1 to i64
  %4 = getelementptr inbounds %struct.gif_dest_struct, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !55
  %6 = zext nneg i32 %5 to i64
  %7 = shl i64 %3, %6
  %8 = getelementptr inbounds %struct.gif_dest_struct, ptr %0, i64 0, i32 5
  %9 = load i64, ptr %8, align 8, !tbaa !56
  %10 = or i64 %7, %9
  store i64 %10, ptr %8, align 8, !tbaa !56
  %11 = getelementptr inbounds %struct.gif_dest_struct, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !51
  %13 = add nsw i32 %12, %5
  store i32 %13, ptr %4, align 8, !tbaa !55
  %14 = icmp sgt i32 %13, 7
  br i1 %14, label %15, label %50

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.gif_dest_struct, ptr %0, i64 0, i32 14
  %17 = getelementptr inbounds %struct.gif_dest_struct, ptr %0, i64 0, i32 15
  %18 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %0, i64 0, i32 3
  %19 = getelementptr inbounds %struct.gif_dest_struct, ptr %0, i64 0, i32 1
  br label %20

20:                                               ; preds = %15, %44
  %21 = load i64, ptr %8, align 8, !tbaa !56
  %22 = trunc i64 %21 to i8
  %23 = load i32, ptr %16, align 8, !tbaa !57
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %16, align 8, !tbaa !57
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.gif_dest_struct, ptr %0, i64 0, i32 15, i64 %25
  store i8 %22, ptr %26, align 1, !tbaa !41
  %27 = load i32, ptr %16, align 8, !tbaa !57
  %28 = icmp sgt i32 %27, 254
  br i1 %28, label %29, label %44

29:                                               ; preds = %20
  %30 = add nuw nsw i32 %27, 1
  store i32 %30, ptr %16, align 8, !tbaa !57
  %31 = trunc i32 %27 to i8
  store i8 %31, ptr %17, align 4, !tbaa !41
  %32 = zext nneg i32 %30 to i64
  %33 = load ptr, ptr %18, align 8, !tbaa !58
  %34 = tail call i64 @fwrite(ptr noundef nonnull %17, i64 noundef 1, i64 noundef %32, ptr noundef %33)
  %35 = load i32, ptr %16, align 8, !tbaa !57
  %36 = sext i32 %35 to i64
  %37 = icmp eq i64 %34, %36
  br i1 %37, label %43, label %38

38:                                               ; preds = %29
  %39 = load ptr, ptr %19, align 8, !tbaa !16
  %40 = load ptr, ptr %39, align 8, !tbaa !23
  %41 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %40, i64 0, i32 5
  store i32 36, ptr %41, align 8, !tbaa !24
  %42 = load ptr, ptr %40, align 8, !tbaa !26
  tail call void %42(ptr noundef nonnull %39) #6
  br label %43

43:                                               ; preds = %38, %29
  store i32 0, ptr %16, align 8, !tbaa !57
  br label %44

44:                                               ; preds = %43, %20
  %45 = load i64, ptr %8, align 8, !tbaa !56
  %46 = ashr i64 %45, 8
  store i64 %46, ptr %8, align 8, !tbaa !56
  %47 = load i32, ptr %4, align 8, !tbaa !55
  %48 = add nsw i32 %47, -8
  store i32 %48, ptr %4, align 8, !tbaa !55
  %49 = icmp sgt i32 %47, 15
  br i1 %49, label %20, label %50, !llvm.loop !62

50:                                               ; preds = %44, %2
  %51 = getelementptr inbounds %struct.gif_dest_struct, ptr %0, i64 0, i32 11
  %52 = load i16, ptr %51, align 8, !tbaa !48
  %53 = getelementptr inbounds %struct.gif_dest_struct, ptr %0, i64 0, i32 3
  %54 = load i16, ptr %53, align 4, !tbaa !52
  %55 = icmp sgt i16 %52, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load i32, ptr %11, align 8, !tbaa !51
  %58 = add nsw i32 %57, 1
  store i32 %58, ptr %11, align 8, !tbaa !51
  %59 = icmp eq i32 %58, 12
  %60 = shl nsw i32 -1, %58
  %61 = trunc i32 %60 to i16
  %62 = xor i16 %61, -1
  %63 = select i1 %59, i16 4096, i16 %62
  store i16 %63, ptr %53, align 4, !tbaa !52
  br label %64

64:                                               ; preds = %56, %50
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!16 = !{!17, !7, i64 48}
!17 = !{!"", !18, i64 0, !7, i64 48, !10, i64 56, !12, i64 60, !10, i64 64, !15, i64 72, !10, i64 80, !12, i64 84, !10, i64 88, !12, i64 92, !12, i64 94, !12, i64 96, !7, i64 104, !7, i64 112, !10, i64 120, !8, i64 124}
!18 = !{!"djpeg_dest_struct", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40}
!19 = !{!17, !7, i64 0}
!20 = !{!17, !7, i64 8}
!21 = !{!17, !7, i64 16}
!22 = !{!6, !10, i64 56}
!23 = !{!6, !7, i64 0}
!24 = !{!25, !10, i64 40}
!25 = !{!"jpeg_error_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !8, i64 44, !10, i64 124, !15, i64 128, !7, i64 136, !10, i64 144, !7, i64 152, !10, i64 160, !10, i64 164}
!26 = !{!25, !7, i64 0}
!27 = !{!6, !10, i64 288}
!28 = !{!6, !10, i64 100}
!29 = !{!6, !10, i64 112}
!30 = !{!6, !10, i64 140}
!31 = !{!14, !7, i64 16}
!32 = !{!6, !10, i64 128}
!33 = !{!17, !7, i64 32}
!34 = !{!17, !10, i64 40}
!35 = !{!17, !7, i64 104}
!36 = !{!14, !7, i64 8}
!37 = !{!17, !7, i64 112}
!38 = !{!6, !10, i64 148}
!39 = !{!6, !7, i64 152}
!40 = !{!7, !7, i64 0}
!41 = !{!8, !8, i64 0}
!42 = !{!17, !10, i64 88}
!43 = !{!17, !12, i64 84}
!44 = !{!12, !12, i64 0}
!45 = !{!15, !15, i64 0}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = !{!17, !12, i64 96}
!49 = !{!17, !12, i64 92}
!50 = !{!17, !10, i64 64}
!51 = !{!17, !10, i64 56}
!52 = !{!17, !12, i64 60}
!53 = distinct !{!53, !47}
!54 = !{!17, !12, i64 94}
!55 = !{!17, !10, i64 80}
!56 = !{!17, !15, i64 72}
!57 = !{!17, !10, i64 120}
!58 = !{!17, !7, i64 24}
!59 = distinct !{!59, !47}
!60 = !{!6, !10, i64 132}
!61 = distinct !{!61, !47}
!62 = distinct !{!62, !47}
