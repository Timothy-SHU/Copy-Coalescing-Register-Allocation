; ModuleID = 'gxdither.c'
source_filename = "gxdither.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_device_color_s = type { ptr, %union._c, %struct.gs_int_point_s, %struct._mask }
%union._c = type { %struct._bin }
%struct._bin = type { ptr, [2 x i64], i32, ptr }
%struct.gs_int_point_s = type { i32, i32 }
%struct._mask = type { %struct.gs_client_color_s, i64, ptr }
%struct.gs_client_color_s = type { %struct.gs_paint_color_s, ptr }
%struct.gs_paint_color_s = type { [4 x float] }
%struct.gx_ht_order_s = type { %struct.gx_ht_cell_params_s, i16, i16, i16, i16, i16, i16, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.gx_ht_cell_params_s = type { i16, i16, i16, i16, i16, i16, i64, i16, i16, i32, i32, i32 }
%struct.gx_device_halftone_s = type { %struct.gx_ht_order_s, %struct.rc_header_s, i64, ptr, i32, [4 x i32], i32, i32 }
%struct.rc_header_s = type { i64, ptr, ptr }
%struct.gx_ht_order_component_s = type { %struct.gx_ht_order_s, i32 }

@q0 = internal constant [1 x i16] zeroinitializer, align 2
@q1 = internal constant [2 x i16] [i16 0, i16 -1], align 2
@q2 = internal constant [3 x i16] [i16 0, i16 -32768, i16 -1], align 2
@q3 = internal constant [4 x i16] [i16 0, i16 21845, i16 -21846, i16 -1], align 2
@q4 = internal constant [5 x i16] [i16 0, i16 16384, i16 -32768, i16 -16385, i16 -1], align 2
@q5 = internal constant [6 x i16] [i16 0, i16 13107, i16 26214, i16 -26215, i16 -13108, i16 -1], align 2
@q6 = internal constant [7 x i16] [i16 0, i16 10923, i16 21845, i16 -32768, i16 -21846, i16 -10923, i16 -1], align 2
@q7 = internal constant [8 x i16] [i16 0, i16 9362, i16 18724, i16 28086, i16 -28087, i16 -18725, i16 -9363, i16 -1], align 16
@fc_color_quo = dso_local local_unnamed_addr global [8 x ptr] [ptr @q0, ptr @q1, ptr @q2, ptr @q3, ptr @q4, ptr @q5, ptr @q6, ptr @q7], align 16
@gx_dc_type_pure = external local_unnamed_addr global ptr, align 8
@gx_dc_type_ht_binary = external local_unnamed_addr global ptr, align 8
@gx_dc_type_ht_colored = external local_unnamed_addr global ptr, align 8
@lum_w = internal unnamed_addr constant [16 x i16] [i16 0, i16 30, i16 59, i16 89, i16 11, i16 41, i16 70, i16 100, i16 0, i16 30, i16 59, i16 89, i16 11, i16 41, i16 70, i16 100], align 16

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gx_render_device_gray(i16 noundef signext %0, i16 noundef zeroext %1, ptr nocapture noundef writeonly %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.gx_device_s, ptr %3, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !5
  %9 = icmp eq i32 %8, 4
  %10 = icmp eq i16 %1, -1
  br i1 %10, label %11, label %28

11:                                               ; preds = %6
  switch i16 %0, label %28 [
    i16 0, label %13
    i16 32760, label %12
  ]

12:                                               ; preds = %11
  br label %13

13:                                               ; preds = %11, %12
  %14 = phi i16 [ -1, %12 ], [ %0, %11 ]
  br i1 %9, label %15, label %20

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.gx_device_s, ptr %3, i64 0, i32 21, i32 15
  %17 = load ptr, ptr %16, align 8, !tbaa !16
  %18 = xor i16 %14, -1
  %19 = tail call i64 %17(ptr noundef %3, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext %18) #3
  br label %24

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.gx_device_s, ptr %3, i64 0, i32 21, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !17
  %23 = tail call i64 %22(ptr noundef %3, i16 noundef zeroext %14, i16 noundef zeroext %14, i16 noundef zeroext %14) #3
  br label %24

24:                                               ; preds = %20, %15
  %25 = phi i64 [ %19, %15 ], [ %23, %20 ]
  %26 = getelementptr inbounds %struct.gx_device_color_s, ptr %2, i64 0, i32 1
  store i64 %25, ptr %26, align 8, !tbaa !18
  %27 = load ptr, ptr @gx_dc_type_pure, align 8, !tbaa !19
  store ptr %27, ptr %2, align 8, !tbaa !20
  br label %136

28:                                               ; preds = %11, %6
  %29 = getelementptr inbounds %struct.gx_device_s, ptr %3, i64 0, i32 7, i32 4
  %30 = load i16, ptr %29, align 4, !tbaa !26
  %31 = zext i16 %30 to i32
  %32 = add nsw i32 %31, -1
  %33 = getelementptr inbounds %struct.gx_ht_order_s, ptr %4, i64 0, i32 8
  %34 = load i32, ptr %33, align 8, !tbaa !27
  %35 = zext i32 %34 to i64
  %36 = zext i32 %32 to i64
  %37 = mul nuw i64 %36, %35
  %38 = add nuw i64 %37, 1
  %39 = sext i16 %0 to i64
  %40 = mul i64 %38, %39
  %41 = udiv i64 %40, 32761
  %42 = udiv i64 %41, %35
  %43 = urem i64 %41, %35
  %44 = trunc i64 %42 to i32
  %45 = icmp ult i32 %32, 8
  br i1 %45, label %46, label %52

46:                                               ; preds = %28
  %47 = getelementptr inbounds [8 x ptr], ptr @fc_color_quo, i64 0, i64 %36
  %48 = load ptr, ptr %47, align 8, !tbaa !19
  %49 = and i64 %42, 4294967295
  %50 = getelementptr inbounds i16, ptr %48, i64 %49
  %51 = load i16, ptr %50, align 2, !tbaa !32
  br label %60

52:                                               ; preds = %28
  %53 = and i64 %42, 4294967295
  %54 = mul nuw nsw i64 %53, 131070
  %55 = add nuw nsw i64 %54, %36
  %56 = shl nsw i32 %32, 1
  %57 = zext i32 %56 to i64
  %58 = udiv i64 %55, %57
  %59 = trunc i64 %58 to i16
  br label %60

60:                                               ; preds = %52, %46
  %61 = phi i16 [ %51, %46 ], [ %59, %52 ]
  %62 = trunc i64 %43 to i32
  br i1 %9, label %63, label %68

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.gx_device_s, ptr %3, i64 0, i32 21, i32 15
  %65 = load ptr, ptr %64, align 8, !tbaa !16
  %66 = xor i16 %61, -1
  %67 = tail call i64 %65(ptr noundef %3, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext %66) #3
  br label %77

68:                                               ; preds = %60
  br i1 %10, label %69, label %73

69:                                               ; preds = %68
  %70 = getelementptr inbounds %struct.gx_device_s, ptr %3, i64 0, i32 21, i32 5
  %71 = load ptr, ptr %70, align 8, !tbaa !17
  %72 = tail call i64 %71(ptr noundef %3, i16 noundef zeroext %61, i16 noundef zeroext %61, i16 noundef zeroext %61) #3
  br label %77

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.gx_device_s, ptr %3, i64 0, i32 21, i32 18
  %75 = load ptr, ptr %74, align 8, !tbaa !33
  %76 = tail call i64 %75(ptr noundef %3, i16 noundef zeroext %61, i16 noundef zeroext %61, i16 noundef zeroext %61, i16 noundef zeroext %1) #3
  br label %77

77:                                               ; preds = %63, %73, %69
  %78 = phi i64 [ %67, %63 ], [ %72, %69 ], [ %76, %73 ]
  %79 = icmp eq i32 %62, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.gx_device_color_s, ptr %2, i64 0, i32 1
  store i64 %78, ptr %81, align 8, !tbaa !18
  %82 = load ptr, ptr @gx_dc_type_pure, align 8, !tbaa !19
  store ptr %82, ptr %2, align 8, !tbaa !20
  br label %136

83:                                               ; preds = %77
  %84 = add i32 %44, 1
  br i1 %45, label %85, label %91

85:                                               ; preds = %83
  %86 = getelementptr inbounds [8 x ptr], ptr @fc_color_quo, i64 0, i64 %36
  %87 = load ptr, ptr %86, align 8, !tbaa !19
  %88 = zext i32 %84 to i64
  %89 = getelementptr inbounds i16, ptr %87, i64 %88
  %90 = load i16, ptr %89, align 2, !tbaa !32
  br label %99

91:                                               ; preds = %83
  %92 = zext i32 %84 to i64
  %93 = mul nuw nsw i64 %92, 131070
  %94 = add nuw nsw i64 %93, %36
  %95 = shl nsw i32 %32, 1
  %96 = zext i32 %95 to i64
  %97 = udiv i64 %94, %96
  %98 = trunc i64 %97 to i16
  br label %99

99:                                               ; preds = %91, %85
  %100 = phi i16 [ %90, %85 ], [ %98, %91 ]
  br i1 %9, label %101, label %106

101:                                              ; preds = %99
  %102 = getelementptr inbounds %struct.gx_device_s, ptr %3, i64 0, i32 21, i32 15
  %103 = load ptr, ptr %102, align 8, !tbaa !16
  %104 = xor i16 %100, -1
  %105 = tail call i64 %103(ptr noundef %3, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext %104) #3
  br label %115

106:                                              ; preds = %99
  br i1 %10, label %107, label %111

107:                                              ; preds = %106
  %108 = getelementptr inbounds %struct.gx_device_s, ptr %3, i64 0, i32 21, i32 5
  %109 = load ptr, ptr %108, align 8, !tbaa !17
  %110 = tail call i64 %109(ptr noundef %3, i16 noundef zeroext %100, i16 noundef zeroext %100, i16 noundef zeroext %100) #3
  br label %115

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.gx_device_s, ptr %3, i64 0, i32 21, i32 18
  %113 = load ptr, ptr %112, align 8, !tbaa !33
  %114 = tail call i64 %113(ptr noundef %3, i16 noundef zeroext %100, i16 noundef zeroext %100, i16 noundef zeroext %100, i16 noundef zeroext %1) #3
  br label %115

115:                                              ; preds = %107, %111, %101
  %116 = phi i64 [ %105, %101 ], [ %110, %107 ], [ %114, %111 ]
  %117 = getelementptr inbounds %struct.gx_device_color_s, ptr %2, i64 0, i32 1
  store ptr %4, ptr %117, align 8, !tbaa !18
  %118 = getelementptr inbounds %struct.gx_device_color_s, ptr %2, i64 0, i32 1, i32 0, i32 1
  store i64 %78, ptr %118, align 8, !tbaa !18
  %119 = getelementptr inbounds %struct.gx_device_color_s, ptr %2, i64 0, i32 1, i32 0, i32 1, i64 1
  store i64 %116, ptr %119, align 8, !tbaa !18
  %120 = getelementptr inbounds %struct.gx_device_color_s, ptr %2, i64 0, i32 1, i32 0, i32 2
  store i32 %62, ptr %120, align 8, !tbaa !18
  %121 = load ptr, ptr @gx_dc_type_ht_binary, align 8, !tbaa !19
  store ptr %121, ptr %2, align 8, !tbaa !20
  %122 = load i32, ptr %5, align 4, !tbaa !34
  %123 = sub nsw i32 0, %122
  %124 = getelementptr inbounds %struct.gx_ht_order_s, ptr %4, i64 0, i32 1
  %125 = load i16, ptr %124, align 8, !tbaa !35
  %126 = zext i16 %125 to i32
  %127 = tail call i32 @imod(i32 noundef %123, i32 noundef %126) #3
  %128 = getelementptr inbounds %struct.gx_device_color_s, ptr %2, i64 0, i32 2
  store i32 %127, ptr %128, align 8, !tbaa !36
  %129 = getelementptr inbounds %struct.gs_int_point_s, ptr %5, i64 0, i32 1
  %130 = load i32, ptr %129, align 4, !tbaa !37
  %131 = sub nsw i32 0, %130
  %132 = getelementptr inbounds %struct.gx_ht_order_s, ptr %4, i64 0, i32 7
  %133 = load i32, ptr %132, align 4, !tbaa !38
  %134 = tail call i32 @imod(i32 noundef %131, i32 noundef %133) #3
  %135 = getelementptr inbounds %struct.gx_device_color_s, ptr %2, i64 0, i32 2, i32 1
  store i32 %134, ptr %135, align 4, !tbaa !39
  br label %136

136:                                              ; preds = %80, %115, %24
  %137 = phi i32 [ 0, %24 ], [ 0, %80 ], [ 1, %115 ]
  ret i32 %137
}

declare i32 @imod(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gx_render_device_color(i16 noundef signext %0, i16 noundef signext %1, i16 noundef signext %2, i16 noundef signext %3, i32 noundef %4, i16 noundef zeroext %5, ptr nocapture noundef writeonly %6, ptr noundef %7, ptr noundef %8, ptr nocapture noundef readonly %9) local_unnamed_addr #0 {
  %11 = getelementptr inbounds %struct.gx_device_s, ptr %7, i64 0, i32 7, i32 5
  %12 = load i16, ptr %11, align 2, !tbaa !40
  %13 = zext i16 %12 to i32
  %14 = add nsw i32 %13, -1
  %15 = getelementptr inbounds %struct.gx_ht_order_s, ptr %8, i64 0, i32 8
  %16 = load i32, ptr %15, align 8, !tbaa !27
  %17 = icmp eq i32 %14, 1
  br i1 %17, label %18, label %31

18:                                               ; preds = %10
  %19 = icmp eq i16 %0, 32760
  %20 = zext i1 %19 to i32
  %21 = select i1 %19, i16 0, i16 %0
  %22 = icmp eq i16 %1, 32760
  %23 = zext i1 %22 to i32
  %24 = select i1 %22, i16 0, i16 %1
  %25 = icmp eq i16 %2, 32760
  %26 = zext i1 %25 to i32
  %27 = select i1 %25, i16 0, i16 %2
  %28 = icmp eq i16 %3, 32760
  %29 = zext i1 %28 to i32
  %30 = select i1 %28, i16 0, i16 %3
  br label %89

31:                                               ; preds = %10
  %32 = zext i32 %14 to i64
  %33 = sext i16 %0 to i64
  %34 = mul nsw i64 %32, %33
  %35 = lshr i64 %34, 3
  %36 = lshr i64 %34, 15
  %37 = add nuw nsw i64 %36, 1
  %38 = add nuw nsw i64 %37, %35
  %39 = lshr i64 %38, 12
  %40 = trunc i64 %39 to i32
  %41 = trunc i64 %34 to i32
  %42 = shl i32 %40, 15
  %43 = sub i32 %41, %42
  %44 = shl i32 %40, 3
  %45 = add i32 %43, %44
  %46 = trunc i32 %45 to i16
  %47 = sext i16 %1 to i64
  %48 = mul nsw i64 %32, %47
  %49 = lshr i64 %48, 3
  %50 = lshr i64 %48, 15
  %51 = add nuw nsw i64 %50, 1
  %52 = add nuw nsw i64 %51, %49
  %53 = lshr i64 %52, 12
  %54 = trunc i64 %53 to i32
  %55 = trunc i64 %48 to i32
  %56 = shl i32 %54, 15
  %57 = sub i32 %55, %56
  %58 = shl i32 %54, 3
  %59 = add i32 %57, %58
  %60 = trunc i32 %59 to i16
  %61 = sext i16 %2 to i64
  %62 = mul nsw i64 %32, %61
  %63 = lshr i64 %62, 3
  %64 = lshr i64 %62, 15
  %65 = add nuw nsw i64 %64, 1
  %66 = add nuw nsw i64 %65, %63
  %67 = lshr i64 %66, 12
  %68 = trunc i64 %67 to i32
  %69 = trunc i64 %62 to i32
  %70 = shl i32 %68, 15
  %71 = sub i32 %69, %70
  %72 = shl i32 %68, 3
  %73 = add i32 %71, %72
  %74 = trunc i32 %73 to i16
  %75 = sext i16 %3 to i64
  %76 = mul nsw i64 %32, %75
  %77 = lshr i64 %76, 3
  %78 = lshr i64 %76, 15
  %79 = add nuw nsw i64 %78, 1
  %80 = add nuw nsw i64 %79, %77
  %81 = lshr i64 %80, 12
  %82 = trunc i64 %81 to i32
  %83 = trunc i64 %76 to i32
  %84 = shl i32 %82, 15
  %85 = sub i32 %83, %84
  %86 = shl i32 %82, 3
  %87 = add i32 %85, %86
  %88 = trunc i32 %87 to i16
  br label %89

89:                                               ; preds = %18, %31
  %90 = phi i32 [ %82, %31 ], [ %29, %18 ]
  %91 = phi i32 [ %68, %31 ], [ %26, %18 ]
  %92 = phi i32 [ %54, %31 ], [ %23, %18 ]
  %93 = phi i32 [ %40, %31 ], [ %20, %18 ]
  %94 = phi i16 [ %88, %31 ], [ %30, %18 ]
  %95 = phi i16 [ %74, %31 ], [ %27, %18 ]
  %96 = phi i16 [ %60, %31 ], [ %24, %18 ]
  %97 = phi i16 [ %46, %31 ], [ %21, %18 ]
  %98 = or i16 %95, %94
  %99 = or i16 %98, %96
  %100 = or i16 %99, %97
  %101 = icmp eq i16 %100, 0
  br i1 %101, label %102, label %195

102:                                              ; preds = %89
  %103 = icmp ult i32 %14, 8
  br i1 %103, label %104, label %111

104:                                              ; preds = %102
  %105 = zext nneg i32 %14 to i64
  %106 = getelementptr inbounds [8 x ptr], ptr @fc_color_quo, i64 0, i64 %105
  %107 = load ptr, ptr %106, align 8, !tbaa !19
  %108 = zext i32 %93 to i64
  %109 = getelementptr inbounds i16, ptr %107, i64 %108
  %110 = load i16, ptr %109, align 2, !tbaa !32
  br label %120

111:                                              ; preds = %102
  %112 = zext i32 %93 to i64
  %113 = mul nuw nsw i64 %112, 131070
  %114 = zext i32 %14 to i64
  %115 = add nuw nsw i64 %113, %114
  %116 = shl nsw i32 %14, 1
  %117 = zext i32 %116 to i64
  %118 = udiv i64 %115, %117
  %119 = trunc i64 %118 to i16
  br label %120

120:                                              ; preds = %111, %104
  %121 = phi i16 [ %110, %104 ], [ %119, %111 ]
  br i1 %103, label %122, label %129

122:                                              ; preds = %120
  %123 = zext nneg i32 %14 to i64
  %124 = getelementptr inbounds [8 x ptr], ptr @fc_color_quo, i64 0, i64 %123
  %125 = load ptr, ptr %124, align 8, !tbaa !19
  %126 = zext i32 %92 to i64
  %127 = getelementptr inbounds i16, ptr %125, i64 %126
  %128 = load i16, ptr %127, align 2, !tbaa !32
  br label %138

129:                                              ; preds = %120
  %130 = zext i32 %92 to i64
  %131 = mul nuw nsw i64 %130, 131070
  %132 = zext i32 %14 to i64
  %133 = add nuw nsw i64 %131, %132
  %134 = shl nsw i32 %14, 1
  %135 = zext i32 %134 to i64
  %136 = udiv i64 %133, %135
  %137 = trunc i64 %136 to i16
  br label %138

138:                                              ; preds = %129, %122
  %139 = phi i16 [ %128, %122 ], [ %137, %129 ]
  br i1 %103, label %140, label %147

140:                                              ; preds = %138
  %141 = zext nneg i32 %14 to i64
  %142 = getelementptr inbounds [8 x ptr], ptr @fc_color_quo, i64 0, i64 %141
  %143 = load ptr, ptr %142, align 8, !tbaa !19
  %144 = zext i32 %91 to i64
  %145 = getelementptr inbounds i16, ptr %143, i64 %144
  %146 = load i16, ptr %145, align 2, !tbaa !32
  br label %156

147:                                              ; preds = %138
  %148 = zext i32 %91 to i64
  %149 = mul nuw nsw i64 %148, 131070
  %150 = zext i32 %14 to i64
  %151 = add nuw nsw i64 %149, %150
  %152 = shl nsw i32 %14, 1
  %153 = zext i32 %152 to i64
  %154 = udiv i64 %151, %153
  %155 = trunc i64 %154 to i16
  br label %156

156:                                              ; preds = %147, %140
  %157 = phi i16 [ %146, %140 ], [ %155, %147 ]
  br i1 %103, label %158, label %165

158:                                              ; preds = %156
  %159 = zext nneg i32 %14 to i64
  %160 = getelementptr inbounds [8 x ptr], ptr @fc_color_quo, i64 0, i64 %159
  %161 = load ptr, ptr %160, align 8, !tbaa !19
  %162 = zext i32 %90 to i64
  %163 = getelementptr inbounds i16, ptr %161, i64 %162
  %164 = load i16, ptr %163, align 2, !tbaa !32
  br label %174

165:                                              ; preds = %156
  %166 = zext i32 %90 to i64
  %167 = mul nuw nsw i64 %166, 131070
  %168 = zext i32 %14 to i64
  %169 = add nuw nsw i64 %167, %168
  %170 = shl nsw i32 %14, 1
  %171 = zext i32 %170 to i64
  %172 = udiv i64 %169, %171
  %173 = trunc i64 %172 to i16
  br label %174

174:                                              ; preds = %165, %158
  %175 = phi i16 [ %164, %158 ], [ %173, %165 ]
  %176 = icmp eq i32 %4, 0
  br i1 %176, label %181, label %177

177:                                              ; preds = %174
  %178 = getelementptr inbounds %struct.gx_device_s, ptr %7, i64 0, i32 21, i32 15
  %179 = load ptr, ptr %178, align 8, !tbaa !16
  %180 = tail call i64 %179(ptr noundef %7, i16 noundef zeroext %121, i16 noundef zeroext %139, i16 noundef zeroext %157, i16 noundef zeroext %175) #3
  br label %191

181:                                              ; preds = %174
  %182 = icmp eq i16 %5, -1
  br i1 %182, label %183, label %187

183:                                              ; preds = %181
  %184 = getelementptr inbounds %struct.gx_device_s, ptr %7, i64 0, i32 21, i32 5
  %185 = load ptr, ptr %184, align 8, !tbaa !17
  %186 = tail call i64 %185(ptr noundef %7, i16 noundef zeroext %121, i16 noundef zeroext %139, i16 noundef zeroext %157) #3
  br label %191

187:                                              ; preds = %181
  %188 = getelementptr inbounds %struct.gx_device_s, ptr %7, i64 0, i32 21, i32 18
  %189 = load ptr, ptr %188, align 8, !tbaa !33
  %190 = tail call i64 %189(ptr noundef %7, i16 noundef zeroext %121, i16 noundef zeroext %139, i16 noundef zeroext %157, i16 noundef zeroext %5) #3
  br label %191

191:                                              ; preds = %183, %187, %177
  %192 = phi i64 [ %180, %177 ], [ %186, %183 ], [ %190, %187 ]
  %193 = getelementptr inbounds %struct.gx_device_color_s, ptr %6, i64 0, i32 1
  store i64 %192, ptr %193, align 8, !tbaa !18
  %194 = load ptr, ptr @gx_dc_type_pure, align 8, !tbaa !19
  store ptr %194, ptr %6, align 8, !tbaa !20
  br label %653

195:                                              ; preds = %89
  %196 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %8, i64 0, i32 3
  %197 = load ptr, ptr %196, align 8, !tbaa !41
  %198 = icmp eq ptr %197, null
  br i1 %198, label %288, label %199

199:                                              ; preds = %195
  %200 = getelementptr inbounds %struct.gx_device_s, ptr %7, i64 0, i32 7, i32 1
  %201 = load i32, ptr %200, align 4, !tbaa !42
  %202 = icmp sgt i32 %201, 3
  br i1 %202, label %203, label %288

203:                                              ; preds = %199
  %204 = sext i16 %97 to i64
  %205 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %8, i64 0, i32 5
  %206 = load i32, ptr %205, align 4, !tbaa !43
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds %struct.gx_ht_order_component_s, ptr %197, i64 %207, i32 0, i32 8
  %209 = load i32, ptr %208, align 8, !tbaa !44
  %210 = zext i32 %209 to i64
  %211 = mul nsw i64 %210, %204
  %212 = udiv i64 %211, 32760
  %213 = trunc i64 %212 to i32
  %214 = sext i16 %96 to i64
  %215 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %8, i64 0, i32 5, i64 1
  %216 = load i32, ptr %215, align 4, !tbaa !43
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds %struct.gx_ht_order_component_s, ptr %197, i64 %217, i32 0, i32 8
  %219 = load i32, ptr %218, align 8, !tbaa !44
  %220 = zext i32 %219 to i64
  %221 = mul nsw i64 %220, %214
  %222 = udiv i64 %221, 32760
  %223 = trunc i64 %222 to i32
  %224 = sext i16 %95 to i64
  %225 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %8, i64 0, i32 5, i64 2
  %226 = load i32, ptr %225, align 4, !tbaa !43
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds %struct.gx_ht_order_component_s, ptr %197, i64 %227, i32 0, i32 8
  %229 = load i32, ptr %228, align 8, !tbaa !44
  %230 = zext i32 %229 to i64
  %231 = mul nsw i64 %230, %224
  %232 = udiv i64 %231, 32760
  %233 = trunc i64 %232 to i32
  %234 = icmp eq i32 %4, 0
  br i1 %234, label %260, label %235

235:                                              ; preds = %203
  %236 = trunc i32 %93 to i8
  %237 = getelementptr inbounds %struct.gx_device_color_s, ptr %6, i64 0, i32 1
  %238 = getelementptr inbounds %struct.gx_device_color_s, ptr %6, i64 0, i32 1, i32 0, i32 1
  store i8 %236, ptr %238, align 8, !tbaa !18
  %239 = getelementptr inbounds i8, ptr %6, i64 20
  store i32 %213, ptr %239, align 4, !tbaa !18
  %240 = trunc i32 %92 to i8
  %241 = getelementptr inbounds i8, ptr %6, i64 17
  store i8 %240, ptr %241, align 1, !tbaa !18
  %242 = getelementptr inbounds i8, ptr %6, i64 24
  store i32 %223, ptr %242, align 4, !tbaa !18
  %243 = trunc i32 %91 to i8
  %244 = getelementptr inbounds i8, ptr %6, i64 18
  store i8 %243, ptr %244, align 2, !tbaa !18
  %245 = getelementptr inbounds i8, ptr %6, i64 28
  store i32 %233, ptr %245, align 4, !tbaa !18
  %246 = trunc i32 %90 to i8
  %247 = getelementptr inbounds i8, ptr %6, i64 19
  store i8 %246, ptr %247, align 1, !tbaa !18
  %248 = sext i16 %94 to i64
  %249 = load ptr, ptr %196, align 8, !tbaa !41
  %250 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %8, i64 0, i32 5, i64 3
  %251 = load i32, ptr %250, align 4, !tbaa !43
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds %struct.gx_ht_order_component_s, ptr %249, i64 %252, i32 0, i32 8
  %254 = load i32, ptr %253, align 8, !tbaa !44
  %255 = zext i32 %254 to i64
  %256 = mul nsw i64 %255, %248
  %257 = udiv i64 %256, 32760
  %258 = trunc i64 %257 to i32
  %259 = getelementptr inbounds i8, ptr %6, i64 32
  store i32 %258, ptr %259, align 4, !tbaa !18
  store ptr %8, ptr %237, align 8, !tbaa !18
  br label %271

260:                                              ; preds = %203
  %261 = getelementptr inbounds %struct.gx_device_color_s, ptr %6, i64 0, i32 1
  store ptr %8, ptr %261, align 8, !tbaa !18
  %262 = trunc i32 %93 to i8
  %263 = getelementptr inbounds %struct.gx_device_color_s, ptr %6, i64 0, i32 1, i32 0, i32 1
  store i8 %262, ptr %263, align 8, !tbaa !18
  %264 = getelementptr inbounds i8, ptr %6, i64 20
  store i32 %213, ptr %264, align 4, !tbaa !18
  %265 = trunc i32 %92 to i8
  %266 = getelementptr inbounds i8, ptr %6, i64 17
  store i8 %265, ptr %266, align 1, !tbaa !18
  %267 = getelementptr inbounds i8, ptr %6, i64 24
  store i32 %223, ptr %267, align 4, !tbaa !18
  %268 = trunc i32 %91 to i8
  %269 = getelementptr inbounds i8, ptr %6, i64 18
  store i8 %268, ptr %269, align 2, !tbaa !18
  %270 = getelementptr inbounds i8, ptr %6, i64 28
  store i32 %233, ptr %270, align 4, !tbaa !18
  br label %271

271:                                              ; preds = %260, %235
  %272 = phi i16 [ %5, %260 ], [ -1, %235 ]
  %273 = getelementptr inbounds i8, ptr %6, i64 36
  store i16 %272, ptr %273, align 4, !tbaa !18
  %274 = load ptr, ptr @gx_dc_type_ht_colored, align 8, !tbaa !19
  store ptr %274, ptr %6, align 8, !tbaa !20
  %275 = load i32, ptr %9, align 4, !tbaa !34
  %276 = sub nsw i32 0, %275
  %277 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %8, i64 0, i32 6
  %278 = load i32, ptr %277, align 4, !tbaa !46
  %279 = tail call i32 @imod(i32 noundef %276, i32 noundef %278) #3
  %280 = getelementptr inbounds %struct.gx_device_color_s, ptr %6, i64 0, i32 2
  store i32 %279, ptr %280, align 8, !tbaa !36
  %281 = getelementptr inbounds %struct.gs_int_point_s, ptr %9, i64 0, i32 1
  %282 = load i32, ptr %281, align 4, !tbaa !37
  %283 = sub nsw i32 0, %282
  %284 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %8, i64 0, i32 7
  %285 = load i32, ptr %284, align 8, !tbaa !47
  %286 = tail call i32 @imod(i32 noundef %283, i32 noundef %285) #3
  %287 = getelementptr inbounds %struct.gx_device_color_s, ptr %6, i64 0, i32 2, i32 1
  store i32 %286, ptr %287, align 4, !tbaa !39
  br label %653

288:                                              ; preds = %199, %195
  %289 = zext i32 %16 to i64
  %290 = icmp sgt i16 %97, 16380
  br i1 %290, label %291, label %294

291:                                              ; preds = %288
  %292 = sub nsw i16 32760, %97
  %293 = add i32 %93, 1
  br label %294

294:                                              ; preds = %288, %291
  %295 = phi i32 [ %293, %291 ], [ %93, %288 ]
  %296 = phi i32 [ -1, %291 ], [ 1, %288 ]
  %297 = phi i16 [ 60, %291 ], [ 0, %288 ]
  %298 = phi i16 [ %292, %291 ], [ %97, %288 ]
  %299 = icmp sgt i16 %96, 16380
  br i1 %299, label %300, label %304

300:                                              ; preds = %294
  %301 = sub nsw i16 32760, %96
  %302 = add i32 %92, 1
  %303 = add nuw nsw i16 %297, 118
  br label %304

304:                                              ; preds = %294, %300
  %305 = phi i32 [ %302, %300 ], [ %92, %294 ]
  %306 = phi i32 [ -1, %300 ], [ 1, %294 ]
  %307 = phi i16 [ %303, %300 ], [ %297, %294 ]
  %308 = phi i16 [ %301, %300 ], [ %96, %294 ]
  %309 = icmp sgt i16 %95, 16380
  br i1 %309, label %310, label %314

310:                                              ; preds = %304
  %311 = sub nsw i16 32760, %95
  %312 = add i32 %91, 1
  %313 = add nuw nsw i16 %307, 22
  br label %314

314:                                              ; preds = %304, %310
  %315 = phi i32 [ %312, %310 ], [ %91, %304 ]
  %316 = phi i32 [ -1, %310 ], [ 1, %304 ]
  %317 = phi i16 [ %313, %310 ], [ %307, %304 ]
  %318 = phi i16 [ %311, %310 ], [ %95, %304 ]
  %319 = icmp ult i32 %14, 8
  br i1 %319, label %320, label %327

320:                                              ; preds = %314
  %321 = zext nneg i32 %14 to i64
  %322 = getelementptr inbounds [8 x ptr], ptr @fc_color_quo, i64 0, i64 %321
  %323 = load ptr, ptr %322, align 8, !tbaa !19
  %324 = zext i32 %295 to i64
  %325 = getelementptr inbounds i16, ptr %323, i64 %324
  %326 = load i16, ptr %325, align 2, !tbaa !32
  br label %336

327:                                              ; preds = %314
  %328 = zext i32 %295 to i64
  %329 = mul nuw nsw i64 %328, 131070
  %330 = zext i32 %14 to i64
  %331 = add nuw nsw i64 %329, %330
  %332 = shl nsw i32 %14, 1
  %333 = zext i32 %332 to i64
  %334 = udiv i64 %331, %333
  %335 = trunc i64 %334 to i16
  br label %336

336:                                              ; preds = %327, %320
  %337 = phi i16 [ %326, %320 ], [ %335, %327 ]
  br i1 %319, label %338, label %345

338:                                              ; preds = %336
  %339 = zext nneg i32 %14 to i64
  %340 = getelementptr inbounds [8 x ptr], ptr @fc_color_quo, i64 0, i64 %339
  %341 = load ptr, ptr %340, align 8, !tbaa !19
  %342 = zext i32 %305 to i64
  %343 = getelementptr inbounds i16, ptr %341, i64 %342
  %344 = load i16, ptr %343, align 2, !tbaa !32
  br label %354

345:                                              ; preds = %336
  %346 = zext i32 %305 to i64
  %347 = mul nuw nsw i64 %346, 131070
  %348 = zext i32 %14 to i64
  %349 = add nuw nsw i64 %347, %348
  %350 = shl nsw i32 %14, 1
  %351 = zext i32 %350 to i64
  %352 = udiv i64 %349, %351
  %353 = trunc i64 %352 to i16
  br label %354

354:                                              ; preds = %345, %338
  %355 = phi i16 [ %344, %338 ], [ %353, %345 ]
  br i1 %319, label %356, label %363

356:                                              ; preds = %354
  %357 = zext nneg i32 %14 to i64
  %358 = getelementptr inbounds [8 x ptr], ptr @fc_color_quo, i64 0, i64 %357
  %359 = load ptr, ptr %358, align 8, !tbaa !19
  %360 = zext i32 %315 to i64
  %361 = getelementptr inbounds i16, ptr %359, i64 %360
  %362 = load i16, ptr %361, align 2, !tbaa !32
  br label %372

363:                                              ; preds = %354
  %364 = zext i32 %315 to i64
  %365 = mul nuw nsw i64 %364, 131070
  %366 = zext i32 %14 to i64
  %367 = add nuw nsw i64 %365, %366
  %368 = shl nsw i32 %14, 1
  %369 = zext i32 %368 to i64
  %370 = udiv i64 %367, %369
  %371 = trunc i64 %370 to i16
  br label %372

372:                                              ; preds = %363, %356
  %373 = phi i16 [ %362, %356 ], [ %371, %363 ]
  %374 = icmp eq i32 %4, 0
  br i1 %374, label %403, label %375

375:                                              ; preds = %372
  %376 = icmp sgt i16 %94, 16380
  %377 = sub nsw i16 32760, %94
  %378 = zext i1 %376 to i32
  %379 = add i32 %315, %378
  %380 = select i1 %376, i16 %377, i16 %94
  %381 = select i1 %376, i32 -1, i32 1
  br i1 %319, label %382, label %389

382:                                              ; preds = %375
  %383 = zext nneg i32 %14 to i64
  %384 = getelementptr inbounds [8 x ptr], ptr @fc_color_quo, i64 0, i64 %383
  %385 = load ptr, ptr %384, align 8, !tbaa !19
  %386 = zext i32 %90 to i64
  %387 = getelementptr inbounds i16, ptr %385, i64 %386
  %388 = load i16, ptr %387, align 2, !tbaa !32
  br label %398

389:                                              ; preds = %375
  %390 = zext i32 %90 to i64
  %391 = mul nuw nsw i64 %390, 131070
  %392 = zext i32 %14 to i64
  %393 = add nuw nsw i64 %391, %392
  %394 = shl nsw i32 %14, 1
  %395 = zext i32 %394 to i64
  %396 = udiv i64 %393, %395
  %397 = trunc i64 %396 to i16
  br label %398

398:                                              ; preds = %389, %382
  %399 = phi i16 [ %388, %382 ], [ %397, %389 ]
  %400 = getelementptr inbounds %struct.gx_device_s, ptr %7, i64 0, i32 21, i32 15
  %401 = load ptr, ptr %400, align 8, !tbaa !16
  %402 = tail call i64 %401(ptr noundef %7, i16 noundef zeroext %337, i16 noundef zeroext %355, i16 noundef zeroext %373, i16 noundef zeroext %399) #3
  br label %413

403:                                              ; preds = %372
  %404 = icmp eq i16 %5, -1
  br i1 %404, label %405, label %409

405:                                              ; preds = %403
  %406 = getelementptr inbounds %struct.gx_device_s, ptr %7, i64 0, i32 21, i32 5
  %407 = load ptr, ptr %406, align 8, !tbaa !17
  %408 = tail call i64 %407(ptr noundef %7, i16 noundef zeroext %337, i16 noundef zeroext %355, i16 noundef zeroext %373) #3
  br label %413

409:                                              ; preds = %403
  %410 = getelementptr inbounds %struct.gx_device_s, ptr %7, i64 0, i32 21, i32 18
  %411 = load ptr, ptr %410, align 8, !tbaa !33
  %412 = tail call i64 %411(ptr noundef %7, i16 noundef zeroext %337, i16 noundef zeroext %355, i16 noundef zeroext %373, i16 noundef zeroext %5) #3
  br label %413

413:                                              ; preds = %405, %409, %398
  %414 = phi i32 [ %379, %398 ], [ %315, %409 ], [ %315, %405 ]
  %415 = phi i16 [ %380, %398 ], [ %94, %409 ], [ %94, %405 ]
  %416 = phi i32 [ %381, %398 ], [ undef, %409 ], [ undef, %405 ]
  %417 = phi i64 [ %402, %398 ], [ %412, %409 ], [ %408, %405 ]
  %418 = sext i16 %298 to i64
  %419 = sext i16 %308 to i64
  %420 = add nsw i64 %419, %418
  %421 = sext i16 %318 to i64
  %422 = add nsw i64 %420, %421
  %423 = sext i16 %415 to i64
  %424 = add nsw i64 %422, %423
  %425 = icmp sgt i16 %308, %298
  br i1 %425, label %426, label %433

426:                                              ; preds = %413
  %427 = icmp sgt i16 %318, %308
  %428 = tail call i16 @llvm.smax.i16(i16 %318, i16 %308)
  %429 = select i1 %427, i32 4, i32 2
  %430 = icmp sgt i16 %318, %298
  br i1 %430, label %431, label %440

431:                                              ; preds = %426
  %432 = add nsw i64 %421, %419
  br label %440

433:                                              ; preds = %413
  %434 = icmp sgt i16 %318, %298
  %435 = tail call i16 @llvm.smax.i16(i16 %318, i16 %298)
  %436 = select i1 %434, i32 4, i32 1
  %437 = icmp sgt i16 %318, %308
  br i1 %437, label %438, label %440

438:                                              ; preds = %433
  %439 = add nsw i64 %421, %418
  br label %440

440:                                              ; preds = %433, %426, %438, %431
  %441 = phi i16 [ %428, %431 ], [ %435, %438 ], [ %428, %426 ], [ %435, %433 ]
  %442 = phi i16 [ %298, %431 ], [ %308, %438 ], [ %318, %426 ], [ %318, %433 ]
  %443 = phi i64 [ %432, %431 ], [ %439, %438 ], [ %420, %426 ], [ %420, %433 ]
  %444 = phi i32 [ %429, %431 ], [ %436, %438 ], [ %429, %426 ], [ %436, %433 ]
  %445 = phi i32 [ 6, %431 ], [ 5, %438 ], [ 3, %426 ], [ 3, %433 ]
  %446 = icmp sgt i16 %415, %442
  br i1 %446, label %447, label %461

447:                                              ; preds = %440
  %448 = add nsw i64 %443, %423
  %449 = or disjoint i32 %445, 8
  %450 = icmp sgt i16 %415, %441
  %451 = sext i16 %441 to i64
  br i1 %450, label %452, label %455

452:                                              ; preds = %447
  %453 = add nsw i64 %451, %423
  %454 = or disjoint i32 %444, 8
  br label %461

455:                                              ; preds = %447
  %456 = sub nsw i64 %443, %451
  %457 = icmp ult i64 %456, %423
  br i1 %457, label %458, label %461

458:                                              ; preds = %455
  %459 = add nsw i64 %451, %423
  %460 = or disjoint i32 %444, 8
  br label %461

461:                                              ; preds = %440, %452, %458, %455
  %462 = phi i16 [ %415, %452 ], [ %441, %458 ], [ %441, %455 ], [ %441, %440 ]
  %463 = phi i64 [ %453, %452 ], [ %459, %458 ], [ %443, %455 ], [ %443, %440 ]
  %464 = phi i64 [ %448, %452 ], [ %448, %458 ], [ %448, %455 ], [ %422, %440 ]
  %465 = phi i32 [ 8, %452 ], [ %444, %458 ], [ %444, %455 ], [ %444, %440 ]
  %466 = phi i32 [ %454, %452 ], [ %460, %458 ], [ %445, %455 ], [ %445, %440 ]
  %467 = phi i32 [ %449, %452 ], [ %449, %458 ], [ %449, %455 ], [ 7, %440 ]
  %468 = sext i16 %462 to i64
  %469 = shl nsw i64 %468, 7
  %470 = mul nsw i64 %463, 90
  %471 = mul nsw i64 %464, 73
  %472 = icmp ugt i64 %469, %470
  %473 = shl nsw i64 %424, 6
  br i1 %472, label %474, label %488

474:                                              ; preds = %461
  %475 = icmp ugt i64 %471, %469
  br i1 %475, label %476, label %482

476:                                              ; preds = %474
  %477 = icmp ugt i64 %473, %471
  %478 = select i1 %477, i64 %424, i64 %464
  %479 = select i1 %477, i64 65520, i64 49140
  %480 = select i1 %477, i64 131040, i64 98280
  %481 = select i1 %477, i32 15, i32 %467
  br label %502

482:                                              ; preds = %474
  %483 = icmp ugt i64 %473, %469
  %484 = select i1 %483, i64 %424, i64 %468
  %485 = select i1 %483, i64 65520, i64 16380
  %486 = select i1 %483, i64 131040, i64 32760
  %487 = select i1 %483, i32 15, i32 %465
  br label %502

488:                                              ; preds = %461
  %489 = icmp ugt i64 %471, %470
  br i1 %489, label %490, label %496

490:                                              ; preds = %488
  %491 = icmp ugt i64 %473, %471
  %492 = select i1 %491, i64 %424, i64 %464
  %493 = select i1 %491, i64 65520, i64 49140
  %494 = select i1 %491, i64 131040, i64 98280
  %495 = select i1 %491, i32 15, i32 %467
  br label %502

496:                                              ; preds = %488
  %497 = icmp ugt i64 %473, %470
  %498 = select i1 %497, i64 %424, i64 %463
  %499 = select i1 %497, i64 65520, i64 32760
  %500 = select i1 %497, i64 131040, i64 65520
  %501 = select i1 %497, i32 15, i32 %466
  br label %502

502:                                              ; preds = %496, %490, %482, %476
  %503 = phi i64 [ %478, %476 ], [ %484, %482 ], [ %492, %490 ], [ %498, %496 ]
  %504 = phi i64 [ %479, %476 ], [ %485, %482 ], [ %493, %490 ], [ %499, %496 ]
  %505 = phi i64 [ %480, %476 ], [ %486, %482 ], [ %494, %490 ], [ %500, %496 ]
  %506 = phi i32 [ %481, %476 ], [ %487, %482 ], [ %495, %490 ], [ %501, %496 ]
  %507 = mul nsw i64 %503, %289
  %508 = add nsw i64 %507, %504
  %509 = udiv i64 %508, %505
  %510 = trunc i64 %509 to i32
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %512, label %515

512:                                              ; preds = %502
  %513 = getelementptr inbounds %struct.gx_device_color_s, ptr %6, i64 0, i32 1
  store i64 %417, ptr %513, align 8, !tbaa !18
  %514 = load ptr, ptr @gx_dc_type_pure, align 8, !tbaa !19
  store ptr %514, ptr %6, align 8, !tbaa !20
  br label %653

515:                                              ; preds = %502
  %516 = and i32 %506, 1
  %517 = icmp eq i32 %516, 0
  %518 = select i1 %517, i32 0, i32 %296
  %519 = add i32 %518, %295
  %520 = and i32 %506, 2
  %521 = icmp eq i32 %520, 0
  %522 = select i1 %521, i32 0, i32 %306
  %523 = add i32 %522, %305
  %524 = and i32 %506, 4
  %525 = icmp eq i32 %524, 0
  %526 = select i1 %525, i32 0, i32 %316
  %527 = add i32 %526, %414
  br i1 %319, label %528, label %535

528:                                              ; preds = %515
  %529 = zext nneg i32 %14 to i64
  %530 = getelementptr inbounds [8 x ptr], ptr @fc_color_quo, i64 0, i64 %529
  %531 = load ptr, ptr %530, align 8, !tbaa !19
  %532 = zext i32 %519 to i64
  %533 = getelementptr inbounds i16, ptr %531, i64 %532
  %534 = load i16, ptr %533, align 2, !tbaa !32
  br label %544

535:                                              ; preds = %515
  %536 = zext i32 %519 to i64
  %537 = mul nuw nsw i64 %536, 131070
  %538 = zext i32 %14 to i64
  %539 = add nuw nsw i64 %537, %538
  %540 = shl nsw i32 %14, 1
  %541 = zext i32 %540 to i64
  %542 = udiv i64 %539, %541
  %543 = trunc i64 %542 to i16
  br label %544

544:                                              ; preds = %535, %528
  %545 = phi i16 [ %534, %528 ], [ %543, %535 ]
  br i1 %319, label %546, label %553

546:                                              ; preds = %544
  %547 = zext nneg i32 %14 to i64
  %548 = getelementptr inbounds [8 x ptr], ptr @fc_color_quo, i64 0, i64 %547
  %549 = load ptr, ptr %548, align 8, !tbaa !19
  %550 = zext i32 %523 to i64
  %551 = getelementptr inbounds i16, ptr %549, i64 %550
  %552 = load i16, ptr %551, align 2, !tbaa !32
  br label %562

553:                                              ; preds = %544
  %554 = zext i32 %523 to i64
  %555 = mul nuw nsw i64 %554, 131070
  %556 = zext i32 %14 to i64
  %557 = add nuw nsw i64 %555, %556
  %558 = shl nsw i32 %14, 1
  %559 = zext i32 %558 to i64
  %560 = udiv i64 %557, %559
  %561 = trunc i64 %560 to i16
  br label %562

562:                                              ; preds = %553, %546
  %563 = phi i16 [ %552, %546 ], [ %561, %553 ]
  br i1 %319, label %564, label %571

564:                                              ; preds = %562
  %565 = zext nneg i32 %14 to i64
  %566 = getelementptr inbounds [8 x ptr], ptr @fc_color_quo, i64 0, i64 %565
  %567 = load ptr, ptr %566, align 8, !tbaa !19
  %568 = zext i32 %527 to i64
  %569 = getelementptr inbounds i16, ptr %567, i64 %568
  %570 = load i16, ptr %569, align 2, !tbaa !32
  br label %580

571:                                              ; preds = %562
  %572 = zext i32 %527 to i64
  %573 = mul nuw nsw i64 %572, 131070
  %574 = zext i32 %14 to i64
  %575 = add nuw nsw i64 %573, %574
  %576 = shl nsw i32 %14, 1
  %577 = zext i32 %576 to i64
  %578 = udiv i64 %575, %577
  %579 = trunc i64 %578 to i16
  br label %580

580:                                              ; preds = %571, %564
  %581 = phi i16 [ %570, %564 ], [ %579, %571 ]
  br i1 %374, label %608, label %582

582:                                              ; preds = %580
  %583 = and i32 %506, 8
  %584 = icmp eq i32 %583, 0
  %585 = select i1 %584, i32 0, i32 %416
  %586 = add i32 %585, %90
  br i1 %319, label %587, label %594

587:                                              ; preds = %582
  %588 = zext nneg i32 %14 to i64
  %589 = getelementptr inbounds [8 x ptr], ptr @fc_color_quo, i64 0, i64 %588
  %590 = load ptr, ptr %589, align 8, !tbaa !19
  %591 = zext i32 %586 to i64
  %592 = getelementptr inbounds i16, ptr %590, i64 %591
  %593 = load i16, ptr %592, align 2, !tbaa !32
  br label %603

594:                                              ; preds = %582
  %595 = zext i32 %586 to i64
  %596 = mul nuw nsw i64 %595, 131070
  %597 = zext i32 %14 to i64
  %598 = add nuw nsw i64 %596, %597
  %599 = shl nsw i32 %14, 1
  %600 = zext i32 %599 to i64
  %601 = udiv i64 %598, %600
  %602 = trunc i64 %601 to i16
  br label %603

603:                                              ; preds = %594, %587
  %604 = phi i16 [ %593, %587 ], [ %602, %594 ]
  %605 = getelementptr inbounds %struct.gx_device_s, ptr %7, i64 0, i32 21, i32 15
  %606 = load ptr, ptr %605, align 8, !tbaa !16
  %607 = tail call i64 %606(ptr noundef %7, i16 noundef zeroext %545, i16 noundef zeroext %563, i16 noundef zeroext %581, i16 noundef zeroext %604) #3
  br label %618

608:                                              ; preds = %580
  %609 = icmp eq i16 %5, -1
  br i1 %609, label %610, label %614

610:                                              ; preds = %608
  %611 = getelementptr inbounds %struct.gx_device_s, ptr %7, i64 0, i32 21, i32 5
  %612 = load ptr, ptr %611, align 8, !tbaa !17
  %613 = tail call i64 %612(ptr noundef %7, i16 noundef zeroext %545, i16 noundef zeroext %563, i16 noundef zeroext %581) #3
  br label %618

614:                                              ; preds = %608
  %615 = getelementptr inbounds %struct.gx_device_s, ptr %7, i64 0, i32 21, i32 18
  %616 = load ptr, ptr %615, align 8, !tbaa !33
  %617 = tail call i64 %616(ptr noundef %7, i16 noundef zeroext %545, i16 noundef zeroext %563, i16 noundef zeroext %581, i16 noundef zeroext %5) #3
  br label %618

618:                                              ; preds = %610, %614, %603
  %619 = phi i64 [ %607, %603 ], [ %613, %610 ], [ %617, %614 ]
  %620 = icmp eq i32 %16, %510
  br i1 %620, label %621, label %624

621:                                              ; preds = %618
  %622 = getelementptr inbounds %struct.gx_device_color_s, ptr %6, i64 0, i32 1
  store i64 %619, ptr %622, align 8, !tbaa !18
  %623 = load ptr, ptr @gx_dc_type_pure, align 8, !tbaa !19
  store ptr %623, ptr %6, align 8, !tbaa !20
  br label %653

624:                                              ; preds = %618
  %625 = zext nneg i32 %506 to i64
  %626 = getelementptr inbounds [16 x i16], ptr @lum_w, i64 0, i64 %625
  %627 = load i16, ptr %626, align 2, !tbaa !32
  %628 = icmp ult i16 %627, %317
  %629 = getelementptr inbounds %struct.gx_device_color_s, ptr %6, i64 0, i32 1
  store ptr %8, ptr %629, align 8, !tbaa !18
  %630 = getelementptr inbounds %struct.gx_device_color_s, ptr %6, i64 0, i32 1, i32 0, i32 1
  %631 = getelementptr inbounds %struct.gx_device_color_s, ptr %6, i64 0, i32 1, i32 0, i32 1, i64 1
  br i1 %628, label %632, label %634

632:                                              ; preds = %624
  store i64 %619, ptr %630, align 8, !tbaa !18
  store i64 %417, ptr %631, align 8, !tbaa !18
  %633 = sub i32 %16, %510
  br label %635

634:                                              ; preds = %624
  store i64 %417, ptr %630, align 8, !tbaa !18
  store i64 %619, ptr %631, align 8, !tbaa !18
  br label %635

635:                                              ; preds = %634, %632
  %636 = phi i32 [ %510, %634 ], [ %633, %632 ]
  %637 = getelementptr inbounds %struct.gx_device_color_s, ptr %6, i64 0, i32 1, i32 0, i32 2
  store i32 %636, ptr %637, align 8, !tbaa !18
  %638 = load ptr, ptr @gx_dc_type_ht_binary, align 8, !tbaa !19
  store ptr %638, ptr %6, align 8, !tbaa !20
  %639 = load i32, ptr %9, align 4, !tbaa !34
  %640 = sub nsw i32 0, %639
  %641 = getelementptr inbounds %struct.gx_ht_order_s, ptr %8, i64 0, i32 1
  %642 = load i16, ptr %641, align 8, !tbaa !35
  %643 = zext i16 %642 to i32
  %644 = tail call i32 @imod(i32 noundef %640, i32 noundef %643) #3
  %645 = getelementptr inbounds %struct.gx_device_color_s, ptr %6, i64 0, i32 2
  store i32 %644, ptr %645, align 8, !tbaa !36
  %646 = getelementptr inbounds %struct.gs_int_point_s, ptr %9, i64 0, i32 1
  %647 = load i32, ptr %646, align 4, !tbaa !37
  %648 = sub nsw i32 0, %647
  %649 = getelementptr inbounds %struct.gx_ht_order_s, ptr %8, i64 0, i32 7
  %650 = load i32, ptr %649, align 4, !tbaa !38
  %651 = tail call i32 @imod(i32 noundef %648, i32 noundef %650) #3
  %652 = getelementptr inbounds %struct.gx_device_color_s, ptr %6, i64 0, i32 2, i32 1
  store i32 %651, ptr %652, align 4, !tbaa !39
  br label %653

653:                                              ; preds = %512, %635, %621, %271, %191
  %654 = phi i32 [ 1, %271 ], [ 0, %191 ], [ 0, %512 ], [ 0, %621 ], [ 1, %635 ]
  ret i32 %654
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 48}
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
!16 = !{!6, !10, i64 312}
!17 = !{!6, !10, i64 232}
!18 = !{!8, !8, i64 0}
!19 = !{!10, !10, i64 0}
!20 = !{!21, !10, i64 0}
!21 = !{!"gx_device_color_s", !10, i64 0, !8, i64 8, !22, i64 48, !23, i64 56}
!22 = !{!"gs_int_point_s", !7, i64 0, !7, i64 4}
!23 = !{!"_mask", !24, i64 0, !13, i64 24, !10, i64 32}
!24 = !{!"gs_client_color_s", !25, i64 0, !10, i64 16}
!25 = !{!"gs_paint_color_s", !8, i64 0}
!26 = !{!6, !12, i64 60}
!27 = !{!28, !7, i64 56}
!28 = !{!"gx_device_halftone_s", !29, i64 0, !31, i64 96, !13, i64 120, !10, i64 128, !7, i64 136, !8, i64 140, !7, i64 156, !7, i64 160}
!29 = !{!"gx_ht_order_s", !30, i64 0, !12, i64 40, !12, i64 42, !12, i64 44, !12, i64 46, !12, i64 48, !12, i64 50, !7, i64 52, !7, i64 56, !7, i64 60, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88}
!30 = !{!"gx_ht_cell_params_s", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !12, i64 8, !12, i64 10, !13, i64 16, !12, i64 24, !12, i64 26, !7, i64 28, !7, i64 32, !7, i64 36}
!31 = !{!"rc_header_s", !13, i64 0, !10, i64 8, !10, i64 16}
!32 = !{!12, !12, i64 0}
!33 = !{!6, !10, i64 336}
!34 = !{!22, !7, i64 0}
!35 = !{!28, !12, i64 40}
!36 = !{!21, !7, i64 48}
!37 = !{!22, !7, i64 4}
!38 = !{!28, !7, i64 52}
!39 = !{!21, !7, i64 52}
!40 = !{!6, !12, i64 62}
!41 = !{!28, !10, i64 128}
!42 = !{!6, !7, i64 52}
!43 = !{!7, !7, i64 0}
!44 = !{!45, !7, i64 56}
!45 = !{!"gx_ht_order_component_s", !29, i64 0, !7, i64 96}
!46 = !{!28, !7, i64 156}
!47 = !{!28, !7, i64 160}
