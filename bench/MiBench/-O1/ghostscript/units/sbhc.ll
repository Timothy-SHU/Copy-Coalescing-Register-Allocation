; ModuleID = 'sbhc.c'
source_filename = "sbhc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_template_s = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.stream_state_s = type { ptr, ptr, ptr }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_BHCE_state_s = type { ptr, ptr, ptr, i32, i32, i32, %struct.hc_definition_s, i32, i32, i32, %struct.hce_table_s }
%struct.hc_definition_s = type { ptr, i32, ptr, i32 }
%struct.hce_table_s = type { i32, ptr }
%struct.stream_cursor_read_s = type { ptr, ptr, ptr }
%struct.stream_cursor_write_s = type { ptr, ptr, ptr }
%struct.stream_hc_state_s = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.hce_code_s = type { i16, i16 }
%struct.stream_BHCD_state_s = type { ptr, ptr, ptr, i32, i32, i32, %struct.hc_definition_s, i32, i32, i32, %struct.hcd_table_s }
%struct.hcd_table_s = type { i32, i32, ptr }
%struct.hcd_code_s = type { i16, i16 }

@st_BHCE_state = internal constant %struct.gs_memory_struct_type_s { i32 104, ptr @.str, ptr null, ptr null, ptr @bhce_enum_ptrs, ptr @bhce_reloc_ptrs, ptr null }, align 8
@s_BHCE_template = dso_local local_unnamed_addr constant %struct.stream_template_s { ptr @st_BHCE_state, ptr @s_BHCE_init, ptr @s_BHCE_process, i32 1, i32 4, ptr @s_BHCE_release, ptr null, ptr @s_BHCE_reinit }, align 8
@st_BHCD_state = internal constant %struct.gs_memory_struct_type_s { i32 104, ptr @.str.2, ptr null, ptr null, ptr @bhcd_enum_ptrs, ptr @bhcd_reloc_ptrs, ptr null }, align 8
@s_BHCD_template = dso_local local_unnamed_addr constant %struct.stream_template_s { ptr @st_BHCD_state, ptr @s_BHCD_init, ptr @s_BHCD_process, i32 1, i32 1, ptr @s_BHCD_release, ptr null, ptr @s_BHCD_reinit }, align 8
@.str = private unnamed_addr constant [27 x i8] c"BoundedHuffmanEncode state\00", align 1
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"BHCE encode\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"BoundedHuffmanDecode state\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"BHCD decode\00", align 1
@byte_reverse_bits = external local_unnamed_addr constant [256 x i8], align 16
@byte_right_mask = external local_unnamed_addr constant [9 x i8], align 1

; Function Attrs: nounwind uwtable
define internal noundef i32 @s_BHCE_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.stream_state_s, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !10
  %6 = getelementptr inbounds %struct.stream_BHCE_state_s, ptr %0, i64 0, i32 6, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !13
  %8 = tail call ptr %5(ptr noundef %3, i32 noundef %7, i32 noundef 4, ptr noundef nonnull @.str.1) #5
  %9 = getelementptr inbounds %struct.stream_BHCE_state_s, ptr %0, i64 0, i32 10, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !18
  %10 = icmp eq ptr %8, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.stream_BHCE_state_s, ptr %0, i64 0, i32 6
  tail call void @hc_make_encoding(ptr noundef nonnull %8, ptr noundef nonnull %12) #5
  %13 = load i32, ptr %6, align 8, !tbaa !13
  %14 = getelementptr inbounds %struct.stream_BHCE_state_s, ptr %0, i64 0, i32 10
  store i32 %13, ptr %14, align 8, !tbaa !19
  %15 = getelementptr inbounds %struct.stream_BHCE_state_s, ptr %0, i64 0, i32 4
  store i32 0, ptr %15, align 4, !tbaa !20
  %16 = getelementptr inbounds %struct.stream_BHCE_state_s, ptr %0, i64 0, i32 5
  store i32 32, ptr %16, align 8, !tbaa !21
  %17 = getelementptr inbounds %struct.stream_BHCE_state_s, ptr %0, i64 0, i32 9
  store i32 0, ptr %17, align 8, !tbaa !22
  br label %18

18:                                               ; preds = %1, %11
  %19 = phi i32 [ 0, %11 ], [ -2, %1 ]
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @s_BHCE_process(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3) #0 {
  %5 = load ptr, ptr %1, align 8, !tbaa !23
  %6 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !25
  %8 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !26
  %10 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !28
  %12 = getelementptr inbounds i8, ptr %11, i64 -4
  %13 = getelementptr inbounds %struct.stream_BHCE_state_s, ptr %0, i64 0, i32 10, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !18
  %15 = getelementptr inbounds %struct.stream_BHCE_state_s, ptr %0, i64 0, i32 6, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !13
  %17 = getelementptr inbounds %struct.stream_BHCE_state_s, ptr %0, i64 0, i32 8
  %18 = load i32, ptr %17, align 4, !tbaa !29
  %19 = sub i32 %16, %18
  %20 = getelementptr inbounds %struct.stream_BHCE_state_s, ptr %0, i64 0, i32 7
  %21 = load i32, ptr %20, align 8, !tbaa !30
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = add i32 %19, %23
  %25 = icmp ugt i32 %24, 1
  %26 = getelementptr inbounds %struct.stream_BHCE_state_s, ptr %0, i64 0, i32 9
  %27 = load i32, ptr %26, align 8, !tbaa !22
  %28 = getelementptr inbounds %struct.stream_BHCE_state_s, ptr %0, i64 0, i32 4
  %29 = load i32, ptr %28, align 4, !tbaa !20
  %30 = getelementptr inbounds %struct.stream_BHCE_state_s, ptr %0, i64 0, i32 5
  %31 = load i32, ptr %30, align 8, !tbaa !21
  %32 = getelementptr inbounds %struct.stream_hc_state_s, ptr %0, i64 0, i32 3
  %33 = add i32 %18, -2
  %34 = getelementptr inbounds %struct.stream_hc_state_s, ptr %0, i64 0, i32 3
  %35 = add i32 %18, -1
  %36 = getelementptr inbounds %struct.stream_hc_state_s, ptr %0, i64 0, i32 3
  br label %37

37:                                               ; preds = %139, %4
  %38 = phi i32 [ %27, %4 ], [ %140, %139 ]
  %39 = phi i32 [ 0, %4 ], [ %141, %139 ]
  %40 = phi i32 [ %29, %4 ], [ %142, %139 ]
  %41 = phi i32 [ %31, %4 ], [ %143, %139 ]
  %42 = phi ptr [ %9, %4 ], [ %144, %139 ]
  %43 = phi ptr [ %5, %4 ], [ %145, %139 ]
  %44 = icmp ult ptr %43, %7
  %45 = icmp ult ptr %42, %12
  %46 = select i1 %44, i1 %45, i1 false
  br i1 %46, label %47, label %146

