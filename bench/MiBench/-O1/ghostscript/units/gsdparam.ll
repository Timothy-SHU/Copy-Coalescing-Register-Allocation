; ModuleID = 'gsdparam.c'
source_filename = "gsdparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_param_string_s = type { ptr, i32, i32 }
%struct.gs_param_float_array_s = type { ptr, i32, i32 }
%struct.gs_param_int_array_s = type { ptr, i32, i32 }
%struct.gs_param_list_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@pcmsa = internal unnamed_addr constant [5 x ptr] [ptr @.str.25, ptr @.str.26, ptr @.str.25, ptr @.str.27, ptr @.str.28], align 16
@.str = private unnamed_addr constant [13 x i8] c"OutputDevice\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"PageSize\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"ProcessColorModel\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"HWResolution\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"ImagingBBox\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Margins\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"HWSize\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c".HWMargins\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c".MarginsHWResolution\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c".MediaSize\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"Colors\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"BitsPerPixel\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"GrayValues\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"PageCount\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c".IgnoreNumCopies\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"RedValues\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"GreenValues\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"BlueValues\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"ColorValues\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"HWColorMap\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"TextAlphaBits\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"GraphicsAlphaBits\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"%MediaSource\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"%MediaDestination\00", align 1
@.str.25 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"DeviceRGB\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"DeviceCMYK\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_getdeviceparams(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @gx_device_set_procs(ptr noundef %0) #6
  %3 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 13
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  store ptr @gx_default_get_params, ptr %3, align 8, !tbaa !5
  br label %7

7:                                                ; preds = %6, %2
  %8 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store ptr @gx_default_get_page_device, ptr %8, align 8, !tbaa !16
  br label %12

12:                                               ; preds = %11, %7
  %13 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 20
  %14 = load ptr, ptr %13, align 8, !tbaa !17
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store ptr @gx_default_get_alpha_bits, ptr %13, align 8, !tbaa !17
  br label %17

17:                                               ; preds = %16, %12
  %18 = load ptr, ptr %3, align 8, !tbaa !5
  %19 = tail call i32 %18(ptr noundef %0, ptr noundef %1) #6
  ret i32 %19
}

declare void @gx_device_set_procs(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_default_get_params(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.gs_param_string_s, align 8
  %4 = alloca %struct.gs_param_string_s, align 8
  %5 = alloca %struct.gs_param_float_array_s, align 8
  %6 = alloca %struct.gs_param_float_array_s, align 8
  %7 = alloca %struct.gs_param_float_array_s, align 8
  %8 = alloca %struct.gs_param_float_array_s, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca %struct.gs_param_int_array_s, align 8
  %14 = alloca %struct.gs_param_float_array_s, align 8
  %15 = alloca %struct.gs_param_float_array_s, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca [768 x i8], align 16
  %19 = alloca %struct.gs_param_string_s, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #6
  %22 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7
  %23 = load i32, ptr %22, align 8, !tbaa !18
  store i32 %23, ptr %9, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #6
  %24 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !20
  store i32 %25, ptr %10, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #6
  %26 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7, i32 2
  %27 = load i16, ptr %26, align 8, !tbaa !21
  %28 = zext i16 %27 to i32
  %29 = add nuw nsw i32 %28, 1
  store i32 %29, ptr %11, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #6
  %30 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !22
  store ptr %31, ptr %3, align 8, !tbaa !23
  %32 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %31) #7
  %33 = trunc i64 %32 to i32
  %34 = getelementptr inbounds %struct.gs_param_string_s, ptr %3, i64 0, i32 1
  store i32 %33, ptr %34, align 8, !tbaa !25
  %35 = getelementptr inbounds %struct.gs_param_string_s, ptr %3, i64 0, i32 2
  store i32 1, ptr %35, align 4, !tbaa !26
  %36 = sext i32 %23 to i64
  %37 = getelementptr inbounds [5 x ptr], ptr @pcmsa, i64 0, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !27
  %39 = load i8, ptr %38, align 1, !tbaa !28
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %2
  store ptr %38, ptr %4, align 8, !tbaa !23
  %42 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %38) #7
  %43 = trunc i64 %42 to i32
  %44 = getelementptr inbounds %struct.gs_param_string_s, ptr %4, i64 0, i32 1
  store i32 %43, ptr %44, align 8, !tbaa !25
  %45 = getelementptr inbounds %struct.gs_param_string_s, ptr %4, i64 0, i32 2
  store i32 1, ptr %45, align 4, !tbaa !26
  br label %47

46:                                               ; preds = %2
  store ptr null, ptr %4, align 8, !tbaa !23
  br label %47

47:                                               ; preds = %46, %41
  %48 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 13
  store ptr %48, ptr %7, align 8, !tbaa !29
  %49 = getelementptr inbounds %struct.gs_param_float_array_s, ptr %7, i64 0, i32 1
  store i32 2, ptr %49, align 8, !tbaa !31
  %50 = getelementptr inbounds %struct.gs_param_float_array_s, ptr %7, i64 0, i32 2
  store i32 0, ptr %50, align 4, !tbaa !32
  %51 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 10
  store ptr %51, ptr %5, align 8, !tbaa !29
  %52 = getelementptr inbounds %struct.gs_param_float_array_s, ptr %5, i64 0, i32 1
  store i32 2, ptr %52, align 8, !tbaa !31
  %53 = getelementptr inbounds %struct.gs_param_float_array_s, ptr %5, i64 0, i32 2
  store i32 0, ptr %53, align 4, !tbaa !32
  %54 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 11
  store ptr %54, ptr %6, align 8, !tbaa !29
  %55 = getelementptr inbounds %struct.gs_param_float_array_s, ptr %6, i64 0, i32 1
  store i32 4, ptr %55, align 8, !tbaa !31
  %56 = getelementptr inbounds %struct.gs_param_float_array_s, ptr %6, i64 0, i32 2
  store i32 0, ptr %56, align 4, !tbaa !32
  %57 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 15
  store ptr %57, ptr %8, align 8, !tbaa !29
  %58 = getelementptr inbounds %struct.gs_param_float_array_s, ptr %8, i64 0, i32 1
  store i32 2, ptr %58, align 8, !tbaa !31
  %59 = getelementptr inbounds %struct.gs_param_float_array_s, ptr %8, i64 0, i32 2
  store i32 0, ptr %59, align 4, !tbaa !32
  %60 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  %61 = load i32, ptr %60, align 8, !tbaa !33
  store i32 %61, ptr %12, align 4, !tbaa !19
  %62 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %63 = load i32, ptr %62, align 4, !tbaa !34
  %64 = getelementptr inbounds [2 x i32], ptr %12, i64 0, i64 1
  store i32 %63, ptr %64, align 4, !tbaa !19
  store ptr %12, ptr %13, align 8, !tbaa !35
  %65 = getelementptr inbounds %struct.gs_param_int_array_s, ptr %13, i64 0, i32 1
  store i32 2, ptr %65, align 8, !tbaa !37
  %66 = getelementptr inbounds %struct.gs_param_int_array_s, ptr %13, i64 0, i32 2
  store i32 0, ptr %66, align 4, !tbaa !38
  %67 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 16
  store ptr %67, ptr %14, align 8, !tbaa !29
  %68 = getelementptr inbounds %struct.gs_param_float_array_s, ptr %14, i64 0, i32 1
  store i32 4, ptr %68, align 8, !tbaa !31
  %69 = getelementptr inbounds %struct.gs_param_float_array_s, ptr %14, i64 0, i32 2
  store i32 0, ptr %69, align 4, !tbaa !32
  %70 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 14
  store ptr %70, ptr %15, align 8, !tbaa !29
  %71 = getelementptr inbounds %struct.gs_param_float_array_s, ptr %15, i64 0, i32 1
  store i32 2, ptr %71, align 8, !tbaa !31
  %72 = getelementptr inbounds %struct.gs_param_float_array_s, ptr %15, i64 0, i32 2
  store i32 0, ptr %72, align 4, !tbaa !32
  %73 = load ptr, ptr %1, align 8, !tbaa !39
  %74 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %73, i64 0, i32 6
  %75 = load ptr, ptr %74, align 8, !tbaa !41
  %76 = call i32 %75(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %3) #6
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %265, label %78

78:                                               ; preds = %47
  %79 = load ptr, ptr %1, align 8, !tbaa !39
  %80 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %79, i64 0, i32 8
  %81 = load ptr, ptr %80, align 8, !tbaa !43
  %82 = call i32 %81(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %5) #6
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %265, label %84

84:                                               ; preds = %78
  %85 = load ptr, ptr %4, align 8, !tbaa !23
  %86 = icmp eq ptr %85, null
  br i1 %86, label %92, label %87

87:                                               ; preds = %84
  %88 = load ptr, ptr %1, align 8, !tbaa !39
  %89 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %88, i64 0, i32 6
  %90 = load ptr, ptr %89, align 8, !tbaa !41
  %91 = call i32 %90(ptr noundef nonnull %1, ptr noundef nonnull @.str.2, ptr noundef nonnull %4) #6
  br label %92

92:                                               ; preds = %84, %87
  %93 = phi i32 [ %91, %87 ], [ 0, %84 ]
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %265, label %95

95:                                               ; preds = %92
  %96 = load ptr, ptr %1, align 8, !tbaa !39
  %97 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %96, i64 0, i32 8
  %98 = load ptr, ptr %97, align 8, !tbaa !43
  %99 = call i32 %98(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull %7) #6
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %265, label %101

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 12
  %103 = load i32, ptr %102, align 8, !tbaa !44
  %104 = icmp eq i32 %103, 0
  %105 = load ptr, ptr %1, align 8, !tbaa !39
  br i1 %104, label %110, label %106

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %105, i64 0, i32 8
  %108 = load ptr, ptr %107, align 8, !tbaa !43
  %109 = call i32 %108(ptr noundef nonnull %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %6) #6
  br label %113

110:                                              ; preds = %101
  %111 = load ptr, ptr %105, align 8, !tbaa !45
  %112 = call i32 %111(ptr noundef nonnull %1, ptr noundef nonnull @.str.4) #6
  br label %113

113:                                              ; preds = %110, %106
  %114 = phi i32 [ %109, %106 ], [ %112, %110 ]
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %265, label %116

116:                                              ; preds = %113
  %117 = load ptr, ptr %1, align 8, !tbaa !39
  %118 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %117, i64 0, i32 8
  %119 = load ptr, ptr %118, align 8, !tbaa !43
  %120 = call i32 %119(ptr noundef nonnull %1, ptr noundef nonnull @.str.5, ptr noundef nonnull %8) #6
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %265, label %122

122:                                              ; preds = %116
  %123 = load ptr, ptr %1, align 8, !tbaa !39
  %124 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %123, i64 0, i32 7
  %125 = load ptr, ptr %124, align 8, !tbaa !46
  %126 = call i32 %125(ptr noundef nonnull %1, ptr noundef nonnull @.str.6, ptr noundef nonnull %13) #6
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %265, label %128

