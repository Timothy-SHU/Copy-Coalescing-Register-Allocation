; ModuleID = 'siscale.c'
source_filename = "siscale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_template_s = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.stream_IScale_state_s = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.CLIST, i32, [8 x %struct.CONTRIB] }
%struct.CLIST = type { i32, i32, i32 }
%struct.CONTRIB = type { float }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_cursor_write_s = type { ptr, ptr, ptr }
%struct.stream_cursor_read_s = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [30 x i8] c"ImageScaleEncode/Decode state\00", align 1
@st_IScale_state = dso_local constant %struct.gs_memory_struct_type_s { i32 200, ptr @.str, ptr null, ptr null, ptr @iscale_state_enum_ptrs, ptr @iscale_state_reloc_ptrs, ptr null }, align 8
@s_IScale_template = dso_local local_unnamed_addr constant %struct.stream_template_s { ptr @st_IScale_state, ptr @s_IScale_init, ptr @s_IScale_process, i32 1, i32 1, ptr @s_IScale_release, ptr null, ptr null }, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"image_scale tmp\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"image_scale contrib\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"image_scale contrib[*]\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"image_scale dst\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"image_scale src\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @iscale_state_enum_ptrs(ptr nocapture noundef readonly %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  switch i32 %2, label %18 [
    i32 0, label %5
    i32 1, label %7
    i32 2, label %9
    i32 3, label %11
    i32 4, label %13
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 17
  br label %15

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 16
  br label %15

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 18
  br label %15

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 19
  br label %15

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 20
  br label %15

15:                                               ; preds = %13, %11, %9, %7, %5
  %16 = phi ptr [ %6, %5 ], [ %8, %7 ], [ %10, %9 ], [ %12, %11 ], [ %14, %13 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  store ptr %17, ptr %3, align 8, !tbaa !5
  br label %18

18:                                               ; preds = %15, %4
  %19 = phi ptr [ null, %4 ], [ @ptr_struct_procs, %15 ]
  ret ptr %19
}

; Function Attrs: nounwind uwtable
define internal void @iscale_state_reloc_ptrs(ptr nocapture noundef %0, i32 %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  %6 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %5, ptr noundef %2) #10
  store ptr %6, ptr %4, align 8, !tbaa !9
  %7 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 16
  %8 = load ptr, ptr %7, align 8, !tbaa !14
  %9 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %8, ptr noundef %2) #10
  store ptr %9, ptr %7, align 8, !tbaa !14
  %10 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 18
  %11 = load ptr, ptr %10, align 8, !tbaa !15
  %12 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %11, ptr noundef %2) #10
  store ptr %12, ptr %10, align 8, !tbaa !15
  %13 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !16
  %15 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %14, ptr noundef %2) #10
  store ptr %15, ptr %13, align 8, !tbaa !16
  %16 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 20
  %17 = load ptr, ptr %16, align 8, !tbaa !17
  %18 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %17, ptr noundef %2) #10
  store ptr %18, ptr %16, align 8, !tbaa !17
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @s_IScale_init(ptr nocapture noundef %0) #1 {
  %2 = alloca [8 x %struct.CONTRIB], align 16
  %3 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !18
  %5 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !19
  %7 = sdiv i32 %6, 8
  %8 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 12
  store i32 %7, ptr %8, align 4, !tbaa !20
  %9 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 8
  %10 = load i32, ptr %9, align 4, !tbaa !21
  %11 = sdiv i32 %10, 8
  %12 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 13
  store i32 %11, ptr %12, align 8, !tbaa !22
  %13 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 10
  %14 = load i32, ptr %13, align 4, !tbaa !23
  %15 = sitofp i32 %14 to double
  %16 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 6
  %17 = load i32, ptr %16, align 4, !tbaa !24
  %18 = sitofp i32 %17 to double
  %19 = fdiv double %15, %18
  %20 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 14
  store double %19, ptr %20, align 8, !tbaa !25
  %21 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 11
  %22 = load i32, ptr %21, align 8, !tbaa !26
  %23 = sitofp i32 %22 to double
  %24 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 7
  %25 = load i32, ptr %24, align 8, !tbaa !27
  %26 = sitofp i32 %25 to double
  %27 = fdiv double %23, %26
  %28 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 15
  store double %27, ptr %28, align 8, !tbaa !28
  %29 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 21
  store i32 0, ptr %29, align 8, !tbaa !29
  %30 = mul nsw i32 %17, %7
  %31 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 3
  %32 = load i32, ptr %31, align 8, !tbaa !30
  %33 = mul nsw i32 %30, %32
  %34 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 23
  store i32 %33, ptr %34, align 8, !tbaa !31
  %35 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 22
  store i32 0, ptr %35, align 4, !tbaa !32
  %36 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 24
  store i32 0, ptr %36, align 4, !tbaa !33
  %37 = mul i32 %32, %14
  %38 = mul i32 %37, %11
  %39 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 26
  store i32 %38, ptr %39, align 4, !tbaa !34
  %40 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 25
  store i32 0, ptr %40, align 8, !tbaa !35
  %41 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %4, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !36
  %43 = tail call i32 @llvm.smin.i32(i32 %25, i32 8)
  %44 = mul nsw i32 %32, %14
  %45 = tail call ptr %42(ptr noundef %4, i32 noundef %43, i32 noundef %44, ptr noundef nonnull @.str.1) #10
  %46 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 18
  store ptr %45, ptr %46, align 8, !tbaa !15
  %47 = load ptr, ptr %41, align 8, !tbaa !36
  %48 = load i32, ptr %13, align 4, !tbaa !23
  %49 = load i32, ptr %21, align 8, !tbaa !26
  %50 = tail call i32 @llvm.smax.i32(i32 %48, i32 %49)
  %51 = tail call ptr %47(ptr noundef %4, i32 noundef %50, i32 noundef 12, ptr noundef nonnull @.str.2) #10
  %52 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 19
  store ptr %51, ptr %52, align 8, !tbaa !16
  %53 = load ptr, ptr %41, align 8, !tbaa !36
  %54 = load double, ptr %20, align 8, !tbaa !25
  %55 = fcmp ult double %54, 1.000000e+00
  %56 = fcmp ogt double %54, 0x3FE24FD6FB3D2962
  %57 = select i1 %56, double %54, double 0x3FE24FD6FB3D2962
  %58 = fdiv double 2.000000e+00, %57
  %59 = select i1 %55, double %58, double 2.000000e+00
  %60 = tail call double @llvm.fmuladd.f64(double %59, double 2.000000e+00, double 1.000000e+00)
  %61 = fptosi double %60 to i32
  %62 = load i32, ptr %13, align 4, !tbaa !23
  %63 = mul nsw i32 %62, %61
  %64 = tail call ptr %53(ptr noundef %4, i32 noundef %63, i32 noundef 4, ptr noundef nonnull @.str.3) #10
  %65 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 20
  store ptr %64, ptr %65, align 8, !tbaa !17
  %66 = load ptr, ptr %41, align 8, !tbaa !36
  %67 = load i32, ptr %13, align 4, !tbaa !23
  %68 = load i32, ptr %31, align 8, !tbaa !30
  %69 = mul nsw i32 %68, %67
  %70 = load i32, ptr %12, align 8, !tbaa !22
  %71 = tail call ptr %66(ptr noundef %4, i32 noundef %69, i32 noundef %70, ptr noundef nonnull @.str.4) #10
  %72 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 17
  store ptr %71, ptr %72, align 8, !tbaa !9
  %73 = load ptr, ptr %41, align 8, !tbaa !36
  %74 = load i32, ptr %16, align 4, !tbaa !24
  %75 = load i32, ptr %31, align 8, !tbaa !30
  %76 = mul nsw i32 %75, %74
  %77 = load i32, ptr %8, align 4, !tbaa !20
  %78 = tail call ptr %73(ptr noundef %4, i32 noundef %76, i32 noundef %77, ptr noundef nonnull @.str.5) #10
  %79 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 16
  store ptr %78, ptr %79, align 8, !tbaa !14
  %80 = load ptr, ptr %46, align 8, !tbaa !15
  %81 = icmp eq ptr %80, null
  br i1 %81, label %93, label %82

