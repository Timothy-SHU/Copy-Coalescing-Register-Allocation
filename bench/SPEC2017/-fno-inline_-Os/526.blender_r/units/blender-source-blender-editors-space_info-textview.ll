; ModuleID = 'blender/source/blender/editors/space_info/textview.c'
source_filename = "blender/source/blender/editors/space_info/textview.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ConsoleDrawContext = type { i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32 }
%struct.TextViewContext = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32 }

@blf_mono_font = external local_unnamed_addr global i32, align 4
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [21 x i8] c"console_wrap_offsets\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @textview_draw(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.ConsoleDrawContext, align 8
  %7 = alloca [2 x i32], align 4
  %8 = alloca [2 x i32], align 8
  %9 = alloca [3 x i8], align 1
  %10 = alloca [3 x i8], align 1
  %11 = alloca [4 x i8], align 4
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #8
  %14 = getelementptr inbounds i8, ptr %6, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %14, i8 0, i64 48, i1 false)
  %15 = load i32, ptr %0, align 8, !tbaa !34
  %16 = sdiv i32 %15, 6
  %17 = add nsw i32 %16, 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  store i64 -1, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %10) #8
  %18 = load i32, ptr @blf_mono_font, align 4, !tbaa !40
  tail call fastcc void @console_font_begin(ptr noundef nonnull %0) #9
  store i32 4, ptr %7, align 4, !tbaa !40
  %19 = getelementptr inbounds [2 x i32], ptr %7, i64 0, i64 1
  store i32 %17, ptr %19, align 4, !tbaa !40
  %20 = getelementptr inbounds i32, ptr %2, i64 1
  %21 = load i32, ptr %20, align 4, !tbaa !40
  %22 = icmp eq i32 %21, 2147483647
  br i1 %22, label %28, label %23

23:                                               ; preds = %5
  %24 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 6
  %25 = load i32, ptr %24, align 8, !tbaa !41
  %26 = add i32 %21, 4
  %27 = add i32 %26, %25
  store i32 %27, ptr %20, align 4, !tbaa !40
  br label %28

28:                                               ; preds = %23, %5
  %29 = icmp eq ptr %4, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %28
  store i32 0, ptr %4, align 4, !tbaa !40
  br label %31

31:                                               ; preds = %30, %28
  %32 = tail call float @BLF_fixed_width(i32 noundef %18) #10
  %33 = fptosi float %32 to i32
  store i32 %33, ptr %6, align 8, !tbaa !42
  %34 = load i32, ptr %0, align 8, !tbaa !34
  %35 = getelementptr inbounds %struct.ConsoleDrawContext, ptr %6, i64 0, i32 1
  store i32 %34, ptr %35, align 4, !tbaa !44
  %36 = tail call float @BLF_descender(i32 noundef %18) #10
  %37 = fneg float %36
  %38 = fptosi float %37 to i32
  %39 = getelementptr inbounds %struct.ConsoleDrawContext, ptr %6, i64 0, i32 2
  store i32 %38, ptr %39, align 8, !tbaa !45
  %40 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 5
  %41 = load i32, ptr %40, align 4, !tbaa !46
  %42 = add nsw i32 %41, -8
  %43 = sdiv i32 %42, %33
  %44 = getelementptr inbounds %struct.ConsoleDrawContext, ptr %6, i64 0, i32 3
  %45 = tail call i32 @llvm.smax.i32(i32 %43, i32 1)
  store i32 %45, ptr %44, align 4, !tbaa !47
  %46 = add nsw i32 %41, -4
  %47 = getelementptr inbounds %struct.ConsoleDrawContext, ptr %6, i64 0, i32 4
  store i32 %46, ptr %47, align 8, !tbaa !48
  %48 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 6
  %49 = getelementptr inbounds %struct.ConsoleDrawContext, ptr %6, i64 0, i32 5
  %50 = load <2 x i32>, ptr %48, align 8, !tbaa !40
  store <2 x i32> %50, ptr %49, align 4, !tbaa !40
  %51 = getelementptr inbounds %struct.ConsoleDrawContext, ptr %6, i64 0, i32 7
  store ptr %7, ptr %51, align 8, !tbaa !49
  %52 = getelementptr inbounds %struct.ConsoleDrawContext, ptr %6, i64 0, i32 8
  store ptr %8, ptr %52, align 8, !tbaa !50
  %53 = getelementptr inbounds %struct.ConsoleDrawContext, ptr %6, i64 0, i32 9
  store ptr %4, ptr %53, align 8, !tbaa !51
  %54 = getelementptr inbounds %struct.ConsoleDrawContext, ptr %6, i64 0, i32 10
  store ptr %2, ptr %54, align 8, !tbaa !52
  %55 = getelementptr inbounds %struct.ConsoleDrawContext, ptr %6, i64 0, i32 11
  store i32 %1, ptr %55, align 8, !tbaa !53
  %56 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 3
  store i32 %33, ptr %56, align 4, !tbaa !54
  %57 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 4
  store i32 %45, ptr %57, align 8, !tbaa !55
  %58 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 17
  store i32 0, ptr %58, align 8, !tbaa !56
  %59 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 1
  %60 = load i32, ptr %59, align 4, !tbaa !57
  %61 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 2
  %62 = load i32, ptr %61, align 8, !tbaa !58
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %66, label %64

