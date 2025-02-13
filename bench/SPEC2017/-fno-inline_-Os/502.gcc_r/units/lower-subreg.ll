; ModuleID = 'lower-subreg.c'
source_filename = "lower-subreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.recog_data = type { [30 x ptr], [30 x ptr], [30 x ptr], [30 x i32], [30 x i32], [14 x ptr], [14 x i8], i8, i8, i8, [30 x i8], ptr }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.sbitmap_iterator = type { ptr, i32, i32, i32, i64 }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.VEC_bitmap_base = type { i32, i32, [1 x ptr] }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }

@.str = private unnamed_addr constant [8 x i8] c"subreg1\00", align 1
@pass_lower_subreg = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str, ptr @gate_handle_lower_subreg, ptr @rest_of_handle_lower_subreg, ptr null, ptr null, i32 0, i32 118, i32 0, i32 0, i32 0, i32 0, i32 11 } }, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"subreg2\00", align 1
@pass_lower_subreg2 = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.1, ptr @gate_handle_lower_subreg, ptr @rest_of_handle_lower_subreg2, ptr null, ptr null, i32 0, i32 118, i32 0, i32 0, i32 0, i32 0, i32 132107 } }, align 8
@flag_split_wide_types = external local_unnamed_addr global i32, align 4
@df = external local_unnamed_addr global ptr, align 8
@regno_reg_rtx = external local_unnamed_addr global ptr, align 8
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@decomposable_context = internal unnamed_addr global ptr null, align 8
@non_decomposable_context = internal unnamed_addr global ptr null, align 8
@reg_copy_graph = internal unnamed_addr global ptr null, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@recog_data = external global %struct.recog_data, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"lower-subreg.c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@flag_non_call_exceptions = external local_unnamed_addr global i32, align 4
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@word_mode = external local_unnamed_addr global i32, align 4
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"; Splitting reg %u ->\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" %u\00", align 1
@const_tiny_rtx = external local_unnamed_addr global [3 x [87 x ptr]], align 16
@.str.6 = private unnamed_addr constant [34 x i8] c"; Replacing insn: %d with insns: \00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_handle_lower_subreg() #0 !prof !75 !PGOFuncName !76 {
  %1 = load i32, ptr @flag_split_wide_types, align 4, !tbaa !77
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_lower_subreg() #1 !prof !81 !PGOFuncName !82 {
  tail call fastcc void @decompose_multiword_subregs() #16
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_lower_subreg2() #1 !prof !81 !PGOFuncName !83 {
  tail call fastcc void @decompose_multiword_subregs() #16
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @decompose_multiword_subregs() unnamed_addr #1 !prof !75 !PGOFuncName !84 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.sbitmap_iterator, align 8
  %4 = alloca %struct.bitmap_iterator, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = load ptr, ptr @df, align 8, !tbaa !85
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9, !prof !87

9:                                                ; preds = %0
  %10 = tail call i32 @df_set_flags(i32 noundef 32) #17
  br label %11

11:                                               ; preds = %9, %0
  %12 = tail call i32 @max_reg_num() #17
  %13 = icmp ugt i32 %12, 53
  br i1 %13, label %14, label %35, !prof !88

14:                                               ; preds = %11
  %15 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !85
  %16 = zext i32 %12 to i64
  br label %17

17:                                               ; preds = %14, %30
  %18 = phi i64 [ 53, %14 ], [ %31, %30 ]
  %19 = getelementptr inbounds ptr, ptr %15, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !85
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22, !prof !89

22:                                               ; preds = %17
  %23 = load i32, ptr %20, align 8
  %24 = lshr i32 %23, 16
  %25 = and i32 %24, 255
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !90
  %29 = icmp ugt i8 %28, 4
  br i1 %29, label %33, label %30, !prof !89

30:                                               ; preds = %17, %22
  %31 = add nuw nsw i64 %18, 1
  %32 = icmp eq i64 %31, %16
  br i1 %32, label %334, label %17, !prof !91, !llvm.loop !92

33:                                               ; preds = %22
  %34 = trunc i64 %18 to i32
  br label %35

35:                                               ; preds = %33, %11
  %36 = phi i32 [ 53, %11 ], [ %34, %33 ]
  %37 = icmp eq i32 %36, %12
  br i1 %37, label %334, label %38

38:                                               ; preds = %35
  %39 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  store ptr %39, ptr @decomposable_context, align 8, !tbaa !85
  %40 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  store ptr %40, ptr @non_decomposable_context, align 8, !tbaa !85
  %41 = tail call fastcc ptr @VEC_bitmap_heap_alloc(i32 noundef %12) #16
  store ptr %41, ptr @reg_copy_graph, align 8, !tbaa !85
  tail call fastcc void @VEC_bitmap_heap_safe_grow(i32 noundef %12) #16
  %42 = load ptr, ptr @reg_copy_graph, align 8
  %43 = tail call fastcc ptr @VEC_bitmap_base_address(ptr noundef %42) #16
  %44 = zext i32 %12 to i64
  %45 = shl nuw nsw i64 %44, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %43, i8 0, i64 %45, i1 false)
  %46 = load ptr, ptr @cfun, align 8, !tbaa !85
  %47 = getelementptr inbounds %struct.function, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !94
  %49 = load ptr, ptr %48, align 8, !tbaa !96
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %49, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !98
  %52 = getelementptr inbounds %struct.control_flow_graph, ptr %48, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !101
  %54 = icmp eq ptr %51, %53
  br i1 %54, label %132, label %55

55:                                               ; preds = %38, %123
  %56 = phi ptr [ %124, %123 ], [ %46, %38 ]
  %57 = phi ptr [ %126, %123 ], [ %51, %38 ]
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %57, i64 0, i32 7
  %59 = load ptr, ptr %58, align 8, !tbaa !90
  %60 = load ptr, ptr %59, align 8, !tbaa !90
  %61 = icmp eq ptr %60, null
  br i1 %61, label %123, label %62

62:                                               ; preds = %55, %117
  %63 = phi ptr [ %119, %117 ], [ %60, %55 ]
  %64 = load ptr, ptr %58, align 8, !tbaa !90
  %65 = getelementptr inbounds %struct.rtl_bb_info, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !102
  %67 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1, i32 0, i32 0, i64 2
  %68 = load ptr, ptr %67, align 8, !tbaa !90
  %69 = icmp eq ptr %63, %68
  br i1 %69, label %121, label %70

70:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #18
  %71 = load i32, ptr %63, align 8
  %72 = and i32 %71, 65535
  %73 = add nsw i32 %72, -7
  %74 = icmp ult i32 %73, 4
  br i1 %74, label %75, label %117

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 1
  %77 = load ptr, ptr %76, align 8, !tbaa !90
  %78 = load i32, ptr %77, align 8
  %79 = and i32 %78, 65534
  %80 = icmp eq i32 %79, 24
  br i1 %80, label %117, label %81

81:                                               ; preds = %75
  %82 = call fastcc i32 @find_decomposable_shift_zext(ptr noundef nonnull %63) #16, !range !104
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %117

84:                                               ; preds = %81
  call fastcc void @recog_memoized(ptr noundef nonnull %63) #16
  call void @extract_insn(ptr noundef nonnull %63) #17
  %85 = call fastcc ptr @simple_move(ptr noundef nonnull %63) #16
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  store i32 0, ptr %1, align 4, !tbaa !77
  br label %93

88:                                               ; preds = %84
  %89 = call fastcc zeroext i8 @find_pseudo_copy(ptr noundef nonnull %85) #16, !range !105
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %88
  store i32 1, ptr %1, align 4, !tbaa !77
  br label %93

92:                                               ; preds = %88
  store i32 2, ptr %1, align 4, !tbaa !77
  br label %93

93:                                               ; preds = %91, %92, %87
  %94 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !106
  %95 = icmp sgt i8 %94, 0
  br i1 %95, label %96, label %117

96:                                               ; preds = %93
  %97 = zext nneg i8 %94 to i64
  %98 = getelementptr inbounds %struct.rtx_def, ptr %85, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %99

99:                                               ; preds = %96, %114
  %100 = phi i64 [ 0, %96 ], [ %115, %114 ]
  %101 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %100
  %102 = call i32 @for_each_rtx(ptr noundef nonnull %101, ptr noundef nonnull @find_decomposable_subregs, ptr noundef nonnull %1) #17
  %103 = load i32, ptr %1, align 4, !tbaa !77
  %104 = icmp eq i32 %103, 2
  br i1 %104, label %105, label %114

105:                                              ; preds = %99
  %106 = load ptr, ptr %98, align 8, !tbaa !90
  %107 = load i32, ptr %106, align 8
  %108 = and i32 %107, 65535
  %109 = icmp eq i32 %108, 17
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = icmp eq i64 %100, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %110
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1147, ptr noundef nonnull @.str.3) #17
  br label %113

113:                                              ; preds = %110, %112
  store i32 0, ptr %1, align 4, !tbaa !77
  br label %114

114:                                              ; preds = %99, %105, %113
  %115 = add nuw nsw i64 %100, 1
  %116 = icmp eq i64 %115, %97
  br i1 %116, label %117, label %99, !llvm.loop !108

117:                                              ; preds = %114, %93, %75, %70, %81
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #18
  %118 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 0, i32 1, i32 0, i32 0, i64 2
  %119 = load ptr, ptr %118, align 8, !tbaa !90
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %62, !llvm.loop !109

121:                                              ; preds = %117, %62
  %122 = load ptr, ptr @cfun, align 8, !tbaa !85
  br label %123

123:                                              ; preds = %121, %55
  %124 = phi ptr [ %122, %121 ], [ %56, %55 ]
  %125 = getelementptr inbounds %struct.basic_block_def, ptr %57, i64 0, i32 6
  %126 = load ptr, ptr %125, align 8, !tbaa !98
  %127 = getelementptr inbounds %struct.function, ptr %124, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !94
  %129 = getelementptr inbounds %struct.control_flow_graph, ptr %128, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !101
  %131 = icmp eq ptr %126, %130
  br i1 %131, label %132, label %55, !llvm.loop !110

132:                                              ; preds = %123, %38
  %133 = load ptr, ptr @decomposable_context, align 8, !tbaa !85
  %134 = load ptr, ptr @non_decomposable_context, align 8, !tbaa !85
  %135 = call zeroext i8 @bitmap_and_compl_into(ptr noundef %133, ptr noundef %134) #17
  %136 = load ptr, ptr @decomposable_context, align 8, !tbaa !85
  %137 = load ptr, ptr %136, align 8, !tbaa !111
  %138 = icmp eq ptr %137, null
  br i1 %138, label %315, label %139

139:                                              ; preds = %132
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  call fastcc void @propagate_pseudo_copies() #16
  %140 = load ptr, ptr @cfun, align 8, !tbaa !85
  %141 = getelementptr inbounds %struct.function, ptr %140, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !94
  %143 = getelementptr inbounds %struct.control_flow_graph, ptr %142, i64 0, i32 5
  %144 = load i32, ptr %143, align 8, !tbaa !113
  %145 = call ptr @sbitmap_alloc(i32 noundef %144) #17
  call void @sbitmap_zero(ptr noundef %145) #17
  %146 = load ptr, ptr @decomposable_context, align 8, !tbaa !85
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %146, ptr noundef nonnull %5) #16
  %147 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %5) #16, !range !105
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %139, %149
  %150 = load i32, ptr %5, align 4, !tbaa !77
  call fastcc void @decompose_register(i32 noundef %150) #16
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %5) #16
  %151 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %5) #16, !range !105
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %153, label %149, !llvm.loop !114

153:                                              ; preds = %149, %139
  %154 = load ptr, ptr @cfun, align 8, !tbaa !85
  %155 = getelementptr inbounds %struct.function, ptr %154, i64 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !94
  %157 = load ptr, ptr %156, align 8, !tbaa !96
  %158 = getelementptr inbounds %struct.basic_block_def, ptr %157, i64 0, i32 6
  %159 = load ptr, ptr %158, align 8, !tbaa !98
  %160 = getelementptr inbounds %struct.control_flow_graph, ptr %156, i64 0, i32 1
  %161 = load ptr, ptr %160, align 8, !tbaa !101
  %162 = icmp eq ptr %159, %161
  br i1 %162, label %271, label %163

163:                                              ; preds = %153, %262
  %164 = phi ptr [ %263, %262 ], [ %154, %153 ]
  %165 = phi ptr [ %265, %262 ], [ %159, %153 ]
  %166 = getelementptr inbounds %struct.basic_block_def, ptr %165, i64 0, i32 7
  %167 = load ptr, ptr %166, align 8, !tbaa !90
  %168 = load ptr, ptr %167, align 8, !tbaa !90
  %169 = icmp eq ptr %168, null
  br i1 %169, label %262, label %170

170:                                              ; preds = %163, %255
  %171 = phi ptr [ %258, %255 ], [ %168, %163 ]
  %172 = load ptr, ptr %166, align 8, !tbaa !90
  %173 = getelementptr inbounds %struct.rtl_bb_info, ptr %172, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !102
  %175 = getelementptr inbounds %struct.rtx_def, ptr %174, i64 0, i32 1, i32 0, i32 0, i64 2
  %176 = load ptr, ptr %175, align 8, !tbaa !90
  %177 = icmp eq ptr %171, %176
  br i1 %177, label %260, label %178

178:                                              ; preds = %170
  %179 = load i32, ptr %171, align 8
  %180 = and i32 %179, 65535
  %181 = add nsw i32 %180, -7
  %182 = icmp ult i32 %181, 4
  br i1 %182, label %183, label %255

