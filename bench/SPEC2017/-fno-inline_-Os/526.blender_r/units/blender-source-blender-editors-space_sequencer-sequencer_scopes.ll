; ModuleID = 'blender/source/blender/editors/space_sequencer/sequencer_scopes.c'
source_filename = "blender/source/blender/editors/space_sequencer/sequencer_scopes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @make_waveform_view_from_ibuf(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @make_waveform_view_from_ibuf_float(ptr noundef nonnull %0) #15
  br label %9

7:                                                ; preds = %1
  %8 = tail call fastcc ptr @make_waveform_view_from_ibuf_byte(ptr noundef nonnull %0) #15
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi ptr [ %6, %5 ], [ %8, %7 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_waveform_view_from_ibuf_float(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !43 {
  %2 = alloca [256 x i8], align 16
  %3 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = add nsw i32 %4, 3
  %6 = tail call ptr @IMB_allocImBuf(i32 noundef %5, i32 noundef 515, i8 noundef zeroext 32, i32 noundef 1) #16
  %7 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = load i32, ptr %3, align 8, !tbaa !44
  %12 = add nsw i32 %11, 3
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %2) #17
  tail call fastcc void @wform_put_grid(ptr noundef %10, i32 noundef %12) #15
  br label %21

13:                                               ; preds = %21
  %14 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !46
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %78

17:                                               ; preds = %13
  %18 = shl nsw i32 %12, 2
  %19 = sext i32 %18 to i64
  %20 = load i32, ptr %3, align 8, !tbaa !44
  br label %34

21:                                               ; preds = %1, %21
  %22 = phi i64 [ 0, %1 ], [ %32, %21 ]
  %23 = trunc i64 %22 to i32
  %24 = sitofp i32 %23 to float
  %25 = fadd float %24, 1.000000e+00
  %26 = fmul float %25, 3.906250e-03
  %27 = fpext float %26 to double
  %28 = tail call double @pow(double noundef %27, double noundef 0x3FC99999A0000000) #16
  %29 = fmul double %28, 2.550000e+02
  %30 = fptoui double %29 to i8
  %31 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 %22
  store i8 %30, ptr %31, align 1, !tbaa !47
  %32 = add nuw nsw i64 %22, 1
  %33 = icmp eq i64 %32, 256
  br i1 %33, label %13, label %21, !llvm.loop !48

34:                                               ; preds = %17, %73
  %35 = phi i32 [ %15, %17 ], [ %74, %73 ]
  %36 = phi i32 [ %20, %17 ], [ %75, %73 ]
  %37 = phi i32 [ 0, %17 ], [ %76, %73 ]
  %38 = icmp sgt i32 %36, 0
  br i1 %38, label %39, label %73

39:                                               ; preds = %34, %67
  %40 = phi i32 [ %69, %67 ], [ %36, %34 ]
  %41 = phi i32 [ %68, %67 ], [ 0, %34 ]
  %42 = phi ptr [ %64, %67 ], [ null, %34 ]
  %43 = mul nsw i32 %40, %37
  %44 = add nsw i32 %43, %41
  %45 = shl nsw i32 %44, 2
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds float, ptr %8, i64 %46
  %48 = tail call fastcc float @rgb_to_luma(ptr noundef %47) #15
  %49 = fcmp olt float %48, 0.000000e+00
  br i1 %49, label %53, label %50

50:                                               ; preds = %39
  %51 = fcmp ogt float %48, 1.000000e+00
  br i1 %51, label %52, label %53

52:                                               ; preds = %50
  br label %53

53:                                               ; preds = %39, %50, %52
  %54 = phi float [ 1.000000e+00, %52 ], [ %48, %50 ], [ 0.000000e+00, %39 ]
  %55 = fmul float %54, 5.120000e+02
  %56 = fptosi float %55 to i32
  %57 = add nsw i32 %56, 1
  %58 = mul nsw i32 %57, %12
  %59 = add nsw i32 %58, %41
  %60 = shl i32 %59, 2
  %61 = add i32 %60, 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, ptr %10, i64 %62
  call fastcc void @scope_put_pixel(ptr noundef nonnull %2, ptr noundef %63) #15
  %64 = getelementptr inbounds i8, ptr %63, i64 %19
  call fastcc void @scope_put_pixel(ptr noundef nonnull %2, ptr noundef %64) #15
  %65 = icmp eq ptr %42, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %53
  tail call fastcc void @wform_put_line(i32 noundef %12, ptr noundef nonnull %42, ptr noundef %64) #15
  br label %67

67:                                               ; preds = %66, %53
  %68 = add nuw nsw i32 %41, 1
  %69 = load i32, ptr %3, align 8, !tbaa !44
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %39, label %71, !llvm.loop !50

71:                                               ; preds = %67
  %72 = load i32, ptr %14, align 4, !tbaa !46
  br label %73

73:                                               ; preds = %71, %34
  %74 = phi i32 [ %72, %71 ], [ %35, %34 ]
  %75 = phi i32 [ %69, %71 ], [ %36, %34 ]
  %76 = add nuw nsw i32 %37, 1
  %77 = icmp slt i32 %76, %74
  br i1 %77, label %34, label %78, !llvm.loop !51

78:                                               ; preds = %73, %13
  tail call fastcc void @wform_put_border(ptr noundef %10, i32 noundef %12, i32 noundef 515) #15
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %2) #17
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_waveform_view_from_ibuf_byte(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !52 {
  %2 = alloca [256 x i8], align 16
  %3 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = add nsw i32 %4, 3
  %6 = tail call ptr @IMB_allocImBuf(i32 noundef %5, i32 noundef 515, i8 noundef zeroext 32, i32 noundef 1) #16
  %7 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = load i32, ptr %3, align 8, !tbaa !44
  %12 = add nsw i32 %11, 3
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %2) #17
  tail call fastcc void @wform_put_grid(ptr noundef %10, i32 noundef %12) #15
  tail call fastcc void @wform_put_border(ptr noundef %10, i32 noundef %12, i32 noundef 515) #15
  br label %21

13:                                               ; preds = %21
  %14 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !46
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %74

17:                                               ; preds = %13
  %18 = shl nsw i32 %12, 2
  %19 = sext i32 %18 to i64
  %20 = load i32, ptr %3, align 8, !tbaa !44
  br label %34

21:                                               ; preds = %1, %21
  %22 = phi i64 [ 0, %1 ], [ %32, %21 ]
  %23 = trunc i64 %22 to i32
  %24 = sitofp i32 %23 to float
  %25 = fadd float %24, 1.000000e+00
  %26 = fmul float %25, 3.906250e-03
  %27 = fpext float %26 to double
  %28 = tail call double @pow(double noundef %27, double noundef 0x3FC99999A0000000) #16
  %29 = fmul double %28, 2.550000e+02
  %30 = fptoui double %29 to i8
  %31 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 %22
  store i8 %30, ptr %31, align 1, !tbaa !47
  %32 = add nuw nsw i64 %22, 1
  %33 = icmp eq i64 %32, 256
  br i1 %33, label %13, label %21, !llvm.loop !53

34:                                               ; preds = %17, %69
  %35 = phi i32 [ %15, %17 ], [ %70, %69 ]
  %36 = phi i32 [ %20, %17 ], [ %71, %69 ]
  %37 = phi i32 [ 0, %17 ], [ %72, %69 ]
  %38 = icmp sgt i32 %36, 0
  br i1 %38, label %39, label %69

39:                                               ; preds = %34, %63
  %40 = phi i32 [ %65, %63 ], [ %36, %34 ]
  %41 = phi i32 [ %64, %63 ], [ 0, %34 ]
  %42 = phi ptr [ %60, %63 ], [ null, %34 ]
  %43 = mul nsw i32 %40, %37
  %44 = add nsw i32 %43, %41
  %45 = shl nsw i32 %44, 2
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, ptr %8, i64 %46
  %48 = tail call fastcc zeroext i8 @rgb_to_luma_byte(ptr noundef %47) #15
  %49 = uitofp i8 %48 to float
  %50 = fdiv float %49, 2.550000e+02
  %51 = fmul float %50, 5.120000e+02
  %52 = fptosi float %51 to i32
  %53 = add nsw i32 %52, 1
  %54 = mul nsw i32 %53, %12
  %55 = add nsw i32 %54, %41
  %56 = shl i32 %55, 2
  %57 = add i32 %56, 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, ptr %10, i64 %58
  call fastcc void @scope_put_pixel(ptr noundef nonnull %2, ptr noundef %59) #15
  %60 = getelementptr inbounds i8, ptr %59, i64 %19
  call fastcc void @scope_put_pixel(ptr noundef nonnull %2, ptr noundef %60) #15
  %61 = icmp eq ptr %42, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %39
  tail call fastcc void @wform_put_line(i32 noundef %12, ptr noundef nonnull %42, ptr noundef %60) #15
  br label %63

63:                                               ; preds = %62, %39
  %64 = add nuw nsw i32 %41, 1
  %65 = load i32, ptr %3, align 8, !tbaa !44
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %39, label %67, !llvm.loop !54

67:                                               ; preds = %63
  %68 = load i32, ptr %14, align 4, !tbaa !46
  br label %69

69:                                               ; preds = %67, %34
  %70 = phi i32 [ %68, %67 ], [ %35, %34 ]
  %71 = phi i32 [ %65, %67 ], [ %36, %34 ]
  %72 = add nuw nsw i32 %37, 1
  %73 = icmp slt i32 %72, %70
  br i1 %73, label %34, label %74, !llvm.loop !55

74:                                               ; preds = %69, %13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %2) #17
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @make_sep_waveform_view_from_ibuf(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @make_sep_waveform_view_from_ibuf_float(ptr noundef nonnull %0) #15
  br label %9

7:                                                ; preds = %1
  %8 = tail call fastcc ptr @make_sep_waveform_view_from_ibuf_byte(ptr noundef nonnull %0) #15
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi ptr [ %6, %5 ], [ %8, %7 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_sep_waveform_view_from_ibuf_float(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !56 {
  %2 = alloca [256 x i8], align 16
  %3 = alloca [3 x ptr], align 16
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !44
  %6 = add nsw i32 %5, 3
  %7 = tail call ptr @IMB_allocImBuf(i32 noundef %6, i32 noundef 515, i8 noundef zeroext 32, i32 noundef 1) #16
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.ImBuf, ptr %7, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = load i32, ptr %4, align 8, !tbaa !44
  %13 = add nsw i32 %12, 3
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %2) #17
  tail call fastcc void @wform_put_grid(ptr noundef %11, i32 noundef %13) #15
  br label %23

14:                                               ; preds = %23
  %15 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !46
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %92

18:                                               ; preds = %14
  %19 = sdiv i32 %12, 3
  %20 = shl nsw i32 %13, 2
  %21 = sext i32 %20 to i64
  %22 = load i32, ptr %4, align 8, !tbaa !44
  br label %36

23:                                               ; preds = %1, %23
  %24 = phi i64 [ 0, %1 ], [ %34, %23 ]
  %25 = trunc i64 %24 to i32
  %26 = sitofp i32 %25 to float
  %27 = fadd float %26, 1.000000e+00
  %28 = fmul float %27, 3.906250e-03
  %29 = fpext float %28 to double
  %30 = tail call double @pow(double noundef %29, double noundef 0x3FC99999A0000000) #16
  %31 = fmul double %30, 2.550000e+02
  %32 = fptoui double %31 to i8
  %33 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 %24
  store i8 %32, ptr %33, align 1, !tbaa !47
  %34 = add nuw nsw i64 %24, 1
  %35 = icmp eq i64 %34, 256
  br i1 %35, label %14, label %23, !llvm.loop !57

36:                                               ; preds = %18, %87
  %37 = phi i32 [ %16, %18 ], [ %88, %87 ]
  %38 = phi i32 [ %22, %18 ], [ %89, %87 ]
  %39 = phi i32 [ 0, %18 ], [ %90, %87 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %40 = icmp sgt i32 %38, 0
  br i1 %40, label %41, label %87

41:                                               ; preds = %36, %81
  %42 = phi i32 [ %83, %81 ], [ %38, %36 ]
  %43 = phi i32 [ %82, %81 ], [ 0, %36 ]
  %44 = mul nsw i32 %42, %39
  %45 = add nsw i32 %44, %43
  %46 = shl nsw i32 %45, 2
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, ptr %9, i64 %47
  %49 = udiv i32 %43, 3
  br label %50

50:                                               ; preds = %41, %78
  %51 = phi i64 [ 0, %41 ], [ %79, %78 ]
  %52 = getelementptr inbounds float, ptr %48, i64 %51
  %53 = load float, ptr %52, align 4, !tbaa !58
  %54 = fcmp olt float %53, 0.000000e+00
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = fcmp ogt float %53, 1.000000e+00
  br i1 %56, label %57, label %58

57:                                               ; preds = %55
  br label %58

58:                                               ; preds = %50, %55, %57
  %59 = phi float [ 1.000000e+00, %57 ], [ %53, %55 ], [ 0.000000e+00, %50 ]
  %60 = fmul float %59, 5.120000e+02
  %61 = fptosi float %60 to i32
  %62 = add nsw i32 %61, 1
  %63 = mul nsw i32 %62, %13
  %64 = trunc i64 %51 to i32
  %65 = mul i32 %19, %64
  %66 = add i32 %65, %49
  %67 = add i32 %66, %63
  %68 = shl i32 %67, 2
  %69 = add i32 %68, 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, ptr %11, i64 %70
  %72 = trunc i64 %51 to i32
  call fastcc void @scope_put_pixel_single(ptr noundef nonnull %2, ptr noundef %71, i32 noundef %72) #15
  %73 = getelementptr inbounds i8, ptr %71, i64 %21
  call fastcc void @scope_put_pixel_single(ptr noundef nonnull %2, ptr noundef %73, i32 noundef %72) #15
  %74 = getelementptr inbounds [3 x ptr], ptr %3, i64 0, i64 %51
  %75 = load ptr, ptr %74, align 8, !tbaa !59
  %76 = icmp eq ptr %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %58
  tail call fastcc void @wform_put_line_single(i32 noundef %13, ptr noundef nonnull %75, ptr noundef %73, i32 noundef %72) #15
  br label %78

78:                                               ; preds = %77, %58
  store ptr %73, ptr %74, align 8, !tbaa !59
  %79 = add nuw nsw i64 %51, 1
  %80 = icmp eq i64 %79, 3
  br i1 %80, label %81, label %50, !llvm.loop !60

81:                                               ; preds = %78
  %82 = add nuw nsw i32 %43, 1
  %83 = load i32, ptr %4, align 8, !tbaa !44
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %41, label %85, !llvm.loop !61

85:                                               ; preds = %81
  %86 = load i32, ptr %15, align 4, !tbaa !46
  br label %87

87:                                               ; preds = %85, %36
  %88 = phi i32 [ %86, %85 ], [ %37, %36 ]
  %89 = phi i32 [ %83, %85 ], [ %38, %36 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  %90 = add nuw nsw i32 %39, 1
  %91 = icmp slt i32 %90, %88
  br i1 %91, label %36, label %92, !llvm.loop !62

92:                                               ; preds = %87, %14
  tail call fastcc void @wform_put_border(ptr noundef %11, i32 noundef %13, i32 noundef 515) #15
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %2) #17
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_sep_waveform_view_from_ibuf_byte(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !63 {
  %2 = alloca [256 x i8], align 16
  %3 = alloca [3 x ptr], align 16
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !44
  %6 = add nsw i32 %5, 3
  %7 = tail call ptr @IMB_allocImBuf(i32 noundef %6, i32 noundef 515, i8 noundef zeroext 32, i32 noundef 1) #16
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = getelementptr inbounds %struct.ImBuf, ptr %7, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = load i32, ptr %4, align 8, !tbaa !44
  %13 = add nsw i32 %12, 3
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %2) #17
  tail call fastcc void @wform_put_grid(ptr noundef %11, i32 noundef %13) #15
  br label %23

14:                                               ; preds = %23
  %15 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !46
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %87

18:                                               ; preds = %14
  %19 = sdiv i32 %12, 3
  %20 = shl nsw i32 %13, 2
  %21 = sext i32 %20 to i64
  %22 = load i32, ptr %4, align 8, !tbaa !44
  br label %36

23:                                               ; preds = %1, %23
  %24 = phi i64 [ 0, %1 ], [ %34, %23 ]
  %25 = trunc i64 %24 to i32
  %26 = sitofp i32 %25 to float
  %27 = fadd float %26, 1.000000e+00
  %28 = fmul float %27, 3.906250e-03
  %29 = fpext float %28 to double
  %30 = tail call double @pow(double noundef %29, double noundef 0x3FC99999A0000000) #16
  %31 = fmul double %30, 2.550000e+02
  %32 = fptoui double %31 to i8
  %33 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 %24
  store i8 %32, ptr %33, align 1, !tbaa !47
  %34 = add nuw nsw i64 %24, 1
  %35 = icmp eq i64 %34, 256
  br i1 %35, label %14, label %23, !llvm.loop !64

36:                                               ; preds = %18, %82
  %37 = phi i32 [ %16, %18 ], [ %83, %82 ]
  %38 = phi i32 [ %22, %18 ], [ %84, %82 ]
  %39 = phi i32 [ 0, %18 ], [ %85, %82 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %40 = icmp sgt i32 %38, 0
  br i1 %40, label %41, label %82

41:                                               ; preds = %36, %76
  %42 = phi i32 [ %78, %76 ], [ %38, %36 ]
  %43 = phi i32 [ %77, %76 ], [ 0, %36 ]
  %44 = mul nsw i32 %42, %39
  %45 = add nsw i32 %44, %43
  %46 = shl nsw i32 %45, 2
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, ptr %9, i64 %47
  %49 = udiv i32 %43, 3
  br label %50

50:                                               ; preds = %41, %73
  %51 = phi i64 [ 0, %41 ], [ %74, %73 ]
  %52 = getelementptr inbounds i8, ptr %48, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !47
  %54 = zext i8 %53 to i32
  %55 = shl nuw nsw i32 %54, 9
  %56 = udiv i32 %55, 255
  %57 = add nuw nsw i32 %56, 1
  %58 = mul nsw i32 %57, %13
  %59 = trunc i64 %51 to i32
  %60 = mul i32 %19, %59
  %61 = add i32 %60, %49
  %62 = add i32 %61, %58
  %63 = shl i32 %62, 2
  %64 = add i32 %63, 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, ptr %11, i64 %65
  %67 = trunc i64 %51 to i32
  call fastcc void @scope_put_pixel_single(ptr noundef nonnull %2, ptr noundef %66, i32 noundef %67) #15
  %68 = getelementptr inbounds i8, ptr %66, i64 %21
  call fastcc void @scope_put_pixel_single(ptr noundef nonnull %2, ptr noundef %68, i32 noundef %67) #15
  %69 = getelementptr inbounds [3 x ptr], ptr %3, i64 0, i64 %51
  %70 = load ptr, ptr %69, align 8, !tbaa !59
  %71 = icmp eq ptr %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %50
  tail call fastcc void @wform_put_line_single(i32 noundef %13, ptr noundef nonnull %70, ptr noundef %68, i32 noundef %67) #15
  br label %73

73:                                               ; preds = %72, %50
  store ptr %68, ptr %69, align 8, !tbaa !59
  %74 = add nuw nsw i64 %51, 1
  %75 = icmp eq i64 %74, 3
  br i1 %75, label %76, label %50, !llvm.loop !65

76:                                               ; preds = %73
  %77 = add nuw nsw i32 %43, 1
  %78 = load i32, ptr %4, align 8, !tbaa !44
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %41, label %80, !llvm.loop !66

80:                                               ; preds = %76
  %81 = load i32, ptr %15, align 4, !tbaa !46
  br label %82

82:                                               ; preds = %80, %36
  %83 = phi i32 [ %81, %80 ], [ %37, %36 ]
  %84 = phi i32 [ %78, %80 ], [ %38, %36 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  %85 = add nuw nsw i32 %39, 1
  %86 = icmp slt i32 %85, %83
  br i1 %86, label %36, label %87, !llvm.loop !67

87:                                               ; preds = %82, %14
  tail call fastcc void @wform_put_border(ptr noundef %11, i32 noundef %13, i32 noundef 515) #15
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %2) #17
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @make_zebra_view_from_ibuf(ptr nocapture noundef readonly %0, float noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !46
  %7 = tail call ptr @IMB_allocImBuf(i32 noundef %4, i32 noundef %6, i8 noundef zeroext 32, i32 noundef 1) #16
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  tail call fastcc void @draw_zebra_float(ptr noundef nonnull %0, ptr noundef %7, float noundef %1) #15
  br label %13

12:                                               ; preds = %2
  tail call fastcc void @draw_zebra_byte(ptr noundef nonnull %0, ptr noundef %7, float noundef %1) #15
  br label %13

13:                                               ; preds = %12, %11
  ret ptr %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @draw_zebra_float(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #3 !PGOFuncName !68 {
  %4 = fdiv float %2, 1.000000e+02
  %5 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !46
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %99

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !44
  br label %15

15:                                               ; preds = %8, %92
  %16 = phi i32 [ %6, %8 ], [ %93, %92 ]
  %17 = phi i32 [ %14, %8 ], [ %94, %92 ]
  %18 = phi ptr [ %12, %8 ], [ %96, %92 ]
  %19 = phi i32 [ 0, %8 ], [ %97, %92 ]
  %20 = phi ptr [ %10, %8 ], [ %95, %92 ]
  %21 = icmp sgt i32 %17, 0
  br i1 %21, label %22, label %92

22:                                               ; preds = %15, %83
  %23 = phi ptr [ %32, %83 ], [ %18, %15 ]
  %24 = phi i32 [ %87, %83 ], [ 0, %15 ]
  %25 = phi ptr [ %86, %83 ], [ %20, %15 ]
  %26 = getelementptr inbounds float, ptr %23, i64 1
  %27 = load float, ptr %23, align 4, !tbaa !58
  %28 = getelementptr inbounds float, ptr %23, i64 2
  %29 = load float, ptr %26, align 4, !tbaa !58
  %30 = getelementptr inbounds float, ptr %23, i64 3
  %31 = load float, ptr %28, align 4, !tbaa !58
  %32 = getelementptr inbounds float, ptr %23, i64 4
  %33 = load float, ptr %30, align 4, !tbaa !58
  %34 = fcmp ult float %27, %4
  %35 = fcmp ult float %29, %4
  %36 = select i1 %34, i1 %35, i1 false
  %37 = fcmp ult float %31, %4
  %38 = select i1 %36, i1 %37, i1 false
  br i1 %38, label %47, label %39

39:                                               ; preds = %22
  %40 = add nuw nsw i32 %24, %19
  %41 = and i32 %40, 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = fneg float %27
  %45 = fneg float %29
  %46 = fneg float %31
  br label %47

47:                                               ; preds = %22, %39, %43
  %48 = phi float [ %44, %43 ], [ %27, %39 ], [ %27, %22 ]
  %49 = phi float [ %45, %43 ], [ %29, %39 ], [ %29, %22 ]
  %50 = phi float [ %46, %43 ], [ %31, %39 ], [ %31, %22 ]
  %51 = fcmp ugt float %48, 0.000000e+00
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = fcmp ogt float %48, 0x3FEFEFEFE0000000
  %54 = tail call float @llvm.fmuladd.f32(float %48, float 2.550000e+02, float 5.000000e-01)
  %55 = select i1 %53, float 2.550000e+02, float %54
  br label %56

56:                                               ; preds = %47, %52
  %57 = phi float [ %55, %52 ], [ 0.000000e+00, %47 ]
  %58 = fptoui float %57 to i8
  %59 = getelementptr inbounds i8, ptr %25, i64 1
  store i8 %58, ptr %25, align 1, !tbaa !47
  %60 = fcmp ugt float %49, 0.000000e+00
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = fcmp ogt float %49, 0x3FEFEFEFE0000000
  %63 = tail call float @llvm.fmuladd.f32(float %49, float 2.550000e+02, float 5.000000e-01)
  %64 = select i1 %62, float 2.550000e+02, float %63
  br label %65

65:                                               ; preds = %56, %61
  %66 = phi float [ %64, %61 ], [ 0.000000e+00, %56 ]
  %67 = fptoui float %66 to i8
  %68 = getelementptr inbounds i8, ptr %25, i64 2
  store i8 %67, ptr %59, align 1, !tbaa !47
  %69 = fcmp ugt float %50, 0.000000e+00
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = fcmp ogt float %50, 0x3FEFEFEFE0000000
  %72 = tail call float @llvm.fmuladd.f32(float %50, float 2.550000e+02, float 5.000000e-01)
  %73 = select i1 %71, float 2.550000e+02, float %72
  br label %74

74:                                               ; preds = %65, %70
  %75 = phi float [ %73, %70 ], [ 0.000000e+00, %65 ]
  %76 = fptoui float %75 to i8
  %77 = getelementptr inbounds i8, ptr %25, i64 3
  store i8 %76, ptr %68, align 1, !tbaa !47
  %78 = fcmp ugt float %33, 0.000000e+00
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = fcmp ogt float %33, 0x3FEFEFEFE0000000
  %81 = tail call float @llvm.fmuladd.f32(float %33, float 2.550000e+02, float 5.000000e-01)
  %82 = select i1 %80, float 2.550000e+02, float %81
  br label %83

83:                                               ; preds = %74, %79
  %84 = phi float [ %82, %79 ], [ 0.000000e+00, %74 ]
  %85 = fptoui float %84 to i8
  %86 = getelementptr inbounds i8, ptr %25, i64 4
  store i8 %85, ptr %77, align 1, !tbaa !47
  %87 = add nuw nsw i32 %24, 1
  %88 = load i32, ptr %13, align 8, !tbaa !44
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %22, label %90, !llvm.loop !69

90:                                               ; preds = %83
  %91 = load i32, ptr %5, align 4, !tbaa !46
  br label %92

92:                                               ; preds = %90, %15
  %93 = phi i32 [ %16, %15 ], [ %91, %90 ]
  %94 = phi i32 [ %17, %15 ], [ %88, %90 ]
  %95 = phi ptr [ %20, %15 ], [ %86, %90 ]
  %96 = phi ptr [ %18, %15 ], [ %32, %90 ]
  %97 = add nuw nsw i32 %19, 1
  %98 = icmp slt i32 %97, %93
  br i1 %98, label %15, label %99, !llvm.loop !70

99:                                               ; preds = %92, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @draw_zebra_byte(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #3 !PGOFuncName !71 {
  %4 = fmul float %2, 2.550000e+02
  %5 = fdiv float %4, 1.000000e+02
  %6 = fptoui float %5 to i32
  %7 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !46
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %72

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !45
  %13 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  %15 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !44
  br label %17

17:                                               ; preds = %10, %65
  %18 = phi i32 [ %8, %10 ], [ %66, %65 ]
  %19 = phi i32 [ %16, %10 ], [ %67, %65 ]
  %20 = phi ptr [ %14, %10 ], [ %69, %65 ]
  %21 = phi i32 [ 0, %10 ], [ %70, %65 ]
  %22 = phi ptr [ %12, %10 ], [ %68, %65 ]
  %23 = icmp sgt i32 %19, 0
  br i1 %23, label %24, label %65

24:                                               ; preds = %17, %52
  %25 = phi ptr [ %34, %52 ], [ %20, %17 ]
  %26 = phi i32 [ %60, %52 ], [ 0, %17 ]
  %27 = phi ptr [ %59, %52 ], [ %22, %17 ]
  %28 = getelementptr inbounds i8, ptr %25, i64 1
  %29 = load i8, ptr %25, align 1, !tbaa !47
  %30 = getelementptr inbounds i8, ptr %25, i64 2
  %31 = load i8, ptr %28, align 1, !tbaa !47
  %32 = getelementptr inbounds i8, ptr %25, i64 3
  %33 = load i8, ptr %30, align 1, !tbaa !47
  %34 = getelementptr inbounds i8, ptr %25, i64 4
  %35 = load i8, ptr %32, align 1, !tbaa !47
  %36 = zext i8 %29 to i32
  %37 = icmp ult i32 %36, %6
  %38 = zext i8 %31 to i32
  %39 = icmp ult i32 %38, %6
  %40 = select i1 %37, i1 %39, i1 false
  %41 = zext i8 %33 to i32
  %42 = icmp ult i32 %41, %6
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %52, label %44

44:                                               ; preds = %24
  %45 = add nuw nsw i32 %26, %21
  %46 = and i32 %45, 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = xor i8 %29, -1
  %50 = xor i8 %31, -1
  %51 = xor i8 %33, -1
  br label %52

52:                                               ; preds = %24, %44, %48
  %53 = phi i8 [ %49, %48 ], [ %29, %44 ], [ %29, %24 ]
  %54 = phi i8 [ %50, %48 ], [ %31, %44 ], [ %31, %24 ]
  %55 = phi i8 [ %51, %48 ], [ %33, %44 ], [ %33, %24 ]
  %56 = getelementptr inbounds i8, ptr %27, i64 1
  store i8 %53, ptr %27, align 1, !tbaa !47
  %57 = getelementptr inbounds i8, ptr %27, i64 2
  store i8 %54, ptr %56, align 1, !tbaa !47
  %58 = getelementptr inbounds i8, ptr %27, i64 3
  store i8 %55, ptr %57, align 1, !tbaa !47
  %59 = getelementptr inbounds i8, ptr %27, i64 4
  store i8 %35, ptr %58, align 1, !tbaa !47
  %60 = add nuw nsw i32 %26, 1
  %61 = load i32, ptr %15, align 8, !tbaa !44
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %24, label %63, !llvm.loop !72

63:                                               ; preds = %52
  %64 = load i32, ptr %7, align 4, !tbaa !46
  br label %65

65:                                               ; preds = %63, %17
  %66 = phi i32 [ %18, %17 ], [ %64, %63 ]
  %67 = phi i32 [ %19, %17 ], [ %61, %63 ]
  %68 = phi ptr [ %22, %17 ], [ %59, %63 ]
  %69 = phi ptr [ %20, %17 ], [ %34, %63 ]
  %70 = add nuw nsw i32 %21, 1
  %71 = icmp slt i32 %70, %66
  br i1 %71, label %17, label %72, !llvm.loop !73

72:                                               ; preds = %65, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @make_histogram_view_from_ibuf(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @make_histogram_view_from_ibuf_float(ptr noundef nonnull %0) #15
  br label %9

7:                                                ; preds = %1
  %8 = tail call fastcc ptr @make_histogram_view_from_ibuf_byte(ptr noundef nonnull %0) #15
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi ptr [ %6, %5 ], [ %8, %7 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_histogram_view_from_ibuf_float(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !74 {
  %2 = alloca [3 x [512 x i32]], align 16
  %3 = alloca [3 x [512 x i32]], align 16
  %4 = tail call ptr @IMB_allocImBuf(i32 noundef 515, i32 noundef 128, i8 noundef zeroext 32, i32 noundef 1) #16
  %5 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 6144, ptr nonnull %2) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(6144) %2, i8 0, i64 6144, i1 false)
  %7 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !46
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %99

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !44
  %13 = icmp sgt i32 %12, 0
  %14 = zext nneg i32 %8 to i64
  %15 = zext nneg i32 %12 to i64
  br label %42

16:                                               ; preds = %99, %16
  %17 = phi i64 [ %30, %16 ], [ 0, %99 ]
  %18 = phi <4 x i32> [ %23, %16 ], [ zeroinitializer, %99 ]
  %19 = phi <4 x i32> [ %26, %16 ], [ zeroinitializer, %99 ]
  %20 = phi <4 x i32> [ %29, %16 ], [ zeroinitializer, %99 ]
  %21 = getelementptr inbounds [512 x i32], ptr %2, i64 0, i64 %17
  %22 = load <4 x i32>, ptr %21, align 16, !tbaa !75
  %23 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %22, <4 x i32> %18)
  %24 = getelementptr inbounds [3 x [512 x i32]], ptr %2, i64 0, i64 1, i64 %17
  %25 = load <4 x i32>, ptr %24, align 16, !tbaa !75
  %26 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %25, <4 x i32> %19)
  %27 = getelementptr inbounds [3 x [512 x i32]], ptr %2, i64 0, i64 2, i64 %17
  %28 = load <4 x i32>, ptr %27, align 16, !tbaa !75
  %29 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %28, <4 x i32> %20)
  %30 = add nuw i64 %17, 4
  %31 = icmp eq i64 %30, 512
  br i1 %31, label %32, label %16, !llvm.loop !76

32:                                               ; preds = %16
  %33 = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %23)
  %34 = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %26)
  %35 = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %29)
  %36 = icmp eq i32 %33, 0
  %37 = sitofp i32 %33 to float
  %38 = icmp eq i32 %34, 0
  %39 = sitofp i32 %34 to float
  %40 = icmp eq i32 %35, 0
  %41 = sitofp i32 %35 to float
  br label %100

42:                                               ; preds = %10, %96
  %43 = phi i64 [ 0, %10 ], [ %97, %96 ]
  call void @llvm.lifetime.start.p0(i64 6144, ptr nonnull %3) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(6144) %3, i8 0, i64 6144, i1 false)
  br i1 %13, label %44, label %95

44:                                               ; preds = %42
  %45 = trunc i64 %43 to i32
  %46 = mul i32 %12, %45
  br label %66

47:                                               ; preds = %95, %47
  %48 = phi i64 [ %64, %47 ], [ 0, %95 ]
  %49 = getelementptr inbounds [512 x i32], ptr %3, i64 0, i64 %48
  %50 = load <4 x i32>, ptr %49, align 16, !tbaa !75
  %51 = getelementptr inbounds [512 x i32], ptr %2, i64 0, i64 %48
  %52 = load <4 x i32>, ptr %51, align 16, !tbaa !75
  %53 = add <4 x i32> %52, %50
  store <4 x i32> %53, ptr %51, align 16, !tbaa !75
  %54 = getelementptr inbounds [3 x [512 x i32]], ptr %3, i64 0, i64 1, i64 %48
  %55 = load <4 x i32>, ptr %54, align 16, !tbaa !75
  %56 = getelementptr inbounds [3 x [512 x i32]], ptr %2, i64 0, i64 1, i64 %48
  %57 = load <4 x i32>, ptr %56, align 16, !tbaa !75
  %58 = add <4 x i32> %57, %55
  store <4 x i32> %58, ptr %56, align 16, !tbaa !75
  %59 = getelementptr inbounds [3 x [512 x i32]], ptr %3, i64 0, i64 2, i64 %48
  %60 = load <4 x i32>, ptr %59, align 16, !tbaa !75
  %61 = getelementptr inbounds [3 x [512 x i32]], ptr %2, i64 0, i64 2, i64 %48
  %62 = load <4 x i32>, ptr %61, align 16, !tbaa !75
  %63 = add <4 x i32> %62, %60
  store <4 x i32> %63, ptr %61, align 16, !tbaa !75
  %64 = add nuw i64 %48, 4
  %65 = icmp eq i64 %64, 512
  br i1 %65, label %96, label %47, !llvm.loop !79

66:                                               ; preds = %44, %66
  %67 = phi i64 [ 0, %44 ], [ %93, %66 ]
  %68 = trunc i64 %67 to i32
  %69 = add i32 %46, %68
  %70 = shl nsw i32 %69, 2
  %71 = zext nneg i32 %70 to i64
  %72 = getelementptr inbounds float, ptr %6, i64 %71
  %73 = load float, ptr %72, align 4, !tbaa !58
  %74 = tail call fastcc i32 @get_bin_float(float noundef %73) #15
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [512 x i32], ptr %3, i64 0, i64 %75
  %77 = load i32, ptr %76, align 4, !tbaa !75
  %78 = add i32 %77, 1
  store i32 %78, ptr %76, align 4, !tbaa !75
  %79 = getelementptr inbounds float, ptr %72, i64 1
  %80 = load float, ptr %79, align 4, !tbaa !58
  %81 = tail call fastcc i32 @get_bin_float(float noundef %80) #15
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [3 x [512 x i32]], ptr %3, i64 0, i64 1, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !75
  %85 = add i32 %84, 1
  store i32 %85, ptr %83, align 4, !tbaa !75
  %86 = getelementptr inbounds float, ptr %72, i64 2
  %87 = load float, ptr %86, align 4, !tbaa !58
  %88 = tail call fastcc i32 @get_bin_float(float noundef %87) #15
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [3 x [512 x i32]], ptr %3, i64 0, i64 2, i64 %89
  %91 = load i32, ptr %90, align 4, !tbaa !75
  %92 = add i32 %91, 1
  store i32 %92, ptr %90, align 4, !tbaa !75
  %93 = add nuw nsw i64 %67, 1
  %94 = icmp eq i64 %93, %15
  br i1 %94, label %95, label %66, !llvm.loop !80

95:                                               ; preds = %66, %42
  br label %47

96:                                               ; preds = %47
  call void @llvm.lifetime.end.p0(i64 6144, ptr nonnull %3) #17
  %97 = add nuw nsw i64 %43, 1
  %98 = icmp eq i64 %97, %14
  br i1 %98, label %99, label %42, !llvm.loop !81

99:                                               ; preds = %96, %1
  br label %16

100:                                              ; preds = %32, %125
  %101 = phi i64 [ 0, %32 ], [ %118, %125 ]
  br i1 %36, label %109, label %102

102:                                              ; preds = %100
  %103 = getelementptr inbounds [512 x i32], ptr %2, i64 0, i64 %101
  %104 = load i32, ptr %103, align 4, !tbaa !75
  %105 = uitofp i32 %104 to float
  %106 = fdiv float %105, %37
  %107 = trunc i64 %101 to i32
  %108 = add i32 %107, 1
  tail call fastcc void @draw_histogram_bar(ptr noundef %4, i32 noundef %108, float noundef %106, i32 noundef 0) #15
  br label %109

109:                                              ; preds = %102, %100
  br i1 %38, label %117, label %110

110:                                              ; preds = %109
  %111 = getelementptr inbounds [3 x [512 x i32]], ptr %2, i64 0, i64 1, i64 %101
  %112 = load i32, ptr %111, align 4, !tbaa !75
  %113 = uitofp i32 %112 to float
  %114 = fdiv float %113, %39
  %115 = trunc i64 %101 to i32
  %116 = add i32 %115, 1
  tail call fastcc void @draw_histogram_bar(ptr noundef %4, i32 noundef %116, float noundef %114, i32 noundef 1) #15
  br label %117

117:                                              ; preds = %110, %109
  %118 = add nuw nsw i64 %101, 1
  br i1 %40, label %125, label %119

119:                                              ; preds = %117
  %120 = getelementptr inbounds [3 x [512 x i32]], ptr %2, i64 0, i64 2, i64 %101
  %121 = load i32, ptr %120, align 4, !tbaa !75
  %122 = uitofp i32 %121 to float
  %123 = fdiv float %122, %41
  %124 = trunc i64 %118 to i32
  tail call fastcc void @draw_histogram_bar(ptr noundef %4, i32 noundef %124, float noundef %123, i32 noundef 2) #15
  br label %125

125:                                              ; preds = %117, %119
  %126 = icmp eq i64 %118, 512
  br i1 %126, label %127, label %100, !llvm.loop !82

127:                                              ; preds = %125
  %128 = tail call fastcc i32 @get_bin_float(float noundef 0.000000e+00) #15
  tail call fastcc void @draw_histogram_marker(ptr noundef %4, i32 noundef %128) #15
  %129 = tail call fastcc i32 @get_bin_float(float noundef 1.000000e+00) #15
  tail call fastcc void @draw_histogram_marker(ptr noundef %4, i32 noundef %129) #15
  %130 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 8
  %131 = load ptr, ptr %130, align 8, !tbaa !45
  %132 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 2
  %133 = load i32, ptr %132, align 8, !tbaa !44
  %134 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 3
  %135 = load i32, ptr %134, align 4, !tbaa !46
  tail call fastcc void @wform_put_border(ptr noundef %131, i32 noundef %133, i32 noundef %135) #15
  call void @llvm.lifetime.end.p0(i64 6144, ptr nonnull %2) #17
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_histogram_view_from_ibuf_byte(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !83 {
  %2 = alloca [3 x [512 x i32]], align 16
  %3 = alloca [3 x [512 x i32]], align 16
  %4 = tail call ptr @IMB_allocImBuf(i32 noundef 515, i32 noundef 128, i8 noundef zeroext 32, i32 noundef 1) #16
  %5 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 6144, ptr nonnull %2) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(6144) %2, i8 0, i64 6144, i1 false)
  %7 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !46
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %96

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !44
  %13 = icmp sgt i32 %12, 0
  %14 = zext nneg i32 %8 to i64
  %15 = zext nneg i32 %12 to i64
  br label %42

16:                                               ; preds = %96, %16
  %17 = phi i64 [ %30, %16 ], [ 0, %96 ]
  %18 = phi <4 x i32> [ %29, %16 ], [ zeroinitializer, %96 ]
  %19 = phi <4 x i32> [ %26, %16 ], [ zeroinitializer, %96 ]
  %20 = phi <4 x i32> [ %23, %16 ], [ zeroinitializer, %96 ]
  %21 = getelementptr inbounds [512 x i32], ptr %2, i64 0, i64 %17
  %22 = load <4 x i32>, ptr %21, align 16, !tbaa !75
  %23 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %22, <4 x i32> %20)
  %24 = getelementptr inbounds [3 x [512 x i32]], ptr %2, i64 0, i64 1, i64 %17
  %25 = load <4 x i32>, ptr %24, align 16, !tbaa !75
  %26 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %25, <4 x i32> %19)
  %27 = getelementptr inbounds [3 x [512 x i32]], ptr %2, i64 0, i64 2, i64 %17
  %28 = load <4 x i32>, ptr %27, align 16, !tbaa !75
  %29 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %28, <4 x i32> %18)
  %30 = add nuw i64 %17, 4
  %31 = icmp eq i64 %30, 512
  br i1 %31, label %32, label %16, !llvm.loop !84

32:                                               ; preds = %16
  %33 = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %29)
  %34 = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %26)
  %35 = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %23)
  %36 = icmp eq i32 %35, 0
  %37 = uitofp i32 %35 to float
  %38 = icmp eq i32 %34, 0
  %39 = uitofp i32 %34 to float
  %40 = icmp eq i32 %33, 0
  %41 = uitofp i32 %33 to float
  br label %97

