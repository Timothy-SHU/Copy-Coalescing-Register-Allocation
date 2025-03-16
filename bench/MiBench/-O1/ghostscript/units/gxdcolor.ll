; ModuleID = 'gxdcolor.c'
source_filename = "gxdcolor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gx_device_color_procs_s = type { ptr, ptr, ptr, ptr, ptr }
%struct.gx_rop_source_s = type { ptr, i32, i32, i64, [2 x i64], i32 }
%struct.gx_device_color_s = type { ptr, %union._c, %struct.gs_int_point_s, %struct._mask }
%union._c = type { %struct._bin }
%struct._bin = type { ptr, [2 x i64], i32, ptr }
%struct.gs_int_point_s = type { i32, i32 }
%struct._mask = type { %struct.gs_client_color_s, i64, ptr }
%struct.gs_client_color_s = type { %struct.gs_paint_color_s, ptr }
%struct.gs_paint_color_s = type { [4 x float] }
%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@gx_dc_procs_none = dso_local constant %struct.gx_device_color_procs_s { ptr @gx_dc_no_load, ptr @gx_dc_no_fill_rectangle, ptr @gx_dc_no_fill_masked, ptr null, ptr null }, align 8
@gx_dc_procs_null = dso_local constant %struct.gx_device_color_procs_s { ptr @gx_dc_no_load, ptr @gx_dc_no_fill_rectangle, ptr @gx_dc_no_fill_masked, ptr null, ptr null }, align 8
@gx_dc_procs_pure = dso_local constant %struct.gx_device_color_procs_s { ptr @gx_dc_pure_load, ptr @gx_dc_pure_fill_rectangle, ptr @gx_dc_pure_fill_masked, ptr null, ptr null }, align 8
@gx_dc_type_none = dso_local local_unnamed_addr global ptr @gx_dc_procs_none, align 8
@gx_dc_type_null = dso_local local_unnamed_addr global ptr @gx_dc_procs_null, align 8
@gx_dc_type_pure = dso_local local_unnamed_addr global ptr @gx_dc_procs_pure, align 8
@gx_rop_no_source_0 = dso_local constant %struct.gx_rop_source_s { ptr null, i32 0, i32 0, i64 0, [2 x i64] zeroinitializer, i32 1 }, align 8
@byte_bit_run_length = external local_unnamed_addr global [8 x ptr], align 16
@byte_bit_run_length_0 = external local_unnamed_addr constant [256 x i8], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @gx_dc_no_load(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, i32 %3) #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @gx_dc_no_fill_rectangle(ptr nocapture readnone %0, i32 %1, i32 %2, i32 %3, i32 %4, ptr nocapture readnone %5, i32 %6, ptr nocapture readnone %7) #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @gx_dc_no_fill_masked(ptr nocapture readnone %0, ptr nocapture readnone %1, i32 %2, i32 %3, i64 %4, i32 %5, i32 %6, i32 %7, i32 %8, ptr nocapture readnone %9, i32 %10, i32 %11) #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @gx_dc_pure_load(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, i32 %3) #0 {
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_pure_fill_rectangle(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7) #1 {
  %9 = alloca [2 x i64], align 16
  %10 = alloca %struct.gx_rop_source_s, align 8
  %11 = icmp eq ptr %7, null
  %12 = and i32 %6, 563
  %13 = icmp eq i32 %12, 48
  %14 = and i1 %11, %13
  %15 = getelementptr inbounds %struct.gx_device_color_s, ptr %0, i64 0, i32 1
  br i1 %14, label %16, label %21

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 21, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !5
  %19 = load i64, ptr %15, align 8, !tbaa !16
  %20 = tail call i32 %18(ptr noundef %5, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %19) #4
  br label %49

21:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %10) #4
  %22 = load i64, ptr %15, align 8, !tbaa !16
  %23 = getelementptr inbounds [2 x i64], ptr %9, i64 0, i64 1
  store i64 %22, ptr %23, align 8, !tbaa !17
  store i64 %22, ptr %9, align 16, !tbaa !17
  br i1 %11, label %24, label %32

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 21, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !18
  %27 = tail call i64 %26(ptr noundef %5, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0) #4
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 8 dereferenceable(48) @gx_rop_no_source_0, i64 48, i1 false), !tbaa.struct !19
  %30 = getelementptr inbounds %struct.gx_rop_source_s, ptr %10, i64 0, i32 4
  %31 = getelementptr inbounds %struct.gx_rop_source_s, ptr %10, i64 0, i32 4, i64 1
  store i64 %27, ptr %31, align 8, !tbaa !17
  store i64 %27, ptr %30, align 8, !tbaa !17
  br label %32