183:                                              ; preds = %178
  %184 = getelementptr inbounds %struct.rtx_def, ptr %171, i64 1
  %185 = load ptr, ptr %184, align 8, !tbaa !90
  %186 = load i32, ptr %185, align 8
  %187 = trunc i32 %186 to i16
  switch i16 %187, label %190 [
    i16 25, label %188
    i16 24, label %189
  ]

188:                                              ; preds = %183
  call fastcc void @resolve_clobber(ptr noundef nonnull %185, ptr noundef nonnull %171) #16
  br label %255

189:                                              ; preds = %183
  call fastcc void @resolve_use(ptr noundef nonnull %185, ptr noundef nonnull %171) #16
  br label %255

190:                                              ; preds = %183
  %191 = icmp eq i32 %180, 7
  br i1 %191, label %192, label %193

192:                                              ; preds = %190
  call fastcc void @resolve_debug(ptr noundef nonnull %171) #16
  br label %255

193:                                              ; preds = %190
  call fastcc void @recog_memoized(ptr noundef nonnull %171) #16
  call void @extract_insn(ptr noundef nonnull %171) #17
  %194 = call fastcc ptr @simple_move(ptr noundef nonnull %171) #16
  %195 = icmp eq ptr %194, null
  br i1 %195, label %213, label %196

196:                                              ; preds = %193
  %197 = call zeroext i8 @control_flow_insn_p(ptr noundef nonnull %171) #17
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %206, label %199

199:                                              ; preds = %196
  %200 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !77
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %205, label %202

202:                                              ; preds = %199
  %203 = call zeroext i8 @can_throw_internal(ptr noundef nonnull %171) #17
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %202, %199
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1216, ptr noundef nonnull @.str.3) #17
  br label %206

206:                                              ; preds = %196, %202, %205
  %207 = call fastcc ptr @resolve_simple_move(ptr noundef nonnull %194, ptr noundef nonnull %171) #16
  %208 = icmp eq ptr %207, %171
  br i1 %208, label %217, label %209

209:                                              ; preds = %206
  call fastcc void @recog_memoized(ptr noundef %207) #16
  call void @extract_insn(ptr noundef %207) #17
  br i1 %198, label %217, label %210

210:                                              ; preds = %209
  %211 = getelementptr inbounds %struct.basic_block_def, ptr %165, i64 0, i32 9
  %212 = load i32, ptr %211, align 8, !tbaa !115
  call fastcc void @SET_BIT(ptr noundef %145, i32 noundef %212) #16
  br label %217

213:                                              ; preds = %193
  %214 = call fastcc ptr @resolve_shift_zext(ptr noundef nonnull %171) #16
  %215 = icmp eq ptr %214, null
  br i1 %215, label %217, label %216

216:                                              ; preds = %213
  call fastcc void @recog_memoized(ptr noundef nonnull %214) #16
  call void @extract_insn(ptr noundef nonnull %214) #17
  br label %217

217:                                              ; preds = %213, %216, %206, %210, %209
  %218 = phi ptr [ %207, %209 ], [ %207, %210 ], [ %171, %206 ], [ %214, %216 ], [ %171, %213 ]
  %219 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !106
  %220 = icmp sgt i8 %219, 0
  br i1 %220, label %221, label %230

221:                                              ; preds = %217
  %222 = zext nneg i8 %219 to i64
  br label %223

223:                                              ; preds = %221, %223
  %224 = phi i64 [ %222, %221 ], [ %225, %223 ]
  %225 = add nsw i64 %224, -1
  %226 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %225
  %227 = load ptr, ptr %226, align 8, !tbaa !85
  %228 = call i32 @for_each_rtx(ptr noundef %227, ptr noundef nonnull @resolve_subreg_use, ptr noundef %218) #17
  %229 = icmp ugt i64 %224, 1
  br i1 %229, label %223, label %230, !llvm.loop !116

230:                                              ; preds = %223, %217
  call fastcc void @resolve_reg_notes(ptr noundef %218) #16
  %231 = call i32 @num_validated_changes() #17
  %232 = icmp sgt i32 %231, 0
  br i1 %232, label %233, label %255

233:                                              ; preds = %230
  %234 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !117
  %235 = icmp sgt i8 %234, 0
  br i1 %235, label %236, label %251

236:                                              ; preds = %233
  %237 = zext nneg i8 %234 to i64
  br label %238

238:                                              ; preds = %236, %238
  %239 = phi i64 [ %237, %236 ], [ %240, %238 ]
  %240 = add nsw i64 %239, -1
  %241 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 5, i64 %240
  %242 = load ptr, ptr %241, align 8, !tbaa !85
  %243 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 6, i64 %240
  %244 = load i8, ptr %243, align 1, !tbaa !90
  %245 = sext i8 %244 to i64
  %246 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %245
  %247 = load ptr, ptr %246, align 8, !tbaa !85
  %248 = load ptr, ptr %247, align 8, !tbaa !85
  %249 = call zeroext i8 @validate_unshare_change(ptr noundef %218, ptr noundef %242, ptr noundef %248, i8 noundef zeroext 1) #17
  %250 = icmp ugt i64 %239, 1
  br i1 %250, label %238, label %251, !llvm.loop !118

251:                                              ; preds = %238, %233
  %252 = call i32 @apply_change_group() #17
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %251
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1260, ptr noundef nonnull @.str.3) #17
  br label %255

255:                                              ; preds = %178, %188, %192, %189, %254, %251, %230
  %256 = phi ptr [ %171, %178 ], [ %171, %188 ], [ %171, %189 ], [ %171, %192 ], [ %218, %254 ], [ %218, %251 ], [ %218, %230 ]
  %257 = getelementptr inbounds %struct.rtx_def, ptr %256, i64 0, i32 1, i32 0, i32 0, i64 2
  %258 = load ptr, ptr %257, align 8, !tbaa !90
  %259 = icmp eq ptr %258, null
  br i1 %259, label %260, label %170, !llvm.loop !119

260:                                              ; preds = %255, %170
  %261 = load ptr, ptr @cfun, align 8, !tbaa !85
  br label %262

262:                                              ; preds = %260, %163
  %263 = phi ptr [ %261, %260 ], [ %164, %163 ]
  %264 = getelementptr inbounds %struct.basic_block_def, ptr %165, i64 0, i32 6
  %265 = load ptr, ptr %264, align 8, !tbaa !98
  %266 = getelementptr inbounds %struct.function, ptr %263, i64 0, i32 1
  %267 = load ptr, ptr %266, align 8, !tbaa !94
  %268 = getelementptr inbounds %struct.control_flow_graph, ptr %267, i64 0, i32 1
  %269 = load ptr, ptr %268, align 8, !tbaa !101
  %270 = icmp eq ptr %265, %269
  br i1 %270, label %271, label %163, !llvm.loop !120

271:                                              ; preds = %262, %153
  call fastcc void @sbitmap_iter_init(ptr noundef nonnull %3, ptr noundef %145) #16
  %272 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #16, !range !105
  %273 = icmp eq i8 %272, 0
  br i1 %273, label %313, label %274

274:                                              ; preds = %271, %310
  %275 = load ptr, ptr @cfun, align 8, !tbaa !85
  %276 = getelementptr inbounds %struct.function, ptr %275, i64 0, i32 1
  %277 = load ptr, ptr %276, align 8, !tbaa !94
  %278 = getelementptr inbounds %struct.control_flow_graph, ptr %277, i64 0, i32 2
  %279 = load ptr, ptr %278, align 8, !tbaa !121
  %280 = load i32, ptr %2, align 4, !tbaa !77
  %281 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %279, i32 noundef %280) #16
  %282 = getelementptr inbounds %struct.basic_block_def, ptr %281, i64 0, i32 7
  %283 = load ptr, ptr %282, align 8, !tbaa !90
  %284 = getelementptr inbounds %struct.rtl_bb_info, ptr %283, i64 0, i32 1
  %285 = load ptr, ptr %284, align 8, !tbaa !102
  %286 = load ptr, ptr %283, align 8, !tbaa !90
  %287 = icmp eq ptr %286, %285
  br i1 %287, label %310, label %288

288:                                              ; preds = %274, %305
  %289 = phi ptr [ %308, %305 ], [ %286, %274 ]
  %290 = phi ptr [ %307, %305 ], [ %281, %274 ]
  %291 = call zeroext i8 @control_flow_insn_p(ptr noundef %289) #17
  %292 = icmp eq i8 %291, 0
  br i1 %292, label %303, label %293

293:                                              ; preds = %288
  %294 = call ptr @split_block(ptr noundef %290, ptr noundef %289) #17
  %295 = getelementptr inbounds %struct.basic_block_def, ptr %290, i64 0, i32 7
  %296 = load ptr, ptr %295, align 8, !tbaa !90
  %297 = getelementptr inbounds %struct.rtl_bb_info, ptr %296, i64 0, i32 1
  %298 = load ptr, ptr %297, align 8, !tbaa !102
  call void @rtl_make_eh_edge(ptr noundef null, ptr noundef %290, ptr noundef %298) #17
  %299 = getelementptr inbounds %struct.edge_def, ptr %294, i64 0, i32 1
  %300 = load ptr, ptr %299, align 8, !tbaa !122
  %301 = getelementptr inbounds %struct.basic_block_def, ptr %300, i64 0, i32 7
  %302 = load ptr, ptr %301, align 8, !tbaa !90
  br label %305

303:                                              ; preds = %288
  %304 = getelementptr inbounds %struct.rtx_def, ptr %289, i64 0, i32 1, i32 0, i32 0, i64 2
  br label %305

305:                                              ; preds = %303, %293
  %306 = phi ptr [ %302, %293 ], [ %304, %303 ]
  %307 = phi ptr [ %300, %293 ], [ %290, %303 ]
  %308 = load ptr, ptr %306, align 8, !tbaa !90
  %309 = icmp eq ptr %308, %285
  br i1 %309, label %310, label %288, !llvm.loop !124

310:                                              ; preds = %305, %274
  call fastcc void @sbitmap_iter_next(ptr noundef nonnull %3) #16
  %311 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #16, !range !105
  %312 = icmp eq i8 %311, 0
  br i1 %312, label %313, label %274, !llvm.loop !125

313:                                              ; preds = %310, %271
  %314 = load ptr, ptr %145, align 8, !tbaa !126
  call void @free(ptr noundef %314) #16
  call void @free(ptr noundef %145) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #18
  br label %315

315:                                              ; preds = %313, %132
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  %316 = load ptr, ptr @reg_copy_graph, align 8
  %317 = call fastcc i32 @VEC_bitmap_base_iterate(ptr noundef %316, i32 noundef 0, ptr noundef nonnull %6) #16, !range !104
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %331, label %319

319:                                              ; preds = %315, %326
  %320 = phi ptr [ %327, %326 ], [ %316, %315 ]
  %321 = phi i32 [ %328, %326 ], [ 0, %315 ]
  %322 = load ptr, ptr %6, align 8, !tbaa !85
  %323 = icmp eq ptr %322, null
  br i1 %323, label %326, label %324

324:                                              ; preds = %319
  call void @bitmap_obstack_free(ptr noundef nonnull %322) #17
  store ptr null, ptr %6, align 8, !tbaa !85
  %325 = load ptr, ptr @reg_copy_graph, align 8
  br label %326

326:                                              ; preds = %319, %324
  %327 = phi ptr [ %320, %319 ], [ %325, %324 ]
  %328 = add i32 %321, 1
  %329 = call fastcc i32 @VEC_bitmap_base_iterate(ptr noundef %327, i32 noundef %328, ptr noundef nonnull %6) #16, !range !104
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %331, label %319, !llvm.loop !128

331:                                              ; preds = %326, %315
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  call fastcc void @VEC_bitmap_heap_free() #16
  %332 = load ptr, ptr @decomposable_context, align 8, !tbaa !85
  call void @bitmap_obstack_free(ptr noundef %332) #17
  store ptr null, ptr @decomposable_context, align 8, !tbaa !85
  %333 = load ptr, ptr @non_decomposable_context, align 8, !tbaa !85
  call void @bitmap_obstack_free(ptr noundef %333) #17
  store ptr null, ptr @non_decomposable_context, align 8, !tbaa !85
  br label %334

334:                                              ; preds = %30, %35, %331
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare i32 @df_set_flags(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @max_reg_num() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_bitmap_heap_alloc(i32 noundef %0) unnamed_addr #1 !prof !129 !PGOFuncName !130 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #17
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_bitmap_heap_safe_grow(i32 noundef %0) unnamed_addr #1 !prof !129 !PGOFuncName !131 {
  %2 = load ptr, ptr @reg_copy_graph, align 8, !tbaa !85
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !132
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_bitmap_heap_reserve_exact(i32 noundef %8) #16
  %9 = load ptr, ptr @reg_copy_graph, align 8, !tbaa !85, !nonnull !134, !noundef !134
  store i32 %0, ptr %9, align 8, !tbaa !132
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_bitmap_base_address(ptr noundef readnone %0) unnamed_addr #4 !prof !129 !PGOFuncName !135 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_bitmap_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @find_decomposable_shift_zext(ptr noundef %0) unnamed_addr #1 !prof !129 !PGOFuncName !136 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = add nsw i32 %3, -7
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %6, label %87

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !90
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 23
  br i1 %11, label %15, label %12

12:                                               ; preds = %6
  %13 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %8) #17
  %14 = icmp eq ptr %13, null
  br i1 %14, label %87, label %15

15:                                               ; preds = %6, %12
  %16 = phi ptr [ %13, %12 ], [ %8, %6 ]
  %17 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !90
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 65535
  %21 = trunc i32 %19 to i16
  switch i16 %21, label %87 [
    i16 65, label %22
    i16 68, label %22
    i16 99, label %22
  ]

