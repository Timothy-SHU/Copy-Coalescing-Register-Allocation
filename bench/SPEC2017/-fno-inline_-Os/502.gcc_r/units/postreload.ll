; ModuleID = 'postreload.c'
source_filename = "postreload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.recog_data = type { [30 x ptr], [30 x ptr], [30 x ptr], [30 x i32], [30 x i32], [14 x ptr], [14 x i8], i8, i8, i8, [30 x i8], ptr }
%struct.anon = type { [6 x %struct.reg_use], i32, ptr, i32, i32 }
%struct.reg_use = type { ptr, ptr }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.cselib_val_struct = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.elt_loc_list = type { ptr, ptr, ptr }

@flag_expensive_optimizations = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [11 x i8] c"postreload\00", align 1
@pass_postreload_cse = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str, ptr @gate_handle_postreload, ptr @rest_of_handle_postreload, ptr null, ptr null, i32 0, i32 150, i32 0, i32 0, i32 0, i32 0, i32 132097 } }, align 8
@regclass_map = external local_unnamed_addr constant [53 x i32], align 16
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@recog_data = external local_unnamed_addr global %struct.recog_data, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"postreload.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@reg_class_subunion = external local_unnamed_addr global [27 x [27 x i32]], align 16
@which_alternative = external local_unnamed_addr global i32, align 4
@double_reg_address_ok = external local_unnamed_addr global i8, align 1
@reg_class_contents = external local_unnamed_addr global [27 x i64], align 16
@cfun = external local_unnamed_addr global ptr, align 8
@reload_combine_ruid = internal unnamed_addr global i32 0, align 4
@reg_state = internal unnamed_addr global [53 x %struct.anon] zeroinitializer, align 16
@fixed_regs = external local_unnamed_addr global [53 x i8], align 16
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@call_used_regs = external local_unnamed_addr global [53 x i8], align 16
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@reg_set_luid = internal unnamed_addr global [53 x i32] zeroinitializer, align 16
@move2add_last_label_luid = internal unnamed_addr global i32 0, align 4
@move2add_luid = internal unnamed_addr global i32 0, align 4
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@reg_mode = internal unnamed_addr global [53 x i32] zeroinitializer, align 16
@reg_base_reg = internal unnamed_addr global [53 x i32] zeroinitializer, align 16
@reg_offset = internal unnamed_addr global [53 x i64] zeroinitializer, align 16
@class_narrowest_mode = external local_unnamed_addr constant [18 x i8], align 16
@mode_mask_array = external local_unnamed_addr constant [87 x i64], align 16
@mode_wider = external local_unnamed_addr constant [87 x i8], align 16
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@optimize = external local_unnamed_addr global i32, align 4
@reload_completed = external local_unnamed_addr global i32, align 4
@flag_non_call_exceptions = external local_unnamed_addr global i32, align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @reload_cse_regs(ptr noundef %0) local_unnamed_addr #0 !prof !120 {
  tail call fastcc void @reload_cse_regs_1(ptr noundef %0) #8
  tail call fastcc void @reload_combine() #8
  tail call fastcc void @reload_cse_move2add(ptr noundef %0) #8
  %2 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !121
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4, !prof !125

4:                                                ; preds = %1
  tail call fastcc void @reload_cse_regs_1(ptr noundef %0) #8
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @reload_cse_regs_1(ptr noundef %0) unnamed_addr #0 !prof !126 !PGOFuncName !127 {
  %2 = tail call ptr @gen_rtx_REG(i32 noundef 0, i32 noundef -1) #9
  tail call void @cselib_init(i32 noundef 1) #9
  tail call void @init_alias_analysis() #9
  %3 = icmp eq ptr %0, null
  br i1 %3, label %15, label %4, !prof !128

4:                                                ; preds = %1, %11
  %5 = phi ptr [ %13, %11 ], [ %0, %1 ]
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 65535
  %8 = add nsw i32 %7, -7
  %9 = icmp ult i32 %8, 4
  br i1 %9, label %10, label %11, !prof !129

10:                                               ; preds = %4
  tail call fastcc void @reload_cse_simplify(ptr noundef nonnull %5, ptr noundef %2) #8
  br label %11

11:                                               ; preds = %4, %10
  tail call void @cselib_process_insn(ptr noundef nonnull %5) #9
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  %13 = load ptr, ptr %12, align 8, !tbaa !130
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %4, !prof !131, !llvm.loop !132

15:                                               ; preds = %11, %1
  tail call void @end_alias_analysis() #9
  tail call void @cselib_finish() #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @reload_combine() unnamed_addr #0 !prof !120 !PGOFuncName !134 {
  %1 = alloca i64, align 8
  %2 = load i8, ptr @double_reg_address_ok, align 1, !tbaa !130
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %457, !prof !125

4:                                                ; preds = %0
  %5 = load i64, ptr getelementptr inbounds ([27 x i64], ptr @reg_class_contents, i64 0, i64 11), align 8, !tbaa !135
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 0, %4 ], [ %18, %6 ]
  %8 = phi i32 [ -1, %4 ], [ %17, %6 ]
  %9 = phi i32 [ 0, %4 ], [ %16, %6 ]
  %10 = shl nuw nsw i64 1, %7
  %11 = and i64 %5, %10
  %12 = icmp eq i64 %11, 0
  %13 = icmp eq i32 %8, -1
  %14 = trunc i64 %7 to i32
  %15 = select i1 %13, i32 %14, i32 %8
  %16 = select i1 %12, i32 %9, i32 %14
  %17 = select i1 %12, i32 %8, i32 %15
  %18 = add nuw nsw i64 %7, 1
  %19 = icmp eq i64 %18, 53
  br i1 %19, label %20, label %6, !llvm.loop !137

20:                                               ; preds = %6
  %21 = icmp eq i32 %17, -1
  br i1 %21, label %457, label %22

22:                                               ; preds = %20
  %23 = tail call i32 @get_first_label_num() #9
  %24 = tail call i32 @max_label_num() #9
  %25 = sub nsw i32 %24, %23
  %26 = sext i32 %25 to i64
  %27 = shl nsw i64 %26, 3
  %28 = tail call ptr @xmalloc(i64 noundef %27) #9
  %29 = load ptr, ptr @cfun, align 8, !tbaa !138
  %30 = getelementptr inbounds %struct.function, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !140
  %32 = getelementptr inbounds %struct.control_flow_graph, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !142
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !144
  %36 = load ptr, ptr %31, align 8, !tbaa !146
  %37 = icmp eq ptr %35, %36
  br i1 %37, label %67, label %38

38:                                               ; preds = %22, %58
  %39 = phi ptr [ %59, %58 ], [ %29, %22 ]
  %40 = phi ptr [ %62, %58 ], [ %35, %22 ]
  %41 = phi i64 [ %60, %58 ], [ 0, %22 ]
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 7
  %43 = load ptr, ptr %42, align 8, !tbaa !130
  %44 = load ptr, ptr %43, align 8, !tbaa !147
  %45 = load i32, ptr %44, align 8
  %46 = and i32 %45, 65535
  %47 = icmp eq i32 %46, 12
  br i1 %47, label %48, label %58

48:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #10
  %49 = call ptr @df_get_live_in(ptr noundef nonnull %40) #9
  store i64 0, ptr %1, align 8, !tbaa !135
  call void @reg_set_to_hard_reg_set(ptr noundef nonnull %1, ptr noundef %49) #9
  call void @compute_use_by_pseudos(ptr noundef nonnull %1, ptr noundef %49) #9
  %50 = load i64, ptr %1, align 8, !tbaa !135
  %51 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 1, i32 1
  %52 = load i32, ptr %51, align 8, !tbaa !130
  %53 = sub nsw i32 %52, %23
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, ptr %28, i64 %54
  store i64 %50, ptr %55, align 8, !tbaa !135
  %56 = or i64 %41, %50
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #10
  %57 = load ptr, ptr @cfun, align 8, !tbaa !138
  br label %58

58:                                               ; preds = %38, %48
  %59 = phi ptr [ %39, %38 ], [ %57, %48 ]
  %60 = phi i64 [ %41, %38 ], [ %56, %48 ]
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 5
  %62 = load ptr, ptr %61, align 8, !tbaa !144
  %63 = getelementptr inbounds %struct.function, ptr %59, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !140
  %65 = load ptr, ptr %64, align 8, !tbaa !146
  %66 = icmp eq ptr %62, %65
  br i1 %66, label %67, label %38, !llvm.loop !149

67:                                               ; preds = %58, %22
  %68 = phi i64 [ 0, %22 ], [ %60, %58 ]
  store i32 0, ptr @reload_combine_ruid, align 4, !tbaa !121
  br label %69

69:                                               ; preds = %67, %69
  %70 = phi i64 [ 0, %67 ], [ %77, %69 ]
  %71 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %70, i32 3
  store i32 0, ptr %71, align 8, !tbaa !150
  %72 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %70
  %73 = load i8, ptr %72, align 1, !tbaa !130
  %74 = icmp eq i8 %73, 0
  %75 = select i1 %74, i32 6, i32 -1
  %76 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %70, i32 1
  store i32 %75, ptr %76, align 8
  %77 = add nuw nsw i64 %70, 1
  %78 = icmp eq i64 %77, 53
  br i1 %78, label %79, label %69, !llvm.loop !152

79:                                               ; preds = %69
  %80 = call ptr @get_last_insn() #9
  %81 = icmp eq ptr %80, null
  br i1 %81, label %456, label %82

82:                                               ; preds = %79, %451
  %83 = phi ptr [ %454, %451 ], [ %80, %79 ]
  %84 = phi i32 [ %452, %451 ], [ 0, %79 ]
  %85 = load i32, ptr %83, align 8
  %86 = and i32 %85, 65535
  %87 = trunc i32 %85 to i16
  switch i16 %87, label %100 [
    i16 12, label %88
    i16 11, label %90
  ]

88:                                               ; preds = %82
  %89 = load i32, ptr @reload_combine_ruid, align 4, !tbaa !121
  br label %451

90:                                               ; preds = %82, %97
  %91 = phi i64 [ %98, %97 ], [ 0, %82 ]
  %92 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %91
  %93 = load i8, ptr %92, align 1, !tbaa !130
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %91, i32 1
  store i32 6, ptr %96, align 8, !tbaa !153
  br label %97

97:                                               ; preds = %90, %95
  %98 = add nuw nsw i64 %91, 1
  %99 = icmp eq i64 %98, 53
  br i1 %99, label %100, label %90, !llvm.loop !154

100:                                              ; preds = %97, %82
  %101 = add nsw i32 %86, -7
  %102 = icmp ult i32 %101, 4
  br i1 %102, label %103, label %451

103:                                              ; preds = %100
  %104 = load i32, ptr @reload_combine_ruid, align 4, !tbaa !121
  %105 = add nsw i32 %104, 1
  store i32 %105, ptr @reload_combine_ruid, align 4, !tbaa !121
  %106 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 1
  %107 = load ptr, ptr %106, align 8, !tbaa !130
  %108 = load i32, ptr %107, align 8
  %109 = and i32 %108, 65535
  %110 = icmp eq i32 %109, 23
  br i1 %110, label %114, label %111

111:                                              ; preds = %103
  %112 = call ptr @single_set_2(ptr noundef nonnull %83, ptr noundef nonnull %107) #9
  %113 = icmp eq ptr %112, null
  br i1 %113, label %331, label %114

114:                                              ; preds = %103, %111
  %115 = phi ptr [ %112, %111 ], [ %107, %103 ]
  %116 = getelementptr inbounds %struct.rtx_def, ptr %115, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !130
  %118 = load i32, ptr %117, align 8
  %119 = and i32 %118, 65535
  %120 = icmp eq i32 %119, 37
  br i1 %120, label %121, label %331

121:                                              ; preds = %114
  %122 = call fastcc i32 @rhs_regno(ptr noundef nonnull %117) #8
  %123 = zext i32 %122 to i64
  %124 = lshr i32 %118, 16
  %125 = and i32 %124, 255
  %126 = zext nneg i32 %125 to i64
  %127 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %123, i64 %126
  %128 = load i8, ptr %127, align 1, !tbaa !130
  %129 = icmp eq i8 %128, 1
  br i1 %129, label %130, label %331

130:                                              ; preds = %121
  %131 = getelementptr inbounds %struct.rtx_def, ptr %115, i64 0, i32 1, i32 0, i32 0, i64 1
  %132 = load ptr, ptr %131, align 8, !tbaa !130
  %133 = load i32, ptr %132, align 8
  %134 = and i32 %133, 65535
  %135 = icmp eq i32 %134, 49
  br i1 %135, label %136, label %331

136:                                              ; preds = %130
  %137 = getelementptr inbounds %struct.rtx_def, ptr %132, i64 0, i32 1, i32 0, i32 0, i64 1
  %138 = load ptr, ptr %137, align 8, !tbaa !130
  %139 = load i32, ptr %138, align 8
  %140 = and i32 %139, 65535
  %141 = icmp eq i32 %140, 37
  br i1 %141, label %142, label %331

142:                                              ; preds = %136
  %143 = getelementptr inbounds %struct.rtx_def, ptr %132, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !130
  %145 = call i32 @rtx_equal_p(ptr noundef %144, ptr noundef nonnull %117) #9
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %331, label %147

147:                                              ; preds = %142
  %148 = load ptr, ptr %131, align 8, !tbaa !130
  %149 = getelementptr inbounds %struct.rtx_def, ptr %148, i64 0, i32 1, i32 0, i32 0, i64 1
  %150 = load ptr, ptr %149, align 8, !tbaa !130
  %151 = load ptr, ptr %116, align 8, !tbaa !130
  %152 = call i32 @rtx_equal_p(ptr noundef %150, ptr noundef %151) #9
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %331

154:                                              ; preds = %147
  %155 = load ptr, ptr %116, align 8, !tbaa !130
  %156 = call fastcc i32 @rhs_regno(ptr noundef %155) #8
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %157, i32 4
  %159 = load i32, ptr %158, align 4, !tbaa !155
  %160 = icmp slt i32 %84, %159
  br i1 %160, label %161, label %331

161:                                              ; preds = %154
  %162 = load ptr, ptr %131, align 8, !tbaa !130
  %163 = getelementptr inbounds %struct.rtx_def, ptr %162, i64 0, i32 1, i32 0, i32 0, i64 1
  %164 = load ptr, ptr %163, align 8, !tbaa !130
  %165 = call ptr @prev_nonnote_insn(ptr noundef nonnull %83) #9
  %166 = icmp eq ptr %165, null
  br i1 %166, label %180, label %167

167:                                              ; preds = %161
  %168 = load i32, ptr %165, align 8
  %169 = and i32 %168, 65535
  %170 = add nsw i32 %169, -7
  %171 = icmp ult i32 %170, 4
  br i1 %171, label %172, label %180

172:                                              ; preds = %167
  %173 = getelementptr inbounds %struct.rtx_def, ptr %165, i64 1
  %174 = load ptr, ptr %173, align 8, !tbaa !130
  %175 = load i32, ptr %174, align 8
  %176 = and i32 %175, 65535
  %177 = icmp eq i32 %176, 23
  br i1 %177, label %180, label %178

178:                                              ; preds = %172
  %179 = call ptr @single_set_2(ptr noundef nonnull %165, ptr noundef nonnull %174) #9
  br label %180

180:                                              ; preds = %167, %172, %161, %178
  %181 = phi ptr [ %179, %178 ], [ null, %161 ], [ null, %167 ], [ %174, %172 ]
  %182 = call fastcc i32 @rhs_regno(ptr noundef %155) #8
  %183 = load i64, ptr getelementptr inbounds ([27 x i64], ptr @reg_class_contents, i64 0, i64 11), align 8, !tbaa !135
  %184 = zext i32 %182 to i64
  %185 = shl nuw i64 1, %184
  %186 = and i64 %185, %183
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %188, label %233

188:                                              ; preds = %180
  %189 = call fastcc i32 @rhs_regno(ptr noundef %164) #8
  %190 = zext nneg i32 %189 to i64
  %191 = shl nuw i64 1, %190
  %192 = and i64 %191, %183
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %194, label %233

194:                                              ; preds = %188
  %195 = icmp sgt i32 %17, %16
  br i1 %195, label %331, label %196

196:                                              ; preds = %194
  %197 = sext i32 %17 to i64
  %198 = add i32 %16, 1
  %199 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %184, i32 4
  br label %200

200:                                              ; preds = %196, %229
  %201 = phi i64 [ %197, %196 ], [ %230, %229 ]
  %202 = shl nuw i64 1, %201
  %203 = and i64 %202, %183
  %204 = icmp eq i64 %203, 0
  br i1 %204, label %229, label %205

205:                                              ; preds = %200
  %206 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %201, i32 1
  %207 = load i32, ptr %206, align 8, !tbaa !153
  %208 = icmp eq i32 %207, 6
  br i1 %208, label %209, label %229

209:                                              ; preds = %205
  %210 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %201, i32 3
  %211 = load i32, ptr %210, align 8, !tbaa !150
  %212 = load i32, ptr %199, align 4, !tbaa !155
  %213 = icmp sgt i32 %211, %212
  br i1 %213, label %229, label %214

214:                                              ; preds = %209
  %215 = load i32, ptr %155, align 8
  %216 = lshr i32 %215, 16
  %217 = and i32 %216, 255
  %218 = zext nneg i32 %217 to i64
  %219 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %201, i64 %218
  %220 = load i8, ptr %219, align 1, !tbaa !130
  %221 = icmp eq i8 %220, 1
  br i1 %221, label %222, label %229