82:                                               ; preds = %1
  %83 = load ptr, ptr %52, align 8, !tbaa !16
  %84 = icmp eq ptr %83, null
  br i1 %84, label %93, label %85

85:                                               ; preds = %82
  %86 = load ptr, ptr %65, align 8, !tbaa !17
  %87 = icmp eq ptr %86, null
  br i1 %87, label %93, label %88

88:                                               ; preds = %85
  %89 = load ptr, ptr %72, align 8, !tbaa !9
  %90 = icmp eq ptr %89, null
  %91 = icmp eq ptr %78, null
  %92 = select i1 %90, i1 true, i1 %91
  br i1 %92, label %93, label %105

93:                                               ; preds = %88, %85, %82, %1
  %94 = load ptr, ptr %3, align 8, !tbaa !18
  %95 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %94, i64 0, i32 11
  %96 = load ptr, ptr %95, align 8, !tbaa !39
  tail call void %96(ptr noundef %94, ptr noundef %78, ptr noundef nonnull @.str.5) #10
  store ptr null, ptr %79, align 8, !tbaa !14
  %97 = load ptr, ptr %95, align 8, !tbaa !39
  %98 = load ptr, ptr %72, align 8, !tbaa !9
  tail call void %97(ptr noundef %94, ptr noundef %98, ptr noundef nonnull @.str.4) #10
  store ptr null, ptr %72, align 8, !tbaa !9
  %99 = load ptr, ptr %95, align 8, !tbaa !39
  %100 = load ptr, ptr %65, align 8, !tbaa !17
  tail call void %99(ptr noundef %94, ptr noundef %100, ptr noundef nonnull @.str.3) #10
  store ptr null, ptr %65, align 8, !tbaa !17
  %101 = load ptr, ptr %95, align 8, !tbaa !39
  %102 = load ptr, ptr %52, align 8, !tbaa !16
  tail call void %101(ptr noundef %94, ptr noundef %102, ptr noundef nonnull @.str.2) #10
  store ptr null, ptr %52, align 8, !tbaa !16
  %103 = load ptr, ptr %95, align 8, !tbaa !39
  %104 = load ptr, ptr %46, align 8, !tbaa !15
  tail call void %103(ptr noundef %94, ptr noundef %104, ptr noundef nonnull @.str.1) #10
  store ptr null, ptr %46, align 8, !tbaa !15
  br label %159

105:                                              ; preds = %88
  %106 = load double, ptr %20, align 8, !tbaa !25
  %107 = load i32, ptr %13, align 4, !tbaa !23
  %108 = load i32, ptr %16, align 4, !tbaa !24
  %109 = load i32, ptr %31, align 8, !tbaa !30
  %110 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 5
  %111 = load i32, ptr %110, align 8, !tbaa !40
  %112 = uitofp i32 %111 to double
  %113 = fdiv double 2.550000e+02, %112
  %114 = tail call fastcc i32 @calculate_contrib(ptr noundef nonnull %83, ptr noundef nonnull %86, double noundef %106, i32 noundef 0, i32 noundef %107, i32 noundef %108, i32 noundef %108, i32 noundef %109, double noundef %113), !range !41
  %115 = load i32, ptr %13, align 4, !tbaa !23
  %116 = load i32, ptr %31, align 8, !tbaa !30
  %117 = mul nsw i32 %116, %115
  %118 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 27
  %119 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 29
  %120 = load double, ptr %28, align 8, !tbaa !28
  %121 = load i32, ptr %24, align 8, !tbaa !27
  %122 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 9
  %123 = load i32, ptr %122, align 8, !tbaa !42
  %124 = uitofp i32 %123 to double
  %125 = fdiv double %124, 2.550000e+02
  %126 = tail call fastcc i32 @calculate_contrib(ptr noundef nonnull %118, ptr noundef nonnull %119, double noundef %120, i32 noundef 0, i32 noundef 1, i32 noundef %121, i32 noundef 8, i32 noundef %117, double noundef %125), !range !41
  %127 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 27, i32 2
  %128 = load i32, ptr %127, align 8, !tbaa !43
  %129 = udiv i32 %128, %117
  %130 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 28
  store i32 %126, ptr %130, align 4, !tbaa !44
  %131 = srem i32 %126, 8
  %132 = icmp slt i32 %131, %129
  br i1 %132, label %133, label %159

133:                                              ; preds = %105
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #10
  %134 = sext i32 %129 to i64
  %135 = sext i32 %131 to i64
  br label %136

136:                                              ; preds = %152, %133
  %137 = phi i64 [ 0, %133 ], [ %155, %152 ]
  %138 = icmp sgt i64 %137, %135
  br i1 %138, label %144, label %139

139:                                              ; preds = %136
  %140 = trunc i64 %137 to i32
  %141 = sub i32 %140, %129
  %142 = add i32 %141, 8
  %143 = sext i32 %142 to i64
  br label %148

144:                                              ; preds = %136
  %145 = icmp slt i64 %137, %134
  br i1 %145, label %152, label %146

146:                                              ; preds = %144
  %147 = sub nsw i64 %137, %134
  br label %148

148:                                              ; preds = %139, %146
  %149 = phi i64 [ %147, %146 ], [ %143, %139 ]
  %150 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 29, i64 %149
  %151 = load float, ptr %150, align 4, !tbaa !45
  br label %152

152:                                              ; preds = %148, %144
  %153 = phi float [ 0.000000e+00, %144 ], [ %151, %148 ]
  %154 = getelementptr inbounds [8 x %struct.CONTRIB], ptr %2, i64 0, i64 %137
  store float %153, ptr %154, align 4, !tbaa !45
  %155 = add nuw nsw i64 %137, 1
  %156 = icmp eq i64 %155, 8
  br i1 %156, label %157, label %136, !llvm.loop !48

157:                                              ; preds = %152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %119, ptr noundef nonnull align 16 dereferenceable(32) %2, i64 32, i1 false)
  %158 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 27, i32 1
  store i32 8, ptr %158, align 4, !tbaa !50
  store i32 0, ptr %127, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #10
  br label %159