22:                                               ; preds = %15, %15, %15
  %23 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %24 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !90
  %26 = load ptr, ptr %23, align 8, !tbaa !90
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 65535
  %29 = icmp eq i32 %28, 37
  br i1 %29, label %30, label %87

30:                                               ; preds = %22
  %31 = load i32, ptr %25, align 8
  %32 = and i32 %31, 65535
  %33 = icmp eq i32 %32, 37
  br i1 %33, label %34, label %87

34:                                               ; preds = %30
  %35 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %26) #16
  %36 = icmp ult i32 %35, 53
  br i1 %36, label %87, label %37

37:                                               ; preds = %34
  %38 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %25) #16
  %39 = icmp ult i32 %38, 53
  br i1 %39, label %87, label %40

40:                                               ; preds = %37
  %41 = lshr i32 %19, 16
  %42 = and i32 %41, 255
  %43 = zext nneg i32 %42 to i64
  %44 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !90
  %46 = and i8 %45, -2
  %47 = icmp eq i8 %46, 2
  br i1 %47, label %48, label %87

48:                                               ; preds = %40
  %49 = icmp eq i32 %20, 99
  br i1 %49, label %50, label %59

50:                                               ; preds = %48
  %51 = lshr i32 %31, 16
  %52 = and i32 %51, 255
  %53 = load i32, ptr @word_mode, align 4, !tbaa !77
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %87

55:                                               ; preds = %50
  %56 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %43
  %57 = load i8, ptr %56, align 1, !tbaa !90
  %58 = icmp eq i8 %57, 8
  br i1 %58, label %76, label %87

59:                                               ; preds = %48
  %60 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 1
  %61 = load ptr, ptr %60, align 8, !tbaa !90
  %62 = load i32, ptr %61, align 8
  %63 = and i32 %62, 65535
  %64 = icmp eq i32 %63, 30
  br i1 %64, label %65, label %87

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1
  %67 = load i64, ptr %66, align 8, !tbaa !90
  %68 = icmp slt i64 %67, 32
  br i1 %68, label %87, label %69

69:                                               ; preds = %65
  %70 = lshr i32 %31, 16
  %71 = and i32 %70, 255
  %72 = zext nneg i32 %71 to i64
  %73 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %72
  %74 = load i8, ptr %73, align 1, !tbaa !90
  %75 = icmp eq i8 %74, 8
  br i1 %75, label %76, label %87

76:                                               ; preds = %69, %55
  %77 = load ptr, ptr @decomposable_context, align 8, !tbaa !85
  %78 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %26) #16
  %79 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %77, i32 noundef %78) #17
  %80 = load i32, ptr %18, align 8
  %81 = and i32 %80, 65535
  %82 = icmp eq i32 %81, 99
  br i1 %82, label %87, label %83

83:                                               ; preds = %76
  %84 = load ptr, ptr @decomposable_context, align 8, !tbaa !85
  %85 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %25) #16
  %86 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %84, i32 noundef %85) #17
  br label %87

87:                                               ; preds = %1, %40, %76, %83, %59, %65, %69, %50, %55, %22, %30, %34, %37, %15, %12
  %88 = phi i32 [ 0, %12 ], [ 0, %15 ], [ 0, %40 ], [ 0, %37 ], [ 0, %34 ], [ 0, %30 ], [ 0, %22 ], [ 0, %55 ], [ 0, %50 ], [ 0, %69 ], [ 0, %65 ], [ 0, %59 ], [ 1, %83 ], [ 1, %76 ], [ 0, %1 ]
  ret i32 %88
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @recog_memoized(ptr noundef %0) unnamed_addr #1 !prof !129 !PGOFuncName !137 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !90
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !90
  %8 = tail call i32 @recog(ptr noundef %7, ptr noundef nonnull %0, ptr noundef null) #17
  store i32 %8, ptr %2, align 8, !tbaa !90
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare void @extract_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @simple_move(ptr noundef %0) unnamed_addr #1 !prof !129 !PGOFuncName !138 {
  %2 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !106
  %3 = icmp eq i8 %2, 2
  br i1 %3, label %4, label %67

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = add nsw i32 %6, -7
  %8 = icmp ult i32 %7, 4
  br i1 %8, label %9, label %67

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !90
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 23
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %11) #17
  %17 = icmp eq ptr %16, null
  br i1 %17, label %67, label %18

18:                                               ; preds = %9, %15
  %19 = phi ptr [ %16, %15 ], [ %11, %9 ]
  %20 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !90
  %22 = load ptr, ptr @recog_data, align 8, !tbaa !85
  %23 = icmp eq ptr %21, %22
  %24 = load ptr, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 0, i64 1), align 8
  %25 = icmp eq ptr %21, %24
  %26 = select i1 %23, i1 true, i1 %25
  br i1 %26, label %27, label %67

27:                                               ; preds = %18
  %28 = tail call fastcc zeroext i8 @simple_move_operand(ptr noundef %21) #16, !range !105
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %67, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !90
  %33 = load ptr, ptr @recog_data, align 8, !tbaa !85
  %34 = icmp eq ptr %32, %33
  %35 = load ptr, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 0, i64 1), align 8
  %36 = icmp eq ptr %32, %35
  %37 = select i1 %34, i1 true, i1 %36
  br i1 %37, label %38, label %67

38:                                               ; preds = %30
  %39 = load i32, ptr %32, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 17
  br i1 %41, label %48, label %42

42:                                               ; preds = %38
  %43 = tail call fastcc zeroext i8 @simple_move_operand(ptr noundef nonnull %32) #16, !range !105
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %67, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr %31, align 8, !tbaa !90
  %47 = load i32, ptr %46, align 8
  br label %48

48:                                               ; preds = %45, %38
  %49 = phi i32 [ %47, %45 ], [ %39, %38 ]
  %50 = lshr i32 %49, 16
  %51 = and i32 %50, 255
  %52 = zext nneg i32 %51 to i64
  %53 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !90
  %55 = and i8 %54, -2
  %56 = icmp eq i8 %55, 2
  br i1 %56, label %64, label %57

57:                                               ; preds = %48
  %58 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %52
  %59 = load i8, ptr %58, align 1, !tbaa !90
  %60 = zext i8 %59 to i32
  %61 = shl nuw nsw i32 %60, 3
  %62 = tail call i32 @mode_for_size(i32 noundef %61, i32 noundef 2, i32 noundef 0) #17
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %67, label %64

64:                                               ; preds = %48, %57
  %65 = icmp eq i8 %54, 3
  %66 = select i1 %65, ptr null, ptr %19
  br label %67

67:                                               ; preds = %4, %64, %57, %42, %30, %27, %18, %15, %1
  %68 = phi ptr [ null, %1 ], [ null, %15 ], [ null, %18 ], [ null, %27 ], [ null, %30 ], [ null, %42 ], [ null, %57 ], [ %66, %64 ], [ null, %4 ]
  ret ptr %68
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @find_pseudo_copy(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !129 !PGOFuncName !139 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !90
  %6 = load i32, ptr %3, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 37
  br i1 %8, label %9, label %36

9:                                                ; preds = %1
  %10 = load i32, ptr %5, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 37
  br i1 %12, label %13, label %36

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %3) #16
  %15 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %5) #16
  %16 = icmp ult i32 %14, 53
  %17 = icmp ult i32 %15, 53
  %18 = select i1 %16, i1 true, i1 %17
  br i1 %18, label %36, label %19

19:                                               ; preds = %13
  %20 = lshr i32 %6, 16
  %21 = and i32 %20, 255
  %22 = zext nneg i32 %21 to i64
  %23 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !90
  %25 = icmp ult i8 %24, 5
  br i1 %25, label %36, label %26

26:                                               ; preds = %19
  %27 = load ptr, ptr @reg_copy_graph, align 8
  %28 = tail call fastcc ptr @VEC_bitmap_base_index(ptr noundef %27, i32 noundef %15) #16
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %32 = load ptr, ptr @reg_copy_graph, align 8
  tail call fastcc void @VEC_bitmap_base_replace(ptr noundef %32, i32 noundef %15, ptr noundef %31) #16
  br label %33

33:                                               ; preds = %30, %26
  %34 = phi ptr [ %31, %30 ], [ %28, %26 ]
  %35 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %34, i32 noundef %14) #17
  br label %36

36:                                               ; preds = %19, %13, %1, %9, %33
  %37 = phi i8 [ 1, %33 ], [ 0, %9 ], [ 0, %1 ], [ 0, %13 ], [ 0, %19 ]
  ret i8 %37
}

; Function Attrs: optsize
declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @find_decomposable_subregs(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 !prof !129 !PGOFuncName !140 {
  %3 = alloca i32, align 4
  %4 = load ptr, ptr %0, align 8, !tbaa !85
  %5 = icmp eq ptr %4, null
  br i1 %5, label %74, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr %4, align 8
  %8 = trunc i32 %7 to i16
  switch i16 %8, label %74 [
    i16 39, label %9
    i16 37, label %48
    i16 43, label %71
  ]

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !90
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 37
  br i1 %14, label %15, label %74

15:                                               ; preds = %9
  %16 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %11) #16
  %17 = icmp ult i32 %16, 53
  br i1 %17, label %74, label %18

18:                                               ; preds = %15
  %19 = lshr i32 %7, 16
  %20 = and i32 %19, 255
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !90
  %24 = zext i8 %23 to i32
  %25 = lshr i32 %12, 16
  %26 = and i32 %25, 255
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !90
  %30 = add nuw nsw i32 %24, 3
  %31 = and i32 %30, 508
  %32 = icmp eq i32 %31, 4
  %33 = icmp ugt i8 %29, 4
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %35, label %38

35:                                               ; preds = %18
  %36 = load ptr, ptr @decomposable_context, align 8, !tbaa !85
  %37 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %36, i32 noundef %16) #17
  br label %74

38:                                               ; preds = %18
  %39 = icmp ugt i8 %23, 4
  %40 = icmp eq i8 %23, %29
  %41 = select i1 %39, i1 %40, i1 false
  br i1 %41, label %42, label %74

42:                                               ; preds = %38
  %43 = tail call zeroext i8 @ix86_modes_tieable_p(i32 noundef %20, i32 noundef %26) #17
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %74

45:                                               ; preds = %42
  %46 = load ptr, ptr @non_decomposable_context, align 8, !tbaa !85
  %47 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %46, i32 noundef %16) #17
  br label %74

48:                                               ; preds = %6
  %49 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %4) #16
  %50 = icmp ult i32 %49, 53
  br i1 %50, label %74, label %51

51:                                               ; preds = %48
  %52 = lshr i32 %7, 16
  %53 = and i32 %52, 255
  %54 = zext nneg i32 %53 to i64
  %55 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !90
  %57 = icmp ugt i8 %56, 4
  br i1 %57, label %58, label %74

58:                                               ; preds = %51
  %59 = load i32, ptr %1, align 4, !tbaa !77
  switch i32 %59, label %70 [
    i32 0, label %60
    i32 1, label %63
    i32 2, label %74
  ]

60:                                               ; preds = %58
  %61 = load ptr, ptr @non_decomposable_context, align 8, !tbaa !85
  %62 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %61, i32 noundef %49) #17
  br label %74

63:                                               ; preds = %58
  %64 = load i32, ptr @word_mode, align 4, !tbaa !77
  %65 = tail call zeroext i8 @ix86_modes_tieable_p(i32 noundef %53, i32 noundef %64) #17
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %63
  %68 = load ptr, ptr @decomposable_context, align 8, !tbaa !85
  %69 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %68, i32 noundef %49) #17
  br label %74

70:                                               ; preds = %58
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 331, ptr noundef nonnull @.str.3) #17
  br label %74

71:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  store i32 0, ptr %3, align 4, !tbaa !77
  %72 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %73 = call i32 @for_each_rtx(ptr noundef nonnull %72, ptr noundef nonnull @find_decomposable_subregs, ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  br label %74

74:                                               ; preds = %15, %9, %45, %35, %60, %58, %70, %67, %63, %51, %48, %6, %38, %42, %2, %71
  %75 = phi i32 [ -1, %71 ], [ 0, %2 ], [ 0, %42 ], [ 0, %38 ], [ 0, %6 ], [ 0, %48 ], [ 0, %51 ], [ 0, %63 ], [ 0, %67 ], [ 0, %70 ], [ 0, %58 ], [ 0, %60 ], [ -1, %15 ], [ 0, %9 ], [ -1, %45 ], [ -1, %35 ]
  ret i32 %75
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @bitmap_and_compl_into(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @propagate_pseudo_copies() unnamed_addr #1 !prof !129 !PGOFuncName !141 {
  %1 = alloca %struct.bitmap_iterator, align 8
  %2 = alloca i32, align 4
  %3 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %4 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %5 = load ptr, ptr @decomposable_context, align 8, !tbaa !85
  tail call void @bitmap_copy(ptr noundef %3, ptr noundef %5) #17
  br label %6

6:                                                ; preds = %24, %0
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #18
  tail call void @bitmap_clear(ptr noundef %4) #17
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %1, ptr noundef %3, ptr noundef nonnull %2) #16
  %7 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %1, ptr noundef nonnull %2) #16, !range !105
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr @reg_copy_graph, align 8
  br label %11

11:                                               ; preds = %9, %20
  %12 = phi ptr [ %10, %9 ], [ %21, %20 ]
  %13 = load i32, ptr %2, align 4, !tbaa !77
  %14 = tail call fastcc ptr @VEC_bitmap_base_index(ptr noundef %12, i32 noundef %13) #16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr @non_decomposable_context, align 8, !tbaa !85
  %18 = tail call zeroext i8 @bitmap_ior_and_compl_into(ptr noundef %4, ptr noundef nonnull %14, ptr noundef %17) #17
  %19 = load ptr, ptr @reg_copy_graph, align 8
  br label %20