128:                                              ; preds = %122
  %129 = load ptr, ptr %1, align 8, !tbaa !39
  %130 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %129, i64 0, i32 8
  %131 = load ptr, ptr %130, align 8, !tbaa !43
  %132 = call i32 %131(ptr noundef nonnull %1, ptr noundef nonnull @.str.7, ptr noundef nonnull %14) #6
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %265, label %134

134:                                              ; preds = %128
  %135 = load ptr, ptr %1, align 8, !tbaa !39
  %136 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %135, i64 0, i32 8
  %137 = load ptr, ptr %136, align 8, !tbaa !43
  %138 = call i32 %137(ptr noundef nonnull %1, ptr noundef nonnull @.str.8, ptr noundef nonnull %15) #6
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %265, label %140

140:                                              ; preds = %134
  %141 = load ptr, ptr %1, align 8, !tbaa !39
  %142 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %141, i64 0, i32 8
  %143 = load ptr, ptr %142, align 8, !tbaa !43
  %144 = call i32 %143(ptr noundef nonnull %1, ptr noundef nonnull @.str.9, ptr noundef nonnull %5) #6
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %265, label %146

146:                                              ; preds = %140
  %147 = load ptr, ptr %1, align 8, !tbaa !39
  %148 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %147, i64 0, i32 5
  %149 = load ptr, ptr %148, align 8, !tbaa !47
  %150 = call i32 %149(ptr noundef nonnull %1, ptr noundef nonnull @.str.10, ptr noundef nonnull %3) #6
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %265, label %152

152:                                              ; preds = %146
  %153 = load ptr, ptr %1, align 8, !tbaa !39
  %154 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %153, i64 0, i32 2
  %155 = load ptr, ptr %154, align 8, !tbaa !48
  %156 = call i32 %155(ptr noundef nonnull %1, ptr noundef nonnull @.str.11, ptr noundef nonnull %9) #6
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %265, label %158

158:                                              ; preds = %152
  %159 = load ptr, ptr %1, align 8, !tbaa !39
  %160 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %159, i64 0, i32 2
  %161 = load ptr, ptr %160, align 8, !tbaa !48
  %162 = call i32 %161(ptr noundef nonnull %1, ptr noundef nonnull @.str.12, ptr noundef nonnull %10) #6
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %265, label %164

164:                                              ; preds = %158
  %165 = load ptr, ptr %1, align 8, !tbaa !39
  %166 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %165, i64 0, i32 2
  %167 = load ptr, ptr %166, align 8, !tbaa !48
  %168 = call i32 %167(ptr noundef nonnull %1, ptr noundef nonnull @.str.13, ptr noundef nonnull %11) #6
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %265, label %170

170:                                              ; preds = %164
  %171 = load ptr, ptr %1, align 8, !tbaa !39
  %172 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %171, i64 0, i32 3
  %173 = load ptr, ptr %172, align 8, !tbaa !49
  %174 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 17
  %175 = call i32 %173(ptr noundef nonnull %1, ptr noundef nonnull @.str.14, ptr noundef nonnull %174) #6
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %265, label %177

177:                                              ; preds = %170
  %178 = load ptr, ptr %1, align 8, !tbaa !39
  %179 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %178, i64 0, i32 1
  %180 = load ptr, ptr %179, align 8, !tbaa !50
  %181 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 19
  %182 = call i32 %180(ptr noundef nonnull %1, ptr noundef nonnull @.str.15, ptr noundef nonnull %181) #6
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %265, label %184

184:                                              ; preds = %177
  %185 = load i32, ptr %9, align 4, !tbaa !19
  %186 = icmp sgt i32 %185, 1
  br i1 %186, label %187, label %221

187:                                              ; preds = %184
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #6
  %188 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7, i32 3
  %189 = load i16, ptr %188, align 2, !tbaa !51
  %190 = zext i16 %189 to i32
  %191 = add nuw nsw i32 %190, 1
  store i32 %191, ptr %16, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #6
  %192 = load i32, ptr %10, align 4, !tbaa !19
  %193 = zext nneg i32 %192 to i64
  %194 = shl nuw i64 1, %193
  store i64 %194, ptr %17, align 8, !tbaa !52
  %195 = load ptr, ptr %1, align 8, !tbaa !39
  %196 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %195, i64 0, i32 2
  %197 = load ptr, ptr %196, align 8, !tbaa !48
  %198 = call i32 %197(ptr noundef nonnull %1, ptr noundef nonnull @.str.16, ptr noundef nonnull %16) #6
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %218, label %200

200:                                              ; preds = %187
  %201 = load ptr, ptr %1, align 8, !tbaa !39
  %202 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %201, i64 0, i32 2
  %203 = load ptr, ptr %202, align 8, !tbaa !48
  %204 = call i32 %203(ptr noundef nonnull %1, ptr noundef nonnull @.str.17, ptr noundef nonnull %16) #6
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %218, label %206

206:                                              ; preds = %200
  %207 = load ptr, ptr %1, align 8, !tbaa !39
  %208 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %207, i64 0, i32 2
  %209 = load ptr, ptr %208, align 8, !tbaa !48
  %210 = call i32 %209(ptr noundef nonnull %1, ptr noundef nonnull @.str.18, ptr noundef nonnull %16) #6
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %218, label %212

212:                                              ; preds = %206
  %213 = load ptr, ptr %1, align 8, !tbaa !39
  %214 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %213, i64 0, i32 3
  %215 = load ptr, ptr %214, align 8, !tbaa !49
  %216 = call i32 %215(ptr noundef nonnull %1, ptr noundef nonnull @.str.19, ptr noundef nonnull %17) #6
  %217 = icmp sgt i32 %216, -1
  br label %218

218:                                              ; preds = %212, %187, %200, %206
  %219 = phi i32 [ %198, %187 ], [ %204, %200 ], [ %210, %206 ], [ %216, %212 ]
  %220 = phi i1 [ false, %187 ], [ false, %200 ], [ false, %206 ], [ %217, %212 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #6
  br i1 %220, label %221, label %265

221:                                              ; preds = %218, %184
  %222 = phi i32 [ %219, %218 ], [ undef, %184 ]
  %223 = load ptr, ptr %1, align 8, !tbaa !39
  %224 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %223, i64 0, i32 13
  %225 = load ptr, ptr %224, align 8, !tbaa !53
  %226 = call i32 %225(ptr noundef nonnull %1, ptr noundef nonnull @.str.20) #6
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %246, label %228

228:                                              ; preds = %221
  call void @llvm.lifetime.start.p0(i64 768, ptr nonnull %18) #6
  %229 = call fastcc i32 @param_HWColorMap(ptr noundef %0, ptr noundef nonnull %18)
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %243, label %231

231:                                              ; preds = %228
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %19) #6
  store ptr %18, ptr %19, align 8, !tbaa !23
  %232 = load i32, ptr %9, align 4, !tbaa !19
  %233 = load i32, ptr %10, align 4, !tbaa !19
  %234 = shl i32 %232, %233
  %235 = getelementptr inbounds %struct.gs_param_string_s, ptr %19, i64 0, i32 1
  store i32 %234, ptr %235, align 8, !tbaa !25
  %236 = getelementptr inbounds %struct.gs_param_string_s, ptr %19, i64 0, i32 2
  store i32 0, ptr %236, align 4, !tbaa !26
  %237 = load ptr, ptr %1, align 8, !tbaa !39
  %238 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %237, i64 0, i32 5
  %239 = load ptr, ptr %238, align 8, !tbaa !47
  %240 = call i32 %239(ptr noundef nonnull %1, ptr noundef nonnull @.str.20, ptr noundef nonnull %19) #6
  %241 = icmp sgt i32 %240, -1
  %242 = select i1 %241, i32 %222, i32 %240
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %19) #6
  br label %243

243:                                              ; preds = %231, %228
  %244 = phi i32 [ %222, %228 ], [ %242, %231 ]
  %245 = phi i1 [ true, %228 ], [ %241, %231 ]
  call void @llvm.lifetime.end.p0(i64 768, ptr nonnull %18) #6
  br i1 %245, label %246, label %265

246:                                              ; preds = %243, %221
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #6
  %247 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 20
  %248 = load ptr, ptr %247, align 8, !tbaa !17
  %249 = call i32 %248(ptr noundef %0, i32 noundef 0) #6
  store i32 %249, ptr %20, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #6
  %250 = load ptr, ptr %247, align 8, !tbaa !17
  %251 = call i32 %250(ptr noundef %0, i32 noundef 1) #6
  store i32 %251, ptr %21, align 4, !tbaa !19
  %252 = load ptr, ptr %1, align 8, !tbaa !39
  %253 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %252, i64 0, i32 2
  %254 = load ptr, ptr %253, align 8, !tbaa !48
  %255 = call i32 %254(ptr noundef nonnull %1, ptr noundef nonnull @.str.21, ptr noundef nonnull %20) #6
  %256 = icmp slt i32 %255, 0
  br i1 %256, label %263, label %257

257:                                              ; preds = %246
  %258 = load ptr, ptr %1, align 8, !tbaa !39
  %259 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %258, i64 0, i32 2
  %260 = load ptr, ptr %259, align 8, !tbaa !48
  %261 = call i32 %260(ptr noundef nonnull %1, ptr noundef nonnull @.str.22, ptr noundef nonnull %21) #6
  %262 = call i32 @llvm.smin.i32(i32 %261, i32 0)
  br label %263