159:                                              ; preds = %157, %105, %93
  %160 = phi i32 [ -2, %93 ], [ 0, %105 ], [ 0, %157 ]
  ret i32 %160
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @s_IScale_process(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 %3) #2 {
  %5 = alloca [8 x %struct.CONTRIB], align 16
  %6 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 21
  %7 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 28
  %8 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 2
  %9 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 1
  %10 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 24
  %11 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 11
  %12 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 25
  %13 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 26
  %14 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 17
  %15 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 13
  %16 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 9
  %17 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 18
  %18 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 10
  %19 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 3
  %20 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 27
  %21 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 29
  %22 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 27, i32 1
  %23 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 27, i32 2
  %24 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 17
  %25 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 26
  %26 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 17
  %27 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 10
  %28 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 3
  %29 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 27
  %30 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 29
  %31 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 15
  %32 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 7
  %33 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 9
  %34 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 27, i32 2
  %35 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 27, i32 1
  %36 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 21
  %37 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %1, i64 0, i32 1
  %38 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 23
  %39 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 22
  %40 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 16
  %41 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 18
  %42 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 10
  %43 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 3
  %44 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 19
  %45 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 20
  %46 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 12
  %47 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 16
  br label %48

48:                                               ; preds = %231, %4
  %49 = phi i32 [ undef, %4 ], [ %232, %231 ]
  %50 = load i32, ptr %6, align 8, !tbaa !29
  %51 = load i32, ptr %7, align 4, !tbaa !44
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %233

53:                                               ; preds = %48
  %54 = load ptr, ptr %8, align 8, !tbaa !51
  %55 = load ptr, ptr %9, align 8, !tbaa !53
  %56 = ptrtoint ptr %54 to i64
  %57 = ptrtoint ptr %55 to i64
  %58 = sub i64 %56, %57
  %59 = trunc i64 %58 to i32
  %60 = load i32, ptr %10, align 4, !tbaa !33
  %61 = load i32, ptr %11, align 8, !tbaa !26
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %228, label %63

63:                                               ; preds = %53
  %64 = icmp eq i32 %59, 0
  br i1 %64, label %228, label %65

65:                                               ; preds = %63
  %66 = load i32, ptr %12, align 8, !tbaa !35
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %165

68:                                               ; preds = %65
  %69 = load i32, ptr %13, align 4, !tbaa !34
  %70 = icmp ugt i32 %69, %59
  br i1 %70, label %75, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds i8, ptr %55, i64 1
  %73 = zext i32 %69 to i64
  %74 = getelementptr inbounds i8, ptr %55, i64 %73
  store ptr %74, ptr %9, align 8, !tbaa !53
  br label %77

75:                                               ; preds = %68
  %76 = load ptr, ptr %14, align 8, !tbaa !9
  br label %77

77:                                               ; preds = %75, %71
  %78 = phi ptr [ %72, %71 ], [ %76, %75 ]
  %79 = load i32, ptr %15, align 8, !tbaa !22
  %80 = load i32, ptr %16, align 8, !tbaa !42
  %81 = load ptr, ptr %17, align 8, !tbaa !15
  %82 = load i32, ptr %18, align 4, !tbaa !23
  %83 = load i32, ptr %19, align 8, !tbaa !30
  %84 = mul i32 %83, %82
  %85 = load i32, ptr %22, align 4, !tbaa !54
  %86 = load i32, ptr %23, align 4, !tbaa !55
  %87 = load i32, ptr %20, align 4, !tbaa !56
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.CONTRIB, ptr %21, i64 %88
  %90 = icmp eq i32 %79, 1
  %91 = icmp sgt i32 %84, 0
  br i1 %90, label %98, label %92

92:                                               ; preds = %77
  br i1 %91, label %93, label %162

93:                                               ; preds = %92
  %94 = icmp sgt i32 %85, 0
  %95 = zext nneg i32 %84 to i64
  %96 = sext i32 %86 to i64
  %97 = getelementptr i8, ptr %81, i64 %96
  br label %133

98:                                               ; preds = %77
  br i1 %91, label %99, label %162

99:                                               ; preds = %98
  %100 = icmp sgt i32 %85, 0
  %101 = zext nneg i32 %84 to i64
  %102 = sext i32 %86 to i64
  %103 = getelementptr i8, ptr %81, i64 %102
  br label %104

104:                                              ; preds = %123, %99
  %105 = phi i64 [ 0, %99 ], [ %131, %123 ]
  br i1 %100, label %106, label %123

106:                                              ; preds = %104
  %107 = getelementptr i8, ptr %103, i64 %105
  br label %108

108:                                              ; preds = %108, %106
  %109 = phi double [ %118, %108 ], [ 0.000000e+00, %106 ]
  %110 = phi ptr [ %120, %108 ], [ %89, %106 ]
  %111 = phi i32 [ %121, %108 ], [ %85, %106 ]
  %112 = phi ptr [ %119, %108 ], [ %107, %106 ]
  %113 = load i8, ptr %112, align 1, !tbaa !57
  %114 = uitofp i8 %113 to float
  %115 = load float, ptr %110, align 4, !tbaa !45
  %116 = fmul float %115, %114
  %117 = fpext float %116 to double
  %118 = fadd double %109, %117
  %119 = getelementptr inbounds i8, ptr %112, i64 %101
  %120 = getelementptr inbounds %struct.CONTRIB, ptr %110, i64 1
  %121 = add nsw i32 %111, -1
  %122 = icmp sgt i32 %111, 1
  br i1 %122, label %108, label %123, !llvm.loop !58

123:                                              ; preds = %108, %104
  %124 = phi double [ 0.000000e+00, %104 ], [ %118, %108 ]
  %125 = fptosi double %124 to i32
  %126 = icmp slt i32 %125, 0
  %127 = tail call i32 @llvm.smin.i32(i32 %125, i32 %80)
  %128 = trunc i32 %127 to i8
  %129 = select i1 %126, i8 0, i8 %128
  %130 = getelementptr inbounds i8, ptr %78, i64 %105
  store i8 %129, ptr %130, align 1, !tbaa !57
  %131 = add nuw nsw i64 %105, 1
  %132 = icmp eq i64 %131, %101
  br i1 %132, label %162, label %104, !llvm.loop !59

133:                                              ; preds = %152, %93
  %134 = phi i64 [ 0, %93 ], [ %160, %152 ]
  br i1 %94, label %135, label %152

135:                                              ; preds = %133
  %136 = getelementptr i8, ptr %97, i64 %134
  br label %137

137:                                              ; preds = %137, %135
  %138 = phi ptr [ %149, %137 ], [ %89, %135 ]
  %139 = phi i32 [ %150, %137 ], [ %85, %135 ]
  %140 = phi ptr [ %148, %137 ], [ %136, %135 ]
  %141 = phi double [ %147, %137 ], [ 0.000000e+00, %135 ]
  %142 = load i8, ptr %140, align 1, !tbaa !57
  %143 = uitofp i8 %142 to float
  %144 = load float, ptr %138, align 4, !tbaa !45
  %145 = fmul float %144, %143
  %146 = fpext float %145 to double
  %147 = fadd double %141, %146
  %148 = getelementptr inbounds i8, ptr %140, i64 %95
  %149 = getelementptr inbounds %struct.CONTRIB, ptr %138, i64 1
  %150 = add nsw i32 %139, -1
  %151 = icmp sgt i32 %139, 1
  br i1 %151, label %137, label %152, !llvm.loop !60