222:                                              ; preds = %214
  %223 = trunc i64 %201 to i32
  %224 = call ptr @gen_rtx_REG(i32 noundef %217, i32 noundef %223) #9
  %225 = load i32, ptr %155, align 8
  %226 = lshr i32 %225, 16
  %227 = and i32 %226, 255
  %228 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %227, ptr noundef %224, ptr noundef %164) #9
  br label %233

229:                                              ; preds = %200, %205, %209, %214
  %230 = add nsw i64 %201, 1
  %231 = trunc i64 %230 to i32
  %232 = icmp eq i32 %198, %231
  br i1 %232, label %331, label %200, !llvm.loop !156

233:                                              ; preds = %180, %188, %222
  %234 = phi ptr [ %224, %222 ], [ %155, %188 ], [ %155, %180 ]
  %235 = phi ptr [ %228, %222 ], [ %162, %188 ], [ %162, %180 ]
  %236 = icmp ne ptr %235, null
  %237 = icmp ne ptr %181, null
  %238 = select i1 %236, i1 %237, i1 false
  br i1 %238, label %239, label %331

239:                                              ; preds = %233
  %240 = getelementptr inbounds %struct.rtx_def, ptr %181, i64 0, i32 1
  %241 = getelementptr inbounds %struct.rtx_def, ptr %181, i64 0, i32 1, i32 0, i32 0, i64 1
  %242 = load ptr, ptr %241, align 8, !tbaa !130
  %243 = load i32, ptr %242, align 8
  %244 = and i32 %243, 65535
  %245 = icmp eq i32 %244, 30
  br i1 %245, label %246, label %331

246:                                              ; preds = %239
  %247 = load ptr, ptr %240, align 8, !tbaa !130
  %248 = call i32 @rtx_equal_p(ptr noundef %247, ptr noundef %155) #9
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %331, label %250

250:                                              ; preds = %246
  %251 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %184
  %252 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %184, i32 1
  %253 = load i32, ptr %252, align 8, !tbaa !153
  %254 = icmp sgt i32 %253, -1
  br i1 %254, label %255, label %331

255:                                              ; preds = %250
  %256 = call fastcc i32 @rhs_regno(ptr noundef %164) #8
  %257 = zext i32 %256 to i64
  %258 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %257, i32 3
  %259 = load i32, ptr %258, align 8, !tbaa !150
  %260 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %184, i32 4
  %261 = load i32, ptr %260, align 4, !tbaa !155
  %262 = icmp sgt i32 %259, %261
  br i1 %262, label %331, label %263

263:                                              ; preds = %255
  %264 = call zeroext i8 @validate_change(ptr noundef %165, ptr noundef nonnull %240, ptr noundef %234, i8 noundef zeroext 1) #9
  %265 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %184, i32 2
  %266 = load ptr, ptr %265, align 8, !tbaa !157
  %267 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !138
  %268 = icmp eq ptr %266, %267
  br i1 %268, label %278, label %269

269:                                              ; preds = %263
  %270 = load ptr, ptr %241, align 8, !tbaa !130
  %271 = getelementptr inbounds %struct.rtx_def, ptr %270, i64 0, i32 1
  %272 = load i64, ptr %271, align 8, !tbaa !130
  %273 = getelementptr inbounds %struct.rtx_def, ptr %266, i64 0, i32 1
  %274 = load i64, ptr %273, align 8, !tbaa !130
  %275 = add nsw i64 %274, %272
  %276 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %275) #9
  %277 = call zeroext i8 @validate_change(ptr noundef %165, ptr noundef nonnull %241, ptr noundef %276, i8 noundef zeroext 1) #9
  br label %278

278:                                              ; preds = %269, %263
  %279 = load i32, ptr %252, align 8, !tbaa !153
  %280 = icmp slt i32 %279, 6
  br i1 %280, label %281, label %293

281:                                              ; preds = %278
  %282 = sext i32 %279 to i64
  br label %283

283:                                              ; preds = %281, %283
  %284 = phi i64 [ %282, %281 ], [ %290, %283 ]
  %285 = getelementptr inbounds [6 x %struct.reg_use], ptr %251, i64 0, i64 %284
  %286 = load ptr, ptr %285, align 8, !tbaa !158
  %287 = getelementptr inbounds [6 x %struct.reg_use], ptr %251, i64 0, i64 %284, i32 1
  %288 = load ptr, ptr %287, align 8, !tbaa !160
  %289 = call zeroext i8 @validate_unshare_change(ptr noundef %286, ptr noundef %288, ptr noundef nonnull %235, i8 noundef zeroext 1) #9
  %290 = add nsw i64 %284, 1
  %291 = and i64 %290, 4294967295
  %292 = icmp eq i64 %291, 6
  br i1 %292, label %293, label %283, !llvm.loop !161

293:                                              ; preds = %283, %278
  %294 = call i32 @apply_change_group() #9
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %331, label %296

296:                                              ; preds = %293
  %297 = load i32, ptr %252, align 8, !tbaa !153
  %298 = icmp slt i32 %297, 6
  br i1 %298, label %299, label %312

299:                                              ; preds = %296
  %300 = sext i32 %297 to i64
  br label %301

301:                                              ; preds = %299, %301
  %302 = phi i64 [ %300, %299 ], [ %309, %301 ]
  %303 = getelementptr inbounds [6 x %struct.reg_use], ptr %251, i64 0, i64 %302
  %304 = getelementptr inbounds [6 x %struct.reg_use], ptr %251, i64 0, i64 %302, i32 1
  %305 = load ptr, ptr %304, align 8, !tbaa !160
  %306 = load ptr, ptr %305, align 8, !tbaa !138
  %307 = getelementptr inbounds %struct.rtx_def, ptr %306, i64 0, i32 1, i32 0, i32 0, i64 1
  %308 = load ptr, ptr %303, align 8, !tbaa !158
  call fastcc void @reload_combine_note_use(ptr noundef nonnull %307, ptr noundef %308) #8
  %309 = add nsw i64 %302, 1
  %310 = and i64 %309, 4294967295
  %311 = icmp eq i64 %310, 6
  br i1 %311, label %312, label %301, !llvm.loop !162

312:                                              ; preds = %301, %296
  %313 = call fastcc i32 @rhs_regno(ptr noundef %164) #8
  %314 = zext i32 %313 to i64
  %315 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %314, i32 4
  %316 = load i32, ptr %315, align 4, !tbaa !155
  %317 = load i32, ptr %260, align 4, !tbaa !155
  %318 = icmp sgt i32 %316, %317
  br i1 %318, label %319, label %320

319:                                              ; preds = %312
  store i32 %317, ptr %315, align 4, !tbaa !155
  br label %320

320:                                              ; preds = %319, %312
  %321 = call ptr @delete_insn(ptr noundef nonnull %83) #9
  %322 = load ptr, ptr %265, align 8, !tbaa !157
  %323 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !138
  %324 = icmp eq ptr %322, %323
  br i1 %324, label %326, label %325

325:                                              ; preds = %320
  call void @remove_reg_equal_equiv_notes(ptr noundef %165) #9
  br label %326

326:                                              ; preds = %320, %325
  store i32 6, ptr %252, align 8, !tbaa !153
  %327 = load i32, ptr @reload_combine_ruid, align 4, !tbaa !121
  %328 = call fastcc i32 @rhs_regno(ptr noundef %234) #8
  %329 = zext i32 %328 to i64
  %330 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %329, i32 3
  store i32 %327, ptr %330, align 8, !tbaa !150
  br label %451

331:                                              ; preds = %229, %194, %293, %255, %250, %246, %239, %233, %154, %147, %142, %136, %130, %121, %114, %111
  %332 = load ptr, ptr %106, align 8, !tbaa !130
  call void @note_stores(ptr noundef %332, ptr noundef nonnull @reload_combine_note_store, ptr noundef null) #9
  %333 = load i32, ptr %83, align 8
  %334 = trunc i32 %333 to i16
  switch i16 %334, label %425 [
    i16 10, label %335
    i16 9, label %391
  ]

335:                                              ; preds = %331
  %336 = load i32, ptr @reload_combine_ruid, align 4
  br label %337

337:                                              ; preds = %335, %345
  %338 = phi i64 [ 0, %335 ], [ %346, %345 ]
  %339 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %338
  %340 = load i8, ptr %339, align 1, !tbaa !130
  %341 = icmp eq i8 %340, 0
  br i1 %341, label %345, label %342

342:                                              ; preds = %337
  %343 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %338, i32 1
  store i32 6, ptr %343, align 8, !tbaa !153
  %344 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %338, i32 3
  store i32 %336, ptr %344, align 8, !tbaa !150
  br label %345

345:                                              ; preds = %337, %342
  %346 = add nuw nsw i64 %338, 1
  %347 = icmp eq i64 %346, 53
  br i1 %347, label %348, label %337, !llvm.loop !163

348:                                              ; preds = %345
  %349 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 1, i32 1, i32 0, i32 0, i64 2
  %350 = load ptr, ptr %349, align 8, !tbaa !130
  %351 = icmp eq ptr %350, null
  br i1 %351, label %425, label %352

352:                                              ; preds = %348, %387
  %353 = phi ptr [ %389, %387 ], [ %350, %348 ]
  %354 = getelementptr inbounds %struct.rtx_def, ptr %353, i64 0, i32 1
  %355 = load ptr, ptr %354, align 8, !tbaa !130
  %356 = getelementptr inbounds %struct.rtx_def, ptr %355, i64 0, i32 1
  %357 = load ptr, ptr %356, align 8, !tbaa !130
  %358 = load i32, ptr %357, align 8
  %359 = and i32 %358, 65535
  %360 = icmp eq i32 %359, 37
  br i1 %360, label %361, label %387

361:                                              ; preds = %352
  %362 = call fastcc i32 @rhs_regno(ptr noundef nonnull %357) #8
  %363 = zext i32 %362 to i64
  %364 = lshr i32 %358, 16
  %365 = and i32 %364, 255
  %366 = zext nneg i32 %365 to i64
  %367 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %363, i64 %366
  %368 = load i8, ptr %367, align 1, !tbaa !130
  %369 = zext i8 %368 to i32
  %370 = add i32 %362, -1
  %371 = add i32 %370, %369
  %372 = icmp ugt i32 %362, %371
  br i1 %372, label %387, label %373

373:                                              ; preds = %361, %384
  %374 = phi i32 [ %385, %384 ], [ %362, %361 ]
  %375 = load ptr, ptr %354, align 8, !tbaa !130
  %376 = load i32, ptr %375, align 8
  %377 = and i32 %376, 65535
  %378 = icmp eq i32 %377, 25
  %379 = zext i32 %374 to i64
  %380 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %379, i32 1
  br i1 %378, label %381, label %383

381:                                              ; preds = %373
  store i32 6, ptr %380, align 8, !tbaa !153
  %382 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %379, i32 3
  store i32 %336, ptr %382, align 8, !tbaa !150
  br label %384

383:                                              ; preds = %373
  store i32 -1, ptr %380, align 8, !tbaa !153
  br label %384

384:                                              ; preds = %381, %383
  %385 = add i32 %374, 1
  %386 = icmp ugt i32 %385, %371
  br i1 %386, label %387, label %373, !llvm.loop !164

387:                                              ; preds = %384, %361, %352
  %388 = getelementptr inbounds %struct.rtx_def, ptr %353, i64 0, i32 1, i32 0, i32 0, i64 1
  %389 = load ptr, ptr %388, align 8, !tbaa !130
  %390 = icmp eq ptr %389, null
  br i1 %390, label %425, label %352, !llvm.loop !165

391:                                              ; preds = %331
  %392 = load ptr, ptr %106, align 8, !tbaa !130
  %393 = load i32, ptr %392, align 8
  %394 = and i32 %393, 65535
  %395 = icmp eq i32 %394, 27
  br i1 %395, label %425, label %396

396:                                              ; preds = %391
  %397 = call i32 @condjump_p(ptr noundef nonnull %83) #9
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %399, label %402

399:                                              ; preds = %396
  %400 = call i32 @condjump_in_parallel_p(ptr noundef nonnull %83) #9
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %413, label %402

402:                                              ; preds = %399, %396
  %403 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 1, i32 1, i32 0, i32 0, i64 2
  %404 = load ptr, ptr %403, align 8, !tbaa !130
  %405 = icmp eq ptr %404, null
  br i1 %405, label %413, label %406

406:                                              ; preds = %402
  %407 = getelementptr inbounds %struct.rtx_def, ptr %404, i64 1, i32 1
  %408 = load i32, ptr %407, align 8, !tbaa !130
  %409 = sub nsw i32 %408, %23
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i64, ptr %28, i64 %410
  %412 = load i64, ptr %411, align 8, !tbaa !135
  br label %413

413:                                              ; preds = %399, %402, %406
  %414 = phi i64 [ %412, %406 ], [ %68, %402 ], [ %68, %399 ]
  br label %415

415:                                              ; preds = %413, %422
  %416 = phi i64 [ 52, %413 ], [ %423, %422 ]
  %417 = shl nuw i64 1, %416
  %418 = and i64 %414, %417
  %419 = icmp eq i64 %418, 0
  br i1 %419, label %422, label %420

420:                                              ; preds = %415
  %421 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %416, i32 1
  store i32 -1, ptr %421, align 8, !tbaa !153
  br label %422

422:                                              ; preds = %415, %420
  %423 = add nsw i64 %416, -1
  %424 = icmp eq i64 %416, 0
  br i1 %424, label %425, label %415, !llvm.loop !166

425:                                              ; preds = %422, %387, %348, %331, %391
  call fastcc void @reload_combine_note_use(ptr noundef nonnull %106, ptr noundef nonnull %83) #8
  %426 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 1, i32 1, i32 0, i32 0, i64 1
  %427 = load ptr, ptr %426, align 8, !tbaa !130
  %428 = icmp eq ptr %427, null
  br i1 %428, label %451, label %429

429:                                              ; preds = %425
  %430 = load i32, ptr @reload_combine_ruid, align 4
  br label %431

431:                                              ; preds = %429, %447
  %432 = phi ptr [ %427, %429 ], [ %449, %447 ]
  %433 = load i32, ptr %432, align 8
  %434 = and i32 %433, 16711680
  %435 = icmp eq i32 %434, 131072
  br i1 %435, label %436, label %447

436:                                              ; preds = %431
  %437 = getelementptr inbounds %struct.rtx_def, ptr %432, i64 0, i32 1
  %438 = load ptr, ptr %437, align 8, !tbaa !130
  %439 = load i32, ptr %438, align 8
  %440 = and i32 %439, 65535
  %441 = icmp eq i32 %440, 37
  br i1 %441, label %442, label %447

442:                                              ; preds = %436
  %443 = call fastcc i32 @rhs_regno(ptr noundef nonnull %438) #8
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %444, i32 3
  store i32 %430, ptr %445, align 8, !tbaa !150
  %446 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %444, i32 1
  store i32 -1, ptr %446, align 8, !tbaa !153
  br label %447

447:                                              ; preds = %431, %436, %442
  %448 = getelementptr inbounds %struct.rtx_def, ptr %432, i64 0, i32 1, i32 0, i32 0, i64 1
  %449 = load ptr, ptr %448, align 8, !tbaa !130
  %450 = icmp eq ptr %449, null
  br i1 %450, label %451, label %431, !llvm.loop !167

451:                                              ; preds = %447, %425, %326, %88, %100
  %452 = phi i32 [ %89, %88 ], [ %84, %100 ], [ %84, %326 ], [ %84, %425 ], [ %84, %447 ]
  %453 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 0, i32 1, i32 0, i32 0, i64 1
  %454 = load ptr, ptr %453, align 8, !tbaa !130
  %455 = icmp eq ptr %454, null
  br i1 %455, label %456, label %82, !llvm.loop !168

456:                                              ; preds = %451, %79
  call void @free(ptr noundef %28) #8
  br label %457

457:                                              ; preds = %20, %0, %456
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @reload_cse_move2add(ptr noundef %0) unnamed_addr #0 !prof !120 !PGOFuncName !169 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(212) @reg_set_luid, i8 0, i64 212, i1 false), !tbaa !121
  store i32 0, ptr @move2add_last_label_luid, align 4, !tbaa !121
  store i32 2, ptr @move2add_luid, align 4, !tbaa !121
  %2 = icmp eq ptr %0, null
  br i1 %2, label %343, label %3, !prof !170

3:                                                ; preds = %1
  %4 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2
  %5 = icmp eq i8 %4, 0
  br label %6

6:                                                ; preds = %3, %336
  %7 = phi ptr [ %0, %3 ], [ %339, %336 ]
  %8 = phi i32 [ 2, %3 ], [ %341, %336 ]
  %9 = load i32, ptr %7, align 8
  %10 = trunc i32 %9 to i16
  switch i16 %10, label %336 [
    i16 12, label %11
    i16 8, label %13
    i16 7, label %13
    i16 9, label %13
    i16 10, label %13
  ], !prof !171

11:                                               ; preds = %6
  store i32 %8, ptr @move2add_last_label_luid, align 4, !tbaa !121
  %12 = add nsw i32 %8, 1
  store i32 %12, ptr @move2add_luid, align 4, !tbaa !121
  br label %336