64:                                               ; preds = %31
  store i32 %60, ptr %8, align 8, !tbaa !40
  %65 = getelementptr inbounds [2 x i32], ptr %8, i64 0, i64 1
  store i32 %62, ptr %65, align 4, !tbaa !40
  br label %66

66:                                               ; preds = %64, %31
  %67 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 8
  %68 = load ptr, ptr %67, align 8, !tbaa !59
  %69 = call i32 %68(ptr noundef nonnull %0) #10
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %121, label %71

71:                                               ; preds = %66
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #8
  store i32 0, ptr %11, align 4
  %72 = icmp ne i32 %1, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %71
  %74 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 15
  %75 = load ptr, ptr %74, align 8, !tbaa !60
  %76 = icmp eq ptr %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  call void %75(ptr noundef nonnull %0, ptr noundef nonnull %11) #10
  br label %78

78:                                               ; preds = %77, %73, %71
  %79 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 14
  %80 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 13
  %81 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 12
  br label %82

82:                                               ; preds = %114, %78
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #8
  %83 = load i32, ptr %19, align 4, !tbaa !40
  br i1 %72, label %84, label %87

84:                                               ; preds = %82
  %85 = load ptr, ptr %79, align 8, !tbaa !61
  %86 = call i32 %85(ptr noundef nonnull %0, ptr noundef nonnull %9, ptr noundef nonnull %10) #10
  br label %87

87:                                               ; preds = %84, %82
  %88 = phi i32 [ %86, %84 ], [ 0, %82 ]
  %89 = load ptr, ptr %80, align 8, !tbaa !62
  %90 = call i32 %89(ptr noundef nonnull %0, ptr noundef nonnull %12, ptr noundef nonnull %13) #10
  %91 = load ptr, ptr %12, align 8, !tbaa !63
  %92 = load i32, ptr %13, align 4, !tbaa !40
  %93 = and i32 %88, 1
  %94 = icmp eq i32 %93, 0
  %95 = select i1 %94, ptr null, ptr %9
  %96 = and i32 %88, 2
  %97 = icmp eq i32 %96, 0
  %98 = select i1 %97, ptr null, ptr %10
  %99 = call fastcc i32 @console_draw_string(ptr noundef nonnull %6, ptr noundef %91, i32 noundef %92, ptr noundef %95, ptr noundef %98, ptr noundef nonnull %11) #9, !range !64
  %100 = icmp eq i32 %99, 0
  %101 = and i1 %72, %100
  br i1 %101, label %113, label %102

102:                                              ; preds = %87
  %103 = load i32, ptr %20, align 4, !tbaa !40
  %104 = icmp eq i32 %103, 2147483647
  %105 = icmp slt i32 %103, %83
  %106 = select i1 %104, i1 true, i1 %105
  %107 = load i32, ptr %19, align 4
  %108 = icmp sgt i32 %103, %107
  %109 = select i1 %106, i1 true, i1 %108
  br i1 %109, label %114, label %110

110:                                              ; preds = %102
  %111 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 16
  %112 = load ptr, ptr %111, align 8, !tbaa !65
  store ptr %112, ptr %3, align 8, !tbaa !63
  br label %113

113:                                              ; preds = %87, %110
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  br label %120

114:                                              ; preds = %102
  %115 = load i32, ptr %58, align 8, !tbaa !56
  %116 = add nsw i32 %115, 1
  store i32 %116, ptr %58, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  %117 = load ptr, ptr %81, align 8, !tbaa !66
  %118 = call i32 %117(ptr noundef nonnull %0) #10
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %82, !llvm.loop !67

120:                                              ; preds = %114, %113
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #8
  br label %121