152:                                              ; preds = %137, %133
  %153 = phi double [ 0.000000e+00, %133 ], [ %147, %137 ]
  %154 = fptosi double %153 to i32
  %155 = icmp slt i32 %154, 0
  %156 = tail call i32 @llvm.smin.i32(i32 %154, i32 %80)
  %157 = trunc i32 %156 to i16
  %158 = select i1 %155, i16 0, i16 %157
  %159 = getelementptr inbounds i16, ptr %78, i64 %134
  store i16 %158, ptr %159, align 2, !tbaa !61
  %160 = add nuw nsw i64 %134, 1
  %161 = icmp eq i64 %160, %95
  br i1 %161, label %162, label %133, !llvm.loop !63

162:                                              ; preds = %152, %123, %92, %98
  %163 = load ptr, ptr %24, align 8, !tbaa !9
  %164 = icmp eq ptr %78, %163
  br i1 %164, label %165, label %183

165:                                              ; preds = %162, %65
  %166 = load i32, ptr %25, align 4, !tbaa !34
  %167 = load i32, ptr %12, align 8, !tbaa !35
  %168 = sub i32 %166, %167
  %169 = icmp ugt i32 %168, %59
  %170 = tail call i32 @llvm.umin.i32(i32 %168, i32 %59)
  %171 = load ptr, ptr %9, align 8, !tbaa !53
  %172 = getelementptr inbounds i8, ptr %171, i64 1
  %173 = load ptr, ptr %26, align 8, !tbaa !9
  %174 = zext i32 %167 to i64
  %175 = getelementptr inbounds i8, ptr %173, i64 %174
  %176 = zext i32 %170 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %172, ptr align 1 %175, i64 %176, i1 false)
  %177 = load ptr, ptr %9, align 8, !tbaa !53
  %178 = getelementptr inbounds i8, ptr %177, i64 %176
  store ptr %178, ptr %9, align 8, !tbaa !53
  %179 = load i32, ptr %12, align 8, !tbaa !35
  %180 = add i32 %179, %170
  %181 = select i1 %169, i32 %180, i32 0
  store i32 %181, ptr %12, align 8
  %182 = select i1 %169, i32 1, i32 %49
  br i1 %169, label %228, label %183

183:                                              ; preds = %162, %165
  %184 = phi i32 [ %49, %162 ], [ %182, %165 ]
  %185 = load i32, ptr %10, align 4, !tbaa !33
  %186 = add nsw i32 %185, 1
  store i32 %186, ptr %10, align 4, !tbaa !33
  %187 = load i32, ptr %11, align 8, !tbaa !26
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %228, label %189

189:                                              ; preds = %183
  %190 = load i32, ptr %27, align 4, !tbaa !23
  %191 = load i32, ptr %28, align 8, !tbaa !30
  %192 = mul nsw i32 %191, %190
  %193 = load double, ptr %31, align 8, !tbaa !28
  %194 = load i32, ptr %32, align 8, !tbaa !27
  %195 = load i32, ptr %33, align 8, !tbaa !42
  %196 = uitofp i32 %195 to double
  %197 = fdiv double %196, 2.550000e+02
  %198 = tail call fastcc i32 @calculate_contrib(ptr noundef nonnull %29, ptr noundef nonnull %30, double noundef %193, i32 noundef %186, i32 noundef 1, i32 noundef %194, i32 noundef 8, i32 noundef %192, double noundef %197), !range !41
  %199 = load i32, ptr %34, align 8, !tbaa !43
  %200 = udiv i32 %199, %192
  store i32 %198, ptr %7, align 4, !tbaa !44
  %201 = srem i32 %198, 8
  %202 = icmp slt i32 %201, %200
  br i1 %202, label %203, label %228

203:                                              ; preds = %189
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #10
  %204 = sext i32 %200 to i64
  %205 = sext i32 %201 to i64
  br label %206

206:                                              ; preds = %222, %203
  %207 = phi i64 [ 0, %203 ], [ %225, %222 ]
  %208 = icmp sgt i64 %207, %205
  br i1 %208, label %214, label %209

209:                                              ; preds = %206
  %210 = trunc i64 %207 to i32
  %211 = sub i32 %210, %200
  %212 = add i32 %211, 8
  %213 = sext i32 %212 to i64
  br label %218

214:                                              ; preds = %206
  %215 = icmp slt i64 %207, %204
  br i1 %215, label %222, label %216

216:                                              ; preds = %214
  %217 = sub nsw i64 %207, %204
  br label %218

218:                                              ; preds = %209, %216
  %219 = phi i64 [ %217, %216 ], [ %213, %209 ]
  %220 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 29, i64 %219
  %221 = load float, ptr %220, align 4, !tbaa !45
  br label %222

222:                                              ; preds = %218, %214
  %223 = phi float [ 0.000000e+00, %214 ], [ %221, %218 ]
  %224 = getelementptr inbounds [8 x %struct.CONTRIB], ptr %5, i64 0, i64 %207
  store float %223, ptr %224, align 4, !tbaa !45
  %225 = add nuw nsw i64 %207, 1
  %226 = icmp eq i64 %225, 8
  br i1 %226, label %227, label %206, !llvm.loop !48

227:                                              ; preds = %222
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 16 dereferenceable(32) %5, i64 32, i1 false)
  store i32 8, ptr %35, align 4, !tbaa !50
  store i32 0, ptr %34, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  br label %228

228:                                              ; preds = %227, %189, %183, %63, %53, %165
  %229 = phi i1 [ false, %165 ], [ false, %53 ], [ false, %63 ], [ true, %183 ], [ true, %189 ], [ true, %227 ]
  %230 = phi i32 [ %182, %165 ], [ -1, %53 ], [ 1, %63 ], [ %184, %183 ], [ %184, %189 ], [ %184, %227 ]
  br i1 %229, label %231, label %448

231:                                              ; preds = %228, %445
  %232 = phi i32 [ %230, %228 ], [ %447, %445 ]
  br label %48

233:                                              ; preds = %48
  %234 = load ptr, ptr %37, align 8, !tbaa !64
  %235 = load ptr, ptr %1, align 8, !tbaa !66
  %236 = ptrtoint ptr %234 to i64
  %237 = ptrtoint ptr %235 to i64
  %238 = sub i64 %236, %237
  %239 = trunc i64 %238 to i32
  %240 = load i32, ptr %38, align 8, !tbaa !31
  %241 = load i32, ptr %39, align 4, !tbaa !32
  %242 = sub i32 %240, %241
  %243 = icmp eq i32 %239, 0
  br i1 %243, label %445, label %244

244:                                              ; preds = %233
  %245 = icmp ugt i32 %242, %239
  br i1 %245, label %435, label %246

246:                                              ; preds = %244
  %247 = icmp eq i32 %241, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %246
  %249 = getelementptr inbounds i8, ptr %235, i64 1
  br label %256

