; ModuleID = 'gstype42.c'
source_filename = "gstype42.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.gs_font_type42_s = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, i32, i32, %struct.gs_type42_data_s }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_font_procs_s = type { ptr, ptr, ptr, ptr, %struct.gx_xfont_callbacks_s, ptr, ptr, ptr }
%struct.gx_xfont_callbacks_s = type { ptr, ptr }
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_point_s = type { double, double }
%struct.gs_uid_s = type { i64, ptr }
%struct.gs_type42_data_s = type { ptr, ptr, ptr, i64, i32, i32, i32, i64, i32, i64 }
%struct.gs_const_string_s = type { ptr, i32 }
%struct.gs_imager_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr }
%struct.gx_line_params_s = type { float, i32, i32, float, float, float, float, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { ptr, i32, float, i32, float, i32, i32, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i64, i64, i32 }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gs_int_point_s = type { i32, i32 }
%union.gx_transfer_s = type { [4 x ptr] }

@.str = private unnamed_addr constant [15 x i8] c"gs_font_type42\00", align 1
@st_gs_font_type42 = dso_local local_unnamed_addr constant %struct.gs_memory_struct_type_s { i32 408, ptr @.str, ptr null, ptr null, ptr @font_type42_enum_ptrs, ptr @font_type42_reloc_ptrs, ptr @gs_font_finalize }, align 8
@gs_type42_font_init.version1_0 = internal constant [4 x i8] c"\00\01\00\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"glyf\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"head\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"hhea\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"hmtx\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"loca\00", align 1
@st_gs_font_base = external local_unnamed_addr constant %struct.gs_memory_struct_type_s, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8

; Function Attrs: nounwind uwtable
define internal ptr @font_type42_enum_ptrs(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_struct_type_s, ptr @st_gs_font_base, i64 0, i32 4), align 8, !tbaa !5
  %8 = add i32 %2, -1
  %9 = tail call ptr %7(ptr noundef %0, i32 noundef %1, i32 noundef %8, ptr noundef %3) #6
  br label %13

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.gs_font_type42_s, ptr %0, i64 0, i32 22, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !11
  store ptr %12, ptr %3, align 8, !tbaa !24
  br label %13

13:                                               ; preds = %6, %10
  %14 = phi ptr [ @ptr_struct_procs, %10 ], [ %9, %6 ]
  ret ptr %14
}

; Function Attrs: nounwind uwtable
define internal void @font_type42_reloc_ptrs(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_struct_type_s, ptr @st_gs_font_base, i64 0, i32 5), align 8, !tbaa !25
  tail call void %4(ptr noundef %0, i32 noundef %1, ptr noundef %2) #6
  %5 = getelementptr inbounds %struct.gs_font_type42_s, ptr %0, i64 0, i32 22, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  %7 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %6, ptr noundef %2) #6
  store ptr %7, ptr %5, align 8, !tbaa !11
  ret void
}

declare void @gs_font_finalize(ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_type42_font_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds %struct.gs_font_type42_s, ptr %0, i64 0, i32 22
  %7 = load ptr, ptr %6, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %8 = call i32 %7(ptr noundef %0, i64 noundef 0, i32 noundef 12, ptr noundef nonnull %2) #6
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %255, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr %2, align 8, !tbaa !24
  %12 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %11, ptr noundef nonnull dereferenceable(4) @gs_type42_font_init.version1_0, i64 4)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %255

14:                                               ; preds = %10
  %15 = getelementptr inbounds i8, ptr %11, i64 4
  %16 = load i8, ptr %15, align 1, !tbaa !27
  %17 = zext i8 %16 to i32
  %18 = shl nuw nsw i32 %17, 8
  %19 = getelementptr inbounds i8, ptr %11, i64 5
  %20 = load i8, ptr %19, align 1, !tbaa !27
  %21 = zext i8 %20 to i32
  %22 = or disjoint i32 %18, %21
  %23 = shl nuw nsw i32 %22, 4
  %24 = call i32 %7(ptr noundef %0, i64 noundef 12, i32 noundef %23, ptr noundef nonnull %3) #6
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %255, label %26

26:                                               ; preds = %14
  %27 = icmp eq i32 %22, 0
  br i1 %27, label %207, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.gs_font_type42_s, ptr %0, i64 0, i32 22, i32 9
  %30 = getelementptr inbounds %struct.gs_font_type42_s, ptr %0, i64 0, i32 22, i32 7
  %31 = getelementptr inbounds %struct.gs_font_type42_s, ptr %0, i64 0, i32 22, i32 8
  %32 = getelementptr inbounds %struct.gs_font_type42_s, ptr %0, i64 0, i32 22, i32 6
  %33 = getelementptr inbounds %struct.gs_font_type42_s, ptr %0, i64 0, i32 22, i32 4
  %34 = getelementptr inbounds %struct.gs_font_type42_s, ptr %0, i64 0, i32 22, i32 5
  %35 = getelementptr inbounds %struct.gs_font_type42_s, ptr %0, i64 0, i32 22, i32 3
  %36 = zext nneg i32 %22 to i64
  br label %40

37:                                               ; preds = %179
  %38 = add nuw nsw i64 %41, 1
  %39 = icmp eq i64 %38, %36
  br i1 %39, label %190, label %40, !llvm.loop !28

40:                                               ; preds = %28, %37
  %41 = phi i64 [ 0, %28 ], [ %38, %37 ]
  %42 = phi i32 [ undef, %28 ], [ %189, %37 ]
  %43 = phi i8 [ undef, %28 ], [ %187, %37 ]
  %44 = phi i8 [ undef, %28 ], [ %186, %37 ]
  %45 = phi i8 [ undef, %28 ], [ %185, %37 ]
  %46 = phi i8 [ undef, %28 ], [ %184, %37 ]
  %47 = phi i8 [ undef, %28 ], [ %183, %37 ]
  %48 = phi i8 [ undef, %28 ], [ %182, %37 ]
  %49 = phi i8 [ undef, %28 ], [ %181, %37 ]
  %50 = phi i8 [ undef, %28 ], [ %180, %37 ]
  %51 = load ptr, ptr %3, align 8, !tbaa !24
  %52 = shl nuw nsw i64 %41, 4
  %53 = getelementptr inbounds i8, ptr %51, i64 %52
  %54 = getelementptr inbounds i8, ptr %53, i64 8
  %55 = load i8, ptr %54, align 1, !tbaa !27
  %56 = zext i8 %55 to i64
  %57 = getelementptr inbounds i8, ptr %53, i64 9
  %58 = load i8, ptr %57, align 1, !tbaa !27
  %59 = zext i8 %58 to i64
  %60 = shl nuw nsw i64 %56, 24
  %61 = shl nuw nsw i64 %59, 16
  %62 = getelementptr inbounds i8, ptr %53, i64 10
  %63 = load i8, ptr %62, align 1, !tbaa !27
  %64 = zext i8 %63 to i64
  %65 = shl nuw nsw i64 %64, 8
  %66 = getelementptr inbounds i8, ptr %53, i64 11
  %67 = load i8, ptr %66, align 1, !tbaa !27
  %68 = zext i8 %67 to i64
  %69 = or disjoint i64 %61, %60
  %70 = or disjoint i64 %69, %68
  %71 = or disjoint i64 %70, %65
  %72 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %53, ptr noundef nonnull dereferenceable(4) @.str.1, i64 4)
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %40
  store i64 %71, ptr %35, align 8, !tbaa !30
  br label %169

75:                                               ; preds = %40
  %76 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %53, ptr noundef nonnull dereferenceable(4) @.str.2, i64 4)
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %125

78:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %79 = call i32 %7(ptr noundef %0, i64 noundef %71, i32 noundef 54, ptr noundef nonnull %4) #6
  %80 = icmp sgt i32 %79, -1
  br i1 %80, label %81, label %115

81:                                               ; preds = %78
  %82 = load ptr, ptr %4, align 8, !tbaa !24
  %83 = getelementptr inbounds i8, ptr %82, i64 18
  %84 = load i8, ptr %83, align 1, !tbaa !27
  %85 = zext i8 %84 to i32
  %86 = shl nuw nsw i32 %85, 8
  %87 = getelementptr inbounds i8, ptr %82, i64 19
  %88 = load i8, ptr %87, align 1, !tbaa !27
  %89 = zext i8 %88 to i32
  %90 = or disjoint i32 %86, %89
  store i32 %90, ptr %33, align 8, !tbaa !31
  %91 = getelementptr inbounds i8, ptr %82, i64 36
  %92 = load i8, ptr %91, align 1
  %93 = getelementptr inbounds i8, ptr %82, i64 37
  %94 = load i8, ptr %93, align 1
  %95 = getelementptr inbounds i8, ptr %82, i64 38
  %96 = load i8, ptr %95, align 1
  %97 = getelementptr inbounds i8, ptr %82, i64 39
  %98 = load i8, ptr %97, align 1
  %99 = getelementptr inbounds i8, ptr %82, i64 40
  %100 = load i8, ptr %99, align 1
  %101 = getelementptr inbounds i8, ptr %82, i64 41
  %102 = load i8, ptr %101, align 1
  %103 = getelementptr inbounds i8, ptr %82, i64 42
  %104 = load i8, ptr %103, align 1
  %105 = getelementptr inbounds i8, ptr %82, i64 43
  %106 = load i8, ptr %105, align 1
  %107 = getelementptr inbounds i8, ptr %82, i64 50
  %108 = load i8, ptr %107, align 1, !tbaa !27
  %109 = zext i8 %108 to i32
  %110 = shl nuw nsw i32 %109, 8
  %111 = getelementptr inbounds i8, ptr %82, i64 51
  %112 = load i8, ptr %111, align 1, !tbaa !27
  %113 = zext i8 %112 to i32
  %114 = or disjoint i32 %110, %113
  store i32 %114, ptr %34, align 4, !tbaa !32
  br label %115