47:                                               ; preds = %37
  %48 = getelementptr inbounds i8, ptr %43, i64 1
  %49 = load i8, ptr %48, align 1, !tbaa !31
  %50 = zext i8 %49 to i32
  %51 = icmp ugt i32 %16, %50
  br i1 %51, label %52, label %139

52:                                               ; preds = %47
  %53 = icmp eq i8 %49, 0
  %54 = and i1 %25, %53
  br i1 %54, label %55, label %84

55:                                               ; preds = %52
  %56 = add nsw i32 %38, 1
  %57 = icmp eq i32 %56, %24
  br i1 %57, label %58, label %139, !llvm.loop !32

58:                                               ; preds = %55
  %59 = add i32 %35, %38
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.hce_code_s, ptr %14, i64 %60
  %62 = getelementptr inbounds %struct.hce_code_s, ptr %14, i64 %60, i32 1
  %63 = load i16, ptr %62, align 2, !tbaa !34
  %64 = zext i16 %63 to i32
  %65 = sub nsw i32 %41, %64
  %66 = icmp sgt i32 %65, -1
  br i1 %66, label %67, label %72

67:                                               ; preds = %58
  %68 = load i16, ptr %61, align 2, !tbaa !37
  %69 = zext i16 %68 to i32
  %70 = shl i32 %69, %65
  %71 = add i32 %70, %40
  br label %139, !llvm.loop !32

72:                                               ; preds = %58
  %73 = load i32, ptr %36, align 8, !tbaa !38
  %74 = getelementptr inbounds i8, ptr %42, i64 4
  %75 = load i16, ptr %61, align 2, !tbaa !37
  %76 = zext i16 %75 to i32
  %77 = sub nsw i32 0, %65
  %78 = lshr i32 %76, %77
  %79 = add i32 %78, %40
  tail call void @hc_put_code_proc(i32 noundef %73, ptr noundef nonnull %74, i32 noundef %79) #5
  %80 = load i16, ptr %61, align 2, !tbaa !37
  %81 = zext i16 %80 to i32
  %82 = add nsw i32 %65, 32
  %83 = shl i32 %81, %82
  br label %139, !llvm.loop !32

84:                                               ; preds = %52
  %85 = icmp sgt i32 %38, 0
  br i1 %85, label %86, label %114

86:                                               ; preds = %84
  %87 = icmp eq i32 %38, 1
  %88 = add i32 %33, %38
  %89 = select i1 %87, i32 0, i32 %88
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.hce_code_s, ptr %14, i64 %90
  %92 = getelementptr inbounds %struct.hce_code_s, ptr %14, i64 %90, i32 1
  %93 = load i16, ptr %92, align 2, !tbaa !34
  %94 = zext i16 %93 to i32
  %95 = sub nsw i32 %41, %94
  %96 = icmp sgt i32 %95, -1
  br i1 %96, label %97, label %102

97:                                               ; preds = %86
  %98 = load i16, ptr %91, align 2, !tbaa !37
  %99 = zext i16 %98 to i32
  %100 = shl i32 %99, %95
  %101 = add i32 %100, %40
  br label %139, !llvm.loop !32

102:                                              ; preds = %86
  %103 = load i32, ptr %34, align 8, !tbaa !38
  %104 = getelementptr inbounds i8, ptr %42, i64 4
  %105 = load i16, ptr %91, align 2, !tbaa !37
  %106 = zext i16 %105 to i32
  %107 = sub nsw i32 0, %95
  %108 = lshr i32 %106, %107
  %109 = add i32 %108, %40
  tail call void @hc_put_code_proc(i32 noundef %103, ptr noundef nonnull %104, i32 noundef %109) #5
  %110 = load i16, ptr %91, align 2, !tbaa !37
  %111 = zext i16 %110 to i32
  %112 = add nsw i32 %95, 32
  %113 = shl i32 %111, %112
  br label %139, !llvm.loop !32

114:                                              ; preds = %84
  %115 = zext i8 %49 to i64
  %116 = getelementptr inbounds %struct.hce_code_s, ptr %14, i64 %115
  %117 = getelementptr inbounds %struct.hce_code_s, ptr %14, i64 %115, i32 1
  %118 = load i16, ptr %117, align 2, !tbaa !34
  %119 = zext i16 %118 to i32
  %120 = sub nsw i32 %41, %119
  %121 = icmp sgt i32 %120, -1
  br i1 %121, label %122, label %127

122:                                              ; preds = %114
  %123 = load i16, ptr %116, align 2, !tbaa !37
  %124 = zext i16 %123 to i32
  %125 = shl i32 %124, %120
  %126 = add i32 %125, %40
  br label %139

127:                                              ; preds = %114
  %128 = load i32, ptr %32, align 8, !tbaa !38
  %129 = getelementptr inbounds i8, ptr %42, i64 4
  %130 = load i16, ptr %116, align 2, !tbaa !37
  %131 = zext i16 %130 to i32
  %132 = sub nsw i32 0, %120
  %133 = lshr i32 %131, %132
  %134 = add i32 %133, %40
  tail call void @hc_put_code_proc(i32 noundef %128, ptr noundef nonnull %129, i32 noundef %134) #5
  %135 = load i16, ptr %116, align 2, !tbaa !37
  %136 = zext i16 %135 to i32
  %137 = add nsw i32 %120, 32
  %138 = shl i32 %136, %137
  br label %139

139:                                              ; preds = %122, %127, %97, %102, %67, %72, %55, %47
  %140 = phi i32 [ %38, %47 ], [ %56, %55 ], [ 0, %72 ], [ 0, %67 ], [ 0, %102 ], [ 0, %97 ], [ %38, %127 ], [ %38, %122 ]
  %141 = phi i32 [ -2, %47 ], [ %39, %55 ], [ %39, %72 ], [ %39, %67 ], [ %39, %102 ], [ %39, %97 ], [ %39, %127 ], [ %39, %122 ]
  %142 = phi i32 [ %40, %47 ], [ %40, %55 ], [ %83, %72 ], [ %71, %67 ], [ %113, %102 ], [ %101, %97 ], [ %138, %127 ], [ %126, %122 ]
  %143 = phi i32 [ %41, %47 ], [ %41, %55 ], [ %82, %72 ], [ %65, %67 ], [ %112, %102 ], [ %95, %97 ], [ %137, %127 ], [ %120, %122 ]
  %144 = phi ptr [ %42, %47 ], [ %42, %55 ], [ %74, %72 ], [ %42, %67 ], [ %104, %102 ], [ %42, %97 ], [ %129, %127 ], [ %42, %122 ]
  %145 = phi ptr [ %48, %47 ], [ %48, %55 ], [ %48, %72 ], [ %48, %67 ], [ %43, %102 ], [ %43, %97 ], [ %48, %127 ], [ %48, %122 ]
  br i1 %51, label %37, label %146