13:                                               ; preds = %6, %6, %6, %6
  %14 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !130
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 23
  br i1 %18, label %19, label %251, !prof !172

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !130
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 37
  br i1 %24, label %25, label %251, !prof !173

25:                                               ; preds = %19
  %26 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %21) #8
  %27 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !130
  %29 = sext i32 %26 to i64
  %30 = getelementptr inbounds [53 x i32], ptr @reg_set_luid, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !121
  %32 = load i32, ptr @move2add_last_label_luid, align 4, !tbaa !121
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %251, !prof !174

34:                                               ; preds = %25
  %35 = lshr i32 %22, 16
  %36 = and i32 %35, 255
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !130
  %40 = getelementptr inbounds [53 x i32], ptr @reg_mode, i64 0, i64 %29
  %41 = load i32, ptr %40, align 4, !tbaa !121
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !130
  %45 = icmp ugt i8 %39, %44
  br i1 %45, label %251, label %46, !prof !175

46:                                               ; preds = %34
  %47 = tail call zeroext i8 @dbg_cnt(i32 noundef 3) #9
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %251, label %49, !prof !176

49:                                               ; preds = %46
  %50 = load i32, ptr %28, align 8
  %51 = trunc i32 %50 to i16
  switch i16 %51, label %251 [
    i16 30, label %52
    i16 37, label %137
  ], !prof !177

52:                                               ; preds = %49
  %53 = getelementptr inbounds [53 x i32], ptr @reg_base_reg, i64 0, i64 %29
  %54 = load i32, ptr %53, align 4, !tbaa !121
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %251, !prof !178

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !130
  %59 = getelementptr inbounds [53 x i64], ptr @reg_offset, i64 0, i64 %29
  %60 = load i64, ptr %59, align 8, !tbaa !135
  %61 = sub nsw i64 %58, %60
  %62 = load i32, ptr %21, align 8
  %63 = lshr i32 %62, 16
  %64 = and i32 %63, 255
  %65 = tail call ptr @gen_int_mode(i64 noundef %61, i32 noundef %64) #9
  %66 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !130
  %68 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %67) #9
  %69 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !138
  %70 = icmp eq ptr %65, %69
  br i1 %70, label %71, label %77, !prof !179

71:                                               ; preds = %56
  %72 = load i64, ptr %57, align 8, !tbaa !130
  %73 = load i64, ptr %59, align 8, !tbaa !135
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %131

75:                                               ; preds = %71
  %76 = tail call zeroext i8 @validate_change(ptr noundef nonnull %7, ptr noundef nonnull %27, ptr noundef nonnull %21, i8 noundef zeroext 0) #9
  br label %131

77:                                               ; preds = %56
  %78 = tail call i32 @rtx_cost(ptr noundef %65, i32 noundef 49, i8 noundef zeroext %68) #9
  %79 = tail call i32 @rtx_cost(ptr noundef nonnull %28, i32 noundef 23, i8 noundef zeroext %68) #9
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %90, !prof !179

81:                                               ; preds = %77
  %82 = tail call i32 @have_add2_insn(ptr noundef nonnull %21, ptr noundef %65) #9
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %81
  %85 = load i32, ptr %21, align 8
  %86 = lshr i32 %85, 16
  %87 = and i32 %86, 255
  %88 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %87, ptr noundef nonnull %21, ptr noundef %65) #9
  %89 = tail call zeroext i8 @validate_change(ptr noundef nonnull %7, ptr noundef nonnull %27, ptr noundef %88, i8 noundef zeroext 0) #9
  br label %131

90:                                               ; preds = %81, %77
  %91 = load i32, ptr %21, align 8
  %92 = and i32 %91, 16711680
  %93 = icmp eq i32 %92, 851968
  %94 = select i1 %93, i1 true, i1 %5
  br i1 %94, label %131, label %95, !prof !180

95:                                               ; preds = %90, %126
  %96 = phi i8 [ %129, %126 ], [ %4, %90 ]
  %97 = zext i8 %96 to i32
  %98 = load i32, ptr %21, align 8
  %99 = lshr i32 %98, 16
  %100 = trunc i32 %99 to i8
  %101 = icmp eq i8 %96, %100
  br i1 %101, label %131, label %102, !prof !181

102:                                              ; preds = %95
  %103 = tail call i32 @have_insn_for(i32 noundef 40, i32 noundef %97) #9
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %107, !prof !181

105:                                              ; preds = %102
  %106 = zext i8 %96 to i64
  br label %126

107:                                              ; preds = %102
  %108 = load i64, ptr %59, align 8, !tbaa !135
  %109 = zext i8 %96 to i64
  %110 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %109
  %111 = load i64, ptr %110, align 8, !tbaa !135
  %112 = xor i64 %111, -1
  %113 = load i64, ptr %57, align 8, !tbaa !130
  %114 = xor i64 %113, %108
  %115 = and i64 %114, %112
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %126, !prof !182

117:                                              ; preds = %107
  %118 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %21) #8
  %119 = tail call ptr @gen_rtx_REG(i32 noundef %97, i32 noundef %118) #9
  %120 = load i64, ptr %57, align 8, !tbaa !130
  %121 = tail call ptr @gen_int_mode(i64 noundef %120, i32 noundef %97) #9
  %122 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 40, i32 noundef 0, ptr noundef %119) #9
  %123 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %122, ptr noundef %121) #9
  %124 = tail call zeroext i8 @validate_change(ptr noundef nonnull %7, ptr noundef nonnull %14, ptr noundef %123, i8 noundef zeroext 0) #9
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %105, %117, %107
  %127 = phi i64 [ %106, %105 ], [ %109, %117 ], [ %109, %107 ]
  %128 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %127
  %129 = load i8, ptr %128, align 1, !tbaa !130
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %95, !prof !183, !llvm.loop !184

131:                                              ; preds = %126, %95, %117, %90, %84, %71, %75
  %132 = load i32, ptr @move2add_luid, align 4, !tbaa !121
  store i32 %132, ptr %30, align 4, !tbaa !121
  %133 = load i32, ptr %21, align 8
  %134 = lshr i32 %133, 16
  %135 = and i32 %134, 255
  store i32 %135, ptr %40, align 4, !tbaa !121
  %136 = load i64, ptr %57, align 8, !tbaa !130
  store i64 %136, ptr %59, align 8, !tbaa !135
  br label %336

137:                                              ; preds = %49
  %138 = load i32, ptr %30, align 4, !tbaa !121
  %139 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %28) #8
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds [53 x i32], ptr @reg_set_luid, i64 0, i64 %140
  %142 = load i32, ptr %141, align 4, !tbaa !121
  %143 = icmp eq i32 %138, %142
  br i1 %143, label %144, label %251, !prof !185

144:                                              ; preds = %137
  %145 = getelementptr inbounds [53 x i32], ptr @reg_base_reg, i64 0, i64 %29
  %146 = load i32, ptr %145, align 4, !tbaa !121
  %147 = getelementptr inbounds [53 x i32], ptr @reg_base_reg, i64 0, i64 %140
  %148 = load i32, ptr %147, align 4, !tbaa !121
  %149 = icmp eq i32 %146, %148
  br i1 %149, label %150, label %251, !prof !186

150:                                              ; preds = %144
  %151 = load i32, ptr %21, align 8
  %152 = lshr i32 %151, 16
  %153 = and i32 %152, 255
  %154 = zext nneg i32 %153 to i64
  %155 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %154
  %156 = load i8, ptr %155, align 1, !tbaa !130
  %157 = getelementptr inbounds [53 x i32], ptr @reg_mode, i64 0, i64 %140
  %158 = load i32, ptr %157, align 4, !tbaa !121
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %159
  %161 = load i8, ptr %160, align 1, !tbaa !130
  %162 = icmp ugt i8 %156, %161
  br i1 %162, label %251, label %163, !prof !187

163:                                              ; preds = %150
  %164 = tail call ptr @next_nonnote_insn(ptr noundef nonnull %7) #9
  %165 = icmp eq ptr %164, null
  br i1 %165, label %251, label %166, !prof !188

166:                                              ; preds = %163
  %167 = load i32, ptr %164, align 8
  %168 = and i32 %167, 65535
  %169 = add nsw i32 %168, -7
  %170 = icmp ult i32 %169, 4
  br i1 %170, label %171, label %251, !prof !189

171:                                              ; preds = %166
  %172 = getelementptr inbounds %struct.rtx_def, ptr %164, i64 1
  %173 = load ptr, ptr %172, align 8, !tbaa !130
  %174 = load i32, ptr %173, align 8
  %175 = and i32 %174, 65535
  %176 = icmp eq i32 %175, 23
  br i1 %176, label %180, label %177, !prof !186

177:                                              ; preds = %171
  %178 = tail call ptr @single_set_2(ptr noundef nonnull %164, ptr noundef nonnull %173) #9
  %179 = icmp eq ptr %178, null
  br i1 %179, label %251, label %180, !prof !190

180:                                              ; preds = %171, %177
  %181 = phi ptr [ %178, %177 ], [ %173, %171 ]
  %182 = getelementptr inbounds %struct.rtx_def, ptr %181, i64 0, i32 1
  %183 = load ptr, ptr %182, align 8, !tbaa !130
  %184 = icmp eq ptr %183, %21
  br i1 %184, label %185, label %251, !prof !188

185:                                              ; preds = %180
  %186 = getelementptr inbounds %struct.rtx_def, ptr %181, i64 0, i32 1, i32 0, i32 0, i64 1
  %187 = load ptr, ptr %186, align 8, !tbaa !130
  %188 = load i32, ptr %187, align 8
  %189 = and i32 %188, 65535
  %190 = icmp eq i32 %189, 49
  br i1 %190, label %191, label %251

191:                                              ; preds = %185
  %192 = getelementptr inbounds %struct.rtx_def, ptr %187, i64 0, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !130
  %194 = icmp eq ptr %193, %21
  br i1 %194, label %195, label %251

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.rtx_def, ptr %187, i64 0, i32 1, i32 0, i32 0, i64 1
  %197 = load ptr, ptr %196, align 8, !tbaa !130
  %198 = load i32, ptr %197, align 8
  %199 = and i32 %198, 65535
  %200 = icmp eq i32 %199, 30
  br i1 %200, label %201, label %251

201:                                              ; preds = %195
  %202 = getelementptr inbounds %struct.rtx_def, ptr %197, i64 0, i32 1
  %203 = load i64, ptr %202, align 8, !tbaa !130
  %204 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %28) #8
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds [53 x i64], ptr @reg_offset, i64 0, i64 %205
  %207 = load i64, ptr %206, align 8, !tbaa !135
  %208 = getelementptr inbounds [53 x i64], ptr @reg_offset, i64 0, i64 %29
  %209 = load i64, ptr %208, align 8, !tbaa !135
  %210 = add nsw i64 %207, %203
  %211 = sub nsw i64 %210, %209
  %212 = load i32, ptr %21, align 8
  %213 = lshr i32 %212, 16
  %214 = and i32 %213, 255
  %215 = tail call ptr @gen_int_mode(i64 noundef %211, i32 noundef %214) #9
  %216 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 1
  %217 = load ptr, ptr %216, align 8, !tbaa !130
  %218 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %217) #9
  %219 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !138
  %220 = icmp eq ptr %215, %219
  br i1 %220, label %221, label %223

221:                                              ; preds = %201
  %222 = tail call zeroext i8 @validate_change(ptr noundef nonnull %164, ptr noundef nonnull %186, ptr noundef nonnull %21, i8 noundef zeroext 0) #9
  br label %238

223:                                              ; preds = %201
  %224 = tail call i32 @rtx_cost(ptr noundef %215, i32 noundef 49, i8 noundef zeroext %218) #9
  %225 = tail call i32 @rtx_cost(ptr noundef nonnull %197, i32 noundef 23, i8 noundef zeroext %218) #9
  %226 = add nsw i32 %225, 4
  %227 = icmp slt i32 %224, %226
  br i1 %227, label %228, label %243

228:                                              ; preds = %223
  %229 = tail call i32 @have_add2_insn(ptr noundef nonnull %21, ptr noundef %215) #9
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %243, label %231

231:                                              ; preds = %228
  %232 = load i32, ptr %21, align 8
  %233 = lshr i32 %232, 16
  %234 = and i32 %233, 255
  %235 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %234, ptr noundef nonnull %21, ptr noundef %215) #9
  %236 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef nonnull %21, ptr noundef %235) #9
  %237 = tail call zeroext i8 @validate_change(ptr noundef nonnull %164, ptr noundef nonnull %172, ptr noundef %236, i8 noundef zeroext 0) #9
  br label %238

238:                                              ; preds = %231, %221
  %239 = phi i8 [ %222, %221 ], [ %237, %231 ]
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %243, label %241

241:                                              ; preds = %238
  %242 = tail call ptr @delete_insn(ptr noundef nonnull %7) #9
  br label %243

243:                                              ; preds = %223, %228, %238, %241
  %244 = load i32, ptr %21, align 8
  %245 = lshr i32 %244, 16
  %246 = and i32 %245, 255
  store i32 %246, ptr %40, align 4, !tbaa !121
  %247 = load i32, ptr %21, align 8
  %248 = lshr i32 %247, 16
  %249 = and i32 %248, 255
  %250 = tail call i64 @trunc_int_for_mode(i64 noundef %210, i32 noundef %249) #9
  store i64 %250, ptr %208, align 8, !tbaa !135
  br label %336

251:                                              ; preds = %150, %49, %166, %163, %52, %177, %180, %185, %191, %195, %25, %46, %137, %144, %34, %19, %13
  %252 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 1, i32 1, i32 0, i32 0, i64 1
  %253 = load ptr, ptr %252, align 8, !tbaa !130
  %254 = icmp eq ptr %253, null
  br i1 %254, label %276, label %255, !prof !191

255:                                              ; preds = %251, %272
  %256 = phi ptr [ %274, %272 ], [ %253, %251 ]
  %257 = load i32, ptr %256, align 8
  %258 = and i32 %257, 16711680
  %259 = icmp eq i32 %258, 131072
  br i1 %259, label %260, label %272, !prof !192

260:                                              ; preds = %255
  %261 = getelementptr inbounds %struct.rtx_def, ptr %256, i64 0, i32 1
  %262 = load ptr, ptr %261, align 8, !tbaa !130
  %263 = load i32, ptr %262, align 8
  %264 = and i32 %263, 65535
  %265 = icmp eq i32 %264, 37
  br i1 %265, label %266, label %272

266:                                              ; preds = %260
  %267 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %262) #8
  %268 = icmp slt i32 %267, 53
  br i1 %268, label %269, label %272

269:                                              ; preds = %266
  %270 = sext i32 %267 to i64
  %271 = getelementptr inbounds [53 x i32], ptr @reg_set_luid, i64 0, i64 %270
  store i32 0, ptr %271, align 4, !tbaa !121
  br label %272

272:                                              ; preds = %266, %269, %255, %260
  %273 = getelementptr inbounds %struct.rtx_def, ptr %256, i64 0, i32 1, i32 0, i32 0, i64 1
  %274 = load ptr, ptr %273, align 8, !tbaa !130
  %275 = icmp eq ptr %274, null
  br i1 %275, label %276, label %255, !prof !193, !llvm.loop !194

276:                                              ; preds = %272, %251
  %277 = load ptr, ptr %14, align 8, !tbaa !130
  tail call void @note_stores(ptr noundef %277, ptr noundef nonnull @move2add_note_store, ptr noundef null) #9
  %278 = tail call i32 @any_condjump_p(ptr noundef nonnull %7) #9
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %322, label %280, !prof !195

280:                                              ; preds = %276
  %281 = tail call ptr @fis_get_condition(ptr noundef nonnull %7) #9
  %282 = icmp eq ptr %281, null
  br i1 %282, label %322, label %283, !prof !196

283:                                              ; preds = %280
  %284 = load i32, ptr %281, align 8
  %285 = and i32 %284, 65535
  %286 = icmp eq i32 %285, 80
  br i1 %286, label %287, label %322, !prof !197

287:                                              ; preds = %283
  %288 = getelementptr inbounds %struct.rtx_def, ptr %281, i64 0, i32 1
  %289 = load ptr, ptr %288, align 8, !tbaa !130
  %290 = load i32, ptr %289, align 8
  %291 = and i32 %290, 65535
  %292 = icmp eq i32 %291, 37
  br i1 %292, label %293, label %322, !prof !198

293:                                              ; preds = %287
  %294 = tail call i32 @reg_set_p(ptr noundef nonnull %289, ptr noundef nonnull %7) #9
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %322, !prof !199

296:                                              ; preds = %293
  %297 = load ptr, ptr %288, align 8, !tbaa !130
  %298 = load i32, ptr %297, align 8
  %299 = lshr i32 %298, 16
  %300 = and i32 %299, 255
  %301 = zext nneg i32 %300 to i64
  %302 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %301
  %303 = load i8, ptr %302, align 1, !tbaa !130
  %304 = and i8 %303, -2
  %305 = icmp eq i8 %304, 2
  br i1 %305, label %306, label %322, !prof !200

306:                                              ; preds = %296
  %307 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %297) #8
  %308 = zext i32 %307 to i64
  %309 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %308, i64 %301
  %310 = load i8, ptr %309, align 1, !tbaa !130
  %311 = icmp eq i8 %310, 1
  br i1 %311, label %312, label %322, !prof !199