32:                                               ; preds = %29, %24, %21
  %33 = phi ptr [ %7, %21 ], [ %10, %29 ], [ @gx_rop_no_source_0, %24 ]
  %34 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 21, i32 35
  %35 = load ptr, ptr %34, align 8, !tbaa !22
  %36 = load ptr, ptr %33, align 8, !tbaa !23
  %37 = getelementptr inbounds %struct.gx_rop_source_s, ptr %33, i64 0, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !25
  %39 = getelementptr inbounds %struct.gx_rop_source_s, ptr %33, i64 0, i32 2
  %40 = load i32, ptr %39, align 4, !tbaa !26
  %41 = getelementptr inbounds %struct.gx_rop_source_s, ptr %33, i64 0, i32 3
  %42 = load i64, ptr %41, align 8, !tbaa !27
  %43 = getelementptr inbounds %struct.gx_rop_source_s, ptr %33, i64 0, i32 5
  %44 = load i32, ptr %43, align 8, !tbaa !28
  %45 = icmp eq i32 %44, 0
  %46 = getelementptr inbounds %struct.gx_rop_source_s, ptr %33, i64 0, i32 4
  %47 = select i1 %45, ptr null, ptr %46
  %48 = call i32 %35(ptr noundef %5, ptr noundef %36, i32 noundef %38, i32 noundef %40, i64 noundef %42, ptr noundef %47, ptr noundef null, ptr noundef nonnull %9, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef 0, i32 noundef %6) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #4
  br label %49

49:                                               ; preds = %32, %16
  %50 = phi i32 [ %20, %16 ], [ %48, %32 ]
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_pure_fill_masked(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11) #1 {
  %13 = alloca [2 x i64], align 16
  %14 = alloca [2 x i64], align 16
  %15 = and i32 %10, 563
  %16 = icmp eq i32 %15, 48
  br i1 %16, label %17, label %26

17:                                               ; preds = %12
  %18 = icmp eq i32 %11, 0
  %19 = getelementptr inbounds %struct.gx_device_color_s, ptr %0, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !16
  %21 = select i1 %18, i64 -1, i64 %20
  %22 = select i1 %18, i64 %20, i64 -1
  %23 = getelementptr inbounds %struct.gx_device_s, ptr %9, i64 0, i32 21, i32 9
  %24 = load ptr, ptr %23, align 8, !tbaa !29
  %25 = tail call i32 %24(ptr noundef %9, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %21, i64 noundef %22) #4
  br label %51

26:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #4
  %27 = getelementptr inbounds %struct.gx_device_s, ptr %9, i64 0, i32 21, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !18
  %29 = tail call i64 %28(ptr noundef %9, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0) #4
  store i64 %29, ptr %13, align 16, !tbaa !17
  %30 = load ptr, ptr %27, align 8, !tbaa !18
  %31 = tail call i64 %30(ptr noundef %9, i16 noundef zeroext -1, i16 noundef zeroext -1, i16 noundef zeroext -1) #4
  %32 = getelementptr inbounds [2 x i64], ptr %13, i64 0, i64 1
  store i64 %31, ptr %32, align 8, !tbaa !17
  %33 = getelementptr inbounds %struct.gx_device_color_s, ptr %0, i64 0, i32 1
  %34 = load i64, ptr %33, align 8, !tbaa !16
  %35 = getelementptr inbounds [2 x i64], ptr %14, i64 0, i64 1
  store i64 %34, ptr %35, align 8, !tbaa !17
  store i64 %34, ptr %14, align 16, !tbaa !17
  %36 = getelementptr inbounds %struct.gx_device_s, ptr %9, i64 0, i32 21, i32 35
  %37 = load ptr, ptr %36, align 8, !tbaa !22
  %38 = icmp eq i32 %11, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %26
  %40 = lshr i32 %10, 2
  %41 = and i32 %40, 51
  %42 = shl i32 %10, 2
  %43 = and i32 %42, 204
  %44 = and i32 %10, -256
  %45 = or disjoint i32 %43, %44
  %46 = or disjoint i32 %45, %41
  br label %47