146:                                              ; preds = %139, %37
  %147 = phi i32 [ %140, %139 ], [ %38, %37 ]
  %148 = phi i32 [ %141, %139 ], [ %39, %37 ]
  %149 = phi i32 [ %142, %139 ], [ %40, %37 ]
  %150 = phi i32 [ %143, %139 ], [ %41, %37 ]
  %151 = phi ptr [ %144, %139 ], [ %42, %37 ]
  %152 = phi ptr [ %145, %139 ], [ %43, %37 ]
  %153 = icmp ult ptr %151, %12
  %154 = load ptr, ptr %10, align 8, !tbaa !28
  %155 = icmp ne i32 %3, 0
  %156 = icmp eq i32 %148, 0
  %157 = select i1 %155, i1 %153, i1 false
  %158 = select i1 %157, i1 %156, i1 false
  br i1 %158, label %159, label %261

159:                                              ; preds = %146
  %160 = icmp sgt i32 %147, 0
  br i1 %160, label %161, label %203

161:                                              ; preds = %159
  %162 = icmp eq i32 %147, 1
  %163 = add i32 %18, -2
  %164 = add i32 %163, %147
  %165 = select i1 %162, i32 0, i32 %164
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds %struct.hce_code_s, ptr %14, i64 %166
  %168 = load i32, ptr %30, align 8, !tbaa !21
  %169 = getelementptr inbounds %struct.hce_code_s, ptr %14, i64 %166, i32 1
  %170 = load i16, ptr %169, align 2, !tbaa !34
  %171 = zext i16 %170 to i32
  %172 = icmp slt i32 %168, %171
  br i1 %172, label %173, label %182

173:                                              ; preds = %161
  %174 = ptrtoint ptr %154 to i64
  %175 = ptrtoint ptr %151 to i64
  %176 = sub i64 %174, %175
  %177 = xor i32 %168, -1
  %178 = add i32 %171, %177
  %179 = ashr i32 %178, 3
  %180 = sext i32 %179 to i64
  %181 = icmp sgt i64 %176, %180
  br i1 %181, label %182, label %203

182:                                              ; preds = %173, %161
  %183 = sub nsw i32 %150, %171
  %184 = icmp sgt i32 %183, -1
  br i1 %184, label %185, label %190

185:                                              ; preds = %182
  %186 = load i16, ptr %167, align 2, !tbaa !37
  %187 = zext i16 %186 to i32
  %188 = shl i32 %187, %183
  %189 = add i32 %188, %149
  br label %203

190:                                              ; preds = %182
  %191 = getelementptr inbounds %struct.stream_hc_state_s, ptr %0, i64 0, i32 3
  %192 = load i32, ptr %191, align 8, !tbaa !38
  %193 = getelementptr inbounds i8, ptr %151, i64 4
  %194 = load i16, ptr %167, align 2, !tbaa !37
  %195 = zext i16 %194 to i32
  %196 = sub nsw i32 0, %183
  %197 = lshr i32 %195, %196
  %198 = add i32 %197, %149
  tail call void @hc_put_code_proc(i32 noundef %192, ptr noundef nonnull %193, i32 noundef %198) #5
  %199 = load i16, ptr %167, align 2, !tbaa !37
  %200 = zext i16 %199 to i32
  %201 = add nsw i32 %183, 32
  %202 = shl i32 %200, %201
  br label %203

203:                                              ; preds = %173, %190, %185, %159
  %204 = phi i32 [ %147, %159 ], [ %147, %173 ], [ 0, %190 ], [ 0, %185 ]
  %205 = phi i32 [ 0, %159 ], [ 1, %173 ], [ 0, %190 ], [ 0, %185 ]
  %206 = phi i32 [ %149, %159 ], [ %149, %173 ], [ %202, %190 ], [ %189, %185 ]
  %207 = phi i32 [ %150, %159 ], [ %150, %173 ], [ %201, %190 ], [ %183, %185 ]
  %208 = phi ptr [ %151, %159 ], [ %151, %173 ], [ %193, %190 ], [ %151, %185 ]
  %209 = load i32, ptr %20, align 8, !tbaa !30
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %250, label %211

211:                                              ; preds = %203
  %212 = add i32 %16, -1
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds %struct.hce_code_s, ptr %14, i64 %213
  %215 = load i32, ptr %30, align 8, !tbaa !21
  %216 = getelementptr inbounds %struct.hce_code_s, ptr %14, i64 %213, i32 1
  %217 = load i16, ptr %216, align 2, !tbaa !34
  %218 = zext i16 %217 to i32
  %219 = icmp slt i32 %215, %218
  br i1 %219, label %220, label %229

220:                                              ; preds = %211
  %221 = ptrtoint ptr %154 to i64
  %222 = ptrtoint ptr %208 to i64
  %223 = sub i64 %221, %222
  %224 = xor i32 %215, -1
  %225 = add i32 %218, %224
  %226 = ashr i32 %225, 3
  %227 = sext i32 %226 to i64
  %228 = icmp sgt i64 %223, %227
  br i1 %228, label %229, label %253

229:                                              ; preds = %220, %211
  %230 = sub nsw i32 %207, %218
  %231 = icmp sgt i32 %230, -1
  br i1 %231, label %232, label %237

232:                                              ; preds = %229
  %233 = load i16, ptr %214, align 2, !tbaa !37
  %234 = zext i16 %233 to i32
  %235 = shl i32 %234, %230
  %236 = add i32 %235, %206
  br label %253

237:                                              ; preds = %229
  %238 = getelementptr inbounds %struct.stream_hc_state_s, ptr %0, i64 0, i32 3
  %239 = load i32, ptr %238, align 8, !tbaa !38
  %240 = getelementptr inbounds i8, ptr %208, i64 4
  %241 = load i16, ptr %214, align 2, !tbaa !37
  %242 = zext i16 %241 to i32
  %243 = sub nsw i32 0, %230
  %244 = lshr i32 %242, %243
  %245 = add i32 %244, %206
  tail call void @hc_put_code_proc(i32 noundef %239, ptr noundef nonnull %240, i32 noundef %245) #5
  %246 = load i16, ptr %214, align 2, !tbaa !37
  %247 = zext i16 %246 to i32
  %248 = add nsw i32 %230, 32
  %249 = shl i32 %247, %248
  br label %253