42:                                               ; preds = %10, %93
  %43 = phi i64 [ 0, %10 ], [ %94, %93 ]
  call void @llvm.lifetime.start.p0(i64 6144, ptr nonnull %3) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(6144) %3, i8 0, i64 6144, i1 false)
  br i1 %13, label %44, label %92

44:                                               ; preds = %42
  %45 = trunc i64 %43 to i32
  %46 = mul i32 %12, %45
  br label %66

47:                                               ; preds = %92, %47
  %48 = phi i64 [ %64, %47 ], [ 0, %92 ]
  %49 = getelementptr inbounds [512 x i32], ptr %3, i64 0, i64 %48
  %50 = load <4 x i32>, ptr %49, align 16, !tbaa !75
  %51 = getelementptr inbounds [512 x i32], ptr %2, i64 0, i64 %48
  %52 = load <4 x i32>, ptr %51, align 16, !tbaa !75
  %53 = add <4 x i32> %52, %50
  store <4 x i32> %53, ptr %51, align 16, !tbaa !75
  %54 = getelementptr inbounds [3 x [512 x i32]], ptr %3, i64 0, i64 1, i64 %48
  %55 = load <4 x i32>, ptr %54, align 16, !tbaa !75
  %56 = getelementptr inbounds [3 x [512 x i32]], ptr %2, i64 0, i64 1, i64 %48
  %57 = load <4 x i32>, ptr %56, align 16, !tbaa !75
  %58 = add <4 x i32> %57, %55
  store <4 x i32> %58, ptr %56, align 16, !tbaa !75
  %59 = getelementptr inbounds [3 x [512 x i32]], ptr %3, i64 0, i64 2, i64 %48
  %60 = load <4 x i32>, ptr %59, align 16, !tbaa !75
  %61 = getelementptr inbounds [3 x [512 x i32]], ptr %2, i64 0, i64 2, i64 %48
  %62 = load <4 x i32>, ptr %61, align 16, !tbaa !75
  %63 = add <4 x i32> %62, %60
  store <4 x i32> %63, ptr %61, align 16, !tbaa !75
  %64 = add nuw i64 %48, 4
  %65 = icmp eq i64 %64, 512
  br i1 %65, label %93, label %47, !llvm.loop !85