312:                                              ; preds = %306
  %313 = getelementptr inbounds %struct.rtx_def, ptr %281, i64 0, i32 1, i32 0, i32 0, i64 1
  %314 = load ptr, ptr %313, align 8, !tbaa !130
  %315 = load i32, ptr %314, align 8
  %316 = and i32 %315, 65535
  %317 = icmp eq i32 %316, 30
  br i1 %317, label %318, label %322, !prof !199

318:                                              ; preds = %312
  %319 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef nonnull %297, ptr noundef nonnull %314) #9
  %320 = getelementptr inbounds %struct.rtx_def, ptr %319, i64 0, i32 1
  %321 = load ptr, ptr %320, align 8, !tbaa !130
  tail call void @move2add_note_store(ptr noundef %321, ptr noundef %319, ptr poison) #8
  br label %322

322:                                              ; preds = %296, %280, %283, %287, %293, %306, %312, %318, %276
  %323 = load i32, ptr %7, align 8
  %324 = and i32 %323, 65535
  %325 = icmp eq i32 %324, 10
  br i1 %325, label %326, label %336, !prof !201

326:                                              ; preds = %322, %333
  %327 = phi i64 [ %334, %333 ], [ 52, %322 ]
  %328 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %327
  %329 = load i8, ptr %328, align 1, !tbaa !130
  %330 = icmp eq i8 %329, 0
  br i1 %330, label %333, label %331, !prof !202

331:                                              ; preds = %326
  %332 = getelementptr inbounds [53 x i32], ptr @reg_set_luid, i64 0, i64 %327
  store i32 0, ptr %332, align 4, !tbaa !121
  br label %333

333:                                              ; preds = %326, %331
  %334 = add nsw i64 %327, -1
  %335 = icmp eq i64 %327, 0
  br i1 %335, label %336, label %326, !prof !203, !llvm.loop !204

336:                                              ; preds = %333, %131, %243, %322, %6, %11
  %337 = phi ptr [ %7, %11 ], [ %7, %6 ], [ %7, %322 ], [ %7, %131 ], [ %164, %243 ], [ %7, %333 ]
  %338 = getelementptr inbounds %struct.rtx_def, ptr %337, i64 0, i32 1, i32 0, i32 0, i64 2
  %339 = load ptr, ptr %338, align 8, !tbaa !130
  %340 = load i32, ptr @move2add_luid, align 4, !tbaa !121
  %341 = add nsw i32 %340, 1
  store i32 %341, ptr @move2add_luid, align 4, !tbaa !121
  %342 = icmp eq ptr %339, null
  br i1 %342, label %343, label %6, !prof !205, !llvm.loop !206

343:                                              ; preds = %336, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_handle_postreload() #1 !prof !120 !PGOFuncName !207 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !121
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @reload_completed, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false, !prof !208
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_postreload() #0 !prof !120 !PGOFuncName !209 {
  %1 = tail call zeroext i8 @dbg_cnt(i32 noundef 22) #9
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %9, label %3, !prof !125

3:                                                ; preds = %0
  %4 = tail call ptr @get_insns() #9
  tail call void @reload_cse_regs(ptr noundef %4) #8
  %5 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !121
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7, !prof !208

7:                                                ; preds = %3
  %8 = tail call zeroext i8 @purge_all_dead_edges() #9
  br label %9

9:                                                ; preds = %3, %7, %0
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare ptr @gen_rtx_REG(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @cselib_init(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @init_alias_analysis() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @reload_cse_simplify(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !210 !PGOFuncName !211 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !130
  %5 = load i32, ptr %4, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %105 [
    i16 23, label %7
    i16 15, label %18
  ], !prof !212

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @reload_cse_simplify_set(ptr noundef nonnull %4, ptr noundef nonnull %0) #8, !range !213
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15, !prof !214

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @reload_cse_noop_set_p(ptr noundef nonnull %4) #8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13, !prof !215

13:                                               ; preds = %10
  %14 = tail call ptr @delete_insn_and_edges(ptr noundef nonnull %0) #9
  br label %105

15:                                               ; preds = %7
  %16 = tail call i32 @apply_change_group() #9
  br label %105

17:                                               ; preds = %10
  tail call fastcc void @reload_cse_simplify_operands(ptr noundef nonnull %0, ptr noundef %1) #8
  br label %105

18:                                               ; preds = %2
  %19 = tail call i32 @asm_noperands(ptr noundef nonnull %4) #9
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %21, label %46, !prof !216

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !130
  %24 = load i32, ptr %23, align 8, !tbaa !217
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %21
  %27 = zext nneg i32 %24 to i64
  br label %28

28:                                               ; preds = %26, %44
  %29 = phi i64 [ %27, %26 ], [ %30, %44 ]
  %30 = add nsw i64 %29, -1
  %31 = load ptr, ptr %22, align 8, !tbaa !130
  %32 = getelementptr inbounds %struct.rtvec_def, ptr %31, i64 0, i32 1, i64 %30
  %33 = load ptr, ptr %32, align 8, !tbaa !138
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 25
  br i1 %36, label %37, label %44

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !130
  %40 = load i32, ptr %39, align 8
  %41 = and i32 %40, 65535
  %42 = icmp eq i32 %41, 37
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  tail call void @cselib_invalidate_rtx(ptr noundef nonnull %39) #9
  br label %44

44:                                               ; preds = %43, %37, %28
  %45 = icmp ugt i64 %29, 1
  br i1 %45, label %28, label %46, !llvm.loop !219

46:                                               ; preds = %44, %21, %18
  %47 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !130
  %49 = load i32, ptr %48, align 8, !tbaa !217
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %76, !prof !220

51:                                               ; preds = %46
  %52 = zext nneg i32 %49 to i64
  br label %53

53:                                               ; preds = %51, %73
  %54 = phi i64 [ %52, %51 ], [ %56, %73 ]
  %55 = phi ptr [ null, %51 ], [ %74, %73 ]
  %56 = add nsw i64 %54, -1
  %57 = load ptr, ptr %47, align 8, !tbaa !130
  %58 = getelementptr inbounds %struct.rtvec_def, ptr %57, i64 0, i32 1, i64 %56
  %59 = load ptr, ptr %58, align 8, !tbaa !138
  %60 = load i32, ptr %59, align 8
  %61 = trunc i32 %60 to i16
  switch i16 %61, label %78 [
    i16 23, label %62
    i16 25, label %73
  ], !prof !221

62:                                               ; preds = %53
  %63 = tail call fastcc i32 @reload_cse_noop_set_p(ptr noundef nonnull %59) #8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %78, label %65, !prof !222

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !130
  %68 = load i32, ptr %67, align 8
  %69 = and i32 %68, -2147418113
  %70 = icmp eq i32 %69, -2147483611
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = icmp eq ptr %55, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %65, %71, %53
  %74 = phi ptr [ %55, %65 ], [ %67, %71 ], [ %55, %53 ]
  %75 = icmp ugt i64 %54, 1
  br i1 %75, label %53, label %76, !prof !223, !llvm.loop !224

76:                                               ; preds = %73, %46
  %77 = tail call ptr @delete_insn_and_edges(ptr noundef %0) #9
  br label %105

78:                                               ; preds = %62, %71, %53
  %79 = load ptr, ptr %47, align 8, !tbaa !130
  %80 = load i32, ptr %79, align 8, !tbaa !217
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %104, !prof !225

82:                                               ; preds = %78
  %83 = zext nneg i32 %80 to i64
  br label %84

84:                                               ; preds = %82, %97
  %85 = phi i64 [ %83, %82 ], [ %87, %97 ]
  %86 = phi i32 [ 0, %82 ], [ %98, %97 ]
  %87 = add nsw i64 %85, -1
  %88 = load ptr, ptr %47, align 8, !tbaa !130
  %89 = getelementptr inbounds %struct.rtvec_def, ptr %88, i64 0, i32 1, i64 %87
  %90 = load ptr, ptr %89, align 8, !tbaa !138
  %91 = load i32, ptr %90, align 8
  %92 = and i32 %91, 65535
  %93 = icmp eq i32 %92, 23
  br i1 %93, label %94, label %97, !prof !226

94:                                               ; preds = %84
  %95 = tail call fastcc i32 @reload_cse_simplify_set(ptr noundef nonnull %90, ptr noundef %0) #8, !range !213
  %96 = add nsw i32 %95, %86
  br label %97

97:                                               ; preds = %84, %94
  %98 = phi i32 [ %96, %94 ], [ %86, %84 ]
  %99 = icmp ugt i64 %85, 1
  br i1 %99, label %84, label %100, !prof !227, !llvm.loop !228

100:                                              ; preds = %97
  %101 = icmp sgt i32 %98, 0
  br i1 %101, label %102, label %104, !prof !229

102:                                              ; preds = %100
  %103 = tail call i32 @apply_change_group() #9
  br label %105

104:                                              ; preds = %78, %100
  tail call fastcc void @reload_cse_simplify_operands(ptr noundef %0, ptr noundef %1) #8
  br label %105

105:                                              ; preds = %76, %104, %102, %15, %17, %2, %13
  ret void
}

; Function Attrs: optsize
declare void @cselib_process_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @end_alias_analysis() local_unnamed_addr #3

; Function Attrs: optsize
declare void @cselib_finish() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @reload_cse_simplify_set(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !230 !PGOFuncName !231 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !130
  %5 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %4) #9
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !130
  %8 = tail call i32 @true_regnum(ptr noundef %7) #9
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %102, label %10, !prof !232

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !130
  %13 = tail call i32 @side_effects_p(ptr noundef %12) #9
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %102, !prof !233

15:                                               ; preds = %10
  %16 = tail call i32 @true_regnum(ptr noundef %12) #9
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %102, label %18, !prof !234

18:                                               ; preds = %15
  %19 = zext nneg i32 %8 to i64
  %20 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !121
  %22 = load ptr, ptr %6, align 8, !tbaa !130
  %23 = load i32, ptr %22, align 8
  %24 = lshr i32 %23, 16
  %25 = and i32 %24, 255
  %26 = tail call ptr @cselib_lookup(ptr noundef %12, i32 noundef %25, i32 noundef 0) #9
  %27 = icmp eq ptr %26, null
  br i1 %27, label %102, label %28, !prof !235

28:                                               ; preds = %18
  %29 = load i32, ptr %12, align 8
  %30 = trunc i32 %29 to i16
  switch i16 %30, label %43 [
    i16 43, label %31
    i16 37, label %35
  ], !prof !236

31:                                               ; preds = %28
  %32 = lshr i32 %29, 16
  %33 = and i32 %32, 255
  %34 = tail call i32 @ix86_memory_move_cost(i32 noundef %33, i32 noundef %21, i32 noundef 1) #9
  br label %45

35:                                               ; preds = %28
  %36 = lshr i32 %29, 16
  %37 = and i32 %36, 255
  %38 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %12) #8
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !121
  %42 = tail call i32 @ix86_register_move_cost(i32 noundef %37, i32 noundef %41, i32 noundef %21) #9
  br label %45

43:                                               ; preds = %28
  %44 = tail call i32 @rtx_cost(ptr noundef nonnull %12, i32 noundef 23, i8 noundef zeroext %5) #9
  br label %45

45:                                               ; preds = %35, %43, %31
  %46 = phi i32 [ %34, %31 ], [ %42, %35 ], [ %44, %43 ]
  %47 = getelementptr inbounds %struct.cselib_val_struct, ptr %26, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !138
  %49 = icmp eq ptr %48, null
  br i1 %49, label %102, label %50, !prof !237

50:                                               ; preds = %45, %97
  %51 = phi ptr [ %100, %97 ], [ %48, %45 ]
  %52 = phi i32 [ %99, %97 ], [ 0, %45 ]
  %53 = phi i32 [ %98, %97 ], [ %46, %45 ]
  %54 = getelementptr inbounds %struct.elt_loc_list, ptr %51, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !238
  %56 = load i32, ptr %55, align 8
  %57 = and i32 %56, 65535
  %58 = zext nneg i32 %57 to i64
  %59 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !121
  %61 = icmp eq i32 %60, 9
  br i1 %61, label %62, label %69, !prof !240

62:                                               ; preds = %50
  %63 = tail call i32 @references_value_p(ptr noundef nonnull %55, i32 noundef 0) #9
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65, !prof !241

65:                                               ; preds = %62
  %66 = load i32, ptr %55, align 8
  br label %69

67:                                               ; preds = %62
  %68 = tail call i32 @rtx_cost(ptr noundef nonnull %55, i32 noundef 23, i8 noundef zeroext %5) #9
  br label %81

69:                                               ; preds = %65, %50
  %70 = phi i32 [ %66, %65 ], [ %56, %50 ]
  %71 = and i32 %70, 65535
  %72 = icmp eq i32 %71, 37
  br i1 %72, label %73, label %97, !prof !242

73:                                               ; preds = %69
  %74 = lshr i32 %70, 16
  %75 = and i32 %74, 255
  %76 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %55) #8
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !121
  %80 = tail call i32 @ix86_register_move_cost(i32 noundef %75, i32 noundef %79, i32 noundef %21) #9
  br label %81

81:                                               ; preds = %73, %67
  %82 = phi i32 [ %80, %73 ], [ %68, %67 ]
  %83 = icmp slt i32 %82, %53
  br i1 %83, label %95, label %84, !prof !243

84:                                               ; preds = %81
  %85 = icmp eq i32 %82, %53
  br i1 %85, label %86, label %97, !prof !240

86:                                               ; preds = %84
  %87 = load i32, ptr %55, align 8
  %88 = and i32 %87, 65535
  %89 = icmp eq i32 %88, 37
  br i1 %89, label %90, label %97, !prof !244

90:                                               ; preds = %86
  %91 = load ptr, ptr %11, align 8, !tbaa !130
  %92 = load i32, ptr %91, align 8
  %93 = and i32 %92, 65535
  %94 = icmp eq i32 %93, 37
  br i1 %94, label %97, label %95

95:                                               ; preds = %90, %81
  %96 = tail call zeroext i8 @validate_unshare_change(ptr noundef %1, ptr noundef nonnull %11, ptr noundef nonnull %55, i8 noundef zeroext 1) #9
  br label %97

97:                                               ; preds = %84, %86, %90, %95, %69
  %98 = phi i32 [ %53, %69 ], [ %82, %95 ], [ %53, %90 ], [ %53, %86 ], [ %53, %84 ]
  %99 = phi i32 [ %52, %69 ], [ 1, %95 ], [ %52, %90 ], [ %52, %86 ], [ %52, %84 ]
  %100 = load ptr, ptr %51, align 8, !tbaa !138
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %50, !prof !245, !llvm.loop !246

102:                                              ; preds = %97, %45, %18, %10, %15, %2
  %103 = phi i32 [ 0, %2 ], [ 0, %15 ], [ 0, %10 ], [ 0, %18 ], [ 0, %45 ], [ %99, %97 ]
  ret i32 %103
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @reload_cse_noop_set_p(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !247 !PGOFuncName !248 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !130
  %4 = tail call i32 @cselib_reg_set_mode(ptr noundef %3) #9
  %5 = load ptr, ptr %2, align 8, !tbaa !130
  %6 = load i32, ptr %5, align 8
  %7 = lshr i32 %6, 16
  %8 = and i32 %7, 255
  %9 = icmp eq i32 %4, %8
  br i1 %9, label %10, label %14, !prof !249

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !130
  %13 = tail call i32 @rtx_equal_for_cselib_p(ptr noundef nonnull %5, ptr noundef %12) #9
  br label %14

14:                                               ; preds = %1, %10
  %15 = phi i32 [ %13, %10 ], [ 0, %1 ]
  ret i32 %15
}

; Function Attrs: optsize
declare ptr @delete_insn_and_edges(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @apply_change_group() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @reload_cse_simplify_operands(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !250 !PGOFuncName !251 {
  %3 = alloca [30 x i64], align 16
  %4 = alloca [30 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %4) #10
  tail call void @extract_insn(ptr noundef %0) #9
  %5 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !252
  %6 = icmp eq i8 %5, 0
  %7 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %6, i1 true, i1 %8
  br i1 %9, label %324, label %10, !prof !254

10:                                               ; preds = %2
  %11 = tail call i32 @constrain_operands(i32 noundef 1) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14, !prof !255

13:                                               ; preds = %10
  tail call void @_fatal_insn_not_found(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef 396, ptr noundef nonnull @.str.2) #9
  br label %14

14:                                               ; preds = %13, %10
  %15 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !252
  %16 = sext i8 %15 to i64
  %17 = shl nsw i64 %16, 2
  %18 = alloca i8, i64 %17, align 16
  %19 = alloca i8, i64 %17, align 16
  %20 = alloca i8, i64 %17, align 16
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %18, i8 0, i64 %17, i1 false)
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %19, i8 0, i64 %17, i1 false)
  %21 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !256
  %22 = icmp sgt i8 %21, 0
  br i1 %22, label %25, label %71, !prof !257

23:                                               ; preds = %66
  %24 = icmp sgt i8 %68, 0
  br i1 %24, label %82, label %71, !prof !258

25:                                               ; preds = %14, %66
  %26 = phi i64 [ %67, %66 ], [ 0, %14 ]
  %27 = getelementptr inbounds [30 x i64], ptr %3, i64 0, i64 %26
  store i64 0, ptr %27, align 8, !tbaa !135
  %28 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %26
  %29 = load ptr, ptr %28, align 8, !tbaa !138
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 12
  br i1 %32, label %66, label %33, !prof !259

33:                                               ; preds = %25
  %34 = zext nneg i32 %31 to i64
  %35 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !121
  %37 = icmp eq i32 %36, 9
  %38 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 3, i64 %26
  %39 = load i32, ptr %38, align 4, !tbaa !121
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %37, i1 %40, i1 false
  br i1 %41, label %66, label %42, !prof !260

42:                                               ; preds = %33
  %43 = tail call ptr @cselib_lookup(ptr noundef nonnull %29, i32 noundef %39, i32 noundef 0) #9
  %44 = icmp eq ptr %43, null
  br i1 %44, label %66, label %45, !prof !261

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.cselib_val_struct, ptr %43, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !138
  %48 = icmp eq ptr %47, null
  br i1 %48, label %66, label %49, !prof !262

49:                                               ; preds = %45, %62
  %50 = phi i64 [ %63, %62 ], [ 0, %45 ]
  %51 = phi ptr [ %64, %62 ], [ %47, %45 ]
  %52 = getelementptr inbounds %struct.elt_loc_list, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !238
  %54 = load i32, ptr %53, align 8
  %55 = and i32 %54, 65535
  %56 = icmp eq i32 %55, 37
  br i1 %56, label %57, label %62, !prof !263

57:                                               ; preds = %49
  %58 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %53) #8
  %59 = zext nneg i32 %58 to i64
  %60 = shl nuw i64 1, %59
  %61 = or i64 %60, %50
  store i64 %61, ptr %27, align 8, !tbaa !135
  br label %62