250:                                              ; preds = %203
  %251 = icmp ult ptr %208, %154
  %252 = select i1 %251, i32 %205, i32 1
  br label %253

253:                                              ; preds = %250, %237, %232, %220
  %254 = phi i32 [ %205, %232 ], [ %205, %237 ], [ 1, %220 ], [ %252, %250 ]
  %255 = phi i32 [ %236, %232 ], [ %249, %237 ], [ %206, %220 ], [ %206, %250 ]
  %256 = phi i32 [ %230, %232 ], [ %248, %237 ], [ %207, %220 ], [ %207, %250 ]
  %257 = phi ptr [ %208, %232 ], [ %240, %237 ], [ %208, %220 ], [ %208, %250 ]
  %258 = icmp eq i32 %254, 0
  br i1 %258, label %259, label %261

259:                                              ; preds = %253
  %260 = tail call ptr @hc_put_last_bits_proc(ptr noundef %0, ptr noundef %257, i32 noundef %255, i32 noundef %256) #5
  br label %266

261:                                              ; preds = %253, %146
  %262 = phi i32 [ %204, %253 ], [ %147, %146 ]
  %263 = phi i32 [ %255, %253 ], [ %149, %146 ]
  %264 = phi i32 [ %256, %253 ], [ %150, %146 ]
  %265 = phi ptr [ %257, %253 ], [ %151, %146 ]
  store i32 %263, ptr %28, align 4, !tbaa !20
  store i32 %264, ptr %30, align 8, !tbaa !21
  br label %266

266:                                              ; preds = %261, %259
  %267 = phi i32 [ %262, %261 ], [ %204, %259 ]
  %268 = phi ptr [ %265, %261 ], [ %260, %259 ]
  store ptr %152, ptr %1, align 8, !tbaa !23
  store ptr %268, ptr %8, align 8, !tbaa !26
  store i32 %267, ptr %26, align 8, !tbaa !22
  %269 = icmp ne ptr %152, %7
  %270 = zext i1 %269 to i32
  ret i32 %270
}

; Function Attrs: nounwind uwtable
define internal void @s_BHCE_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.stream_state_s, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %3, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = getelementptr inbounds %struct.stream_BHCE_state_s, ptr %0, i64 0, i32 10, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !18
  tail call void %5(ptr noundef %3, ptr noundef %7, ptr noundef nonnull @.str.1) #5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @s_BHCE_reinit(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.stream_BHCE_state_s, ptr %0, i64 0, i32 6, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct.stream_BHCE_state_s, ptr %0, i64 0, i32 10
  store i32 %3, ptr %4, align 8, !tbaa !19
  %5 = getelementptr inbounds %struct.stream_BHCE_state_s, ptr %0, i64 0, i32 4
  store i32 0, ptr %5, align 4, !tbaa !20
  %6 = getelementptr inbounds %struct.stream_BHCE_state_s, ptr %0, i64 0, i32 5
  store i32 32, ptr %6, align 8, !tbaa !21
  %7 = getelementptr inbounds %struct.stream_BHCE_state_s, ptr %0, i64 0, i32 9
  store i32 0, ptr %7, align 8, !tbaa !22
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @s_BHCD_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.stream_BHCD_state_s, ptr %0, i64 0, i32 6
  %3 = getelementptr inbounds %struct.stream_BHCD_state_s, ptr %0, i64 0, i32 6, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !41
  %5 = tail call i32 @llvm.umin.i32(i32 %4, i32 7)
  %6 = getelementptr inbounds %struct.stream_BHCD_state_s, ptr %0, i64 0, i32 10, i32 1
  store i32 %5, ptr %6, align 4, !tbaa !44
  %7 = tail call i32 @hc_sizeof_decoding(ptr noundef nonnull %2, i32 noundef %5) #5
  %8 = getelementptr inbounds %struct.stream_state_s, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %9, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !10
  %12 = tail call ptr %11(ptr noundef %9, i32 noundef %7, i32 noundef 4, ptr noundef nonnull @.str.3) #5
  %13 = getelementptr inbounds %struct.stream_BHCD_state_s, ptr %0, i64 0, i32 10, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !45
  %14 = icmp eq ptr %12, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %1
  tail call void @hc_make_decoding(ptr noundef nonnull %12, ptr noundef nonnull %2, i32 noundef %5) #5
  %16 = getelementptr inbounds %struct.stream_BHCD_state_s, ptr %0, i64 0, i32 6, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !46
  %18 = getelementptr inbounds %struct.stream_BHCD_state_s, ptr %0, i64 0, i32 10
  store i32 %17, ptr %18, align 8, !tbaa !47
  %19 = getelementptr inbounds %struct.stream_BHCD_state_s, ptr %0, i64 0, i32 4
  store i32 0, ptr %19, align 4, !tbaa !48
  %20 = getelementptr inbounds %struct.stream_BHCD_state_s, ptr %0, i64 0, i32 5
  store i32 0, ptr %20, align 8, !tbaa !49
  %21 = getelementptr inbounds %struct.stream_BHCD_state_s, ptr %0, i64 0, i32 9
  store i32 0, ptr %21, align 8, !tbaa !50
  br label %22

22:                                               ; preds = %1, %15
  %23 = phi i32 [ 0, %15 ], [ -2, %1 ]
  ret i32 %23
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @s_BHCD_process(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 %3) #2 {
  %5 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !26
  %7 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !28
  %9 = getelementptr inbounds %struct.stream_BHCD_state_s, ptr %0, i64 0, i32 10, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = getelementptr inbounds %struct.stream_BHCD_state_s, ptr %0, i64 0, i32 10, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !44
  %13 = getelementptr inbounds %struct.stream_BHCD_state_s, ptr %0, i64 0, i32 8
  %14 = load i32, ptr %13, align 4, !tbaa !51
  %15 = getelementptr inbounds %struct.stream_BHCD_state_s, ptr %0, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !52
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.stream_BHCD_state_s, ptr %0, i64 0, i32 6, i32 3
  %20 = load i32, ptr %19, align 8, !tbaa !46
  %21 = add i32 %20, -1
  br label %22