115:                                              ; preds = %78, %81
  %116 = phi i8 [ %106, %81 ], [ %50, %78 ]
  %117 = phi i8 [ %104, %81 ], [ %49, %78 ]
  %118 = phi i8 [ %102, %81 ], [ %48, %78 ]
  %119 = phi i8 [ %100, %81 ], [ %47, %78 ]
  %120 = phi i8 [ %98, %81 ], [ %46, %78 ]
  %121 = phi i8 [ %96, %81 ], [ %45, %78 ]
  %122 = phi i8 [ %94, %81 ], [ %44, %78 ]
  %123 = phi i8 [ %92, %81 ], [ %43, %78 ]
  %124 = phi i32 [ %42, %81 ], [ %79, %78 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  br i1 %80, label %169, label %179

125:                                              ; preds = %75
  %126 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %53, ptr noundef nonnull dereferenceable(4) @.str.3, i64 4)
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %143

128:                                              ; preds = %125
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  %129 = call i32 %7(ptr noundef %0, i64 noundef %71, i32 noundef 36, ptr noundef nonnull %5) #6
  %130 = icmp sgt i32 %129, -1
  br i1 %130, label %131, label %141

131:                                              ; preds = %128
  %132 = load ptr, ptr %5, align 8, !tbaa !24
  %133 = getelementptr inbounds i8, ptr %132, i64 34
  %134 = load i8, ptr %133, align 1, !tbaa !27
  %135 = zext i8 %134 to i32
  %136 = shl nuw nsw i32 %135, 8
  %137 = getelementptr inbounds i8, ptr %132, i64 35
  %138 = load i8, ptr %137, align 1, !tbaa !27
  %139 = zext i8 %138 to i32
  %140 = or disjoint i32 %136, %139
  store i32 %140, ptr %32, align 8, !tbaa !33
  br label %141

141:                                              ; preds = %128, %131
  %142 = phi i32 [ %42, %131 ], [ %129, %128 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  br i1 %130, label %169, label %179

143:                                              ; preds = %125
  %144 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %53, ptr noundef nonnull dereferenceable(4) @.str.4, i64 4)
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %165

146:                                              ; preds = %143
  store i64 %71, ptr %30, align 8, !tbaa !34
  %147 = getelementptr inbounds i8, ptr %53, i64 12
  %148 = load i8, ptr %147, align 1, !tbaa !27
  %149 = zext i8 %148 to i32
  %150 = getelementptr inbounds i8, ptr %53, i64 13
  %151 = load i8, ptr %150, align 1, !tbaa !27
  %152 = zext i8 %151 to i32
  %153 = shl nuw i32 %149, 24
  %154 = shl nuw nsw i32 %152, 16
  %155 = getelementptr inbounds i8, ptr %53, i64 14
  %156 = load i8, ptr %155, align 1, !tbaa !27
  %157 = zext i8 %156 to i32
  %158 = shl nuw nsw i32 %157, 8
  %159 = getelementptr inbounds i8, ptr %53, i64 15
  %160 = load i8, ptr %159, align 1, !tbaa !27
  %161 = zext i8 %160 to i32
  %162 = or disjoint i32 %154, %153
  %163 = or disjoint i32 %162, %161
  %164 = or disjoint i32 %163, %158
  store i32 %164, ptr %31, align 8, !tbaa !35
  br label %169

165:                                              ; preds = %143
  %166 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %53, ptr noundef nonnull dereferenceable(4) @.str.5, i64 4)
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %165
  store i64 %71, ptr %29, align 8, !tbaa !36
  br label %169

169:                                              ; preds = %115, %146, %168, %165, %141, %74
  %170 = phi i8 [ %50, %165 ], [ %50, %168 ], [ %50, %146 ], [ %50, %141 ], [ %116, %115 ], [ %50, %74 ]
  %171 = phi i8 [ %49, %165 ], [ %49, %168 ], [ %49, %146 ], [ %49, %141 ], [ %117, %115 ], [ %49, %74 ]
  %172 = phi i8 [ %48, %165 ], [ %48, %168 ], [ %48, %146 ], [ %48, %141 ], [ %118, %115 ], [ %48, %74 ]
  %173 = phi i8 [ %47, %165 ], [ %47, %168 ], [ %47, %146 ], [ %47, %141 ], [ %119, %115 ], [ %47, %74 ]
  %174 = phi i8 [ %46, %165 ], [ %46, %168 ], [ %46, %146 ], [ %46, %141 ], [ %120, %115 ], [ %46, %74 ]
  %175 = phi i8 [ %45, %165 ], [ %45, %168 ], [ %45, %146 ], [ %45, %141 ], [ %121, %115 ], [ %45, %74 ]
  %176 = phi i8 [ %44, %165 ], [ %44, %168 ], [ %44, %146 ], [ %44, %141 ], [ %122, %115 ], [ %44, %74 ]
  %177 = phi i8 [ %43, %165 ], [ %43, %168 ], [ %43, %146 ], [ %43, %141 ], [ %123, %115 ], [ %43, %74 ]
  %178 = phi i32 [ %42, %165 ], [ %42, %168 ], [ %42, %146 ], [ %142, %141 ], [ %124, %115 ], [ %42, %74 ]
  br label %179

179:                                              ; preds = %141, %115, %169
  %180 = phi i8 [ %170, %169 ], [ %50, %141 ], [ %116, %115 ]
  %181 = phi i8 [ %171, %169 ], [ %49, %141 ], [ %117, %115 ]
  %182 = phi i8 [ %172, %169 ], [ %48, %141 ], [ %118, %115 ]
  %183 = phi i8 [ %173, %169 ], [ %47, %141 ], [ %119, %115 ]
  %184 = phi i8 [ %174, %169 ], [ %46, %141 ], [ %120, %115 ]
  %185 = phi i8 [ %175, %169 ], [ %45, %141 ], [ %121, %115 ]
  %186 = phi i8 [ %176, %169 ], [ %44, %141 ], [ %122, %115 ]
  %187 = phi i8 [ %177, %169 ], [ %43, %141 ], [ %123, %115 ]
  %188 = phi i1 [ true, %169 ], [ false, %141 ], [ false, %115 ]
  %189 = phi i32 [ %178, %169 ], [ %142, %141 ], [ %124, %115 ]
  br i1 %188, label %37, label %255

190:                                              ; preds = %37
  %191 = zext i8 %187 to i32
  %192 = zext i8 %186 to i32
  %193 = shl nuw i32 %191, 24
  %194 = shl nuw nsw i32 %192, 16
  %195 = zext i8 %185 to i32
  %196 = zext i8 %184 to i32
  %197 = shl nuw i32 %195, 24
  %198 = shl nuw nsw i32 %196, 16
  %199 = zext i8 %183 to i32
  %200 = zext i8 %182 to i32
  %201 = shl nuw i32 %199, 24
  %202 = shl nuw nsw i32 %200, 16
  %203 = zext i8 %181 to i32
  %204 = zext i8 %180 to i32
  %205 = shl nuw i32 %203, 24
  %206 = shl nuw nsw i32 %204, 16
  br label %207

207:                                              ; preds = %190, %26
  %208 = phi i32 [ 0, %26 ], [ %206, %190 ]
  %209 = phi i32 [ 0, %26 ], [ %205, %190 ]
  %210 = phi i32 [ 0, %26 ], [ %202, %190 ]
  %211 = phi i32 [ 0, %26 ], [ %201, %190 ]
  %212 = phi i32 [ 0, %26 ], [ %198, %190 ]
  %213 = phi i32 [ 0, %26 ], [ %197, %190 ]
  %214 = phi i32 [ 0, %26 ], [ %194, %190 ]
  %215 = phi i32 [ 0, %26 ], [ %193, %190 ]
  %216 = getelementptr inbounds %struct.gs_font_type42_s, ptr %0, i64 0, i32 18
  %217 = load double, ptr %216, align 8, !tbaa !37
  %218 = getelementptr inbounds %struct.gs_font_type42_s, ptr %0, i64 0, i32 18, i32 1
  %219 = load double, ptr %218, align 8, !tbaa !38
  %220 = fcmp ult double %217, %219
  br i1 %220, label %221, label %227