62:                                               ; preds = %49, %57
  %63 = phi i64 [ %50, %49 ], [ %61, %57 ]
  %64 = load ptr, ptr %51, align 8, !tbaa !138
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %49, !prof !264, !llvm.loop !265

66:                                               ; preds = %62, %33, %45, %42, %25
  %67 = add nuw nsw i64 %26, 1
  %68 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !256
  %69 = sext i8 %68 to i64
  %70 = icmp slt i64 %67, %69
  br i1 %70, label %25, label %23, !prof !266, !llvm.loop !267

71:                                               ; preds = %198, %14, %23
  %72 = phi i8 [ %68, %23 ], [ %21, %14 ], [ %200, %198 ]
  %73 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !252
  %74 = icmp sgt i8 %73, 0
  br i1 %74, label %76, label %75, !prof !257

75:                                               ; preds = %71
  store i8 0, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !252
  br label %270

76:                                               ; preds = %71
  %77 = zext nneg i8 %73 to i64
  %78 = load i32, ptr @which_alternative, align 4, !tbaa !121
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, ptr %18, i64 %79
  %81 = load i32, ptr %80, align 4, !tbaa !121
  br label %203

82:                                               ; preds = %23, %198
  %83 = phi i64 [ %199, %198 ], [ 0, %23 ]
  %84 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !252
  %85 = sext i8 %84 to i64
  %86 = shl nsw i64 %85, 2
  %87 = alloca i8, i64 %86, align 16
  %88 = getelementptr inbounds [30 x ptr], ptr %4, i64 0, i64 %83
  store ptr %87, ptr %88, align 8, !tbaa !138
  %89 = icmp sgt i8 %84, 0
  br i1 %89, label %90, label %93, !prof !268

90:                                               ; preds = %82
  %91 = zext nneg i8 %84 to i64
  %92 = shl nuw nsw i64 %91, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %87, i8 -1, i64 %92, i1 false), !tbaa !121
  br label %93

93:                                               ; preds = %90, %82
  %94 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %83
  %95 = load ptr, ptr %94, align 8, !tbaa !138
  %96 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 3, i64 %83
  %97 = load i32, ptr %96, align 4, !tbaa !121
  %98 = load i8, ptr %95, align 1, !tbaa !130
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %121, label %100, !prof !269

100:                                              ; preds = %93, %117
  %101 = phi i8 [ %119, %117 ], [ %98, %93 ]
  %102 = phi i32 [ %118, %117 ], [ 0, %93 ]
  %103 = phi ptr [ %104, %117 ], [ %95, %93 ]
  %104 = getelementptr inbounds i8, ptr %103, i64 1
  switch i8 %101, label %117 [
    i8 44, label %105
    i8 63, label %107
    i8 33, label %112
  ], !prof !270

105:                                              ; preds = %100
  %106 = add nsw i32 %102, 1
  br label %117

107:                                              ; preds = %100
  %108 = sext i32 %102 to i64
  %109 = getelementptr inbounds i32, ptr %18, i64 %108
  %110 = load i32, ptr %109, align 4, !tbaa !121
  %111 = add nsw i32 %110, 3
  store i32 %111, ptr %109, align 4, !tbaa !121
  br label %117

112:                                              ; preds = %100
  %113 = sext i32 %102 to i64
  %114 = getelementptr inbounds i32, ptr %18, i64 %113
  %115 = load i32, ptr %114, align 4, !tbaa !121
  %116 = add nsw i32 %115, 300
  store i32 %116, ptr %114, align 4, !tbaa !121
  br label %117

117:                                              ; preds = %100, %107, %112, %105
  %118 = phi i32 [ %106, %105 ], [ %102, %107 ], [ %102, %112 ], [ %102, %100 ]
  %119 = load i8, ptr %104, align 1, !tbaa !130
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %121, label %100, !prof !271, !llvm.loop !272

121:                                              ; preds = %117, %93
  %122 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %83
  %123 = load ptr, ptr %122, align 8, !tbaa !138
  %124 = call i32 @true_regnum(ptr noundef %123) #9
  %125 = icmp sgt i32 %124, -1
  br i1 %125, label %198, label %126, !prof !273

126:                                              ; preds = %121
  %127 = load i8, ptr %95, align 1, !tbaa !130
  switch i8 %127, label %128 [
    i8 61, label %198
    i8 43, label %198
  ], !prof !274

128:                                              ; preds = %126
  %129 = getelementptr inbounds [30 x i64], ptr %3, i64 0, i64 %83
  %130 = load i64, ptr %129, align 8, !tbaa !135
  br label %131

131:                                              ; preds = %128, %195
  %132 = phi i64 [ 0, %128 ], [ %196, %195 ]
  %133 = shl nuw nsw i64 1, %132
  %134 = and i64 %130, %133
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %195, label %136, !prof !275

136:                                              ; preds = %131
  %137 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %138 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %139 = shl i32 %97, 16
  %140 = and i32 %139, 16711680
  %141 = call fastcc i32 @rhs_regno(ptr noundef %1) #8
  %142 = trunc i64 %132 to i32
  call void @df_ref_change_reg_with_loc(i32 noundef %141, i32 noundef %142, ptr noundef %1) #9
  store i32 %142, ptr %137, align 8, !tbaa !130
  %143 = load i32, ptr %1, align 8
  %144 = and i32 %143, -16711681
  %145 = or disjoint i32 %144, %140
  store i32 %145, ptr %1, align 8
  br label %146

146:                                              ; preds = %189, %136
  %147 = phi i32 [ 0, %136 ], [ %190, %189 ]
  %148 = phi ptr [ %95, %136 ], [ %193, %189 ]
  %149 = phi i32 [ 0, %136 ], [ %191, %189 ]
  %150 = load i8, ptr %148, align 1, !tbaa !130
  switch i8 %150, label %155 [
    i8 61, label %189
    i8 43, label %189
    i8 63, label %189
    i8 35, label %189
    i8 38, label %189
    i8 33, label %189
    i8 42, label %189
    i8 37, label %189
    i8 48, label %189
    i8 49, label %189
    i8 50, label %189
    i8 51, label %189
    i8 52, label %189
    i8 53, label %189
    i8 54, label %189
    i8 55, label %189
    i8 56, label %189
    i8 57, label %189
    i8 60, label %189
    i8 62, label %189
    i8 86, label %189
    i8 111, label %189
    i8 69, label %189
    i8 70, label %189
    i8 71, label %189
    i8 72, label %189
    i8 115, label %189
    i8 105, label %189
    i8 110, label %189
    i8 73, label %189
    i8 74, label %189
    i8 75, label %189
    i8 76, label %189
    i8 77, label %189
    i8 78, label %189
    i8 79, label %189
    i8 80, label %189
    i8 112, label %189
    i8 88, label %189
    i8 109, label %189
    i8 103, label %151
    i8 114, label %151
    i8 44, label %162
    i8 0, label %162
  ], !prof !276

151:                                              ; preds = %146, %146
  %152 = sext i32 %147 to i64
  %153 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subunion, i64 0, i64 %152, i64 13
  %154 = load i32, ptr %153, align 4, !tbaa !121
  br label %189

155:                                              ; preds = %146
  %156 = sext i32 %147 to i64
  %157 = call i32 @lookup_constraint(ptr noundef nonnull %148) #9
  %158 = call i32 @regclass_for_constraint(i32 noundef %157) #9
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subunion, i64 0, i64 %156, i64 %159
  %161 = load i32, ptr %160, align 4, !tbaa !121
  br label %189

162:                                              ; preds = %146, %146
  %163 = sext i32 %149 to i64
  %164 = getelementptr inbounds i32, ptr %87, i64 %163
  %165 = load i32, ptr %164, align 4, !tbaa !121
  %166 = icmp eq i32 %165, -1
  br i1 %166, label %167, label %187, !prof !277

167:                                              ; preds = %162
  %168 = call i32 @reg_fits_class_p(ptr noundef nonnull %1, i32 noundef %147, i32 noundef 0, i32 noundef %97) #9
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %187, label %170, !prof !278

170:                                              ; preds = %167
  %171 = load ptr, ptr %122, align 8, !tbaa !138
  %172 = load i32, ptr %171, align 8
  %173 = and i32 %172, 65535
  %174 = icmp eq i32 %173, 30
  br i1 %174, label %175, label %183, !prof !279

175:                                              ; preds = %170
  %176 = load ptr, ptr %138, align 8, !tbaa !130
  %177 = call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %176) #9
  %178 = call i32 @rtx_cost(ptr noundef nonnull %171, i32 noundef 23, i8 noundef zeroext %177) #9
  %179 = load ptr, ptr %138, align 8, !tbaa !130
  %180 = call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %179) #9
  %181 = call i32 @rtx_cost(ptr noundef nonnull %1, i32 noundef 23, i8 noundef zeroext %180) #9
  %182 = icmp sgt i32 %178, %181
  br i1 %182, label %183, label %187, !prof !280

183:                                              ; preds = %175, %170
  %184 = getelementptr inbounds i32, ptr %19, i64 %163
  %185 = load i32, ptr %184, align 4, !tbaa !121
  %186 = add nsw i32 %185, 1
  store i32 %186, ptr %184, align 4, !tbaa !121
  store i32 %142, ptr %164, align 4, !tbaa !121
  br label %187

187:                                              ; preds = %183, %175, %167, %162
  %188 = add nsw i32 %149, 1
  br label %189

189:                                              ; preds = %146, %146, %146, %146, %146, %146, %146, %146, %146, %146, %146, %146, %146, %146, %146, %146, %146, %146, %146, %146, %146, %146, %146, %146, %146, %146, %146, %146, %146, %146, %146, %146, %146, %146, %146, %146, %146, %146, %146, %146, %187, %155, %151
  %190 = phi i32 [ %161, %155 ], [ 0, %187 ], [ %154, %151 ], [ %147, %146 ], [ %147, %146 ], [ %147, %146 ], [ %147, %146 ], [ %147, %146 ], [ %147, %146 ], [ %147, %146 ], [ %147, %146 ], [ %147, %146 ], [ %147, %146 ], [ %147, %146 ], [ %147, %146 ], [ %147, %146 ], [ %147, %146 ], [ %147, %146 ], [ %147, %146 ], [ %147, %146 ], [ %147, %146 ], [ %147, %146 ], [ %147, %146 ], [ %147, %146 ], [ %147, %146 ], [ %147, %146 ], [ %147, %146 ], [ %147, %146 ], [ %147, %146 ], [ %147, %146 ], [ %147, %146 ], [ %147, %146 ], [ %147, %146 ], [ %147, %146 ], [ %147, %146 ], [ %147, %146 ], [ %147, %146 ], [ %147, %146 ], [ %147, %146 ], [ %147, %146 ], [ %147, %146 ], [ %147, %146 ], [ %147, %146 ]
  %191 = phi i32 [ %149, %155 ], [ %188, %187 ], [ %149, %151 ], [ %149, %146 ], [ %149, %146 ], [ %149, %146 ], [ %149, %146 ], [ %149, %146 ], [ %149, %146 ], [ %149, %146 ], [ %149, %146 ], [ %149, %146 ], [ %149, %146 ], [ %149, %146 ], [ %149, %146 ], [ %149, %146 ], [ %149, %146 ], [ %149, %146 ], [ %149, %146 ], [ %149, %146 ], [ %149, %146 ], [ %149, %146 ], [ %149, %146 ], [ %149, %146 ], [ %149, %146 ], [ %149, %146 ], [ %149, %146 ], [ %149, %146 ], [ %149, %146 ], [ %149, %146 ], [ %149, %146 ], [ %149, %146 ], [ %149, %146 ], [ %149, %146 ], [ %149, %146 ], [ %149, %146 ], [ %149, %146 ], [ %149, %146 ], [ %149, %146 ], [ %149, %146 ], [ %149, %146 ], [ %149, %146 ], [ %149, %146 ]
  %192 = call fastcc i64 @insn_constraint_len(i8 noundef signext %150) #8
  %193 = getelementptr inbounds i8, ptr %148, i64 %192
  %194 = icmp eq i8 %150, 0
  br i1 %194, label %195, label %146

195:                                              ; preds = %189, %131
  %196 = add nuw nsw i64 %132, 1
  %197 = icmp eq i64 %196, 53
  br i1 %197, label %198, label %131, !prof !281, !llvm.loop !282

198:                                              ; preds = %195, %121, %126, %126
  %199 = add nuw nsw i64 %83, 1
  %200 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !256
  %201 = sext i8 %200 to i64
  %202 = icmp slt i64 %199, %201
  br i1 %202, label %82, label %71, !prof !266, !llvm.loop !283

203:                                              ; preds = %76, %214
  %204 = phi i64 [ 0, %76 ], [ %216, %214 ]
  %205 = phi i32 [ 0, %76 ], [ %215, %214 ]
  %206 = getelementptr inbounds i32, ptr %18, i64 %204
  %207 = load i32, ptr %206, align 4, !tbaa !121
  %208 = icmp sgt i32 %207, %81
  br i1 %208, label %214, label %209, !prof !284

209:                                              ; preds = %203
  %210 = add nsw i32 %205, 1
  %211 = sext i32 %205 to i64
  %212 = getelementptr inbounds i32, ptr %20, i64 %211
  %213 = trunc i64 %204 to i32
  store i32 %213, ptr %212, align 4, !tbaa !121
  br label %214

214:                                              ; preds = %203, %209
  %215 = phi i32 [ %210, %209 ], [ %205, %203 ]
  %216 = add nuw nsw i64 %204, 1
  %217 = icmp eq i64 %216, %77
  br i1 %217, label %218, label %203, !prof !285, !llvm.loop !286

218:                                              ; preds = %214
  %219 = trunc i32 %215 to i8
  store i8 %219, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !252
  %220 = shl i32 %215, 24
  %221 = ashr exact i32 %220, 24
  %222 = icmp sgt i32 %221, 1
  br i1 %222, label %223, label %270, !prof !258

223:                                              ; preds = %218
  %224 = add nsw i32 %221, -1
  %225 = zext nneg i32 %224 to i64
  %226 = zext nneg i32 %221 to i64
  br label %227

227:                                              ; preds = %264, %223
  %228 = phi i64 [ 0, %223 ], [ %232, %264 ]
  %229 = phi i64 [ 1, %223 ], [ %268, %264 ]
  %230 = getelementptr inbounds i32, ptr %20, i64 %228
  %231 = load i32, ptr %230, align 4, !tbaa !121
  %232 = add nuw nsw i64 %228, 1
  %233 = trunc i64 %228 to i32
  %234 = sext i32 %231 to i64
  %235 = getelementptr inbounds i32, ptr %19, i64 %234
  %236 = load i32, ptr %235, align 4, !tbaa !121
  %237 = getelementptr inbounds i32, ptr %18, i64 %234
  %238 = load i32, ptr %237, align 4, !tbaa !121
  br label %239

239:                                              ; preds = %227, %258
  %240 = phi i64 [ %229, %227 ], [ %262, %258 ]
  %241 = phi i32 [ %236, %227 ], [ %261, %258 ]
  %242 = phi i32 [ %238, %227 ], [ %260, %258 ]
  %243 = phi i32 [ %233, %227 ], [ %259, %258 ]
  %244 = getelementptr inbounds i32, ptr %20, i64 %240
  %245 = load i32, ptr %244, align 4, !tbaa !121
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, ptr %18, i64 %246
  %248 = load i32, ptr %247, align 4, !tbaa !121
  %249 = getelementptr inbounds i32, ptr %19, i64 %246
  %250 = load i32, ptr %249, align 4, !tbaa !121
  %251 = icmp slt i32 %248, %242
  br i1 %251, label %256, label %252, !prof !287