66:                                               ; preds = %44, %66
  %67 = phi i64 [ 0, %44 ], [ %90, %66 ]
  %68 = trunc i64 %67 to i32
  %69 = add i32 %46, %68
  %70 = shl nsw i32 %69, 2
  %71 = zext nneg i32 %70 to i64
  %72 = getelementptr inbounds i8, ptr %6, i64 %71
  %73 = load i8, ptr %72, align 1, !tbaa !47
  %74 = zext i8 %73 to i64
  %75 = getelementptr inbounds [512 x i32], ptr %3, i64 0, i64 %74
  %76 = load i32, ptr %75, align 4, !tbaa !75
  %77 = add i32 %76, 1
  store i32 %77, ptr %75, align 4, !tbaa !75
  %78 = getelementptr inbounds i8, ptr %72, i64 1
  %79 = load i8, ptr %78, align 1, !tbaa !47
  %80 = zext i8 %79 to i64
  %81 = getelementptr inbounds [3 x [512 x i32]], ptr %3, i64 0, i64 1, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !75
  %83 = add i32 %82, 1
  store i32 %83, ptr %81, align 4, !tbaa !75
  %84 = getelementptr inbounds i8, ptr %72, i64 2
  %85 = load i8, ptr %84, align 1, !tbaa !47
  %86 = zext i8 %85 to i64
  %87 = getelementptr inbounds [3 x [512 x i32]], ptr %3, i64 0, i64 2, i64 %86
  %88 = load i32, ptr %87, align 4, !tbaa !75
  %89 = add i32 %88, 1
  store i32 %89, ptr %87, align 4, !tbaa !75
  %90 = add nuw nsw i64 %67, 1
  %91 = icmp eq i64 %90, %15
  br i1 %91, label %92, label %66, !llvm.loop !86