250:                                              ; preds = %246
  %251 = load ptr, ptr %40, align 8, !tbaa !14
  %252 = zext i32 %241 to i64
  %253 = getelementptr inbounds i8, ptr %251, i64 %252
  %254 = getelementptr inbounds i8, ptr %235, i64 1
  %255 = zext i32 %242 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %253, ptr nonnull align 1 %254, i64 %255, i1 false)
  store i32 0, ptr %39, align 4, !tbaa !32
  br label %256

256:                                              ; preds = %250, %248
  %257 = phi ptr [ %249, %248 ], [ %251, %250 ]
  %258 = load ptr, ptr %41, align 8, !tbaa !15
  %259 = load i32, ptr %36, align 8, !tbaa !29
  %260 = srem i32 %259, 8
  %261 = load i32, ptr %42, align 4, !tbaa !23
  %262 = mul nsw i32 %260, %261
  %263 = load i32, ptr %43, align 8, !tbaa !30
  %264 = mul nsw i32 %262, %263
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i8, ptr %258, i64 %265
  %267 = load ptr, ptr %44, align 8, !tbaa !16
  %268 = load ptr, ptr %45, align 8, !tbaa !17
  %269 = icmp sgt i32 %263, 0
  br i1 %269, label %270, label %429

270:                                              ; preds = %256
  %271 = load i32, ptr %46, align 4, !tbaa !20
  %272 = icmp eq i32 %271, 1
  %273 = icmp sgt i32 %261, 0
  %274 = zext nneg i32 %263 to i64
  br label %275

275:                                              ; preds = %426, %270
  %276 = phi i64 [ 0, %270 ], [ %427, %426 ]
  %277 = getelementptr inbounds i8, ptr %266, i64 %276
  br i1 %272, label %278, label %352

278:                                              ; preds = %275
  %279 = getelementptr inbounds i8, ptr %257, i64 %276
  br i1 %273, label %280, label %426

280:                                              ; preds = %278, %342
  %281 = phi i32 [ %350, %342 ], [ 0, %278 ]
  %282 = phi ptr [ %348, %342 ], [ %277, %278 ]
  %283 = phi ptr [ %349, %342 ], [ %267, %278 ]
  %284 = getelementptr inbounds %struct.CLIST, ptr %283, i64 0, i32 1
  %285 = load i32, ptr %284, align 4, !tbaa !54
  %286 = getelementptr inbounds %struct.CLIST, ptr %283, i64 0, i32 2
  %287 = load i32, ptr %286, align 4, !tbaa !55
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i8, ptr %279, i64 %288
  %290 = load i32, ptr %283, align 4, !tbaa !56
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.CONTRIB, ptr %268, i64 %291
  %293 = icmp sgt i32 %285, 0
  switch i32 %263, label %296 [
    i32 1, label %295
    i32 3, label %294
  ]

294:                                              ; preds = %280
  br i1 %293, label %312, label %342

295:                                              ; preds = %280
  br i1 %293, label %297, label %342

296:                                              ; preds = %280
  br i1 %293, label %327, label %342

297:                                              ; preds = %295, %297
  %298 = phi ptr [ %309, %297 ], [ %292, %295 ]
  %299 = phi ptr [ %308, %297 ], [ %289, %295 ]
  %300 = phi i32 [ %310, %297 ], [ %285, %295 ]
  %301 = phi double [ %307, %297 ], [ 0.000000e+00, %295 ]
  %302 = load i8, ptr %299, align 1, !tbaa !57
  %303 = uitofp i8 %302 to float
  %304 = load float, ptr %298, align 4, !tbaa !45
  %305 = fmul float %304, %303
  %306 = fpext float %305 to double
  %307 = fadd double %301, %306
  %308 = getelementptr inbounds i8, ptr %299, i64 1
  %309 = getelementptr inbounds %struct.CONTRIB, ptr %298, i64 1
  %310 = add nsw i32 %300, -1
  %311 = icmp sgt i32 %300, 1
  br i1 %311, label %297, label %342, !llvm.loop !67

312:                                              ; preds = %294, %312
  %313 = phi ptr [ %324, %312 ], [ %292, %294 ]
  %314 = phi ptr [ %323, %312 ], [ %289, %294 ]
  %315 = phi i32 [ %325, %312 ], [ %285, %294 ]
  %316 = phi double [ %322, %312 ], [ 0.000000e+00, %294 ]
  %317 = load i8, ptr %314, align 1, !tbaa !57
  %318 = uitofp i8 %317 to float
  %319 = load float, ptr %313, align 4, !tbaa !45
  %320 = fmul float %319, %318
  %321 = fpext float %320 to double
  %322 = fadd double %316, %321
  %323 = getelementptr inbounds i8, ptr %314, i64 3
  %324 = getelementptr inbounds %struct.CONTRIB, ptr %313, i64 1
  %325 = add nsw i32 %315, -1
  %326 = icmp sgt i32 %315, 1
  br i1 %326, label %312, label %342, !llvm.loop !68

327:                                              ; preds = %296, %327
  %328 = phi ptr [ %339, %327 ], [ %292, %296 ]
  %329 = phi ptr [ %338, %327 ], [ %289, %296 ]
  %330 = phi i32 [ %340, %327 ], [ %285, %296 ]
  %331 = phi double [ %337, %327 ], [ 0.000000e+00, %296 ]
  %332 = load i8, ptr %329, align 1, !tbaa !57
  %333 = uitofp i8 %332 to float
  %334 = load float, ptr %328, align 4, !tbaa !45
  %335 = fmul float %334, %333
  %336 = fpext float %335 to double
  %337 = fadd double %331, %336
  %338 = getelementptr inbounds i8, ptr %329, i64 %274
  %339 = getelementptr inbounds %struct.CONTRIB, ptr %328, i64 1
  %340 = add nsw i32 %330, -1
  %341 = icmp sgt i32 %330, 1
  br i1 %341, label %327, label %342, !llvm.loop !69

342:                                              ; preds = %312, %297, %327, %296, %295, %294
  %343 = phi double [ 0.000000e+00, %296 ], [ 0.000000e+00, %295 ], [ 0.000000e+00, %294 ], [ %337, %327 ], [ %307, %297 ], [ %322, %312 ]
  %344 = fptosi double %343 to i32
  %345 = tail call i32 @llvm.smin.i32(i32 %344, i32 255)
  %346 = tail call i32 @llvm.smax.i32(i32 %345, i32 0)
  %347 = trunc i32 %346 to i8
  store i8 %347, ptr %282, align 1, !tbaa !57
  %348 = getelementptr inbounds i8, ptr %282, i64 %274
  %349 = getelementptr inbounds %struct.CLIST, ptr %283, i64 1
  %350 = add nuw nsw i32 %281, 1
  %351 = icmp eq i32 %350, %261
  br i1 %351, label %426, label %280, !llvm.loop !70

352:                                              ; preds = %275
  %353 = getelementptr inbounds i16, ptr %257, i64 %276
  br i1 %273, label %354, label %426