20:                                               ; preds = %16, %11
  %21 = phi ptr [ %19, %16 ], [ %12, %11 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %1, ptr noundef nonnull %2) #16
  %22 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %1, ptr noundef nonnull %2) #16, !range !105
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %11, !llvm.loop !142

24:                                               ; preds = %20, %6
  %25 = load ptr, ptr @decomposable_context, align 8, !tbaa !85
  %26 = tail call zeroext i8 @bitmap_and_compl(ptr noundef %3, ptr noundef %4, ptr noundef %25) #17
  %27 = load ptr, ptr @decomposable_context, align 8, !tbaa !85
  %28 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %27, ptr noundef %4) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1) #18
  %29 = load ptr, ptr %3, align 8, !tbaa !111
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %6, !llvm.loop !143

31:                                               ; preds = %24
  tail call void @bitmap_obstack_free(ptr noundef nonnull %3) #17
  tail call void @bitmap_obstack_free(ptr noundef %4) #17
  ret void
}

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !prof !129 !PGOFuncName !144 {
  %4 = load ptr, ptr %1, align 8, !tbaa !111
  store ptr %4, ptr %0, align 8, !tbaa !145
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !147
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !145
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !148
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !150
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !151
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !152
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !77
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #7 !prof !129 !PGOFuncName !153 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !152
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !77
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !154

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !77
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !77
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !150
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !145
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !150
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !151
  store i64 %35, ptr %3, align 8, !tbaa !152
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !77
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !77
  %40 = load i32, ptr %23, align 8, !tbaa !150
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !150
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !llvm.loop !155

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !156
  store ptr %44, ptr %0, align 8, !tbaa !145
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !148
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !77
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !152
  store i32 %16, ptr %1, align 4, !tbaa !77
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @decompose_register(i32 noundef %0) unnamed_addr #1 !prof !129 !PGOFuncName !157 {
  %2 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !85
  %3 = zext i32 %0 to i64
  %4 = getelementptr inbounds ptr, ptr %2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !85
  store ptr null, ptr %4, align 8, !tbaa !85
  %6 = load i32, ptr %5, align 8
  %7 = lshr i32 %6, 16
  %8 = and i32 %7, 255
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !90
  %12 = zext i8 %11 to i32
  %13 = add nuw nsw i32 %12, 3
  %14 = lshr i32 %13, 2
  %15 = tail call ptr @rtvec_alloc(i32 noundef %14) #17
  %16 = icmp eq i8 %11, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %1
  %18 = zext nneg i32 %14 to i64
  br label %19

19:                                               ; preds = %17, %19
  %20 = phi i64 [ 0, %17 ], [ %26, %19 ]
  %21 = load i32, ptr @word_mode, align 4, !tbaa !77
  %22 = trunc i64 %20 to i32
  %23 = shl i32 %22, 2
  %24 = tail call ptr @gen_reg_rtx_offset(ptr noundef nonnull %5, i32 noundef %21, i32 noundef %23) #17
  %25 = getelementptr inbounds %struct.rtvec_def, ptr %15, i64 0, i32 1, i64 %20
  store ptr %24, ptr %25, align 8, !tbaa !85
  %26 = add nuw nsw i64 %20, 1
  %27 = icmp eq i64 %26, %18
  br i1 %27, label %28, label %19, !llvm.loop !158

28:                                               ; preds = %19, %1
  %29 = load i32, ptr %5, align 8
  %30 = and i32 %29, -65536
  %31 = or disjoint i32 %30, 42
  store i32 %31, ptr %5, align 8
  %32 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  store ptr %15, ptr %32, align 8, !tbaa !90
  %33 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %34 = icmp eq ptr %33, null
  br i1 %34, label %52, label %35

35:                                               ; preds = %28
  %36 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %33, ptr noundef nonnull @.str.4, i32 noundef %0) #16
  br i1 %16, label %49, label %37

37:                                               ; preds = %35
  %38 = zext nneg i32 %14 to i64
  br label %39

39:                                               ; preds = %37, %39
  %40 = phi i64 [ 0, %37 ], [ %47, %39 ]
  %41 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %42 = load ptr, ptr %32, align 8, !tbaa !90
  %43 = getelementptr inbounds %struct.rtvec_def, ptr %42, i64 0, i32 1, i64 %40
  %44 = load ptr, ptr %43, align 8, !tbaa !85
  %45 = tail call fastcc i32 @rhs_regno(ptr noundef %44) #16
  %46 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef nonnull @.str.5, i32 noundef %45) #16
  %47 = add nuw nsw i64 %40, 1
  %48 = icmp eq i64 %47, %38
  br i1 %48, label %49, label %39, !llvm.loop !159

49:                                               ; preds = %39, %35
  %50 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %51 = tail call i32 @fputc(i32 noundef 10, ptr noundef %50) #16
  br label %52

52:                                               ; preds = %49, %28
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #8 !prof !129 !PGOFuncName !160 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !152
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !152
  %6 = load i32, ptr %1, align 4, !tbaa !77
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !77
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @resolve_clobber(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !129 !PGOFuncName !161 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !90
  %5 = tail call fastcc zeroext i8 @resolve_reg_p(ptr noundef %4) #16, !range !105
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = tail call fastcc zeroext i8 @resolve_subreg_p(ptr noundef %4) #16, !range !105
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %39, label %10

10:                                               ; preds = %7, %2
  %11 = load i32, ptr %4, align 8
  %12 = lshr i32 %11, 16
  %13 = and i32 %12, 255
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !90
  %17 = zext i8 %16 to i32
  %18 = add nuw nsw i32 %17, 3
  %19 = lshr i32 %18, 2
  %20 = load i32, ptr @word_mode, align 4, !tbaa !77
  %21 = tail call fastcc ptr @simplify_gen_subreg_concatn(i32 noundef %20, ptr noundef nonnull %4, i32 noundef %13, i32 noundef 0) #16
  %22 = tail call zeroext i8 @validate_change(ptr noundef null, ptr noundef nonnull %3, ptr noundef %21, i8 noundef zeroext 0) #17
  %23 = tail call zeroext i8 @df_insn_rescan(ptr noundef %1) #17
  %24 = icmp eq i8 %22, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 859, ptr noundef nonnull @.str.3) #17
  br label %26

26:                                               ; preds = %10, %25
  %27 = add nsw i32 %19, -1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %26, %29
  %30 = phi i32 [ %36, %29 ], [ %27, %26 ]
  %31 = load i32, ptr @word_mode, align 4, !tbaa !77
  %32 = shl i32 %30, 2
  %33 = tail call fastcc ptr @simplify_gen_subreg_concatn(i32 noundef %31, ptr noundef nonnull %4, i32 noundef %13, i32 noundef %32) #16
  %34 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef 0, ptr noundef %33) #17
  %35 = tail call ptr @emit_insn_after(ptr noundef %34, ptr noundef %1) #17
  %36 = add i32 %30, -1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %29, !llvm.loop !162

38:                                               ; preds = %29, %26
  tail call fastcc void @resolve_reg_notes(ptr noundef %1) #16
  br label %39

39:                                               ; preds = %7, %38
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @resolve_use(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #1 !prof !129 !PGOFuncName !163 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !90
  %5 = tail call fastcc zeroext i8 @resolve_reg_p(ptr noundef %4) #16, !range !105
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = tail call fastcc zeroext i8 @resolve_subreg_p(ptr noundef %4) #16, !range !105
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7, %2
  %11 = tail call ptr @delete_insn(ptr noundef %1) #17
  br label %13

12:                                               ; preds = %7
  tail call fastcc void @resolve_reg_notes(ptr noundef %1) #16
  br label %13

13:                                               ; preds = %12, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @resolve_debug(ptr noundef %0) unnamed_addr #1 !prof !129 !PGOFuncName !164 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %3 = tail call i32 @for_each_rtx(ptr noundef nonnull %2, ptr noundef nonnull @adjust_decomposed_uses, ptr noundef null) #17
  %4 = tail call zeroext i8 @df_insn_rescan(ptr noundef %0) #17
  tail call fastcc void @resolve_reg_notes(ptr noundef %0) #16
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @control_flow_insn_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @can_throw_internal(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @resolve_simple_move(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #1 !prof !129 !PGOFuncName !165 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !90
  %6 = load ptr, ptr %3, align 8, !tbaa !90
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 16
  %9 = and i32 %8, 255
  %10 = zext nneg i32 %9 to i64
  %11 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !90
  %13 = zext i8 %12 to i32
  %14 = add nuw nsw i32 %13, 3
  %15 = lshr i32 %14, 2
  %16 = icmp ult i8 %12, 5
  br i1 %16, label %289, label %17

17:                                               ; preds = %2
  tail call void @start_sequence() #17
  %18 = load i32, ptr %5, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 39
  br i1 %20, label %21, label %48

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !90
  %24 = tail call fastcc zeroext i8 @resolve_reg_p(ptr noundef %23) #16, !range !105
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %48, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %28 = load i32, ptr %27, align 8, !tbaa !90
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load i8, ptr %11, align 1, !tbaa !90
  %32 = load i32, ptr %23, align 8
  %33 = lshr i32 %32, 16
  %34 = and i32 %33, 255
  %35 = zext nneg i32 %34 to i64
  %36 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !90
  %38 = icmp eq i8 %31, %37
  br i1 %38, label %48, label %39

39:                                               ; preds = %30, %26
  %40 = tail call ptr @gen_reg_rtx(i32 noundef %9) #17
  %41 = load i32, ptr %6, align 8
  %42 = and i32 %41, 65535
  %43 = icmp eq i32 %42, 37
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  %46 = load ptr, ptr %45, align 8, !tbaa !90
  %47 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %46, ptr %47, align 8, !tbaa !90
  br label %48

48:                                               ; preds = %39, %44, %30, %21, %17
  %49 = phi ptr [ %6, %44 ], [ %6, %39 ], [ null, %30 ], [ null, %21 ], [ null, %17 ]
  %50 = phi ptr [ %40, %44 ], [ %40, %39 ], [ %6, %30 ], [ %6, %21 ], [ %6, %17 ]
  %51 = load i32, ptr %50, align 8
  %52 = and i32 %51, 65535
  %53 = icmp eq i32 %52, 39
  br i1 %53, label %54, label %92

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !90
  %57 = tail call fastcc zeroext i8 @resolve_reg_p(ptr noundef %56) #16, !range !105
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %92, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1, i32 0, i32 0, i64 1
  %61 = load i32, ptr %60, align 8, !tbaa !90
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %59
  %64 = load i8, ptr %11, align 1, !tbaa !90
  %65 = load i32, ptr %56, align 8
  %66 = lshr i32 %65, 16
  %67 = and i32 %66, 255
  %68 = zext nneg i32 %67 to i64
  %69 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !90
  %71 = icmp eq i8 %64, %70
  br i1 %71, label %92, label %72

72:                                               ; preds = %63, %59
  %73 = tail call ptr @gen_reg_rtx(i32 noundef %9) #17
  %74 = tail call ptr @emit_move_insn(ptr noundef %73, ptr noundef nonnull %5) #17
  %75 = load i32, ptr %74, align 8
  %76 = and i32 %75, 65535
  %77 = add nsw i32 %76, -7
  %78 = icmp ult i32 %77, 4
  br i1 %78, label %79, label %88

79:                                               ; preds = %72
  %80 = getelementptr inbounds %struct.rtx_def, ptr %74, i64 1
  %81 = load ptr, ptr %80, align 8, !tbaa !90
  %82 = load i32, ptr %81, align 8
  %83 = and i32 %82, 65535
  %84 = icmp eq i32 %83, 23
  br i1 %84, label %89, label %85

85:                                               ; preds = %79
  %86 = tail call ptr @single_set_2(ptr noundef nonnull %74, ptr noundef nonnull %81) #17
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %72, %85
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 680, ptr noundef nonnull @.str.3) #17
  br label %89

89:                                               ; preds = %79, %85, %88
  %90 = phi ptr [ %86, %85 ], [ null, %88 ], [ %81, %79 ]
  %91 = tail call fastcc ptr @resolve_simple_move(ptr noundef %90, ptr noundef nonnull %74) #16
  br label %92

92:                                               ; preds = %89, %63, %54, %48
  %93 = phi ptr [ %73, %89 ], [ %5, %63 ], [ %5, %54 ], [ %5, %48 ]
  %94 = load ptr, ptr %4, align 8, !tbaa !90
  %95 = icmp eq ptr %93, %94
  br i1 %95, label %96, label %112

96:                                               ; preds = %92
  %97 = load ptr, ptr %3, align 8, !tbaa !90
  %98 = icmp eq ptr %50, %97
  br i1 %98, label %99, label %112

99:                                               ; preds = %96
  %100 = tail call fastcc zeroext i8 @resolve_reg_p(ptr noundef %93) #16, !range !105
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %99
  %103 = tail call fastcc zeroext i8 @resolve_subreg_p(ptr noundef %93) #16, !range !105
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %102
  %106 = tail call fastcc zeroext i8 @resolve_reg_p(ptr noundef nonnull %50) #16, !range !105
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = tail call fastcc zeroext i8 @resolve_subreg_p(ptr noundef nonnull %50) #16, !range !105
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  tail call void @end_sequence() #17
  br label %289

112:                                              ; preds = %108, %105, %102, %99, %96, %92
  %113 = load i32, ptr %93, align 8
  %114 = and i32 %113, 65535
  %115 = icmp eq i32 %114, 43
  br i1 %115, label %120, label %116

116:                                              ; preds = %112
  %117 = load i32, ptr %50, align 8
  %118 = and i32 %117, 65535
  %119 = icmp eq i32 %118, 43
  br i1 %119, label %124, label %135

120:                                              ; preds = %112
  %121 = getelementptr inbounds %struct.rtx_def, ptr %93, i64 0, i32 1
  %122 = tail call i32 @for_each_rtx(ptr noundef nonnull %121, ptr noundef nonnull @resolve_subreg_use, ptr noundef null) #17
  %123 = load i32, ptr %50, align 8
  br label %124

124:                                              ; preds = %116, %120
  %125 = phi i32 [ %117, %116 ], [ %123, %120 ]
  %126 = and i32 %125, 65535
  %127 = icmp eq i32 %126, 43
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1
  %130 = tail call i32 @for_each_rtx(ptr noundef nonnull %129, ptr noundef nonnull @resolve_subreg_use, ptr noundef null) #17
  br label %131

131:                                              ; preds = %128, %124
  %132 = tail call i32 @apply_change_group() #17
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 714, ptr noundef nonnull @.str.3) #17
  br label %135

135:                                              ; preds = %134, %131, %116
  %136 = tail call fastcc zeroext i8 @can_decompose_p(ptr noundef nonnull %93) #16, !range !105
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %145, label %138

138:                                              ; preds = %135
  %139 = tail call i32 @side_effects_p(ptr noundef nonnull %93) #17
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %138
  %142 = load i32, ptr %93, align 8
  %143 = and i32 %142, 65535
  %144 = icmp eq i32 %143, 17
  br i1 %144, label %145, label %148

145:                                              ; preds = %141, %138, %135
  %146 = tail call ptr @gen_reg_rtx(i32 noundef %9) #17
  %147 = tail call ptr @emit_move_insn(ptr noundef %146, ptr noundef nonnull %93) #17
  br label %148

148:                                              ; preds = %145, %141
  %149 = phi ptr [ %146, %145 ], [ %93, %141 ]
  %150 = tail call i32 @push_operand(ptr noundef nonnull %50, i32 noundef %9) #17
  %151 = trunc i32 %150 to i8
  %152 = tail call fastcc zeroext i8 @can_decompose_p(ptr noundef nonnull %50) #16, !range !105
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %170, label %154

154:                                              ; preds = %148
  %155 = tail call i32 @side_effects_p(ptr noundef nonnull %50) #17
  %156 = icmp eq i32 %155, 0
  %157 = icmp ne i8 %151, 0
  %158 = select i1 %156, i1 true, i1 %157
  br i1 %158, label %159, label %170

159:                                              ; preds = %154
  %160 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %10
  %161 = load i8, ptr %160, align 1, !tbaa !90
  %162 = and i8 %161, -2
  %163 = icmp eq i8 %162, 2
  br i1 %163, label %194, label %164

164:                                              ; preds = %159
  %165 = tail call fastcc zeroext i8 @resolve_reg_p(ptr noundef nonnull %50) #16, !range !105
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %167, label %194

167:                                              ; preds = %164
  %168 = tail call fastcc zeroext i8 @resolve_subreg_p(ptr noundef nonnull %50) #16, !range !105
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %170, label %194

170:                                              ; preds = %154, %167, %148
  %171 = icmp eq ptr %49, null
  %172 = select i1 %171, ptr %50, ptr %49
  %173 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %10
  %174 = load i8, ptr %173, align 1, !tbaa !90
  %175 = and i8 %174, -2
  %176 = icmp eq i8 %175, 2
  br i1 %176, label %184, label %177

177:                                              ; preds = %170
  %178 = load i8, ptr %11, align 1, !tbaa !90
  %179 = zext i8 %178 to i32
  %180 = shl nuw nsw i32 %179, 3
  %181 = tail call i32 @mode_for_size(i32 noundef %180, i32 noundef 2, i32 noundef 0) #17
  %182 = icmp eq i32 %181, 1
  br i1 %182, label %183, label %184

183:                                              ; preds = %177
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 752, ptr noundef nonnull @.str.3) #17
  br label %184