92:                                               ; preds = %66, %42
  br label %47

93:                                               ; preds = %47
  call void @llvm.lifetime.end.p0(i64 6144, ptr nonnull %3) #17
  %94 = add nuw nsw i64 %43, 1
  %95 = icmp eq i64 %94, %14
  br i1 %95, label %96, label %42, !llvm.loop !87

96:                                               ; preds = %93, %1
  br label %16

97:                                               ; preds = %32, %131
  %98 = phi i64 [ 0, %32 ], [ %132, %131 ]
  br i1 %36, label %109, label %99

99:                                               ; preds = %97
  %100 = shl nuw nsw i64 %98, 1
  %101 = getelementptr inbounds [512 x i32], ptr %2, i64 0, i64 %98
  %102 = load i32, ptr %101, align 4, !tbaa !75
  %103 = uitofp i32 %102 to float
  %104 = fdiv float %103, %37
  %105 = trunc i64 %100 to i32
  %106 = or disjoint i32 %105, 1
  tail call fastcc void @draw_histogram_bar(ptr noundef %4, i32 noundef %106, float noundef %104, i32 noundef 0) #15
  %107 = trunc i64 %100 to i32
  %108 = add i32 %107, 2
  tail call fastcc void @draw_histogram_bar(ptr noundef %4, i32 noundef %108, float noundef %104, i32 noundef 0) #15
  br label %109