354:                                              ; preds = %352, %416
  %355 = phi i32 [ %424, %416 ], [ 0, %352 ]
  %356 = phi ptr [ %422, %416 ], [ %277, %352 ]
  %357 = phi ptr [ %423, %416 ], [ %267, %352 ]
  %358 = getelementptr inbounds %struct.CLIST, ptr %357, i64 0, i32 1
  %359 = load i32, ptr %358, align 4, !tbaa !54
  %360 = getelementptr inbounds %struct.CLIST, ptr %357, i64 0, i32 2
  %361 = load i32, ptr %360, align 4, !tbaa !55
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i16, ptr %353, i64 %362
  %364 = load i32, ptr %357, align 4, !tbaa !56
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.CONTRIB, ptr %268, i64 %365
  %367 = icmp sgt i32 %359, 0
  switch i32 %263, label %370 [
    i32 1, label %369
    i32 3, label %368
  ]

368:                                              ; preds = %354
  br i1 %367, label %386, label %416

369:                                              ; preds = %354
  br i1 %367, label %371, label %416

370:                                              ; preds = %354
  br i1 %367, label %401, label %416

371:                                              ; preds = %369, %371
  %372 = phi ptr [ %383, %371 ], [ %366, %369 ]
  %373 = phi ptr [ %382, %371 ], [ %363, %369 ]
  %374 = phi i32 [ %384, %371 ], [ %359, %369 ]
  %375 = phi double [ %381, %371 ], [ 0.000000e+00, %369 ]
  %376 = load i16, ptr %373, align 2, !tbaa !61
  %377 = uitofp i16 %376 to float
  %378 = load float, ptr %372, align 4, !tbaa !45
  %379 = fmul float %378, %377
  %380 = fpext float %379 to double
  %381 = fadd double %375, %380
  %382 = getelementptr inbounds i16, ptr %373, i64 1
  %383 = getelementptr inbounds %struct.CONTRIB, ptr %372, i64 1
  %384 = add nsw i32 %374, -1
  %385 = icmp sgt i32 %374, 1
  br i1 %385, label %371, label %416, !llvm.loop !71

386:                                              ; preds = %368, %386
  %387 = phi ptr [ %398, %386 ], [ %366, %368 ]
  %388 = phi ptr [ %397, %386 ], [ %363, %368 ]
  %389 = phi i32 [ %399, %386 ], [ %359, %368 ]
  %390 = phi double [ %396, %386 ], [ 0.000000e+00, %368 ]
  %391 = load i16, ptr %388, align 2, !tbaa !61
  %392 = uitofp i16 %391 to float
  %393 = load float, ptr %387, align 4, !tbaa !45
  %394 = fmul float %393, %392
  %395 = fpext float %394 to double
  %396 = fadd double %390, %395
  %397 = getelementptr inbounds i16, ptr %388, i64 3
  %398 = getelementptr inbounds %struct.CONTRIB, ptr %387, i64 1
  %399 = add nsw i32 %389, -1
  %400 = icmp sgt i32 %389, 1
  br i1 %400, label %386, label %416, !llvm.loop !72

401:                                              ; preds = %370, %401
  %402 = phi ptr [ %413, %401 ], [ %366, %370 ]
  %403 = phi ptr [ %412, %401 ], [ %363, %370 ]
  %404 = phi i32 [ %414, %401 ], [ %359, %370 ]
  %405 = phi double [ %411, %401 ], [ 0.000000e+00, %370 ]
  %406 = load i16, ptr %403, align 2, !tbaa !61
  %407 = uitofp i16 %406 to float
  %408 = load float, ptr %402, align 4, !tbaa !45
  %409 = fmul float %408, %407
  %410 = fpext float %409 to double
  %411 = fadd double %405, %410
  %412 = getelementptr inbounds i16, ptr %403, i64 %274
  %413 = getelementptr inbounds %struct.CONTRIB, ptr %402, i64 1
  %414 = add nsw i32 %404, -1
  %415 = icmp sgt i32 %404, 1
  br i1 %415, label %401, label %416, !llvm.loop !73

416:                                              ; preds = %386, %371, %401, %370, %369, %368
  %417 = phi double [ 0.000000e+00, %370 ], [ 0.000000e+00, %369 ], [ 0.000000e+00, %368 ], [ %411, %401 ], [ %381, %371 ], [ %396, %386 ]
  %418 = fptosi double %417 to i32
  %419 = tail call i32 @llvm.smin.i32(i32 %418, i32 255)
  %420 = tail call i32 @llvm.smax.i32(i32 %419, i32 0)
  %421 = trunc i32 %420 to i8
  store i8 %421, ptr %356, align 1, !tbaa !57
  %422 = getelementptr inbounds i8, ptr %356, i64 %274
  %423 = getelementptr inbounds %struct.CLIST, ptr %357, i64 1
  %424 = add nuw nsw i32 %355, 1
  %425 = icmp eq i32 %424, %261
  br i1 %425, label %426, label %354, !llvm.loop !74

426:                                              ; preds = %416, %342, %352, %278
  %427 = add nuw nsw i64 %276, 1
  %428 = icmp eq i64 %427, %274
  br i1 %428, label %429, label %275, !llvm.loop !75

429:                                              ; preds = %426, %256
  %430 = load ptr, ptr %1, align 8, !tbaa !66
  %431 = zext i32 %242 to i64
  %432 = getelementptr inbounds i8, ptr %430, i64 %431
  store ptr %432, ptr %1, align 8, !tbaa !66
  %433 = load i32, ptr %36, align 8, !tbaa !29
  %434 = add nsw i32 %433, 1
  store i32 %434, ptr %36, align 8, !tbaa !29
  br label %445

435:                                              ; preds = %244
  %436 = load ptr, ptr %47, align 8, !tbaa !14
  %437 = zext i32 %241 to i64
  %438 = getelementptr inbounds i8, ptr %436, i64 %437
  %439 = getelementptr inbounds i8, ptr %235, i64 1
  %440 = and i64 %238, 4294967295
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %438, ptr nonnull align 1 %439, i64 %440, i1 false)
  %441 = load i32, ptr %39, align 4, !tbaa !32
  %442 = add i32 %441, %239
  store i32 %442, ptr %39, align 4, !tbaa !32
  %443 = load ptr, ptr %1, align 8, !tbaa !66
  %444 = getelementptr inbounds i8, ptr %443, i64 %440
  store ptr %444, ptr %1, align 8, !tbaa !66
  br label %445

445:                                              ; preds = %233, %435, %429
  %446 = phi i1 [ false, %429 ], [ true, %435 ], [ true, %233 ]
  %447 = phi i32 [ %49, %429 ], [ 0, %435 ], [ 0, %233 ]
  br i1 %446, label %448, label %231

448:                                              ; preds = %445, %228
  %449 = phi i32 [ %230, %228 ], [ %447, %445 ]
  ret i32 %449
}