47:                                               ; preds = %26, %39
  %48 = phi i32 [ %46, %39 ], [ %10, %26 ]
  %49 = or i32 %48, 256
  %50 = call i32 %37(ptr noundef %9, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr noundef nonnull %13, ptr noundef null, ptr noundef nonnull %14, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef 0, i32 noundef 0, i32 noundef %49) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #4
  br label %51

51:                                               ; preds = %47, %17
  %52 = phi i32 [ %25, %17 ], [ %50, %47 ]
  ret i32 %52
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_dc_default_fill_masked(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11) local_unnamed_addr #1 {
  %13 = and i32 %2, 7
  %14 = icmp eq i32 %11, 0
  %15 = select i1 %14, i32 255, i32 0
  %16 = xor i32 %15, 255
  %17 = icmp sgt i32 %8, 0
  br i1 %17, label %18, label %164

18:                                               ; preds = %12
  %19 = ashr i32 %2, 3
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, ptr %1, i64 %20
  %22 = add nsw i32 %7, %5
  %23 = sext i32 %3 to i64
  br label %24

24:                                               ; preds = %18, %160
  %25 = phi i32 [ undef, %18 ], [ %157, %160 ]
  %26 = phi ptr [ %21, %18 ], [ %162, %160 ]
  %27 = phi i32 [ 0, %18 ], [ %161, %160 ]
  %28 = add nsw i32 %27, %6
  br label %29

29:                                               ; preds = %24, %149
  %30 = phi ptr [ %150, %149 ], [ %26, %24 ]
  %31 = phi i32 [ %151, %149 ], [ %13, %24 ]
  %32 = phi i32 [ %152, %149 ], [ %7, %24 ]
  %33 = phi i32 [ %153, %149 ], [ %25, %24 ]
  %34 = icmp eq i32 %32, 0
  br i1 %34, label %156, label %35

35:                                               ; preds = %29
  %36 = sext i32 %31 to i64
  %37 = getelementptr inbounds [8 x ptr], ptr @byte_bit_run_length, i64 0, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !20
  %39 = load i8, ptr %30, align 1, !tbaa !16
  %40 = zext i8 %39 to i32
  %41 = xor i32 %15, %40
  %42 = zext nneg i32 %41 to i64
  %43 = getelementptr inbounds i8, ptr %38, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !16
  %45 = zext i8 %44 to i32
  %46 = icmp eq i8 %44, 0
  br i1 %46, label %85, label %47

47:                                               ; preds = %35
  %48 = icmp ult i8 %44, 8
  br i1 %48, label %49, label %54

49:                                               ; preds = %47
  %50 = icmp sgt i32 %32, %45
  br i1 %50, label %51, label %149

51:                                               ; preds = %49
  %52 = add nsw i32 %31, %45
  %53 = sub nsw i32 %32, %45
  br label %85

54:                                               ; preds = %47
  %55 = add nsw i32 %45, -8
  %56 = icmp slt i32 %55, %32
  br i1 %56, label %57, label %149

57:                                               ; preds = %54
  %58 = sub nsw i32 %32, %55
  %59 = getelementptr inbounds i8, ptr %30, i64 1
  %60 = icmp sgt i32 %58, 8
  br i1 %60, label %61, label %71

61:                                               ; preds = %57, %67
  %62 = phi ptr [ %69, %67 ], [ %59, %57 ]
  %63 = phi i32 [ %68, %67 ], [ %58, %57 ]
  %64 = load i8, ptr %62, align 1, !tbaa !16
  %65 = zext i8 %64 to i32
  %66 = icmp eq i32 %16, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = add nsw i32 %63, -8
  %69 = getelementptr inbounds i8, ptr %62, i64 1
  %70 = icmp sgt i32 %63, 16
  br i1 %70, label %61, label %71, !llvm.loop !30

71:                                               ; preds = %61, %67, %57
  %72 = phi i32 [ %58, %57 ], [ %63, %61 ], [ %68, %67 ]
  %73 = phi ptr [ %59, %57 ], [ %62, %61 ], [ %69, %67 ]
  %74 = load i8, ptr %73, align 1, !tbaa !16
  %75 = zext i8 %74 to i32
  %76 = xor i32 %15, %75
  %77 = zext nneg i32 %76 to i64
  %78 = getelementptr inbounds [256 x i8], ptr @byte_bit_run_length_0, i64 0, i64 %77
  %79 = load i8, ptr %78, align 1, !tbaa !16
  %80 = zext i8 %79 to i32
  %81 = icmp sgt i32 %72, %80
  br i1 %81, label %82, label %149