109:                                              ; preds = %99, %97
  br i1 %38, label %120, label %110

110:                                              ; preds = %109
  %111 = shl nuw nsw i64 %98, 1
  %112 = getelementptr inbounds [3 x [512 x i32]], ptr %2, i64 0, i64 1, i64 %98
  %113 = load i32, ptr %112, align 4, !tbaa !75
  %114 = uitofp i32 %113 to float
  %115 = fdiv float %114, %39
  %116 = trunc i64 %111 to i32
  %117 = or disjoint i32 %116, 1
  tail call fastcc void @draw_histogram_bar(ptr noundef %4, i32 noundef %117, float noundef %115, i32 noundef 1) #15
  %118 = trunc i64 %111 to i32
  %119 = add i32 %118, 2
  tail call fastcc void @draw_histogram_bar(ptr noundef %4, i32 noundef %119, float noundef %115, i32 noundef 1) #15
  br label %120

120:                                              ; preds = %110, %109
  br i1 %40, label %131, label %121

121:                                              ; preds = %120
  %122 = shl nuw nsw i64 %98, 1
  %123 = getelementptr inbounds [3 x [512 x i32]], ptr %2, i64 0, i64 2, i64 %98
  %124 = load i32, ptr %123, align 4, !tbaa !75
  %125 = uitofp i32 %124 to float
  %126 = fdiv float %125, %41
  %127 = trunc i64 %122 to i32
  %128 = or disjoint i32 %127, 1
  tail call fastcc void @draw_histogram_bar(ptr noundef %4, i32 noundef %128, float noundef %126, i32 noundef 2) #15
  %129 = trunc i64 %122 to i32
  %130 = add i32 %129, 2
  tail call fastcc void @draw_histogram_bar(ptr noundef %4, i32 noundef %130, float noundef %126, i32 noundef 2) #15
  br label %131