263:                                              ; preds = %257, %246
  %264 = phi i32 [ %255, %246 ], [ %262, %257 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #6
  br label %265

265:                                              ; preds = %263, %47, %78, %92, %95, %113, %116, %122, %128, %134, %140, %146, %152, %158, %164, %170, %177, %218, %243
  %266 = phi i32 [ %244, %243 ], [ %219, %218 ], [ %76, %47 ], [ %82, %78 ], [ %93, %92 ], [ %99, %95 ], [ %114, %113 ], [ %120, %116 ], [ %126, %122 ], [ %132, %128 ], [ %138, %134 ], [ %144, %140 ], [ %150, %146 ], [ %156, %152 ], [ %162, %158 ], [ %168, %164 ], [ %175, %170 ], [ %182, %177 ], [ %264, %263 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  ret i32 %266
}

declare ptr @gx_default_get_page_device(ptr noundef) #1

declare i32 @gx_default_get_alpha_bits(ptr noundef, i32 noundef) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @param_HWColorMap(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = alloca [3 x i16], align 2
  %4 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7
  %5 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !20
  %7 = load i32, ptr %4, align 8, !tbaa !18
  %8 = icmp slt i32 %6, 9
  %9 = icmp slt i32 %7, 4
  %10 = select i1 %8, i1 %9, i1 false
  br i1 %10, label %11, label %45

11:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #6
  %12 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !54
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store ptr @gx_default_w_b_map_color_rgb, ptr %12, align 8, !tbaa !54
  br label %16

16:                                               ; preds = %15, %11
  %17 = zext nneg i32 %6 to i64
  %18 = icmp slt i32 %7, 1
  %19 = zext i32 %7 to i64
  br label %24

20:                                               ; preds = %41
  %21 = add i64 %25, 1
  %22 = lshr i64 %21, %17
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %43, !llvm.loop !55

24:                                               ; preds = %16, %20
  %25 = phi i64 [ 0, %16 ], [ %21, %20 ]
  %26 = phi ptr [ %1, %16 ], [ %42, %20 ]
  %27 = load ptr, ptr %12, align 8, !tbaa !54
  %28 = call i32 %27(ptr noundef %0, i64 noundef %25, ptr noundef nonnull %3) #6
  %29 = icmp slt i32 %28, 0
  %30 = select i1 %29, i1 true, i1 %18
  br i1 %30, label %41, label %31

31:                                               ; preds = %24, %31
  %32 = phi i64 [ %39, %31 ], [ 0, %24 ]
  %33 = phi ptr [ %38, %31 ], [ %26, %24 ]
  %34 = getelementptr inbounds [3 x i16], ptr %3, i64 0, i64 %32
  %35 = load i16, ptr %34, align 2, !tbaa !57
  %36 = lshr i16 %35, 8
  %37 = trunc i16 %36 to i8
  %38 = getelementptr inbounds i8, ptr %33, i64 1
  store i8 %37, ptr %33, align 1, !tbaa !28
  %39 = add nuw nsw i64 %32, 1
  %40 = icmp eq i64 %39, %19
  br i1 %40, label %41, label %31, !llvm.loop !58

41:                                               ; preds = %31, %24
  %42 = phi ptr [ %26, %24 ], [ %38, %31 ]
  br i1 %29, label %43, label %20

43:                                               ; preds = %20, %41
  %44 = phi i32 [ 0, %41 ], [ 1, %20 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #6
  br label %45

45:                                               ; preds = %2, %43
  %46 = phi i32 [ %44, %43 ], [ 0, %2 ]
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_putdeviceparams(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !59
  tail call void @gx_device_set_procs(ptr noundef %0) #6
  %5 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 14
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store ptr @gx_default_put_params, ptr %5, align 8, !tbaa !60
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 20
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store ptr @gx_default_get_alpha_bits, ptr %10, align 8, !tbaa !17
  br label %14

14:                                               ; preds = %13, %9
  %15 = load ptr, ptr %5, align 8, !tbaa !60
  %16 = tail call i32 %15(ptr noundef %0, ptr noundef %1) #6
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = icmp eq i32 %4, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %18
  %21 = load i32, ptr %3, align 8, !tbaa !59
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20, %18
  br label %24

24:                                               ; preds = %14, %23, %20
  %25 = phi i32 [ %16, %23 ], [ 1, %20 ], [ %16, %14 ]
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_default_put_params(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.gs_param_string_s, align 8
  %6 = alloca %struct.gs_param_string_s, align 8
  %7 = alloca [3 x i16], align 2
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.gs_param_string_s, align 8
  %17 = alloca %struct.gs_param_string_s, align 8
  %18 = alloca %struct.gs_param_string_s, align 8
  %19 = alloca %struct.gs_param_float_array_s, align 8
  %20 = alloca %struct.gs_param_int_array_s, align 8
  %21 = alloca %struct.gs_param_float_array_s, align 8
  %22 = alloca %struct.gs_param_float_array_s, align 8
  %23 = alloca %struct.gs_param_float_array_s, align 8
  %24 = alloca %struct.gs_param_float_array_s, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.gs_param_float_array_s, align 8
  %27 = alloca %struct.gs_param_string_s, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca [768 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %19) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %20) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %21) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %22) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %23) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %24) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %25) #6
  %31 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 19
  %32 = load i32, ptr %31, align 8, !tbaa !61
  store i32 %32, ptr %25, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %26) #6
  %33 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7
  %34 = load i32, ptr %33, align 8, !tbaa !18
  %35 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !20
  %37 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7, i32 2
  %38 = load i16, ptr %37, align 8, !tbaa !21
  %39 = zext i16 %38 to i64
  %40 = add nuw nsw i64 %39, 1
  %41 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7, i32 3
  %42 = load i16, ptr %41, align 2, !tbaa !51
  %43 = zext i16 %42 to i64
  %44 = add nuw nsw i64 %43, 1
  %45 = zext nneg i32 %36 to i64
  %46 = shl nuw i64 1, %45
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %27) #6
  %47 = load ptr, ptr %1, align 8, !tbaa !39
  %48 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %47, i64 0, i32 8
  %49 = load ptr, ptr %48, align 8, !tbaa !43
  %50 = call i32 %49(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull %19) #6
  switch i32 %50, label %63 [
    i32 0, label %51
    i32 1, label %69
  ]

51:                                               ; preds = %2
  %52 = getelementptr inbounds %struct.gs_param_float_array_s, ptr %19, i64 0, i32 1
  %53 = load i32, ptr %52, align 8, !tbaa !31
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = load ptr, ptr %19, align 8, !tbaa !29
  %57 = load float, ptr %56, align 4, !tbaa !62
  %58 = fcmp ugt float %57, 0.000000e+00
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = getelementptr inbounds float, ptr %56, i64 1
  %61 = load float, ptr %60, align 4, !tbaa !62
  %62 = fcmp ugt float %61, 0.000000e+00
  br i1 %62, label %71, label %63

63:                                               ; preds = %2, %55, %59, %51
  %64 = phi i32 [ -15, %51 ], [ -15, %59 ], [ -15, %55 ], [ %50, %2 ]
  %65 = load ptr, ptr %1, align 8, !tbaa !39
  %66 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %65, i64 0, i32 15
  %67 = load ptr, ptr %66, align 8, !tbaa !64
  %68 = call i32 %67(ptr noundef nonnull %1, ptr noundef nonnull @.str.3, i32 noundef %64) #6
  br label %69

69:                                               ; preds = %2, %63
  %70 = phi i32 [ %64, %63 ], [ 0, %2 ]
  store ptr null, ptr %19, align 8, !tbaa !29
  br label %71

71:                                               ; preds = %59, %69
  %72 = phi i32 [ %70, %69 ], [ 0, %59 ]
  %73 = load ptr, ptr %1, align 8, !tbaa !39
  %74 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %73, i64 0, i32 7
  %75 = load ptr, ptr %74, align 8, !tbaa !46
  %76 = call i32 %75(ptr noundef nonnull %1, ptr noundef nonnull @.str.6, ptr noundef nonnull %20) #6
  switch i32 %76, label %97 [
    i32 0, label %77
    i32 1, label %103
  ]

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.gs_param_int_array_s, ptr %20, i64 0, i32 1
  %79 = load i32, ptr %78, align 8, !tbaa !37
  %80 = icmp eq i32 %79, 2
  br i1 %80, label %81, label %97

81:                                               ; preds = %77
  %82 = load ptr, ptr %20, align 8, !tbaa !35
  %83 = load i32, ptr %82, align 4, !tbaa !19
  %84 = icmp slt i32 %83, 1
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  %87 = load i32, ptr %86, align 8, !tbaa !33
  %88 = icmp eq i32 %83, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %85, %81
  %90 = getelementptr inbounds i32, ptr %82, i64 1
  %91 = load i32, ptr %90, align 4, !tbaa !19
  %92 = icmp slt i32 %91, 1
  br i1 %92, label %93, label %105

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %95 = load i32, ptr %94, align 4, !tbaa !34
  %96 = icmp eq i32 %91, %95
  br i1 %96, label %105, label %97

97:                                               ; preds = %71, %85, %93, %77
  %98 = phi i32 [ -15, %77 ], [ -15, %93 ], [ -15, %85 ], [ %76, %71 ]
  %99 = load ptr, ptr %1, align 8, !tbaa !39
  %100 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %99, i64 0, i32 15
  %101 = load ptr, ptr %100, align 8, !tbaa !64
  %102 = call i32 %101(ptr noundef nonnull %1, ptr noundef nonnull @.str.6, i32 noundef %98) #6
  br label %103

103:                                              ; preds = %71, %97
  %104 = phi i32 [ %98, %97 ], [ %72, %71 ]
  store ptr null, ptr %20, align 8, !tbaa !35
  br label %105

105:                                              ; preds = %89, %93, %103
  %106 = phi i32 [ %104, %103 ], [ %72, %93 ], [ %72, %89 ]
  %107 = load ptr, ptr %19, align 8
  %108 = icmp eq ptr %107, null
  %109 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 13
  %110 = select i1 %108, ptr %109, ptr %107
  %111 = load ptr, ptr %1, align 8, !tbaa !39
  %112 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %111, i64 0, i32 8
  %113 = load ptr, ptr %112, align 8, !tbaa !43
  %114 = call i32 %113(ptr noundef nonnull %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %21) #6
  switch i32 %114, label %135 [
    i32 0, label %115
    i32 1, label %141
  ]

115:                                              ; preds = %105
  %116 = getelementptr inbounds %struct.gs_param_float_array_s, ptr %21, i64 0, i32 1
  %117 = load i32, ptr %116, align 8, !tbaa !31
  %118 = icmp eq i32 %117, 2
  br i1 %118, label %119, label %135

119:                                              ; preds = %115
  %120 = load ptr, ptr %21, align 8, !tbaa !29
  %121 = load float, ptr %120, align 4, !tbaa !62
  %122 = load float, ptr %110, align 4, !tbaa !62
  %123 = fmul float %121, %122
  %124 = fdiv float %123, 7.200000e+01
  %125 = getelementptr inbounds float, ptr %120, i64 1
  %126 = load float, ptr %125, align 4, !tbaa !62
  %127 = getelementptr inbounds float, ptr %110, i64 1
  %128 = load float, ptr %127, align 4, !tbaa !62
  %129 = fmul float %126, %128
  %130 = fdiv float %129, 7.200000e+01
  %131 = fcmp olt float %124, 0.000000e+00
  %132 = fcmp olt float %130, 0.000000e+00
  %133 = select i1 %131, i1 true, i1 %132
  %134 = select i1 %133, i32 -15, i32 0
  br i1 %133, label %135, label %143

135:                                              ; preds = %119, %115, %105
  %136 = phi i32 [ %134, %119 ], [ -15, %115 ], [ %114, %105 ]
  %137 = load ptr, ptr %1, align 8, !tbaa !39
  %138 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %137, i64 0, i32 15
  %139 = load ptr, ptr %138, align 8, !tbaa !64
  %140 = call i32 %139(ptr noundef nonnull %1, ptr noundef nonnull @.str.1, i32 noundef %136) #6
  br label %141

141:                                              ; preds = %135, %105
  %142 = phi i32 [ %136, %135 ], [ 0, %105 ]
  store ptr null, ptr %21, align 8, !tbaa !29
  br label %143

143:                                              ; preds = %119, %141
  %144 = phi i32 [ %142, %141 ], [ %134, %119 ]
  %145 = icmp slt i32 %144, 0
  %146 = select i1 %145, i32 %144, i32 %106
  %147 = load ptr, ptr %21, align 8, !tbaa !29
  %148 = load ptr, ptr %1, align 8, !tbaa !39
  %149 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %148, i64 0, i32 8
  %150 = load ptr, ptr %149, align 8, !tbaa !43
  %151 = call i32 %150(ptr noundef nonnull %1, ptr noundef nonnull @.str.9, ptr noundef nonnull %21) #6
  switch i32 %151, label %172 [
    i32 0, label %152
    i32 1, label %178
  ]