82:                                               ; preds = %71
  %83 = and i32 %80, 7
  %84 = sub nsw i32 %72, %80
  br label %85

85:                                               ; preds = %51, %82, %35
  %86 = phi ptr [ %30, %51 ], [ %73, %82 ], [ %30, %35 ]
  %87 = phi i32 [ %52, %51 ], [ %83, %82 ], [ %31, %35 ]
  %88 = phi i32 [ %53, %51 ], [ %84, %82 ], [ %32, %35 ]
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds [8 x ptr], ptr @byte_bit_run_length, i64 0, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !20
  %92 = load i8, ptr %86, align 1, !tbaa !16
  %93 = zext i8 %92 to i32
  %94 = xor i32 %16, %93
  %95 = zext nneg i32 %94 to i64
  %96 = getelementptr inbounds i8, ptr %91, i64 %95
  %97 = load i8, ptr %96, align 1, !tbaa !16
  %98 = zext i8 %97 to i32
  %99 = icmp ult i8 %97, 8
  br i1 %99, label %100, label %105

100:                                              ; preds = %85
  %101 = icmp sgt i32 %88, %98
  br i1 %101, label %102, label %136

102:                                              ; preds = %100
  %103 = add nsw i32 %87, %98
  %104 = sub nsw i32 %88, %98
  br label %136

105:                                              ; preds = %85
  %106 = add nsw i32 %98, -8
  %107 = icmp slt i32 %106, %88
  br i1 %107, label %108, label %136

108:                                              ; preds = %105
  %109 = sub nsw i32 %88, %106
  %110 = getelementptr inbounds i8, ptr %86, i64 1
  %111 = icmp sgt i32 %109, 8
  br i1 %111, label %112, label %122

112:                                              ; preds = %108, %118
  %113 = phi ptr [ %120, %118 ], [ %110, %108 ]
  %114 = phi i32 [ %119, %118 ], [ %109, %108 ]
  %115 = load i8, ptr %113, align 1, !tbaa !16
  %116 = zext i8 %115 to i32
  %117 = icmp eq i32 %15, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %112
  %119 = add nsw i32 %114, -8
  %120 = getelementptr inbounds i8, ptr %113, i64 1
  %121 = icmp sgt i32 %114, 16
  br i1 %121, label %112, label %122, !llvm.loop !32

122:                                              ; preds = %112, %118, %108
  %123 = phi i32 [ %109, %108 ], [ %114, %112 ], [ %119, %118 ]
  %124 = phi ptr [ %110, %108 ], [ %113, %112 ], [ %120, %118 ]
  %125 = load i8, ptr %124, align 1, !tbaa !16
  %126 = zext i8 %125 to i32
  %127 = xor i32 %16, %126
  %128 = zext nneg i32 %127 to i64
  %129 = getelementptr inbounds [256 x i8], ptr @byte_bit_run_length_0, i64 0, i64 %128
  %130 = load i8, ptr %129, align 1, !tbaa !16
  %131 = zext i8 %130 to i32
  %132 = icmp sgt i32 %123, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %122
  %134 = and i32 %131, 7
  %135 = sub nsw i32 %123, %131
  br label %136

136:                                              ; preds = %122, %105, %100, %133, %102
  %137 = phi ptr [ %86, %102 ], [ %124, %133 ], [ %86, %100 ], [ %86, %105 ], [ %124, %122 ]
  %138 = phi i32 [ %103, %102 ], [ %134, %133 ], [ %87, %100 ], [ %87, %105 ], [ %87, %122 ]
  %139 = phi i32 [ %104, %102 ], [ %135, %133 ], [ 0, %100 ], [ 0, %105 ], [ 0, %122 ]
  %140 = load ptr, ptr %0, align 8, !tbaa !33
  %141 = getelementptr inbounds %struct.gx_device_color_procs_s, ptr %140, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !39
  %143 = sub i32 %22, %88
  %144 = sub nsw i32 %88, %139
  %145 = tail call i32 %142(ptr noundef nonnull %0, i32 noundef %143, i32 noundef %28, i32 noundef %144, i32 noundef 1, ptr noundef %9, i32 noundef %10, ptr noundef null) #4
  %146 = icmp slt i32 %145, 0
  %147 = select i1 %146, i32 %145, i32 %33
  %148 = lshr i32 %145, 31
  br label %149