; Function Attrs: nounwind uwtable
define internal void @s_IScale_release(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !18
  %4 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %3, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !39
  %6 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 16
  %7 = load ptr, ptr %6, align 8, !tbaa !14
  tail call void %5(ptr noundef %3, ptr noundef %7, ptr noundef nonnull @.str.5) #10
  store ptr null, ptr %6, align 8, !tbaa !14
  %8 = load ptr, ptr %4, align 8, !tbaa !39
  %9 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 17
  %10 = load ptr, ptr %9, align 8, !tbaa !9
  tail call void %8(ptr noundef %3, ptr noundef %10, ptr noundef nonnull @.str.4) #10
  store ptr null, ptr %9, align 8, !tbaa !9
  %11 = load ptr, ptr %4, align 8, !tbaa !39
  %12 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 20
  %13 = load ptr, ptr %12, align 8, !tbaa !17
  tail call void %11(ptr noundef %3, ptr noundef %13, ptr noundef nonnull @.str.3) #10
  store ptr null, ptr %12, align 8, !tbaa !17
  %14 = load ptr, ptr %4, align 8, !tbaa !39
  %15 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !16
  tail call void %14(ptr noundef %3, ptr noundef %16, ptr noundef nonnull @.str.2) #10
  store ptr null, ptr %15, align 8, !tbaa !16
  %17 = load ptr, ptr %4, align 8, !tbaa !39
  %18 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %0, i64 0, i32 18
  %19 = load ptr, ptr %18, align 8, !tbaa !15
  tail call void %17(ptr noundef %3, ptr noundef %19, ptr noundef nonnull @.str.1) #10
  store ptr null, ptr %18, align 8, !tbaa !15
  ret void
}

declare ptr @gs_reloc_struct_ptr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i32 @calculate_contrib(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1, double noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, double noundef %8) unnamed_addr #5 {
  %10 = fcmp uge double %2, 1.000000e+00
  br i1 %10, label %16, label %11

11:                                               ; preds = %9
  %12 = fcmp ogt double %2, 0x3FE24FD6FB3D2962
  %13 = select i1 %12, double %2, double 0x3FE24FD6FB3D2962
  %14 = fdiv double 2.000000e+00, %13
  %15 = fdiv double 1.000000e+00, %13
  br label %16

16:                                               ; preds = %9, %11
  %17 = phi double [ %15, %11 ], [ 1.000000e+00, %9 ]
  %18 = phi double [ %14, %11 ], [ 2.000000e+00, %9 ]
  %19 = tail call double @llvm.fmuladd.f64(double %18, double 2.000000e+00, double 1.000000e+00)
  %20 = fptosi double %19 to i32
  %21 = icmp sgt i32 %4, 0
  br i1 %21, label %22, label %164

22:                                               ; preds = %16
  %23 = shl i32 %5, 1
  %24 = add nsw i32 %5, -1
  %25 = icmp sgt i32 %20, 0
  %26 = shl i32 %5, 1
  %27 = shl i32 %5, 1
  %28 = zext i32 %20 to i64
  %29 = shl nuw nsw i64 %28, 2
  %30 = sext i32 %20 to i64
  %31 = zext nneg i32 %4 to i64
  br label %32

32:                                               ; preds = %22, %161
  %33 = phi i64 [ 0, %22 ], [ %162, %161 ]
  %34 = phi i32 [ -1, %22 ], [ %54, %161 ]
  %35 = trunc i64 %33 to i32
  %36 = add i32 %35, %3
  %37 = sitofp i32 %36 to double
  %38 = fdiv double %37, %2
  %39 = fsub double %38, %18
  %40 = tail call double @llvm.ceil.f64(double %39)
  %41 = fptosi double %40 to i32
  %42 = fadd double %18, %38
  %43 = tail call double @llvm.floor.f64(double %42)
  %44 = fptosi double %43 to i32
  %45 = tail call i32 @llvm.smax.i32(i32 %41, i32 0)
  %46 = tail call i32 @llvm.abs.i32(i32 %41, i1 true)
  %47 = icmp slt i32 %44, %5
  %48 = xor i32 %44, -1
  %49 = add i32 %23, %48
  %50 = select i1 %47, i32 %44, i32 %49
  %51 = select i1 %47, i32 %44, i32 %24
  %52 = tail call i32 @llvm.smin.i32(i32 %45, i32 %50)
  %53 = tail call i32 @llvm.smax.i32(i32 %46, i32 %51)
  %54 = tail call i32 @llvm.smax.i32(i32 %53, i32 %34)
  %55 = srem i32 %52, %6
  %56 = mul nsw i32 %55, %7
  %57 = getelementptr inbounds %struct.CLIST, ptr %0, i64 %33
  %58 = getelementptr inbounds %struct.CLIST, ptr %0, i64 %33, i32 2
  store i32 %56, ptr %58, align 4, !tbaa !55
  %59 = add nuw i32 %53, 1
  %60 = sub i32 %59, %52
  %61 = getelementptr inbounds %struct.CLIST, ptr %0, i64 %33, i32 1
  store i32 %60, ptr %61, align 4, !tbaa !54
  %62 = mul nsw i64 %33, %30
  %63 = trunc i64 %62 to i32
  store i32 %63, ptr %57, align 4, !tbaa !56
  %64 = getelementptr inbounds %struct.CONTRIB, ptr %1, i64 %62
  br i1 %25, label %65, label %71

65:                                               ; preds = %32
  %66 = trunc i64 %33 to i32
  %67 = mul i32 %20, %66
  %68 = sext i32 %67 to i64
  %69 = shl nsw i64 %68, 2
  %70 = getelementptr i8, ptr %1, i64 %69
  tail call void @llvm.memset.p0.i64(ptr align 4 %70, i8 0, i64 %29, i1 false), !tbaa !45
  br label %71

71:                                               ; preds = %65, %32
  %72 = icmp sgt i32 %41, %44
  br i1 %10, label %74, label %73

73:                                               ; preds = %71
  br i1 %72, label %161, label %75

74:                                               ; preds = %71
  br i1 %72, label %161, label %119

75:                                               ; preds = %73, %101
  %76 = phi i32 [ %117, %101 ], [ %41, %73 ]
  %77 = sub i32 0, %76
  %78 = sitofp i32 %76 to double
  %79 = fsub double %38, %78
  %80 = fdiv double %79, %17
  %81 = fmul double %80, %80
  %82 = fcmp olt double %80, 0.000000e+00
  %83 = fneg double %80
  %84 = select i1 %82, double %83, double %80
  %85 = fcmp olt double %84, 1.000000e+00
  br i1 %85, label %86, label %92

86:                                               ; preds = %75
  %87 = fmul double %81, %84
  %88 = fmul double %81, -1.200000e+01
  %89 = tail call double @llvm.fmuladd.f64(double %87, double 7.000000e+00, double %88)
  %90 = fadd double %89, 0x4015555555555555
  %91 = fdiv double %90, 6.000000e+00
  br label %101

92:                                               ; preds = %75
  %93 = fcmp olt double %84, 2.000000e+00
  br i1 %93, label %94, label %101

94:                                               ; preds = %92
  %95 = fmul double %81, %84
  %96 = fmul double %81, 1.200000e+01
  %97 = tail call double @llvm.fmuladd.f64(double %95, double 0xC002AAAAAAAAAAAB, double %96)
  %98 = tail call double @llvm.fmuladd.f64(double %84, double -2.000000e+01, double %97)
  %99 = fadd double %98, 0x4025555555555555
  %100 = fdiv double %99, 6.000000e+00
  br label %101