152:                                              ; preds = %143
  %153 = getelementptr inbounds %struct.gs_param_float_array_s, ptr %21, i64 0, i32 1
  %154 = load i32, ptr %153, align 8, !tbaa !31
  %155 = icmp eq i32 %154, 2
  br i1 %155, label %156, label %172

156:                                              ; preds = %152
  %157 = load ptr, ptr %21, align 8, !tbaa !29
  %158 = load float, ptr %157, align 4, !tbaa !62
  %159 = load float, ptr %110, align 4, !tbaa !62
  %160 = fmul float %158, %159
  %161 = fdiv float %160, 7.200000e+01
  %162 = getelementptr inbounds float, ptr %157, i64 1
  %163 = load float, ptr %162, align 4, !tbaa !62
  %164 = getelementptr inbounds float, ptr %110, i64 1
  %165 = load float, ptr %164, align 4, !tbaa !62
  %166 = fmul float %163, %165
  %167 = fdiv float %166, 7.200000e+01
  %168 = fcmp olt float %161, 0.000000e+00
  %169 = fcmp olt float %167, 0.000000e+00
  %170 = select i1 %168, i1 true, i1 %169
  %171 = select i1 %170, i32 -15, i32 0
  br i1 %170, label %172, label %180

172:                                              ; preds = %156, %152, %143
  %173 = phi i32 [ %171, %156 ], [ -15, %152 ], [ %151, %143 ]
  %174 = load ptr, ptr %1, align 8, !tbaa !39
  %175 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %174, i64 0, i32 15
  %176 = load ptr, ptr %175, align 8, !tbaa !64
  %177 = call i32 %176(ptr noundef nonnull %1, ptr noundef nonnull @.str.9, i32 noundef %173) #6
  br label %178

178:                                              ; preds = %172, %143
  %179 = phi i32 [ %173, %172 ], [ 0, %143 ]
  store ptr null, ptr %21, align 8, !tbaa !29
  br label %180

180:                                              ; preds = %156, %178
  %181 = phi i32 [ %179, %178 ], [ %171, %156 ]
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %187, label %183

183:                                              ; preds = %180
  %184 = load ptr, ptr %21, align 8, !tbaa !29
  %185 = icmp eq ptr %184, null
  br i1 %185, label %186, label %187

186:                                              ; preds = %183
  store ptr %147, ptr %21, align 8, !tbaa !29
  br label %187

187:                                              ; preds = %180, %183, %186
  %188 = phi i32 [ %146, %186 ], [ %146, %183 ], [ %181, %180 ]
  %189 = load ptr, ptr %1, align 8, !tbaa !39
  %190 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %189, i64 0, i32 8
  %191 = load ptr, ptr %190, align 8, !tbaa !43
  %192 = call i32 %191(ptr noundef nonnull %1, ptr noundef nonnull @.str.5, ptr noundef nonnull %22) #6
  switch i32 %192, label %197 [
    i32 0, label %193
    i32 1, label %203
  ]

193:                                              ; preds = %187
  %194 = getelementptr inbounds %struct.gs_param_float_array_s, ptr %22, i64 0, i32 1
  %195 = load i32, ptr %194, align 8, !tbaa !31
  %196 = icmp eq i32 %195, 2
  br i1 %196, label %205, label %197

197:                                              ; preds = %187, %193
  %198 = phi i32 [ -15, %193 ], [ %192, %187 ]
  %199 = load ptr, ptr %1, align 8, !tbaa !39
  %200 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %199, i64 0, i32 15
  %201 = load ptr, ptr %200, align 8, !tbaa !64
  %202 = call i32 %201(ptr noundef nonnull %1, ptr noundef nonnull @.str.5, i32 noundef %198) #6
  br label %203

203:                                              ; preds = %187, %197
  %204 = phi i32 [ %198, %197 ], [ %188, %187 ]
  store ptr null, ptr %22, align 8, !tbaa !29
  br label %205

205:                                              ; preds = %193, %203
  %206 = phi i32 [ %204, %203 ], [ %188, %193 ]
  %207 = load ptr, ptr %1, align 8, !tbaa !39
  %208 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %207, i64 0, i32 8
  %209 = load ptr, ptr %208, align 8, !tbaa !43
  %210 = call i32 %209(ptr noundef nonnull %1, ptr noundef nonnull @.str.7, ptr noundef nonnull %23) #6
  switch i32 %210, label %215 [
    i32 0, label %211
    i32 1, label %221
  ]

211:                                              ; preds = %205
  %212 = getelementptr inbounds %struct.gs_param_float_array_s, ptr %23, i64 0, i32 1
  %213 = load i32, ptr %212, align 8, !tbaa !31
  %214 = icmp eq i32 %213, 4
  br i1 %214, label %223, label %215

215:                                              ; preds = %205, %211
  %216 = phi i32 [ -15, %211 ], [ %210, %205 ]
  %217 = load ptr, ptr %1, align 8, !tbaa !39
  %218 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %217, i64 0, i32 15
  %219 = load ptr, ptr %218, align 8, !tbaa !64
  %220 = call i32 %219(ptr noundef nonnull %1, ptr noundef nonnull @.str.7, i32 noundef %216) #6
  br label %221

221:                                              ; preds = %205, %215
  %222 = phi i32 [ %216, %215 ], [ %206, %205 ]
  store ptr null, ptr %23, align 8, !tbaa !29
  br label %223

223:                                              ; preds = %211, %221
  %224 = phi i32 [ %222, %221 ], [ %206, %211 ]
  %225 = load ptr, ptr %1, align 8, !tbaa !39
  %226 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %225, i64 0, i32 8
  %227 = load ptr, ptr %226, align 8, !tbaa !43
  %228 = call i32 %227(ptr noundef nonnull %1, ptr noundef nonnull @.str.8, ptr noundef nonnull %24) #6
  switch i32 %228, label %245 [
    i32 0, label %229
    i32 1, label %251
  ]

229:                                              ; preds = %223
  %230 = getelementptr inbounds %struct.gs_param_float_array_s, ptr %24, i64 0, i32 1
  %231 = load i32, ptr %230, align 8, !tbaa !31
  %232 = icmp eq i32 %231, 2
  br i1 %232, label %233, label %245

233:                                              ; preds = %229
  %234 = load ptr, ptr %24, align 8, !tbaa !29
  %235 = load float, ptr %234, align 4, !tbaa !62
  %236 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 14
  %237 = load float, ptr %236, align 4, !tbaa !62
  %238 = fcmp une float %235, %237
  br i1 %238, label %245, label %239

239:                                              ; preds = %233
  %240 = getelementptr inbounds float, ptr %234, i64 1
  %241 = load float, ptr %240, align 4, !tbaa !62
  %242 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 14, i64 1
  %243 = load float, ptr %242, align 4, !tbaa !62
  %244 = fcmp une float %241, %243
  br i1 %244, label %245, label %253

245:                                              ; preds = %223, %233, %239, %229
  %246 = phi i32 [ -15, %229 ], [ -15, %239 ], [ -15, %233 ], [ %228, %223 ]
  %247 = load ptr, ptr %1, align 8, !tbaa !39
  %248 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %247, i64 0, i32 15
  %249 = load ptr, ptr %248, align 8, !tbaa !64
  %250 = call i32 %249(ptr noundef nonnull %1, ptr noundef nonnull @.str.8, i32 noundef %246) #6
  br label %251

251:                                              ; preds = %223, %245
  %252 = phi i32 [ %246, %245 ], [ %224, %223 ]
  store ptr null, ptr %24, align 8, !tbaa !29
  br label %253

253:                                              ; preds = %239, %251
  %254 = phi i32 [ %252, %251 ], [ %224, %239 ]
  %255 = load ptr, ptr %1, align 8, !tbaa !39
  %256 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %255, i64 0, i32 1
  %257 = load ptr, ptr %256, align 8, !tbaa !50
  %258 = call i32 %257(ptr noundef nonnull %1, ptr noundef nonnull @.str.15, ptr noundef nonnull %25) #6
  %259 = icmp ult i32 %258, 2
  br i1 %259, label %265, label %260

260:                                              ; preds = %253
  %261 = load ptr, ptr %1, align 8, !tbaa !39
  %262 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %261, i64 0, i32 15
  %263 = load ptr, ptr %262, align 8, !tbaa !64
  %264 = call i32 %263(ptr noundef nonnull %1, ptr noundef nonnull @.str.15, i32 noundef %258) #6
  br label %265

265:                                              ; preds = %253, %260
  %266 = phi i32 [ %258, %260 ], [ %254, %253 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %28) #6
  %267 = load ptr, ptr %1, align 8, !tbaa !39
  %268 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %267, i64 0, i32 2
  %269 = load ptr, ptr %268, align 8, !tbaa !48
  %270 = call i32 %269(ptr noundef nonnull %1, ptr noundef nonnull @.str.23, ptr noundef nonnull %28) #6
  %271 = icmp ult i32 %270, 2
  br i1 %271, label %277, label %272

272:                                              ; preds = %265
  %273 = load ptr, ptr %1, align 8, !tbaa !39
  %274 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %273, i64 0, i32 15
  %275 = load ptr, ptr %274, align 8, !tbaa !64
  %276 = call i32 %275(ptr noundef nonnull %1, ptr noundef nonnull @.str.23, i32 noundef %270) #6
  br label %277

277:                                              ; preds = %265, %272
  %278 = phi i32 [ %270, %272 ], [ %266, %265 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %28) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %29) #6
  %279 = load ptr, ptr %1, align 8, !tbaa !39
  %280 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %279, i64 0, i32 2
  %281 = load ptr, ptr %280, align 8, !tbaa !48
  %282 = call i32 %281(ptr noundef nonnull %1, ptr noundef nonnull @.str.24, ptr noundef nonnull %29) #6
  %283 = icmp ult i32 %282, 2
  br i1 %283, label %289, label %284

284:                                              ; preds = %277
  %285 = load ptr, ptr %1, align 8, !tbaa !39
  %286 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %285, i64 0, i32 15
  %287 = load ptr, ptr %286, align 8, !tbaa !64
  %288 = call i32 %287(ptr noundef nonnull %1, ptr noundef nonnull @.str.24, i32 noundef %282) #6
  br label %289

289:                                              ; preds = %277, %284
  %290 = phi i32 [ %282, %284 ], [ %278, %277 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %29) #6
  %291 = load ptr, ptr %1, align 8, !tbaa !39
  %292 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %291, i64 0, i32 8
  %293 = load ptr, ptr %292, align 8, !tbaa !43
  %294 = call i32 %293(ptr noundef nonnull %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %26) #6
  switch i32 %294, label %311 [
    i32 0, label %295
    i32 1, label %323
  ]

295:                                              ; preds = %289
  %296 = getelementptr inbounds %struct.gs_param_float_array_s, ptr %26, i64 0, i32 1
  %297 = load i32, ptr %296, align 8, !tbaa !31
  %298 = icmp eq i32 %297, 4
  br i1 %298, label %299, label %317

299:                                              ; preds = %295
  %300 = load ptr, ptr %26, align 8, !tbaa !29
  %301 = getelementptr inbounds float, ptr %300, i64 2
  %302 = load float, ptr %301, align 4, !tbaa !62
  %303 = load float, ptr %300, align 4, !tbaa !62
  %304 = fcmp olt float %302, %303
  br i1 %304, label %317, label %305