184:                                              ; preds = %170, %183, %177
  %185 = phi i32 [ %181, %177 ], [ 1, %183 ], [ %9, %170 ]
  %186 = tail call ptr @gen_reg_rtx(i32 noundef %185) #17
  %187 = load i32, ptr %172, align 8
  %188 = and i32 %187, 65535
  %189 = icmp eq i32 %188, 37
  br i1 %189, label %190, label %194

190:                                              ; preds = %184
  %191 = getelementptr inbounds %struct.rtx_def, ptr %172, i64 0, i32 1, i32 0, i32 0, i64 2
  %192 = load ptr, ptr %191, align 8, !tbaa !90
  %193 = getelementptr inbounds %struct.rtx_def, ptr %186, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %192, ptr %193, align 8, !tbaa !90
  br label %194

194:                                              ; preds = %159, %184, %190, %167, %164
  %195 = phi i32 [ %9, %164 ], [ %9, %167 ], [ %185, %190 ], [ %185, %184 ], [ %9, %159 ]
  %196 = phi ptr [ %49, %164 ], [ %49, %167 ], [ %172, %190 ], [ %172, %184 ], [ %49, %159 ]
  %197 = phi ptr [ %50, %164 ], [ %50, %167 ], [ %186, %190 ], [ %186, %184 ], [ %50, %159 ]
  %198 = icmp eq i8 %151, 0
  br i1 %198, label %235, label %199

199:                                              ; preds = %194
  %200 = load i8, ptr %11, align 1, !tbaa !90
  %201 = and i8 %200, 3
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %199
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 763, ptr noundef nonnull @.str.3) #17
  br label %204

204:                                              ; preds = %199, %203
  %205 = getelementptr inbounds %struct.rtx_def, ptr %197, i64 0, i32 1
  %206 = load ptr, ptr %205, align 8, !tbaa !90
  %207 = load i32, ptr %206, align 8
  %208 = and i32 %207, 65535
  %209 = icmp eq i32 %208, 78
  br i1 %209, label %210, label %213

210:                                              ; preds = %204
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 764, ptr noundef nonnull @.str.3) #17
  %211 = load ptr, ptr %205, align 8, !tbaa !90
  %212 = load i32, ptr %211, align 8
  br label %213

213:                                              ; preds = %204, %210
  %214 = phi i32 [ %207, %204 ], [ %212, %210 ]
  %215 = and i32 %214, 65535
  %216 = icmp eq i32 %215, 79
  br i1 %216, label %217, label %218

217:                                              ; preds = %213
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 765, ptr noundef nonnull @.str.3) #17
  br label %218

218:                                              ; preds = %217, %213
  %219 = tail call i32 @llvm.umax.i32(i32 %15, i32 1)
  br label %220

220:                                              ; preds = %218, %220
  %221 = phi i32 [ %223, %220 ], [ %15, %218 ]
  %222 = phi i32 [ %233, %220 ], [ 0, %218 ]
  %223 = add nsw i32 %221, -1
  %224 = load ptr, ptr %205, align 8, !tbaa !90
  %225 = tail call ptr @copy_rtx(ptr noundef %224) #17
  %226 = load i32, ptr @word_mode, align 4, !tbaa !77
  %227 = shl i32 %223, 2
  %228 = zext i32 %227 to i64
  %229 = tail call ptr @adjust_automodify_address_1(ptr noundef nonnull %197, i32 noundef %226, ptr noundef %225, i64 noundef %228, i32 noundef 0) #17
  %230 = load i32, ptr @word_mode, align 4, !tbaa !77
  %231 = tail call fastcc ptr @simplify_gen_subreg_concatn(i32 noundef %230, ptr noundef %149, i32 noundef %9, i32 noundef %227) #16
  %232 = tail call ptr @emit_move_insn(ptr noundef %229, ptr noundef %231) #17
  %233 = add nuw nsw i32 %222, 1
  %234 = icmp eq i32 %233, %219
  br i1 %234, label %256, label %220, !llvm.loop !166

235:                                              ; preds = %194
  %236 = load i32, ptr %197, align 8
  %237 = and i32 %236, 65535
  %238 = icmp eq i32 %237, 37
  br i1 %238, label %239, label %244

239:                                              ; preds = %235
  %240 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %197) #16
  %241 = icmp ult i32 %240, 53
  br i1 %241, label %244, label %242

242:                                              ; preds = %239
  %243 = tail call ptr @emit_clobber(ptr noundef nonnull %197) #17
  br label %244

244:                                              ; preds = %235, %239, %242
  %245 = tail call i32 @llvm.umax.i32(i32 %15, i32 1)
  br label %246

246:                                              ; preds = %244, %246
  %247 = phi i32 [ %254, %246 ], [ 0, %244 ]
  %248 = load i32, ptr @word_mode, align 4, !tbaa !77
  %249 = shl nuw nsw i32 %247, 2
  %250 = tail call fastcc ptr @simplify_gen_subreg_concatn(i32 noundef %248, ptr noundef nonnull %197, i32 noundef %195, i32 noundef %249) #16
  %251 = load i32, ptr @word_mode, align 4, !tbaa !77
  %252 = tail call fastcc ptr @simplify_gen_subreg_concatn(i32 noundef %251, ptr noundef %149, i32 noundef %9, i32 noundef %249) #16
  %253 = tail call ptr @emit_move_insn(ptr noundef %250, ptr noundef %252) #17
  %254 = add nuw nsw i32 %247, 1
  %255 = icmp eq i32 %254, %245
  br i1 %255, label %256, label %246, !llvm.loop !167

256:                                              ; preds = %220, %246
  %257 = icmp eq ptr %196, null
  br i1 %257, label %285, label %258

258:                                              ; preds = %256
  %259 = icmp eq i32 %195, %9
  br i1 %259, label %265, label %260

260:                                              ; preds = %258
  %261 = load i32, ptr %197, align 8
  %262 = lshr i32 %261, 16
  %263 = and i32 %262, 255
  %264 = tail call ptr @simplify_gen_subreg(i32 noundef %9, ptr noundef nonnull %197, i32 noundef %263, i32 noundef 0) #17
  br label %265

265:                                              ; preds = %258, %260
  %266 = phi ptr [ %264, %260 ], [ %197, %258 ]
  %267 = tail call ptr @emit_move_insn(ptr noundef nonnull %196, ptr noundef %266) #17
  %268 = load i32, ptr %267, align 8
  %269 = and i32 %268, 65535
  %270 = add nsw i32 %269, -7
  %271 = icmp ult i32 %270, 4
  br i1 %271, label %272, label %281

272:                                              ; preds = %265
  %273 = getelementptr inbounds %struct.rtx_def, ptr %267, i64 1
  %274 = load ptr, ptr %273, align 8, !tbaa !90
  %275 = load i32, ptr %274, align 8
  %276 = and i32 %275, 65535
  %277 = icmp eq i32 %276, 23
  br i1 %277, label %282, label %278

278:                                              ; preds = %272
  %279 = tail call ptr @single_set_2(ptr noundef nonnull %267, ptr noundef nonnull %274) #17
  %280 = icmp eq ptr %279, null
  br i1 %280, label %281, label %282

281:                                              ; preds = %265, %278
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 818, ptr noundef nonnull @.str.3) #17
  br label %282

282:                                              ; preds = %272, %278, %281
  %283 = phi ptr [ %279, %278 ], [ null, %281 ], [ %274, %272 ]
  %284 = tail call fastcc ptr @resolve_simple_move(ptr noundef %283, ptr noundef nonnull %267) #16
  br label %285

285:                                              ; preds = %282, %256
  %286 = tail call ptr @get_insns() #17
  tail call void @end_sequence() #17
  tail call void @copy_reg_eh_region_note_forward(ptr noundef %1, ptr noundef %286, ptr noundef null) #17
  %287 = tail call ptr @emit_insn_before(ptr noundef %286, ptr noundef %1) #17
  %288 = tail call ptr @delete_insn(ptr noundef %1) #17
  br label %289

289:                                              ; preds = %2, %285, %111
  %290 = phi ptr [ %286, %285 ], [ %1, %111 ], [ %1, %2 ]
  ret ptr %290
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #9 !prof !129 !PGOFuncName !168 {
  %3 = load ptr, ptr %0, align 8, !tbaa !126
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  %6 = and i32 %1, 63
  %7 = zext nneg i32 %6 to i64
  %8 = shl nuw i64 1, %7
  %9 = lshr i32 %1, 6
  %10 = zext nneg i32 %9 to i64
  br label %25

11:                                               ; preds = %2
  %12 = lshr i32 %1, 6
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !151
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !90
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !90
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !151
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !151
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @resolve_shift_zext(ptr noundef %0) unnamed_addr #1 !prof !129 !PGOFuncName !169 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = add nsw i32 %3, -7
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %6, label %108

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !90
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 23
  br i1 %11, label %15, label %12

12:                                               ; preds = %6
  %13 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %8) #17
  %14 = icmp eq ptr %13, null
  br i1 %14, label %108, label %15

15:                                               ; preds = %6, %12
  %16 = phi ptr [ %13, %12 ], [ %8, %6 ]
  %17 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %18 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !90
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = trunc i32 %20 to i16
  switch i16 %22, label %108 [
    i16 65, label %23
    i16 68, label %23
    i16 99, label %23
  ]

23:                                               ; preds = %15, %15, %15
  %24 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !90
  %26 = load ptr, ptr %17, align 8, !tbaa !90
  %27 = tail call fastcc zeroext i8 @resolve_reg_p(ptr noundef %26) #16, !range !105
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = tail call fastcc zeroext i8 @resolve_reg_p(ptr noundef %25) #16, !range !105
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %108, label %32