22:                                               ; preds = %4, %18
  %23 = phi i32 [ %21, %18 ], [ -1, %4 ]
  %24 = load ptr, ptr %1, align 8, !tbaa !23
  %25 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %1, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !25
  %27 = getelementptr inbounds %struct.stream_BHCD_state_s, ptr %0, i64 0, i32 4
  %28 = load i32, ptr %27, align 4, !tbaa !48
  %29 = getelementptr inbounds %struct.stream_BHCD_state_s, ptr %0, i64 0, i32 5
  %30 = load i32, ptr %29, align 8, !tbaa !49
  %31 = getelementptr inbounds %struct.stream_BHCD_state_s, ptr %0, i64 0, i32 9
  %32 = load i32, ptr %31, align 8, !tbaa !50
  %33 = ptrtoint ptr %26 to i64
  %34 = getelementptr inbounds %struct.stream_BHCD_state_s, ptr %0, i64 0, i32 3
  %35 = getelementptr inbounds %struct.stream_BHCD_state_s, ptr %0, i64 0, i32 3
  %36 = zext i32 %12 to i64
  %37 = getelementptr inbounds [9 x i8], ptr @byte_right_mask, i64 0, i64 %36
  %38 = ptrtoint ptr %26 to i64
  %39 = ptrtoint ptr %26 to i64
  %40 = getelementptr inbounds %struct.stream_BHCD_state_s, ptr %0, i64 0, i32 3
  %41 = getelementptr inbounds %struct.stream_BHCD_state_s, ptr %0, i64 0, i32 3
  br label %42

42:                                               ; preds = %290, %22
  %43 = phi ptr [ %6, %22 ], [ %291, %290 ]
  %44 = phi i32 [ %32, %22 ], [ %292, %290 ]
  %45 = phi i32 [ %30, %22 ], [ %293, %290 ]
  %46 = phi i32 [ %28, %22 ], [ %294, %290 ]
  %47 = phi ptr [ %24, %22 ], [ %295, %290 ]
  %48 = phi i32 [ 0, %22 ], [ %296, %290 ]
  %49 = icmp sgt i32 %44, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %42, %54
  %51 = phi i32 [ %56, %54 ], [ %44, %42 ]
  %52 = phi ptr [ %55, %54 ], [ %43, %42 ]
  %53 = icmp ult ptr %52, %8
  br i1 %53, label %54, label %298

54:                                               ; preds = %50
  %55 = getelementptr inbounds i8, ptr %52, i64 1
  store i8 0, ptr %55, align 1, !tbaa !31
  %56 = add nsw i32 %51, -1
  %57 = icmp sgt i32 %51, 1
  br i1 %57, label %50, label %58, !llvm.loop !53

58:                                               ; preds = %54, %42
  %59 = phi ptr [ %43, %42 ], [ %55, %54 ]
  %60 = phi i32 [ %44, %42 ], [ %56, %54 ]
  br label %61

61:                                               ; preds = %58, %290
  %62 = phi ptr [ %291, %290 ], [ %59, %58 ]
  %63 = phi i32 [ %292, %290 ], [ %60, %58 ]
  %64 = phi i32 [ %293, %290 ], [ %45, %58 ]
  %65 = phi i32 [ %294, %290 ], [ %46, %58 ]
  %66 = phi ptr [ %295, %290 ], [ %47, %58 ]
  %67 = phi i32 [ %296, %290 ], [ %48, %58 ]
  %68 = icmp ult i32 %64, %12
  br i1 %68, label %69, label %137

69:                                               ; preds = %61
  %70 = ptrtoint ptr %66 to i64
  %71 = sub i64 %33, %70
  %72 = icmp slt i64 %71, 3
  br i1 %72, label %73, label %95

73:                                               ; preds = %69
  %74 = icmp ult ptr %66, %26
  br i1 %74, label %75, label %90

75:                                               ; preds = %73
  %76 = getelementptr inbounds i8, ptr %66, i64 1
  %77 = load i8, ptr %76, align 1, !tbaa !31
  %78 = load i32, ptr %35, align 8, !tbaa !54
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %75
  %81 = zext i8 %77 to i64
  %82 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %81
  %83 = load i8, ptr %82, align 1, !tbaa !31
  br label %84

84:                                               ; preds = %80, %75
  %85 = phi i8 [ %83, %80 ], [ %77, %75 ]
  %86 = zext i8 %85 to i32
  %87 = shl i32 %65, 8
  %88 = or disjoint i32 %87, %86
  %89 = add nsw i32 %64, 8
  br label %90

90:                                               ; preds = %73, %84
  %91 = phi i32 [ %89, %84 ], [ %64, %73 ]
  %92 = phi i32 [ %88, %84 ], [ %65, %73 ]
  %93 = phi ptr [ %76, %84 ], [ %66, %73 ]
  %94 = phi i32 [ 0, %84 ], [ 9, %73 ]
  switch i32 %94, label %290 [
    i32 0, label %137
    i32 9, label %279
  ]

95:                                               ; preds = %69
  %96 = load i32, ptr %34, align 8, !tbaa !54
  %97 = icmp eq i32 %96, 0
  %98 = shl i32 %65, 24
  %99 = getelementptr inbounds i8, ptr %66, i64 1
  %100 = load i8, ptr %99, align 1, !tbaa !31
  br i1 %97, label %119, label %101

101:                                              ; preds = %95
  %102 = zext i8 %100 to i64
  %103 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %102
  %104 = load i8, ptr %103, align 1, !tbaa !31
  %105 = zext i8 %104 to i32
  %106 = shl nuw nsw i32 %105, 16
  %107 = getelementptr inbounds i8, ptr %66, i64 2
  %108 = load i8, ptr %107, align 1, !tbaa !31
  %109 = zext i8 %108 to i64
  %110 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %109
  %111 = load i8, ptr %110, align 1, !tbaa !31
  %112 = zext i8 %111 to i32
  %113 = shl nuw nsw i32 %112, 8
  %114 = or disjoint i32 %106, %113
  %115 = getelementptr inbounds i8, ptr %66, i64 3
  %116 = load i8, ptr %115, align 1, !tbaa !31
  %117 = zext i8 %116 to i64
  %118 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %117
  br label %128

119:                                              ; preds = %95
  %120 = zext i8 %100 to i32
  %121 = shl nuw nsw i32 %120, 16
  %122 = getelementptr inbounds i8, ptr %66, i64 2
  %123 = load i8, ptr %122, align 1, !tbaa !31
  %124 = zext i8 %123 to i32
  %125 = shl nuw nsw i32 %124, 8
  %126 = or disjoint i32 %121, %125
  %127 = getelementptr inbounds i8, ptr %66, i64 3
  br label %128

128:                                              ; preds = %119, %101
  %129 = phi ptr [ %127, %119 ], [ %118, %101 ]
  %130 = phi i32 [ %126, %119 ], [ %114, %101 ]
  %131 = or disjoint i32 %130, %98
  %132 = load i8, ptr %129, align 1, !tbaa !31
  %133 = zext i8 %132 to i32
  %134 = or disjoint i32 %131, %133
  %135 = add nsw i32 %64, 24
  %136 = getelementptr inbounds i8, ptr %66, i64 3
  br label %137