221:                                              ; preds = %207
  %222 = getelementptr inbounds %struct.gs_font_type42_s, ptr %0, i64 0, i32 18, i32 0, i32 1
  %223 = load double, ptr %222, align 8, !tbaa !39
  %224 = getelementptr inbounds %struct.gs_font_type42_s, ptr %0, i64 0, i32 18, i32 1, i32 1
  %225 = load double, ptr %224, align 8, !tbaa !40
  %226 = fcmp ult double %223, %225
  br i1 %226, label %253, label %227

227:                                              ; preds = %221, %207
  %228 = getelementptr inbounds %struct.gs_font_type42_s, ptr %0, i64 0, i32 22, i32 4
  %229 = load i32, ptr %228, align 8, !tbaa !31
  %230 = uitofp i32 %229 to float
  %231 = or disjoint i32 %215, %214
  %232 = ashr exact i32 %231, 16
  %233 = sitofp i32 %232 to float
  %234 = fdiv float %233, %230
  %235 = fpext float %234 to double
  store double %235, ptr %216, align 8, !tbaa !37
  %236 = or disjoint i32 %213, %212
  %237 = ashr exact i32 %236, 16
  %238 = sitofp i32 %237 to float
  %239 = fdiv float %238, %230
  %240 = fpext float %239 to double
  %241 = getelementptr inbounds %struct.gs_font_type42_s, ptr %0, i64 0, i32 18, i32 0, i32 1
  store double %240, ptr %241, align 8, !tbaa !39
  %242 = or disjoint i32 %211, %210
  %243 = ashr exact i32 %242, 16
  %244 = sitofp i32 %243 to float
  %245 = fdiv float %244, %230
  %246 = fpext float %245 to double
  store double %246, ptr %218, align 8, !tbaa !38
  %247 = or disjoint i32 %209, %208
  %248 = ashr exact i32 %247, 16
  %249 = sitofp i32 %248 to float
  %250 = fdiv float %249, %230
  %251 = fpext float %250 to double
  %252 = getelementptr inbounds %struct.gs_font_type42_s, ptr %0, i64 0, i32 18, i32 1, i32 1
  store double %251, ptr %252, align 8, !tbaa !40
  br label %253

253:                                              ; preds = %227, %221
  %254 = getelementptr inbounds %struct.gs_font_type42_s, ptr %0, i64 0, i32 22, i32 2
  store ptr @default_get_outline, ptr %254, align 8, !tbaa !41
  br label %255