131:                                              ; preds = %120, %121
  %132 = add nuw nsw i64 %98, 1
  %133 = icmp eq i64 %132, 512
  br i1 %133, label %134, label %97, !llvm.loop !88

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 8
  %136 = load ptr, ptr %135, align 8, !tbaa !45
  %137 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 2
  %138 = load i32, ptr %137, align 8, !tbaa !44
  %139 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 3
  %140 = load i32, ptr %139, align 4, !tbaa !46
  tail call fastcc void @wform_put_border(ptr noundef %136, i32 noundef %138, i32 noundef %140) #15
  call void @llvm.lifetime.end.p0(i64 6144, ptr nonnull %2) #17
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @make_vectorscope_view_from_ibuf(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @make_vectorscope_view_from_ibuf_float(ptr noundef nonnull %0) #15
  br label %9

7:                                                ; preds = %1
  %8 = tail call fastcc ptr @make_vectorscope_view_from_ibuf_byte(ptr noundef nonnull %0) #15
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi ptr [ %6, %5 ], [ %8, %7 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_vectorscope_view_from_ibuf_float(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !89 {
  %2 = alloca [3 x float], align 4
  %3 = alloca [3 x float], align 4
  %4 = alloca [256 x i8], align 16
  %5 = tail call ptr @IMB_allocImBuf(i32 noundef 515, i32 noundef 515, i8 noundef zeroext 32, i32 noundef 1) #16
  %6 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #17
  br label %10

10:                                               ; preds = %1, %10
  %11 = phi i64 [ 0, %1 ], [ %21, %10 ]
  %12 = trunc i64 %11 to i32
  %13 = sitofp i32 %12 to float
  %14 = fadd float %13, 1.000000e+00
  %15 = fmul float %14, 3.906250e-03
  %16 = fpext float %15 to double
  %17 = tail call double @pow(double noundef %16, double noundef 0x3FC99999A0000000) #16
  %18 = fmul double %17, 2.550000e+02
  %19 = fptoui double %18 to i8
  %20 = getelementptr inbounds [256 x i8], ptr %4, i64 0, i64 %11
  store i8 %19, ptr %20, align 1, !tbaa !47
  %21 = add nuw nsw i64 %11, 1
  %22 = icmp eq i64 %21, 256
  br i1 %22, label %34, label %10, !llvm.loop !90

23:                                               ; preds = %34
  %24 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %25 = load i32, ptr %24, align 4, !tbaa !46
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %95

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %29 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 1
  %30 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 2
  %31 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %32 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %33 = load i32, ptr %28, align 8, !tbaa !44
  br label %40

34:                                               ; preds = %10, %34
  %35 = phi i32 [ %38, %34 ], [ 0, %10 ]
  %36 = trunc i32 %35 to i8
  %37 = xor i8 %36, -1
  tail call fastcc void @vectorscope_put_cross(i8 noundef zeroext -1, i8 noundef zeroext 0, i8 noundef zeroext %37, ptr noundef %9, i32 noundef 1) #15
  tail call fastcc void @vectorscope_put_cross(i8 noundef zeroext -1, i8 noundef zeroext %36, i8 noundef zeroext 0, ptr noundef %9, i32 noundef 1) #15
  tail call fastcc void @vectorscope_put_cross(i8 noundef zeroext %37, i8 noundef zeroext -1, i8 noundef zeroext 0, ptr noundef %9, i32 noundef 1) #15
  tail call fastcc void @vectorscope_put_cross(i8 noundef zeroext 0, i8 noundef zeroext -1, i8 noundef zeroext %36, ptr noundef %9, i32 noundef 1) #15
  tail call fastcc void @vectorscope_put_cross(i8 noundef zeroext 0, i8 noundef zeroext %37, i8 noundef zeroext -1, ptr noundef %9, i32 noundef 1) #15
  tail call fastcc void @vectorscope_put_cross(i8 noundef zeroext %36, i8 noundef zeroext 0, i8 noundef zeroext -1, ptr noundef %9, i32 noundef 1) #15
  %38 = add nuw nsw i32 %35, 1
  %39 = icmp eq i32 %38, 256
  br i1 %39, label %23, label %34, !llvm.loop !91

40:                                               ; preds = %27, %90
  %41 = phi i32 [ %25, %27 ], [ %91, %90 ]
  %42 = phi i32 [ %33, %27 ], [ %92, %90 ]
  %43 = phi i32 [ 0, %27 ], [ %93, %90 ]
  %44 = icmp sgt i32 %42, 0
  br i1 %44, label %45, label %90

45:                                               ; preds = %40, %73
  %46 = phi i32 [ %86, %73 ], [ %42, %40 ]
  %47 = phi i32 [ %85, %73 ], [ 0, %40 ]
  %48 = mul nsw i32 %46, %43
  %49 = add nsw i32 %48, %47
  %50 = shl nsw i32 %49, 2
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds float, ptr %7, i64 %51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %52, i64 12, i1 false)
  %53 = load float, ptr %2, align 4, !tbaa !58
  %54 = fcmp olt float %53, 0.000000e+00
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  store float 0.000000e+00, ptr %2, align 4, !tbaa !58
  br label %59

56:                                               ; preds = %45
  %57 = fcmp ogt float %53, 1.000000e+00
  br i1 %57, label %58, label %59

58:                                               ; preds = %56
  store float 1.000000e+00, ptr %2, align 4, !tbaa !58
  br label %59

59:                                               ; preds = %56, %58, %55
  %60 = load float, ptr %29, align 4, !tbaa !58
  %61 = fcmp olt float %60, 0.000000e+00
  br i1 %61, label %64, label %62

62:                                               ; preds = %59
  %63 = fcmp ogt float %60, 1.000000e+00
  br i1 %63, label %64, label %66

64:                                               ; preds = %62, %59
  %65 = phi float [ 0.000000e+00, %59 ], [ 1.000000e+00, %62 ]
  store float %65, ptr %29, align 4, !tbaa !58
  br label %66

66:                                               ; preds = %64, %62
  %67 = load float, ptr %30, align 4, !tbaa !58
  %68 = fcmp olt float %67, 0.000000e+00
  br i1 %68, label %71, label %69

69:                                               ; preds = %66
  %70 = fcmp ogt float %67, 1.000000e+00
  br i1 %70, label %71, label %73

71:                                               ; preds = %69, %66
  %72 = phi float [ 0.000000e+00, %66 ], [ 1.000000e+00, %69 ]
  store float %72, ptr %30, align 4, !tbaa !58
  br label %73

73:                                               ; preds = %71, %69
  call fastcc void @rgb_to_yuv_normalized(ptr noundef nonnull %2, ptr noundef nonnull %3) #15
  %74 = load float, ptr %31, align 4, !tbaa !58
  %75 = tail call float @llvm.fmuladd.f32(float %74, float 5.120000e+02, float 1.000000e+00)
  %76 = fptosi float %75 to i32
  %77 = mul nsw i32 %76, 515
  %78 = load float, ptr %32, align 4, !tbaa !58
  %79 = tail call float @llvm.fmuladd.f32(float %78, float 5.120000e+02, float 1.000000e+00)
  %80 = fptosi float %79 to i32
  %81 = add nsw i32 %77, %80
  %82 = shl nsw i32 %81, 2
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, ptr %9, i64 %83
  call fastcc void @scope_put_pixel(ptr noundef nonnull %4, ptr noundef %84) #15
  %85 = add nuw nsw i32 %47, 1
  %86 = load i32, ptr %28, align 8, !tbaa !44
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %45, label %88, !llvm.loop !92

88:                                               ; preds = %73
  %89 = load i32, ptr %24, align 4, !tbaa !46
  br label %90

90:                                               ; preds = %88, %40
  %91 = phi i32 [ %89, %88 ], [ %41, %40 ]
  %92 = phi i32 [ %86, %88 ], [ %42, %40 ]
  %93 = add nuw nsw i32 %43, 1
  %94 = icmp slt i32 %93, %91
  br i1 %94, label %40, label %95, !llvm.loop !93

95:                                               ; preds = %90, %23
  tail call fastcc void @vectorscope_put_cross(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef %9, i32 noundef 3) #15
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #17
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_vectorscope_view_from_ibuf_byte(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !94 {
  %2 = alloca [3 x float], align 8
  %3 = alloca [3 x float], align 4
  %4 = alloca [256 x i8], align 16
  %5 = tail call ptr @IMB_allocImBuf(i32 noundef 515, i32 noundef 515, i8 noundef zeroext 32, i32 noundef 1) #16
  %6 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #17
  br label %10

10:                                               ; preds = %1, %10
  %11 = phi i64 [ 0, %1 ], [ %21, %10 ]
  %12 = trunc i64 %11 to i32
  %13 = sitofp i32 %12 to float
  %14 = fadd float %13, 1.000000e+00
  %15 = fmul float %14, 3.906250e-03
  %16 = fpext float %15 to double
  %17 = tail call double @pow(double noundef %16, double noundef 0x3FC99999A0000000) #16
  %18 = fmul double %17, 2.550000e+02
  %19 = fptoui double %18 to i8
  %20 = getelementptr inbounds [256 x i8], ptr %4, i64 0, i64 %11
  store i8 %19, ptr %20, align 1, !tbaa !47
  %21 = add nuw nsw i64 %11, 1
  %22 = icmp eq i64 %21, 256
  br i1 %22, label %33, label %10, !llvm.loop !95

23:                                               ; preds = %33
  %24 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %25 = load i32, ptr %24, align 4, !tbaa !46
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %80

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %29 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 2
  %30 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %31 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %32 = load i32, ptr %28, align 8, !tbaa !44
  br label %39

33:                                               ; preds = %10, %33
  %34 = phi i32 [ %37, %33 ], [ 0, %10 ]
  %35 = trunc i32 %34 to i8
  %36 = xor i8 %35, -1
  tail call fastcc void @vectorscope_put_cross(i8 noundef zeroext -1, i8 noundef zeroext 0, i8 noundef zeroext %36, ptr noundef %9, i32 noundef 1) #15
  tail call fastcc void @vectorscope_put_cross(i8 noundef zeroext -1, i8 noundef zeroext %35, i8 noundef zeroext 0, ptr noundef %9, i32 noundef 1) #15
  tail call fastcc void @vectorscope_put_cross(i8 noundef zeroext %36, i8 noundef zeroext -1, i8 noundef zeroext 0, ptr noundef %9, i32 noundef 1) #15
  tail call fastcc void @vectorscope_put_cross(i8 noundef zeroext 0, i8 noundef zeroext -1, i8 noundef zeroext %35, ptr noundef %9, i32 noundef 1) #15
  tail call fastcc void @vectorscope_put_cross(i8 noundef zeroext 0, i8 noundef zeroext %36, i8 noundef zeroext -1, ptr noundef %9, i32 noundef 1) #15
  tail call fastcc void @vectorscope_put_cross(i8 noundef zeroext %35, i8 noundef zeroext 0, i8 noundef zeroext -1, ptr noundef %9, i32 noundef 1) #15
  %37 = add nuw nsw i32 %34, 1
  %38 = icmp eq i32 %37, 256
  br i1 %38, label %23, label %33, !llvm.loop !96

39:                                               ; preds = %27, %75
  %40 = phi i32 [ %25, %27 ], [ %76, %75 ]
  %41 = phi i32 [ %32, %27 ], [ %77, %75 ]
  %42 = phi i32 [ 0, %27 ], [ %78, %75 ]
  %43 = icmp sgt i32 %41, 0
  br i1 %43, label %44, label %75

44:                                               ; preds = %39, %44
  %45 = phi i32 [ %71, %44 ], [ %41, %39 ]
  %46 = phi i32 [ %70, %44 ], [ 0, %39 ]
  %47 = mul nsw i32 %45, %42
  %48 = add nsw i32 %47, %46
  %49 = shl nsw i32 %48, 2
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, ptr %7, i64 %50
  %52 = load <2 x i8>, ptr %51, align 1, !tbaa !47
  %53 = uitofp <2 x i8> %52 to <2 x float>
  %54 = fdiv <2 x float> %53, <float 2.550000e+02, float 2.550000e+02>
  store <2 x float> %54, ptr %2, align 8, !tbaa !58
  %55 = getelementptr inbounds i8, ptr %51, i64 2
  %56 = load i8, ptr %55, align 1, !tbaa !47
  %57 = uitofp i8 %56 to float
  %58 = fdiv float %57, 2.550000e+02
  store float %58, ptr %29, align 8, !tbaa !58
  call fastcc void @rgb_to_yuv_normalized(ptr noundef nonnull %2, ptr noundef nonnull %3) #15
  %59 = load float, ptr %30, align 4, !tbaa !58
  %60 = tail call float @llvm.fmuladd.f32(float %59, float 5.120000e+02, float 1.000000e+00)
  %61 = fptosi float %60 to i32
  %62 = mul nsw i32 %61, 515
  %63 = load float, ptr %31, align 4, !tbaa !58
  %64 = tail call float @llvm.fmuladd.f32(float %63, float 5.120000e+02, float 1.000000e+00)
  %65 = fptosi float %64 to i32
  %66 = add nsw i32 %62, %65
  %67 = shl nsw i32 %66, 2
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, ptr %9, i64 %68
  call fastcc void @scope_put_pixel(ptr noundef nonnull %4, ptr noundef %69) #15
  %70 = add nuw nsw i32 %46, 1
  %71 = load i32, ptr %28, align 8, !tbaa !44
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %44, label %73, !llvm.loop !97

73:                                               ; preds = %44
  %74 = load i32, ptr %24, align 4, !tbaa !46
  br label %75

75:                                               ; preds = %73, %39
  %76 = phi i32 [ %74, %73 ], [ %40, %39 ]
  %77 = phi i32 [ %71, %73 ], [ %41, %39 ]
  %78 = add nuw nsw i32 %42, 1
  %79 = icmp slt i32 %78, %76
  br i1 %79, label %39, label %80, !llvm.loop !98

80:                                               ; preds = %75, %23
  tail call fastcc void @vectorscope_put_cross(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef %9, i32 noundef 3) #15
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #17
  ret ptr %5
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable
define internal fastcc void @wform_put_grid(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #4 !PGOFuncName !99 {
  tail call fastcc void @wform_put_gridrow(ptr noundef %0, float noundef 9.000000e+01, i32 noundef %1) #15
  tail call fastcc void @wform_put_gridrow(ptr noundef %0, float noundef 7.000000e+01, i32 noundef %1) #15
  tail call fastcc void @wform_put_gridrow(ptr noundef %0, float noundef 1.000000e+01, i32 noundef %1) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @rgb_to_luma(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !100 {
  %2 = load float, ptr %0, align 4, !tbaa !58
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !58
  %5 = fmul float %4, 0x3FE2C8B440000000
  %6 = tail call float @llvm.fmuladd.f32(float %2, float 0x3FD322D0E0000000, float %5)
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !58
  %9 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FBD2F1AA0000000, float %6)
  ret float %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @scope_put_pixel(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #7 !PGOFuncName !101 {
  %3 = load i8, ptr %1, align 1, !tbaa !47
  %4 = zext i8 %3 to i64
  %5 = getelementptr inbounds i8, ptr %0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !47
  %7 = getelementptr inbounds i8, ptr %1, i64 2
  store i8 %6, ptr %7, align 1, !tbaa !47
  %8 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %6, ptr %8, align 1, !tbaa !47
  store i8 %6, ptr %1, align 1, !tbaa !47
  %9 = getelementptr inbounds i8, ptr %1, i64 3
  store i8 -1, ptr %9, align 1, !tbaa !47
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @wform_put_line(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 !PGOFuncName !102 {
  %4 = icmp ugt ptr %1, %2
  %5 = select i1 %4, ptr %1, ptr %2
  %6 = select i1 %4, ptr %2, ptr %1
  %7 = icmp ult ptr %6, %5
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = shl nsw i32 %0, 2
  %10 = sext i32 %9 to i64
  br label %11

11:                                               ; preds = %8, %16
  %12 = phi ptr [ %6, %8 ], [ %17, %16 ]
  %13 = load i8, ptr %12, align 1, !tbaa !47
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store <4 x i8> <i8 32, i8 32, i8 32, i8 -1>, ptr %12, align 1, !tbaa !47
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds i8, ptr %12, i64 %10
  %18 = icmp ult ptr %17, %5
  br i1 %18, label %11, label %19, !llvm.loop !103

19:                                               ; preds = %16, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: write) uwtable
define internal fastcc void @wform_put_border(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #8 !PGOFuncName !104 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %19

5:                                                ; preds = %3
  %6 = shl nsw i32 %1, 2
  %7 = or disjoint i32 %6, 3
  %8 = zext nneg i32 %7 to i64
  %9 = or disjoint i32 %6, 1
  %10 = zext nneg i32 %9 to i64
  %11 = add nsw i32 %2, -1
  %12 = mul nsw i32 %11, %1
  %13 = mul nsw i32 %1, -4
  %14 = or disjoint i32 %13, 3
  %15 = sext i32 %14 to i64
  %16 = or disjoint i32 %13, 1
  %17 = sext i32 %16 to i64
  %18 = zext nneg i32 %1 to i64
  br label %25

19:                                               ; preds = %25, %3
  %20 = icmp sgt i32 %2, 0
  br i1 %20, label %21, label %63

21:                                               ; preds = %19
  %22 = shl i32 %1, 2
  %23 = sext i32 %22 to i64
  %24 = zext nneg i32 %2 to i64
  br label %44

25:                                               ; preds = %5, %25
  %26 = phi i64 [ 0, %5 ], [ %42, %25 ]
  %27 = shl nsw i64 %26, 2
  %28 = getelementptr inbounds i8, ptr %0, i64 %27
  %29 = getelementptr inbounds i8, ptr %28, i64 3
  store i8 -101, ptr %29, align 1, !tbaa !47
  %30 = getelementptr inbounds i8, ptr %28, i64 1
  store i8 -101, ptr %30, align 1, !tbaa !47
  %31 = getelementptr inbounds i8, ptr %28, i64 %8
  store i8 -101, ptr %31, align 1, !tbaa !47
  %32 = getelementptr inbounds i8, ptr %28, i64 %10
  store i8 -101, ptr %32, align 1, !tbaa !47
  %33 = trunc i64 %26 to i32
  %34 = add i32 %12, %33
  %35 = shl nsw i32 %34, 2
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, ptr %0, i64 %36
  %38 = getelementptr inbounds i8, ptr %37, i64 3
  store i8 -101, ptr %38, align 1, !tbaa !47
  %39 = getelementptr inbounds i8, ptr %37, i64 1
  store i8 -101, ptr %39, align 1, !tbaa !47
  %40 = getelementptr inbounds i8, ptr %37, i64 %15
  store i8 -101, ptr %40, align 1, !tbaa !47
  %41 = getelementptr inbounds i8, ptr %37, i64 %17
  store i8 -101, ptr %41, align 1, !tbaa !47
  %42 = add nuw nsw i64 %26, 1
  %43 = icmp eq i64 %42, %18
  br i1 %43, label %19, label %25, !llvm.loop !105

44:                                               ; preds = %21, %44
  %45 = phi i64 [ 0, %21 ], [ %52, %44 ]
  %46 = mul nsw i64 %45, %23
  %47 = getelementptr inbounds i8, ptr %0, i64 %46
  %48 = getelementptr inbounds i8, ptr %47, i64 3
  store i8 -101, ptr %48, align 1, !tbaa !47
  %49 = getelementptr inbounds i8, ptr %47, i64 1
  store i8 -101, ptr %49, align 1, !tbaa !47
  %50 = getelementptr inbounds i8, ptr %47, i64 7
  store i8 -101, ptr %50, align 1, !tbaa !47
  %51 = getelementptr inbounds i8, ptr %47, i64 5
  store i8 -101, ptr %51, align 1, !tbaa !47
  %52 = add nuw nsw i64 %45, 1
  %53 = trunc i64 %52 to i32
  %54 = mul i32 %22, %53
  %55 = add i32 %54, -4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, ptr %0, i64 %56
  %58 = getelementptr inbounds i8, ptr %57, i64 3
  store i8 -101, ptr %58, align 1, !tbaa !47
  %59 = getelementptr inbounds i8, ptr %57, i64 1
  store i8 -101, ptr %59, align 1, !tbaa !47
  %60 = getelementptr inbounds i8, ptr %57, i64 -1
  store i8 -101, ptr %60, align 1, !tbaa !47
  %61 = getelementptr inbounds i8, ptr %57, i64 -3
  store i8 -101, ptr %61, align 1, !tbaa !47
  %62 = icmp eq i64 %52, %24
  br i1 %62, label %63, label %44, !llvm.loop !106

63:                                               ; preds = %44, %19
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable
define internal fastcc void @wform_put_gridrow(ptr nocapture noundef writeonly %0, float noundef %1, i32 noundef %2) unnamed_addr #4 !PGOFuncName !107 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %21

5:                                                ; preds = %3
  %6 = shl nuw i32 %2, 1
  %7 = shl i32 %2, 2
  %8 = fdiv float %1, 1.000000e+02
  %9 = fmul float %8, 5.150000e+02
  %10 = fptosi float %9 to i32
  %11 = mul i32 %7, %10
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, ptr %0, i64 %12
  %14 = tail call i32 @llvm.smax.i32(i32 %6, i32 1)
  br label %15

15:                                               ; preds = %5, %15
  %16 = phi i32 [ %19, %15 ], [ 0, %5 ]
  %17 = phi ptr [ %18, %15 ], [ %13, %5 ]
  store i8 -1, ptr %17, align 1, !tbaa !47
  %18 = getelementptr inbounds i8, ptr %17, i64 4
  %19 = add nuw nsw i32 %16, 1
  %20 = icmp eq i32 %19, %14
  br i1 %20, label %21, label %15, !llvm.loop !108

21:                                               ; preds = %15, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @rgb_to_luma_byte(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !109 {
  %2 = load i8, ptr %0, align 1, !tbaa !47
  %3 = zext i8 %2 to i16
  %4 = mul nuw nsw i16 %3, 76
  %5 = getelementptr inbounds i8, ptr %0, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !47
  %7 = zext i8 %6 to i16
  %8 = mul nuw i16 %7, 150
  %9 = add nuw i16 %8, %4
  %10 = getelementptr inbounds i8, ptr %0, i64 2
  %11 = load i8, ptr %10, align 1, !tbaa !47
  %12 = zext i8 %11 to i16
  %13 = mul nuw nsw i16 %12, 29
  %14 = add nuw i16 %9, %13
  %15 = udiv i16 %14, 255
  %16 = trunc i16 %15 to i8
  ret i8 %16
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @scope_put_pixel_single(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #7 !PGOFuncName !110 {
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds i8, ptr %1, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !47
  %7 = zext i8 %6 to i64
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !47
  store i8 %9, ptr %5, align 1, !tbaa !47
  %10 = getelementptr inbounds i8, ptr %1, i64 3
  store i8 -1, ptr %10, align 1, !tbaa !47
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @wform_put_line_single(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #3 !PGOFuncName !111 {
  %5 = icmp ugt ptr %1, %2
  %6 = select i1 %5, ptr %1, ptr %2
  %7 = select i1 %5, ptr %2, ptr %1
  %8 = icmp ult ptr %7, %6
  br i1 %8, label %9, label %23

9:                                                ; preds = %4
  %10 = sext i32 %3 to i64
  %11 = shl nsw i32 %0, 2
  %12 = sext i32 %11 to i64
  br label %13

13:                                               ; preds = %9, %20
  %14 = phi ptr [ %7, %9 ], [ %21, %20 ]
  %15 = getelementptr inbounds i8, ptr %14, i64 %10
  %16 = load i8, ptr %15, align 1, !tbaa !47
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  store i8 32, ptr %15, align 1, !tbaa !47
  %19 = getelementptr inbounds i8, ptr %14, i64 3
  store i8 -1, ptr %19, align 1, !tbaa !47
  br label %20

20:                                               ; preds = %18, %13
  %21 = getelementptr inbounds i8, ptr %14, i64 %12
  %22 = icmp ult ptr %21, %6
  br i1 %22, label %13, label %23, !llvm.loop !112

23:                                               ; preds = %20, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_bin_float(float noundef %0) unnamed_addr #11 !PGOFuncName !113 {
  %2 = fcmp olt float %0, -2.500000e-01
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = fcmp ult float %0, 1.250000e+00
  br i1 %4, label %5, label %10

5:                                                ; preds = %3
  %6 = fadd float %0, 2.500000e-01
  %7 = fdiv float %6, 1.500000e+00
  %8 = fmul float %7, 5.120000e+02
  %9 = fptosi float %8 to i32
  br label %10

10:                                               ; preds = %3, %1, %5
  %11 = phi i32 [ %9, %5 ], [ 0, %1 ], [ 511, %3 ]
  ret i32 %11
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @draw_histogram_bar(ptr nocapture noundef readonly %0, i32 noundef %1, float noundef %2, i32 noundef %3) unnamed_addr #12 !PGOFuncName !114 {
  %5 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !46
  %7 = sitofp i32 %6 to float
  %8 = fmul float %7, %2
  %9 = fmul float %8, 0x3FECCCCCC0000000
  %10 = fptosi float %9 to i32
  %11 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %12 = icmp sgt i32 %10, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !45
  %16 = load i32, ptr %11, align 8, !tbaa !44
  %17 = add nsw i32 %16, %1
  %18 = shl nsw i32 %17, 2
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, ptr %15, i64 %19
  %21 = zext nneg i32 %3 to i64
  br label %22

22:                                               ; preds = %13, %22
  %23 = phi i32 [ 0, %13 ], [ %30, %22 ]
  %24 = phi ptr [ %20, %13 ], [ %29, %22 ]
  %25 = getelementptr inbounds i8, ptr %24, i64 %21
  store i8 -1, ptr %25, align 1, !tbaa !47
  %26 = load i32, ptr %11, align 8, !tbaa !44
  %27 = shl nsw i32 %26, 2
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, ptr %24, i64 %28
  %30 = add nuw nsw i32 %23, 1
  %31 = icmp eq i32 %30, %10
  br i1 %31, label %32, label %22, !llvm.loop !115

32:                                               ; preds = %22, %4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @draw_histogram_marker(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #12 !PGOFuncName !116 {
  %3 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !46
  %5 = sitofp i32 %4 to double
  %6 = fmul double %5, 1.000000e-01
  %7 = fptosi double %6 to i32
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %9 = icmp sgt i32 %7, 1
  br i1 %9, label %10, label %33

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !45
  %13 = add i32 %4, 1
  %14 = sub i32 %13, %7
  %15 = load i32, ptr %8, align 8, !tbaa !44
  %16 = mul nsw i32 %14, %15
  %17 = add nsw i32 %16, %1
  %18 = shl nsw i32 %17, 2
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, ptr %12, i64 %19
  %21 = add nsw i32 %7, -2
  br label %22

22:                                               ; preds = %10, %22
  %23 = phi i32 [ %31, %22 ], [ 0, %10 ]
  %24 = phi ptr [ %30, %22 ], [ %20, %10 ]
  %25 = getelementptr inbounds i8, ptr %24, i64 2
  store i8 -1, ptr %25, align 1, !tbaa !47
  %26 = getelementptr inbounds i8, ptr %24, i64 1
  store i8 -1, ptr %26, align 1, !tbaa !47
  store i8 -1, ptr %24, align 1, !tbaa !47
  %27 = load i32, ptr %8, align 8, !tbaa !44
  %28 = shl nsw i32 %27, 2
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, ptr %24, i64 %29
  %31 = add nuw nsw i32 %23, 1
  %32 = icmp eq i32 %23, %21
  br i1 %32, label %33, label %22, !llvm.loop !117

33:                                               ; preds = %22, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: write) uwtable
define internal fastcc void @vectorscope_put_cross(i8 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr nocapture noundef writeonly %3, i32 noundef %4) unnamed_addr #8 !PGOFuncName !118 {
  %6 = alloca [3 x float], align 8
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #17
  %8 = insertelement <2 x i8> poison, i8 %0, i64 0
  %9 = insertelement <2 x i8> %8, i8 %1, i64 1
  %10 = uitofp <2 x i8> %9 to <2 x float>
  %11 = fdiv <2 x float> %10, <float 2.550000e+02, float 2.550000e+02>
  store <2 x float> %11, ptr %6, align 8, !tbaa !58
  %12 = uitofp i8 %2 to float
  %13 = fdiv float %12, 2.550000e+02
  %14 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  store float %13, ptr %14, align 8, !tbaa !58
  call fastcc void @rgb_to_yuv_normalized(ptr noundef nonnull %6, ptr noundef nonnull %7) #15
  %15 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !58
  %17 = tail call float @llvm.fmuladd.f32(float %16, float 5.120000e+02, float 1.000000e+00)
  %18 = fptosi float %17 to i32
  %19 = mul nsw i32 %18, 515
  %20 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !58
  %22 = tail call float @llvm.fmuladd.f32(float %21, float 5.120000e+02, float 1.000000e+00)
  %23 = fptosi float %22 to i32
  %24 = add nsw i32 %19, %23
  %25 = shl nsw i32 %24, 2
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, ptr %3, i64 %26
  %28 = or i8 %1, %0
  %29 = or i8 %28, %2
  %30 = icmp eq i8 %29, 0
  %31 = select i1 %30, i8 -1, i8 %0
  %32 = icmp slt i32 %4, 0
  br i1 %32, label %57, label %33

33:                                               ; preds = %5
  %34 = sub nsw i32 0, %4
  %35 = zext i32 %34 to i64
  %36 = add nuw i32 %4, 1
  br label %37

37:                                               ; preds = %53, %33
  %38 = phi i64 [ %35, %33 ], [ %54, %53 ]
  %39 = mul i64 %38, 515
  br label %40

40:                                               ; preds = %37, %40
  %41 = phi i64 [ %35, %37 ], [ %50, %40 ]
  %42 = add i64 %41, %39
  %43 = trunc i64 %42 to i32
  %44 = shl nsw i32 %43, 2
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, ptr %27, i64 %45
  store i8 %31, ptr %46, align 1, !tbaa !47
  %47 = getelementptr inbounds i8, ptr %46, i64 1
  store i8 %1, ptr %47, align 1, !tbaa !47
  %48 = getelementptr inbounds i8, ptr %46, i64 2
  store i8 %2, ptr %48, align 1, !tbaa !47
  %49 = getelementptr inbounds i8, ptr %46, i64 3
  store i8 -1, ptr %49, align 1, !tbaa !47
  %50 = add i64 %41, 1
  %51 = trunc i64 %50 to i32
  %52 = icmp eq i32 %36, %51
  br i1 %52, label %53, label %40, !llvm.loop !119

53:                                               ; preds = %40
  %54 = add i64 %38, 1
  %55 = trunc i64 %54 to i32
  %56 = icmp eq i32 %36, %55
  br i1 %56, label %57, label %37, !llvm.loop !120

57:                                               ; preds = %53, %5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @rgb_to_yuv_normalized(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #7 !PGOFuncName !121 {
  %3 = load float, ptr %0, align 4, !tbaa !58
  %4 = getelementptr inbounds float, ptr %0, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !58
  %6 = fmul float %5, 0x3FE2C8B440000000
  %7 = tail call float @llvm.fmuladd.f32(float %3, float 0x3FD322D0E0000000, float %6)
  %8 = getelementptr inbounds float, ptr %0, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !58
  %10 = tail call float @llvm.fmuladd.f32(float %9, float 0x3FBD2F1AA0000000, float %7)
  store float %10, ptr %1, align 4, !tbaa !58
  %11 = load float, ptr %8, align 4, !tbaa !58
  %12 = fsub float %11, %10
  %13 = getelementptr inbounds float, ptr %1, i64 1
  %14 = fmul float %12, 0x3FDF7CEDA0000000
  store float %14, ptr %13, align 4, !tbaa !58
  %15 = load float, ptr %0, align 4, !tbaa !58
  %16 = fsub float %15, %10
  %17 = fmul float %16, 0x3FEC106240000000
  %18 = insertelement <2 x float> poison, float %14, i64 0
  %19 = insertelement <2 x float> %18, float %17, i64 1
  %20 = fmul <2 x float> %19, <float 0x3FF0B8A7E0000000, float 0x3FE9FCBD20000000>
  %21 = fadd <2 x float> %20, <float 5.000000e-01, float 5.000000e-01>
  store <2 x float> %21, ptr %13, align 4, !tbaa !58
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v4i32(<4 x i32>) #14

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { optsize }
attributes #16 = { nounwind optsize }
attributes #17 = { nounwind }

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
!34 = !{!35, !36, i64 48}
!35 = !{!"ImBuf", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !37, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !40, i64 112, !37, i64 120, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !36, i64 296, !36, i64 304, !39, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !39, i64 2376, !36, i64 2384, !39, i64 2392, !39, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !39, i64 2432, !41, i64 2436, !42, i64 2456}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"float", !37, i64 0}
!41 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!42 = !{!"DDSData", !39, i64 0, !39, i64 4, !36, i64 8, !39, i64 16}
!43 = !{!"sequencer_scopes.c:make_waveform_view_from_ibuf_float"}
!44 = !{!35, !39, i64 16}
!45 = !{!35, !36, i64 40}
!46 = !{!35, !39, i64 20}
!47 = !{!37, !37, i64 0}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.mustprogress"}
!50 = distinct !{!50, !49}
!51 = distinct !{!51, !49}
!52 = !{!"sequencer_scopes.c:make_waveform_view_from_ibuf_byte"}
!53 = distinct !{!53, !49}
!54 = distinct !{!54, !49}
!55 = distinct !{!55, !49}
!56 = !{!"sequencer_scopes.c:make_sep_waveform_view_from_ibuf_float"}
!57 = distinct !{!57, !49}
!58 = !{!40, !40, i64 0}
!59 = !{!36, !36, i64 0}
!60 = distinct !{!60, !49}
!61 = distinct !{!61, !49}
!62 = distinct !{!62, !49}
!63 = !{!"sequencer_scopes.c:make_sep_waveform_view_from_ibuf_byte"}
!64 = distinct !{!64, !49}
!65 = distinct !{!65, !49}
!66 = distinct !{!66, !49}
!67 = distinct !{!67, !49}
!68 = !{!"sequencer_scopes.c:draw_zebra_float"}
!69 = distinct !{!69, !49}
!70 = distinct !{!70, !49}
!71 = !{!"sequencer_scopes.c:draw_zebra_byte"}
!72 = distinct !{!72, !49}
!73 = distinct !{!73, !49}
!74 = !{!"sequencer_scopes.c:make_histogram_view_from_ibuf_float"}
!75 = !{!39, !39, i64 0}
!76 = distinct !{!76, !49, !77, !78}
!77 = !{!"llvm.loop.isvectorized", i32 1}
!78 = !{!"llvm.loop.unroll.runtime.disable"}
!79 = distinct !{!79, !49, !77, !78}
!80 = distinct !{!80, !49}
!81 = distinct !{!81, !49}
!82 = distinct !{!82, !49}
!83 = !{!"sequencer_scopes.c:make_histogram_view_from_ibuf_byte"}
!84 = distinct !{!84, !49, !77, !78}
!85 = distinct !{!85, !49, !77, !78}
!86 = distinct !{!86, !49}
!87 = distinct !{!87, !49}
!88 = distinct !{!88, !49}
!89 = !{!"sequencer_scopes.c:make_vectorscope_view_from_ibuf_float"}
!90 = distinct !{!90, !49}
!91 = distinct !{!91, !49}
!92 = distinct !{!92, !49}
!93 = distinct !{!93, !49}
!94 = !{!"sequencer_scopes.c:make_vectorscope_view_from_ibuf_byte"}
!95 = distinct !{!95, !49}
!96 = distinct !{!96, !49}
!97 = distinct !{!97, !49}
!98 = distinct !{!98, !49}
!99 = !{!"sequencer_scopes.c:wform_put_grid"}
!100 = !{!"sequencer_scopes.c:rgb_to_luma"}
!101 = !{!"sequencer_scopes.c:scope_put_pixel"}
!102 = !{!"sequencer_scopes.c:wform_put_line"}
!103 = distinct !{!103, !49}
!104 = !{!"sequencer_scopes.c:wform_put_border"}
!105 = distinct !{!105, !49}
!106 = distinct !{!106, !49}
!107 = !{!"sequencer_scopes.c:wform_put_gridrow"}
!108 = distinct !{!108, !49}
!109 = !{!"sequencer_scopes.c:rgb_to_luma_byte"}
!110 = !{!"sequencer_scopes.c:scope_put_pixel_single"}
!111 = !{!"sequencer_scopes.c:wform_put_line_single"}
!112 = distinct !{!112, !49}
!113 = !{!"sequencer_scopes.c:get_bin_float"}
!114 = !{!"sequencer_scopes.c:draw_histogram_bar"}
!115 = distinct !{!115, !49}
!116 = !{!"sequencer_scopes.c:draw_histogram_marker"}
!117 = distinct !{!117, !49}
!118 = !{!"sequencer_scopes.c:vectorscope_put_cross"}
!119 = distinct !{!119, !49}
!120 = distinct !{!120, !49}
!121 = !{!"sequencer_scopes.c:rgb_to_yuv_normalized"}