137:                                              ; preds = %128, %90, %61
  %138 = phi i32 [ %91, %90 ], [ %135, %128 ], [ %64, %61 ]
  %139 = phi i32 [ %92, %90 ], [ %134, %128 ], [ %65, %61 ]
  %140 = phi ptr [ %93, %90 ], [ %136, %128 ], [ %66, %61 ]
  %141 = sub i32 %138, %12
  %142 = lshr i32 %139, %141
  %143 = load i8, ptr %37, align 1, !tbaa !31
  %144 = zext i8 %143 to i32
  %145 = and i32 %142, %144
  %146 = zext nneg i32 %145 to i64
  br label %147

147:                                              ; preds = %279, %137
  %148 = phi i32 [ %91, %279 ], [ %138, %137 ]
  %149 = phi i32 [ %92, %279 ], [ %139, %137 ]
  %150 = phi ptr [ %93, %279 ], [ %140, %137 ]
  %151 = phi i64 [ %285, %279 ], [ %146, %137 ]
  %152 = getelementptr inbounds %struct.hcd_code_s, ptr %10, i64 %151
  %153 = icmp ult ptr %62, %8
  br i1 %153, label %154, label %290

154:                                              ; preds = %147
  %155 = getelementptr inbounds %struct.hcd_code_s, ptr %10, i64 %151, i32 1
  %156 = load i16, ptr %155, align 2, !tbaa !55
  %157 = zext i16 %156 to i32
  %158 = icmp ult i32 %12, %157
  br i1 %158, label %159, label %261

159:                                              ; preds = %154
  %160 = icmp slt i32 %148, %157
  br i1 %160, label %161, label %169

161:                                              ; preds = %159
  %162 = ptrtoint ptr %150 to i64
  %163 = sub i64 %38, %162
  %164 = xor i32 %148, -1
  %165 = add i32 %157, %164
  %166 = ashr i32 %165, 3
  %167 = sext i32 %166 to i64
  %168 = icmp sgt i64 %163, %167
  br i1 %168, label %169, label %290

169:                                              ; preds = %161, %159
  %170 = sub nsw i32 %157, %12
  %171 = sub i32 %148, %12
  %172 = icmp slt i32 %171, %170
  br i1 %172, label %173, label %241

173:                                              ; preds = %169
  %174 = ptrtoint ptr %150 to i64
  %175 = sub i64 %39, %174
  %176 = icmp slt i64 %175, 3
  br i1 %176, label %177, label %199

177:                                              ; preds = %173
  %178 = icmp ult ptr %150, %26
  br i1 %178, label %179, label %194

179:                                              ; preds = %177
  %180 = getelementptr inbounds i8, ptr %150, i64 1
  %181 = load i8, ptr %180, align 1, !tbaa !31
  %182 = load i32, ptr %41, align 8, !tbaa !54
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %188, label %184

184:                                              ; preds = %179
  %185 = zext i8 %181 to i64
  %186 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %185
  %187 = load i8, ptr %186, align 1, !tbaa !31
  br label %188

188:                                              ; preds = %184, %179
  %189 = phi i8 [ %187, %184 ], [ %181, %179 ]
  %190 = zext i8 %189 to i32
  %191 = shl i32 %149, 8
  %192 = or disjoint i32 %191, %190
  %193 = add nsw i32 %171, 8
  br label %194

194:                                              ; preds = %177, %188
  %195 = phi i32 [ %193, %188 ], [ %171, %177 ]
  %196 = phi i32 [ %192, %188 ], [ %149, %177 ]
  %197 = phi ptr [ %180, %188 ], [ %150, %177 ]
  %198 = phi i32 [ 0, %188 ], [ 6, %177 ]
  br i1 %178, label %241, label %290

199:                                              ; preds = %173
  %200 = load i32, ptr %40, align 8, !tbaa !54
  %201 = icmp eq i32 %200, 0
  %202 = shl i32 %149, 24
  %203 = getelementptr inbounds i8, ptr %150, i64 1
  %204 = load i8, ptr %203, align 1, !tbaa !31
  br i1 %201, label %223, label %205

205:                                              ; preds = %199
  %206 = zext i8 %204 to i64
  %207 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %206
  %208 = load i8, ptr %207, align 1, !tbaa !31
  %209 = zext i8 %208 to i32
  %210 = shl nuw nsw i32 %209, 16
  %211 = getelementptr inbounds i8, ptr %150, i64 2
  %212 = load i8, ptr %211, align 1, !tbaa !31
  %213 = zext i8 %212 to i64
  %214 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %213
  %215 = load i8, ptr %214, align 1, !tbaa !31
  %216 = zext i8 %215 to i32
  %217 = shl nuw nsw i32 %216, 8
  %218 = or disjoint i32 %210, %217
  %219 = getelementptr inbounds i8, ptr %150, i64 3
  %220 = load i8, ptr %219, align 1, !tbaa !31
  %221 = zext i8 %220 to i64
  %222 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %221
  br label %232

223:                                              ; preds = %199
  %224 = zext i8 %204 to i32
  %225 = shl nuw nsw i32 %224, 16
  %226 = getelementptr inbounds i8, ptr %150, i64 2
  %227 = load i8, ptr %226, align 1, !tbaa !31
  %228 = zext i8 %227 to i32
  %229 = shl nuw nsw i32 %228, 8
  %230 = or disjoint i32 %225, %229
  %231 = getelementptr inbounds i8, ptr %150, i64 3
  br label %232

232:                                              ; preds = %223, %205
  %233 = phi ptr [ %231, %223 ], [ %222, %205 ]
  %234 = phi i32 [ %230, %223 ], [ %218, %205 ]
  %235 = or disjoint i32 %234, %202
  %236 = load i8, ptr %233, align 1, !tbaa !31
  %237 = zext i8 %236 to i32
  %238 = or disjoint i32 %235, %237
  %239 = add nsw i32 %171, 24
  %240 = getelementptr inbounds i8, ptr %150, i64 3
  br label %241

241:                                              ; preds = %232, %194, %169
  %242 = phi i32 [ %195, %194 ], [ %239, %232 ], [ %171, %169 ]
  %243 = phi i32 [ %196, %194 ], [ %238, %232 ], [ %149, %169 ]
  %244 = phi ptr [ %197, %194 ], [ %240, %232 ], [ %150, %169 ]
  %245 = load i16, ptr %152, align 2, !tbaa !57
  %246 = sext i16 %245 to i32
  %247 = sub nsw i32 %242, %170
  %248 = lshr i32 %243, %247
  %249 = sext i32 %170 to i64
  %250 = getelementptr inbounds [9 x i8], ptr @byte_right_mask, i64 0, i64 %249
  %251 = load i8, ptr %250, align 1, !tbaa !31
  %252 = zext i8 %251 to i32
  %253 = and i32 %248, %252
  %254 = add nsw i32 %253, %246
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds %struct.hcd_code_s, ptr %10, i64 %255
  %257 = getelementptr inbounds %struct.hcd_code_s, ptr %10, i64 %255, i32 1
  %258 = load i16, ptr %257, align 2, !tbaa !55
  %259 = zext i16 %258 to i32
  %260 = sub nsw i32 %242, %259
  br label %263