255:                                              ; preds = %179, %14, %10, %1, %253
  %256 = phi i32 [ 0, %253 ], [ %8, %1 ], [ -10, %10 ], [ %24, %14 ], [ %189, %179 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  ret i32 %256
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define internal i32 @default_get_outline(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %struct.gs_font_type42_s, ptr %0, i64 0, i32 22
  %6 = load ptr, ptr %5, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %7 = getelementptr inbounds %struct.gs_font_type42_s, ptr %0, i64 0, i32 22, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !32
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.gs_font_type42_s, ptr %0, i64 0, i32 22, i32 9
  %11 = load i64, ptr %10, align 8, !tbaa !36
  br i1 %9, label %56, label %12

12:                                               ; preds = %3
  %13 = shl i32 %1, 2
  %14 = zext i32 %13 to i64
  %15 = add i64 %11, %14
  %16 = call i32 %6(ptr noundef %0, i64 noundef %15, i32 noundef 8, ptr noundef nonnull %4) #6
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %96, label %18

18:                                               ; preds = %12
  %19 = load ptr, ptr %4, align 8, !tbaa !24
  %20 = load i8, ptr %19, align 1, !tbaa !27
  %21 = zext i8 %20 to i64
  %22 = getelementptr inbounds i8, ptr %19, i64 1
  %23 = load i8, ptr %22, align 1, !tbaa !27
  %24 = zext i8 %23 to i64
  %25 = shl nuw nsw i64 %21, 24
  %26 = shl nuw nsw i64 %24, 16
  %27 = getelementptr inbounds i8, ptr %19, i64 2
  %28 = load i8, ptr %27, align 1, !tbaa !27
  %29 = zext i8 %28 to i64
  %30 = shl nuw nsw i64 %29, 8
  %31 = getelementptr inbounds i8, ptr %19, i64 3
  %32 = load i8, ptr %31, align 1, !tbaa !27
  %33 = zext i8 %32 to i64
  %34 = or disjoint i64 %26, %25
  %35 = or disjoint i64 %34, %33
  %36 = or disjoint i64 %35, %30
  %37 = getelementptr inbounds i8, ptr %19, i64 4
  %38 = load i8, ptr %37, align 1, !tbaa !27
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i8, ptr %19, i64 5
  %41 = load i8, ptr %40, align 1, !tbaa !27
  %42 = zext i8 %41 to i64
  %43 = shl nuw nsw i64 %39, 24
  %44 = shl nuw nsw i64 %42, 16
  %45 = getelementptr inbounds i8, ptr %19, i64 6
  %46 = load i8, ptr %45, align 1, !tbaa !27
  %47 = zext i8 %46 to i64
  %48 = shl nuw nsw i64 %47, 8
  %49 = getelementptr inbounds i8, ptr %19, i64 7
  %50 = load i8, ptr %49, align 1, !tbaa !27
  %51 = zext i8 %50 to i64
  %52 = or disjoint i64 %44, %43
  %53 = or disjoint i64 %52, %51
  %54 = or disjoint i64 %53, %48
  %55 = sub nsw i64 %54, %36
  br label %82

56:                                               ; preds = %3
  %57 = shl i32 %1, 1
  %58 = zext i32 %57 to i64
  %59 = add i64 %11, %58
  %60 = call i32 %6(ptr noundef %0, i64 noundef %59, i32 noundef 4, ptr noundef nonnull %4) #6
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %96, label %62

62:                                               ; preds = %56
  %63 = load ptr, ptr %4, align 8, !tbaa !24
  %64 = load i8, ptr %63, align 1, !tbaa !27
  %65 = zext i8 %64 to i64
  %66 = getelementptr inbounds i8, ptr %63, i64 1
  %67 = load i8, ptr %66, align 1, !tbaa !27
  %68 = zext i8 %67 to i64
  %69 = shl nuw nsw i64 %65, 9
  %70 = shl nuw nsw i64 %68, 1
  %71 = or disjoint i64 %70, %69
  %72 = getelementptr inbounds i8, ptr %63, i64 2
  %73 = load i8, ptr %72, align 1, !tbaa !27
  %74 = zext i8 %73 to i64
  %75 = getelementptr inbounds i8, ptr %63, i64 3
  %76 = load i8, ptr %75, align 1, !tbaa !27
  %77 = zext i8 %76 to i64
  %78 = shl nuw nsw i64 %74, 9
  %79 = shl nuw nsw i64 %77, 1
  %80 = or disjoint i64 %79, %78
  %81 = sub nsw i64 %80, %71
  br label %82

82:                                               ; preds = %62, %18
  %83 = phi i64 [ %36, %18 ], [ %71, %62 ]
  %84 = phi i64 [ %55, %18 ], [ %81, %62 ]
  %85 = trunc i64 %84 to i32
  %86 = getelementptr inbounds %struct.gs_const_string_s, ptr %2, i64 0, i32 1
  store i32 %85, ptr %86, align 8, !tbaa !42
  %87 = icmp eq i32 %85, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  store ptr null, ptr %2, align 8, !tbaa !44
  br label %95

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.gs_font_type42_s, ptr %0, i64 0, i32 22, i32 3
  %91 = load i64, ptr %90, align 8, !tbaa !30
  %92 = add i64 %91, %83
  %93 = call i32 %6(ptr noundef %0, i64 noundef %92, i32 noundef %85, ptr noundef %2) #6
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %89, %88
  br label %96

96:                                               ; preds = %89, %56, %12, %95
  %97 = phi i32 [ 0, %95 ], [ %16, %12 ], [ %60, %56 ], [ %93, %89 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  ret i32 %97
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_type42_get_metrics(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds %struct.gs_font_type42_s, ptr %0, i64 0, i32 22
  %7 = load ptr, ptr %6, align 8, !tbaa !26
  %8 = getelementptr inbounds %struct.gs_font_type42_s, ptr %0, i64 0, i32 22, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !31
  %10 = uitofp i32 %9 to float
  %11 = getelementptr inbounds %struct.gs_font_type42_s, ptr %0, i64 0, i32 22, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %13 = icmp ugt i32 %12, %1
  %14 = getelementptr inbounds %struct.gs_font_type42_s, ptr %0, i64 0, i32 22, i32 7
  %15 = load i64, ptr %14, align 8, !tbaa !34
  br i1 %13, label %16, label %41

16:                                               ; preds = %3
  %17 = shl i32 %1, 2
  %18 = zext i32 %17 to i64
  %19 = add i64 %15, %18
  %20 = call i32 %7(ptr noundef %0, i64 noundef %19, i32 noundef 4, ptr noundef nonnull %4) #6
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %86, label %22

22:                                               ; preds = %16
  %23 = load ptr, ptr %4, align 8, !tbaa !24
  %24 = load i8, ptr %23, align 1, !tbaa !27
  %25 = zext i8 %24 to i32
  %26 = shl nuw nsw i32 %25, 8
  %27 = getelementptr inbounds i8, ptr %23, i64 1
  %28 = load i8, ptr %27, align 1, !tbaa !27
  %29 = zext i8 %28 to i32
  %30 = or disjoint i32 %26, %29
  %31 = getelementptr inbounds i8, ptr %23, i64 2
  %32 = load i8, ptr %31, align 1, !tbaa !27
  %33 = zext i8 %32 to i32
  %34 = getelementptr inbounds i8, ptr %23, i64 3
  %35 = load i8, ptr %34, align 1, !tbaa !27
  %36 = zext i8 %35 to i32
  %37 = shl nuw i32 %33, 24
  %38 = shl nuw nsw i32 %36, 16
  %39 = or disjoint i32 %38, %37
  %40 = ashr exact i32 %39, 16
  br label %86

41:                                               ; preds = %3
  %42 = shl i32 %12, 2
  %43 = add i32 %42, -4
  %44 = trunc i64 %15 to i32
  %45 = add i32 %43, %44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  %46 = zext i32 %45 to i64
  %47 = call i32 %7(ptr noundef %0, i64 noundef %46, i32 noundef 4, ptr noundef nonnull %4) #6
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %81, label %49

49:                                               ; preds = %41
  %50 = load ptr, ptr %4, align 8, !tbaa !24
  %51 = load i8, ptr %50, align 1, !tbaa !27
  %52 = zext i8 %51 to i32
  %53 = shl nuw nsw i32 %52, 8
  %54 = getelementptr inbounds i8, ptr %50, i64 1
  %55 = load i8, ptr %54, align 1, !tbaa !27
  %56 = zext i8 %55 to i32
  %57 = or disjoint i32 %53, %56
  %58 = sub i32 %1, %12
  %59 = shl i32 %58, 1
  %60 = add i32 %59, 4
  %61 = add i32 %60, %45
  %62 = getelementptr inbounds %struct.gs_font_type42_s, ptr %0, i64 0, i32 22, i32 8
  %63 = load i32, ptr %62, align 8, !tbaa !35
  %64 = icmp ult i32 %61, %63
  %65 = add i32 %63, -2
  %66 = select i1 %64, i32 %61, i32 %65
  %67 = zext i32 %66 to i64
  %68 = call i32 %7(ptr noundef %0, i64 noundef %67, i32 noundef 2, ptr noundef nonnull %5) #6
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %81, label %70

70:                                               ; preds = %49
  %71 = load ptr, ptr %5, align 8, !tbaa !24
  %72 = load i8, ptr %71, align 1, !tbaa !27
  %73 = zext i8 %72 to i32
  %74 = getelementptr inbounds i8, ptr %71, i64 1
  %75 = load i8, ptr %74, align 1, !tbaa !27
  %76 = zext i8 %75 to i32
  %77 = shl nuw i32 %73, 24
  %78 = shl nuw nsw i32 %76, 16
  %79 = or disjoint i32 %78, %77
  %80 = ashr exact i32 %79, 16
  br label %81

81:                                               ; preds = %49, %41, %70
  %82 = phi i32 [ %57, %70 ], [ undef, %41 ], [ %57, %49 ]
  %83 = phi i32 [ %80, %70 ], [ undef, %41 ], [ undef, %49 ]
  %84 = phi i32 [ undef, %70 ], [ %47, %41 ], [ %68, %49 ]
  %85 = phi i1 [ true, %70 ], [ false, %41 ], [ false, %49 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  br label %86

86:                                               ; preds = %81, %22, %16
  %87 = phi i32 [ undef, %16 ], [ %30, %22 ], [ %82, %81 ]
  %88 = phi i32 [ undef, %16 ], [ %40, %22 ], [ %83, %81 ]
  %89 = phi i32 [ %20, %16 ], [ undef, %22 ], [ %84, %81 ]
  %90 = phi i1 [ false, %16 ], [ true, %22 ], [ %85, %81 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  br i1 %90, label %91, label %99

91:                                               ; preds = %86
  %92 = sitofp i32 %88 to float
  %93 = fdiv float %92, %10
  store float %93, ptr %2, align 4, !tbaa !45
  %94 = getelementptr inbounds float, ptr %2, i64 1
  store float 0.000000e+00, ptr %94, align 4, !tbaa !45
  %95 = uitofp i32 %87 to float
  %96 = fdiv float %95, %10
  %97 = getelementptr inbounds float, ptr %2, i64 2
  store float %96, ptr %97, align 4, !tbaa !45
  %98 = getelementptr inbounds float, ptr %2, i64 3
  store float 0.000000e+00, ptr %98, align 4, !tbaa !45
  br label %99

99:                                               ; preds = %86, %91
  %100 = phi i32 [ 0, %91 ], [ %89, %86 ]
  ret i32 %100
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_type42_append(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readnone %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 2
  %9 = tail call fastcc i32 @append_outline(i32 noundef %0, ptr noundef nonnull %8, ptr noundef %2, ptr noundef %6)
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @append_outline(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.gs_fixed_point_s, align 8
  %6 = alloca %struct.gs_fixed_point_s, align 8
  %7 = alloca %struct.gs_const_string_s, align 8
  %8 = alloca %struct.gs_matrix_fixed_s, align 8
  %9 = alloca %struct.gs_matrix_s, align 4
  %10 = alloca %struct.gs_fixed_point_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6
  %11 = getelementptr inbounds %struct.gs_font_type42_s, ptr %3, i64 0, i32 22, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = call i32 %12(ptr noundef %3, i32 noundef %0, ptr noundef nonnull %7) #6
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %526, label %15

15:                                               ; preds = %4
  %16 = load ptr, ptr %7, align 8, !tbaa !44
  %17 = icmp eq ptr %16, null
  br i1 %17, label %526, label %18

18:                                               ; preds = %15
  %19 = load i8, ptr %16, align 1, !tbaa !27
  %20 = zext i8 %19 to i32
  %21 = getelementptr inbounds i8, ptr %16, i64 1
  %22 = load i8, ptr %21, align 1, !tbaa !27
  %23 = zext i8 %22 to i32
  %24 = shl nuw i32 %20, 24
  %25 = shl nuw nsw i32 %23, 16
  %26 = or disjoint i32 %25, %24
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %28, label %324

28:                                               ; preds = %18
  %29 = lshr exact i32 %26, 16
  %30 = getelementptr inbounds i8, ptr %16, i64 10
  %31 = icmp eq i32 %26, 0
  br i1 %31, label %526, label %32

32:                                               ; preds = %28
  %33 = lshr exact i32 %26, 15
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds i8, ptr %30, i64 %34
  %36 = getelementptr inbounds i8, ptr %35, i64 2
  %37 = load i8, ptr %35, align 1, !tbaa !27
  %38 = zext i8 %37 to i64
  %39 = shl nuw nsw i64 %38, 8
  %40 = getelementptr inbounds i8, ptr %35, i64 1
  %41 = load i8, ptr %40, align 1, !tbaa !27
  %42 = zext i8 %41 to i64
  %43 = or disjoint i64 %39, %42
  %44 = getelementptr inbounds i8, ptr %36, i64 %43
  %45 = getelementptr inbounds i8, ptr %35, i64 -2
  %46 = load i8, ptr %45, align 1, !tbaa !27
  %47 = zext i8 %46 to i32
  %48 = shl nuw nsw i32 %47, 8
  %49 = getelementptr inbounds i8, ptr %35, i64 -1
  %50 = load i8, ptr %49, align 1, !tbaa !27
  %51 = zext i8 %50 to i32
  %52 = or disjoint i32 %48, %51
  %53 = add nuw nsw i32 %52, 1
  br label %54

54:                                               ; preds = %80, %32
  %55 = phi i32 [ %53, %32 ], [ %82, %80 ]
  %56 = phi i32 [ %53, %32 ], [ %81, %80 ]
  %57 = phi ptr [ %44, %32 ], [ %69, %80 ]
  %58 = getelementptr inbounds i8, ptr %57, i64 1
  %59 = load i8, ptr %57, align 1, !tbaa !27
  %60 = zext i8 %59 to i32
  %61 = and i32 %60, 8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %54
  %64 = getelementptr inbounds i8, ptr %57, i64 2
  %65 = load i8, ptr %58, align 1, !tbaa !27
  %66 = zext i8 %65 to i32
  %67 = add nuw nsw i32 %66, 1
  br label %68

68:                                               ; preds = %63, %54
  %69 = phi ptr [ %64, %63 ], [ %58, %54 ]
  %70 = phi i32 [ %67, %63 ], [ 1, %54 ]
  %71 = and i32 %60, 2
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = and i32 %60, 16
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %73
  %77 = sub i32 %56, %70
  br label %80

78:                                               ; preds = %73
  %79 = add i32 %70, %56
  br label %80

80:                                               ; preds = %78, %76, %68
  %81 = phi i32 [ %56, %68 ], [ %77, %76 ], [ %79, %78 ]
  %82 = sub i32 %55, %70
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %54, !llvm.loop !46

84:                                               ; preds = %80
  %85 = zext i32 %81 to i64
  %86 = getelementptr inbounds i8, ptr %69, i64 %85
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  %87 = getelementptr inbounds %struct.gs_font_type42_s, ptr %3, i64 0, i32 22, i32 4
  %88 = load i32, ptr %87, align 8, !tbaa !31
  %89 = uitofp i32 %88 to float
  %90 = call i32 @gs_point_transform2fixed(ptr noundef %1, double noundef 0.000000e+00, double noundef 0.000000e+00, ptr noundef nonnull %5) #6
  %91 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %6, i64 0, i32 1
  %92 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %5, i64 0, i32 1
  %93 = call i32 @llvm.umax.i32(i32 %29, i32 1)
  %94 = zext nneg i32 %93 to i64
  br label %98

95:                                               ; preds = %307
  %96 = add nuw nsw i64 %99, 1
  %97 = icmp eq i64 %96, %94
  br i1 %97, label %322, label %98, !llvm.loop !47

98:                                               ; preds = %95, %84
  %99 = phi i64 [ 0, %84 ], [ %96, %95 ]
  %100 = phi i64 [ undef, %84 ], [ %321, %95 ]
  %101 = phi i64 [ undef, %84 ], [ %320, %95 ]
  %102 = phi i64 [ undef, %84 ], [ %319, %95 ]
  %103 = phi i64 [ undef, %84 ], [ %318, %95 ]
  %104 = phi i64 [ undef, %84 ], [ %317, %95 ]
  %105 = phi i64 [ undef, %84 ], [ %316, %95 ]
  %106 = phi i32 [ undef, %84 ], [ %315, %95 ]
  %107 = phi i8 [ undef, %84 ], [ %314, %95 ]
  %108 = phi i32 [ 0, %84 ], [ %313, %95 ]
  %109 = phi ptr [ %44, %84 ], [ %312, %95 ]
  %110 = phi i32 [ 0, %84 ], [ %308, %95 ]
  %111 = phi ptr [ %69, %84 ], [ %311, %95 ]
  %112 = phi ptr [ %86, %84 ], [ %310, %95 ]
  %113 = shl nuw i64 %99, 1
  %114 = getelementptr inbounds i8, ptr %30, i64 %113
  %115 = load i8, ptr %114, align 1, !tbaa !27
  %116 = zext i8 %115 to i32
  %117 = shl nuw nsw i32 %116, 8
  %118 = getelementptr inbounds i8, ptr %114, i64 1
  %119 = load i8, ptr %118, align 1, !tbaa !27
  %120 = zext i8 %119 to i32
  %121 = or disjoint i32 %117, %120
  %122 = icmp ugt i32 %110, %121
  br i1 %122, label %285, label %123

123:                                              ; preds = %98
  %124 = or disjoint i32 %117, 1
  %125 = add nuw nsw i32 %124, %120
  br label %126

126:                                              ; preds = %281, %123
  %127 = phi i64 [ %280, %281 ], [ %100, %123 ]
  %128 = phi i64 [ %279, %281 ], [ %101, %123 ]
  %129 = phi i64 [ %278, %281 ], [ %102, %123 ]
  %130 = phi i64 [ %277, %281 ], [ %103, %123 ]
  %131 = phi i64 [ %276, %281 ], [ %104, %123 ]
  %132 = phi i64 [ %275, %281 ], [ %105, %123 ]
  %133 = phi i32 [ %274, %281 ], [ 0, %123 ]
  %134 = phi i32 [ %273, %281 ], [ %106, %123 ]
  %135 = phi i32 [ %272, %281 ], [ 1, %123 ]
  %136 = phi i8 [ %156, %281 ], [ %107, %123 ]
  %137 = phi i32 [ %282, %281 ], [ %108, %123 ]
  %138 = phi ptr [ %154, %281 ], [ %109, %123 ]
  %139 = phi i32 [ %283, %281 ], [ %110, %123 ]
  %140 = phi ptr [ %185, %281 ], [ %111, %123 ]
  %141 = phi ptr [ %214, %281 ], [ %112, %123 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6
  %142 = icmp eq i32 %137, 0
  br i1 %142, label %143, label %153

143:                                              ; preds = %126
  %144 = getelementptr inbounds i8, ptr %138, i64 1
  %145 = load i8, ptr %138, align 1, !tbaa !27
  %146 = and i8 %145, 8
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %153, label %148

148:                                              ; preds = %143
  %149 = getelementptr inbounds i8, ptr %138, i64 2
  %150 = load i8, ptr %144, align 1, !tbaa !27
  %151 = zext i8 %150 to i32
  %152 = add nuw nsw i32 %151, 1
  br label %153

153:                                              ; preds = %148, %143, %126
  %154 = phi ptr [ %138, %126 ], [ %149, %148 ], [ %144, %143 ]
  %155 = phi i32 [ %137, %126 ], [ %152, %148 ], [ 1, %143 ]
  %156 = phi i8 [ %136, %126 ], [ %145, %148 ], [ %145, %143 ]
  %157 = zext i8 %156 to i32
  %158 = and i32 %157, 2
  %159 = icmp eq i32 %158, 0
  %160 = and i32 %157, 16
  %161 = icmp eq i32 %160, 0
  br i1 %159, label %170, label %162

162:                                              ; preds = %153
  %163 = load i8, ptr %140, align 1, !tbaa !27
  %164 = zext i8 %163 to i32
  %165 = sub nsw i32 0, %164
  %166 = select i1 %161, i32 %165, i32 %164
  %167 = getelementptr inbounds i8, ptr %140, i64 1
  %168 = sitofp i32 %166 to float
  %169 = fdiv float %168, %89
  br label %184

170:                                              ; preds = %153
  br i1 %161, label %171, label %184

171:                                              ; preds = %170
  %172 = load i8, ptr %140, align 1, !tbaa !27
  %173 = zext i8 %172 to i32
  %174 = getelementptr inbounds i8, ptr %140, i64 1
  %175 = load i8, ptr %174, align 1, !tbaa !27
  %176 = zext i8 %175 to i32
  %177 = shl nuw i32 %173, 24
  %178 = shl nuw nsw i32 %176, 16
  %179 = or disjoint i32 %178, %177
  %180 = ashr exact i32 %179, 16
  %181 = sitofp i32 %180 to float
  %182 = fdiv float %181, %89
  %183 = getelementptr inbounds i8, ptr %140, i64 2
  br label %184

184:                                              ; preds = %171, %170, %162
  %185 = phi ptr [ %167, %162 ], [ %183, %171 ], [ %140, %170 ]
  %186 = phi float [ %169, %162 ], [ %182, %171 ], [ 0.000000e+00, %170 ]
  %187 = and i32 %157, 4
  %188 = icmp eq i32 %187, 0
  %189 = and i32 %157, 32
  %190 = icmp eq i32 %189, 0
  br i1 %188, label %199, label %191

191:                                              ; preds = %184
  %192 = load i8, ptr %141, align 1, !tbaa !27
  %193 = zext i8 %192 to i32
  %194 = sub nsw i32 0, %193
  %195 = select i1 %190, i32 %194, i32 %193
  %196 = getelementptr inbounds i8, ptr %141, i64 1
  %197 = sitofp i32 %195 to float
  %198 = fdiv float %197, %89
  br label %213

199:                                              ; preds = %184
  br i1 %190, label %200, label %213

200:                                              ; preds = %199
  %201 = load i8, ptr %141, align 1, !tbaa !27
  %202 = zext i8 %201 to i32
  %203 = getelementptr inbounds i8, ptr %141, i64 1
  %204 = load i8, ptr %203, align 1, !tbaa !27
  %205 = zext i8 %204 to i32
  %206 = shl nuw i32 %202, 24
  %207 = shl nuw nsw i32 %205, 16
  %208 = or disjoint i32 %207, %206
  %209 = ashr exact i32 %208, 16
  %210 = sitofp i32 %209 to float
  %211 = fdiv float %210, %89
  %212 = getelementptr inbounds i8, ptr %141, i64 2
  br label %213

213:                                              ; preds = %200, %199, %191
  %214 = phi ptr [ %196, %191 ], [ %212, %200 ], [ %141, %199 ]
  %215 = phi float [ %198, %191 ], [ %211, %200 ], [ 0.000000e+00, %199 ]
  %216 = fpext float %186 to double
  %217 = fpext float %215 to double
  %218 = call i32 @gs_distance_transform2fixed(ptr noundef %1, double noundef %216, double noundef %217, ptr noundef nonnull %6) #6
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %270, label %220

220:                                              ; preds = %213
  %221 = load i64, ptr %6, align 8, !tbaa !48
  %222 = load i64, ptr %5, align 8, !tbaa !48
  %223 = add nsw i64 %222, %221
  store i64 %223, ptr %5, align 8, !tbaa !48
  %224 = load i64, ptr %91, align 8, !tbaa !50
  %225 = load i64, ptr %92, align 8, !tbaa !50
  %226 = add nsw i64 %225, %224
  store i64 %226, ptr %92, align 8, !tbaa !50
  %227 = icmp eq i32 %135, 0
  br i1 %227, label %230, label %228

228:                                              ; preds = %220
  %229 = call i32 @gx_path_add_point(ptr noundef %2, i64 noundef %223, i64 noundef %226) #6
  br label %259

230:                                              ; preds = %220
  %231 = and i32 %157, 1
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %239, label %233

233:                                              ; preds = %230
  %234 = icmp eq i32 %133, 0
  br i1 %234, label %237, label %235

235:                                              ; preds = %233
  %236 = call i32 @gx_path_add_curve_notes(ptr noundef %2, i64 noundef %127, i64 noundef %128, i64 noundef %129, i64 noundef %130, i64 noundef %223, i64 noundef %226, i32 noundef 0) #6
  br label %259

237:                                              ; preds = %233
  %238 = call i32 @gx_path_add_line_notes(ptr noundef %2, i64 noundef %223, i64 noundef %226, i32 noundef 0) #6
  br label %259

239:                                              ; preds = %230
  %240 = add nsw i32 %133, 1
  switch i32 %133, label %241 [
    i32 0, label %247
    i32 1, label %252
  ]

241:                                              ; preds = %239
  %242 = add nsw i64 %223, %129
  %243 = sdiv i64 %242, 2
  %244 = add nsw i64 %226, %130
  %245 = sdiv i64 %244, 2
  %246 = call i32 @gx_path_add_curve_notes(ptr noundef %2, i64 noundef %127, i64 noundef %128, i64 noundef %129, i64 noundef %130, i64 noundef %243, i64 noundef %245, i32 noundef 0) #6
  br label %247

247:                                              ; preds = %241, %239
  %248 = phi i32 [ %246, %241 ], [ %218, %239 ]
  %249 = phi i32 [ 1, %241 ], [ %240, %239 ]
  %250 = load i64, ptr %5, align 8, !tbaa.struct !51
  %251 = load i64, ptr %92, align 8, !tbaa.struct !53
  br label %252

252:                                              ; preds = %247, %239
  %253 = phi i32 [ %248, %247 ], [ %218, %239 ]
  %254 = phi i32 [ %249, %247 ], [ %240, %239 ]
  %255 = phi i64 [ %251, %247 ], [ %128, %239 ]
  %256 = phi i64 [ %250, %247 ], [ %127, %239 ]
  %257 = load i64, ptr %5, align 8, !tbaa.struct !51
  %258 = load i64, ptr %92, align 8, !tbaa.struct !53
  br label %259

259:                                              ; preds = %252, %237, %235, %228
  %260 = phi i32 [ %229, %228 ], [ %253, %252 ], [ %236, %235 ], [ %238, %237 ]
  %261 = phi i32 [ %133, %228 ], [ %254, %252 ], [ 0, %235 ], [ 0, %237 ]
  %262 = phi i64 [ %226, %228 ], [ %132, %252 ], [ %132, %235 ], [ %132, %237 ]
  %263 = phi i64 [ %223, %228 ], [ %131, %252 ], [ %131, %235 ], [ %131, %237 ]
  %264 = phi i64 [ %130, %228 ], [ %258, %252 ], [ %130, %235 ], [ %130, %237 ]
  %265 = phi i64 [ %129, %228 ], [ %257, %252 ], [ %129, %235 ], [ %129, %237 ]
  %266 = phi i64 [ %128, %228 ], [ %255, %252 ], [ %128, %235 ], [ %128, %237 ]
  %267 = phi i64 [ %127, %228 ], [ %256, %252 ], [ %127, %235 ], [ %127, %237 ]
  %268 = icmp sgt i32 %260, -1
  %269 = select i1 %268, i32 %134, i32 %260
  br label %270

270:                                              ; preds = %259, %213
  %271 = phi i1 [ false, %213 ], [ %268, %259 ]
  %272 = phi i32 [ %135, %213 ], [ 0, %259 ]
  %273 = phi i32 [ %218, %213 ], [ %269, %259 ]
  %274 = phi i32 [ %133, %213 ], [ %261, %259 ]
  %275 = phi i64 [ %132, %213 ], [ %262, %259 ]
  %276 = phi i64 [ %131, %213 ], [ %263, %259 ]
  %277 = phi i64 [ %130, %213 ], [ %264, %259 ]
  %278 = phi i64 [ %129, %213 ], [ %265, %259 ]
  %279 = phi i64 [ %128, %213 ], [ %266, %259 ]
  %280 = phi i64 [ %127, %213 ], [ %267, %259 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6
  br i1 %271, label %281, label %307

281:                                              ; preds = %270
  %282 = add i32 %155, -1
  %283 = add i32 %139, 1
  %284 = icmp eq i32 %283, %125
  br i1 %284, label %285, label %126, !llvm.loop !54

285:                                              ; preds = %281, %98
  %286 = phi ptr [ %112, %98 ], [ %214, %281 ]
  %287 = phi ptr [ %111, %98 ], [ %185, %281 ]
  %288 = phi i32 [ %110, %98 ], [ %125, %281 ]
  %289 = phi ptr [ %109, %98 ], [ %154, %281 ]
  %290 = phi i32 [ %108, %98 ], [ %282, %281 ]
  %291 = phi i8 [ %107, %98 ], [ %156, %281 ]
  %292 = phi i32 [ %106, %98 ], [ %273, %281 ]
  %293 = phi i32 [ 0, %98 ], [ %274, %281 ]
  %294 = phi i64 [ %105, %98 ], [ %275, %281 ]
  %295 = phi i64 [ %104, %98 ], [ %276, %281 ]
  %296 = phi i64 [ %103, %98 ], [ %277, %281 ]
  %297 = phi i64 [ %102, %98 ], [ %278, %281 ]
  %298 = phi i64 [ %101, %98 ], [ %279, %281 ]
  %299 = phi i64 [ %100, %98 ], [ %280, %281 ]
  %300 = icmp eq i32 %293, 0
  br i1 %300, label %303, label %301

301:                                              ; preds = %285
  %302 = call i32 @gx_path_add_curve_notes(ptr noundef %2, i64 noundef %299, i64 noundef %298, i64 noundef %297, i64 noundef %296, i64 noundef %295, i64 noundef %294, i32 noundef 0) #6
  br label %303

303:                                              ; preds = %301, %285
  %304 = call i32 @gx_path_close_subpath_notes(ptr noundef %2, i32 noundef 0) #6
  %305 = icmp sgt i32 %304, -1
  %306 = select i1 %305, i32 %292, i32 %304
  br label %307

307:                                              ; preds = %270, %303
  %308 = phi i32 [ %288, %303 ], [ %139, %270 ]
  %309 = phi i1 [ %305, %303 ], [ false, %270 ]
  %310 = phi ptr [ %286, %303 ], [ %214, %270 ]
  %311 = phi ptr [ %287, %303 ], [ %185, %270 ]
  %312 = phi ptr [ %289, %303 ], [ %154, %270 ]
  %313 = phi i32 [ %290, %303 ], [ %155, %270 ]
  %314 = phi i8 [ %291, %303 ], [ %156, %270 ]
  %315 = phi i32 [ %306, %303 ], [ %273, %270 ]
  %316 = phi i64 [ %294, %303 ], [ %275, %270 ]
  %317 = phi i64 [ %295, %303 ], [ %276, %270 ]
  %318 = phi i64 [ %296, %303 ], [ %277, %270 ]
  %319 = phi i64 [ %297, %303 ], [ %278, %270 ]
  %320 = phi i64 [ %298, %303 ], [ %279, %270 ]
  %321 = phi i64 [ %299, %303 ], [ %280, %270 ]
  br i1 %309, label %95, label %322

322:                                              ; preds = %307, %95
  %323 = phi i32 [ %315, %307 ], [ 0, %95 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  br label %526

324:                                              ; preds = %18
  %325 = icmp eq i32 %26, -65536
  br i1 %325, label %326, label %526

326:                                              ; preds = %324
  %327 = getelementptr inbounds %struct.gs_font_type42_s, ptr %3, i64 0, i32 22, i32 4
  %328 = load i32, ptr %327, align 8, !tbaa !31
  %329 = uitofp i32 %328 to float
  %330 = getelementptr inbounds i8, ptr %16, i64 10
  store ptr %330, ptr %7, align 8, !tbaa !44
  %331 = getelementptr inbounds %struct.gs_matrix_fixed_s, ptr %8, i64 0, i32 6
  %332 = getelementptr inbounds %struct.gs_matrix_fixed_s, ptr %8, i64 0, i32 4
  %333 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %10, i64 0, i32 1
  %334 = getelementptr inbounds %struct.gs_matrix_fixed_s, ptr %8, i64 0, i32 7
  %335 = getelementptr inbounds %struct.gs_matrix_fixed_s, ptr %8, i64 0, i32 5
  %336 = getelementptr inbounds %struct.gs_matrix_s, ptr %9, i64 0, i32 3
  %337 = getelementptr inbounds %struct.gs_matrix_s, ptr %9, i64 0, i32 2
  %338 = getelementptr inbounds %struct.gs_matrix_s, ptr %9, i64 0, i32 1
  %339 = getelementptr inbounds %struct.gs_matrix_s, ptr %9, i64 0, i32 3
  %340 = getelementptr inbounds %struct.gs_matrix_s, ptr %9, i64 0, i32 2
  %341 = getelementptr inbounds %struct.gs_matrix_s, ptr %9, i64 0, i32 1
  %342 = getelementptr inbounds %struct.gs_matrix_s, ptr %9, i64 0, i32 1
  %343 = getelementptr inbounds %struct.gs_matrix_s, ptr %9, i64 0, i32 2
  %344 = getelementptr inbounds %struct.gs_matrix_s, ptr %9, i64 0, i32 3
  %345 = getelementptr inbounds %struct.gs_matrix_s, ptr %9, i64 0, i32 4
  %346 = getelementptr inbounds %struct.gs_matrix_s, ptr %9, i64 0, i32 5
  br label %347

347:                                              ; preds = %518, %326
  %348 = load ptr, ptr %7, align 8, !tbaa !44
  %349 = getelementptr inbounds i8, ptr %348, i64 2
  %350 = load i8, ptr %349, align 1, !tbaa !27
  %351 = zext i8 %350 to i32
  %352 = shl nuw nsw i32 %351, 8
  %353 = getelementptr inbounds i8, ptr %348, i64 3
  %354 = load i8, ptr %353, align 1, !tbaa !27
  %355 = zext i8 %354 to i32
  %356 = or disjoint i32 %352, %355
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #6
  %357 = getelementptr inbounds i8, ptr %348, i64 1
  %358 = load i8, ptr %357, align 1, !tbaa !27
  %359 = zext i8 %358 to i32
  %360 = getelementptr inbounds i8, ptr %348, i64 4
  store ptr %360, ptr %7, align 8, !tbaa !44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !55
  %361 = and i32 %359, 2
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %406, label %363

363:                                              ; preds = %347
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #6
  %364 = and i32 %359, 1
  %365 = icmp eq i32 %364, 0
  %366 = load i8, ptr %360, align 1, !tbaa !27
  %367 = zext i8 %366 to i32
  %368 = getelementptr inbounds i8, ptr %348, i64 5
  %369 = load i8, ptr %368, align 1, !tbaa !27
  %370 = zext i8 %369 to i32
  br i1 %365, label %386, label %371

371:                                              ; preds = %363
  %372 = shl nuw i32 %367, 24
  %373 = shl nuw nsw i32 %370, 16
  %374 = or disjoint i32 %373, %372
  %375 = ashr exact i32 %374, 16
  %376 = getelementptr inbounds i8, ptr %348, i64 6
  %377 = load i8, ptr %376, align 1, !tbaa !27
  %378 = zext i8 %377 to i32
  %379 = getelementptr inbounds i8, ptr %348, i64 7
  %380 = load i8, ptr %379, align 1, !tbaa !27
  %381 = zext i8 %380 to i32
  %382 = shl nuw i32 %378, 24
  %383 = shl nuw nsw i32 %381, 16
  %384 = or disjoint i32 %383, %382
  %385 = ashr exact i32 %384, 16
  br label %386

386:                                              ; preds = %363, %371
  %387 = phi i64 [ 8, %371 ], [ 6, %363 ]
  %388 = phi i32 [ %375, %371 ], [ %367, %363 ]
  %389 = phi i32 [ %385, %371 ], [ %370, %363 ]
  %390 = getelementptr inbounds i8, ptr %348, i64 %387
  store ptr %390, ptr %7, align 8, !tbaa !44
  %391 = sitofp i32 %388 to float
  %392 = fdiv float %391, %329
  %393 = fpext float %392 to double
  %394 = sitofp i32 %389 to float
  %395 = fdiv float %394, %329
  %396 = fpext float %395 to double
  %397 = call i32 @gs_point_transform2fixed(ptr noundef %1, double noundef %393, double noundef %396, ptr noundef nonnull %10) #6
  %398 = load i64, ptr %10, align 8, !tbaa !48
  store i64 %398, ptr %331, align 8, !tbaa !57
  %399 = sitofp i64 %398 to double
  %400 = fmul double %399, 0x3F30000000000000
  %401 = fptrunc double %400 to float
  store float %401, ptr %332, align 8, !tbaa !59
  %402 = load i64, ptr %333, align 8, !tbaa !50
  store i64 %402, ptr %334, align 8, !tbaa !60
  %403 = sitofp i64 %402 to double
  %404 = fmul double %403, 0x3F30000000000000
  %405 = fptrunc double %404 to float
  store float %405, ptr %335, align 4, !tbaa !61
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #6
  br label %411

406:                                              ; preds = %347
  %407 = and i32 %359, 1
  %408 = icmp eq i32 %407, 0
  %409 = select i1 %408, i64 2, i64 4
  %410 = getelementptr inbounds i8, ptr %360, i64 %409
  store ptr %410, ptr %7, align 8, !tbaa !44
  br label %411

411:                                              ; preds = %406, %386
  %412 = and i32 %359, 8
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %429, label %414

414:                                              ; preds = %411
  %415 = load ptr, ptr %7, align 8, !tbaa !44
  %416 = load i8, ptr %415, align 1, !tbaa !27
  %417 = zext i8 %416 to i32
  %418 = getelementptr inbounds i8, ptr %415, i64 1
  %419 = load i8, ptr %418, align 1, !tbaa !27
  %420 = zext i8 %419 to i32
  %421 = shl nuw i32 %417, 24
  %422 = shl nuw nsw i32 %420, 16
  %423 = or disjoint i32 %422, %421
  %424 = ashr exact i32 %423, 16
  %425 = sitofp i32 %424 to double
  %426 = fmul double %425, 0x3F10000000000000
  %427 = fptrunc double %426 to float
  store float %427, ptr %336, align 4, !tbaa !62
  store float %427, ptr %9, align 4, !tbaa !63
  store float 0.000000e+00, ptr %337, align 4, !tbaa !64
  store float 0.000000e+00, ptr %338, align 4, !tbaa !65
  %428 = getelementptr inbounds i8, ptr %415, i64 2
  store ptr %428, ptr %7, align 8, !tbaa !44
  br label %516

429:                                              ; preds = %411
  %430 = and i32 %359, 64
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %460, label %432

432:                                              ; preds = %429
  %433 = load ptr, ptr %7, align 8, !tbaa !44
  %434 = load i8, ptr %433, align 1, !tbaa !27
  %435 = zext i8 %434 to i32
  %436 = getelementptr inbounds i8, ptr %433, i64 1
  %437 = load i8, ptr %436, align 1, !tbaa !27
  %438 = zext i8 %437 to i32
  %439 = shl nuw i32 %435, 24
  %440 = shl nuw nsw i32 %438, 16
  %441 = or disjoint i32 %440, %439
  %442 = ashr exact i32 %441, 16
  %443 = sitofp i32 %442 to double
  %444 = fmul double %443, 0x3F10000000000000
  %445 = fptrunc double %444 to float
  store float %445, ptr %9, align 4, !tbaa !63
  %446 = getelementptr inbounds i8, ptr %433, i64 2
  %447 = load i8, ptr %446, align 1, !tbaa !27
  %448 = zext i8 %447 to i32
  %449 = getelementptr inbounds i8, ptr %433, i64 3
  %450 = load i8, ptr %449, align 1, !tbaa !27
  %451 = zext i8 %450 to i32
  %452 = shl nuw i32 %448, 24
  %453 = shl nuw nsw i32 %451, 16
  %454 = or disjoint i32 %453, %452
  %455 = ashr exact i32 %454, 16
  %456 = sitofp i32 %455 to double
  %457 = fmul double %456, 0x3F10000000000000
  %458 = fptrunc double %457 to float
  store float %458, ptr %339, align 4, !tbaa !62
  store float 0.000000e+00, ptr %340, align 4, !tbaa !64
  store float 0.000000e+00, ptr %341, align 4, !tbaa !65
  %459 = getelementptr inbounds i8, ptr %433, i64 4
  store ptr %459, ptr %7, align 8, !tbaa !44
  br label %516

460:                                              ; preds = %429
  %461 = icmp sgt i8 %358, -1
  br i1 %461, label %518, label %462

462:                                              ; preds = %460
  %463 = load ptr, ptr %7, align 8, !tbaa !44
  %464 = load i8, ptr %463, align 1, !tbaa !27
  %465 = zext i8 %464 to i32
  %466 = getelementptr inbounds i8, ptr %463, i64 1
  %467 = load i8, ptr %466, align 1, !tbaa !27
  %468 = zext i8 %467 to i32
  %469 = shl nuw i32 %465, 24
  %470 = shl nuw nsw i32 %468, 16
  %471 = or disjoint i32 %470, %469
  %472 = ashr exact i32 %471, 16
  %473 = sitofp i32 %472 to double
  %474 = fmul double %473, 0x3F10000000000000
  %475 = fptrunc double %474 to float
  store float %475, ptr %9, align 4, !tbaa !63
  %476 = getelementptr inbounds i8, ptr %463, i64 2
  %477 = load i8, ptr %476, align 1, !tbaa !27
  %478 = zext i8 %477 to i32
  %479 = getelementptr inbounds i8, ptr %463, i64 3
  %480 = load i8, ptr %479, align 1, !tbaa !27
  %481 = zext i8 %480 to i32
  %482 = shl nuw i32 %478, 24
  %483 = shl nuw nsw i32 %481, 16
  %484 = or disjoint i32 %483, %482
  %485 = ashr exact i32 %484, 16
  %486 = sitofp i32 %485 to double
  %487 = fmul double %486, 0x3F10000000000000
  %488 = fptrunc double %487 to float
  store float %488, ptr %342, align 4, !tbaa !65
  %489 = getelementptr inbounds i8, ptr %463, i64 4
  %490 = load i8, ptr %489, align 1, !tbaa !27
  %491 = zext i8 %490 to i32
  %492 = getelementptr inbounds i8, ptr %463, i64 5
  %493 = load i8, ptr %492, align 1, !tbaa !27
  %494 = zext i8 %493 to i32
  %495 = shl nuw i32 %491, 24
  %496 = shl nuw nsw i32 %494, 16
  %497 = or disjoint i32 %496, %495
  %498 = ashr exact i32 %497, 16
  %499 = sitofp i32 %498 to double
  %500 = fmul double %499, 0x3F10000000000000
  %501 = fptrunc double %500 to float
  store float %501, ptr %343, align 4, !tbaa !64
  %502 = getelementptr inbounds i8, ptr %463, i64 6
  %503 = load i8, ptr %502, align 1, !tbaa !27
  %504 = zext i8 %503 to i32
  %505 = getelementptr inbounds i8, ptr %463, i64 7
  %506 = load i8, ptr %505, align 1, !tbaa !27
  %507 = zext i8 %506 to i32
  %508 = shl nuw i32 %504, 24
  %509 = shl nuw nsw i32 %507, 16
  %510 = or disjoint i32 %509, %508
  %511 = ashr exact i32 %510, 16
  %512 = sitofp i32 %511 to double
  %513 = fmul double %512, 0x3F10000000000000
  %514 = fptrunc double %513 to float
  store float %514, ptr %344, align 4, !tbaa !62
  %515 = getelementptr inbounds i8, ptr %463, i64 8
  store ptr %515, ptr %7, align 8, !tbaa !44
  br label %516

516:                                              ; preds = %432, %462, %414
  store float 0.000000e+00, ptr %345, align 4, !tbaa !66
  store float 0.000000e+00, ptr %346, align 4, !tbaa !67
  %517 = call i32 @gs_matrix_multiply(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %8) #6
  br label %518

518:                                              ; preds = %460, %516
  %519 = call fastcc i32 @append_outline(i32 noundef %356, ptr noundef nonnull %8, ptr noundef %2, ptr noundef %3)
  %520 = icmp slt i32 %519, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #6
  %521 = and i32 %359, 32
  %522 = icmp eq i32 %521, 0
  %523 = or i1 %522, %520
  br i1 %523, label %524, label %347, !llvm.loop !68

524:                                              ; preds = %518
  %525 = call i32 @llvm.smin.i32(i32 %519, i32 0)
  br label %526

526:                                              ; preds = %322, %28, %524, %324, %15, %4
  %527 = phi i32 [ %13, %4 ], [ 0, %15 ], [ -15, %324 ], [ %525, %524 ], [ 0, %28 ], [ %323, %322 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6
  ret i32 %527
}

declare ptr @gs_reloc_struct_ptr(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gs_point_transform2fixed(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gs_matrix_multiply(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gs_distance_transform2fixed(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gx_path_add_point(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @gx_path_add_curve_notes(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @gx_path_add_line_notes(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @gx_path_close_subpath_notes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind willreturn memory(argmem: read) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 32}
!6 = !{!"gs_memory_struct_type_s", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!12, !10, i64 344}
!12 = !{!"gs_font_type42_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !13, i64 48, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96, !14, i64 100, !15, i64 104, !17, i64 176, !17, i64 228, !18, i64 280, !21, i64 312, !7, i64 328, !7, i64 332, !23, i64 336}
!13 = !{!"gs_matrix_s", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20}
!14 = !{!"float", !8, i64 0}
!15 = !{!"gs_font_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !16, i64 32, !10, i64 48, !10, i64 56, !10, i64 64}
!16 = !{!"gx_xfont_callbacks_s", !10, i64 0, !10, i64 8}
!17 = !{!"gs_font_name_s", !8, i64 0, !7, i64 48}
!18 = !{!"gs_rect_s", !19, i64 0, !19, i64 16}
!19 = !{!"gs_point_s", !20, i64 0, !20, i64 8}
!20 = !{!"double", !8, i64 0}
!21 = !{!"gs_uid_s", !22, i64 0, !10, i64 8}
!22 = !{!"long", !8, i64 0}
!23 = !{!"gs_type42_data_s", !10, i64 0, !10, i64 8, !10, i64 16, !22, i64 24, !7, i64 32, !7, i64 36, !7, i64 40, !22, i64 48, !7, i64 56, !22, i64 64}
!24 = !{!10, !10, i64 0}
!25 = !{!6, !10, i64 40}
!26 = !{!12, !10, i64 336}
!27 = !{!8, !8, i64 0}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.unroll.disable"}
!30 = !{!12, !22, i64 360}
!31 = !{!12, !7, i64 368}
!32 = !{!12, !7, i64 372}
!33 = !{!12, !7, i64 376}
!34 = !{!12, !22, i64 384}
!35 = !{!12, !7, i64 392}
!36 = !{!12, !22, i64 400}
!37 = !{!12, !20, i64 280}
!38 = !{!12, !20, i64 296}
!39 = !{!12, !20, i64 288}
!40 = !{!12, !20, i64 304}
!41 = !{!12, !10, i64 352}
!42 = !{!43, !7, i64 8}
!43 = !{!"gs_const_string_s", !10, i64 0, !7, i64 8}
!44 = !{!43, !10, i64 0}
!45 = !{!14, !14, i64 0}
!46 = distinct !{!46, !29}
!47 = distinct !{!47, !29}
!48 = !{!49, !22, i64 0}
!49 = !{!"gs_fixed_point_s", !22, i64 0, !22, i64 8}
!50 = !{!49, !22, i64 8}
!51 = !{i64 0, i64 8, !52, i64 8, i64 8, !52}
!52 = !{!22, !22, i64 0}
!53 = !{i64 0, i64 8, !52}
!54 = distinct !{!54, !29}
!55 = !{i64 0, i64 4, !45, i64 4, i64 4, !45, i64 8, i64 4, !45, i64 12, i64 4, !45, i64 16, i64 4, !45, i64 20, i64 4, !45, i64 24, i64 8, !52, i64 32, i64 8, !52, i64 40, i64 4, !56}
!56 = !{!7, !7, i64 0}
!57 = !{!58, !22, i64 24}
!58 = !{!"gs_matrix_fixed_s", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !22, i64 24, !22, i64 32, !7, i64 40}
!59 = !{!58, !14, i64 16}
!60 = !{!58, !22, i64 32}
!61 = !{!58, !14, i64 20}
!62 = !{!13, !14, i64 12}
!63 = !{!13, !14, i64 0}
!64 = !{!13, !14, i64 8}
!65 = !{!13, !14, i64 4}
!66 = !{!13, !14, i64 16}
!67 = !{!13, !14, i64 20}
!68 = distinct !{!68, !29}