32:                                               ; preds = %29, %23
  %33 = icmp eq i32 %21, 68
  %34 = icmp eq i32 %21, 99
  %35 = or i1 %34, %33
  %36 = select i1 %35, i32 0, i32 4
  %37 = xor i32 %36, 4
  %38 = select i1 %33, i32 4, i32 0
  tail call void @start_sequence() #17
  %39 = load i32, ptr @word_mode, align 4, !tbaa !77
  %40 = load ptr, ptr %17, align 8, !tbaa !90
  %41 = load i32, ptr %40, align 8
  %42 = lshr i32 %41, 16
  %43 = and i32 %42, 255
  %44 = tail call fastcc ptr @simplify_gen_subreg_concatn(i32 noundef %39, ptr noundef nonnull %40, i32 noundef %43, i32 noundef %36) #16
  %45 = load i32, ptr @word_mode, align 4, !tbaa !77
  %46 = load ptr, ptr %17, align 8, !tbaa !90
  %47 = load i32, ptr %46, align 8
  %48 = lshr i32 %47, 16
  %49 = and i32 %48, 255
  %50 = tail call fastcc ptr @simplify_gen_subreg_concatn(i32 noundef %45, ptr noundef nonnull %46, i32 noundef %49, i32 noundef %37) #16
  %51 = load i32, ptr @word_mode, align 4, !tbaa !77
  %52 = load i32, ptr %25, align 8
  %53 = lshr i32 %52, 16
  %54 = and i32 %53, 255
  %55 = tail call fastcc ptr @simplify_gen_subreg_concatn(i32 noundef %51, ptr noundef nonnull %25, i32 noundef %54, i32 noundef %38) #16
  %56 = load i32, ptr %19, align 8
  %57 = and i32 %56, 65535
  %58 = icmp eq i32 %57, 99
  br i1 %58, label %74, label %59

59:                                               ; preds = %32
  %60 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  %61 = load ptr, ptr %60, align 8, !tbaa !90
  %62 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1
  %63 = load i64, ptr %62, align 8, !tbaa !90
  %64 = trunc i64 %63 to i32
  %65 = icmp sgt i32 %64, 32
  br i1 %65, label %66, label %74

66:                                               ; preds = %59
  %67 = icmp eq i32 %57, 65
  %68 = select i1 %67, i32 83, i32 84
  %69 = load i32, ptr @word_mode, align 4, !tbaa !77
  %70 = add i64 %63, 4294967264
  %71 = and i64 %70, 4294967295
  %72 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %71) #17
  %73 = tail call ptr @expand_shift(i32 noundef %68, i32 noundef %69, ptr noundef %55, ptr noundef %72, ptr noundef %44, i32 noundef 1) #17
  br label %74

74:                                               ; preds = %59, %66, %32
  %75 = phi ptr [ %55, %32 ], [ %73, %66 ], [ %55, %59 ]
  %76 = icmp eq ptr %44, %75
  br i1 %76, label %79, label %77

77:                                               ; preds = %74
  %78 = tail call ptr @emit_move_insn(ptr noundef %44, ptr noundef %75) #17
  br label %79

79:                                               ; preds = %77, %74
  %80 = load i32, ptr @word_mode, align 4, !tbaa !77
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %81
  %83 = load ptr, ptr %82, align 8, !tbaa !85
  %84 = tail call ptr @emit_move_insn(ptr noundef %50, ptr noundef %83) #17
  %85 = tail call ptr @get_insns() #17
  tail call void @end_sequence() #17
  %86 = tail call ptr @emit_insn_before(ptr noundef %85, ptr noundef nonnull %0) #17
  %87 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %88 = icmp eq ptr %87, null
  br i1 %88, label %106, label %89

89:                                               ; preds = %79
  %90 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %91 = load i32, ptr %90, align 8, !tbaa !90
  %92 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %87, ptr noundef nonnull @.str.6, i32 noundef %91) #16
  %93 = icmp eq ptr %85, %0
  br i1 %93, label %103, label %94

94:                                               ; preds = %89, %94
  %95 = phi ptr [ %101, %94 ], [ %85, %89 ]
  %96 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %97 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 0, i32 1
  %98 = load i32, ptr %97, align 8, !tbaa !90
  %99 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %96, ptr noundef nonnull @.str.7, i32 noundef %98) #16
  %100 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 0, i32 1, i32 0, i32 0, i64 2
  %101 = load ptr, ptr %100, align 8, !tbaa !90
  %102 = icmp eq ptr %101, %0
  br i1 %102, label %103, label %94, !llvm.loop !170

103:                                              ; preds = %94, %89
  %104 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %105 = tail call i32 @fputc(i32 10, ptr %104)
  br label %106

106:                                              ; preds = %103, %79
  %107 = tail call ptr @delete_insn(ptr noundef nonnull %0) #17
  br label %108

108:                                              ; preds = %1, %29, %15, %12, %106
  %109 = phi ptr [ %85, %106 ], [ null, %12 ], [ null, %15 ], [ null, %29 ], [ null, %1 ]
  ret ptr %109
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @resolve_subreg_use(ptr noundef %0, ptr noundef %1) #1 !prof !129 !PGOFuncName !171 {
  %3 = load ptr, ptr %0, align 8, !tbaa !85
  %4 = icmp eq ptr %3, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc zeroext i8 @resolve_subreg_p(ptr noundef nonnull %3) #16, !range !105
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %5
  %9 = load i32, ptr %3, align 8
  %10 = lshr i32 %9, 16
  %11 = and i32 %10, 255
  %12 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !90
  %14 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %15 = load i32, ptr %14, align 8, !tbaa !90
  %16 = tail call fastcc ptr @simplify_subreg_concatn(i32 noundef %11, ptr noundef %13, i32 noundef %15) #16
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %8
  %19 = icmp eq ptr %1, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 514, ptr noundef nonnull @.str.3) #17
  br label %26

21:                                               ; preds = %8
  %22 = tail call zeroext i8 @validate_change(ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull %16, i8 noundef zeroext 1) #17
  br label %26

23:                                               ; preds = %5
  %24 = tail call fastcc zeroext i8 @resolve_reg_p(ptr noundef nonnull %3) #16, !range !105
  %25 = zext nneg i8 %24 to i32
  br label %26

26:                                               ; preds = %23, %20, %18, %2, %21
  %27 = phi i32 [ -1, %21 ], [ 0, %2 ], [ 1, %18 ], [ 1, %20 ], [ %25, %23 ]
  ret i32 %27
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @resolve_reg_notes(ptr noundef %0) unnamed_addr #1 !prof !129 !PGOFuncName !172 {
  %2 = tail call ptr @find_reg_equal_equiv_note(ptr noundef %0) #17
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @num_validated_changes() #17
  %6 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %7 = tail call i32 @for_each_rtx(ptr noundef nonnull %6, ptr noundef nonnull @resolve_subreg_use, ptr noundef null) #17
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void @remove_note(ptr noundef %0, ptr noundef nonnull %2) #17
  br label %14

10:                                               ; preds = %4
  %11 = tail call i32 @num_validated_changes() #17
  %12 = icmp eq i32 %5, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @df_notes_rescan(ptr noundef %0) #17
  br label %14

14:                                               ; preds = %9, %13, %10, %1
  %15 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !85
  %17 = icmp eq ptr %16, null
  br i1 %17, label %39, label %18

18:                                               ; preds = %14, %35
  %19 = phi ptr [ %36, %35 ], [ %16, %14 ]
  %20 = phi ptr [ %37, %35 ], [ %15, %14 ]
  %21 = load i32, ptr %19, align 8
  %22 = lshr i32 %21, 16
  %23 = trunc i32 %22 to i8
  switch i8 %23, label %32 [
    i8 1, label %24
    i8 6, label %24
  ]

24:                                               ; preds = %18, %18
  %25 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !90
  %27 = tail call fastcc zeroext i8 @resolve_reg_p(ptr noundef %26) #16, !range !105
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !90
  store ptr %31, ptr %20, align 8, !tbaa !85
  br label %35

32:                                               ; preds = %18, %24
  %33 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !85
  br label %35

35:                                               ; preds = %32, %29
  %36 = phi ptr [ %31, %29 ], [ %34, %32 ]
  %37 = phi ptr [ %20, %29 ], [ %33, %32 ]
  %38 = icmp eq ptr %36, null
  br i1 %38, label %39, label %18, !llvm.loop !173

39:                                               ; preds = %35, %14
  ret void
}