261:                                              ; preds = %154
  %262 = sub nsw i32 %148, %157
  br label %263

263:                                              ; preds = %261, %241
  %264 = phi i32 [ %260, %241 ], [ %262, %261 ]
  %265 = phi i32 [ %243, %241 ], [ %149, %261 ]
  %266 = phi ptr [ %244, %241 ], [ %150, %261 ]
  %267 = phi ptr [ %256, %241 ], [ %152, %261 ]
  %268 = load i16, ptr %267, align 2, !tbaa !57
  %269 = sext i16 %268 to i32
  %270 = icmp ugt i32 %14, %269
  br i1 %270, label %276, label %271

271:                                              ; preds = %263
  %272 = icmp eq i32 %23, %269
  br i1 %272, label %290, label %273

273:                                              ; preds = %271
  %274 = sub i32 %269, %14
  %275 = add i32 %274, 2
  br label %290

276:                                              ; preds = %263
  %277 = trunc i16 %268 to i8
  %278 = getelementptr inbounds i8, ptr %62, i64 1
  store i8 %277, ptr %278, align 1, !tbaa !31
  br label %290, !llvm.loop !58

279:                                              ; preds = %90
  %280 = shl nsw i32 -1, %91
  %281 = xor i32 %280, -1
  %282 = and i32 %92, %281
  %283 = sub i32 %12, %91
  %284 = shl i32 %282, %283
  %285 = zext i32 %284 to i64
  %286 = getelementptr inbounds %struct.hcd_code_s, ptr %10, i64 %285, i32 1
  %287 = load i16, ptr %286, align 2, !tbaa !55
  %288 = zext i16 %287 to i32
  %289 = icmp slt i32 %91, %288
  br i1 %289, label %290, label %147

290:                                              ; preds = %279, %271, %161, %147, %194, %276, %273, %90
  %291 = phi ptr [ %62, %90 ], [ %62, %273 ], [ %278, %276 ], [ %62, %194 ], [ %62, %147 ], [ %62, %161 ], [ %62, %271 ], [ %62, %279 ]
  %292 = phi i32 [ %63, %90 ], [ %275, %273 ], [ %63, %276 ], [ %63, %194 ], [ %63, %147 ], [ %63, %161 ], [ %63, %271 ], [ %63, %279 ]
  %293 = phi i32 [ %91, %90 ], [ %264, %273 ], [ %264, %276 ], [ %195, %194 ], [ %148, %147 ], [ %148, %161 ], [ %264, %271 ], [ %91, %279 ]
  %294 = phi i32 [ %92, %90 ], [ %265, %273 ], [ %265, %276 ], [ %196, %194 ], [ %149, %147 ], [ %149, %161 ], [ %265, %271 ], [ %92, %279 ]
  %295 = phi ptr [ %93, %90 ], [ %266, %273 ], [ %266, %276 ], [ %197, %194 ], [ %150, %147 ], [ %150, %161 ], [ %266, %271 ], [ %93, %279 ]
  %296 = phi i32 [ %67, %90 ], [ %67, %273 ], [ %67, %276 ], [ %67, %194 ], [ 1, %147 ], [ %67, %161 ], [ -1, %271 ], [ %67, %279 ]
  %297 = phi i32 [ %94, %90 ], [ 2, %273 ], [ 8, %276 ], [ %198, %194 ], [ 7, %147 ], [ 7, %161 ], [ 6, %271 ], [ 7, %279 ]
  switch i32 %297, label %312 [
    i32 7, label %298
    i32 2, label %42
    i32 8, label %61
    i32 6, label %298
  ]

298:                                              ; preds = %50, %290, %290
  %299 = phi ptr [ %291, %290 ], [ %291, %290 ], [ %52, %50 ]
  %300 = phi i32 [ %292, %290 ], [ %292, %290 ], [ %51, %50 ]
  %301 = phi i32 [ %293, %290 ], [ %293, %290 ], [ %45, %50 ]
  %302 = phi i32 [ %294, %290 ], [ %294, %290 ], [ %46, %50 ]
  %303 = phi ptr [ %295, %290 ], [ %295, %290 ], [ %47, %50 ]
  %304 = phi i32 [ %296, %290 ], [ %296, %290 ], [ 1, %50 ]
  %305 = ashr i32 %301, 3
  %306 = sub nsw i32 0, %305
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i8, ptr %303, i64 %307
  store ptr %308, ptr %1, align 8, !tbaa !23
  %309 = and i32 %301, -8
  %310 = lshr i32 %302, %309
  store i32 %310, ptr %27, align 4, !tbaa !48
  %311 = and i32 %301, 7
  store i32 %311, ptr %29, align 8, !tbaa !49
  store i32 %300, ptr %31, align 8, !tbaa !50
  store ptr %299, ptr %5, align 8, !tbaa !26
  br label %312

312:                                              ; preds = %290, %298
  %313 = phi i32 [ %304, %298 ], [ undef, %290 ]
  ret i32 %313
}