252:                                              ; preds = %239
  %253 = icmp eq i32 %248, %242
  %254 = icmp sgt i32 %250, %241
  %255 = select i1 %253, i1 %254, i1 false
  br i1 %255, label %256, label %258, !prof !288

256:                                              ; preds = %252, %239
  %257 = trunc i64 %240 to i32
  br label %258

258:                                              ; preds = %256, %252
  %259 = phi i32 [ %257, %256 ], [ %243, %252 ]
  %260 = phi i32 [ %248, %256 ], [ %242, %252 ]
  %261 = phi i32 [ %250, %256 ], [ %241, %252 ]
  %262 = add nuw nsw i64 %240, 1
  %263 = icmp eq i64 %262, %226
  br i1 %263, label %264, label %239, !prof !289, !llvm.loop !290

264:                                              ; preds = %258
  %265 = sext i32 %259 to i64
  %266 = getelementptr inbounds i32, ptr %20, i64 %265
  %267 = load i32, ptr %266, align 4, !tbaa !121
  store i32 %231, ptr %266, align 4, !tbaa !121
  store i32 %267, ptr %230, align 4, !tbaa !121
  %268 = add nuw nsw i64 %229, 1
  %269 = icmp eq i64 %232, %225
  br i1 %269, label %270, label %227, !prof !291, !llvm.loop !292

270:                                              ; preds = %264, %75, %218
  %271 = load i32, ptr %20, align 16, !tbaa !121
  %272 = icmp sgt i8 %72, 0
  br i1 %272, label %273, label %296, !prof !257

273:                                              ; preds = %270
  %274 = sext i32 %271 to i64
  br label %275

275:                                              ; preds = %273, %291
  %276 = phi i8 [ %72, %273 ], [ %292, %291 ]
  %277 = phi i64 [ 0, %273 ], [ %293, %291 ]
  %278 = getelementptr inbounds [30 x ptr], ptr %4, i64 0, i64 %277
  %279 = load ptr, ptr %278, align 8, !tbaa !138
  %280 = getelementptr inbounds i32, ptr %279, i64 %274
  %281 = load i32, ptr %280, align 4, !tbaa !121
  %282 = icmp eq i32 %281, -1
  br i1 %282, label %291, label %283, !prof !293

283:                                              ; preds = %275
  %284 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 3, i64 %277
  %285 = load i32, ptr %284, align 4, !tbaa !121
  %286 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %277
  %287 = load ptr, ptr %286, align 8, !tbaa !138
  %288 = call ptr @gen_rtx_REG(i32 noundef %285, i32 noundef %281) #9
  %289 = call zeroext i8 @validate_change(ptr noundef %0, ptr noundef %287, ptr noundef %288, i8 noundef zeroext 1) #9
  %290 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !256
  br label %291

291:                                              ; preds = %275, %283
  %292 = phi i8 [ %276, %275 ], [ %290, %283 ]
  %293 = add nuw nsw i64 %277, 1
  %294 = sext i8 %292 to i64
  %295 = icmp slt i64 %293, %294
  br i1 %295, label %275, label %296, !prof !266, !llvm.loop !294

296:                                              ; preds = %291, %270
  %297 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !295
  %298 = icmp sgt i8 %297, 0
  br i1 %298, label %299, label %322, !prof !296

299:                                              ; preds = %296
  %300 = sext i32 %271 to i64
  %301 = zext nneg i8 %297 to i64
  br label %302

302:                                              ; preds = %299, %320
  %303 = phi i64 [ %301, %299 ], [ %304, %320 ]
  %304 = add nsw i64 %303, -1
  %305 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 6, i64 %304
  %306 = load i8, ptr %305, align 1, !tbaa !130
  %307 = sext i8 %306 to i64
  %308 = getelementptr inbounds [30 x ptr], ptr %4, i64 0, i64 %307
  %309 = load ptr, ptr %308, align 8, !tbaa !138
  %310 = getelementptr inbounds i32, ptr %309, i64 %300
  %311 = load i32, ptr %310, align 4, !tbaa !121
  %312 = icmp eq i32 %311, -1
  br i1 %312, label %320, label %313, !prof !297

313:                                              ; preds = %302
  %314 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 3, i64 %307
  %315 = load i32, ptr %314, align 4, !tbaa !121
  %316 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 5, i64 %304
  %317 = load ptr, ptr %316, align 8, !tbaa !138
  %318 = call ptr @gen_rtx_REG(i32 noundef %315, i32 noundef %311) #9
  %319 = call zeroext i8 @validate_change(ptr noundef %0, ptr noundef %317, ptr noundef %318, i8 noundef zeroext 1) #9
  br label %320

320:                                              ; preds = %302, %313
  %321 = icmp ugt i64 %303, 1
  br i1 %321, label %302, label %322, !prof !298, !llvm.loop !299

322:                                              ; preds = %320, %296
  %323 = call i32 @apply_change_group() #9
  br label %324

324:                                              ; preds = %2, %322
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %3) #10
  ret void
}