101:                                              ; preds = %86, %92, %94
  %102 = phi double [ %91, %86 ], [ %100, %94 ], [ 0.000000e+00, %92 ]
  %103 = fdiv double %102, %17
  %104 = icmp slt i32 %76, 0
  %105 = icmp slt i32 %76, %5
  %106 = xor i32 %76, -1
  %107 = add i32 %26, %106
  %108 = select i1 %105, i32 %76, i32 %107
  %109 = select i1 %104, i32 %77, i32 %108
  %110 = sub nsw i32 %109, %52
  %111 = fmul double %103, %8
  %112 = fptrunc double %111 to float
  %113 = sext i32 %110 to i64
  %114 = getelementptr inbounds %struct.CONTRIB, ptr %64, i64 %113
  %115 = load float, ptr %114, align 4, !tbaa !45
  %116 = fadd float %115, %112
  store float %116, ptr %114, align 4, !tbaa !45
  %117 = add i32 %76, 1
  %118 = icmp eq i32 %76, %44
  br i1 %118, label %161, label %75, !llvm.loop !76

119:                                              ; preds = %74, %144
  %120 = phi i32 [ %159, %144 ], [ %41, %74 ]
  %121 = sub i32 0, %120
  %122 = sitofp i32 %120 to double
  %123 = fsub double %38, %122
  %124 = fmul double %123, %123
  %125 = fcmp olt double %123, 0.000000e+00
  %126 = fneg double %123
  %127 = select i1 %125, double %126, double %123
  %128 = fcmp olt double %127, 1.000000e+00
  br i1 %128, label %129, label %135

129:                                              ; preds = %119
  %130 = fmul double %124, %127
  %131 = fmul double %124, -1.200000e+01
  %132 = tail call double @llvm.fmuladd.f64(double %130, double 7.000000e+00, double %131)
  %133 = fadd double %132, 0x4015555555555555
  %134 = fdiv double %133, 6.000000e+00
  br label %144

135:                                              ; preds = %119
  %136 = fcmp olt double %127, 2.000000e+00
  br i1 %136, label %137, label %144

137:                                              ; preds = %135
  %138 = fmul double %124, %127
  %139 = fmul double %124, 1.200000e+01
  %140 = tail call double @llvm.fmuladd.f64(double %138, double 0xC002AAAAAAAAAAAB, double %139)
  %141 = tail call double @llvm.fmuladd.f64(double %127, double -2.000000e+01, double %140)
  %142 = fadd double %141, 0x4025555555555555
  %143 = fdiv double %142, 6.000000e+00
  br label %144

144:                                              ; preds = %129, %135, %137
  %145 = phi double [ %134, %129 ], [ %143, %137 ], [ 0.000000e+00, %135 ]
  %146 = icmp slt i32 %120, 0
  %147 = icmp slt i32 %120, %5
  %148 = xor i32 %120, -1
  %149 = add i32 %27, %148
  %150 = select i1 %147, i32 %120, i32 %149
  %151 = select i1 %146, i32 %121, i32 %150
  %152 = sub nsw i32 %151, %52
  %153 = fmul double %145, %8
  %154 = fptrunc double %153 to float
  %155 = sext i32 %152 to i64
  %156 = getelementptr inbounds %struct.CONTRIB, ptr %64, i64 %155
  %157 = load float, ptr %156, align 4, !tbaa !45
  %158 = fadd float %157, %154
  store float %158, ptr %156, align 4, !tbaa !45
  %159 = add i32 %120, 1
  %160 = icmp eq i32 %120, %44
  br i1 %160, label %161, label %119, !llvm.loop !77

161:                                              ; preds = %101, %144, %73, %74
  %162 = add nuw nsw i64 %33, 1
  %163 = icmp eq i64 %162, %31
  br i1 %163, label %164, label %32, !llvm.loop !78

164:                                              ; preds = %161, %16
  %165 = phi i32 [ -1, %16 ], [ %54, %161 ]
  ret i32 %165
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 96}
!10 = !{!"stream_IScale_state_s", !6, i64 0, !6, i64 8, !6, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !12, i64 72, !12, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !11, i64 128, !11, i64 132, !11, i64 136, !11, i64 140, !11, i64 144, !11, i64 148, !13, i64 152, !11, i64 164, !7, i64 168}
!11 = !{!"int", !7, i64 0}
!12 = !{!"double", !7, i64 0}
!13 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8}
!14 = !{!10, !6, i64 88}
!15 = !{!10, !6, i64 104}
!16 = !{!10, !6, i64 112}
!17 = !{!10, !6, i64 120}
!18 = !{!10, !6, i64 8}
!19 = !{!10, !11, i64 28}
!20 = !{!10, !11, i64 60}
!21 = !{!10, !11, i64 44}
!22 = !{!10, !11, i64 64}
!23 = !{!10, !11, i64 52}
!24 = !{!10, !11, i64 36}
!25 = !{!10, !12, i64 72}
!26 = !{!10, !11, i64 56}
!27 = !{!10, !11, i64 40}
!28 = !{!10, !12, i64 80}
!29 = !{!10, !11, i64 128}
!30 = !{!10, !11, i64 24}
!31 = !{!10, !11, i64 136}
!32 = !{!10, !11, i64 132}
!33 = !{!10, !11, i64 140}
!34 = !{!10, !11, i64 148}
!35 = !{!10, !11, i64 144}
!36 = !{!37, !6, i64 32}
!37 = !{!"gs_memory_s", !38, i64 0}
!38 = !{!"gs_memory_procs_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152}
!39 = !{!37, !6, i64 88}
!40 = !{!10, !11, i64 32}
!41 = !{i32 -1, i32 -2147483648}
!42 = !{!10, !11, i64 48}
!43 = !{!10, !11, i64 160}
!44 = !{!10, !11, i64 164}
!45 = !{!46, !47, i64 0}
!46 = !{!"", !47, i64 0}
!47 = !{!"float", !7, i64 0}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = !{!10, !11, i64 156}
!51 = !{!52, !6, i64 16}
!52 = !{!"stream_cursor_write_s", !6, i64 0, !6, i64 8, !6, i64 16}
!53 = !{!52, !6, i64 8}
!54 = !{!13, !11, i64 4}
!55 = !{!13, !11, i64 8}
!56 = !{!13, !11, i64 0}
!57 = !{!7, !7, i64 0}
!58 = distinct !{!58, !49}
!59 = distinct !{!59, !49}
!60 = distinct !{!60, !49}
!61 = !{!62, !62, i64 0}
!62 = !{!"short", !7, i64 0}
!63 = distinct !{!63, !49}
!64 = !{!65, !6, i64 8}
!65 = !{!"stream_cursor_read_s", !6, i64 0, !6, i64 8, !6, i64 16}
!66 = !{!65, !6, i64 0}
!67 = distinct !{!67, !49}
!68 = distinct !{!68, !49}
!69 = distinct !{!69, !49}
!70 = distinct !{!70, !49}
!71 = distinct !{!71, !49}
!72 = distinct !{!72, !49}
!73 = distinct !{!73, !49}
!74 = distinct !{!74, !49}
!75 = distinct !{!75, !49}
!76 = distinct !{!76, !49}
!77 = distinct !{!77, !49}
!78 = distinct !{!78, !49}