; Function Attrs: optsize
declare i32 @num_validated_changes() local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @validate_unshare_change(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @apply_change_group() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sbitmap_iter_init(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #8 !prof !129 !PGOFuncName !174 {
  %3 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %3, align 4, !tbaa !175
  %4 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  store i32 0, ptr %4, align 8, !tbaa !177
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !178
  %7 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 1
  store i32 %6, ptr %7, align 8, !tbaa !179
  %8 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  store ptr %8, ptr %0, align 8, !tbaa !180
  %9 = icmp eq i32 %6, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load i64, ptr %8, align 8, !tbaa !151
  br label %12

12:                                               ; preds = %2, %10
  %13 = phi i64 [ %11, %10 ], [ 0, %2 ]
  %14 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 4
  store i64 %13, ptr %14, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @sbitmap_iter_cond(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #7 !prof !129 !PGOFuncName !181 {
  %3 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 4
  %4 = load i64, ptr %3, align 8, !tbaa !182
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !179
  %10 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %7, align 4, !tbaa !175
  br label %19

12:                                               ; preds = %23
  store i32 %21, ptr %7, align 4, !tbaa !175
  br label %13

13:                                               ; preds = %12, %2
  %14 = phi i64 [ %28, %12 ], [ %4, %2 ]
  %15 = and i64 %14, 1
  %16 = icmp eq i64 %15, 0
  %17 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !177
  br i1 %16, label %30, label %38

19:                                               ; preds = %6, %23
  %20 = phi i32 [ %11, %6 ], [ %21, %23 ]
  %21 = add i32 %20, 1
  %22 = icmp ult i32 %21, %9
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = shl i32 %21, 6
  store i32 %24, ptr %10, align 8, !tbaa !177
  %25 = load ptr, ptr %0, align 8, !tbaa !180
  %26 = zext i32 %21 to i64
  %27 = getelementptr inbounds i64, ptr %25, i64 %26
  %28 = load i64, ptr %27, align 8, !tbaa !151
  store i64 %28, ptr %3, align 8, !tbaa !182
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %19, label %12, !llvm.loop !183

30:                                               ; preds = %13, %30
  %31 = phi i32 [ %33, %30 ], [ %18, %13 ]
  %32 = phi i64 [ %34, %30 ], [ %14, %13 ]
  %33 = add i32 %31, 1
  %34 = lshr exact i64 %32, 1
  %35 = and i64 %32, 2
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %30, label %37, !llvm.loop !184

37:                                               ; preds = %30
  store i32 %33, ptr %17, align 8, !tbaa !177
  store i64 %34, ptr %3, align 8, !tbaa !182
  br label %38

38:                                               ; preds = %13, %37
  %39 = phi i32 [ %33, %37 ], [ %18, %13 ]
  store i32 %39, ptr %1, align 4, !tbaa !77
  br label %41

40:                                               ; preds = %19
  store i32 %21, ptr %7, align 4, !tbaa !175
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i8 [ 1, %38 ], [ 0, %40 ]
  ret i8 %42
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #10 !prof !129 !PGOFuncName !185 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !85
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @split_block(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @rtl_make_eh_edge(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sbitmap_iter_next(ptr nocapture noundef %0) unnamed_addr #8 !prof !129 !PGOFuncName !186 {
  %2 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 4
  %3 = load i64, ptr %2, align 8, !tbaa !182
  %4 = lshr i64 %3, 1
  store i64 %4, ptr %2, align 8, !tbaa !182
  %5 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !177
  %7 = add i32 %6, 1
  store i32 %7, ptr %5, align 8, !tbaa !177
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_bitmap_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 !prof !129 !PGOFuncName !187 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !132
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_bitmap_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !85
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !85
  ret i32 %14
}

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_bitmap_heap_free() unnamed_addr #12 !prof !129 !PGOFuncName !188 {
  %1 = load ptr, ptr @reg_copy_graph, align 8, !tbaa !85
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #16
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @reg_copy_graph, align 8, !tbaa !85
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_bitmap_heap_reserve_exact(i32 noundef %0) unnamed_addr #1 !prof !129 !PGOFuncName !189 {
  %2 = load ptr, ptr @reg_copy_graph, align 8, !tbaa !85
  %3 = tail call fastcc i32 @VEC_bitmap_base_space(ptr noundef %2, i32 noundef %0) #16, !range !104
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef %2, i32 noundef %0) #17
  store ptr %6, ptr @reg_copy_graph, align 8, !tbaa !85
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_bitmap_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #10 !prof !129 !PGOFuncName !190 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_bitmap_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !191
  %7 = load i32, ptr %0, align 8, !tbaa !132
  %8 = sub i32 %6, %7
  %9 = icmp uge i32 %8, %1
  br label %12

10:                                               ; preds = %2
  %11 = icmp eq i32 %1, 0
  br label %12

12:                                               ; preds = %10, %4
  %13 = phi i1 [ %9, %4 ], [ %11, %10 ]
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !129 !PGOFuncName !192 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !90
  ret i32 %3
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @recog(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @simple_move_operand(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !129 !PGOFuncName !193 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 39
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !90
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ %3, %1 ]
  %12 = phi i32 [ %8, %5 ], [ %2, %1 ]
  %13 = phi ptr [ %7, %5 ], [ %0, %1 ]
  %14 = zext nneg i32 %11 to i64
  %15 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !77
  %17 = and i32 %16, -2
  %18 = icmp eq i32 %17, 8
  br i1 %18, label %19, label %30

19:                                               ; preds = %10
  %20 = trunc i32 %12 to i16
  switch i16 %20, label %29 [
    i16 44, label %30
    i16 45, label %30
    i16 121, label %30
    i16 35, label %30
    i16 43, label %21
  ]

21:                                               ; preds = %19
  %22 = and i32 %12, 134217728
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !90
  %27 = tail call i32 @mode_dependent_address_p(ptr noundef %26) #17
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19, %24
  br label %30

30:                                               ; preds = %21, %24, %19, %19, %19, %19, %10, %29
  %31 = phi i8 [ 1, %29 ], [ 0, %10 ], [ 0, %19 ], [ 0, %19 ], [ 0, %19 ], [ 0, %19 ], [ 0, %24 ], [ 0, %21 ]
  ret i8 %31
}

; Function Attrs: optsize
declare i32 @mode_for_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @mode_dependent_address_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_bitmap_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #10 !prof !129 !PGOFuncName !194 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_bitmap_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !85
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_bitmap_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #8 !prof !129 !PGOFuncName !195 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_bitmap_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !85
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @ix86_modes_tieable_p(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @bitmap_ior_and_compl_into(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @bitmap_and_compl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @rtvec_alloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_reg_rtx_offset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @resolve_reg_p(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !129 !PGOFuncName !196 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 42
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @resolve_subreg_p(ptr nocapture noundef readonly %0) unnamed_addr #14 !prof !129 !PGOFuncName !197 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 39
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !90
  %8 = tail call fastcc zeroext i8 @resolve_reg_p(ptr noundef %7) #16, !range !105
  br label %9

9:                                                ; preds = %1, %5
  %10 = phi i8 [ %8, %5 ], [ 0, %1 ]
  ret i8 %10
}

; Function Attrs: optsize
declare zeroext i8 @validate_change(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @simplify_gen_subreg_concatn(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 !prof !129 !PGOFuncName !198 {
  %5 = load i32, ptr %1, align 8
  br label %6

6:                                                ; preds = %18, %4
  %7 = phi i32 [ %5, %4 ], [ %15, %18 ]
  %8 = phi ptr [ %1, %4 ], [ %14, %18 ]
  %9 = phi i32 [ %2, %4 ], [ %25, %18 ]
  %10 = and i32 %7, 65535
  %11 = icmp eq i32 %10, 39
  br i1 %11, label %12, label %82

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !90
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 42
  br i1 %17, label %18, label %82

18:                                               ; preds = %12
  %19 = lshr i32 %7, 16
  %20 = and i32 %19, 255
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !90
  %24 = lshr i32 %15, 16
  %25 = and i32 %24, 255
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !90
  %29 = icmp eq i8 %23, %28
  %30 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 1
  %31 = load i32, ptr %30, align 8, !tbaa !90
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %29, i1 %32, i1 false
  br i1 %33, label %6, label %34

34:                                               ; preds = %18
  %35 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %36 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 1
  %37 = tail call fastcc ptr @simplify_subreg_concatn(i32 noundef %20, ptr noundef nonnull %14, i32 noundef %31) #16
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %76

39:                                               ; preds = %34
  %40 = zext i32 %0 to i64
  %41 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !90
  %43 = load i32, ptr %8, align 8
  %44 = lshr i32 %43, 16
  %45 = and i32 %44, 255
  %46 = zext nneg i32 %45 to i64
  %47 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !90
  %49 = icmp ugt i8 %42, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %39
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 439, ptr noundef nonnull @.str.3) #17
  %51 = load i32, ptr %8, align 8
  %52 = lshr i32 %51, 16
  %53 = and i32 %52, 255
  %54 = zext nneg i32 %53 to i64
  br label %55

55:                                               ; preds = %39, %50
  %56 = phi i64 [ %46, %39 ], [ %54, %50 ]
  %57 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !90
  %59 = load ptr, ptr %35, align 8, !tbaa !90
  %60 = load i32, ptr %59, align 8
  %61 = lshr i32 %60, 16
  %62 = and i32 %61, 255
  %63 = zext nneg i32 %62 to i64
  %64 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !90
  %66 = icmp ugt i8 %58, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %55
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 441, ptr noundef nonnull @.str.3) #17
  %68 = load ptr, ptr %35, align 8, !tbaa !90
  br label %69

69:                                               ; preds = %55, %67
  %70 = phi ptr [ %59, %55 ], [ %68, %67 ]
  %71 = load i32, ptr %36, align 8, !tbaa !90
  %72 = add i32 %71, %3
  %73 = tail call fastcc ptr @simplify_subreg_concatn(i32 noundef %0, ptr noundef %70, i32 noundef %72) #16
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %118

75:                                               ; preds = %69
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 444, ptr noundef nonnull @.str.3) #17
  br label %118

76:                                               ; preds = %34
  %77 = load i32, ptr %37, align 8
  %78 = lshr i32 %77, 16
  %79 = and i32 %78, 255
  %80 = icmp eq i32 %79, %9
  br i1 %80, label %82, label %81

81:                                               ; preds = %76
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 450, ptr noundef nonnull @.str.3) #17
  br label %82

82:                                               ; preds = %12, %6, %76, %81
  %83 = phi ptr [ %37, %76 ], [ %37, %81 ], [ %8, %6 ], [ %8, %12 ]
  %84 = load i32, ptr %83, align 8
  %85 = and i32 %84, 65535
  %86 = icmp eq i32 %85, 42
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = tail call fastcc ptr @simplify_subreg_concatn(i32 noundef %0, ptr noundef nonnull %83, i32 noundef %3) #16
  br label %118

89:                                               ; preds = %82
  %90 = tail call ptr @simplify_gen_subreg(i32 noundef %0, ptr noundef nonnull %83, i32 noundef %9, i32 noundef %3) #17
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %118

92:                                               ; preds = %89
  %93 = load i32, ptr %83, align 8
  %94 = and i32 %93, 65535
  %95 = icmp eq i32 %94, 39
  br i1 %95, label %96, label %117

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 0, i32 1, i32 0, i32 0, i64 1
  %98 = load i32, ptr %97, align 8, !tbaa !90
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %117

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 0, i32 1
  %102 = zext i32 %9 to i64
  %103 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %102
  %104 = load i8, ptr %103, align 1, !tbaa !90
  %105 = load ptr, ptr %101, align 8, !tbaa !90
  %106 = load i32, ptr %105, align 8
  %107 = lshr i32 %106, 16
  %108 = and i32 %107, 255
  %109 = zext nneg i32 %108 to i64
  %110 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %109
  %111 = load i8, ptr %110, align 1, !tbaa !90
  %112 = icmp ugt i8 %104, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %100
  %114 = sext i32 %0 to i64
  %115 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %114
  %116 = load ptr, ptr %115, align 8, !tbaa !85
  br label %118

117:                                              ; preds = %92, %96, %100
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 468, ptr noundef nonnull @.str.3) #17
  br label %118

118:                                              ; preds = %75, %69, %89, %117, %113, %87
  %119 = phi ptr [ %88, %87 ], [ %116, %113 ], [ %90, %89 ], [ null, %117 ], [ null, %75 ], [ %73, %69 ]
  ret ptr %119
}

; Function Attrs: optsize
declare zeroext i8 @df_insn_rescan(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @emit_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @simplify_subreg_concatn(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #1 !prof !129 !PGOFuncName !199 {
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 42
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 395, ptr noundef nonnull @.str.3) #17
  br label %8

8:                                                ; preds = %3, %7
  %9 = zext i32 %0 to i64
  %10 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !90
  %12 = zext i8 %11 to i32
  %13 = urem i32 %2, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 396, ptr noundef nonnull @.str.3) #17
  br label %16

16:                                               ; preds = %8, %15
  %17 = load i32, ptr %1, align 8
  %18 = lshr i32 %17, 16
  %19 = and i32 %18, 255
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !90
  %23 = zext i8 %22 to i32
  %24 = icmp ugt i32 %23, %2
  br i1 %24, label %27, label %25

25:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 399, ptr noundef nonnull @.str.3) #17
  %26 = load i8, ptr %21, align 1, !tbaa !90
  br label %27

27:                                               ; preds = %16, %25
  %28 = phi i8 [ %22, %16 ], [ %26, %25 ]
  %29 = load i8, ptr %10, align 1, !tbaa !90
  %30 = icmp ugt i8 %29, %28
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 400, ptr noundef nonnull @.str.3) #17
  %32 = load i8, ptr %21, align 1, !tbaa !90
  %33 = load i8, ptr %10, align 1, !tbaa !90
  br label %34

34:                                               ; preds = %27, %31
  %35 = phi i8 [ %29, %27 ], [ %33, %31 ]
  %36 = phi i8 [ %28, %27 ], [ %32, %31 ]
  %37 = zext i8 %36 to i32
  %38 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !90
  %40 = load i32, ptr %39, align 8, !tbaa !200
  %41 = sdiv i32 %37, %40
  %42 = urem i32 %2, %41
  %43 = udiv i32 %2, %41
  %44 = zext i8 %35 to i32
  %45 = add i32 %42, %44
  %46 = icmp ugt i32 %45, %41
  br i1 %46, label %55, label %47

47:                                               ; preds = %34
  %48 = zext i32 %43 to i64
  %49 = getelementptr inbounds %struct.rtvec_def, ptr %39, i64 0, i32 1, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !85
  %51 = load i32, ptr %50, align 8
  %52 = lshr i32 %51, 16
  %53 = and i32 %52, 255
  %54 = tail call ptr @simplify_gen_subreg(i32 noundef %0, ptr noundef nonnull %50, i32 noundef %53, i32 noundef %42) #17
  br label %55

55:                                               ; preds = %34, %47
  %56 = phi ptr [ %54, %47 ], [ null, %34 ]
  ret ptr %56
}

; Function Attrs: optsize
declare ptr @simplify_gen_subreg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @delete_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @adjust_decomposed_uses(ptr nocapture noundef %0, ptr nocapture readnone %1) #1 !prof !129 !PGOFuncName !202 {
  %3 = load ptr, ptr %0, align 8, !tbaa !85
  %4 = icmp eq ptr %3, null
  br i1 %4, label %28, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc zeroext i8 @resolve_subreg_p(ptr noundef nonnull %3) #16, !range !105
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %5
  %9 = load i32, ptr %3, align 8
  %10 = lshr i32 %9, 16
  %11 = and i32 %10, 255
  %12 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !90
  %14 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %15 = load i32, ptr %14, align 8, !tbaa !90
  %16 = tail call fastcc ptr @simplify_subreg_concatn(i32 noundef %11, ptr noundef %13, i32 noundef %15) #16
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %8
  store ptr %16, ptr %0, align 8, !tbaa !85
  br label %22

19:                                               ; preds = %8
  %20 = load ptr, ptr %0, align 8, !tbaa !85
  %21 = tail call ptr @copy_rtx(ptr noundef %20) #17
  br label %22

22:                                               ; preds = %18, %19, %5
  %23 = phi ptr [ %16, %18 ], [ %21, %19 ], [ %3, %5 ]
  %24 = tail call fastcc zeroext i8 @resolve_reg_p(ptr noundef %23) #16, !range !105
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = tail call ptr @copy_rtx(ptr noundef %23) #17
  store ptr %27, ptr %0, align 8, !tbaa !85
  br label %28

28:                                               ; preds = %22, %26, %2
  ret i32 0
}

; Function Attrs: optsize
declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @start_sequence() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_reg_rtx(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @emit_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @end_sequence() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @can_decompose_p(ptr noundef %0) unnamed_addr #1 !prof !129 !PGOFuncName !203 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 37
  br i1 %4, label %5, label %22

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #16
  %7 = icmp ult i32 %6, 53
  br i1 %7, label %8, label %18

8:                                                ; preds = %5
  %9 = load i32, ptr @word_mode, align 4, !tbaa !77
  %10 = lshr i32 %2, 16
  %11 = and i32 %10, 255
  %12 = tail call zeroext i8 @validate_subreg(i32 noundef %9, i32 noundef %11, ptr noundef nonnull %0, i32 noundef 4) #17
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %8
  %15 = load i32, ptr @word_mode, align 4, !tbaa !77
  %16 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %6, i32 noundef %15) #17
  %17 = icmp ne i8 %16, 0
  br label %22

18:                                               ; preds = %5
  %19 = load ptr, ptr @non_decomposable_context, align 8, !tbaa !85
  %20 = tail call i32 @bitmap_bit_p(ptr noundef %19, i32 noundef %6) #17
  %21 = icmp eq i32 %20, 0
  br label %22

22:                                               ; preds = %1, %18, %14, %8
  %23 = phi i1 [ %21, %18 ], [ false, %8 ], [ %17, %14 ], [ true, %1 ]
  %24 = zext i1 %23 to i8
  ret i8 %24
}