121:                                              ; preds = %120, %66
  %122 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 9
  %123 = load ptr, ptr %122, align 8, !tbaa !69
  call void %123(ptr noundef nonnull %0) #10
  %124 = load i32, ptr %0, align 8, !tbaa !34
  %125 = shl nsw i32 %124, 1
  %126 = load i32, ptr %19, align 4, !tbaa !40
  %127 = add nsw i32 %126, %125
  %128 = sub nsw i32 %127, %17
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #8
  ret i32 %128
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @console_font_begin(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !70 {
  %2 = load i32, ptr @blf_mono_font, align 4, !tbaa !40
  %3 = load i32, ptr %0, align 8, !tbaa !34
  %4 = sitofp i32 %3 to double
  %5 = fmul double %4, 8.750000e-01
  %6 = fptosi double %5 to i32
  tail call void @BLF_size(i32 noundef %2, i32 noundef %6, i32 noundef 72) #10
  ret void
}

; Function Attrs: optsize
declare float @BLF_fixed_width(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @BLF_descender(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @console_draw_string(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 !PGOFuncName !71 {
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca [2 x i32], align 4
  %10 = alloca [2 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  %11 = load i32, ptr @blf_mono_font, align 4, !tbaa !40
  %12 = getelementptr inbounds %struct.ConsoleDrawContext, ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !47
  %14 = call fastcc i32 @console_wrap_offsets(ptr noundef %1, i32 noundef %2, i32 noundef %13, ptr noundef nonnull %7, ptr noundef nonnull %8) #9
  %15 = getelementptr inbounds %struct.ConsoleDrawContext, ptr %0, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !49
  %17 = getelementptr inbounds i32, ptr %16, i64 1
  %18 = load i32, ptr %17, align 4, !tbaa !40
  %19 = getelementptr inbounds %struct.ConsoleDrawContext, ptr %0, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !44
  %21 = load i32, ptr %7, align 4
  %22 = mul nsw i32 %21, %20
  %23 = add nsw i32 %22, %18
  %24 = getelementptr inbounds %struct.ConsoleDrawContext, ptr %0, i64 0, i32 11
  %25 = load i32, ptr %24, align 8, !tbaa !53
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %85

27:                                               ; preds = %6
  %28 = getelementptr inbounds %struct.ConsoleDrawContext, ptr %0, i64 0, i32 9
  %29 = load ptr, ptr %28, align 8, !tbaa !51
  %30 = icmp eq ptr %29, null
  br i1 %30, label %80, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.ConsoleDrawContext, ptr %0, i64 0, i32 10
  %33 = load ptr, ptr %32, align 8, !tbaa !52
  %34 = getelementptr inbounds i32, ptr %33, i64 1
  %35 = load i32, ptr %34, align 4, !tbaa !40
  %36 = icmp eq i32 %35, 2147483647
  %37 = icmp sgt i32 %18, %35
  %38 = select i1 %36, i1 true, i1 %37
  br i1 %38, label %80, label %39

39:                                               ; preds = %31
  %40 = icmp slt i32 %23, %35
  br i1 %40, label %76, label %41

41:                                               ; preds = %39
  %42 = icmp sgt i32 %21, 1
  br i1 %42, label %43, label %55

43:                                               ; preds = %41
  %44 = sub nsw i32 %23, %35
  %45 = sitofp i32 %44 to float
  %46 = sitofp i32 %20 to float
  %47 = fdiv float %45, %46
  %48 = fptosi float %47 to i32
  %49 = load ptr, ptr %8, align 8, !tbaa !63
  %50 = add nsw i32 %21, -1
  %51 = tail call i32 @llvm.smin.i32(i32 %50, i32 %48)
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, ptr %49, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !40
  br label %55

55:                                               ; preds = %43, %41
  %56 = phi i32 [ %54, %43 ], [ 0, %41 ]
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, ptr %1, i64 %57
  %59 = load i32, ptr %33, align 4, !tbaa !40
  %60 = sitofp i32 %59 to float
  %61 = load i32, ptr %0, align 8, !tbaa !42
  %62 = sitofp i32 %61 to float
  %63 = fdiv float %60, %62
  %64 = tail call float @llvm.floor.f32(float %63)
  %65 = fptosi float %64 to i32
  %66 = tail call i32 @txt_utf8_column_to_offset(ptr noundef %58, i32 noundef %65) #10
  %67 = add nsw i32 %66, %56
  %68 = icmp slt i32 %67, 0
  %69 = tail call i32 @llvm.smin.i32(i32 %67, i32 %14)
  %70 = select i1 %68, i32 0, i32 %69
  %71 = load ptr, ptr %28, align 8, !tbaa !51
  %72 = load i32, ptr %71, align 4, !tbaa !40
  %73 = add i32 %72, %14
  %74 = sub i32 %73, %70
  store i32 %74, ptr %71, align 4, !tbaa !40
  %75 = load ptr, ptr %15, align 8, !tbaa !49
  br label %80

76:                                               ; preds = %39
  %77 = add nsw i32 %14, 1
  %78 = load i32, ptr %29, align 4, !tbaa !40
  %79 = add nsw i32 %77, %78
  store i32 %79, ptr %29, align 4, !tbaa !40
  br label %80

80:                                               ; preds = %55, %76, %31, %27
  %81 = phi ptr [ %75, %55 ], [ %16, %76 ], [ %16, %31 ], [ %16, %27 ]
  %82 = getelementptr inbounds i32, ptr %81, i64 1
  store i32 %23, ptr %82, align 4, !tbaa !40
  %83 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  %84 = load ptr, ptr %8, align 8, !tbaa !63
  tail call void %83(ptr noundef %84) #10
  br label %261

85:                                               ; preds = %6
  %86 = sub nsw i32 %23, %20
  %87 = getelementptr inbounds %struct.ConsoleDrawContext, ptr %0, i64 0, i32 5
  %88 = load i32, ptr %87, align 4, !tbaa !72
  %89 = icmp slt i32 %86, %88
  br i1 %89, label %90, label %102

90:                                               ; preds = %85
  store i32 %23, ptr %17, align 4, !tbaa !40
  %91 = getelementptr inbounds %struct.ConsoleDrawContext, ptr %0, i64 0, i32 8
  %92 = load ptr, ptr %91, align 8, !tbaa !50
  %93 = load i32, ptr %92, align 4, !tbaa !40
  %94 = getelementptr inbounds i32, ptr %92, i64 1
  %95 = load i32, ptr %94, align 4, !tbaa !40
  %96 = icmp eq i32 %93, %95
  br i1 %96, label %99, label %97

97:                                               ; preds = %90
  %98 = xor i32 %14, -1
  tail call fastcc void @console_step_sel(ptr noundef nonnull %0, i32 noundef %98) #9
  br label %99

99:                                               ; preds = %97, %90
  %100 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  %101 = load ptr, ptr %8, align 8, !tbaa !63
  tail call void %100(ptr noundef %101) #10
  br label %261

102:                                              ; preds = %85
  %103 = icmp sgt i32 %21, 1
  br i1 %103, label %104, label %209

104:                                              ; preds = %102
  %105 = load ptr, ptr %8, align 8, !tbaa !63
  %106 = zext nneg i32 %21 to i64
  %107 = getelementptr i32, ptr %105, i64 %106
  %108 = getelementptr i32, ptr %107, i64 -1
  %109 = load i32, ptr %108, align 4, !tbaa !40
  %110 = sub nsw i32 %14, %109
  %111 = sext i32 %110 to i64
  %112 = sext i32 %109 to i64
  %113 = getelementptr inbounds i8, ptr %1, i64 %112
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  %114 = getelementptr inbounds %struct.ConsoleDrawContext, ptr %0, i64 0, i32 8
  %115 = load ptr, ptr %114, align 8, !tbaa !50
  call fastcc void @copy_v2_v2_int(ptr noundef nonnull %9, ptr noundef %115) #9
  %116 = getelementptr inbounds [2 x i32], ptr %9, i64 0, i64 1
  %117 = load i32, ptr %116, align 4, !tbaa !40
  %118 = sub nsw i32 %14, %117
  store i32 %118, ptr %115, align 4, !tbaa !40
  %119 = load i32, ptr %9, align 4, !tbaa !40
  %120 = sub nsw i32 %14, %119
  %121 = getelementptr inbounds i32, ptr %115, i64 1
  store i32 %120, ptr %121, align 4, !tbaa !40
  %122 = icmp eq ptr %4, null
  br i1 %122, label %132, label %123

123:                                              ; preds = %104
  tail call void @glColor3ubv(ptr noundef nonnull %4) #10
  %124 = load ptr, ptr %15, align 8, !tbaa !49
  %125 = getelementptr inbounds i32, ptr %124, i64 1
  %126 = load i32, ptr %125, align 4, !tbaa !40
  %127 = getelementptr inbounds %struct.ConsoleDrawContext, ptr %0, i64 0, i32 4
  %128 = load i32, ptr %127, align 8, !tbaa !48
  %129 = load i32, ptr %19, align 4, !tbaa !44
  %130 = mul nsw i32 %129, %21
  %131 = add nsw i32 %130, %126
  tail call void @glRecti(i32 noundef 0, i32 noundef %126, i32 noundef %128, i32 noundef %131) #10
  br label %132

132:                                              ; preds = %123, %104
  tail call void @glColor3ubv(ptr noundef %3) #10
  %133 = load ptr, ptr %15, align 8, !tbaa !49
  %134 = load i32, ptr %133, align 4, !tbaa !40
  %135 = sitofp i32 %134 to float
  %136 = getelementptr inbounds %struct.ConsoleDrawContext, ptr %0, i64 0, i32 2
  %137 = load i32, ptr %136, align 8, !tbaa !45
  %138 = getelementptr inbounds i32, ptr %133, i64 1
  %139 = load i32, ptr %138, align 4, !tbaa !40
  %140 = add nsw i32 %139, %137
  %141 = sitofp i32 %140 to float
  tail call void @BLF_position(i32 noundef %11, float noundef %135, float noundef %141, float noundef 0.000000e+00) #10
  %142 = load i32, ptr %0, align 8, !tbaa !42
  %143 = tail call i32 @BLF_draw_mono(i32 noundef %11, ptr noundef %113, i64 noundef %111, i32 noundef %142) #10
  %144 = load ptr, ptr %114, align 8, !tbaa !50
  %145 = load i32, ptr %144, align 4, !tbaa !40
  %146 = getelementptr inbounds i32, ptr %144, i64 1
  %147 = load i32, ptr %146, align 4, !tbaa !40
  %148 = icmp eq i32 %145, %147
  br i1 %148, label %155, label %149

149:                                              ; preds = %132
  %150 = sub nsw i32 0, %109
  tail call fastcc void @console_step_sel(ptr noundef nonnull %0, i32 noundef %150) #9
  %151 = load ptr, ptr %114, align 8, !tbaa !50
  %152 = load ptr, ptr %15, align 8, !tbaa !49
  %153 = load i32, ptr %0, align 8, !tbaa !42
  %154 = load i32, ptr %19, align 4, !tbaa !44
  tail call fastcc void @console_draw_sel(ptr noundef %113, ptr noundef %151, ptr noundef %152, i32 noundef %110, i32 noundef %153, i32 noundef %154, ptr noundef %5) #9
  tail call void @glColor3ubv(ptr noundef %3) #10
  br label %155

155:                                              ; preds = %149, %132
  %156 = load i32, ptr %19, align 4, !tbaa !44
  %157 = load ptr, ptr %15, align 8, !tbaa !49
  %158 = getelementptr inbounds i32, ptr %157, i64 1
  %159 = load i32, ptr %158, align 4, !tbaa !40
  %160 = add nsw i32 %159, %156
  store i32 %160, ptr %158, align 4, !tbaa !40
  %161 = getelementptr i32, ptr %105, i64 -2
  %162 = getelementptr inbounds %struct.ConsoleDrawContext, ptr %0, i64 0, i32 6
  br label %163

163:                                              ; preds = %196, %155
  %164 = phi i32 [ %201, %196 ], [ %160, %155 ]
  %165 = phi ptr [ %198, %196 ], [ %157, %155 ]
  %166 = phi i64 [ %167, %196 ], [ %106, %155 ]
  %167 = add nsw i64 %166, -1
  %168 = trunc i64 %166 to i32
  %169 = icmp slt i32 %168, 2
  br i1 %169, label %204, label %170

170:                                              ; preds = %163
  %171 = getelementptr inbounds i32, ptr %105, i64 %167
  %172 = load i32, ptr %171, align 4, !tbaa !40
  %173 = getelementptr i32, ptr %161, i64 %166
  %174 = load i32, ptr %173, align 4, !tbaa !40
  %175 = sub nsw i32 %172, %174
  %176 = sext i32 %175 to i64
  %177 = sext i32 %174 to i64
  %178 = getelementptr inbounds i8, ptr %1, i64 %177
  %179 = load i32, ptr %165, align 4, !tbaa !40
  %180 = sitofp i32 %179 to float
  %181 = load i32, ptr %136, align 8, !tbaa !45
  %182 = add nsw i32 %164, %181
  %183 = sitofp i32 %182 to float
  tail call void @BLF_position(i32 noundef %11, float noundef %180, float noundef %183, float noundef 0.000000e+00) #10
  %184 = load i32, ptr %0, align 8, !tbaa !42
  %185 = tail call i32 @BLF_draw_mono(i32 noundef %11, ptr noundef %178, i64 noundef %176, i32 noundef %184) #10
  %186 = load ptr, ptr %114, align 8, !tbaa !50
  %187 = load i32, ptr %186, align 4, !tbaa !40
  %188 = getelementptr inbounds i32, ptr %186, i64 1
  %189 = load i32, ptr %188, align 4, !tbaa !40
  %190 = icmp eq i32 %187, %189
  br i1 %190, label %196, label %191

191:                                              ; preds = %170
  tail call fastcc void @console_step_sel(ptr noundef nonnull %0, i32 noundef %175) #9
  %192 = load ptr, ptr %114, align 8, !tbaa !50
  %193 = load ptr, ptr %15, align 8, !tbaa !49
  %194 = load i32, ptr %0, align 8, !tbaa !42
  %195 = load i32, ptr %19, align 4, !tbaa !44
  tail call fastcc void @console_draw_sel(ptr noundef %178, ptr noundef %192, ptr noundef %193, i32 noundef %175, i32 noundef %194, i32 noundef %195, ptr noundef %5) #9
  tail call void @glColor3ubv(ptr noundef %3) #10
  br label %196

196:                                              ; preds = %191, %170
  %197 = load i32, ptr %19, align 4, !tbaa !44
  %198 = load ptr, ptr %15, align 8, !tbaa !49
  %199 = getelementptr inbounds i32, ptr %198, i64 1
  %200 = load i32, ptr %199, align 4, !tbaa !40
  %201 = add nsw i32 %200, %197
  store i32 %201, ptr %199, align 4, !tbaa !40
  %202 = load i32, ptr %162, align 8, !tbaa !73
  %203 = icmp sgt i32 %201, %202
  br i1 %203, label %207, label %163, !llvm.loop !74

204:                                              ; preds = %163
  %205 = load ptr, ptr %114, align 8, !tbaa !50
  call fastcc void @copy_v2_v2_int(ptr noundef %205, ptr noundef nonnull %9) #9
  %206 = xor i32 %14, -1
  tail call fastcc void @console_step_sel(ptr noundef nonnull %0, i32 noundef %206) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  br label %258

207:                                              ; preds = %196
  %208 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  tail call void %208(ptr noundef nonnull %105) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  br label %261

209:                                              ; preds = %102
  %210 = icmp eq ptr %4, null
  br i1 %210, label %219, label %211

211:                                              ; preds = %209
  tail call void @glColor3ubv(ptr noundef nonnull %4) #10
  %212 = load ptr, ptr %15, align 8, !tbaa !49
  %213 = getelementptr inbounds i32, ptr %212, i64 1
  %214 = load i32, ptr %213, align 4, !tbaa !40
  %215 = getelementptr inbounds %struct.ConsoleDrawContext, ptr %0, i64 0, i32 4
  %216 = load i32, ptr %215, align 8, !tbaa !48
  %217 = load i32, ptr %19, align 4, !tbaa !44
  %218 = add nsw i32 %217, %214
  tail call void @glRecti(i32 noundef 0, i32 noundef %214, i32 noundef %216, i32 noundef %218) #10
  br label %219

219:                                              ; preds = %211, %209
  tail call void @glColor3ubv(ptr noundef %3) #10
  %220 = load ptr, ptr %15, align 8, !tbaa !49
  %221 = load i32, ptr %220, align 4, !tbaa !40
  %222 = sitofp i32 %221 to float
  %223 = getelementptr inbounds %struct.ConsoleDrawContext, ptr %0, i64 0, i32 2
  %224 = load i32, ptr %223, align 8, !tbaa !45
  %225 = getelementptr inbounds i32, ptr %220, i64 1
  %226 = load i32, ptr %225, align 4, !tbaa !40
  %227 = add nsw i32 %226, %224
  %228 = sitofp i32 %227 to float
  tail call void @BLF_position(i32 noundef %11, float noundef %222, float noundef %228, float noundef 0.000000e+00) #10
  %229 = sext i32 %14 to i64
  %230 = load i32, ptr %0, align 8, !tbaa !42
  %231 = tail call i32 @BLF_draw_mono(i32 noundef %11, ptr noundef %1, i64 noundef %229, i32 noundef %230) #10
  %232 = getelementptr inbounds %struct.ConsoleDrawContext, ptr %0, i64 0, i32 8
  %233 = load ptr, ptr %232, align 8, !tbaa !50
  %234 = load i32, ptr %233, align 4, !tbaa !40
  %235 = getelementptr inbounds i32, ptr %233, i64 1
  %236 = load i32, ptr %235, align 4, !tbaa !40
  %237 = icmp eq i32 %234, %236
  br i1 %237, label %246, label %238

238:                                              ; preds = %219
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  %239 = sub nsw i32 %14, %236
  store i32 %239, ptr %10, align 4, !tbaa !40
  %240 = sub nsw i32 %14, %234
  %241 = getelementptr inbounds [2 x i32], ptr %10, i64 0, i64 1
  store i32 %240, ptr %241, align 4, !tbaa !40
  %242 = load ptr, ptr %15, align 8, !tbaa !49
  %243 = load i32, ptr %0, align 8, !tbaa !42
  %244 = load i32, ptr %19, align 4, !tbaa !44
  call fastcc void @console_draw_sel(ptr noundef %1, ptr noundef nonnull %10, ptr noundef %242, i32 noundef %14, i32 noundef %243, i32 noundef %244, ptr noundef %5) #9
  %245 = xor i32 %14, -1
  tail call fastcc void @console_step_sel(ptr noundef nonnull %0, i32 noundef %245) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  br label %246

246:                                              ; preds = %238, %219
  %247 = load i32, ptr %19, align 4, !tbaa !44
  %248 = load ptr, ptr %15, align 8, !tbaa !49
  %249 = getelementptr inbounds i32, ptr %248, i64 1
  %250 = load i32, ptr %249, align 4, !tbaa !40
  %251 = add nsw i32 %250, %247
  store i32 %251, ptr %249, align 4, !tbaa !40
  %252 = getelementptr inbounds %struct.ConsoleDrawContext, ptr %0, i64 0, i32 6
  %253 = load i32, ptr %252, align 8, !tbaa !73
  %254 = icmp sgt i32 %251, %253
  %255 = load ptr, ptr %8, align 8, !tbaa !63
  br i1 %254, label %256, label %258

256:                                              ; preds = %246
  %257 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  tail call void %257(ptr noundef %255) #10
  br label %261

258:                                              ; preds = %204, %246
  %259 = phi ptr [ %105, %204 ], [ %255, %246 ]
  %260 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  tail call void %260(ptr noundef %259) #10
  br label %261

261:                                              ; preds = %207, %258, %256, %99, %80
  %262 = phi i32 [ 1, %80 ], [ 1, %99 ], [ 1, %258 ], [ 0, %207 ], [ 0, %256 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  ret i32 %262
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @BLF_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @console_wrap_offsets(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) unnamed_addr #0 !PGOFuncName !75 {
  store i32 1, ptr %3, align 4, !tbaa !40
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %7 = shl nsw i32 %1, 1
  %8 = tail call i32 @llvm.smax.i32(i32 %2, i32 2)
  %9 = add nsw i32 %8, -1
  %10 = sdiv i32 %7, %9
  %11 = add nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 2
  %14 = tail call ptr %6(i64 noundef %13, ptr noundef nonnull @.str) #10
  store ptr %14, ptr %4, align 8, !tbaa !63
  store i32 0, ptr %14, align 4, !tbaa !40
  %15 = icmp sgt i32 %1, 0
  br i1 %15, label %16, label %41

16:                                               ; preds = %5, %36
  %17 = phi i32 [ %26, %36 ], [ 0, %5 ]
  %18 = phi i32 [ %39, %36 ], [ 0, %5 ]
  %19 = phi i32 [ %37, %36 ], [ %2, %5 ]
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds i8, ptr %0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !76
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %41, label %24

24:                                               ; preds = %16
  %25 = tail call i32 @BLI_str_utf8_char_width_safe(ptr noundef nonnull %21) #10
  %26 = add nsw i32 %25, %17
  %27 = icmp sgt i32 %26, %19
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load ptr, ptr %4, align 8, !tbaa !63
  %30 = load i32, ptr %3, align 4, !tbaa !40
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, ptr %29, i64 %31
  store i32 %18, ptr %32, align 4, !tbaa !40
  %33 = load i32, ptr %3, align 4, !tbaa !40
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr %3, align 4, !tbaa !40
  %35 = add nsw i32 %17, %2
  br label %36

36:                                               ; preds = %28, %24
  %37 = phi i32 [ %35, %28 ], [ %19, %24 ]
  %38 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %21) #10
  %39 = add nsw i32 %38, %18
  %40 = icmp slt i32 %39, %1
  br i1 %40, label %16, label %41, !llvm.loop !77

41:                                               ; preds = %16, %36, %5
  %42 = phi i32 [ 0, %5 ], [ %39, %36 ], [ %18, %16 ]
  ret i32 %42
}

; Function Attrs: optsize
declare i32 @txt_utf8_column_to_offset(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @console_step_sel(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !PGOFuncName !78 {
  %3 = getelementptr inbounds %struct.ConsoleDrawContext, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = load <2 x i32>, ptr %4, align 4, !tbaa !40
  %6 = insertelement <2 x i32> poison, i32 %1, i64 0
  %7 = shufflevector <2 x i32> %6, <2 x i32> poison, <2 x i32> zeroinitializer
  %8 = add nsw <2 x i32> %5, %7
  store <2 x i32> %8, ptr %4, align 4, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2_int(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !79 {
  %3 = load i32, ptr %1, align 4, !tbaa !40
  store i32 %3, ptr %0, align 4, !tbaa !40
  %4 = getelementptr inbounds i32, ptr %1, i64 1
  %5 = load i32, ptr %4, align 4, !tbaa !40
  %6 = getelementptr inbounds i32, ptr %0, i64 1
  store i32 %5, ptr %6, align 4, !tbaa !40
  ret void
}

; Function Attrs: optsize
declare void @glColor3ubv(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glRecti(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLF_position(i32 noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BLF_draw_mono(i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @console_draw_sel(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) unnamed_addr #0 !PGOFuncName !80 {
  %8 = load i32, ptr %1, align 4, !tbaa !40
  %9 = icmp sgt i32 %8, %3
  br i1 %9, label %29, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds i32, ptr %1, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !40
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %29

14:                                               ; preds = %10
  %15 = tail call fastcc i32 @max_ii(i32 noundef %8) #9
  %16 = tail call i32 @txt_utf8_offset_to_column(ptr noundef %0, i32 noundef %15) #10
  %17 = load i32, ptr %11, align 4, !tbaa !40
  %18 = tail call fastcc i32 @min_ii(i32 noundef %17, i32 noundef %3) #9
  %19 = tail call i32 @txt_utf8_offset_to_column(ptr noundef %0, i32 noundef %18) #10
  tail call void @glEnable(i32 noundef 3042) #10
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #10
  tail call void @glColor4ubv(ptr noundef %6) #10
  %20 = load i32, ptr %2, align 4, !tbaa !40
  %21 = mul nsw i32 %16, %4
  %22 = add nsw i32 %20, %21
  %23 = getelementptr inbounds i32, ptr %2, i64 1
  %24 = load i32, ptr %23, align 4, !tbaa !40
  %25 = add nsw i32 %24, -2
  %26 = add nsw i32 %25, %5
  %27 = mul nsw i32 %19, %4
  %28 = add nsw i32 %20, %27
  tail call void @glRecti(i32 noundef %22, i32 noundef %26, i32 noundef %28, i32 noundef %25) #10
  tail call void @glDisable(i32 noundef 3042) #10
  br label %29

29:                                               ; preds = %14, %10, %7
  ret void
}

; Function Attrs: optsize
declare i32 @BLI_str_utf8_char_width_safe(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BLI_str_utf8_size_safe(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @txt_utf8_offset_to_column(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0) unnamed_addr #6 !PGOFuncName !81 {
  %2 = tail call i32 @llvm.smax.i32(i32 %0, i32 0)
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @min_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #6 !PGOFuncName !82 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glColor4ubv(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"TextViewContext", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !39, i64 88, !39, i64 96, !36, i64 104, !36, i64 108, !36, i64 112, !36, i64 116}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"any pointer", !37, i64 0}
!40 = !{!36, !36, i64 0}
!41 = !{!35, !36, i64 24}
!42 = !{!43, !36, i64 0}
!43 = !{!"ConsoleDrawContext", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !36, i64 64}
!44 = !{!43, !36, i64 4}
!45 = !{!43, !36, i64 8}
!46 = !{!35, !36, i64 20}
!47 = !{!43, !36, i64 12}
!48 = !{!43, !36, i64 16}
!49 = !{!43, !39, i64 32}
!50 = !{!43, !39, i64 40}
!51 = !{!43, !39, i64 48}
!52 = !{!43, !39, i64 56}
!53 = !{!43, !36, i64 64}
!54 = !{!35, !36, i64 12}
!55 = !{!35, !36, i64 16}
!56 = !{!35, !36, i64 104}
!57 = !{!35, !36, i64 4}
!58 = !{!35, !36, i64 8}
!59 = !{!35, !39, i64 32}
!60 = !{!35, !39, i64 88}
!61 = !{!35, !39, i64 80}
!62 = !{!35, !39, i64 72}
!63 = !{!39, !39, i64 0}
!64 = !{i32 0, i32 2}
!65 = !{!35, !39, i64 96}
!66 = !{!35, !39, i64 64}
!67 = distinct !{!67, !68}
!68 = !{!"llvm.loop.mustprogress"}
!69 = !{!35, !39, i64 40}
!70 = !{!"textview.c:console_font_begin"}
!71 = !{!"textview.c:console_draw_string"}
!72 = !{!43, !36, i64 20}
!73 = !{!43, !36, i64 24}
!74 = distinct !{!74, !68}
!75 = !{!"textview.c:console_wrap_offsets"}
!76 = !{!37, !37, i64 0}
!77 = distinct !{!77, !68}
!78 = !{!"textview.c:console_step_sel"}
!79 = !{!"textview.c:copy_v2_v2_int"}
!80 = !{!"textview.c:console_draw_sel"}
!81 = !{!"textview.c:max_ii"}
!82 = !{!"textview.c:min_ii"}