149:                                              ; preds = %136, %71, %54, %49
  %150 = phi ptr [ %30, %49 ], [ %30, %54 ], [ %73, %71 ], [ %137, %136 ]
  %151 = phi i32 [ %31, %49 ], [ %31, %54 ], [ %31, %71 ], [ %138, %136 ]
  %152 = phi i32 [ %32, %49 ], [ %32, %54 ], [ %72, %71 ], [ %139, %136 ]
  %153 = phi i32 [ %33, %49 ], [ %33, %54 ], [ %33, %71 ], [ %147, %136 ]
  %154 = phi i32 [ 6, %49 ], [ 6, %54 ], [ 6, %71 ], [ %148, %136 ]
  switch i32 %154, label %156 [
    i32 0, label %29
    i32 6, label %155
  ], !llvm.loop !41

155:                                              ; preds = %149
  br label %156

156:                                              ; preds = %29, %149, %155
  %157 = phi i32 [ %153, %149 ], [ %33, %29 ], [ %153, %155 ]
  %158 = phi i32 [ %154, %149 ], [ 0, %29 ], [ 0, %155 ]
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %156
  %161 = add nuw nsw i32 %27, 1
  %162 = getelementptr inbounds i8, ptr %26, i64 %23
  %163 = icmp eq i32 %161, %8
  br i1 %163, label %164, label %24, !llvm.loop !42

164:                                              ; preds = %156, %160, %12
  %165 = phi i32 [ 0, %12 ], [ %157, %156 ], [ 0, %160 ]
  ret i32 %165
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 248}
!6 = !{!"gx_device_s", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !7, i64 40, !7, i64 44, !11, i64 48, !7, i64 64, !7, i64 68, !8, i64 72, !8, i64 80, !7, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !13, i64 144, !13, i64 152, !7, i64 160, !14, i64 168, !15, i64 192}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!"gx_device_color_info_s", !7, i64 0, !7, i64 4, !12, i64 8, !12, i64 10, !12, i64 12, !12, i64 14}
!12 = !{!"short", !8, i64 0}
!13 = !{!"long", !8, i64 0}
!14 = !{!"gx_page_device_procs_s", !10, i64 0, !10, i64 8, !10, i64 16}
!15 = !{!"gx_device_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288}
!16 = !{!8, !8, i64 0}
!17 = !{!13, !13, i64 0}
!18 = !{!6, !10, i64 232}
!19 = !{i64 0, i64 8, !20, i64 8, i64 4, !21, i64 12, i64 4, !21, i64 16, i64 8, !17, i64 24, i64 16, !16, i64 40, i64 4, !21}
!20 = !{!10, !10, i64 0}
!21 = !{!7, !7, i64 0}
!22 = !{!6, !10, i64 472}
!23 = !{!24, !10, i64 0}
!24 = !{!"gx_rop_source_s", !10, i64 0, !7, i64 8, !7, i64 12, !13, i64 16, !8, i64 24, !7, i64 40}
!25 = !{!24, !7, i64 8}
!26 = !{!24, !7, i64 12}
!27 = !{!24, !13, i64 16}
!28 = !{!24, !7, i64 40}
!29 = !{!6, !10, i64 264}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.unroll.disable"}
!32 = distinct !{!32, !31}
!33 = !{!34, !10, i64 0}
!34 = !{!"gx_device_color_s", !10, i64 0, !8, i64 8, !35, i64 48, !36, i64 56}
!35 = !{!"gs_int_point_s", !7, i64 0, !7, i64 4}
!36 = !{!"_mask", !37, i64 0, !13, i64 24, !10, i64 32}
!37 = !{!"gs_client_color_s", !38, i64 0, !10, i64 16}
!38 = !{!"gs_paint_color_s", !8, i64 0}
!39 = !{!40, !10, i64 8}
!40 = !{!"gx_device_color_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32}
!41 = distinct !{!41, !31}
!42 = distinct !{!42, !31}