305:                                              ; preds = %299
  %306 = getelementptr inbounds float, ptr %300, i64 3
  %307 = load float, ptr %306, align 4, !tbaa !62
  %308 = getelementptr inbounds float, ptr %300, i64 1
  %309 = load float, ptr %308, align 4, !tbaa !62
  %310 = fcmp olt float %307, %309
  br i1 %310, label %317, label %325

311:                                              ; preds = %289
  %312 = load ptr, ptr %1, align 8, !tbaa !39
  %313 = load ptr, ptr %312, align 8, !tbaa !45
  %314 = call i32 %313(ptr noundef nonnull %1, ptr noundef nonnull @.str.4) #6
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %316, label %317

316:                                              ; preds = %311
  store ptr null, ptr %26, align 8, !tbaa !29
  br label %325

317:                                              ; preds = %311, %295, %299, %305
  %318 = phi i32 [ -15, %305 ], [ -15, %299 ], [ -15, %295 ], [ %314, %311 ]
  %319 = load ptr, ptr %1, align 8, !tbaa !39
  %320 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %319, i64 0, i32 15
  %321 = load ptr, ptr %320, align 8, !tbaa !64
  %322 = call i32 %321(ptr noundef nonnull %1, ptr noundef nonnull @.str.4, i32 noundef %318) #6
  br label %323

323:                                              ; preds = %289, %317
  %324 = phi i32 [ %318, %317 ], [ %290, %289 ]
  store ptr null, ptr %26, align 8, !tbaa !29
  br label %325

325:                                              ; preds = %305, %323, %316
  %326 = phi i1 [ false, %316 ], [ true, %323 ], [ true, %305 ]
  %327 = phi i32 [ %290, %316 ], [ %324, %323 ], [ %290, %305 ]
  %328 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 2
  %329 = load ptr, ptr %328, align 8, !tbaa !22
  %330 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %329) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18) #6
  %331 = load ptr, ptr %1, align 8, !tbaa !39
  %332 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %331, i64 0, i32 5
  %333 = load ptr, ptr %332, align 8, !tbaa !47
  %334 = call i32 %333(ptr noundef nonnull %1, ptr noundef nonnull @.str, ptr noundef nonnull %18) #6
  switch i32 %334, label %345 [
    i32 0, label %335
    i32 1, label %356
  ]

335:                                              ; preds = %325
  %336 = trunc i64 %330 to i32
  %337 = getelementptr inbounds %struct.gs_param_string_s, ptr %18, i64 0, i32 1
  %338 = load i32, ptr %337, align 8
  %339 = icmp eq i32 %338, %336
  br i1 %339, label %340, label %350

340:                                              ; preds = %335
  %341 = load ptr, ptr %18, align 8, !tbaa !23
  %342 = and i64 %330, 4294967295
  %343 = call i32 @bcmp(ptr %329, ptr %341, i64 %342)
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %356, label %350

345:                                              ; preds = %325
  %346 = load ptr, ptr %1, align 8, !tbaa !39
  %347 = load ptr, ptr %346, align 8, !tbaa !45
  %348 = call i32 %347(ptr noundef nonnull %1, ptr noundef nonnull @.str) #6
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %356, label %350

350:                                              ; preds = %345, %340, %335
  %351 = phi i32 [ %334, %345 ], [ -15, %340 ], [ -15, %335 ]
  %352 = load ptr, ptr %1, align 8, !tbaa !39
  %353 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %352, i64 0, i32 15
  %354 = load ptr, ptr %353, align 8, !tbaa !64
  %355 = call i32 %354(ptr noundef nonnull %1, ptr noundef nonnull @.str, i32 noundef %351) #6
  br label %356

356:                                              ; preds = %325, %340, %345, %350
  %357 = phi i32 [ 1, %345 ], [ %351, %350 ], [ %334, %325 ], [ 0, %340 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #6
  %358 = icmp slt i32 %357, 0
  %359 = select i1 %358, i32 %357, i32 %327
  %360 = sext i32 %34 to i64
  %361 = getelementptr inbounds [5 x ptr], ptr @pcmsa, i64 0, i64 %360
  %362 = load ptr, ptr %361, align 8, !tbaa !27
  %363 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %362) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #6
  %364 = load ptr, ptr %1, align 8, !tbaa !39
  %365 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %364, i64 0, i32 5
  %366 = load ptr, ptr %365, align 8, !tbaa !47
  %367 = call i32 %366(ptr noundef nonnull %1, ptr noundef nonnull @.str.2, ptr noundef nonnull %17) #6
  switch i32 %367, label %380 [
    i32 0, label %368
    i32 1, label %391
  ]

368:                                              ; preds = %356
  %369 = trunc i64 %363 to i32
  %370 = icmp ne i32 %34, 0
  %371 = getelementptr inbounds %struct.gs_param_string_s, ptr %17, i64 0, i32 1
  %372 = load i32, ptr %371, align 8
  %373 = icmp eq i32 %372, %369
  %374 = select i1 %370, i1 %373, i1 false
  br i1 %374, label %375, label %385

375:                                              ; preds = %368
  %376 = load ptr, ptr %17, align 8, !tbaa !23
  %377 = and i64 %363, 4294967295
  %378 = call i32 @bcmp(ptr %362, ptr %376, i64 %377)
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %391, label %385

380:                                              ; preds = %356
  %381 = load ptr, ptr %1, align 8, !tbaa !39
  %382 = load ptr, ptr %381, align 8, !tbaa !45
  %383 = call i32 %382(ptr noundef nonnull %1, ptr noundef nonnull @.str.2) #6
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %391, label %385

385:                                              ; preds = %380, %375, %368
  %386 = phi i32 [ %367, %380 ], [ -15, %375 ], [ -15, %368 ]
  %387 = load ptr, ptr %1, align 8, !tbaa !39
  %388 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %387, i64 0, i32 15
  %389 = load ptr, ptr %388, align 8, !tbaa !64
  %390 = call i32 %389(ptr noundef nonnull %1, ptr noundef nonnull @.str.2, i32 noundef %386) #6
  br label %391

391:                                              ; preds = %356, %375, %380, %385
  %392 = phi i32 [ 1, %380 ], [ %386, %385 ], [ %367, %356 ], [ 0, %375 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #6
  %393 = icmp slt i32 %392, 0
  %394 = select i1 %393, i32 %392, i32 %359
  %395 = load ptr, ptr %328, align 8, !tbaa !22
  %396 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %395) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #6
  %397 = load ptr, ptr %1, align 8, !tbaa !39
  %398 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %397, i64 0, i32 5
  %399 = load ptr, ptr %398, align 8, !tbaa !47
  %400 = call i32 %399(ptr noundef nonnull %1, ptr noundef nonnull @.str.10, ptr noundef nonnull %16) #6
  switch i32 %400, label %411 [
    i32 0, label %401
    i32 1, label %422
  ]

401:                                              ; preds = %391
  %402 = trunc i64 %396 to i32
  %403 = getelementptr inbounds %struct.gs_param_string_s, ptr %16, i64 0, i32 1
  %404 = load i32, ptr %403, align 8
  %405 = icmp eq i32 %404, %402
  br i1 %405, label %406, label %416

406:                                              ; preds = %401
  %407 = load ptr, ptr %16, align 8, !tbaa !23
  %408 = and i64 %396, 4294967295
  %409 = call i32 @bcmp(ptr %395, ptr %407, i64 %408)
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %422, label %416

411:                                              ; preds = %391
  %412 = load ptr, ptr %1, align 8, !tbaa !39
  %413 = load ptr, ptr %412, align 8, !tbaa !45
  %414 = call i32 %413(ptr noundef nonnull %1, ptr noundef nonnull @.str.10) #6
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %422, label %416

416:                                              ; preds = %411, %406, %401
  %417 = phi i32 [ %400, %411 ], [ -15, %406 ], [ -15, %401 ]
  %418 = load ptr, ptr %1, align 8, !tbaa !39
  %419 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %418, i64 0, i32 15
  %420 = load ptr, ptr %419, align 8, !tbaa !64
  %421 = call i32 %420(ptr noundef nonnull %1, ptr noundef nonnull @.str.10, i32 noundef %417) #6
  br label %422