; Function Attrs: optsize
declare i32 @side_effects_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @push_operand(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @adjust_automodify_address_1(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @emit_clobber(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @get_insns() local_unnamed_addr #3

; Function Attrs: optsize
declare void @copy_reg_eh_region_note_forward(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @emit_insn_before(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @validate_subreg(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @expand_shift(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @find_reg_equal_equiv_note(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @remove_note(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @df_notes_rescan(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { optsize }
attributes #17 = { nounwind optsize }
attributes #18 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!74}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 41384367471}
!4 = !{!"MaxCount", i64 1634498074}
!5 = !{!"MaxInternalCount", i64 547036138}
!6 = !{!"MaxFunctionCount", i64 1634498074}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1634498074, i32 1}
!14 = !{i32 100000, i64 272534181, i32 9}
!15 = !{i32 200000, i64 109006700, i32 29}
!16 = !{i32 300000, i64 55802042, i32 85}
!17 = !{i32 400000, i64 37542678, i32 177}
!18 = !{i32 500000, i64 23214123, i32 321}
!19 = !{i32 600000, i64 14141732, i32 538}
!20 = !{i32 700000, i64 7343732, i32 948}
!21 = !{i32 800000, i64 3522590, i32 1768}
!22 = !{i32 900000, i64 1189516, i32 3798}
!23 = !{i32 950000, i64 537165, i32 6437}
!24 = !{i32 990000, i64 138704, i32 12217}
!25 = !{i32 999000, i64 22717, i32 17399}
!26 = !{i32 999900, i64 2200, i32 21474}
!27 = !{i32 999990, i64 190, i32 26113}
!28 = !{i32 999999, i64 38, i32 30999}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73}
!35 = !{ptr @rest_of_handle_lower_subreg, ptr @decompose_multiword_subregs, i64 38}
!36 = !{ptr @rest_of_handle_lower_subreg2, ptr @decompose_multiword_subregs, i64 38}
!37 = !{ptr @decompose_multiword_subregs, ptr @df_set_flags, i64 38}
!38 = !{ptr @decompose_multiword_subregs, ptr @max_reg_num, i64 76}
!39 = !{ptr @decompose_multiword_subregs, ptr @bitmap_obstack_alloc_stat, i64 2}
!40 = !{ptr @decompose_multiword_subregs, ptr @VEC_bitmap_heap_alloc, i64 1}
!41 = !{ptr @decompose_multiword_subregs, ptr @VEC_bitmap_heap_safe_grow, i64 1}
!42 = !{ptr @decompose_multiword_subregs, ptr @VEC_bitmap_base_address, i64 1}
!43 = !{ptr @decompose_multiword_subregs, ptr @find_decomposable_shift_zext, i64 36}
!44 = !{ptr @decompose_multiword_subregs, ptr @recog_memoized, i64 27}
!45 = !{ptr @decompose_multiword_subregs, ptr @extract_insn, i64 27}
!46 = !{ptr @decompose_multiword_subregs, ptr @simple_move, i64 22}
!47 = !{ptr @decompose_multiword_subregs, ptr @find_pseudo_copy, i64 8}
!48 = !{ptr @decompose_multiword_subregs, ptr @for_each_rtx, i64 421}
!49 = !{ptr @decompose_multiword_subregs, ptr @fancy_abort, i64 46}
!50 = !{ptr @decompose_multiword_subregs, ptr @bitmap_and_compl_into, i64 1}
!51 = !{ptr @decompose_multiword_subregs, ptr @decompose_register, i64 9}
!52 = !{ptr @decompose_multiword_subregs, ptr @bmp_iter_next, i64 9}
!53 = !{ptr @decompose_multiword_subregs, ptr @bmp_iter_set, i64 9}
!54 = !{ptr @decompose_multiword_subregs, ptr @resolve_clobber, i64 15}
!55 = !{ptr @decompose_multiword_subregs, ptr @resolve_use, i64 15}
!56 = !{ptr @decompose_multiword_subregs, ptr @resolve_debug, i64 8}
!57 = !{ptr @decompose_multiword_subregs, ptr @control_flow_insn_p, i64 188}
!58 = !{ptr @decompose_multiword_subregs, ptr @can_throw_internal, i64 2}
!59 = !{ptr @decompose_multiword_subregs, ptr @resolve_simple_move, i64 5}
!60 = !{ptr @decompose_multiword_subregs, ptr @SET_BIT, i64 2}
!61 = !{ptr @decompose_multiword_subregs, ptr @resolve_shift_zext, i64 3}
!62 = !{ptr @decompose_multiword_subregs, ptr @resolve_reg_notes, i64 8}
!63 = !{ptr @decompose_multiword_subregs, ptr @num_validated_changes, i64 8}
!64 = !{ptr @decompose_multiword_subregs, ptr @validate_unshare_change, i64 94}
!65 = !{ptr @decompose_multiword_subregs, ptr @apply_change_group, i64 5}
!66 = !{ptr @decompose_multiword_subregs, ptr @VEC_basic_block_base_index, i64 9}
!67 = !{ptr @decompose_multiword_subregs, ptr @split_block, i64 115}
!68 = !{ptr @decompose_multiword_subregs, ptr @rtl_make_eh_edge, i64 115}
!69 = !{ptr @decompose_multiword_subregs, ptr @sbitmap_iter_next, i64 9}
!70 = !{ptr @decompose_multiword_subregs, ptr @sbitmap_iter_cond, i64 9}
!71 = !{ptr @decompose_multiword_subregs, ptr @VEC_bitmap_base_iterate, i64 16}
!72 = !{ptr @decompose_multiword_subregs, ptr @bitmap_obstack_free, i64 11}
!73 = !{ptr @decompose_multiword_subregs, ptr @VEC_bitmap_heap_free, i64 1}
!74 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!75 = !{!"function_entry_count", i64 76}
!76 = !{!"lower-subreg.c:gate_handle_lower_subreg"}
!77 = !{!78, !78, i64 0}
!78 = !{!"int", !79, i64 0}
!79 = !{!"omnipotent char", !80, i64 0}
!80 = !{!"Simple C/C++ TBAA"}
!81 = !{!"function_entry_count", i64 38}
!82 = !{!"lower-subreg.c:rest_of_handle_lower_subreg"}
!83 = !{!"lower-subreg.c:rest_of_handle_lower_subreg2"}
!84 = !{!"lower-subreg.c:decompose_multiword_subregs"}
!85 = !{!86, !86, i64 0}
!86 = !{!"any pointer", !79, i64 0}
!87 = !{!"branch_weights", i32 39, i32 39}
!88 = !{!"branch_weights", i32 153, i32 1}
!89 = !{!"branch_weights", i32 1, i32 579295}
!90 = !{!79, !79, i64 0}
!91 = !{!"branch_weights", i32 153, i32 1158437}
!92 = distinct !{!92, !93}
!93 = !{!"llvm.loop.mustprogress"}
!94 = !{!95, !86, i64 8}
!95 = !{!"function", !86, i64 0, !86, i64 8, !86, i64 16, !86, i64 24, !86, i64 32, !86, i64 40, !86, i64 48, !86, i64 56, !86, i64 64, !86, i64 72, !86, i64 80, !86, i64 88, !86, i64 96, !78, i64 104, !78, i64 108, !78, i64 112, !78, i64 116, !78, i64 120, !78, i64 124, !86, i64 128, !78, i64 136, !78, i64 137, !78, i64 138, !78, i64 138, !78, i64 138, !78, i64 138, !78, i64 138, !78, i64 138, !78, i64 138, !78, i64 139, !78, i64 139, !78, i64 139, !78, i64 139, !78, i64 139, !78, i64 139, !78, i64 139}
!96 = !{!97, !86, i64 0}
!97 = !{!"control_flow_graph", !86, i64 0, !86, i64 8, !86, i64 16, !78, i64 24, !78, i64 28, !78, i64 32, !86, i64 40, !78, i64 48, !79, i64 52, !79, i64 60, !78, i64 68, !78, i64 72}
!98 = !{!99, !86, i64 56}
!99 = !{!"basic_block_def", !86, i64 0, !86, i64 8, !86, i64 16, !86, i64 24, !79, i64 32, !86, i64 48, !86, i64 56, !79, i64 64, !100, i64 72, !78, i64 80, !78, i64 84, !78, i64 88, !78, i64 92, !78, i64 96}
!100 = !{!"long", !79, i64 0}
!101 = !{!97, !86, i64 8}
!102 = !{!103, !86, i64 8}
!103 = !{!"rtl_bb_info", !86, i64 0, !86, i64 8, !86, i64 16, !86, i64 24, !78, i64 32}
!104 = !{i32 0, i32 2}
!105 = !{i8 0, i8 2}
!106 = !{!107, !79, i64 1086}
!107 = !{!"recog_data", !79, i64 0, !79, i64 240, !79, i64 480, !79, i64 720, !79, i64 840, !79, i64 960, !79, i64 1072, !79, i64 1086, !79, i64 1087, !79, i64 1088, !79, i64 1089, !86, i64 1120}
!108 = distinct !{!108, !93}
!109 = distinct !{!109, !93}
!110 = distinct !{!110, !93}
!111 = !{!112, !86, i64 0}
!112 = !{!"bitmap_head_def", !86, i64 0, !86, i64 8, !78, i64 16, !86, i64 24}
!113 = !{!97, !78, i64 32}
!114 = distinct !{!114, !93}
!115 = !{!99, !78, i64 80}
!116 = distinct !{!116, !93}
!117 = !{!107, !79, i64 1087}
!118 = distinct !{!118, !93}
!119 = distinct !{!119, !93}
!120 = distinct !{!120, !93}
!121 = !{!97, !86, i64 16}
!122 = !{!123, !86, i64 8}
!123 = !{!"edge_def", !86, i64 0, !86, i64 8, !79, i64 16, !86, i64 24, !86, i64 32, !78, i64 40, !78, i64 44, !78, i64 48, !78, i64 52, !100, i64 56}
!124 = distinct !{!124, !93}
!125 = distinct !{!125, !93}
!126 = !{!127, !86, i64 0}
!127 = !{!"simple_bitmap_def", !86, i64 0, !78, i64 8, !78, i64 12, !79, i64 16}
!128 = distinct !{!128, !93}
!129 = !{!"function_entry_count", i64 0}
!130 = !{!"lower-subreg.c:VEC_bitmap_heap_alloc"}
!131 = !{!"lower-subreg.c:VEC_bitmap_heap_safe_grow"}
!132 = !{!133, !78, i64 0}
!133 = !{!"VEC_bitmap_base", !78, i64 0, !78, i64 4, !79, i64 8}
!134 = !{}
!135 = !{!"lower-subreg.c:VEC_bitmap_base_address"}
!136 = !{!"lower-subreg.c:find_decomposable_shift_zext"}
!137 = !{!"lower-subreg.c:recog_memoized"}
!138 = !{!"lower-subreg.c:simple_move"}
!139 = !{!"lower-subreg.c:find_pseudo_copy"}
!140 = !{!"lower-subreg.c:find_decomposable_subregs"}
!141 = !{!"lower-subreg.c:propagate_pseudo_copies"}
!142 = distinct !{!142, !93}
!143 = distinct !{!143, !93}
!144 = !{!"lower-subreg.c:bmp_iter_set_init"}
!145 = !{!146, !86, i64 0}
!146 = !{!"", !86, i64 0, !86, i64 8, !78, i64 16, !100, i64 24}
!147 = !{!146, !86, i64 8}
!148 = !{!149, !78, i64 16}
!149 = !{!"bitmap_element_def", !86, i64 0, !86, i64 8, !78, i64 16, !79, i64 24}
!150 = !{!146, !78, i64 16}
!151 = !{!100, !100, i64 0}
!152 = !{!146, !100, i64 24}
!153 = !{!"lower-subreg.c:bmp_iter_set"}
!154 = distinct !{!154, !93}
!155 = distinct !{!155, !93}
!156 = !{!149, !86, i64 0}
!157 = !{!"lower-subreg.c:decompose_register"}
!158 = distinct !{!158, !93}
!159 = distinct !{!159, !93}
!160 = !{!"lower-subreg.c:bmp_iter_next"}
!161 = !{!"lower-subreg.c:resolve_clobber"}
!162 = distinct !{!162, !93}
!163 = !{!"lower-subreg.c:resolve_use"}
!164 = !{!"lower-subreg.c:resolve_debug"}
!165 = !{!"lower-subreg.c:resolve_simple_move"}
!166 = distinct !{!166, !93}
!167 = distinct !{!167, !93}
!168 = !{!"lower-subreg.c:SET_BIT"}
!169 = !{!"lower-subreg.c:resolve_shift_zext"}
!170 = distinct !{!170, !93}
!171 = !{!"lower-subreg.c:resolve_subreg_use"}
!172 = !{!"lower-subreg.c:resolve_reg_notes"}
!173 = distinct !{!173, !93}
!174 = !{!"lower-subreg.c:sbitmap_iter_init"}
!175 = !{!176, !78, i64 12}
!176 = !{!"", !86, i64 0, !78, i64 8, !78, i64 12, !78, i64 16, !100, i64 24}
!177 = !{!176, !78, i64 16}
!178 = !{!127, !78, i64 12}
!179 = !{!176, !78, i64 8}
!180 = !{!176, !86, i64 0}
!181 = !{!"lower-subreg.c:sbitmap_iter_cond"}
!182 = !{!176, !100, i64 24}
!183 = distinct !{!183, !93}
!184 = distinct !{!184, !93}
!185 = !{!"lower-subreg.c:VEC_basic_block_base_index"}
!186 = !{!"lower-subreg.c:sbitmap_iter_next"}
!187 = !{!"lower-subreg.c:VEC_bitmap_base_iterate"}
!188 = !{!"lower-subreg.c:VEC_bitmap_heap_free"}
!189 = !{!"lower-subreg.c:VEC_bitmap_heap_reserve_exact"}
!190 = !{!"lower-subreg.c:VEC_bitmap_base_space"}
!191 = !{!133, !78, i64 4}
!192 = !{!"lower-subreg.c:rhs_regno"}
!193 = !{!"lower-subreg.c:simple_move_operand"}
!194 = !{!"lower-subreg.c:VEC_bitmap_base_index"}
!195 = !{!"lower-subreg.c:VEC_bitmap_base_replace"}
!196 = !{!"lower-subreg.c:resolve_reg_p"}
!197 = !{!"lower-subreg.c:resolve_subreg_p"}
!198 = !{!"lower-subreg.c:simplify_gen_subreg_concatn"}
!199 = !{!"lower-subreg.c:simplify_subreg_concatn"}
!200 = !{!201, !78, i64 0}
!201 = !{!"rtvec_def", !78, i64 0, !79, i64 8}
!202 = !{!"lower-subreg.c:adjust_decomposed_uses"}
!203 = !{!"lower-subreg.c:can_decompose_p"}
