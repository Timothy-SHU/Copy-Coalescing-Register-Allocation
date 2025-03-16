; ModuleID = 'zfont0.c'
source_filename = "zfont0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.op_def = type { ptr, ptr }
%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.gs_type0_data_s = type { i32, i8, i8, i8, %struct.gs_const_string_s, i32, i32, ptr, i32, ptr, i32, ptr }
%struct.gs_const_string_s = type { ptr, i32 }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.build_proc_refs_s = type { %struct.ref_s, %struct.ref_s }
%struct.gs_font_s = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_font_procs_s = type { ptr, ptr, ptr, ptr, %struct.gx_xfont_callbacks_s, ptr, ptr, ptr }
%struct.gx_xfont_callbacks_s = type { ptr, ptr }
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.gs_font_type0_s = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_type0_data_s }
%struct.font_data_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %union._fs }
%union._fs = type { %struct._f1 }
%struct._f1 = type { %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@zfont0_op_defs.op_defs_ = internal constant [2 x %struct.op_def] [%struct.op_def { ptr @.str, ptr @zbuildfont0 }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [13 x i8] c"2.buildfont0\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"FMapType\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"FDepVector\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"EscChar\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"ShiftIn\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"ShiftOut\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"SubsVector\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"FID\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"%Type0BuildChar\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"%Type0BuildGlyph\00", align 1
@st_gs_font_type0 = external constant %struct.gs_memory_struct_type_s, align 8
@.str.10 = private unnamed_addr constant [8 x i8] c"PrefEnc\00", align 1
@gs_imemory = external local_unnamed_addr global %struct.gs_dual_memory_s, align 8
@.str.11 = private unnamed_addr constant [21 x i8] c"buildfont0(Encoding)\00", align 1
@st_gs_font_ptr_element = external constant %struct.gs_memory_struct_type_s, align 8
@.str.12 = private unnamed_addr constant [23 x i8] c"buildfont0(FDepVector)\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"buildfont0(font)\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"ztype0_adjust_matrix\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zfont0_op_defs() local_unnamed_addr #0 {
  ret ptr @zfont0_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal i32 @zbuildfont0(ptr noundef %0) #1 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.gs_type0_data_s, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.ref_s, align 8
  %8 = alloca %struct.ref_s, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca %struct.build_proc_refs_s, align 8
  %13 = alloca %struct.ref_s, align 8
  %14 = alloca %struct.ref_s, align 8
  %15 = alloca %struct.ref_s, align 8
  %16 = alloca ptr, align 8
  %17 = alloca %struct.ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #5
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #5
  %18 = getelementptr inbounds i8, ptr %0, i64 1
  %19 = load i8, ptr %18, align 1, !tbaa !5
  %20 = icmp eq i8 %19, 2
  br i1 %20, label %23, label %21

21:                                               ; preds = %1
  %22 = tail call i32 @check_type_failed(ptr noundef %0) #5
  br label %264

23:                                               ; preds = %1
  %24 = call i32 @dict_find_string(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %2) #5
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %264, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %2, align 8, !tbaa !8
  %28 = getelementptr inbounds i8, ptr %27, i64 1
  %29 = load i8, ptr %28, align 1, !tbaa !5
  %30 = icmp eq i8 %29, 11
  br i1 %30, label %31, label %264

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.ref_s, ptr %27, i64 0, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !5
  %34 = add i64 %33, -10
  %35 = icmp ult i64 %34, -8
  br i1 %35, label %264, label %36

36:                                               ; preds = %31
  %37 = call i32 @dict_find_string(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %4) #5
  %38 = icmp slt i32 %37, 1
  br i1 %38, label %264, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr %4, align 8, !tbaa !8
  %41 = load i16, ptr %40, align 8, !tbaa !10
  %42 = and i16 %41, 15360
  %43 = icmp eq i16 %42, 1024
  br i1 %43, label %44, label %264

44:                                               ; preds = %39
  %45 = load ptr, ptr %2, align 8, !tbaa !8
  %46 = getelementptr inbounds %struct.ref_s, ptr %45, i64 0, i32 1
  %47 = load i64, ptr %46, align 8, !tbaa !5
  %48 = trunc i64 %47 to i32
  store i32 %48, ptr %3, align 8, !tbaa !14
  %49 = getelementptr inbounds %struct.tas_s, ptr %40, i64 0, i32 1
  %50 = load i16, ptr %49, align 2, !tbaa !18
  %51 = zext i16 %50 to i32
  %52 = getelementptr inbounds %struct.gs_type0_data_s, ptr %3, i64 0, i32 10
  store i32 %51, ptr %52, align 8, !tbaa !19
  %53 = icmp eq i16 %50, 0
  br i1 %53, label %85, label %59

54:                                               ; preds = %82
  %55 = add nuw nsw i64 %60, 1
  %56 = load i32, ptr %52, align 8, !tbaa !19
  %57 = zext i32 %56 to i64
  %58 = icmp ult i64 %55, %57
  br i1 %58, label %59, label %85, !llvm.loop !20

59:                                               ; preds = %44, %54
  %60 = phi i64 [ %55, %54 ], [ 0, %44 ]
  %61 = phi i32 [ %84, %54 ], [ undef, %44 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #5
  %62 = load ptr, ptr %4, align 8, !tbaa !8
  %63 = call i32 @array_get(ptr noundef %62, i64 noundef %60, ptr noundef nonnull %8) #5
  %64 = call i32 @font_param(ptr noundef nonnull %8, ptr noundef nonnull %9) #5
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %82, label %66

66:                                               ; preds = %59
  %67 = load ptr, ptr %9, align 8, !tbaa !8
  %68 = getelementptr inbounds %struct.gs_font_s, ptr %67, i64 0, i32 7
  %69 = load i32, ptr %68, align 8, !tbaa !22
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.gs_font_type0_s, ptr %67, i64 0, i32 18
  %73 = load i32, ptr %72, align 8, !tbaa !29
  %74 = freeze i32 %73
  %75 = add i32 %74, -7
  %76 = icmp ult i32 %75, 2
  br i1 %76, label %82, label %77

77:                                               ; preds = %71
  %78 = icmp eq i32 %74, 3
  br i1 %78, label %79, label %81

79:                                               ; preds = %77
  %80 = load i32, ptr %3, align 8
  switch i32 %80, label %82 [
    i32 7, label %81
    i32 3, label %81
  ]

81:                                               ; preds = %79, %79, %77
  br label %82

82:                                               ; preds = %81, %79, %71, %66, %59
  %83 = phi i1 [ false, %59 ], [ true, %66 ], [ true, %81 ], [ false, %79 ], [ false, %71 ]
  %84 = phi i32 [ %64, %59 ], [ %61, %66 ], [ %61, %81 ], [ -10, %79 ], [ -10, %71 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #5
  br i1 %83, label %54, label %264

85:                                               ; preds = %54, %44
  %86 = phi i32 [ 0, %44 ], [ %64, %54 ]
  %87 = phi i32 [ undef, %44 ], [ %84, %54 ]
  %88 = load i32, ptr %3, align 8, !tbaa !14
  switch i32 %88, label %138 [
    i32 3, label %89
    i32 7, label %89
    i32 8, label %92
    i32 6, label %99
    i32 9, label %134
  ]

89:                                               ; preds = %85, %85
  %90 = getelementptr inbounds %struct.gs_type0_data_s, ptr %3, i64 0, i32 1
  %91 = call fastcc i32 @ensure_char_entry(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %90, i32 noundef 255)
  br label %138

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.gs_type0_data_s, ptr %3, i64 0, i32 2
  %94 = call fastcc i32 @ensure_char_entry(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %93, i32 noundef 15)
  %95 = icmp sgt i32 %94, -1
  br i1 %95, label %96, label %138

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.gs_type0_data_s, ptr %3, i64 0, i32 3
  %98 = call fastcc i32 @ensure_char_entry(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull %97, i32 noundef 14)
  br label %138

99:                                               ; preds = %85
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #5
  %100 = call i32 @dict_find_string(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull %10) #5
  %101 = icmp slt i32 %100, 1
  br i1 %101, label %131, label %102

102:                                              ; preds = %99
  %103 = load ptr, ptr %10, align 8, !tbaa !8
  %104 = getelementptr inbounds i8, ptr %103, i64 1
  %105 = load i8, ptr %104, align 1, !tbaa !5
  %106 = icmp eq i8 %105, 18
  br i1 %106, label %107, label %131

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.tas_s, ptr %103, i64 0, i32 1
  %109 = load i16, ptr %108, align 2, !tbaa !18
  %110 = zext i16 %109 to i32
  %111 = icmp eq i16 %109, 0
  br i1 %111, label %131, label %112

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.ref_s, ptr %103, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !5
  %115 = load i8, ptr %114, align 1, !tbaa !5
  %116 = zext i8 %115 to i32
  %117 = add nuw nsw i32 %116, 1
  %118 = getelementptr inbounds %struct.gs_type0_data_s, ptr %3, i64 0, i32 6
  store i32 %117, ptr %118, align 4, !tbaa !31
  %119 = icmp ugt i8 %115, 3
  br i1 %119, label %131, label %120

120:                                              ; preds = %112
  %121 = add nsw i32 %110, -1
  %122 = urem i32 %121, %117
  %123 = udiv i32 %121, %117
  %124 = icmp eq i32 %122, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.gs_type0_data_s, ptr %3, i64 0, i32 5
  store i32 %123, ptr %126, align 8, !tbaa !32
  %127 = load ptr, ptr %113, align 8, !tbaa !5
  %128 = getelementptr inbounds i8, ptr %127, i64 1
  %129 = getelementptr inbounds %struct.gs_type0_data_s, ptr %3, i64 0, i32 4
  store ptr %128, ptr %129, align 8, !tbaa !33
  %130 = getelementptr inbounds %struct.gs_type0_data_s, ptr %3, i64 0, i32 4, i32 1
  store i32 %121, ptr %130, align 8, !tbaa !34
  br label %131

131:                                              ; preds = %99, %102, %107, %112, %120, %125
  %132 = phi i1 [ true, %125 ], [ false, %120 ], [ false, %112 ], [ false, %107 ], [ false, %102 ], [ false, %99 ]
  %133 = phi i32 [ %87, %125 ], [ -10, %120 ], [ -10, %112 ], [ -10, %107 ], [ -10, %102 ], [ -10, %99 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #5
  br i1 %132, label %138, label %264

134:                                              ; preds = %85
  %135 = getelementptr inbounds %struct.gs_type0_data_s, ptr %3, i64 0, i32 11
  %136 = load ptr, ptr %4, align 8, !tbaa !8
  %137 = call i32 @ztype0_get_cmap(ptr noundef nonnull %135, ptr noundef %136, ptr noundef %0) #5
  br label %138

138:                                              ; preds = %85, %131, %92, %96, %134, %89
  %139 = phi i32 [ %86, %85 ], [ %137, %134 ], [ %86, %131 ], [ %98, %96 ], [ %94, %92 ], [ %91, %89 ]
  %140 = phi i32 [ %87, %85 ], [ %87, %134 ], [ %133, %131 ], [ %87, %96 ], [ %87, %92 ], [ %87, %89 ]
  %141 = icmp slt i32 %139, 0
  br i1 %141, label %264, label %142

142:                                              ; preds = %138
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #5
  %143 = call i32 @dict_find_string(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %11) #5
  %144 = icmp slt i32 %143, 1
  br i1 %144, label %145, label %146

145:                                              ; preds = %142
  store i16 3584, ptr %7, align 8, !tbaa !10
  br label %148

146:                                              ; preds = %142
  %147 = load ptr, ptr %11, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %147, i64 16, i1 false), !tbaa.struct !35
  br label %148

148:                                              ; preds = %146, %145
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #5
  %149 = call i32 @build_proc_name_refs(ptr noundef nonnull %12, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #5
  %150 = icmp sgt i32 %149, -1
  br i1 %150, label %151, label %153

151:                                              ; preds = %148
  %152 = call i32 @build_gs_font(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 0, ptr noundef nonnull @st_gs_font_type0, ptr noundef nonnull %12, i32 noundef 0) #5
  br label %153

153:                                              ; preds = %148, %151
  %154 = phi i32 [ %152, %151 ], [ %149, %148 ]
  %155 = phi i32 [ %140, %151 ], [ %149, %148 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #5
  br i1 %150, label %156, label %264

156:                                              ; preds = %153
  %157 = icmp eq i32 %154, 0
  br i1 %157, label %158, label %264

158:                                              ; preds = %156
  %159 = load ptr, ptr %6, align 8, !tbaa !8
  %160 = getelementptr inbounds %struct.gs_font_type0_s, ptr %159, i64 0, i32 15
  store ptr @gs_type0_init_fstack, ptr %160, align 8, !tbaa !40
  %161 = getelementptr inbounds %struct.gs_font_type0_s, ptr %159, i64 0, i32 15, i32 1
  store ptr null, ptr %161, align 8, !tbaa !41
  %162 = getelementptr inbounds %struct.gs_font_type0_s, ptr %159, i64 0, i32 15, i32 5
  store ptr @ztype0_define_font, ptr %162, align 8, !tbaa !42
  %163 = getelementptr inbounds %struct.gs_font_type0_s, ptr %159, i64 0, i32 15, i32 6
  store ptr @ztype0_make_font, ptr %163, align 8, !tbaa !43
  %164 = getelementptr inbounds %struct.gs_font_type0_s, ptr %159, i64 0, i32 15, i32 7
  store ptr @gs_type0_next_glyph, ptr %164, align 8, !tbaa !44
  %165 = call i32 @dict_find_string(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull %5) #5
  %166 = icmp slt i32 %165, 1
  br i1 %166, label %167, label %173

167:                                              ; preds = %158
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #5
  %168 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !45
  %169 = trunc i32 %168 to i16
  %170 = add i16 %169, 3584
  store i16 %170, ptr %13, align 8, !tbaa !10
  %171 = call i32 @dict_put_string(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull %13) #5
  %172 = icmp slt i32 %171, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #5
  br i1 %172, label %248, label %173

173:                                              ; preds = %167, %158
  %174 = phi i32 [ %171, %167 ], [ 0, %158 ]
  %175 = load ptr, ptr %6, align 8, !tbaa !8
  %176 = getelementptr inbounds %struct.gs_font_type0_s, ptr %175, i64 0, i32 5
  %177 = load ptr, ptr %176, align 8, !tbaa !47
  %178 = getelementptr inbounds %struct.font_data_s, ptr %177, i64 0, i32 3
  %179 = getelementptr inbounds %struct.font_data_s, ptr %177, i64 0, i32 3, i32 0, i32 1
  %180 = load i16, ptr %179, align 2, !tbaa !48
  %181 = zext i16 %180 to i32
  %182 = getelementptr inbounds %struct.gs_type0_data_s, ptr %3, i64 0, i32 8
  store i32 %181, ptr %182, align 8, !tbaa !50
  %183 = load ptr, ptr @gs_imemory, align 8, !tbaa !51
  %184 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %183, i64 0, i32 4
  %185 = load ptr, ptr %184, align 8, !tbaa !52
  %186 = call ptr %185(ptr noundef %183, i32 noundef %181, i32 noundef 4, ptr noundef nonnull @.str.11) #5
  %187 = getelementptr inbounds %struct.gs_type0_data_s, ptr %3, i64 0, i32 7
  store ptr %186, ptr %187, align 8, !tbaa !55
  %188 = icmp eq ptr %186, null
  br i1 %188, label %248, label %189

189:                                              ; preds = %173
  %190 = load i32, ptr %182, align 8, !tbaa !50
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %218, label %192

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, ptr %14, i64 1
  %194 = getelementptr inbounds %struct.ref_s, ptr %14, i64 0, i32 1
  br label %195

195:                                              ; preds = %192, %213
  %196 = phi i64 [ 0, %192 ], [ %214, %213 ]
  %197 = phi i32 [ %174, %192 ], [ %211, %213 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #5
  %198 = call i32 @array_get(ptr noundef nonnull %178, i64 noundef %196, ptr noundef nonnull %14) #5
  %199 = load i8, ptr %193, align 1, !tbaa !5
  %200 = icmp eq i8 %199, 11
  br i1 %200, label %201, label %210

201:                                              ; preds = %195
  %202 = load i64, ptr %194, align 8, !tbaa !5
  %203 = load i32, ptr %52, align 8, !tbaa !19
  %204 = zext i32 %203 to i64
  %205 = icmp ult i64 %202, %204
  br i1 %205, label %206, label %210

206:                                              ; preds = %201
  %207 = trunc i64 %202 to i32
  %208 = load ptr, ptr %187, align 8, !tbaa !55
  %209 = getelementptr inbounds i32, ptr %208, i64 %196
  store i32 %207, ptr %209, align 4, !tbaa !56
  br label %210

210:                                              ; preds = %201, %195, %206
  %211 = phi i32 [ %197, %206 ], [ -20, %195 ], [ -15, %201 ]
  %212 = phi i32 [ 0, %206 ], [ 6, %195 ], [ 6, %201 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #5
  switch i32 %212, label %264 [
    i32 0, label %213
    i32 6, label %248
  ]

213:                                              ; preds = %210
  %214 = add nuw nsw i64 %196, 1
  %215 = load i32, ptr %182, align 8, !tbaa !50
  %216 = zext i32 %215 to i64
  %217 = icmp ult i64 %214, %216
  br i1 %217, label %195, label %218, !llvm.loop !57

218:                                              ; preds = %213, %189
  %219 = load ptr, ptr @gs_imemory, align 8, !tbaa !51
  %220 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %219, i64 0, i32 6
  %221 = load ptr, ptr %220, align 8, !tbaa !58
  %222 = load i32, ptr %52, align 8, !tbaa !19
  %223 = call ptr %221(ptr noundef %219, i32 noundef %222, ptr noundef nonnull @st_gs_font_ptr_element, ptr noundef nonnull @.str.12) #5
  %224 = getelementptr inbounds %struct.gs_type0_data_s, ptr %3, i64 0, i32 9
  store ptr %223, ptr %224, align 8, !tbaa !59
  %225 = icmp eq ptr %223, null
  br i1 %225, label %248, label %226

226:                                              ; preds = %218
  %227 = load i32, ptr %52, align 8, !tbaa !19
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %243, label %229

229:                                              ; preds = %226, %229
  %230 = phi i64 [ %239, %229 ], [ 0, %226 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #5
  %231 = load ptr, ptr %4, align 8, !tbaa !8
  %232 = call i32 @array_get(ptr noundef %231, i64 noundef %230, ptr noundef nonnull %15) #5
  %233 = call i32 @dict_find_string(ptr noundef nonnull %15, ptr noundef nonnull @.str.7, ptr noundef nonnull %16) #5
  %234 = load ptr, ptr %16, align 8, !tbaa !8
  %235 = getelementptr inbounds %struct.ref_s, ptr %234, i64 0, i32 1
  %236 = load ptr, ptr %235, align 8, !tbaa !5
  %237 = load ptr, ptr %224, align 8, !tbaa !59
  %238 = getelementptr inbounds ptr, ptr %237, i64 %230
  store ptr %236, ptr %238, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #5
  %239 = add nuw nsw i64 %230, 1
  %240 = load i32, ptr %52, align 8, !tbaa !19
  %241 = zext i32 %240 to i64
  %242 = icmp ult i64 %239, %241
  br i1 %242, label %229, label %243, !llvm.loop !60

243:                                              ; preds = %229, %226
  %244 = load ptr, ptr %6, align 8, !tbaa !8
  %245 = getelementptr inbounds %struct.gs_font_type0_s, ptr %244, i64 0, i32 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %245, ptr noundef nonnull align 8 dereferenceable(72) %3, i64 72, i1 false), !tbaa.struct !61
  %246 = call i32 @define_gs_font(ptr noundef %244) #5
  %247 = icmp sgt i32 %246, -1
  br i1 %247, label %264, label %248

248:                                              ; preds = %210, %167, %218, %173, %243
  %249 = phi i32 [ %171, %167 ], [ %246, %243 ], [ -25, %173 ], [ -25, %218 ], [ %211, %210 ]
  %250 = getelementptr inbounds i8, ptr %7, i64 1
  %251 = load i8, ptr %250, align 1, !tbaa !5
  %252 = icmp eq i8 %251, 14
  br i1 %252, label %253, label %256

253:                                              ; preds = %248
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #5
  %254 = call i32 @name_enter_string(ptr noundef nonnull @.str.7, ptr noundef nonnull %17) #5
  %255 = call i32 @dict_undef(ptr noundef %0, ptr noundef nonnull %17) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #5
  br label %258

256:                                              ; preds = %248
  %257 = call i32 @dict_put_string(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %7) #5
  br label %258

258:                                              ; preds = %256, %253
  %259 = load ptr, ptr %6, align 8, !tbaa !8
  %260 = getelementptr inbounds %struct.gs_font_type0_s, ptr %259, i64 0, i32 2
  %261 = load ptr, ptr %260, align 8, !tbaa !62
  %262 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %261, i64 0, i32 11
  %263 = load ptr, ptr %262, align 8, !tbaa !63
  call void %263(ptr noundef %261, ptr noundef %259, ptr noundef nonnull @.str.13) #5
  br label %264

264:                                              ; preds = %82, %210, %243, %156, %138, %23, %26, %31, %36, %39, %131, %153, %258, %21
  %265 = phi i32 [ %249, %258 ], [ %155, %153 ], [ %133, %131 ], [ %22, %21 ], [ -10, %39 ], [ -10, %36 ], [ -10, %31 ], [ -10, %26 ], [ -10, %23 ], [ %139, %138 ], [ %154, %156 ], [ %246, %243 ], [ %155, %210 ], [ %84, %82 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #5
  ret i32 %265
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #3

declare i32 @dict_find_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @array_get(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @font_param(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ensure_char_entry(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) unnamed_addr #1 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  %7 = call i32 @dict_find_string(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #5
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %9, label %14

9:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #5
  %10 = zext nneg i32 %3 to i64
  %11 = getelementptr inbounds %struct.ref_s, ptr %6, i64 0, i32 1
  store i64 %10, ptr %11, align 8, !tbaa !5
  store i16 2816, ptr %6, align 8, !tbaa !10
  %12 = trunc i32 %3 to i8
  store i8 %12, ptr %2, align 1, !tbaa !5
  %13 = call i32 @dict_put_string(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #5
  br label %25

14:                                               ; preds = %4
  %15 = load ptr, ptr %5, align 8, !tbaa !8
  %16 = getelementptr inbounds i8, ptr %15, i64 1
  %17 = load i8, ptr %16, align 1, !tbaa !5
  %18 = icmp eq i8 %17, 11
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.ref_s, ptr %15, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !5
  %22 = icmp ugt i64 %21, 255
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = trunc i64 %21 to i8
  store i8 %24, ptr %2, align 1, !tbaa !5
  br label %25

25:                                               ; preds = %19, %14, %23, %9
  %26 = phi i32 [ %13, %9 ], [ 0, %23 ], [ -20, %14 ], [ -15, %19 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  ret i32 %26
}

declare i32 @ztype0_get_cmap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare i32 @build_proc_name_refs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @build_gs_font(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @gs_type0_init_fstack(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal i32 @ztype0_define_font(ptr noundef %0, ptr noundef %1) #1 {
  %3 = alloca %struct.ref_s, align 8
  %4 = getelementptr inbounds %struct.gs_font_type0_s, ptr %1, i64 0, i32 18, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = tail call i32 @gs_type0_define_font(ptr noundef %0, ptr noundef %1) #5
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %43, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !tbaa !64
  %10 = icmp eq ptr %9, %5
  br i1 %10, label %43, label %11

11:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5
  %12 = getelementptr inbounds %struct.gs_font_type0_s, ptr %1, i64 0, i32 18, i32 10
  %13 = load i32, ptr %12, align 8, !tbaa !65
  %14 = load ptr, ptr @gs_imemory, align 8, !tbaa !51
  %15 = call i32 @gs_alloc_ref_array(ptr noundef %14, ptr noundef nonnull %3, i32 noundef 96, i32 noundef %13, ptr noundef nonnull @.str.14) #5
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %41, label %17

17:                                               ; preds = %11
  %18 = icmp eq i32 %13, 0
  br i1 %18, label %37, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.ref_s, ptr %3, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !5
  %22 = zext i32 %13 to i64
  br label %23

23:                                               ; preds = %23, %19
  %24 = phi i64 [ 0, %19 ], [ %34, %23 ]
  %25 = phi ptr [ %21, %19 ], [ %35, %23 ]
  %26 = getelementptr inbounds ptr, ptr %9, i64 %24
  %27 = load ptr, ptr %26, align 8, !tbaa !8
  %28 = getelementptr inbounds %struct.gs_font_s, ptr %27, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull align 8 dereferenceable(16) %29, i64 16, i1 false), !tbaa.struct !35
  %30 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !45
  %31 = load i16, ptr %25, align 8, !tbaa !10
  %32 = trunc i32 %30 to i16
  %33 = or i16 %31, %32
  store i16 %33, ptr %25, align 8, !tbaa !10
  %34 = add nuw nsw i64 %24, 1
  %35 = getelementptr inbounds %struct.ref_s, ptr %25, i64 1
  %36 = icmp eq i64 %34, %22
  br i1 %36, label %37, label %23, !llvm.loop !67

37:                                               ; preds = %23, %17
  %38 = getelementptr inbounds %struct.gs_font_type0_s, ptr %1, i64 0, i32 5
  %39 = load ptr, ptr %38, align 8, !tbaa !47
  %40 = call i32 @dict_put_string(ptr noundef %39, ptr noundef nonnull @.str.2, ptr noundef nonnull %3) #5
  br label %41

41:                                               ; preds = %11, %37
  %42 = phi i32 [ %40, %37 ], [ %15, %11 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5
  br label %43

43:                                               ; preds = %2, %8, %41
  %44 = phi i32 [ %42, %41 ], [ %6, %8 ], [ %6, %2 ]
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define internal i32 @ztype0_make_font(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #1 {
  %5 = alloca %struct.ref_s, align 8
  %6 = load ptr, ptr %3, align 8, !tbaa !8
  %7 = getelementptr inbounds %struct.gs_font_type0_s, ptr %6, i64 0, i32 18, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !64
  %9 = tail call i32 @zdefault_make_font(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) #5
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %51, label %11

11:                                               ; preds = %4
  %12 = tail call i32 @gs_type0_make_font(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) #5
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %51, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %3, align 8, !tbaa !8
  %16 = getelementptr inbounds %struct.gs_font_type0_s, ptr %15, i64 0, i32 18, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !64
  %18 = icmp eq ptr %17, %8
  br i1 %18, label %51, label %19

19:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #5
  %20 = getelementptr inbounds %struct.gs_font_type0_s, ptr %15, i64 0, i32 18, i32 10
  %21 = load i32, ptr %20, align 8, !tbaa !65
  %22 = load ptr, ptr @gs_imemory, align 8, !tbaa !51
  %23 = call i32 @gs_alloc_ref_array(ptr noundef %22, ptr noundef nonnull %5, i32 noundef 96, i32 noundef %21, ptr noundef nonnull @.str.14) #5
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %49, label %25

25:                                               ; preds = %19
  %26 = icmp eq i32 %21, 0
  br i1 %26, label %45, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.ref_s, ptr %5, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !5
  %30 = zext i32 %21 to i64
  br label %31

31:                                               ; preds = %31, %27
  %32 = phi i64 [ 0, %27 ], [ %42, %31 ]
  %33 = phi ptr [ %29, %27 ], [ %43, %31 ]
  %34 = getelementptr inbounds ptr, ptr %17, i64 %32
  %35 = load ptr, ptr %34, align 8, !tbaa !8
  %36 = getelementptr inbounds %struct.gs_font_s, ptr %35, i64 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %33, ptr noundef nonnull align 8 dereferenceable(16) %37, i64 16, i1 false), !tbaa.struct !35
  %38 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !45
  %39 = load i16, ptr %33, align 8, !tbaa !10
  %40 = trunc i32 %38 to i16
  %41 = or i16 %39, %40
  store i16 %41, ptr %33, align 8, !tbaa !10
  %42 = add nuw nsw i64 %32, 1
  %43 = getelementptr inbounds %struct.ref_s, ptr %33, i64 1
  %44 = icmp eq i64 %42, %30
  br i1 %44, label %45, label %31, !llvm.loop !67

45:                                               ; preds = %31, %25
  %46 = getelementptr inbounds %struct.gs_font_type0_s, ptr %15, i64 0, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !47
  %48 = call i32 @dict_put_string(ptr noundef %47, ptr noundef nonnull @.str.2, ptr noundef nonnull %5) #5
  br label %49

49:                                               ; preds = %19, %45
  %50 = phi i32 [ %48, %45 ], [ %23, %19 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #5
  br label %51

51:                                               ; preds = %14, %11, %4, %49
  %52 = phi i32 [ %50, %49 ], [ %9, %4 ], [ %12, %11 ], [ 0, %14 ]
  ret i32 %52
}

declare i32 @gs_type0_next_glyph(ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @dict_put_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @define_gs_font(ptr noundef) local_unnamed_addr #3

declare i32 @name_enter_string(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dict_undef(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gs_type0_define_font(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gs_alloc_ref_array(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @zdefault_make_font(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gs_type0_make_font(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !13, i64 0}
!11 = !{!"ref_s", !12, i64 0, !6, i64 8}
!12 = !{!"tas_s", !13, i64 0, !13, i64 2}
!13 = !{!"short", !6, i64 0}
!14 = !{!15, !16, i64 0}
!15 = !{!"gs_type0_data_s", !16, i64 0, !6, i64 4, !6, i64 5, !6, i64 6, !17, i64 8, !16, i64 24, !16, i64 28, !9, i64 32, !16, i64 40, !9, i64 48, !16, i64 56, !9, i64 64}
!16 = !{!"int", !6, i64 0}
!17 = !{!"gs_const_string_s", !9, i64 0, !16, i64 8}
!18 = !{!11, !13, i64 2}
!19 = !{!15, !16, i64 56}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = !{!23, !16, i64 72}
!23 = !{!"gs_font_s", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !24, i64 48, !16, i64 72, !16, i64 76, !16, i64 80, !16, i64 84, !16, i64 88, !16, i64 92, !16, i64 96, !25, i64 100, !26, i64 104, !28, i64 176, !28, i64 228}
!24 = !{!"gs_matrix_s", !25, i64 0, !25, i64 4, !25, i64 8, !25, i64 12, !25, i64 16, !25, i64 20}
!25 = !{!"float", !6, i64 0}
!26 = !{!"gs_font_procs_s", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !27, i64 32, !9, i64 48, !9, i64 56, !9, i64 64}
!27 = !{!"gx_xfont_callbacks_s", !9, i64 0, !9, i64 8}
!28 = !{!"gs_font_name_s", !6, i64 0, !16, i64 48}
!29 = !{!30, !16, i64 280}
!30 = !{!"gs_font_type0_s", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !24, i64 48, !16, i64 72, !16, i64 76, !16, i64 80, !16, i64 84, !16, i64 88, !16, i64 92, !16, i64 96, !25, i64 100, !26, i64 104, !28, i64 176, !28, i64 228, !15, i64 280}
!31 = !{!15, !16, i64 28}
!32 = !{!15, !16, i64 24}
!33 = !{!15, !9, i64 8}
!34 = !{!15, !16, i64 16}
!35 = !{i64 0, i64 2, !36, i64 2, i64 2, !36, i64 8, i64 8, !37, i64 8, i64 2, !36, i64 8, i64 4, !39, i64 8, i64 8, !37, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8}
!36 = !{!13, !13, i64 0}
!37 = !{!38, !38, i64 0}
!38 = !{!"long", !6, i64 0}
!39 = !{!25, !25, i64 0}
!40 = !{!30, !9, i64 104}
!41 = !{!30, !9, i64 112}
!42 = !{!30, !9, i64 152}
!43 = !{!30, !9, i64 160}
!44 = !{!30, !9, i64 168}
!45 = !{!46, !16, i64 60}
!46 = !{!"gs_dual_memory_s", !9, i64 0, !6, i64 8, !16, i64 40, !16, i64 44, !9, i64 48, !16, i64 56, !16, i64 60}
!47 = !{!30, !9, i64 40}
!48 = !{!49, !13, i64 50}
!49 = !{!"font_data_s", !11, i64 0, !11, i64 16, !11, i64 32, !11, i64 48, !11, i64 64, !6, i64 80}
!50 = !{!15, !16, i64 40}
!51 = !{!46, !9, i64 0}
!52 = !{!53, !9, i64 32}
!53 = !{!"gs_memory_s", !54, i64 0}
!54 = !{!"gs_memory_procs_s", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152}
!55 = !{!15, !9, i64 32}
!56 = !{!16, !16, i64 0}
!57 = distinct !{!57, !21}
!58 = !{!53, !9, i64 48}
!59 = !{!15, !9, i64 48}
!60 = distinct !{!60, !21}
!61 = !{i64 0, i64 4, !56, i64 4, i64 1, !5, i64 5, i64 1, !5, i64 6, i64 1, !5, i64 8, i64 8, !8, i64 16, i64 4, !56, i64 24, i64 4, !56, i64 28, i64 4, !56, i64 32, i64 8, !8, i64 40, i64 4, !56, i64 48, i64 8, !8, i64 56, i64 4, !56, i64 64, i64 8, !8}
!62 = !{!30, !9, i64 16}
!63 = !{!53, !9, i64 88}
!64 = !{!30, !9, i64 328}
!65 = !{!30, !16, i64 336}
!66 = !{!23, !9, i64 40}
!67 = distinct !{!67, !21}