; Function Attrs: optsize
declare i32 @asm_noperands(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @cselib_invalidate_rtx(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @optimize_bb_for_speed_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @true_regnum(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @side_effects_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @cselib_lookup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @ix86_memory_move_cost(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @ix86_register_move_cost(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !300 !PGOFuncName !301 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !130
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @rtx_cost(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @references_value_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @validate_unshare_change(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @cselib_reg_set_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @rtx_equal_for_cselib_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @extract_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @constrain_operands(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_fatal_insn_not_found(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: optsize
declare void @df_ref_change_reg_with_loc(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @regclass_for_constraint(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @lookup_constraint(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @reg_fits_class_p(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @insn_constraint_len(i8 noundef signext %0) unnamed_addr #6 !prof !302 !PGOFuncName !303 {
  %2 = icmp eq i8 %0, 89
  %3 = select i1 %2, i64 2, i64 1, !prof !304
  ret i64 %3
}

; Function Attrs: optsize
declare zeroext i8 @validate_change(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @get_first_label_num() local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @max_label_num() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @df_get_live_in(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @reg_set_to_hard_reg_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @compute_use_by_pseudos(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @get_last_insn() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @prev_nonnote_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @reload_combine_note_use(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !305 !PGOFuncName !306 {
  br label %3

3:                                                ; preds = %14, %2
  %4 = phi ptr [ %0, %2 ], [ %15, %14 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !138
  %6 = load i32, ptr %5, align 8
  %7 = trunc i32 %6 to i16
  switch i16 %7, label %109 [
    i16 23, label %8
    i16 24, label %16
    i16 25, label %39
    i16 49, label %49
    i16 37, label %61
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !130
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 37
  br i1 %13, label %14, label %109

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %3

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !130
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, -2147418113
  %21 = icmp eq i32 %20, -2147483611
  br i1 %21, label %22, label %109

22:                                               ; preds = %16
  %23 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %18) #8
  %24 = sext i32 %23 to i64
  %25 = lshr i32 %19, 16
  %26 = and i32 %25, 255
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %24, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !130
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %142, label %31

31:                                               ; preds = %22
  %32 = zext i8 %29 to i64
  br label %33

33:                                               ; preds = %31, %33
  %34 = phi i64 [ %32, %31 ], [ %35, %33 ]
  %35 = add nsw i64 %34, -1
  %36 = add nsw i64 %35, %24
  %37 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %36, i32 1
  store i32 -1, ptr %37, align 8, !tbaa !153
  %38 = icmp ugt i64 %34, 1
  br i1 %38, label %33, label %142, !llvm.loop !307

39:                                               ; preds = %3
  %40 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !130
  %42 = load i32, ptr %41, align 8
  %43 = and i32 %42, 65535
  %44 = icmp eq i32 %43, 37
  br i1 %44, label %45, label %109

45:                                               ; preds = %39
  %46 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %41) #8
  %47 = icmp ult i32 %46, 53
  br i1 %47, label %142, label %48

48:                                               ; preds = %45
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1075, ptr noundef nonnull @.str.2) #9
  br label %142

49:                                               ; preds = %3
  %50 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !130
  %52 = load i32, ptr %51, align 8
  %53 = and i32 %52, 65535
  %54 = icmp eq i32 %53, 37
  br i1 %54, label %55, label %109

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %57 = load ptr, ptr %56, align 8, !tbaa !130
  %58 = load i32, ptr %57, align 8
  %59 = and i32 %58, 65535
  %60 = icmp eq i32 %59, 30
  br i1 %60, label %63, label %109

61:                                               ; preds = %3
  %62 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !138
  br label %63

63:                                               ; preds = %61, %55
  %64 = phi i32 [ %52, %55 ], [ %6, %61 ]
  %65 = phi ptr [ %57, %55 ], [ %62, %61 ]
  %66 = phi ptr [ %51, %55 ], [ %5, %61 ]
  %67 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %66) #8
  %68 = icmp slt i32 %67, 53
  br i1 %68, label %71, label %69

69:                                               ; preds = %63
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1095, ptr noundef nonnull @.str.2) #9
  %70 = load i32, ptr %66, align 8
  br label %71

71:                                               ; preds = %63, %69
  %72 = phi i32 [ %64, %63 ], [ %70, %69 ]
  %73 = sext i32 %67 to i64
  %74 = lshr i32 %72, 16
  %75 = and i32 %74, 255
  %76 = zext nneg i32 %75 to i64
  %77 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %73, i64 %76
  %78 = load i8, ptr %77, align 1, !tbaa !130
  %79 = icmp ugt i8 %78, 1
  br i1 %79, label %80, label %88

80:                                               ; preds = %71
  %81 = zext i8 %78 to i64
  br label %82

82:                                               ; preds = %80, %82
  %83 = phi i64 [ %81, %80 ], [ %84, %82 ]
  %84 = add nsw i64 %83, -1
  %85 = add nsw i64 %84, %73
  %86 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %85, i32 1
  store i32 -1, ptr %86, align 8, !tbaa !153
  %87 = icmp ugt i64 %83, 1
  br i1 %87, label %82, label %142, !llvm.loop !308

88:                                               ; preds = %71
  %89 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %73
  %90 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %73, i32 1
  %91 = load i32, ptr %90, align 8, !tbaa !153
  %92 = add nsw i32 %91, -1
  store i32 %92, ptr %90, align 8, !tbaa !153
  %93 = icmp slt i32 %91, 1
  br i1 %93, label %142, label %94

94:                                               ; preds = %88
  %95 = icmp eq i32 %92, 5
  %96 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %73, i32 2
  br i1 %95, label %102, label %97

97:                                               ; preds = %94
  %98 = load ptr, ptr %96, align 8, !tbaa !157
  %99 = tail call i32 @rtx_equal_p(ptr noundef %65, ptr noundef %98) #9
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  store i32 -1, ptr %90, align 8, !tbaa !153
  br label %142

102:                                              ; preds = %94
  store ptr %65, ptr %96, align 8, !tbaa !157
  %103 = load i32, ptr @reload_combine_ruid, align 4, !tbaa !121
  %104 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %73, i32 4
  store i32 %103, ptr %104, align 4, !tbaa !155
  br label %105

105:                                              ; preds = %97, %102
  %106 = zext nneg i32 %92 to i64
  %107 = getelementptr inbounds [6 x %struct.reg_use], ptr %89, i64 0, i64 %106
  store ptr %1, ptr %107, align 8, !tbaa !158
  %108 = getelementptr inbounds [6 x %struct.reg_use], ptr %89, i64 0, i64 %106, i32 1
  store ptr %4, ptr %108, align 8, !tbaa !160
  br label %142

109:                                              ; preds = %3, %8, %49, %55, %39, %16
  %110 = and i32 %6, 65535
  %111 = zext nneg i32 %110 to i64
  %112 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %111
  %113 = load ptr, ptr %112, align 8, !tbaa !138
  %114 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %111
  %115 = load i8, ptr %114, align 1, !tbaa !130
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %142, label %117

117:                                              ; preds = %109
  %118 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %119 = zext i8 %115 to i64
  br label %120

120:                                              ; preds = %117, %140
  %121 = phi i64 [ %119, %117 ], [ %122, %140 ]
  %122 = add nsw i64 %121, -1
  %123 = getelementptr inbounds i8, ptr %113, i64 %122
  %124 = load i8, ptr %123, align 1, !tbaa !130
  switch i8 %124, label %140 [
    i8 101, label %125
    i8 69, label %127
  ]

125:                                              ; preds = %120
  %126 = getelementptr inbounds [1 x %union.rtunion_def], ptr %118, i64 0, i64 %122
  tail call fastcc void @reload_combine_note_use(ptr noundef nonnull %126, ptr noundef %1) #8
  br label %140

127:                                              ; preds = %120
  %128 = getelementptr inbounds [1 x %union.rtunion_def], ptr %118, i64 0, i64 %122
  %129 = load ptr, ptr %128, align 8, !tbaa !130
  %130 = load i32, ptr %129, align 8, !tbaa !217
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %127
  %133 = zext nneg i32 %130 to i64
  br label %134

134:                                              ; preds = %132, %134
  %135 = phi i64 [ %133, %132 ], [ %136, %134 ]
  %136 = add nsw i64 %135, -1
  %137 = load ptr, ptr %128, align 8, !tbaa !130
  %138 = getelementptr inbounds %struct.rtvec_def, ptr %137, i64 0, i32 1, i64 %136
  tail call fastcc void @reload_combine_note_use(ptr noundef nonnull %138, ptr noundef %1) #8
  %139 = icmp ugt i64 %135, 1
  br i1 %139, label %134, label %140, !llvm.loop !309

140:                                              ; preds = %134, %127, %120, %125
  %141 = icmp sgt i64 %121, 1
  br i1 %141, label %120, label %142, !llvm.loop !310

142:                                              ; preds = %82, %33, %140, %22, %109, %101, %105, %88, %48, %45
  ret void
}

; Function Attrs: optsize
declare ptr @delete_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @remove_reg_equal_equiv_notes(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @reload_combine_note_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !prof !305 !PGOFuncName !311 {
  %4 = load i32, ptr %0, align 8
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 255
  %7 = and i32 %4, 65535
  %8 = icmp eq i32 %7, 39
  br i1 %8, label %9, label %21

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !130
  %12 = tail call fastcc i32 @rhs_regno(ptr noundef %11) #8
  %13 = load i32, ptr %11, align 8
  %14 = lshr i32 %13, 16
  %15 = and i32 %14, 255
  %16 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %17 = load i32, ptr %16, align 8, !tbaa !130
  %18 = tail call i32 @subreg_regno_offset(i32 noundef %12, i32 noundef %15, i32 noundef %17, i32 noundef %6) #9
  %19 = load ptr, ptr %10, align 8, !tbaa !130
  %20 = load i32, ptr %19, align 8
  br label %21

21:                                               ; preds = %9, %3
  %22 = phi i32 [ %20, %9 ], [ %4, %3 ]
  %23 = phi i32 [ %18, %9 ], [ 0, %3 ]
  %24 = phi ptr [ %19, %9 ], [ %0, %3 ]
  %25 = and i32 %22, 65535
  %26 = icmp eq i32 %25, 37
  br i1 %26, label %27, label %74

27:                                               ; preds = %21
  %28 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %24) #8
  %29 = add i32 %28, %23
  %30 = load i32, ptr %1, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 23
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !130
  %36 = load i32, ptr %35, align 8
  %37 = trunc i32 %36 to i16
  switch i16 %37, label %56 [
    i16 120, label %38
    i16 40, label %38
  ]

38:                                               ; preds = %33, %33, %27
  %39 = sext i32 %29 to i64
  %40 = zext nneg i32 %6 to i64
  %41 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %39, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !130
  %43 = zext i8 %42 to i32
  %44 = add i32 %29, -1
  %45 = add i32 %44, %43
  %46 = icmp slt i32 %45, %29
  br i1 %46, label %74, label %47

47:                                               ; preds = %38
  %48 = load i32, ptr @reload_combine_ruid, align 4, !tbaa !121
  %49 = sext i32 %45 to i64
  br label %50

50:                                               ; preds = %47, %50
  %51 = phi i64 [ %49, %47 ], [ %54, %50 ]
  %52 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %51, i32 1
  store i32 -1, ptr %52, align 8, !tbaa !153
  %53 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %51, i32 3
  store i32 %48, ptr %53, align 8, !tbaa !150
  %54 = add nsw i64 %51, -1
  %55 = icmp sgt i64 %51, %39
  br i1 %55, label %50, label %74, !llvm.loop !312

56:                                               ; preds = %33
  %57 = sext i32 %29 to i64
  %58 = zext nneg i32 %6 to i64
  %59 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %57, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !130
  %61 = zext i8 %60 to i32
  %62 = add i32 %29, -1
  %63 = add i32 %62, %61
  %64 = icmp slt i32 %63, %29
  br i1 %64, label %74, label %65

65:                                               ; preds = %56
  %66 = load i32, ptr @reload_combine_ruid, align 4, !tbaa !121
  %67 = sext i32 %63 to i64
  br label %68

68:                                               ; preds = %65, %68
  %69 = phi i64 [ %67, %65 ], [ %72, %68 ]
  %70 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %69, i32 3
  store i32 %66, ptr %70, align 8, !tbaa !150
  %71 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %69, i32 1
  store i32 6, ptr %71, align 8, !tbaa !153
  %72 = add nsw i64 %69, -1
  %73 = icmp sgt i64 %69, %57
  br i1 %73, label %68, label %74, !llvm.loop !313

74:                                               ; preds = %50, %68, %38, %56, %21
  ret void
}

; Function Attrs: optsize
declare i32 @condjump_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @condjump_in_parallel_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @subreg_regno_offset(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @dbg_cnt(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_int_mode(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @have_add2_insn(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @have_insn_for(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @next_nonnote_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @trunc_int_for_mode(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @move2add_note_store(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !prof !314 !PGOFuncName !315 {
  %4 = load i32, ptr %0, align 8
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 255
  %7 = and i32 %4, 65535
  %8 = icmp eq i32 %7, 39
  br i1 %8, label %9, label %22, !prof !316

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !130
  %12 = tail call fastcc i32 @rhs_regno(ptr noundef %11) #8
  %13 = load i32, ptr %11, align 8
  %14 = lshr i32 %13, 16
  %15 = and i32 %14, 255
  %16 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %17 = load i32, ptr %16, align 8, !tbaa !130
  %18 = tail call i32 @subreg_regno_offset(i32 noundef %12, i32 noundef %15, i32 noundef %17, i32 noundef %6) #9
  %19 = tail call i32 @subreg_nregs(ptr noundef nonnull %0) #9
  %20 = load ptr, ptr %10, align 8, !tbaa !130
  %21 = load i32, ptr %20, align 8
  br label %22

22:                                               ; preds = %9, %3
  %23 = phi i32 [ %21, %9 ], [ %4, %3 ]
  %24 = phi i32 [ %19, %9 ], [ 0, %3 ]
  %25 = phi i32 [ %18, %9 ], [ 0, %3 ]
  %26 = phi ptr [ %20, %9 ], [ %0, %3 ]
  %27 = trunc i32 %23 to i16
  switch i16 %27, label %196 [
    i16 43, label %28
    i16 37, label %41
  ], !prof !317

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !130
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 65534
  %33 = add nsw i32 %32, -74
  %34 = icmp ult i32 %33, 4
  br i1 %34, label %35, label %196, !prof !318

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !130
  %38 = tail call fastcc i32 @rhs_regno(ptr noundef %37) #8
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds [53 x i32], ptr @reg_set_luid, i64 0, i64 %39
  store i32 0, ptr %40, align 4, !tbaa !121
  br label %196

41:                                               ; preds = %22
  %42 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %26) #8
  %43 = add i32 %42, %25
  %44 = icmp eq i32 %24, 0
  br i1 %44, label %45, label %51, !prof !319

45:                                               ; preds = %41
  %46 = zext i32 %43 to i64
  %47 = zext nneg i32 %6 to i64
  %48 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %46, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !130
  %50 = zext i8 %49 to i32
  br label %51

51:                                               ; preds = %45, %41
  %52 = phi i32 [ %24, %41 ], [ %50, %45 ]
  %53 = lshr i32 %23, 16
  %54 = and i32 %53, 255
  %55 = zext nneg i32 %54 to i64
  %56 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !130
  %58 = and i8 %57, -2
  %59 = icmp eq i8 %58, 2
  %60 = icmp eq i32 %52, 1
  %61 = select i1 %59, i1 %60, i1 false
  br i1 %61, label %62, label %185, !prof !320

62:                                               ; preds = %51
  %63 = load i32, ptr %1, align 8
  %64 = and i32 %63, 65535
  %65 = icmp eq i32 %64, 23
  br i1 %65, label %66, label %185, !prof !321

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !130
  %69 = load i32, ptr %68, align 8
  %70 = trunc i32 %69 to i16
  switch i16 %70, label %71 [
    i16 120, label %185
    i16 40, label %185
  ], !prof !322

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %73 = load ptr, ptr %72, align 8, !tbaa !130
  %74 = load i32, ptr %73, align 8
  %75 = trunc i32 %74 to i16
  switch i16 %75, label %139 [
    i16 49, label %76
    i16 37, label %146
    i16 30, label %129
  ], !prof !323

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.rtx_def, ptr %73, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !130
  %79 = load i32, ptr %78, align 8
  %80 = and i32 %79, 65535
  %81 = icmp eq i32 %80, 37
  br i1 %81, label %82, label %139, !prof !324

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.rtx_def, ptr %73, i64 0, i32 1, i32 0, i32 0, i64 1
  %84 = load ptr, ptr %83, align 8, !tbaa !130
  %85 = load i32, ptr %84, align 8
  %86 = trunc i32 %85 to i16
  switch i16 %86, label %139 [
    i16 30, label %87
    i16 37, label %89
  ], !prof !325

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.rtx_def, ptr %84, i64 0, i32 1
  br label %142

89:                                               ; preds = %82
  %90 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %84) #8
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds [53 x i32], ptr @reg_set_luid, i64 0, i64 %91
  %93 = load i32, ptr %92, align 4, !tbaa !121
  %94 = load i32, ptr @move2add_last_label_luid, align 4, !tbaa !121
  %95 = icmp sgt i32 %93, %94
  br i1 %95, label %96, label %139, !prof !326

96:                                               ; preds = %89
  %97 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %55
  %98 = load i8, ptr %97, align 1, !tbaa !130
  %99 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %84) #8
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds [53 x i32], ptr @reg_mode, i64 0, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !121
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !130
  %106 = icmp eq i8 %98, %105
  br i1 %106, label %109, label %107, !prof !327

107:                                              ; preds = %96
  %108 = icmp ugt i8 %98, %105
  br i1 %108, label %139, label %109

109:                                              ; preds = %107, %96
  %110 = getelementptr inbounds [53 x i32], ptr @reg_base_reg, i64 0, i64 %100
  %111 = load i32, ptr %110, align 4, !tbaa !121
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %115, !prof !328

113:                                              ; preds = %109
  %114 = getelementptr inbounds [53 x i64], ptr @reg_offset, i64 0, i64 %100
  br label %142

115:                                              ; preds = %109
  %116 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %78) #8
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds [53 x i32], ptr @reg_set_luid, i64 0, i64 %117
  %119 = load i32, ptr %118, align 4, !tbaa !121
  %120 = icmp sgt i32 %119, %94
  br i1 %120, label %121, label %139, !prof !328

121:                                              ; preds = %115
  %122 = icmp ugt i8 %98, %105
  br i1 %122, label %139, label %123

123:                                              ; preds = %121
  %124 = getelementptr inbounds [53 x i32], ptr @reg_base_reg, i64 0, i64 %117
  %125 = load i32, ptr %124, align 4, !tbaa !121
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %139

127:                                              ; preds = %123
  %128 = getelementptr inbounds [53 x i64], ptr @reg_offset, i64 0, i64 %117
  br label %142

129:                                              ; preds = %71
  %130 = zext i32 %43 to i64
  %131 = getelementptr inbounds [53 x i32], ptr @reg_base_reg, i64 0, i64 %130
  store i32 -1, ptr %131, align 4, !tbaa !121
  %132 = getelementptr inbounds %struct.rtx_def, ptr %73, i64 0, i32 1
  %133 = load i64, ptr %132, align 8, !tbaa !130
  %134 = getelementptr inbounds [53 x i64], ptr @reg_offset, i64 0, i64 %130
  store i64 %133, ptr %134, align 8, !tbaa !135
  %135 = load i32, ptr @move2add_last_label_luid, align 4, !tbaa !121
  %136 = add nsw i32 %135, 1
  %137 = getelementptr inbounds [53 x i32], ptr @reg_set_luid, i64 0, i64 %130
  store i32 %136, ptr %137, align 4, !tbaa !121
  %138 = getelementptr inbounds [53 x i32], ptr @reg_mode, i64 0, i64 %130
  store i32 %6, ptr %138, align 4, !tbaa !121
  br label %196

139:                                              ; preds = %121, %160, %82, %71, %76, %89, %107, %115, %123
  %140 = zext i32 %43 to i64
  %141 = getelementptr inbounds [53 x i32], ptr @reg_set_luid, i64 0, i64 %140
  store i32 0, ptr %141, align 4, !tbaa !121
  br label %196

142:                                              ; preds = %127, %113, %87
  %143 = phi ptr [ %88, %87 ], [ %114, %113 ], [ %128, %127 ]
  %144 = phi ptr [ %78, %87 ], [ %78, %113 ], [ %84, %127 ]
  %145 = load i64, ptr %143, align 8, !tbaa !130
  br label %146

146:                                              ; preds = %142, %71
  %147 = phi ptr [ %73, %71 ], [ %144, %142 ]
  %148 = phi i64 [ 0, %71 ], [ %145, %142 ]
  %149 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %147) #8
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [53 x i32], ptr @reg_set_luid, i64 0, i64 %150
  %152 = load i32, ptr %151, align 4, !tbaa !121
  %153 = load i32, ptr @move2add_last_label_luid, align 4, !tbaa !121
  %154 = icmp sgt i32 %152, %153
  br i1 %154, label %160, label %155, !prof !329

155:                                              ; preds = %146
  %156 = getelementptr inbounds [53 x i32], ptr @reg_base_reg, i64 0, i64 %150
  store i32 %149, ptr %156, align 4, !tbaa !121
  %157 = getelementptr inbounds [53 x i64], ptr @reg_offset, i64 0, i64 %150
  store i64 0, ptr %157, align 8, !tbaa !135
  %158 = load i32, ptr @move2add_luid, align 4, !tbaa !121
  store i32 %158, ptr %151, align 4, !tbaa !121
  %159 = getelementptr inbounds [53 x i32], ptr @reg_mode, i64 0, i64 %150
  store i32 %6, ptr %159, align 4, !tbaa !121
  br label %174

160:                                              ; preds = %146
  %161 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %55
  %162 = load i8, ptr %161, align 1, !tbaa !130
  %163 = getelementptr inbounds [53 x i32], ptr @reg_mode, i64 0, i64 %150
  %164 = load i32, ptr %163, align 4, !tbaa !121
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %165
  %167 = load i8, ptr %166, align 1, !tbaa !130
  %168 = icmp ugt i8 %162, %167
  br i1 %168, label %139, label %169, !prof !187

169:                                              ; preds = %160
  %170 = getelementptr inbounds [53 x i32], ptr @reg_base_reg, i64 0, i64 %150
  %171 = load i32, ptr %170, align 4, !tbaa !121
  %172 = getelementptr inbounds [53 x i64], ptr @reg_offset, i64 0, i64 %150
  %173 = load i64, ptr %172, align 8, !tbaa !135
  br label %174

174:                                              ; preds = %169, %155
  %175 = phi i64 [ %173, %169 ], [ 0, %155 ]
  %176 = phi i32 [ %171, %169 ], [ %149, %155 ]
  %177 = phi i32 [ %152, %169 ], [ %158, %155 ]
  %178 = zext i32 %43 to i64
  %179 = getelementptr inbounds [53 x i32], ptr @reg_mode, i64 0, i64 %178
  store i32 %6, ptr %179, align 4, !tbaa !121
  %180 = getelementptr inbounds [53 x i32], ptr @reg_set_luid, i64 0, i64 %178
  store i32 %177, ptr %180, align 4, !tbaa !121
  %181 = getelementptr inbounds [53 x i32], ptr @reg_base_reg, i64 0, i64 %178
  store i32 %176, ptr %181, align 4, !tbaa !121
  %182 = add nsw i64 %175, %148
  %183 = tail call i64 @trunc_int_for_mode(i64 noundef %182, i32 noundef %54) #9
  %184 = getelementptr inbounds [53 x i64], ptr @reg_offset, i64 0, i64 %178
  store i64 %183, ptr %184, align 8, !tbaa !135
  br label %196

185:                                              ; preds = %51, %66, %66, %62
  %186 = add i32 %52, %43
  %187 = icmp ult i32 %43, %186
  br i1 %187, label %188, label %196, !prof !330

188:                                              ; preds = %185
  %189 = zext i32 %43 to i64
  %190 = shl nuw nsw i64 %189, 2
  %191 = getelementptr i8, ptr @reg_set_luid, i64 %190
  %192 = add i32 %52, -1
  %193 = zext i32 %192 to i64
  %194 = shl nuw nsw i64 %193, 2
  %195 = add nuw nsw i64 %194, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %191, i8 0, i64 %195, i1 false), !tbaa !121
  br label %196

196:                                              ; preds = %188, %185, %28, %139, %129, %174, %22, %35
  ret void
}

; Function Attrs: optsize
declare i32 @any_condjump_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @fis_get_condition(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @reg_set_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @subreg_nregs(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @get_insns() local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @purge_all_dead_edges() local_unnamed_addr #3

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!119}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118}
!35 = !{ptr @reload_cse_regs, ptr @reload_cse_regs_1, i64 75}
!36 = !{ptr @reload_cse_regs, ptr @reload_combine, i64 38}
!37 = !{ptr @reload_cse_regs, ptr @reload_cse_move2add, i64 38}
!38 = !{ptr @reload_cse_regs_1, ptr @gen_rtx_REG, i64 76}
!39 = !{ptr @reload_cse_regs_1, ptr @cselib_init, i64 76}
!40 = !{ptr @reload_cse_regs_1, ptr @init_alias_analysis, i64 76}
!41 = !{ptr @reload_cse_regs_1, ptr @reload_cse_simplify, i64 1101088}
!42 = !{ptr @reload_cse_regs_1, ptr @cselib_process_insn, i64 1648241}
!43 = !{ptr @reload_cse_regs_1, ptr @end_alias_analysis, i64 76}
!44 = !{ptr @reload_cse_regs_1, ptr @cselib_finish, i64 76}
!45 = !{ptr @reload_combine, ptr @get_first_label_num, i64 1}
!46 = !{ptr @reload_combine, ptr @max_label_num, i64 1}
!47 = !{ptr @reload_combine, ptr @xmalloc, i64 1}
!48 = !{ptr @reload_combine, ptr @df_get_live_in, i64 6}
!49 = !{ptr @reload_combine, ptr @reg_set_to_hard_reg_set, i64 6}
!50 = !{ptr @reload_combine, ptr @compute_use_by_pseudos, i64 6}
!51 = !{ptr @reload_combine, ptr @get_last_insn, i64 1}
!52 = !{ptr @reload_combine, ptr @single_set_2, i64 2}
!53 = !{ptr @reload_combine, ptr @rhs_regno, i64 35}
!54 = !{ptr @reload_combine, ptr @note_stores, i64 4}
!55 = !{ptr @reload_combine, ptr @condjump_p, i64 1}
!56 = !{ptr @reload_combine, ptr @reload_combine_note_use, i64 4}
!57 = !{ptr @reload_combine, ptr @free, i64 1}
!58 = !{ptr @reload_cse_move2add, ptr @rhs_regno, i64 731803}
!59 = !{ptr @reload_cse_move2add, ptr @dbg_cnt, i64 25661}
!60 = !{ptr @reload_cse_move2add, ptr @gen_int_mode, i64 411227}
!61 = !{ptr @reload_cse_move2add, ptr @optimize_bb_for_speed_p, i64 12618}
!62 = !{ptr @reload_cse_move2add, ptr @rtx_cost, i64 25234}
!63 = !{ptr @reload_cse_move2add, ptr @have_add2_insn, i64 1}
!64 = !{ptr @reload_cse_move2add, ptr @gen_rtx_fmt_ee_stat, i64 430016}
!65 = !{ptr @reload_cse_move2add, ptr @validate_change, i64 398610}
!66 = !{ptr @reload_cse_move2add, ptr @have_insn_for, i64 410752}
!67 = !{ptr @reload_cse_move2add, ptr @gen_rtx_REG, i64 398609}
!68 = !{ptr @reload_cse_move2add, ptr @gen_rtx_fmt_e_stat, i64 398609}
!69 = !{ptr @reload_cse_move2add, ptr @next_nonnote_insn, i64 7}
!70 = !{ptr @reload_cse_move2add, ptr @single_set_2, i64 1}
!71 = !{ptr @reload_cse_move2add, ptr @note_stores, i64 530801}
!72 = !{ptr @reload_cse_move2add, ptr @any_condjump_p, i64 530801}
!73 = !{ptr @reload_cse_move2add, ptr @fis_get_condition, i64 144381}
!74 = !{ptr @reload_cse_move2add, ptr @reg_set_p, i64 31410}
!75 = !{ptr @reload_cse_move2add, ptr @move2add_note_store, i64 31406}
!76 = !{ptr @rest_of_handle_postreload, ptr @dbg_cnt, i64 38}
!77 = !{ptr @rest_of_handle_postreload, ptr @get_insns, i64 37}
!78 = !{ptr @rest_of_handle_postreload, ptr @reload_cse_regs, i64 37}
!79 = !{ptr @rest_of_handle_postreload, ptr @purge_all_dead_edges, i64 1}
!80 = !{ptr @reload_cse_simplify, ptr @reload_cse_simplify_set, i64 1111224}
!81 = !{ptr @reload_cse_simplify, ptr @reload_cse_noop_set_p, i64 1110872}
!82 = !{ptr @reload_cse_simplify, ptr @delete_insn_and_edges, i64 273}
!83 = !{ptr @reload_cse_simplify, ptr @apply_change_group, i64 2}
!84 = !{ptr @reload_cse_simplify, ptr @reload_cse_simplify_operands, i64 1110776}
!85 = !{ptr @reload_cse_simplify, ptr @asm_noperands, i64 16842}
!86 = !{ptr @reload_cse_simplify, ptr @cselib_invalidate_rtx, i64 5}
!87 = !{ptr @reload_cse_simplify_set, ptr @optimize_bb_for_speed_p, i64 1111360}
!88 = !{ptr @reload_cse_simplify_set, ptr @true_regnum, i64 1601429}
!89 = !{ptr @reload_cse_simplify_set, ptr @side_effects_p, i64 623586}
!90 = !{ptr @reload_cse_simplify_set, ptr @cselib_lookup, i64 489055}
!91 = !{ptr @reload_cse_simplify_set, ptr @ix86_memory_move_cost, i64 1}
!92 = !{ptr @reload_cse_simplify_set, ptr @rhs_regno, i64 253}
!93 = !{ptr @reload_cse_simplify_set, ptr @ix86_register_move_cost, i64 253}
!94 = !{ptr @reload_cse_simplify_set, ptr @rtx_cost, i64 3490}
!95 = !{ptr @reload_cse_simplify_set, ptr @references_value_p, i64 1746}
!96 = !{ptr @reload_cse_simplify_set, ptr @validate_unshare_change, i64 1}
!97 = !{ptr @reload_cse_noop_set_p, ptr @cselib_reg_set_mode, i64 1111006}
!98 = !{ptr @reload_cse_noop_set_p, ptr @rtx_equal_for_cselib_p, i64 620581}
!99 = !{ptr @reload_cse_simplify_operands, ptr @extract_insn, i64 1110912}
!100 = !{ptr @reload_cse_simplify_operands, ptr @constrain_operands, i64 666783}
!101 = !{ptr @reload_cse_simplify_operands, ptr @_fatal_insn_not_found, i64 1}
!102 = !{ptr @reload_cse_simplify_operands, ptr @cselib_lookup, i64 1347775}
!103 = !{ptr @reload_cse_simplify_operands, ptr @rhs_regno, i64 250259}
!104 = !{ptr @reload_cse_simplify_operands, ptr @true_regnum, i64 1347823}
!105 = !{ptr @reload_cse_simplify_operands, ptr @df_ref_change_reg_with_loc, i64 11533}
!106 = !{ptr @reload_cse_simplify_operands, ptr @lookup_constraint, i64 24442}
!107 = !{ptr @reload_cse_simplify_operands, ptr @regclass_for_constraint, i64 24442}
!108 = !{ptr @reload_cse_simplify_operands, ptr @reg_fits_class_p, i64 136162}
!109 = !{ptr @reload_cse_simplify_operands, ptr @optimize_bb_for_speed_p, i64 194240}
!110 = !{ptr @reload_cse_simplify_operands, ptr @rtx_cost, i64 194240}
!111 = !{ptr @reload_cse_simplify_operands, ptr @insn_constraint_len, i64 369053}
!112 = !{ptr @reload_cse_simplify_operands, ptr @gen_rtx_REG, i64 2}
!113 = !{ptr @reload_cse_simplify_operands, ptr @validate_change, i64 2}
!114 = !{ptr @reload_cse_simplify_operands, ptr @apply_change_group, i64 666783}
!115 = !{ptr @move2add_note_store, ptr @rhs_regno, i64 350928}
!116 = !{ptr @move2add_note_store, ptr @subreg_regno_offset, i64 1}
!117 = !{ptr @move2add_note_store, ptr @subreg_nregs, i64 1}
!118 = !{ptr @move2add_note_store, ptr @trunc_int_for_mode, i64 4756}
!119 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!120 = !{!"function_entry_count", i64 38}
!121 = !{!122, !122, i64 0}
!122 = !{!"int", !123, i64 0}
!123 = !{!"omnipotent char", !124, i64 0}
!124 = !{!"Simple C/C++ TBAA"}
!125 = !{!"branch_weights", i32 1, i32 39}
!126 = !{!"function_entry_count", i64 76}
!127 = !{!"postreload.c:reload_cse_regs_1"}
!128 = !{!"branch_weights", i32 1, i32 153}
!129 = !{!"branch_weights", i32 -1534913346, i32 1371527538}
!130 = !{!123, !123, i64 0}
!131 = !{!"branch_weights", i32 153, i32 3339705}
!132 = distinct !{!132, !133}
!133 = !{!"llvm.loop.mustprogress"}
!134 = !{!"postreload.c:reload_combine"}
!135 = !{!136, !136, i64 0}
!136 = !{!"long", !123, i64 0}
!137 = distinct !{!137, !133}
!138 = !{!139, !139, i64 0}
!139 = !{!"any pointer", !123, i64 0}
!140 = !{!141, !139, i64 8}
!141 = !{!"function", !139, i64 0, !139, i64 8, !139, i64 16, !139, i64 24, !139, i64 32, !139, i64 40, !139, i64 48, !139, i64 56, !139, i64 64, !139, i64 72, !139, i64 80, !139, i64 88, !139, i64 96, !122, i64 104, !122, i64 108, !122, i64 112, !122, i64 116, !122, i64 120, !122, i64 124, !139, i64 128, !122, i64 136, !122, i64 137, !122, i64 138, !122, i64 138, !122, i64 138, !122, i64 138, !122, i64 138, !122, i64 138, !122, i64 138, !122, i64 139, !122, i64 139, !122, i64 139, !122, i64 139, !122, i64 139, !122, i64 139, !122, i64 139}
!142 = !{!143, !139, i64 8}
!143 = !{!"control_flow_graph", !139, i64 0, !139, i64 8, !139, i64 16, !122, i64 24, !122, i64 28, !122, i64 32, !139, i64 40, !122, i64 48, !123, i64 52, !123, i64 60, !122, i64 68, !122, i64 72}
!144 = !{!145, !139, i64 48}
!145 = !{!"basic_block_def", !139, i64 0, !139, i64 8, !139, i64 16, !139, i64 24, !123, i64 32, !139, i64 48, !139, i64 56, !123, i64 64, !136, i64 72, !122, i64 80, !122, i64 84, !122, i64 88, !122, i64 92, !122, i64 96}
!146 = !{!143, !139, i64 0}
!147 = !{!148, !139, i64 0}
!148 = !{!"rtl_bb_info", !139, i64 0, !139, i64 8, !139, i64 16, !139, i64 24, !122, i64 32}
!149 = distinct !{!149, !133}
!150 = !{!151, !122, i64 112}
!151 = !{!"", !123, i64 0, !122, i64 96, !139, i64 104, !122, i64 112, !122, i64 116}
!152 = distinct !{!152, !133}
!153 = !{!151, !122, i64 96}
!154 = distinct !{!154, !133}
!155 = !{!151, !122, i64 116}
!156 = distinct !{!156, !133}
!157 = !{!151, !139, i64 104}
!158 = !{!159, !139, i64 0}
!159 = !{!"reg_use", !139, i64 0, !139, i64 8}
!160 = !{!159, !139, i64 8}
!161 = distinct !{!161, !133}
!162 = distinct !{!162, !133}
!163 = distinct !{!163, !133}
!164 = distinct !{!164, !133}
!165 = distinct !{!165, !133}
!166 = distinct !{!166, !133}
!167 = distinct !{!167, !133}
!168 = distinct !{!168, !133}
!169 = !{!"postreload.c:reload_cse_move2add"}
!170 = !{!"branch_weights", i32 1, i32 155}
!171 = !{!"branch_weights", i32 -2043125315, i32 528016442, i32 -951161607, i32 10026, i32 1558054786, i32 691596132}
!172 = !{!"branch_weights", i32 547036, i32 10683}
!173 = !{!"branch_weights", i32 309649, i32 237388}
!174 = !{!"branch_weights", i32 26616, i32 283034}
!175 = !{!"branch_weights", i32 96320, i32 9086545}
!176 = !{!"branch_weights", i32 1, i32 26337}
!177 = !{!"branch_weights", i32 -810287101, i32 -896008192, i32 20709372}
!178 = !{!"branch_weights", i32 12952, i32 15}
!179 = !{!"branch_weights", i32 1, i32 12952}
!180 = !{!"branch_weights", i32 13080, i32 1644904}
!181 = !{!"branch_weights", i32 1, i32 13393}
!182 = !{!"branch_weights", i32 12999, i32 395}
!183 = !{!"branch_weights", i32 127, i32 1714177}
!184 = distinct !{!184, !133}
!185 = !{!"branch_weights", i32 9, i32 71}
!186 = !{!"branch_weights", i32 9, i32 1}
!187 = !{!"branch_weights", i32 1, i32 19}
!188 = !{!"branch_weights", i32 1, i32 9}
!189 = !{!"branch_weights", i32 79, i32 1}
!190 = !{!"branch_weights", i32 0, i32 -2147483648}
!191 = !{!"branch_weights", i32 318293, i32 226474}
!192 = !{!"branch_weights", i32 1, i32 226474}
!193 = !{!"branch_weights", i32 226474, i32 0}
!194 = distinct !{!194, !133}
!195 = !{!"branch_weights", i32 396588, i32 148180}
!196 = !{!"branch_weights", i32 222, i32 147959}
!197 = !{!"branch_weights", i32 75482, i32 72478}
!198 = !{!"branch_weights", i32 32237, i32 43246}
!199 = !{!"branch_weights", i32 32237, i32 1}
!200 = !{!"branch_weights", i32 64475, i32 1}
!201 = !{!"branch_weights", i32 68959, i32 475809}
!202 = !{!"branch_weights", i32 275833, i32 3378943}
!203 = !{!"branch_weights", i32 68959, i32 3585816}
!204 = distinct !{!204, !133}
!205 = !{!"branch_weights", i32 155, i32 3339425}
!206 = distinct !{!206, !133}
!207 = !{!"postreload.c:gate_handle_postreload"}
!208 = !{!"branch_weights", i32 39, i32 1}
!209 = !{!"postreload.c:rest_of_handle_postreload"}
!210 = !{!"function_entry_count", i64 1115574}
!211 = !{!"postreload.c:reload_cse_simplify"}
!212 = !{!"branch_weights", i32 12079236, i32 -1372603268, i32 44981336}
!213 = !{i32 0, i32 2}
!214 = !{!"branch_weights", i32 1094211, i32 1}
!215 = !{!"branch_weights", i32 1094071, i32 141}
!216 = !{!"branch_weights", i32 1, i32 16843}
!217 = !{!218, !122, i64 0}
!218 = !{!"rtvec_def", !122, i64 0, !123, i64 8}
!219 = distinct !{!219, !133}
!220 = !{!"branch_weights", i32 127, i32 1}
!221 = !{!"branch_weights", i32 777145, i32 277755192, i32 272645615}
!222 = !{!"branch_weights", i32 16797, i32 1}
!223 = !{!"branch_weights", i32 4266241, i32 127}
!224 = distinct !{!224, !133}
!225 = !{!"branch_weights", i32 16842, i32 1}
!226 = !{!"branch_weights", i32 17151, i32 16535}
!227 = !{!"branch_weights", i32 16843, i32 16842}
!228 = distinct !{!228, !133}
!229 = !{!"branch_weights", i32 127499, i32 2147356149}
!230 = !{!"function_entry_count", i64 1111360}
!231 = !{!"postreload.c:reload_cse_simplify_set"}
!232 = !{!"branch_weights", i32 487775, i32 623587}
!233 = !{!"branch_weights", i32 490071, i32 133517}
!234 = !{!"branch_weights", i32 1014, i32 489058}
!235 = !{!"branch_weights", i32 487312, i32 1747}
!236 = !{!"branch_weights", i32 3052009, i32 1748, i32 1747}
!237 = !{!"branch_weights", i32 1, i32 1746}
!238 = !{!239, !139, i64 8}
!239 = !{!"elt_loc_list", !139, i64 0, !139, i64 8, !139, i64 16}
!240 = !{!"branch_weights", i32 1747, i32 252}
!241 = !{!"branch_weights", i32 1747, i32 1}
!242 = !{!"branch_weights", i32 252, i32 1}
!243 = !{!"branch_weights", i32 1, i32 1998}
!244 = !{!"branch_weights", i32 1, i32 1747}
!245 = !{!"branch_weights", i32 1746, i32 252}
!246 = distinct !{!246, !133}
!247 = !{!"function_entry_count", i64 1111006}
!248 = !{!"postreload.c:reload_cse_noop_set_p"}
!249 = !{!"branch_weights", i32 620582, i32 490426}
!250 = !{!"function_entry_count", i64 1110912}
!251 = !{!"postreload.c:reload_cse_simplify_operands"}
!252 = !{!253, !123, i64 1088}
!253 = !{!"recog_data", !123, i64 0, !123, i64 240, !123, i64 480, !123, i64 720, !123, i64 840, !123, i64 960, !123, i64 1072, !123, i64 1086, !123, i64 1087, !123, i64 1088, !123, i64 1089, !139, i64 1120}
!254 = !{!"branch_weights", i32 -1981376154, i32 -821512326}
!255 = !{!"branch_weights", i32 1, i32 666785}
!256 = !{!253, !123, i64 1086}
!257 = !{!"branch_weights", i32 666784, i32 1}
!258 = !{!"branch_weights", i32 -2147483648, i32 0}
!259 = !{!"branch_weights", i32 47, i32 1347781}
!260 = !{!"branch_weights", i32 1720, i32 -1975657316}
!261 = !{!"branch_weights", i32 1089016, i32 258766}
!262 = !{!"branch_weights", i32 1, i32 258765}
!263 = !{!"branch_weights", i32 238728, i32 185992}
!264 = !{!"branch_weights", i32 258765, i32 165954}
!265 = distinct !{!265, !133}
!266 = !{!"branch_weights", i32 681043, i32 666784}
!267 = distinct !{!267, !133}
!268 = !{!"branch_weights", i32 1347826, i32 1}
!269 = !{!"branch_weights", i32 1, i32 1347826}
!270 = !{!"branch_weights", i32 -220734819, i32 2013873318, i32 352223912, i32 581129}
!271 = !{!"branch_weights", i32 1347826, i32 23999970}
!272 = distinct !{!272, !133}
!273 = !{!"branch_weights", i32 580649, i32 767179}
!274 = !{!"branch_weights", i32 -1454111810, i32 773384718, i32 4711}
!275 = !{!"branch_weights", i32 31948317, i32 11533}
!276 = !{!"branch_weights", i32 5020, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 3586, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 9258, i32 1, i32 1, i32 1, i32 1, i32 7, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 9975, i32 718, i32 19232, i32 16434, i32 11533}
!277 = !{!"branch_weights", i32 27966, i32 1}
!278 = !{!"branch_weights", i32 8018, i32 19949}
!279 = !{!"branch_weights", i32 19949, i32 1}
!280 = !{!"branch_weights", i32 1, i32 19949}
!281 = !{!"branch_weights", i32 603017, i32 31356832}
!282 = distinct !{!282, !133}
!283 = distinct !{!283, !133}
!284 = !{!"branch_weights", i32 1372267, i32 3271115}
!285 = !{!"branch_weights", i32 666784, i32 3976597}
!286 = distinct !{!286, !133}
!287 = !{!"branch_weights", i32 61, i32 9575606}
!288 = !{!"branch_weights", i32 291, i32 -1501459873}
!289 = !{!"branch_weights", i32 2604330, i32 6971336}
!290 = distinct !{!290, !133}
!291 = !{!"branch_weights", i32 666784, i32 1937547}
!292 = distinct !{!292, !133}
!293 = !{!"branch_weights", i32 1347827, i32 1}
!294 = distinct !{!294, !133}
!295 = !{!253, !123, i64 1087}
!296 = !{!"branch_weights", i32 617, i32 666168}
!297 = !{!"branch_weights", i32 617, i32 1}
!298 = !{!"branch_weights", i32 0, i32 617}
!299 = distinct !{!299, !133}
!300 = !{!"function_entry_count", i64 956520}
!301 = !{!"postreload.c:rhs_regno"}
!302 = !{!"function_entry_count", i64 75754}
!303 = !{!"postreload.c:insn_constraint_len"}
!304 = !{!"branch_weights", i32 718, i32 75038}
!305 = !{!"function_entry_count", i64 0}
!306 = !{!"postreload.c:reload_combine_note_use"}
!307 = distinct !{!307, !133}
!308 = distinct !{!308, !133}
!309 = distinct !{!309, !133}
!310 = distinct !{!310, !133}
!311 = !{!"postreload.c:reload_combine_note_store"}
!312 = distinct !{!312, !133}
!313 = distinct !{!313, !133}
!314 = !{!"function_entry_count", i64 583139}
!315 = !{!"postreload.c:move2add_note_store"}
!316 = !{!"branch_weights", i32 1, i32 583140}
!317 = !{!"branch_weights", i32 1216085851, i32 642625108, i32 -1588230920}
!318 = !{!"branch_weights", i32 128760, i32 -1652729707}
!319 = !{!"branch_weights", i32 345730, i32 1}
!320 = !{!"branch_weights", i32 -1655672437, i32 -2037873727}
!321 = !{!"branch_weights", i32 186359, i32 1}
!322 = !{!"branch_weights", i32 -2124362491, i32 11647, i32 11647}
!323 = !{!"branch_weights", i32 104201, i32 5016, i32 506, i32 76639}
!324 = !{!"branch_weights", i32 4773, i32 244}
!325 = !{!"branch_weights", i32 158469, i32 2227524, i32 115583}
!326 = !{!"branch_weights", i32 111, i32 111}
!327 = !{!"branch_weights", i32 111, i32 1}
!328 = !{!"branch_weights", i32 1, i32 111}
!329 = !{!"branch_weights", i32 9, i32 4748}
!330 = !{!"branch_weights", i32 159371, i32 1}