422:                                              ; preds = %391, %406, %411, %416
  %423 = phi i32 [ 1, %411 ], [ %417, %416 ], [ %400, %391 ], [ 0, %406 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #6
  %424 = icmp slt i32 %423, 0
  %425 = select i1 %424, i32 %423, i32 %394
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #6
  %426 = load ptr, ptr %1, align 8, !tbaa !39
  %427 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %426, i64 0, i32 3
  %428 = load ptr, ptr %427, align 8, !tbaa !49
  %429 = call i32 %428(ptr noundef nonnull %1, ptr noundef nonnull @.str.11, ptr noundef nonnull %15) #6
  switch i32 %429, label %433 [
    i32 0, label %430
    i32 1, label %444
  ]

430:                                              ; preds = %422
  %431 = load i64, ptr %15, align 8
  %432 = icmp eq i64 %431, %360
  br i1 %432, label %444, label %438

433:                                              ; preds = %422
  %434 = load ptr, ptr %1, align 8, !tbaa !39
  %435 = load ptr, ptr %434, align 8, !tbaa !45
  %436 = call i32 %435(ptr noundef nonnull %1, ptr noundef nonnull @.str.11) #6
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %444, label %438

438:                                              ; preds = %433, %430
  %439 = phi i32 [ %429, %433 ], [ -15, %430 ]
  %440 = load ptr, ptr %1, align 8, !tbaa !39
  %441 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %440, i64 0, i32 15
  %442 = load ptr, ptr %441, align 8, !tbaa !64
  %443 = call i32 %442(ptr noundef nonnull %1, ptr noundef nonnull @.str.11, i32 noundef %439) #6
  br label %444

444:                                              ; preds = %422, %430, %433, %438
  %445 = phi i32 [ 1, %433 ], [ %439, %438 ], [ %429, %422 ], [ 0, %430 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #6
  %446 = icmp slt i32 %445, 0
  %447 = select i1 %446, i32 %445, i32 %425
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #6
  %448 = load ptr, ptr %1, align 8, !tbaa !39
  %449 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %448, i64 0, i32 3
  %450 = load ptr, ptr %449, align 8, !tbaa !49
  %451 = call i32 %450(ptr noundef nonnull %1, ptr noundef nonnull @.str.12, ptr noundef nonnull %14) #6
  switch i32 %451, label %456 [
    i32 0, label %452
    i32 1, label %467
  ]

452:                                              ; preds = %444
  %453 = sext i32 %36 to i64
  %454 = load i64, ptr %14, align 8
  %455 = icmp eq i64 %454, %453
  br i1 %455, label %467, label %461

456:                                              ; preds = %444
  %457 = load ptr, ptr %1, align 8, !tbaa !39
  %458 = load ptr, ptr %457, align 8, !tbaa !45
  %459 = call i32 %458(ptr noundef nonnull %1, ptr noundef nonnull @.str.12) #6
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %467, label %461

461:                                              ; preds = %456, %452
  %462 = phi i32 [ %451, %456 ], [ -15, %452 ]
  %463 = load ptr, ptr %1, align 8, !tbaa !39
  %464 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %463, i64 0, i32 15
  %465 = load ptr, ptr %464, align 8, !tbaa !64
  %466 = call i32 %465(ptr noundef nonnull %1, ptr noundef nonnull @.str.12, i32 noundef %462) #6
  br label %467

467:                                              ; preds = %444, %452, %456, %461
  %468 = phi i32 [ 1, %456 ], [ %462, %461 ], [ %451, %444 ], [ 0, %452 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #6
  %469 = icmp slt i32 %468, 0
  %470 = select i1 %469, i32 %468, i32 %447
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #6
  %471 = load ptr, ptr %1, align 8, !tbaa !39
  %472 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %471, i64 0, i32 3
  %473 = load ptr, ptr %472, align 8, !tbaa !49
  %474 = call i32 %473(ptr noundef nonnull %1, ptr noundef nonnull @.str.13, ptr noundef nonnull %13) #6
  switch i32 %474, label %478 [
    i32 0, label %475
    i32 1, label %489
  ]

475:                                              ; preds = %467
  %476 = load i64, ptr %13, align 8
  %477 = icmp eq i64 %476, %40
  br i1 %477, label %489, label %483

478:                                              ; preds = %467
  %479 = load ptr, ptr %1, align 8, !tbaa !39
  %480 = load ptr, ptr %479, align 8, !tbaa !45
  %481 = call i32 %480(ptr noundef nonnull %1, ptr noundef nonnull @.str.13) #6
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %489, label %483

483:                                              ; preds = %478, %475
  %484 = phi i32 [ %474, %478 ], [ -15, %475 ]
  %485 = load ptr, ptr %1, align 8, !tbaa !39
  %486 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %485, i64 0, i32 15
  %487 = load ptr, ptr %486, align 8, !tbaa !64
  %488 = call i32 %487(ptr noundef nonnull %1, ptr noundef nonnull @.str.13, i32 noundef %484) #6
  br label %489

489:                                              ; preds = %467, %475, %478, %483
  %490 = phi i32 [ 1, %478 ], [ %484, %483 ], [ %474, %467 ], [ 0, %475 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #6
  %491 = icmp slt i32 %490, 0
  %492 = select i1 %491, i32 %490, i32 %470
  %493 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 17
  %494 = load i64, ptr %493, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #6
  %495 = load ptr, ptr %1, align 8, !tbaa !39
  %496 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %495, i64 0, i32 3
  %497 = load ptr, ptr %496, align 8, !tbaa !49
  %498 = call i32 %497(ptr noundef nonnull %1, ptr noundef nonnull @.str.14, ptr noundef nonnull %12) #6
  switch i32 %498, label %502 [
    i32 0, label %499
    i32 1, label %513
  ]

499:                                              ; preds = %489
  %500 = load i64, ptr %12, align 8
  %501 = icmp eq i64 %500, %494
  br i1 %501, label %513, label %507

502:                                              ; preds = %489
  %503 = load ptr, ptr %1, align 8, !tbaa !39
  %504 = load ptr, ptr %503, align 8, !tbaa !45
  %505 = call i32 %504(ptr noundef nonnull %1, ptr noundef nonnull @.str.14) #6
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %513, label %507

507:                                              ; preds = %502, %499
  %508 = phi i32 [ %498, %502 ], [ -15, %499 ]
  %509 = load ptr, ptr %1, align 8, !tbaa !39
  %510 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %509, i64 0, i32 15
  %511 = load ptr, ptr %510, align 8, !tbaa !64
  %512 = call i32 %511(ptr noundef nonnull %1, ptr noundef nonnull @.str.14, i32 noundef %508) #6
  br label %513

513:                                              ; preds = %489, %499, %502, %507
  %514 = phi i32 [ 1, %502 ], [ %508, %507 ], [ %498, %489 ], [ 0, %499 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #6
  %515 = icmp slt i32 %514, 0
  %516 = select i1 %515, i32 %514, i32 %492
  %517 = icmp sgt i32 %34, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #6
  %518 = load ptr, ptr %1, align 8, !tbaa !39
  %519 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %518, i64 0, i32 3
  %520 = load ptr, ptr %519, align 8, !tbaa !49
  %521 = call i32 %520(ptr noundef nonnull %1, ptr noundef nonnull @.str.16, ptr noundef nonnull %11) #6
  switch i32 %521, label %526 [
    i32 0, label %522
    i32 1, label %537
  ]

522:                                              ; preds = %513
  %523 = load i64, ptr %11, align 8
  %524 = icmp eq i64 %523, %44
  %525 = select i1 %517, i1 %524, i1 false
  br i1 %525, label %537, label %531

526:                                              ; preds = %513
  %527 = load ptr, ptr %1, align 8, !tbaa !39
  %528 = load ptr, ptr %527, align 8, !tbaa !45
  %529 = call i32 %528(ptr noundef nonnull %1, ptr noundef nonnull @.str.16) #6
  %530 = icmp eq i32 %529, 0
  br i1 %530, label %537, label %531

531:                                              ; preds = %526, %522
  %532 = phi i32 [ %521, %526 ], [ -15, %522 ]
  %533 = load ptr, ptr %1, align 8, !tbaa !39
  %534 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %533, i64 0, i32 15
  %535 = load ptr, ptr %534, align 8, !tbaa !64
  %536 = call i32 %535(ptr noundef nonnull %1, ptr noundef nonnull @.str.16, i32 noundef %532) #6
  br label %537

537:                                              ; preds = %513, %522, %526, %531
  %538 = phi i32 [ 1, %526 ], [ %532, %531 ], [ %521, %513 ], [ 0, %522 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #6
  %539 = icmp slt i32 %538, 0
  %540 = select i1 %539, i32 %538, i32 %516
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #6
  %541 = load ptr, ptr %1, align 8, !tbaa !39
  %542 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %541, i64 0, i32 3
  %543 = load ptr, ptr %542, align 8, !tbaa !49
  %544 = call i32 %543(ptr noundef nonnull %1, ptr noundef nonnull @.str.17, ptr noundef nonnull %10) #6
  switch i32 %544, label %549 [
    i32 0, label %545
    i32 1, label %560
  ]

545:                                              ; preds = %537
  %546 = load i64, ptr %10, align 8
  %547 = icmp eq i64 %546, %44
  %548 = select i1 %517, i1 %547, i1 false
  br i1 %548, label %560, label %554

549:                                              ; preds = %537
  %550 = load ptr, ptr %1, align 8, !tbaa !39
  %551 = load ptr, ptr %550, align 8, !tbaa !45
  %552 = call i32 %551(ptr noundef nonnull %1, ptr noundef nonnull @.str.17) #6
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %560, label %554

554:                                              ; preds = %549, %545
  %555 = phi i32 [ %544, %549 ], [ -15, %545 ]
  %556 = load ptr, ptr %1, align 8, !tbaa !39
  %557 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %556, i64 0, i32 15
  %558 = load ptr, ptr %557, align 8, !tbaa !64
  %559 = call i32 %558(ptr noundef nonnull %1, ptr noundef nonnull @.str.17, i32 noundef %555) #6
  br label %560

560:                                              ; preds = %537, %545, %549, %554
  %561 = phi i32 [ 1, %549 ], [ %555, %554 ], [ %544, %537 ], [ 0, %545 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #6
  %562 = icmp slt i32 %561, 0
  %563 = select i1 %562, i32 %561, i32 %540
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #6
  %564 = load ptr, ptr %1, align 8, !tbaa !39
  %565 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %564, i64 0, i32 3
  %566 = load ptr, ptr %565, align 8, !tbaa !49
  %567 = call i32 %566(ptr noundef nonnull %1, ptr noundef nonnull @.str.18, ptr noundef nonnull %9) #6
  switch i32 %567, label %572 [
    i32 0, label %568
    i32 1, label %583
  ]

568:                                              ; preds = %560
  %569 = load i64, ptr %9, align 8
  %570 = icmp eq i64 %569, %44
  %571 = select i1 %517, i1 %570, i1 false
  br i1 %571, label %583, label %577

572:                                              ; preds = %560
  %573 = load ptr, ptr %1, align 8, !tbaa !39
  %574 = load ptr, ptr %573, align 8, !tbaa !45
  %575 = call i32 %574(ptr noundef nonnull %1, ptr noundef nonnull @.str.18) #6
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %583, label %577

577:                                              ; preds = %572, %568
  %578 = phi i32 [ %567, %572 ], [ -15, %568 ]
  %579 = load ptr, ptr %1, align 8, !tbaa !39
  %580 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %579, i64 0, i32 15
  %581 = load ptr, ptr %580, align 8, !tbaa !64
  %582 = call i32 %581(ptr noundef nonnull %1, ptr noundef nonnull @.str.18, i32 noundef %578) #6
  br label %583

583:                                              ; preds = %560, %568, %572, %577
  %584 = phi i32 [ 1, %572 ], [ %578, %577 ], [ %567, %560 ], [ 0, %568 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #6
  %585 = icmp slt i32 %584, 0
  %586 = select i1 %585, i32 %584, i32 %563
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #6
  %587 = load ptr, ptr %1, align 8, !tbaa !39
  %588 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %587, i64 0, i32 3
  %589 = load ptr, ptr %588, align 8, !tbaa !49
  %590 = call i32 %589(ptr noundef nonnull %1, ptr noundef nonnull @.str.19, ptr noundef nonnull %8) #6
  switch i32 %590, label %595 [
    i32 0, label %591
    i32 1, label %606
  ]

591:                                              ; preds = %583
  %592 = load i64, ptr %8, align 8
  %593 = icmp eq i64 %592, %46
  %594 = select i1 %517, i1 %593, i1 false
  br i1 %594, label %606, label %600

595:                                              ; preds = %583
  %596 = load ptr, ptr %1, align 8, !tbaa !39
  %597 = load ptr, ptr %596, align 8, !tbaa !45
  %598 = call i32 %597(ptr noundef nonnull %1, ptr noundef nonnull @.str.19) #6
  %599 = icmp eq i32 %598, 0
  br i1 %599, label %606, label %600

600:                                              ; preds = %595, %591
  %601 = phi i32 [ %590, %595 ], [ -15, %591 ]
  %602 = load ptr, ptr %1, align 8, !tbaa !39
  %603 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %602, i64 0, i32 15
  %604 = load ptr, ptr %603, align 8, !tbaa !64
  %605 = call i32 %604(ptr noundef nonnull %1, ptr noundef nonnull @.str.19, i32 noundef %601) #6
  br label %606

606:                                              ; preds = %583, %591, %595, %600
  %607 = phi i32 [ 1, %595 ], [ %601, %600 ], [ %590, %583 ], [ 0, %591 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #6
  %608 = icmp slt i32 %607, 0
  %609 = select i1 %608, i32 %607, i32 %586
  %610 = load ptr, ptr %1, align 8, !tbaa !39
  %611 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %610, i64 0, i32 5
  %612 = load ptr, ptr %611, align 8, !tbaa !47
  %613 = call i32 %612(ptr noundef nonnull %1, ptr noundef nonnull @.str.20, ptr noundef nonnull %27) #6
  %614 = icmp eq i32 %613, 1
  br i1 %614, label %708, label %615

615:                                              ; preds = %606
  call void @llvm.lifetime.start.p0(i64 768, ptr nonnull %30) #6
  %616 = load i32, ptr %35, align 4, !tbaa !20
  %617 = load i32, ptr %33, align 8, !tbaa !18
  %618 = icmp slt i32 %616, 9
  %619 = icmp slt i32 %617, 4
  %620 = select i1 %618, i1 %619, i1 false
  br i1 %620, label %621, label %655

621:                                              ; preds = %615
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %7) #6
  %622 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 6
  %623 = load ptr, ptr %622, align 8, !tbaa !54
  %624 = icmp eq ptr %623, null
  br i1 %624, label %625, label %626

625:                                              ; preds = %621
  store ptr @gx_default_w_b_map_color_rgb, ptr %622, align 8, !tbaa !54
  br label %626

626:                                              ; preds = %625, %621
  %627 = zext nneg i32 %616 to i64
  %628 = icmp slt i32 %617, 1
  %629 = zext i32 %617 to i64
  br label %634

630:                                              ; preds = %651
  %631 = add i64 %635, 1
  %632 = lshr i64 %631, %627
  %633 = icmp eq i64 %632, 0
  br i1 %633, label %634, label %653, !llvm.loop !55

634:                                              ; preds = %630, %626
  %635 = phi i64 [ 0, %626 ], [ %631, %630 ]
  %636 = phi ptr [ %30, %626 ], [ %652, %630 ]
  %637 = load ptr, ptr %622, align 8, !tbaa !54
  %638 = call i32 %637(ptr noundef %0, i64 noundef %635, ptr noundef nonnull %7) #6
  %639 = icmp slt i32 %638, 0
  %640 = select i1 %639, i1 true, i1 %628
  br i1 %640, label %651, label %641

641:                                              ; preds = %634, %641
  %642 = phi i64 [ %649, %641 ], [ 0, %634 ]
  %643 = phi ptr [ %648, %641 ], [ %636, %634 ]
  %644 = getelementptr inbounds [3 x i16], ptr %7, i64 0, i64 %642
  %645 = load i16, ptr %644, align 2, !tbaa !57
  %646 = lshr i16 %645, 8
  %647 = trunc i16 %646 to i8
  %648 = getelementptr inbounds i8, ptr %643, i64 1
  store i8 %647, ptr %643, align 1, !tbaa !28
  %649 = add nuw nsw i64 %642, 1
  %650 = icmp eq i64 %649, %629
  br i1 %650, label %651, label %641, !llvm.loop !58

651:                                              ; preds = %641, %634
  %652 = phi ptr [ %636, %634 ], [ %648, %641 ]
  br i1 %639, label %653, label %630

653:                                              ; preds = %651, %630
  %654 = phi i32 [ 0, %651 ], [ 1, %630 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %7) #6
  br label %655

655:                                              ; preds = %615, %653
  %656 = phi i32 [ %654, %653 ], [ 0, %615 ]
  %657 = icmp eq i32 %656, 0
  br i1 %657, label %686, label %658

658:                                              ; preds = %655
  %659 = shl i32 %34, %36
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6
  %660 = load ptr, ptr %1, align 8, !tbaa !39
  %661 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %660, i64 0, i32 5
  %662 = load ptr, ptr %661, align 8, !tbaa !47
  %663 = call i32 %662(ptr noundef nonnull %1, ptr noundef nonnull @.str.20, ptr noundef nonnull %6) #6
  switch i32 %663, label %673 [
    i32 0, label %664
    i32 1, label %684
  ]

664:                                              ; preds = %658
  %665 = getelementptr inbounds %struct.gs_param_string_s, ptr %6, i64 0, i32 1
  %666 = load i32, ptr %665, align 8
  %667 = icmp eq i32 %666, %659
  br i1 %667, label %668, label %678

668:                                              ; preds = %664
  %669 = load ptr, ptr %6, align 8, !tbaa !23
  %670 = zext i32 %659 to i64
  %671 = call i32 @bcmp(ptr nonnull %30, ptr %669, i64 %670)
  %672 = icmp eq i32 %671, 0
  br i1 %672, label %684, label %678

673:                                              ; preds = %658
  %674 = load ptr, ptr %1, align 8, !tbaa !39
  %675 = load ptr, ptr %674, align 8, !tbaa !45
  %676 = call i32 %675(ptr noundef nonnull %1, ptr noundef nonnull @.str.20) #6
  %677 = icmp eq i32 %676, 0
  br i1 %677, label %684, label %678

678:                                              ; preds = %673, %668, %664
  %679 = phi i32 [ %663, %673 ], [ -15, %668 ], [ -15, %664 ]
  %680 = load ptr, ptr %1, align 8, !tbaa !39
  %681 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %680, i64 0, i32 15
  %682 = load ptr, ptr %681, align 8, !tbaa !64
  %683 = call i32 %682(ptr noundef nonnull %1, ptr noundef nonnull @.str.20, i32 noundef %679) #6
  br label %684

684:                                              ; preds = %658, %668, %673, %678
  %685 = phi i32 [ 1, %673 ], [ %679, %678 ], [ %663, %658 ], [ 0, %668 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6
  br label %704

686:                                              ; preds = %655
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  %687 = load ptr, ptr %1, align 8, !tbaa !39
  %688 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %687, i64 0, i32 5
  %689 = load ptr, ptr %688, align 8, !tbaa !47
  %690 = call i32 %689(ptr noundef nonnull %1, ptr noundef nonnull @.str.20, ptr noundef nonnull %5) #6
  switch i32 %690, label %691 [
    i32 0, label %696
    i32 1, label %702
  ]

691:                                              ; preds = %686
  %692 = load ptr, ptr %1, align 8, !tbaa !39
  %693 = load ptr, ptr %692, align 8, !tbaa !45
  %694 = call i32 %693(ptr noundef nonnull %1, ptr noundef nonnull @.str.20) #6
  %695 = icmp eq i32 %694, 0
  br i1 %695, label %702, label %696

696:                                              ; preds = %686, %691
  %697 = phi i32 [ %690, %691 ], [ -15, %686 ]
  %698 = load ptr, ptr %1, align 8, !tbaa !39
  %699 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %698, i64 0, i32 15
  %700 = load ptr, ptr %699, align 8, !tbaa !64
  %701 = call i32 %700(ptr noundef nonnull %1, ptr noundef nonnull @.str.20, i32 noundef %697) #6
  br label %702

702:                                              ; preds = %686, %691, %696
  %703 = phi i32 [ 1, %691 ], [ %697, %696 ], [ %690, %686 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  br label %704

704:                                              ; preds = %702, %684
  %705 = phi i32 [ %685, %684 ], [ %703, %702 ]
  %706 = icmp slt i32 %705, 0
  %707 = select i1 %706, i32 %705, i32 %609
  call void @llvm.lifetime.end.p0(i64 768, ptr nonnull %30) #6
  br label %708

708:                                              ; preds = %704, %606
  %709 = phi i32 [ %707, %704 ], [ %609, %606 ]
  %710 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 20
  %711 = load ptr, ptr %710, align 8, !tbaa !17
  %712 = call i32 %711(ptr noundef %0, i32 noundef 0) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %713 = load ptr, ptr %1, align 8, !tbaa !39
  %714 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %713, i64 0, i32 3
  %715 = load ptr, ptr %714, align 8, !tbaa !49
  %716 = call i32 %715(ptr noundef nonnull %1, ptr noundef nonnull @.str.21, ptr noundef nonnull %4) #6
  switch i32 %716, label %721 [
    i32 0, label %717
    i32 1, label %732
  ]

717:                                              ; preds = %708
  %718 = sext i32 %712 to i64
  %719 = load i64, ptr %4, align 8
  %720 = icmp eq i64 %719, %718
  br i1 %720, label %732, label %726

721:                                              ; preds = %708
  %722 = load ptr, ptr %1, align 8, !tbaa !39
  %723 = load ptr, ptr %722, align 8, !tbaa !45
  %724 = call i32 %723(ptr noundef nonnull %1, ptr noundef nonnull @.str.21) #6
  %725 = icmp eq i32 %724, 0
  br i1 %725, label %732, label %726

726:                                              ; preds = %721, %717
  %727 = phi i32 [ %716, %721 ], [ -15, %717 ]
  %728 = load ptr, ptr %1, align 8, !tbaa !39
  %729 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %728, i64 0, i32 15
  %730 = load ptr, ptr %729, align 8, !tbaa !64
  %731 = call i32 %730(ptr noundef nonnull %1, ptr noundef nonnull @.str.21, i32 noundef %727) #6
  br label %732

732:                                              ; preds = %708, %717, %721, %726
  %733 = phi i32 [ 1, %721 ], [ %727, %726 ], [ %716, %708 ], [ 0, %717 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %734 = icmp slt i32 %733, 0
  %735 = select i1 %734, i32 %733, i32 %709
  %736 = load ptr, ptr %710, align 8, !tbaa !17
  %737 = call i32 %736(ptr noundef %0, i32 noundef 1) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %738 = load ptr, ptr %1, align 8, !tbaa !39
  %739 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %738, i64 0, i32 3
  %740 = load ptr, ptr %739, align 8, !tbaa !49
  %741 = call i32 %740(ptr noundef nonnull %1, ptr noundef nonnull @.str.22, ptr noundef nonnull %3) #6
  switch i32 %741, label %746 [
    i32 0, label %742
    i32 1, label %757
  ]

742:                                              ; preds = %732
  %743 = sext i32 %737 to i64
  %744 = load i64, ptr %3, align 8
  %745 = icmp eq i64 %744, %743
  br i1 %745, label %757, label %751

746:                                              ; preds = %732
  %747 = load ptr, ptr %1, align 8, !tbaa !39
  %748 = load ptr, ptr %747, align 8, !tbaa !45
  %749 = call i32 %748(ptr noundef nonnull %1, ptr noundef nonnull @.str.22) #6
  %750 = icmp eq i32 %749, 0
  br i1 %750, label %757, label %751

751:                                              ; preds = %746, %742
  %752 = phi i32 [ %741, %746 ], [ -15, %742 ]
  %753 = load ptr, ptr %1, align 8, !tbaa !39
  %754 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %753, i64 0, i32 15
  %755 = load ptr, ptr %754, align 8, !tbaa !64
  %756 = call i32 %755(ptr noundef nonnull %1, ptr noundef nonnull @.str.22, i32 noundef %752) #6
  br label %757

757:                                              ; preds = %732, %742, %746, %751
  %758 = phi i32 [ 1, %746 ], [ %752, %751 ], [ %741, %732 ], [ 0, %742 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %759 = icmp slt i32 %758, 0
  %760 = select i1 %759, i32 %758, i32 %735
  %761 = load ptr, ptr %1, align 8, !tbaa !39
  %762 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %761, i64 0, i32 16
  %763 = load ptr, ptr %762, align 8, !tbaa !66
  %764 = call i32 %763(ptr noundef nonnull %1) #6
  %765 = icmp slt i32 %760, 0
  br i1 %765, label %890, label %766

766:                                              ; preds = %757
  %767 = icmp slt i32 %764, 0
  br i1 %767, label %890, label %768

768:                                              ; preds = %766
  %769 = load ptr, ptr %19, align 8, !tbaa !29
  %770 = icmp eq ptr %769, null
  br i1 %770, label %794, label %771

771:                                              ; preds = %768
  %772 = load float, ptr %109, align 4, !tbaa !62
  %773 = load float, ptr %769, align 4, !tbaa !62
  %774 = fcmp une float %772, %773
  br i1 %774, label %781, label %775

775:                                              ; preds = %771
  %776 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 13, i64 1
  %777 = load float, ptr %776, align 4, !tbaa !62
  %778 = getelementptr inbounds float, ptr %769, i64 1
  %779 = load float, ptr %778, align 4, !tbaa !62
  %780 = fcmp une float %777, %779
  br i1 %780, label %781, label %794

781:                                              ; preds = %775, %771
  %782 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 5
  %783 = load i32, ptr %782, align 8, !tbaa !59
  %784 = icmp eq i32 %783, 0
  br i1 %784, label %787, label %785

785:                                              ; preds = %781
  %786 = call i32 @gs_closedevice(ptr noundef %0) #6
  br label %787

787:                                              ; preds = %785, %781
  %788 = load ptr, ptr %19, align 8, !tbaa !29
  %789 = load float, ptr %788, align 4, !tbaa !62
  %790 = fpext float %789 to double
  %791 = getelementptr inbounds float, ptr %788, i64 1
  %792 = load float, ptr %791, align 4, !tbaa !62
  %793 = fpext float %792 to double
  call void @gx_device_set_resolution(ptr noundef %0, double noundef %790, double noundef %793) #6
  br label %794

794:                                              ; preds = %787, %775, %768
  %795 = load ptr, ptr %20, align 8, !tbaa !35
  %796 = icmp eq ptr %795, null
  br i1 %796, label %819, label %797

797:                                              ; preds = %794
  %798 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  %799 = load i32, ptr %798, align 8, !tbaa !33
  %800 = load i32, ptr %795, align 4, !tbaa !19
  %801 = icmp eq i32 %799, %800
  br i1 %801, label %802, label %808

802:                                              ; preds = %797
  %803 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %804 = load i32, ptr %803, align 4, !tbaa !34
  %805 = getelementptr inbounds i32, ptr %795, i64 1
  %806 = load i32, ptr %805, align 4, !tbaa !19
  %807 = icmp eq i32 %804, %806
  br i1 %807, label %819, label %808

808:                                              ; preds = %802, %797
  %809 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 5
  %810 = load i32, ptr %809, align 8, !tbaa !59
  %811 = icmp eq i32 %810, 0
  br i1 %811, label %814, label %812

812:                                              ; preds = %808
  %813 = call i32 @gs_closedevice(ptr noundef %0) #6
  br label %814

814:                                              ; preds = %812, %808
  %815 = load ptr, ptr %20, align 8, !tbaa !35
  %816 = load i32, ptr %815, align 4, !tbaa !19
  %817 = getelementptr inbounds i32, ptr %815, i64 1
  %818 = load i32, ptr %817, align 4, !tbaa !19
  call void @gx_device_set_width_height(ptr noundef %0, i32 noundef %816, i32 noundef %818) #6
  br label %819

819:                                              ; preds = %814, %802, %794
  %820 = load ptr, ptr %21, align 8, !tbaa !29
  %821 = icmp eq ptr %820, null
  br i1 %821, label %846, label %822

822:                                              ; preds = %819
  %823 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 10
  %824 = load float, ptr %823, align 8, !tbaa !62
  %825 = load float, ptr %820, align 4, !tbaa !62
  %826 = fcmp une float %824, %825
  br i1 %826, label %833, label %827

827:                                              ; preds = %822
  %828 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 10, i64 1
  %829 = load float, ptr %828, align 4, !tbaa !62
  %830 = getelementptr inbounds float, ptr %820, i64 1
  %831 = load float, ptr %830, align 4, !tbaa !62
  %832 = fcmp une float %829, %831
  br i1 %832, label %833, label %846

833:                                              ; preds = %827, %822
  %834 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 5
  %835 = load i32, ptr %834, align 8, !tbaa !59
  %836 = icmp eq i32 %835, 0
  br i1 %836, label %839, label %837

837:                                              ; preds = %833
  %838 = call i32 @gs_closedevice(ptr noundef %0) #6
  br label %839

839:                                              ; preds = %837, %833
  %840 = load ptr, ptr %21, align 8, !tbaa !29
  %841 = load float, ptr %840, align 4, !tbaa !62
  %842 = fpext float %841 to double
  %843 = getelementptr inbounds float, ptr %840, i64 1
  %844 = load float, ptr %843, align 4, !tbaa !62
  %845 = fpext float %844 to double
  call void @gx_device_set_media_size(ptr noundef %0, double noundef %842, double noundef %845) #6
  br label %846

846:                                              ; preds = %839, %827, %819
  %847 = load ptr, ptr %22, align 8, !tbaa !29
  %848 = icmp eq ptr %847, null
  br i1 %848, label %855, label %849

849:                                              ; preds = %846
  %850 = load float, ptr %847, align 4, !tbaa !62
  %851 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 15
  store float %850, ptr %851, align 4, !tbaa !62
  %852 = getelementptr inbounds float, ptr %847, i64 1
  %853 = load float, ptr %852, align 4, !tbaa !62
  %854 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 15, i64 1
  store float %853, ptr %854, align 4, !tbaa !62
  br label %855

855:                                              ; preds = %849, %846
  %856 = load ptr, ptr %23, align 8, !tbaa !29
  %857 = icmp eq ptr %856, null
  br i1 %857, label %870, label %858

858:                                              ; preds = %855
  %859 = load float, ptr %856, align 4, !tbaa !62
  %860 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 16
  store float %859, ptr %860, align 4, !tbaa !62
  %861 = getelementptr inbounds float, ptr %856, i64 1
  %862 = load float, ptr %861, align 4, !tbaa !62
  %863 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 16, i64 1
  store float %862, ptr %863, align 4, !tbaa !62
  %864 = getelementptr inbounds float, ptr %856, i64 2
  %865 = load float, ptr %864, align 4, !tbaa !62
  %866 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 16, i64 2
  store float %865, ptr %866, align 4, !tbaa !62
  %867 = getelementptr inbounds float, ptr %856, i64 3
  %868 = load float, ptr %867, align 4, !tbaa !62
  %869 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 16, i64 3
  store float %868, ptr %869, align 4, !tbaa !62
  br label %870

870:                                              ; preds = %858, %855
  %871 = load i32, ptr %25, align 4, !tbaa !19
  store i32 %871, ptr %31, align 8, !tbaa !61
  %872 = load ptr, ptr %26, align 8, !tbaa !29
  %873 = icmp eq ptr %872, null
  br i1 %873, label %886, label %874

874:                                              ; preds = %870
  %875 = load float, ptr %872, align 4, !tbaa !62
  %876 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 11
  store float %875, ptr %876, align 8, !tbaa !62
  %877 = getelementptr inbounds float, ptr %872, i64 1
  %878 = load float, ptr %877, align 4, !tbaa !62
  %879 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 11, i64 1
  store float %878, ptr %879, align 4, !tbaa !62
  %880 = getelementptr inbounds float, ptr %872, i64 2
  %881 = load float, ptr %880, align 4, !tbaa !62
  %882 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 11, i64 2
  store float %881, ptr %882, align 8, !tbaa !62
  %883 = getelementptr inbounds float, ptr %872, i64 3
  %884 = load float, ptr %883, align 4, !tbaa !62
  %885 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 11, i64 3
  store float %884, ptr %885, align 4, !tbaa !62
  br label %887

886:                                              ; preds = %870
  br i1 %326, label %890, label %887

887:                                              ; preds = %886, %874
  %888 = phi i32 [ 1, %874 ], [ 0, %886 ]
  %889 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 12
  store i32 %888, ptr %889, align 8, !tbaa !44
  br label %890

890:                                              ; preds = %887, %886, %766, %757
  %891 = phi i32 [ %760, %757 ], [ %764, %766 ], [ 0, %886 ], [ 0, %887 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %27) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %26) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %25) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %24) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %23) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %22) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %21) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %20) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %19) #6
  ret i32 %891
}

declare i32 @gs_closedevice(ptr noundef) local_unnamed_addr #1

declare void @gx_device_set_resolution(ptr noundef, double noundef, double noundef) local_unnamed_addr #1

declare void @gx_device_set_width_height(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @gx_device_set_media_size(ptr noundef, double noundef, double noundef) local_unnamed_addr #1

declare i32 @gx_default_w_b_map_color_rgb(ptr noundef, i64 noundef, ptr noundef) #1

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind willreturn memory(argmem: read) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 296}
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
!16 = !{!6, !10, i64 344}
!17 = !{!6, !10, i64 352}
!18 = !{!6, !7, i64 48}
!19 = !{!7, !7, i64 0}
!20 = !{!6, !7, i64 52}
!21 = !{!6, !12, i64 56}
!22 = !{!6, !10, i64 16}
!23 = !{!24, !10, i64 0}
!24 = !{!"gs_param_string_s", !10, i64 0, !7, i64 8, !7, i64 12}
!25 = !{!24, !7, i64 8}
!26 = !{!24, !7, i64 12}
!27 = !{!10, !10, i64 0}
!28 = !{!8, !8, i64 0}
!29 = !{!30, !10, i64 0}
!30 = !{!"gs_param_float_array_s", !10, i64 0, !7, i64 8, !7, i64 12}
!31 = !{!30, !7, i64 8}
!32 = !{!30, !7, i64 12}
!33 = !{!6, !7, i64 64}
!34 = !{!6, !7, i64 68}
!35 = !{!36, !10, i64 0}
!36 = !{!"gs_param_int_array_s", !10, i64 0, !7, i64 8, !7, i64 12}
!37 = !{!36, !7, i64 8}
!38 = !{!36, !7, i64 12}
!39 = !{!40, !10, i64 0}
!40 = !{!"gs_param_list_s", !10, i64 0}
!41 = !{!42, !10, i64 48}
!42 = !{!"gs_param_list_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128}
!43 = !{!42, !10, i64 64}
!44 = !{!6, !7, i64 96}
!45 = !{!42, !10, i64 0}
!46 = !{!42, !10, i64 56}
!47 = !{!42, !10, i64 40}
!48 = !{!42, !10, i64 16}
!49 = !{!42, !10, i64 24}
!50 = !{!42, !10, i64 8}
!51 = !{!6, !12, i64 58}
!52 = !{!13, !13, i64 0}
!53 = !{!42, !10, i64 104}
!54 = !{!6, !10, i64 240}
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = !{!12, !12, i64 0}
!58 = distinct !{!58, !56}
!59 = !{!6, !7, i64 40}
!60 = !{!6, !10, i64 304}
!61 = !{!6, !7, i64 160}
!62 = !{!63, !63, i64 0}
!63 = !{!"float", !8, i64 0}
!64 = !{!42, !10, i64 120}
!65 = !{!6, !13, i64 144}
!66 = !{!42, !10, i64 128}