; Function Attrs: nounwind uwtable
define internal void @s_BHCD_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.stream_state_s, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %3, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = getelementptr inbounds %struct.stream_BHCD_state_s, ptr %0, i64 0, i32 10, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  tail call void %5(ptr noundef %3, ptr noundef %7, ptr noundef nonnull @.str.3) #5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @s_BHCD_reinit(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.stream_BHCD_state_s, ptr %0, i64 0, i32 6, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.stream_BHCD_state_s, ptr %0, i64 0, i32 10
  store i32 %3, ptr %4, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.stream_BHCD_state_s, ptr %0, i64 0, i32 4
  store i32 0, ptr %5, align 4, !tbaa !48
  %6 = getelementptr inbounds %struct.stream_BHCD_state_s, ptr %0, i64 0, i32 5
  store i32 0, ptr %6, align 8, !tbaa !49
  %7 = getelementptr inbounds %struct.stream_BHCD_state_s, ptr %0, i64 0, i32 9
  store i32 0, ptr %7, align 8, !tbaa !50
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @bhce_enum_ptrs(ptr nocapture noundef readonly %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #1 {
  switch i32 %2, label %14 [
    i32 0, label %5
    i32 1, label %7
    i32 2, label %9
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.stream_BHCE_state_s, ptr %0, i64 0, i32 6
  br label %11

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.stream_BHCE_state_s, ptr %0, i64 0, i32 6, i32 2
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.stream_BHCE_state_s, ptr %0, i64 0, i32 10, i32 1
  br label %11

11:                                               ; preds = %9, %7, %5
  %12 = phi ptr [ %6, %5 ], [ %8, %7 ], [ %10, %9 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  store ptr %13, ptr %3, align 8, !tbaa !59
  br label %14

14:                                               ; preds = %11, %4
  %15 = phi ptr [ null, %4 ], [ @ptr_struct_procs, %11 ]
  ret ptr %15
}

; Function Attrs: nounwind uwtable
define internal void @bhce_reloc_ptrs(ptr nocapture noundef %0, i32 %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.stream_BHCE_state_s, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  %6 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %5, ptr noundef %2) #5
  store ptr %6, ptr %4, align 8, !tbaa !60
  %7 = getelementptr inbounds %struct.stream_BHCE_state_s, ptr %0, i64 0, i32 6, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %8, ptr noundef %2) #5
  store ptr %9, ptr %7, align 8, !tbaa !61
  %10 = getelementptr inbounds %struct.stream_BHCE_state_s, ptr %0, i64 0, i32 10, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  %12 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %11, ptr noundef %2) #5
  store ptr %12, ptr %10, align 8, !tbaa !18
  ret void
}

declare ptr @gs_reloc_struct_ptr(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @hc_make_encoding(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @hc_put_code_proc(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @hc_put_last_bits_proc(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @bhcd_enum_ptrs(ptr nocapture noundef readonly %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #1 {
  switch i32 %2, label %14 [
    i32 0, label %5
    i32 1, label %7
    i32 2, label %9
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.stream_BHCD_state_s, ptr %0, i64 0, i32 6
  br label %11

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.stream_BHCD_state_s, ptr %0, i64 0, i32 6, i32 2
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.stream_BHCD_state_s, ptr %0, i64 0, i32 10, i32 2
  br label %11

11:                                               ; preds = %9, %7, %5
  %12 = phi ptr [ %6, %5 ], [ %8, %7 ], [ %10, %9 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  store ptr %13, ptr %3, align 8, !tbaa !59
  br label %14

14:                                               ; preds = %11, %4
  %15 = phi ptr [ null, %4 ], [ @ptr_struct_procs, %11 ]
  ret ptr %15
}

; Function Attrs: nounwind uwtable
define internal void @bhcd_reloc_ptrs(ptr nocapture noundef %0, i32 %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.stream_BHCD_state_s, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %5, ptr noundef %2) #5
  store ptr %6, ptr %4, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.stream_BHCD_state_s, ptr %0, i64 0, i32 6, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !63
  %9 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %8, ptr noundef %2) #5
  store ptr %9, ptr %7, align 8, !tbaa !63
  %10 = getelementptr inbounds %struct.stream_BHCD_state_s, ptr %0, i64 0, i32 10, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %11, ptr noundef %2) #5
  store ptr %12, ptr %10, align 8, !tbaa !45
  ret void
}

declare i32 @hc_sizeof_decoding(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @hc_make_decoding(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 8}
!6 = !{!"stream_state_s", !7, i64 0, !7, i64 8, !7, i64 16}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !7, i64 32}
!11 = !{!"gs_memory_s", !12, i64 0}
!12 = !{!"gs_memory_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152}
!13 = !{!14, !15, i64 64}
!14 = !{!"stream_BHCE_state_s", !7, i64 0, !7, i64 8, !7, i64 16, !15, i64 24, !15, i64 28, !15, i64 32, !16, i64 40, !15, i64 72, !15, i64 76, !15, i64 80, !17, i64 88}
!15 = !{!"int", !8, i64 0}
!16 = !{!"hc_definition_s", !7, i64 0, !15, i64 8, !7, i64 16, !15, i64 24}
!17 = !{!"hce_table_s", !15, i64 0, !7, i64 8}
!18 = !{!14, !7, i64 96}
!19 = !{!14, !15, i64 88}
!20 = !{!14, !15, i64 28}
!21 = !{!14, !15, i64 32}
!22 = !{!14, !15, i64 80}
!23 = !{!24, !7, i64 0}
!24 = !{!"stream_cursor_read_s", !7, i64 0, !7, i64 8, !7, i64 16}
!25 = !{!24, !7, i64 8}
!26 = !{!27, !7, i64 8}
!27 = !{!"stream_cursor_write_s", !7, i64 0, !7, i64 8, !7, i64 16}
!28 = !{!27, !7, i64 16}
!29 = !{!14, !15, i64 76}
!30 = !{!14, !15, i64 72}
!31 = !{!8, !8, i64 0}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.unroll.disable"}
!34 = !{!35, !36, i64 2}
!35 = !{!"hce_code_s", !36, i64 0, !36, i64 2}
!36 = !{!"short", !8, i64 0}
!37 = !{!35, !36, i64 0}
!38 = !{!39, !15, i64 24}
!39 = !{!"stream_hc_state_s", !7, i64 0, !7, i64 8, !7, i64 16, !15, i64 24, !15, i64 28, !15, i64 32}
!40 = !{!11, !7, i64 88}
!41 = !{!42, !15, i64 48}
!42 = !{!"stream_BHCD_state_s", !7, i64 0, !7, i64 8, !7, i64 16, !15, i64 24, !15, i64 28, !15, i64 32, !16, i64 40, !15, i64 72, !15, i64 76, !15, i64 80, !43, i64 88}
!43 = !{!"hcd_table_s", !15, i64 0, !15, i64 4, !7, i64 8}
!44 = !{!42, !15, i64 92}
!45 = !{!42, !7, i64 96}
!46 = !{!42, !15, i64 64}
!47 = !{!42, !15, i64 88}
!48 = !{!42, !15, i64 28}
!49 = !{!42, !15, i64 32}
!50 = !{!42, !15, i64 80}
!51 = !{!42, !15, i64 76}
!52 = !{!42, !15, i64 72}
!53 = distinct !{!53, !33}
!54 = !{!42, !15, i64 24}
!55 = !{!56, !36, i64 2}
!56 = !{!"hcd_code_s", !36, i64 0, !36, i64 2}
!57 = !{!56, !36, i64 0}
!58 = distinct !{!58, !33}
!59 = !{!7, !7, i64 0}
!60 = !{!14, !7, i64 40}
!61 = !{!14, !7, i64 56}
!62 = !{!42, !7, i64 40}
!63 = !{!42, !7, i64 56}
