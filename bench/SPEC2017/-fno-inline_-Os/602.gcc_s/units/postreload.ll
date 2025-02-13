; ModuleID = 'postreload.c'
source_filename = "postreload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.recog_data = type { [30 x ptr], [30 x ptr], [30 x ptr], [30 x i32], [30 x i32], [14 x ptr], [14 x i8], i8, i8, i8, [30 x i8], ptr }
%struct.anon = type { [6 x %struct.reg_use], i32, ptr, i32, i32 }
%struct.reg_use = type { ptr, ptr }
%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
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
@regclass_map = external local_unnamed_addr constant [53 x i32], align 16
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@recog_data = external local_unnamed_addr global %struct.recog_data, align 8
@.str = private unnamed_addr constant [13 x i8] c"postreload.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
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
@pass_postreload_cse = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.2, ptr @gate_handle_postreload, ptr @rest_of_handle_postreload, ptr null, ptr null, i32 0, i32 150, i32 0, i32 0, i32 0, i32 0, i32 132097 } }, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"postreload\00", align 1
@optimize = external local_unnamed_addr global i32, align 4
@reload_completed = external local_unnamed_addr global i32, align 4
@flag_non_call_exceptions = external local_unnamed_addr global i32, align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @reload_cse_regs(ptr noundef %0) local_unnamed_addr #0 !prof !123 {
  tail call fastcc void @reload_cse_regs_1(ptr noundef %0) #8
  tail call fastcc void @reload_combine() #8
  tail call fastcc void @reload_cse_move2add(ptr noundef %0) #8
  %2 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !124
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4, !prof !128

4:                                                ; preds = %1
  tail call fastcc void @reload_cse_regs_1(ptr noundef %0) #8
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @reload_cse_regs_1(ptr noundef %0) unnamed_addr #0 !prof !129 !PGOFuncName !130 {
  %2 = tail call ptr @gen_rtx_REG(i32 noundef 0, i32 noundef -1) #9
  tail call void @cselib_init(i32 noundef 1) #9
  tail call void @init_alias_analysis() #9
  %3 = icmp eq ptr %0, null
  br i1 %3, label %15, label %4, !prof !131

4:                                                ; preds = %1, %11
  %5 = phi ptr [ %13, %11 ], [ %0, %1 ]
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 65535
  %8 = add nsw i32 %7, -7
  %9 = icmp ult i32 %8, 4
  br i1 %9, label %10, label %11, !prof !132

10:                                               ; preds = %4
  tail call fastcc void @reload_cse_simplify(ptr noundef nonnull %5, ptr noundef %2) #8
  br label %11

11:                                               ; preds = %4, %10
  tail call void @cselib_process_insn(ptr noundef nonnull %5) #9
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  %13 = load ptr, ptr %12, align 8, !tbaa !133
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %4, !prof !134, !llvm.loop !135

15:                                               ; preds = %11, %1
  tail call void @end_alias_analysis() #9
  tail call void @cselib_finish() #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @reload_combine() unnamed_addr #0 !prof !123 !PGOFuncName !137 {
  %1 = alloca i64, align 8
  %2 = load i8, ptr @double_reg_address_ok, align 1, !tbaa !133
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %457, !prof !128

4:                                                ; preds = %0
  %5 = load i64, ptr getelementptr inbounds ([27 x i64], ptr @reg_class_contents, i64 0, i64 11), align 8, !tbaa !138
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
  br i1 %19, label %20, label %6, !llvm.loop !140

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
  %29 = load ptr, ptr @cfun, align 8, !tbaa !141
  %30 = getelementptr inbounds %struct.function, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !143
  %32 = getelementptr inbounds %struct.control_flow_graph, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !145
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !147
  %36 = load ptr, ptr %31, align 8, !tbaa !149
  %37 = icmp eq ptr %35, %36
  br i1 %37, label %67, label %38

38:                                               ; preds = %22, %58
  %39 = phi ptr [ %59, %58 ], [ %29, %22 ]
  %40 = phi ptr [ %62, %58 ], [ %35, %22 ]
  %41 = phi i64 [ %60, %58 ], [ 0, %22 ]
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 7
  %43 = load ptr, ptr %42, align 8, !tbaa !133
  %44 = load ptr, ptr %43, align 8, !tbaa !150
  %45 = load i32, ptr %44, align 8
  %46 = and i32 %45, 65535
  %47 = icmp eq i32 %46, 12
  br i1 %47, label %48, label %58

48:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #10
  %49 = call ptr @df_get_live_in(ptr noundef nonnull %40) #9
  store i64 0, ptr %1, align 8, !tbaa !138
  call void @reg_set_to_hard_reg_set(ptr noundef nonnull %1, ptr noundef %49) #9
  call void @compute_use_by_pseudos(ptr noundef nonnull %1, ptr noundef %49) #9
  %50 = load i64, ptr %1, align 8, !tbaa !138
  %51 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 1, i32 1
  %52 = load i32, ptr %51, align 8, !tbaa !133
  %53 = sub nsw i32 %52, %23
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, ptr %28, i64 %54
  store i64 %50, ptr %55, align 8, !tbaa !138
  %56 = or i64 %41, %50
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #10
  %57 = load ptr, ptr @cfun, align 8, !tbaa !141
  br label %58

58:                                               ; preds = %38, %48
  %59 = phi ptr [ %39, %38 ], [ %57, %48 ]
  %60 = phi i64 [ %41, %38 ], [ %56, %48 ]
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 5
  %62 = load ptr, ptr %61, align 8, !tbaa !147
  %63 = getelementptr inbounds %struct.function, ptr %59, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !143
  %65 = load ptr, ptr %64, align 8, !tbaa !149
  %66 = icmp eq ptr %62, %65
  br i1 %66, label %67, label %38, !llvm.loop !152

67:                                               ; preds = %58, %22
  %68 = phi i64 [ 0, %22 ], [ %60, %58 ]
  store i32 0, ptr @reload_combine_ruid, align 4, !tbaa !124
  br label %69

69:                                               ; preds = %67, %69
  %70 = phi i64 [ 0, %67 ], [ %77, %69 ]
  %71 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %70, i32 3
  store i32 0, ptr %71, align 8, !tbaa !153
  %72 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %70
  %73 = load i8, ptr %72, align 1, !tbaa !133
  %74 = icmp eq i8 %73, 0
  %75 = select i1 %74, i32 6, i32 -1
  %76 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %70, i32 1
  store i32 %75, ptr %76, align 8
  %77 = add nuw nsw i64 %70, 1
  %78 = icmp eq i64 %77, 53
  br i1 %78, label %79, label %69, !llvm.loop !155

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
  %89 = load i32, ptr @reload_combine_ruid, align 4, !tbaa !124
  br label %451

90:                                               ; preds = %82, %97
  %91 = phi i64 [ %98, %97 ], [ 0, %82 ]
  %92 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %91
  %93 = load i8, ptr %92, align 1, !tbaa !133
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %91, i32 1
  store i32 6, ptr %96, align 8, !tbaa !156
  br label %97

97:                                               ; preds = %90, %95
  %98 = add nuw nsw i64 %91, 1
  %99 = icmp eq i64 %98, 53
  br i1 %99, label %100, label %90, !llvm.loop !157

100:                                              ; preds = %97, %82
  %101 = add nsw i32 %86, -7
  %102 = icmp ult i32 %101, 4
  br i1 %102, label %103, label %451

103:                                              ; preds = %100
  %104 = load i32, ptr @reload_combine_ruid, align 4, !tbaa !124
  %105 = add nsw i32 %104, 1
  store i32 %105, ptr @reload_combine_ruid, align 4, !tbaa !124
  %106 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 1
  %107 = load ptr, ptr %106, align 8, !tbaa !133
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
  %117 = load ptr, ptr %116, align 8, !tbaa !133
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
  %128 = load i8, ptr %127, align 1, !tbaa !133
  %129 = icmp eq i8 %128, 1
  br i1 %129, label %130, label %331

130:                                              ; preds = %121
  %131 = getelementptr inbounds %struct.rtx_def, ptr %115, i64 0, i32 1, i32 0, i32 0, i64 1
  %132 = load ptr, ptr %131, align 8, !tbaa !133
  %133 = load i32, ptr %132, align 8
  %134 = and i32 %133, 65535
  %135 = icmp eq i32 %134, 49
  br i1 %135, label %136, label %331

136:                                              ; preds = %130
  %137 = getelementptr inbounds %struct.rtx_def, ptr %132, i64 0, i32 1, i32 0, i32 0, i64 1
  %138 = load ptr, ptr %137, align 8, !tbaa !133
  %139 = load i32, ptr %138, align 8
  %140 = and i32 %139, 65535
  %141 = icmp eq i32 %140, 37
  br i1 %141, label %142, label %331

142:                                              ; preds = %136
  %143 = getelementptr inbounds %struct.rtx_def, ptr %132, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !133
  %145 = call i32 @rtx_equal_p(ptr noundef %144, ptr noundef nonnull %117) #9
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %331, label %147

147:                                              ; preds = %142
  %148 = load ptr, ptr %131, align 8, !tbaa !133
  %149 = getelementptr inbounds %struct.rtx_def, ptr %148, i64 0, i32 1, i32 0, i32 0, i64 1
  %150 = load ptr, ptr %149, align 8, !tbaa !133
  %151 = load ptr, ptr %116, align 8, !tbaa !133
  %152 = call i32 @rtx_equal_p(ptr noundef %150, ptr noundef %151) #9
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %331

154:                                              ; preds = %147
  %155 = load ptr, ptr %116, align 8, !tbaa !133
  %156 = call fastcc i32 @rhs_regno(ptr noundef %155) #8
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %157, i32 4
  %159 = load i32, ptr %158, align 4, !tbaa !158
  %160 = icmp slt i32 %84, %159
  br i1 %160, label %161, label %331

161:                                              ; preds = %154
  %162 = load ptr, ptr %131, align 8, !tbaa !133
  %163 = getelementptr inbounds %struct.rtx_def, ptr %162, i64 0, i32 1, i32 0, i32 0, i64 1
  %164 = load ptr, ptr %163, align 8, !tbaa !133
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
  %174 = load ptr, ptr %173, align 8, !tbaa !133
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
  %183 = load i64, ptr getelementptr inbounds ([27 x i64], ptr @reg_class_contents, i64 0, i64 11), align 8, !tbaa !138
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
  %207 = load i32, ptr %206, align 8, !tbaa !156
  %208 = icmp eq i32 %207, 6
  br i1 %208, label %209, label %229

209:                                              ; preds = %205
  %210 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %201, i32 3
  %211 = load i32, ptr %210, align 8, !tbaa !153
  %212 = load i32, ptr %199, align 4, !tbaa !158
  %213 = icmp sgt i32 %211, %212
  br i1 %213, label %229, label %214

214:                                              ; preds = %209
  %215 = load i32, ptr %155, align 8
  %216 = lshr i32 %215, 16
  %217 = and i32 %216, 255
  %218 = zext nneg i32 %217 to i64
  %219 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %201, i64 %218
  %220 = load i8, ptr %219, align 1, !tbaa !133
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
  br i1 %232, label %331, label %200, !llvm.loop !159

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
  %242 = load ptr, ptr %241, align 8, !tbaa !133
  %243 = load i32, ptr %242, align 8
  %244 = and i32 %243, 65535
  %245 = icmp eq i32 %244, 30
  br i1 %245, label %246, label %331

246:                                              ; preds = %239
  %247 = load ptr, ptr %240, align 8, !tbaa !133
  %248 = call i32 @rtx_equal_p(ptr noundef %247, ptr noundef %155) #9
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %331, label %250

250:                                              ; preds = %246
  %251 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %184
  %252 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %184, i32 1
  %253 = load i32, ptr %252, align 8, !tbaa !156
  %254 = icmp sgt i32 %253, -1
  br i1 %254, label %255, label %331

255:                                              ; preds = %250
  %256 = call fastcc i32 @rhs_regno(ptr noundef %164) #8
  %257 = zext i32 %256 to i64
  %258 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %257, i32 3
  %259 = load i32, ptr %258, align 8, !tbaa !153
  %260 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %184, i32 4
  %261 = load i32, ptr %260, align 4, !tbaa !158
  %262 = icmp sgt i32 %259, %261
  br i1 %262, label %331, label %263

263:                                              ; preds = %255
  %264 = call zeroext i8 @validate_change(ptr noundef %165, ptr noundef nonnull %240, ptr noundef %234, i8 noundef zeroext 1) #9
  %265 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %184, i32 2
  %266 = load ptr, ptr %265, align 8, !tbaa !160
  %267 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !141
  %268 = icmp eq ptr %266, %267
  br i1 %268, label %278, label %269

269:                                              ; preds = %263
  %270 = load ptr, ptr %241, align 8, !tbaa !133
  %271 = getelementptr inbounds %struct.rtx_def, ptr %270, i64 0, i32 1
  %272 = load i64, ptr %271, align 8, !tbaa !133
  %273 = getelementptr inbounds %struct.rtx_def, ptr %266, i64 0, i32 1
  %274 = load i64, ptr %273, align 8, !tbaa !133
  %275 = add nsw i64 %274, %272
  %276 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %275) #9
  %277 = call zeroext i8 @validate_change(ptr noundef %165, ptr noundef nonnull %241, ptr noundef %276, i8 noundef zeroext 1) #9
  br label %278

278:                                              ; preds = %269, %263
  %279 = load i32, ptr %252, align 8, !tbaa !156
  %280 = icmp slt i32 %279, 6
  br i1 %280, label %281, label %293

281:                                              ; preds = %278
  %282 = sext i32 %279 to i64
  br label %283

283:                                              ; preds = %281, %283
  %284 = phi i64 [ %282, %281 ], [ %290, %283 ]
  %285 = getelementptr inbounds [6 x %struct.reg_use], ptr %251, i64 0, i64 %284
  %286 = load ptr, ptr %285, align 8, !tbaa !161
  %287 = getelementptr inbounds [6 x %struct.reg_use], ptr %251, i64 0, i64 %284, i32 1
  %288 = load ptr, ptr %287, align 8, !tbaa !163
  %289 = call zeroext i8 @validate_unshare_change(ptr noundef %286, ptr noundef %288, ptr noundef nonnull %235, i8 noundef zeroext 1) #9
  %290 = add nsw i64 %284, 1
  %291 = and i64 %290, 4294967295
  %292 = icmp eq i64 %291, 6
  br i1 %292, label %293, label %283, !llvm.loop !164

293:                                              ; preds = %283, %278
  %294 = call i32 @apply_change_group() #9
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %331, label %296

296:                                              ; preds = %293
  %297 = load i32, ptr %252, align 8, !tbaa !156
  %298 = icmp slt i32 %297, 6
  br i1 %298, label %299, label %312

299:                                              ; preds = %296
  %300 = sext i32 %297 to i64
  br label %301

301:                                              ; preds = %299, %301
  %302 = phi i64 [ %300, %299 ], [ %309, %301 ]
  %303 = getelementptr inbounds [6 x %struct.reg_use], ptr %251, i64 0, i64 %302
  %304 = getelementptr inbounds [6 x %struct.reg_use], ptr %251, i64 0, i64 %302, i32 1
  %305 = load ptr, ptr %304, align 8, !tbaa !163
  %306 = load ptr, ptr %305, align 8, !tbaa !141
  %307 = getelementptr inbounds %struct.rtx_def, ptr %306, i64 0, i32 1, i32 0, i32 0, i64 1
  %308 = load ptr, ptr %303, align 8, !tbaa !161
  call fastcc void @reload_combine_note_use(ptr noundef nonnull %307, ptr noundef %308) #8
  %309 = add nsw i64 %302, 1
  %310 = and i64 %309, 4294967295
  %311 = icmp eq i64 %310, 6
  br i1 %311, label %312, label %301, !llvm.loop !165

312:                                              ; preds = %301, %296
  %313 = call fastcc i32 @rhs_regno(ptr noundef %164) #8
  %314 = zext i32 %313 to i64
  %315 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %314, i32 4
  %316 = load i32, ptr %315, align 4, !tbaa !158
  %317 = load i32, ptr %260, align 4, !tbaa !158
  %318 = icmp sgt i32 %316, %317
  br i1 %318, label %319, label %320

319:                                              ; preds = %312
  store i32 %317, ptr %315, align 4, !tbaa !158
  br label %320

320:                                              ; preds = %319, %312
  %321 = call ptr @delete_insn(ptr noundef nonnull %83) #9
  %322 = load ptr, ptr %265, align 8, !tbaa !160
  %323 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !141
  %324 = icmp eq ptr %322, %323
  br i1 %324, label %326, label %325

325:                                              ; preds = %320
  call void @remove_reg_equal_equiv_notes(ptr noundef %165) #9
  br label %326

326:                                              ; preds = %320, %325
  store i32 6, ptr %252, align 8, !tbaa !156
  %327 = load i32, ptr @reload_combine_ruid, align 4, !tbaa !124
  %328 = call fastcc i32 @rhs_regno(ptr noundef %234) #8
  %329 = zext i32 %328 to i64
  %330 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %329, i32 3
  store i32 %327, ptr %330, align 8, !tbaa !153
  br label %451

331:                                              ; preds = %229, %194, %293, %255, %250, %246, %239, %233, %154, %147, %142, %136, %130, %121, %114, %111
  %332 = load ptr, ptr %106, align 8, !tbaa !133
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
  %340 = load i8, ptr %339, align 1, !tbaa !133
  %341 = icmp eq i8 %340, 0
  br i1 %341, label %345, label %342

342:                                              ; preds = %337
  %343 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %338, i32 1
  store i32 6, ptr %343, align 8, !tbaa !156
  %344 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %338, i32 3
  store i32 %336, ptr %344, align 8, !tbaa !153
  br label %345

345:                                              ; preds = %337, %342
  %346 = add nuw nsw i64 %338, 1
  %347 = icmp eq i64 %346, 53
  br i1 %347, label %348, label %337, !llvm.loop !166

348:                                              ; preds = %345
  %349 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 1, i32 1, i32 0, i32 0, i64 2
  %350 = load ptr, ptr %349, align 8, !tbaa !133
  %351 = icmp eq ptr %350, null
  br i1 %351, label %425, label %352

352:                                              ; preds = %348, %387
  %353 = phi ptr [ %389, %387 ], [ %350, %348 ]
  %354 = getelementptr inbounds %struct.rtx_def, ptr %353, i64 0, i32 1
  %355 = load ptr, ptr %354, align 8, !tbaa !133
  %356 = getelementptr inbounds %struct.rtx_def, ptr %355, i64 0, i32 1
  %357 = load ptr, ptr %356, align 8, !tbaa !133
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
  %368 = load i8, ptr %367, align 1, !tbaa !133
  %369 = zext i8 %368 to i32
  %370 = add i32 %362, -1
  %371 = add i32 %370, %369
  %372 = icmp ugt i32 %362, %371
  br i1 %372, label %387, label %373

373:                                              ; preds = %361, %384
  %374 = phi i32 [ %385, %384 ], [ %362, %361 ]
  %375 = load ptr, ptr %354, align 8, !tbaa !133
  %376 = load i32, ptr %375, align 8
  %377 = and i32 %376, 65535
  %378 = icmp eq i32 %377, 25
  %379 = zext i32 %374 to i64
  %380 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %379, i32 1
  br i1 %378, label %381, label %383

381:                                              ; preds = %373
  store i32 6, ptr %380, align 8, !tbaa !156
  %382 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %379, i32 3
  store i32 %336, ptr %382, align 8, !tbaa !153
  br label %384

383:                                              ; preds = %373
  store i32 -1, ptr %380, align 8, !tbaa !156
  br label %384

384:                                              ; preds = %381, %383
  %385 = add i32 %374, 1
  %386 = icmp ugt i32 %385, %371
  br i1 %386, label %387, label %373, !llvm.loop !167

387:                                              ; preds = %384, %361, %352
  %388 = getelementptr inbounds %struct.rtx_def, ptr %353, i64 0, i32 1, i32 0, i32 0, i64 1
  %389 = load ptr, ptr %388, align 8, !tbaa !133
  %390 = icmp eq ptr %389, null
  br i1 %390, label %425, label %352, !llvm.loop !168

391:                                              ; preds = %331
  %392 = load ptr, ptr %106, align 8, !tbaa !133
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
  %404 = load ptr, ptr %403, align 8, !tbaa !133
  %405 = icmp eq ptr %404, null
  br i1 %405, label %413, label %406

406:                                              ; preds = %402
  %407 = getelementptr inbounds %struct.rtx_def, ptr %404, i64 1, i32 1
  %408 = load i32, ptr %407, align 8, !tbaa !133
  %409 = sub nsw i32 %408, %23
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i64, ptr %28, i64 %410
  %412 = load i64, ptr %411, align 8, !tbaa !138
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
  store i32 -1, ptr %421, align 8, !tbaa !156
  br label %422

422:                                              ; preds = %415, %420
  %423 = add nsw i64 %416, -1
  %424 = icmp eq i64 %416, 0
  br i1 %424, label %425, label %415, !llvm.loop !169

425:                                              ; preds = %422, %387, %348, %331, %391
  call fastcc void @reload_combine_note_use(ptr noundef nonnull %106, ptr noundef nonnull %83) #8
  %426 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 1, i32 1, i32 0, i32 0, i64 1
  %427 = load ptr, ptr %426, align 8, !tbaa !133
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
  %438 = load ptr, ptr %437, align 8, !tbaa !133
  %439 = load i32, ptr %438, align 8
  %440 = and i32 %439, 65535
  %441 = icmp eq i32 %440, 37
  br i1 %441, label %442, label %447

442:                                              ; preds = %436
  %443 = call fastcc i32 @rhs_regno(ptr noundef nonnull %438) #8
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %444, i32 3
  store i32 %430, ptr %445, align 8, !tbaa !153
  %446 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %444, i32 1
  store i32 -1, ptr %446, align 8, !tbaa !156
  br label %447

447:                                              ; preds = %431, %436, %442
  %448 = getelementptr inbounds %struct.rtx_def, ptr %432, i64 0, i32 1, i32 0, i32 0, i64 1
  %449 = load ptr, ptr %448, align 8, !tbaa !133
  %450 = icmp eq ptr %449, null
  br i1 %450, label %451, label %431, !llvm.loop !170

451:                                              ; preds = %447, %425, %326, %88, %100
  %452 = phi i32 [ %89, %88 ], [ %84, %100 ], [ %84, %326 ], [ %84, %425 ], [ %84, %447 ]
  %453 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 0, i32 1, i32 0, i32 0, i64 1
  %454 = load ptr, ptr %453, align 8, !tbaa !133
  %455 = icmp eq ptr %454, null
  br i1 %455, label %456, label %82, !llvm.loop !171

456:                                              ; preds = %451, %79
  call void @free(ptr noundef %28) #8
  br label %457

457:                                              ; preds = %20, %0, %456
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @reload_cse_move2add(ptr noundef %0) unnamed_addr #0 !prof !123 !PGOFuncName !172 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(212) @reg_set_luid, i8 0, i64 212, i1 false), !tbaa !124
  store i32 0, ptr @move2add_last_label_luid, align 4, !tbaa !124
  store i32 2, ptr @move2add_luid, align 4, !tbaa !124
  %2 = icmp eq ptr %0, null
  br i1 %2, label %342, label %3, !prof !173

3:                                                ; preds = %1, %335
  %4 = phi ptr [ %338, %335 ], [ %0, %1 ]
  %5 = phi i32 [ %340, %335 ], [ 2, %1 ]
  %6 = load i32, ptr %4, align 8
  %7 = trunc i32 %6 to i16
  switch i16 %7, label %335 [
    i16 12, label %8
    i16 8, label %10
    i16 7, label %10
    i16 9, label %10
    i16 10, label %10
  ], !prof !174

8:                                                ; preds = %3
  store i32 %5, ptr @move2add_last_label_luid, align 4, !tbaa !124
  %9 = add nsw i32 %5, 1
  store i32 %9, ptr @move2add_luid, align 4, !tbaa !124
  br label %335

10:                                               ; preds = %3, %3, %3, %3
  %11 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !133
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 23
  br i1 %15, label %16, label %250, !prof !175

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !133
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 37
  br i1 %21, label %22, label %250, !prof !176

22:                                               ; preds = %16
  %23 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %18) #8
  %24 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !133
  %26 = sext i32 %23 to i64
  %27 = getelementptr inbounds [53 x i32], ptr @reg_set_luid, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !124
  %29 = load i32, ptr @move2add_last_label_luid, align 4, !tbaa !124
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %250, !prof !177

31:                                               ; preds = %22
  %32 = lshr i32 %19, 16
  %33 = and i32 %32, 255
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !133
  %37 = getelementptr inbounds [53 x i32], ptr @reg_mode, i64 0, i64 %26
  %38 = load i32, ptr %37, align 4, !tbaa !124
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !133
  %42 = icmp ugt i8 %36, %41
  br i1 %42, label %250, label %43, !prof !178

43:                                               ; preds = %31
  %44 = tail call zeroext i8 @dbg_cnt(i32 noundef 3) #9
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %250, label %46, !prof !179

46:                                               ; preds = %43
  %47 = load i32, ptr %25, align 8
  %48 = trunc i32 %47 to i16
  switch i16 %48, label %250 [
    i16 30, label %49
    i16 37, label %136
  ], !prof !180

49:                                               ; preds = %46
  %50 = getelementptr inbounds [53 x i32], ptr @reg_base_reg, i64 0, i64 %26
  %51 = load i32, ptr %50, align 4, !tbaa !124
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %250, !prof !181

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %55 = load i64, ptr %54, align 8, !tbaa !133
  %56 = getelementptr inbounds [53 x i64], ptr @reg_offset, i64 0, i64 %26
  %57 = load i64, ptr %56, align 8, !tbaa !138
  %58 = sub nsw i64 %55, %57
  %59 = load i32, ptr %18, align 8
  %60 = lshr i32 %59, 16
  %61 = and i32 %60, 255
  %62 = tail call ptr @gen_int_mode(i64 noundef %58, i32 noundef %61) #9
  %63 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !133
  %65 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %64) #9
  %66 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !141
  %67 = icmp eq ptr %62, %66
  br i1 %67, label %68, label %74, !prof !182

68:                                               ; preds = %53
  %69 = load i64, ptr %54, align 8, !tbaa !133
  %70 = load i64, ptr %56, align 8, !tbaa !138
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %130, !prof !183

72:                                               ; preds = %68
  %73 = tail call zeroext i8 @validate_change(ptr noundef nonnull %4, ptr noundef nonnull %24, ptr noundef nonnull %18, i8 noundef zeroext 0) #9
  br label %130

74:                                               ; preds = %53
  %75 = tail call i32 @rtx_cost(ptr noundef %62, i32 noundef 49, i8 noundef zeroext %65) #9
  %76 = tail call i32 @rtx_cost(ptr noundef nonnull %25, i32 noundef 23, i8 noundef zeroext %65) #9
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %87, !prof !184

78:                                               ; preds = %74
  %79 = tail call i32 @have_add2_insn(ptr noundef nonnull %18, ptr noundef %62) #9
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %78
  %82 = load i32, ptr %18, align 8
  %83 = lshr i32 %82, 16
  %84 = and i32 %83, 255
  %85 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %84, ptr noundef nonnull %18, ptr noundef %62) #9
  %86 = tail call zeroext i8 @validate_change(ptr noundef nonnull %4, ptr noundef nonnull %24, ptr noundef %85, i8 noundef zeroext 0) #9
  br label %130

87:                                               ; preds = %78, %74
  %88 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2
  %89 = icmp eq i8 %88, 0
  %90 = load i32, ptr %18, align 8
  %91 = and i32 %90, 16711680
  %92 = icmp eq i32 %91, 851968
  %93 = select i1 %92, i1 true, i1 %89
  br i1 %93, label %130, label %94, !prof !185

94:                                               ; preds = %87, %125
  %95 = phi i8 [ %128, %125 ], [ %88, %87 ]
  %96 = zext i8 %95 to i32
  %97 = load i32, ptr %18, align 8
  %98 = lshr i32 %97, 16
  %99 = trunc i32 %98 to i8
  %100 = icmp eq i8 %95, %99
  br i1 %100, label %130, label %101, !prof !186

101:                                              ; preds = %94
  %102 = tail call i32 @have_insn_for(i32 noundef 40, i32 noundef %96) #9
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %106, !prof !187

104:                                              ; preds = %101
  %105 = zext i8 %95 to i64
  br label %125

106:                                              ; preds = %101
  %107 = load i64, ptr %56, align 8, !tbaa !138
  %108 = zext i8 %95 to i64
  %109 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %108
  %110 = load i64, ptr %109, align 8, !tbaa !138
  %111 = xor i64 %110, -1
  %112 = load i64, ptr %54, align 8, !tbaa !133
  %113 = xor i64 %112, %107
  %114 = and i64 %113, %111
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %125, !prof !188

116:                                              ; preds = %106
  %117 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %18) #8
  %118 = tail call ptr @gen_rtx_REG(i32 noundef %96, i32 noundef %117) #9
  %119 = load i64, ptr %54, align 8, !tbaa !133
  %120 = tail call ptr @gen_int_mode(i64 noundef %119, i32 noundef %96) #9
  %121 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 40, i32 noundef 0, ptr noundef %118) #9
  %122 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %121, ptr noundef %120) #9
  %123 = tail call zeroext i8 @validate_change(ptr noundef nonnull %4, ptr noundef nonnull %11, ptr noundef %122, i8 noundef zeroext 0) #9
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %104, %116, %106
  %126 = phi i64 [ %105, %104 ], [ %108, %116 ], [ %108, %106 ]
  %127 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %126
  %128 = load i8, ptr %127, align 1, !tbaa !133
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %130, label %94, !prof !189, !llvm.loop !190

130:                                              ; preds = %125, %94, %116, %87, %81, %68, %72
  %131 = load i32, ptr @move2add_luid, align 4, !tbaa !124
  store i32 %131, ptr %27, align 4, !tbaa !124
  %132 = load i32, ptr %18, align 8
  %133 = lshr i32 %132, 16
  %134 = and i32 %133, 255
  store i32 %134, ptr %37, align 4, !tbaa !124
  %135 = load i64, ptr %54, align 8, !tbaa !133
  store i64 %135, ptr %56, align 8, !tbaa !138
  br label %335

136:                                              ; preds = %46
  %137 = load i32, ptr %27, align 4, !tbaa !124
  %138 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %25) #8
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds [53 x i32], ptr @reg_set_luid, i64 0, i64 %139
  %141 = load i32, ptr %140, align 4, !tbaa !124
  %142 = icmp eq i32 %137, %141
  br i1 %142, label %143, label %250, !prof !191

143:                                              ; preds = %136
  %144 = getelementptr inbounds [53 x i32], ptr @reg_base_reg, i64 0, i64 %26
  %145 = load i32, ptr %144, align 4, !tbaa !124
  %146 = getelementptr inbounds [53 x i32], ptr @reg_base_reg, i64 0, i64 %139
  %147 = load i32, ptr %146, align 4, !tbaa !124
  %148 = icmp eq i32 %145, %147
  br i1 %148, label %149, label %250, !prof !192

149:                                              ; preds = %143
  %150 = load i32, ptr %18, align 8
  %151 = lshr i32 %150, 16
  %152 = and i32 %151, 255
  %153 = zext nneg i32 %152 to i64
  %154 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %153
  %155 = load i8, ptr %154, align 1, !tbaa !133
  %156 = getelementptr inbounds [53 x i32], ptr @reg_mode, i64 0, i64 %139
  %157 = load i32, ptr %156, align 4, !tbaa !124
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %158
  %160 = load i8, ptr %159, align 1, !tbaa !133
  %161 = icmp ugt i8 %155, %160
  br i1 %161, label %250, label %162, !prof !193

162:                                              ; preds = %149
  %163 = tail call ptr @next_nonnote_insn(ptr noundef nonnull %4) #9
  %164 = icmp eq ptr %163, null
  br i1 %164, label %250, label %165, !prof !194

165:                                              ; preds = %162
  %166 = load i32, ptr %163, align 8
  %167 = and i32 %166, 65535
  %168 = add nsw i32 %167, -7
  %169 = icmp ult i32 %168, 4
  br i1 %169, label %170, label %250, !prof !195

170:                                              ; preds = %165
  %171 = getelementptr inbounds %struct.rtx_def, ptr %163, i64 1
  %172 = load ptr, ptr %171, align 8, !tbaa !133
  %173 = load i32, ptr %172, align 8
  %174 = and i32 %173, 65535
  %175 = icmp eq i32 %174, 23
  br i1 %175, label %179, label %176, !prof !196

176:                                              ; preds = %170
  %177 = tail call ptr @single_set_2(ptr noundef nonnull %163, ptr noundef nonnull %172) #9
  %178 = icmp eq ptr %177, null
  br i1 %178, label %250, label %179, !prof !197

179:                                              ; preds = %170, %176
  %180 = phi ptr [ %177, %176 ], [ %172, %170 ]
  %181 = getelementptr inbounds %struct.rtx_def, ptr %180, i64 0, i32 1
  %182 = load ptr, ptr %181, align 8, !tbaa !133
  %183 = icmp eq ptr %182, %18
  br i1 %183, label %184, label %250, !prof !198

184:                                              ; preds = %179
  %185 = getelementptr inbounds %struct.rtx_def, ptr %180, i64 0, i32 1, i32 0, i32 0, i64 1
  %186 = load ptr, ptr %185, align 8, !tbaa !133
  %187 = load i32, ptr %186, align 8
  %188 = and i32 %187, 65535
  %189 = icmp eq i32 %188, 49
  br i1 %189, label %190, label %250, !prof !199

190:                                              ; preds = %184
  %191 = getelementptr inbounds %struct.rtx_def, ptr %186, i64 0, i32 1
  %192 = load ptr, ptr %191, align 8, !tbaa !133
  %193 = icmp eq ptr %192, %18
  br i1 %193, label %194, label %250, !prof !200

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.rtx_def, ptr %186, i64 0, i32 1, i32 0, i32 0, i64 1
  %196 = load ptr, ptr %195, align 8, !tbaa !133
  %197 = load i32, ptr %196, align 8
  %198 = and i32 %197, 65535
  %199 = icmp eq i32 %198, 30
  br i1 %199, label %200, label %250, !prof !201

200:                                              ; preds = %194
  %201 = getelementptr inbounds %struct.rtx_def, ptr %196, i64 0, i32 1
  %202 = load i64, ptr %201, align 8, !tbaa !133
  %203 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %25) #8
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds [53 x i64], ptr @reg_offset, i64 0, i64 %204
  %206 = load i64, ptr %205, align 8, !tbaa !138
  %207 = getelementptr inbounds [53 x i64], ptr @reg_offset, i64 0, i64 %26
  %208 = load i64, ptr %207, align 8, !tbaa !138
  %209 = add nsw i64 %206, %202
  %210 = sub nsw i64 %209, %208
  %211 = load i32, ptr %18, align 8
  %212 = lshr i32 %211, 16
  %213 = and i32 %212, 255
  %214 = tail call ptr @gen_int_mode(i64 noundef %210, i32 noundef %213) #9
  %215 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 1
  %216 = load ptr, ptr %215, align 8, !tbaa !133
  %217 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %216) #9
  %218 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !141
  %219 = icmp eq ptr %214, %218
  br i1 %219, label %220, label %222, !prof !202

220:                                              ; preds = %200
  %221 = tail call zeroext i8 @validate_change(ptr noundef nonnull %163, ptr noundef nonnull %185, ptr noundef nonnull %18, i8 noundef zeroext 0) #9
  br label %237

222:                                              ; preds = %200
  %223 = tail call i32 @rtx_cost(ptr noundef %214, i32 noundef 49, i8 noundef zeroext %217) #9
  %224 = tail call i32 @rtx_cost(ptr noundef nonnull %196, i32 noundef 23, i8 noundef zeroext %217) #9
  %225 = add nsw i32 %224, 4
  %226 = icmp slt i32 %223, %225
  br i1 %226, label %227, label %242, !prof !203

227:                                              ; preds = %222
  %228 = tail call i32 @have_add2_insn(ptr noundef nonnull %18, ptr noundef %214) #9
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %242, label %230, !prof !202

230:                                              ; preds = %227
  %231 = load i32, ptr %18, align 8
  %232 = lshr i32 %231, 16
  %233 = and i32 %232, 255
  %234 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %233, ptr noundef nonnull %18, ptr noundef %214) #9
  %235 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef nonnull %18, ptr noundef %234) #9
  %236 = tail call zeroext i8 @validate_change(ptr noundef nonnull %163, ptr noundef nonnull %171, ptr noundef %235, i8 noundef zeroext 0) #9
  br label %237

237:                                              ; preds = %230, %220
  %238 = phi i8 [ %221, %220 ], [ %236, %230 ]
  %239 = icmp eq i8 %238, 0
  br i1 %239, label %242, label %240, !prof !204

240:                                              ; preds = %237
  %241 = tail call ptr @delete_insn(ptr noundef nonnull %4) #9
  br label %242

242:                                              ; preds = %222, %227, %237, %240
  %243 = load i32, ptr %18, align 8
  %244 = lshr i32 %243, 16
  %245 = and i32 %244, 255
  store i32 %245, ptr %37, align 4, !tbaa !124
  %246 = load i32, ptr %18, align 8
  %247 = lshr i32 %246, 16
  %248 = and i32 %247, 255
  %249 = tail call i64 @trunc_int_for_mode(i64 noundef %209, i32 noundef %248) #9
  store i64 %249, ptr %207, align 8, !tbaa !138
  br label %335

250:                                              ; preds = %149, %46, %165, %162, %49, %176, %179, %184, %190, %194, %22, %43, %136, %143, %31, %16, %10
  %251 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 1, i32 1, i32 0, i32 0, i64 1
  %252 = load ptr, ptr %251, align 8, !tbaa !133
  %253 = icmp eq ptr %252, null
  br i1 %253, label %275, label %254, !prof !205

254:                                              ; preds = %250, %271
  %255 = phi ptr [ %273, %271 ], [ %252, %250 ]
  %256 = load i32, ptr %255, align 8
  %257 = and i32 %256, 16711680
  %258 = icmp eq i32 %257, 131072
  br i1 %258, label %259, label %271, !prof !206

259:                                              ; preds = %254
  %260 = getelementptr inbounds %struct.rtx_def, ptr %255, i64 0, i32 1
  %261 = load ptr, ptr %260, align 8, !tbaa !133
  %262 = load i32, ptr %261, align 8
  %263 = and i32 %262, 65535
  %264 = icmp eq i32 %263, 37
  br i1 %264, label %265, label %271

265:                                              ; preds = %259
  %266 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %261) #8
  %267 = icmp slt i32 %266, 53
  br i1 %267, label %268, label %271

268:                                              ; preds = %265
  %269 = sext i32 %266 to i64
  %270 = getelementptr inbounds [53 x i32], ptr @reg_set_luid, i64 0, i64 %269
  store i32 0, ptr %270, align 4, !tbaa !124
  br label %271

271:                                              ; preds = %265, %268, %254, %259
  %272 = getelementptr inbounds %struct.rtx_def, ptr %255, i64 0, i32 1, i32 0, i32 0, i64 1
  %273 = load ptr, ptr %272, align 8, !tbaa !133
  %274 = icmp eq ptr %273, null
  br i1 %274, label %275, label %254, !prof !207, !llvm.loop !208

275:                                              ; preds = %271, %250
  %276 = load ptr, ptr %11, align 8, !tbaa !133
  tail call void @note_stores(ptr noundef %276, ptr noundef nonnull @move2add_note_store, ptr noundef null) #9
  %277 = tail call i32 @any_condjump_p(ptr noundef nonnull %4) #9
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %321, label %279, !prof !209

279:                                              ; preds = %275
  %280 = tail call ptr @fis_get_condition(ptr noundef nonnull %4) #9
  %281 = icmp eq ptr %280, null
  br i1 %281, label %321, label %282, !prof !210

282:                                              ; preds = %279
  %283 = load i32, ptr %280, align 8
  %284 = and i32 %283, 65535
  %285 = icmp eq i32 %284, 80
  br i1 %285, label %286, label %321, !prof !211

286:                                              ; preds = %282
  %287 = getelementptr inbounds %struct.rtx_def, ptr %280, i64 0, i32 1
  %288 = load ptr, ptr %287, align 8, !tbaa !133
  %289 = load i32, ptr %288, align 8
  %290 = and i32 %289, 65535
  %291 = icmp eq i32 %290, 37
  br i1 %291, label %292, label %321, !prof !212

292:                                              ; preds = %286
  %293 = tail call i32 @reg_set_p(ptr noundef nonnull %288, ptr noundef nonnull %4) #9
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %321, !prof !213

295:                                              ; preds = %292
  %296 = load ptr, ptr %287, align 8, !tbaa !133
  %297 = load i32, ptr %296, align 8
  %298 = lshr i32 %297, 16
  %299 = and i32 %298, 255
  %300 = zext nneg i32 %299 to i64
  %301 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %300
  %302 = load i8, ptr %301, align 1, !tbaa !133
  %303 = and i8 %302, -2
  %304 = icmp eq i8 %303, 2
  br i1 %304, label %305, label %321, !prof !214

305:                                              ; preds = %295
  %306 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %296) #8
  %307 = zext i32 %306 to i64
  %308 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %307, i64 %300
  %309 = load i8, ptr %308, align 1, !tbaa !133
  %310 = icmp eq i8 %309, 1
  br i1 %310, label %311, label %321, !prof !213

311:                                              ; preds = %305
  %312 = getelementptr inbounds %struct.rtx_def, ptr %280, i64 0, i32 1, i32 0, i32 0, i64 1
  %313 = load ptr, ptr %312, align 8, !tbaa !133
  %314 = load i32, ptr %313, align 8
  %315 = and i32 %314, 65535
  %316 = icmp eq i32 %315, 30
  br i1 %316, label %317, label %321, !prof !215

317:                                              ; preds = %311
  %318 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef nonnull %296, ptr noundef nonnull %313) #9
  %319 = getelementptr inbounds %struct.rtx_def, ptr %318, i64 0, i32 1
  %320 = load ptr, ptr %319, align 8, !tbaa !133
  tail call void @move2add_note_store(ptr noundef %320, ptr noundef %318, ptr poison) #8
  br label %321

321:                                              ; preds = %295, %279, %282, %286, %292, %305, %311, %317, %275
  %322 = load i32, ptr %4, align 8
  %323 = and i32 %322, 65535
  %324 = icmp eq i32 %323, 10
  br i1 %324, label %325, label %335, !prof !216

325:                                              ; preds = %321, %332
  %326 = phi i64 [ %333, %332 ], [ 52, %321 ]
  %327 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %326
  %328 = load i8, ptr %327, align 1, !tbaa !133
  %329 = icmp eq i8 %328, 0
  br i1 %329, label %332, label %330, !prof !217

330:                                              ; preds = %325
  %331 = getelementptr inbounds [53 x i32], ptr @reg_set_luid, i64 0, i64 %326
  store i32 0, ptr %331, align 4, !tbaa !124
  br label %332

332:                                              ; preds = %325, %330
  %333 = add nsw i64 %326, -1
  %334 = icmp eq i64 %326, 0
  br i1 %334, label %335, label %325, !prof !218, !llvm.loop !219

335:                                              ; preds = %332, %130, %242, %321, %3, %8
  %336 = phi ptr [ %4, %8 ], [ %4, %3 ], [ %4, %321 ], [ %4, %130 ], [ %163, %242 ], [ %4, %332 ]
  %337 = getelementptr inbounds %struct.rtx_def, ptr %336, i64 0, i32 1, i32 0, i32 0, i64 2
  %338 = load ptr, ptr %337, align 8, !tbaa !133
  %339 = load i32, ptr @move2add_luid, align 4, !tbaa !124
  %340 = add nsw i32 %339, 1
  store i32 %340, ptr @move2add_luid, align 4, !tbaa !124
  %341 = icmp eq ptr %338, null
  br i1 %341, label %342, label %3, !prof !220, !llvm.loop !221

342:                                              ; preds = %335, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @gen_rtx_REG(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @cselib_init(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @init_alias_analysis() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @reload_cse_simplify(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !222 !PGOFuncName !223 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !133
  %5 = load i32, ptr %4, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %105 [
    i16 23, label %7
    i16 15, label %18
  ], !prof !224

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @reload_cse_simplify_set(ptr noundef nonnull %4, ptr noundef nonnull %0) #8, !range !225
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15, !prof !226

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @reload_cse_noop_set_p(ptr noundef nonnull %4) #8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13, !prof !227

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
  br i1 %20, label %21, label %46, !prof !228

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !133
  %24 = load i32, ptr %23, align 8, !tbaa !229
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %21
  %27 = zext nneg i32 %24 to i64
  br label %28

28:                                               ; preds = %26, %44
  %29 = phi i64 [ %27, %26 ], [ %30, %44 ]
  %30 = add nsw i64 %29, -1
  %31 = load ptr, ptr %22, align 8, !tbaa !133
  %32 = getelementptr inbounds %struct.rtvec_def, ptr %31, i64 0, i32 1, i64 %30
  %33 = load ptr, ptr %32, align 8, !tbaa !141
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 25
  br i1 %36, label %37, label %44

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !133
  %40 = load i32, ptr %39, align 8
  %41 = and i32 %40, 65535
  %42 = icmp eq i32 %41, 37
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  tail call void @cselib_invalidate_rtx(ptr noundef nonnull %39) #9
  br label %44

44:                                               ; preds = %43, %37, %28
  %45 = icmp ugt i64 %29, 1
  br i1 %45, label %28, label %46, !llvm.loop !231

46:                                               ; preds = %44, %21, %18
  %47 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !133
  %49 = load i32, ptr %48, align 8, !tbaa !229
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %76, !prof !232

51:                                               ; preds = %46
  %52 = zext nneg i32 %49 to i64
  br label %53

53:                                               ; preds = %51, %73
  %54 = phi i64 [ %52, %51 ], [ %56, %73 ]
  %55 = phi ptr [ null, %51 ], [ %74, %73 ]
  %56 = add nsw i64 %54, -1
  %57 = load ptr, ptr %47, align 8, !tbaa !133
  %58 = getelementptr inbounds %struct.rtvec_def, ptr %57, i64 0, i32 1, i64 %56
  %59 = load ptr, ptr %58, align 8, !tbaa !141
  %60 = load i32, ptr %59, align 8
  %61 = trunc i32 %60 to i16
  switch i16 %61, label %78 [
    i16 23, label %62
    i16 25, label %73
  ], !prof !233

62:                                               ; preds = %53
  %63 = tail call fastcc i32 @reload_cse_noop_set_p(ptr noundef nonnull %59) #8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %78, label %65, !prof !234

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !133
  %68 = load i32, ptr %67, align 8
  %69 = and i32 %68, -2147418113
  %70 = icmp eq i32 %69, -2147483611
  br i1 %70, label %71, label %73, !prof !235

71:                                               ; preds = %65
  %72 = icmp eq ptr %55, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %65, %71, %53
  %74 = phi ptr [ %55, %65 ], [ %67, %71 ], [ %55, %53 ]
  %75 = icmp ugt i64 %54, 1
  br i1 %75, label %53, label %76, !prof !236, !llvm.loop !237

76:                                               ; preds = %73, %46
  %77 = tail call ptr @delete_insn_and_edges(ptr noundef %0) #9
  br label %105

78:                                               ; preds = %62, %71, %53
  %79 = load ptr, ptr %47, align 8, !tbaa !133
  %80 = load i32, ptr %79, align 8, !tbaa !229
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %104, !prof !238

82:                                               ; preds = %78
  %83 = zext nneg i32 %80 to i64
  br label %84

84:                                               ; preds = %82, %97
  %85 = phi i64 [ %83, %82 ], [ %87, %97 ]
  %86 = phi i32 [ 0, %82 ], [ %98, %97 ]
  %87 = add nsw i64 %85, -1
  %88 = load ptr, ptr %47, align 8, !tbaa !133
  %89 = getelementptr inbounds %struct.rtvec_def, ptr %88, i64 0, i32 1, i64 %87
  %90 = load ptr, ptr %89, align 8, !tbaa !141
  %91 = load i32, ptr %90, align 8
  %92 = and i32 %91, 65535
  %93 = icmp eq i32 %92, 23
  br i1 %93, label %94, label %97, !prof !239

94:                                               ; preds = %84
  %95 = tail call fastcc i32 @reload_cse_simplify_set(ptr noundef nonnull %90, ptr noundef %0) #8, !range !225
  %96 = add nsw i32 %95, %86
  br label %97

97:                                               ; preds = %84, %94
  %98 = phi i32 [ %96, %94 ], [ %86, %84 ]
  %99 = icmp ugt i64 %85, 1
  br i1 %99, label %84, label %100, !prof !240, !llvm.loop !241

100:                                              ; preds = %97
  %101 = icmp sgt i32 %98, 0
  br i1 %101, label %102, label %104, !prof !242

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
declare void @cselib_process_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @end_alias_analysis() local_unnamed_addr #2

; Function Attrs: optsize
declare void @cselib_finish() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @reload_cse_simplify_set(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !243 !PGOFuncName !244 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !133
  %5 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %4) #9
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !133
  %8 = tail call i32 @true_regnum(ptr noundef %7) #9
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %102, label %10, !prof !245

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !133
  %13 = tail call i32 @side_effects_p(ptr noundef %12) #9
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %102, !prof !246

15:                                               ; preds = %10
  %16 = tail call i32 @true_regnum(ptr noundef %12) #9
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %102, label %18, !prof !247

18:                                               ; preds = %15
  %19 = zext nneg i32 %8 to i64
  %20 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !124
  %22 = load ptr, ptr %6, align 8, !tbaa !133
  %23 = load i32, ptr %22, align 8
  %24 = lshr i32 %23, 16
  %25 = and i32 %24, 255
  %26 = tail call ptr @cselib_lookup(ptr noundef %12, i32 noundef %25, i32 noundef 0) #9
  %27 = icmp eq ptr %26, null
  br i1 %27, label %102, label %28, !prof !248

28:                                               ; preds = %18
  %29 = load i32, ptr %12, align 8
  %30 = trunc i32 %29 to i16
  switch i16 %30, label %43 [
    i16 43, label %31
    i16 37, label %35
  ], !prof !249

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
  %41 = load i32, ptr %40, align 4, !tbaa !124
  %42 = tail call i32 @ix86_register_move_cost(i32 noundef %37, i32 noundef %41, i32 noundef %21) #9
  br label %45

43:                                               ; preds = %28
  %44 = tail call i32 @rtx_cost(ptr noundef nonnull %12, i32 noundef 23, i8 noundef zeroext %5) #9
  br label %45

45:                                               ; preds = %35, %43, %31
  %46 = phi i32 [ %34, %31 ], [ %42, %35 ], [ %44, %43 ]
  %47 = getelementptr inbounds %struct.cselib_val_struct, ptr %26, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !141
  %49 = icmp eq ptr %48, null
  br i1 %49, label %102, label %50, !prof !250

50:                                               ; preds = %45, %97
  %51 = phi ptr [ %100, %97 ], [ %48, %45 ]
  %52 = phi i32 [ %99, %97 ], [ 0, %45 ]
  %53 = phi i32 [ %98, %97 ], [ %46, %45 ]
  %54 = getelementptr inbounds %struct.elt_loc_list, ptr %51, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !251
  %56 = load i32, ptr %55, align 8
  %57 = and i32 %56, 65535
  %58 = zext nneg i32 %57 to i64
  %59 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !124
  %61 = icmp eq i32 %60, 9
  br i1 %61, label %62, label %69, !prof !253

62:                                               ; preds = %50
  %63 = tail call i32 @references_value_p(ptr noundef nonnull %55, i32 noundef 0) #9
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65, !prof !254

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
  br i1 %72, label %73, label %97, !prof !255

73:                                               ; preds = %69
  %74 = lshr i32 %70, 16
  %75 = and i32 %74, 255
  %76 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %55) #8
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !124
  %80 = tail call i32 @ix86_register_move_cost(i32 noundef %75, i32 noundef %79, i32 noundef %21) #9
  br label %81

81:                                               ; preds = %73, %67
  %82 = phi i32 [ %80, %73 ], [ %68, %67 ]
  %83 = icmp slt i32 %82, %53
  br i1 %83, label %95, label %84, !prof !256

84:                                               ; preds = %81
  %85 = icmp eq i32 %82, %53
  br i1 %85, label %86, label %97, !prof !257

86:                                               ; preds = %84
  %87 = load i32, ptr %55, align 8
  %88 = and i32 %87, 65535
  %89 = icmp eq i32 %88, 37
  br i1 %89, label %90, label %97, !prof !258

90:                                               ; preds = %86
  %91 = load ptr, ptr %11, align 8, !tbaa !133
  %92 = load i32, ptr %91, align 8
  %93 = and i32 %92, 65535
  %94 = icmp eq i32 %93, 37
  br i1 %94, label %97, label %95, !prof !259

95:                                               ; preds = %90, %81
  %96 = tail call zeroext i8 @validate_unshare_change(ptr noundef %1, ptr noundef nonnull %11, ptr noundef nonnull %55, i8 noundef zeroext 1) #9
  br label %97

97:                                               ; preds = %84, %86, %90, %95, %69
  %98 = phi i32 [ %53, %69 ], [ %82, %95 ], [ %53, %90 ], [ %53, %86 ], [ %53, %84 ]
  %99 = phi i32 [ %52, %69 ], [ 1, %95 ], [ %52, %90 ], [ %52, %86 ], [ %52, %84 ]
  %100 = load ptr, ptr %51, align 8, !tbaa !141
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %50, !prof !260, !llvm.loop !261

102:                                              ; preds = %97, %45, %18, %10, %15, %2
  %103 = phi i32 [ 0, %2 ], [ 0, %15 ], [ 0, %10 ], [ 0, %18 ], [ 0, %45 ], [ %99, %97 ]
  ret i32 %103
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @reload_cse_noop_set_p(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !262 !PGOFuncName !263 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !133
  %4 = tail call i32 @cselib_reg_set_mode(ptr noundef %3) #9
  %5 = load ptr, ptr %2, align 8, !tbaa !133
  %6 = load i32, ptr %5, align 8
  %7 = lshr i32 %6, 16
  %8 = and i32 %7, 255
  %9 = icmp eq i32 %4, %8
  br i1 %9, label %10, label %14, !prof !264

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !133
  %13 = tail call i32 @rtx_equal_for_cselib_p(ptr noundef nonnull %5, ptr noundef %12) #9
  br label %14

14:                                               ; preds = %1, %10
  %15 = phi i32 [ %13, %10 ], [ 0, %1 ]
  ret i32 %15
}

; Function Attrs: optsize
declare ptr @delete_insn_and_edges(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @apply_change_group() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @reload_cse_simplify_operands(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !265 !PGOFuncName !266 {
  %3 = alloca [30 x i64], align 16
  %4 = alloca [30 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %4) #10
  tail call void @extract_insn(ptr noundef %0) #9
  %5 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !267
  %6 = icmp eq i8 %5, 0
  %7 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %6, i1 true, i1 %8
  br i1 %9, label %324, label %10, !prof !269

10:                                               ; preds = %2
  %11 = tail call i32 @constrain_operands(i32 noundef 1) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14, !prof !270

13:                                               ; preds = %10
  tail call void @_fatal_insn_not_found(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 396, ptr noundef nonnull @.str.1) #9
  br label %14

14:                                               ; preds = %13, %10
  %15 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !267
  %16 = sext i8 %15 to i64
  %17 = shl nsw i64 %16, 2
  %18 = alloca i8, i64 %17, align 16
  %19 = alloca i8, i64 %17, align 16
  %20 = alloca i8, i64 %17, align 16
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %18, i8 0, i64 %17, i1 false)
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %19, i8 0, i64 %17, i1 false)
  %21 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !271
  %22 = icmp sgt i8 %21, 0
  br i1 %22, label %25, label %71, !prof !272

23:                                               ; preds = %66
  %24 = icmp sgt i8 %68, 0
  br i1 %24, label %82, label %71, !prof !197

25:                                               ; preds = %14, %66
  %26 = phi i64 [ %67, %66 ], [ 0, %14 ]
  %27 = getelementptr inbounds [30 x i64], ptr %3, i64 0, i64 %26
  store i64 0, ptr %27, align 8, !tbaa !138
  %28 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %26
  %29 = load ptr, ptr %28, align 8, !tbaa !141
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 12
  br i1 %32, label %66, label %33, !prof !273

33:                                               ; preds = %25
  %34 = zext nneg i32 %31 to i64
  %35 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !124
  %37 = icmp eq i32 %36, 9
  %38 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 3, i64 %26
  %39 = load i32, ptr %38, align 4, !tbaa !124
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %37, i1 %40, i1 false
  br i1 %41, label %66, label %42, !prof !274

42:                                               ; preds = %33
  %43 = tail call ptr @cselib_lookup(ptr noundef nonnull %29, i32 noundef %39, i32 noundef 0) #9
  %44 = icmp eq ptr %43, null
  br i1 %44, label %66, label %45, !prof !275

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.cselib_val_struct, ptr %43, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !141
  %48 = icmp eq ptr %47, null
  br i1 %48, label %66, label %49, !prof !276

49:                                               ; preds = %45, %62
  %50 = phi i64 [ %63, %62 ], [ 0, %45 ]
  %51 = phi ptr [ %64, %62 ], [ %47, %45 ]
  %52 = getelementptr inbounds %struct.elt_loc_list, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !251
  %54 = load i32, ptr %53, align 8
  %55 = and i32 %54, 65535
  %56 = icmp eq i32 %55, 37
  br i1 %56, label %57, label %62, !prof !277

57:                                               ; preds = %49
  %58 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %53) #8
  %59 = zext nneg i32 %58 to i64
  %60 = shl nuw i64 1, %59
  %61 = or i64 %60, %50
  store i64 %61, ptr %27, align 8, !tbaa !138
  br label %62

62:                                               ; preds = %49, %57
  %63 = phi i64 [ %50, %49 ], [ %61, %57 ]
  %64 = load ptr, ptr %51, align 8, !tbaa !141
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %49, !prof !278, !llvm.loop !279

66:                                               ; preds = %62, %33, %45, %42, %25
  %67 = add nuw nsw i64 %26, 1
  %68 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !271
  %69 = sext i8 %68 to i64
  %70 = icmp slt i64 %67, %69
  br i1 %70, label %25, label %23, !prof !280, !llvm.loop !281

71:                                               ; preds = %198, %14, %23
  %72 = phi i8 [ %68, %23 ], [ %21, %14 ], [ %200, %198 ]
  %73 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !267
  %74 = icmp sgt i8 %73, 0
  br i1 %74, label %76, label %75, !prof !272

75:                                               ; preds = %71
  store i8 0, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !267
  br label %270

76:                                               ; preds = %71
  %77 = zext nneg i8 %73 to i64
  %78 = load i32, ptr @which_alternative, align 4, !tbaa !124
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, ptr %18, i64 %79
  %81 = load i32, ptr %80, align 4, !tbaa !124
  br label %203

82:                                               ; preds = %23, %198
  %83 = phi i64 [ %199, %198 ], [ 0, %23 ]
  %84 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !267
  %85 = sext i8 %84 to i64
  %86 = shl nsw i64 %85, 2
  %87 = alloca i8, i64 %86, align 16
  %88 = getelementptr inbounds [30 x ptr], ptr %4, i64 0, i64 %83
  store ptr %87, ptr %88, align 8, !tbaa !141
  %89 = icmp sgt i8 %84, 0
  br i1 %89, label %90, label %93, !prof !282

90:                                               ; preds = %82
  %91 = zext nneg i8 %84 to i64
  %92 = shl nuw nsw i64 %91, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %87, i8 -1, i64 %92, i1 false), !tbaa !124
  br label %93

93:                                               ; preds = %90, %82
  %94 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %83
  %95 = load ptr, ptr %94, align 8, !tbaa !141
  %96 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 3, i64 %83
  %97 = load i32, ptr %96, align 4, !tbaa !124
  %98 = load i8, ptr %95, align 1, !tbaa !133
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %121, label %100, !prof !283

100:                                              ; preds = %93, %117
  %101 = phi i8 [ %119, %117 ], [ %98, %93 ]
  %102 = phi i32 [ %118, %117 ], [ 0, %93 ]
  %103 = phi ptr [ %104, %117 ], [ %95, %93 ]
  %104 = getelementptr inbounds i8, ptr %103, i64 1
  switch i8 %101, label %117 [
    i8 44, label %105
    i8 63, label %107
    i8 33, label %112
  ], !prof !284

105:                                              ; preds = %100
  %106 = add nsw i32 %102, 1
  br label %117

107:                                              ; preds = %100
  %108 = sext i32 %102 to i64
  %109 = getelementptr inbounds i32, ptr %18, i64 %108
  %110 = load i32, ptr %109, align 4, !tbaa !124
  %111 = add nsw i32 %110, 3
  store i32 %111, ptr %109, align 4, !tbaa !124
  br label %117

112:                                              ; preds = %100
  %113 = sext i32 %102 to i64
  %114 = getelementptr inbounds i32, ptr %18, i64 %113
  %115 = load i32, ptr %114, align 4, !tbaa !124
  %116 = add nsw i32 %115, 300
  store i32 %116, ptr %114, align 4, !tbaa !124
  br label %117

117:                                              ; preds = %100, %107, %112, %105
  %118 = phi i32 [ %106, %105 ], [ %102, %107 ], [ %102, %112 ], [ %102, %100 ]
  %119 = load i8, ptr %104, align 1, !tbaa !133
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %121, label %100, !prof !285, !llvm.loop !286

121:                                              ; preds = %117, %93
  %122 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %83
  %123 = load ptr, ptr %122, align 8, !tbaa !141
  %124 = call i32 @true_regnum(ptr noundef %123) #9
  %125 = icmp sgt i32 %124, -1
  br i1 %125, label %198, label %126, !prof !287

126:                                              ; preds = %121
  %127 = load i8, ptr %95, align 1, !tbaa !133
  switch i8 %127, label %128 [
    i8 61, label %198
    i8 43, label %198
  ], !prof !288

128:                                              ; preds = %126
  %129 = getelementptr inbounds [30 x i64], ptr %3, i64 0, i64 %83
  %130 = load i64, ptr %129, align 8, !tbaa !138
  br label %131

131:                                              ; preds = %128, %195
  %132 = phi i64 [ 0, %128 ], [ %196, %195 ]
  %133 = shl nuw nsw i64 1, %132
  %134 = and i64 %130, %133
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %195, label %136, !prof !289

136:                                              ; preds = %131
  %137 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %138 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %139 = shl i32 %97, 16
  %140 = and i32 %139, 16711680
  %141 = call fastcc i32 @rhs_regno(ptr noundef %1) #8
  %142 = trunc i64 %132 to i32
  call void @df_ref_change_reg_with_loc(i32 noundef %141, i32 noundef %142, ptr noundef %1) #9
  store i32 %142, ptr %137, align 8, !tbaa !133
  %143 = load i32, ptr %1, align 8
  %144 = and i32 %143, -16711681
  %145 = or disjoint i32 %144, %140
  store i32 %145, ptr %1, align 8
  br label %146

146:                                              ; preds = %189, %136
  %147 = phi i32 [ 0, %136 ], [ %190, %189 ]
  %148 = phi ptr [ %95, %136 ], [ %193, %189 ]
  %149 = phi i32 [ 0, %136 ], [ %191, %189 ]
  %150 = load i8, ptr %148, align 1, !tbaa !133
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
  ], !prof !290

151:                                              ; preds = %146, %146
  %152 = sext i32 %147 to i64
  %153 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subunion, i64 0, i64 %152, i64 13
  %154 = load i32, ptr %153, align 4, !tbaa !124
  br label %189

155:                                              ; preds = %146
  %156 = sext i32 %147 to i64
  %157 = call i32 @lookup_constraint(ptr noundef nonnull %148) #9
  %158 = call i32 @regclass_for_constraint(i32 noundef %157) #9
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subunion, i64 0, i64 %156, i64 %159
  %161 = load i32, ptr %160, align 4, !tbaa !124
  br label %189

162:                                              ; preds = %146, %146
  %163 = sext i32 %149 to i64
  %164 = getelementptr inbounds i32, ptr %87, i64 %163
  %165 = load i32, ptr %164, align 4, !tbaa !124
  %166 = icmp eq i32 %165, -1
  br i1 %166, label %167, label %187, !prof !291

167:                                              ; preds = %162
  %168 = call i32 @reg_fits_class_p(ptr noundef nonnull %1, i32 noundef %147, i32 noundef 0, i32 noundef %97) #9
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %187, label %170, !prof !292

170:                                              ; preds = %167
  %171 = load ptr, ptr %122, align 8, !tbaa !141
  %172 = load i32, ptr %171, align 8
  %173 = and i32 %172, 65535
  %174 = icmp eq i32 %173, 30
  br i1 %174, label %175, label %183, !prof !293

175:                                              ; preds = %170
  %176 = load ptr, ptr %138, align 8, !tbaa !133
  %177 = call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %176) #9
  %178 = call i32 @rtx_cost(ptr noundef nonnull %171, i32 noundef 23, i8 noundef zeroext %177) #9
  %179 = load ptr, ptr %138, align 8, !tbaa !133
  %180 = call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %179) #9
  %181 = call i32 @rtx_cost(ptr noundef nonnull %1, i32 noundef 23, i8 noundef zeroext %180) #9
  %182 = icmp sgt i32 %178, %181
  br i1 %182, label %183, label %187, !prof !294

183:                                              ; preds = %175, %170
  %184 = getelementptr inbounds i32, ptr %19, i64 %163
  %185 = load i32, ptr %184, align 4, !tbaa !124
  %186 = add nsw i32 %185, 1
  store i32 %186, ptr %184, align 4, !tbaa !124
  store i32 %142, ptr %164, align 4, !tbaa !124
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
  br i1 %197, label %198, label %131, !prof !295, !llvm.loop !296

198:                                              ; preds = %195, %121, %126, %126
  %199 = add nuw nsw i64 %83, 1
  %200 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !271
  %201 = sext i8 %200 to i64
  %202 = icmp slt i64 %199, %201
  br i1 %202, label %82, label %71, !prof !280, !llvm.loop !297

203:                                              ; preds = %76, %214
  %204 = phi i64 [ 0, %76 ], [ %216, %214 ]
  %205 = phi i32 [ 0, %76 ], [ %215, %214 ]
  %206 = getelementptr inbounds i32, ptr %18, i64 %204
  %207 = load i32, ptr %206, align 4, !tbaa !124
  %208 = icmp sgt i32 %207, %81
  br i1 %208, label %214, label %209, !prof !298

209:                                              ; preds = %203
  %210 = add nsw i32 %205, 1
  %211 = sext i32 %205 to i64
  %212 = getelementptr inbounds i32, ptr %20, i64 %211
  %213 = trunc i64 %204 to i32
  store i32 %213, ptr %212, align 4, !tbaa !124
  br label %214

214:                                              ; preds = %203, %209
  %215 = phi i32 [ %210, %209 ], [ %205, %203 ]
  %216 = add nuw nsw i64 %204, 1
  %217 = icmp eq i64 %216, %77
  br i1 %217, label %218, label %203, !prof !299, !llvm.loop !300

218:                                              ; preds = %214
  %219 = trunc i32 %215 to i8
  store i8 %219, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !267
  %220 = shl i32 %215, 24
  %221 = ashr exact i32 %220, 24
  %222 = icmp sgt i32 %221, 1
  br i1 %222, label %223, label %270, !prof !197

223:                                              ; preds = %218
  %224 = add nsw i32 %221, -1
  %225 = zext nneg i32 %224 to i64
  %226 = zext nneg i32 %221 to i64
  br label %227

227:                                              ; preds = %264, %223
  %228 = phi i64 [ 0, %223 ], [ %232, %264 ]
  %229 = phi i64 [ 1, %223 ], [ %268, %264 ]
  %230 = getelementptr inbounds i32, ptr %20, i64 %228
  %231 = load i32, ptr %230, align 4, !tbaa !124
  %232 = add nuw nsw i64 %228, 1
  %233 = trunc i64 %228 to i32
  %234 = sext i32 %231 to i64
  %235 = getelementptr inbounds i32, ptr %19, i64 %234
  %236 = load i32, ptr %235, align 4, !tbaa !124
  %237 = getelementptr inbounds i32, ptr %18, i64 %234
  %238 = load i32, ptr %237, align 4, !tbaa !124
  br label %239

239:                                              ; preds = %227, %258
  %240 = phi i64 [ %229, %227 ], [ %262, %258 ]
  %241 = phi i32 [ %236, %227 ], [ %261, %258 ]
  %242 = phi i32 [ %238, %227 ], [ %260, %258 ]
  %243 = phi i32 [ %233, %227 ], [ %259, %258 ]
  %244 = getelementptr inbounds i32, ptr %20, i64 %240
  %245 = load i32, ptr %244, align 4, !tbaa !124
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, ptr %18, i64 %246
  %248 = load i32, ptr %247, align 4, !tbaa !124
  %249 = getelementptr inbounds i32, ptr %19, i64 %246
  %250 = load i32, ptr %249, align 4, !tbaa !124
  %251 = icmp slt i32 %248, %242
  br i1 %251, label %256, label %252, !prof !301

252:                                              ; preds = %239
  %253 = icmp eq i32 %248, %242
  %254 = icmp sgt i32 %250, %241
  %255 = select i1 %253, i1 %254, i1 false
  br i1 %255, label %256, label %258, !prof !302

256:                                              ; preds = %252, %239
  %257 = trunc i64 %240 to i32
  br label %258

258:                                              ; preds = %256, %252
  %259 = phi i32 [ %257, %256 ], [ %243, %252 ]
  %260 = phi i32 [ %248, %256 ], [ %242, %252 ]
  %261 = phi i32 [ %250, %256 ], [ %241, %252 ]
  %262 = add nuw nsw i64 %240, 1
  %263 = icmp eq i64 %262, %226
  br i1 %263, label %264, label %239, !prof !303, !llvm.loop !304

264:                                              ; preds = %258
  %265 = sext i32 %259 to i64
  %266 = getelementptr inbounds i32, ptr %20, i64 %265
  %267 = load i32, ptr %266, align 4, !tbaa !124
  store i32 %231, ptr %266, align 4, !tbaa !124
  store i32 %267, ptr %230, align 4, !tbaa !124
  %268 = add nuw nsw i64 %229, 1
  %269 = icmp eq i64 %232, %225
  br i1 %269, label %270, label %227, !prof !305, !llvm.loop !306

270:                                              ; preds = %264, %75, %218
  %271 = load i32, ptr %20, align 16, !tbaa !124
  %272 = icmp sgt i8 %72, 0
  br i1 %272, label %273, label %296, !prof !272

273:                                              ; preds = %270
  %274 = sext i32 %271 to i64
  br label %275

275:                                              ; preds = %273, %291
  %276 = phi i8 [ %72, %273 ], [ %292, %291 ]
  %277 = phi i64 [ 0, %273 ], [ %293, %291 ]
  %278 = getelementptr inbounds [30 x ptr], ptr %4, i64 0, i64 %277
  %279 = load ptr, ptr %278, align 8, !tbaa !141
  %280 = getelementptr inbounds i32, ptr %279, i64 %274
  %281 = load i32, ptr %280, align 4, !tbaa !124
  %282 = icmp eq i32 %281, -1
  br i1 %282, label %291, label %283, !prof !307

283:                                              ; preds = %275
  %284 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 3, i64 %277
  %285 = load i32, ptr %284, align 4, !tbaa !124
  %286 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %277
  %287 = load ptr, ptr %286, align 8, !tbaa !141
  %288 = call ptr @gen_rtx_REG(i32 noundef %285, i32 noundef %281) #9
  %289 = call zeroext i8 @validate_change(ptr noundef %0, ptr noundef %287, ptr noundef %288, i8 noundef zeroext 1) #9
  %290 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !271
  br label %291

291:                                              ; preds = %275, %283
  %292 = phi i8 [ %276, %275 ], [ %290, %283 ]
  %293 = add nuw nsw i64 %277, 1
  %294 = sext i8 %292 to i64
  %295 = icmp slt i64 %293, %294
  br i1 %295, label %275, label %296, !prof !280, !llvm.loop !308

296:                                              ; preds = %291, %270
  %297 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !309
  %298 = icmp sgt i8 %297, 0
  br i1 %298, label %299, label %322, !prof !310

299:                                              ; preds = %296
  %300 = sext i32 %271 to i64
  %301 = zext nneg i8 %297 to i64
  br label %302

302:                                              ; preds = %299, %320
  %303 = phi i64 [ %301, %299 ], [ %304, %320 ]
  %304 = add nsw i64 %303, -1
  %305 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 6, i64 %304
  %306 = load i8, ptr %305, align 1, !tbaa !133
  %307 = sext i8 %306 to i64
  %308 = getelementptr inbounds [30 x ptr], ptr %4, i64 0, i64 %307
  %309 = load ptr, ptr %308, align 8, !tbaa !141
  %310 = getelementptr inbounds i32, ptr %309, i64 %300
  %311 = load i32, ptr %310, align 4, !tbaa !124
  %312 = icmp eq i32 %311, -1
  br i1 %312, label %320, label %313, !prof !311

313:                                              ; preds = %302
  %314 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 3, i64 %307
  %315 = load i32, ptr %314, align 4, !tbaa !124
  %316 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 5, i64 %304
  %317 = load ptr, ptr %316, align 8, !tbaa !141
  %318 = call ptr @gen_rtx_REG(i32 noundef %315, i32 noundef %311) #9
  %319 = call zeroext i8 @validate_change(ptr noundef %0, ptr noundef %317, ptr noundef %318, i8 noundef zeroext 1) #9
  br label %320

320:                                              ; preds = %302, %313
  %321 = icmp ugt i64 %303, 1
  br i1 %321, label %302, label %322, !prof !312, !llvm.loop !313

322:                                              ; preds = %320, %296
  %323 = call i32 @apply_change_group() #9
  br label %324

324:                                              ; preds = %2, %322
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %3) #10
  ret void
}

; Function Attrs: optsize
declare i32 @asm_noperands(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @cselib_invalidate_rtx(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @optimize_bb_for_speed_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @true_regnum(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @side_effects_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @cselib_lookup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ix86_memory_move_cost(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ix86_register_move_cost(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !314 !PGOFuncName !315 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !133
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @rtx_cost(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @references_value_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @validate_unshare_change(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @cselib_reg_set_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @rtx_equal_for_cselib_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @extract_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @constrain_operands(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_fatal_insn_not_found(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: optsize
declare void @df_ref_change_reg_with_loc(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @regclass_for_constraint(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @lookup_constraint(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @reg_fits_class_p(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @insn_constraint_len(i8 noundef signext %0) unnamed_addr #5 !prof !316 !PGOFuncName !317 {
  %2 = icmp eq i8 %0, 89
  %3 = select i1 %2, i64 2, i64 1, !prof !318
  ret i64 %3
}

; Function Attrs: optsize
declare zeroext i8 @validate_change(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @get_first_label_num() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @max_label_num() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @df_get_live_in(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @reg_set_to_hard_reg_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @compute_use_by_pseudos(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_last_insn() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @prev_nonnote_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @reload_combine_note_use(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !319 !PGOFuncName !320 {
  br label %3

3:                                                ; preds = %14, %2
  %4 = phi ptr [ %0, %2 ], [ %15, %14 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !141
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
  %10 = load ptr, ptr %9, align 8, !tbaa !133
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 37
  br i1 %13, label %14, label %109

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %3

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !133
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
  %29 = load i8, ptr %28, align 1, !tbaa !133
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
  store i32 -1, ptr %37, align 8, !tbaa !156
  %38 = icmp ugt i64 %34, 1
  br i1 %38, label %33, label %142, !llvm.loop !321

39:                                               ; preds = %3
  %40 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !133
  %42 = load i32, ptr %41, align 8
  %43 = and i32 %42, 65535
  %44 = icmp eq i32 %43, 37
  br i1 %44, label %45, label %109

45:                                               ; preds = %39
  %46 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %41) #8
  %47 = icmp ult i32 %46, 53
  br i1 %47, label %142, label %48

48:                                               ; preds = %45
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1075, ptr noundef nonnull @.str.1) #9
  br label %142

49:                                               ; preds = %3
  %50 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !133
  %52 = load i32, ptr %51, align 8
  %53 = and i32 %52, 65535
  %54 = icmp eq i32 %53, 37
  br i1 %54, label %55, label %109

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %57 = load ptr, ptr %56, align 8, !tbaa !133
  %58 = load i32, ptr %57, align 8
  %59 = and i32 %58, 65535
  %60 = icmp eq i32 %59, 30
  br i1 %60, label %63, label %109

61:                                               ; preds = %3
  %62 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !141
  br label %63

63:                                               ; preds = %61, %55
  %64 = phi i32 [ %52, %55 ], [ %6, %61 ]
  %65 = phi ptr [ %57, %55 ], [ %62, %61 ]
  %66 = phi ptr [ %51, %55 ], [ %5, %61 ]
  %67 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %66) #8
  %68 = icmp slt i32 %67, 53
  br i1 %68, label %71, label %69

69:                                               ; preds = %63
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1095, ptr noundef nonnull @.str.1) #9
  %70 = load i32, ptr %66, align 8
  br label %71

71:                                               ; preds = %63, %69
  %72 = phi i32 [ %64, %63 ], [ %70, %69 ]
  %73 = sext i32 %67 to i64
  %74 = lshr i32 %72, 16
  %75 = and i32 %74, 255
  %76 = zext nneg i32 %75 to i64
  %77 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %73, i64 %76
  %78 = load i8, ptr %77, align 1, !tbaa !133
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
  store i32 -1, ptr %86, align 8, !tbaa !156
  %87 = icmp ugt i64 %83, 1
  br i1 %87, label %82, label %142, !llvm.loop !322

88:                                               ; preds = %71
  %89 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %73
  %90 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %73, i32 1
  %91 = load i32, ptr %90, align 8, !tbaa !156
  %92 = add nsw i32 %91, -1
  store i32 %92, ptr %90, align 8, !tbaa !156
  %93 = icmp slt i32 %91, 1
  br i1 %93, label %142, label %94

94:                                               ; preds = %88
  %95 = icmp eq i32 %92, 5
  %96 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %73, i32 2
  br i1 %95, label %102, label %97

97:                                               ; preds = %94
  %98 = load ptr, ptr %96, align 8, !tbaa !160
  %99 = tail call i32 @rtx_equal_p(ptr noundef %65, ptr noundef %98) #9
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  store i32 -1, ptr %90, align 8, !tbaa !156
  br label %142

102:                                              ; preds = %94
  store ptr %65, ptr %96, align 8, !tbaa !160
  %103 = load i32, ptr @reload_combine_ruid, align 4, !tbaa !124
  %104 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %73, i32 4
  store i32 %103, ptr %104, align 4, !tbaa !158
  br label %105

105:                                              ; preds = %97, %102
  %106 = zext nneg i32 %92 to i64
  %107 = getelementptr inbounds [6 x %struct.reg_use], ptr %89, i64 0, i64 %106
  store ptr %1, ptr %107, align 8, !tbaa !161
  %108 = getelementptr inbounds [6 x %struct.reg_use], ptr %89, i64 0, i64 %106, i32 1
  store ptr %4, ptr %108, align 8, !tbaa !163
  br label %142

109:                                              ; preds = %3, %8, %49, %55, %39, %16
  %110 = and i32 %6, 65535
  %111 = zext nneg i32 %110 to i64
  %112 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %111
  %113 = load ptr, ptr %112, align 8, !tbaa !141
  %114 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %111
  %115 = load i8, ptr %114, align 1, !tbaa !133
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
  %124 = load i8, ptr %123, align 1, !tbaa !133
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
  %129 = load ptr, ptr %128, align 8, !tbaa !133
  %130 = load i32, ptr %129, align 8, !tbaa !229
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %127
  %133 = zext nneg i32 %130 to i64
  br label %134

134:                                              ; preds = %132, %134
  %135 = phi i64 [ %133, %132 ], [ %136, %134 ]
  %136 = add nsw i64 %135, -1
  %137 = load ptr, ptr %128, align 8, !tbaa !133
  %138 = getelementptr inbounds %struct.rtvec_def, ptr %137, i64 0, i32 1, i64 %136
  tail call fastcc void @reload_combine_note_use(ptr noundef nonnull %138, ptr noundef %1) #8
  %139 = icmp ugt i64 %135, 1
  br i1 %139, label %134, label %140, !llvm.loop !323

140:                                              ; preds = %134, %127, %120, %125
  %141 = icmp sgt i64 %121, 1
  br i1 %141, label %120, label %142, !llvm.loop !324

142:                                              ; preds = %82, %33, %140, %22, %109, %101, %105, %88, %48, %45
  ret void
}

; Function Attrs: optsize
declare ptr @delete_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @remove_reg_equal_equiv_notes(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @reload_combine_note_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !prof !319 !PGOFuncName !325 {
  %4 = load i32, ptr %0, align 8
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 255
  %7 = and i32 %4, 65535
  %8 = icmp eq i32 %7, 39
  br i1 %8, label %9, label %21

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !133
  %12 = tail call fastcc i32 @rhs_regno(ptr noundef %11) #8
  %13 = load i32, ptr %11, align 8
  %14 = lshr i32 %13, 16
  %15 = and i32 %14, 255
  %16 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %17 = load i32, ptr %16, align 8, !tbaa !133
  %18 = tail call i32 @subreg_regno_offset(i32 noundef %12, i32 noundef %15, i32 noundef %17, i32 noundef %6) #9
  %19 = load ptr, ptr %10, align 8, !tbaa !133
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
  %35 = load ptr, ptr %34, align 8, !tbaa !133
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
  %42 = load i8, ptr %41, align 1, !tbaa !133
  %43 = zext i8 %42 to i32
  %44 = add i32 %29, -1
  %45 = add i32 %44, %43
  %46 = icmp slt i32 %45, %29
  br i1 %46, label %74, label %47

47:                                               ; preds = %38
  %48 = load i32, ptr @reload_combine_ruid, align 4, !tbaa !124
  %49 = sext i32 %45 to i64
  br label %50

50:                                               ; preds = %47, %50
  %51 = phi i64 [ %49, %47 ], [ %54, %50 ]
  %52 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %51, i32 1
  store i32 -1, ptr %52, align 8, !tbaa !156
  %53 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %51, i32 3
  store i32 %48, ptr %53, align 8, !tbaa !153
  %54 = add nsw i64 %51, -1
  %55 = icmp sgt i64 %51, %39
  br i1 %55, label %50, label %74, !llvm.loop !326

56:                                               ; preds = %33
  %57 = sext i32 %29 to i64
  %58 = zext nneg i32 %6 to i64
  %59 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %57, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !133
  %61 = zext i8 %60 to i32
  %62 = add i32 %29, -1
  %63 = add i32 %62, %61
  %64 = icmp slt i32 %63, %29
  br i1 %64, label %74, label %65

65:                                               ; preds = %56
  %66 = load i32, ptr @reload_combine_ruid, align 4, !tbaa !124
  %67 = sext i32 %63 to i64
  br label %68

68:                                               ; preds = %65, %68
  %69 = phi i64 [ %67, %65 ], [ %72, %68 ]
  %70 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %69, i32 3
  store i32 %66, ptr %70, align 8, !tbaa !153
  %71 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %69, i32 1
  store i32 6, ptr %71, align 8, !tbaa !156
  %72 = add nsw i64 %69, -1
  %73 = icmp sgt i64 %69, %57
  br i1 %73, label %68, label %74, !llvm.loop !327

74:                                               ; preds = %50, %68, %38, %56, %21
  ret void
}

; Function Attrs: optsize
declare i32 @condjump_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @condjump_in_parallel_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @subreg_regno_offset(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @dbg_cnt(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_int_mode(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @have_add2_insn(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @have_insn_for(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @next_nonnote_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @trunc_int_for_mode(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @move2add_note_store(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !prof !328 !PGOFuncName !329 {
  %4 = load i32, ptr %0, align 8
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 255
  %7 = and i32 %4, 65535
  %8 = icmp eq i32 %7, 39
  br i1 %8, label %9, label %22, !prof !330

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !133
  %12 = tail call fastcc i32 @rhs_regno(ptr noundef %11) #8
  %13 = load i32, ptr %11, align 8
  %14 = lshr i32 %13, 16
  %15 = and i32 %14, 255
  %16 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %17 = load i32, ptr %16, align 8, !tbaa !133
  %18 = tail call i32 @subreg_regno_offset(i32 noundef %12, i32 noundef %15, i32 noundef %17, i32 noundef %6) #9
  %19 = tail call i32 @subreg_nregs(ptr noundef nonnull %0) #9
  %20 = load ptr, ptr %10, align 8, !tbaa !133
  %21 = load i32, ptr %20, align 8
  br label %22

22:                                               ; preds = %9, %3
  %23 = phi i32 [ %21, %9 ], [ %4, %3 ]
  %24 = phi i32 [ %19, %9 ], [ 0, %3 ]
  %25 = phi i32 [ %18, %9 ], [ 0, %3 ]
  %26 = phi ptr [ %20, %9 ], [ %0, %3 ]
  %27 = trunc i32 %23 to i16
  switch i16 %27, label %192 [
    i16 43, label %28
    i16 37, label %41
  ], !prof !331

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !133
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 65534
  %33 = add nsw i32 %32, -74
  %34 = icmp ult i32 %33, 4
  br i1 %34, label %35, label %192, !prof !332

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !133
  %38 = tail call fastcc i32 @rhs_regno(ptr noundef %37) #8
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds [53 x i32], ptr @reg_set_luid, i64 0, i64 %39
  store i32 0, ptr %40, align 4, !tbaa !124
  br label %192

41:                                               ; preds = %22
  %42 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %26) #8
  %43 = add i32 %42, %25
  %44 = icmp eq i32 %24, 0
  br i1 %44, label %45, label %51, !prof !333

45:                                               ; preds = %41
  %46 = zext i32 %43 to i64
  %47 = zext nneg i32 %6 to i64
  %48 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %46, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !133
  %50 = zext i8 %49 to i32
  br label %51

51:                                               ; preds = %45, %41
  %52 = phi i32 [ %24, %41 ], [ %50, %45 ]
  %53 = lshr i32 %23, 16
  %54 = and i32 %53, 255
  %55 = zext nneg i32 %54 to i64
  %56 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !133
  %58 = and i8 %57, -2
  %59 = icmp eq i8 %58, 2
  %60 = icmp eq i32 %52, 1
  %61 = select i1 %59, i1 %60, i1 false
  br i1 %61, label %62, label %181, !prof !334

62:                                               ; preds = %51
  %63 = load i32, ptr %1, align 8
  %64 = and i32 %63, 65535
  %65 = icmp eq i32 %64, 23
  br i1 %65, label %66, label %181, !prof !335

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !133
  %69 = load i32, ptr %68, align 8
  %70 = trunc i32 %69 to i16
  switch i16 %70, label %71 [
    i16 120, label %181
    i16 40, label %181
  ], !prof !336

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %73 = load ptr, ptr %72, align 8, !tbaa !133
  %74 = load i32, ptr %73, align 8
  %75 = trunc i32 %74 to i16
  switch i16 %75, label %135 [
    i16 49, label %76
    i16 37, label %142
    i16 30, label %125
  ], !prof !337

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.rtx_def, ptr %73, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !133
  %79 = load i32, ptr %78, align 8
  %80 = and i32 %79, 65535
  %81 = icmp eq i32 %80, 37
  br i1 %81, label %82, label %135, !prof !338

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.rtx_def, ptr %73, i64 0, i32 1, i32 0, i32 0, i64 1
  %84 = load ptr, ptr %83, align 8, !tbaa !133
  %85 = load i32, ptr %84, align 8
  %86 = trunc i32 %85 to i16
  switch i16 %86, label %135 [
    i16 30, label %87
    i16 37, label %89
  ], !prof !339

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.rtx_def, ptr %84, i64 0, i32 1
  br label %138

89:                                               ; preds = %82
  %90 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %84) #8
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds [53 x i32], ptr @reg_set_luid, i64 0, i64 %91
  %93 = load i32, ptr %92, align 4, !tbaa !124
  %94 = load i32, ptr @move2add_last_label_luid, align 4, !tbaa !124
  %95 = icmp sgt i32 %93, %94
  br i1 %95, label %96, label %135, !prof !340

96:                                               ; preds = %89
  %97 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %55
  %98 = load i8, ptr %97, align 1, !tbaa !133
  %99 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %84) #8
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds [53 x i32], ptr @reg_mode, i64 0, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !124
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !133
  %106 = icmp ugt i8 %98, %105
  br i1 %106, label %135, label %107, !prof !341

107:                                              ; preds = %96
  %108 = getelementptr inbounds [53 x i32], ptr @reg_base_reg, i64 0, i64 %100
  %109 = load i32, ptr %108, align 4, !tbaa !124
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113, !prof !342

111:                                              ; preds = %107
  %112 = getelementptr inbounds [53 x i64], ptr @reg_offset, i64 0, i64 %100
  br label %138

113:                                              ; preds = %107
  %114 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %78) #8
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds [53 x i32], ptr @reg_set_luid, i64 0, i64 %115
  %117 = load i32, ptr %116, align 4, !tbaa !124
  %118 = icmp sgt i32 %117, %94
  br i1 %118, label %119, label %135, !prof !343

119:                                              ; preds = %113
  %120 = getelementptr inbounds [53 x i32], ptr @reg_base_reg, i64 0, i64 %115
  %121 = load i32, ptr %120, align 4, !tbaa !124
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %135, !prof !344

123:                                              ; preds = %119
  %124 = getelementptr inbounds [53 x i64], ptr @reg_offset, i64 0, i64 %115
  br label %138

125:                                              ; preds = %71
  %126 = zext i32 %43 to i64
  %127 = getelementptr inbounds [53 x i32], ptr @reg_base_reg, i64 0, i64 %126
  store i32 -1, ptr %127, align 4, !tbaa !124
  %128 = getelementptr inbounds %struct.rtx_def, ptr %73, i64 0, i32 1
  %129 = load i64, ptr %128, align 8, !tbaa !133
  %130 = getelementptr inbounds [53 x i64], ptr @reg_offset, i64 0, i64 %126
  store i64 %129, ptr %130, align 8, !tbaa !138
  %131 = load i32, ptr @move2add_last_label_luid, align 4, !tbaa !124
  %132 = add nsw i32 %131, 1
  %133 = getelementptr inbounds [53 x i32], ptr @reg_set_luid, i64 0, i64 %126
  store i32 %132, ptr %133, align 4, !tbaa !124
  %134 = getelementptr inbounds [53 x i32], ptr @reg_mode, i64 0, i64 %126
  store i32 %6, ptr %134, align 4, !tbaa !124
  br label %192

135:                                              ; preds = %96, %156, %82, %71, %76, %89, %113, %119
  %136 = zext i32 %43 to i64
  %137 = getelementptr inbounds [53 x i32], ptr @reg_set_luid, i64 0, i64 %136
  store i32 0, ptr %137, align 4, !tbaa !124
  br label %192

138:                                              ; preds = %123, %111, %87
  %139 = phi ptr [ %88, %87 ], [ %112, %111 ], [ %124, %123 ]
  %140 = phi ptr [ %78, %87 ], [ %78, %111 ], [ %84, %123 ]
  %141 = load i64, ptr %139, align 8, !tbaa !133
  br label %142

142:                                              ; preds = %138, %71
  %143 = phi ptr [ %73, %71 ], [ %140, %138 ]
  %144 = phi i64 [ 0, %71 ], [ %141, %138 ]
  %145 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %143) #8
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [53 x i32], ptr @reg_set_luid, i64 0, i64 %146
  %148 = load i32, ptr %147, align 4, !tbaa !124
  %149 = load i32, ptr @move2add_last_label_luid, align 4, !tbaa !124
  %150 = icmp sgt i32 %148, %149
  br i1 %150, label %156, label %151, !prof !345

151:                                              ; preds = %142
  %152 = getelementptr inbounds [53 x i32], ptr @reg_base_reg, i64 0, i64 %146
  store i32 %145, ptr %152, align 4, !tbaa !124
  %153 = getelementptr inbounds [53 x i64], ptr @reg_offset, i64 0, i64 %146
  store i64 0, ptr %153, align 8, !tbaa !138
  %154 = load i32, ptr @move2add_luid, align 4, !tbaa !124
  store i32 %154, ptr %147, align 4, !tbaa !124
  %155 = getelementptr inbounds [53 x i32], ptr @reg_mode, i64 0, i64 %146
  store i32 %6, ptr %155, align 4, !tbaa !124
  br label %170

156:                                              ; preds = %142
  %157 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %55
  %158 = load i8, ptr %157, align 1, !tbaa !133
  %159 = getelementptr inbounds [53 x i32], ptr @reg_mode, i64 0, i64 %146
  %160 = load i32, ptr %159, align 4, !tbaa !124
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %161
  %163 = load i8, ptr %162, align 1, !tbaa !133
  %164 = icmp ugt i8 %158, %163
  br i1 %164, label %135, label %165, !prof !346

165:                                              ; preds = %156
  %166 = getelementptr inbounds [53 x i32], ptr @reg_base_reg, i64 0, i64 %146
  %167 = load i32, ptr %166, align 4, !tbaa !124
  %168 = getelementptr inbounds [53 x i64], ptr @reg_offset, i64 0, i64 %146
  %169 = load i64, ptr %168, align 8, !tbaa !138
  br label %170

170:                                              ; preds = %165, %151
  %171 = phi i64 [ %169, %165 ], [ 0, %151 ]
  %172 = phi i32 [ %167, %165 ], [ %145, %151 ]
  %173 = phi i32 [ %148, %165 ], [ %154, %151 ]
  %174 = zext i32 %43 to i64
  %175 = getelementptr inbounds [53 x i32], ptr @reg_mode, i64 0, i64 %174
  store i32 %6, ptr %175, align 4, !tbaa !124
  %176 = getelementptr inbounds [53 x i32], ptr @reg_set_luid, i64 0, i64 %174
  store i32 %173, ptr %176, align 4, !tbaa !124
  %177 = getelementptr inbounds [53 x i32], ptr @reg_base_reg, i64 0, i64 %174
  store i32 %172, ptr %177, align 4, !tbaa !124
  %178 = add nsw i64 %171, %144
  %179 = tail call i64 @trunc_int_for_mode(i64 noundef %178, i32 noundef %54) #9
  %180 = getelementptr inbounds [53 x i64], ptr @reg_offset, i64 0, i64 %174
  store i64 %179, ptr %180, align 8, !tbaa !138
  br label %192

181:                                              ; preds = %51, %66, %66, %62
  %182 = add i32 %52, %43
  %183 = icmp ult i32 %43, %182
  br i1 %183, label %184, label %192, !prof !347

184:                                              ; preds = %181
  %185 = zext i32 %43 to i64
  %186 = shl nuw nsw i64 %185, 2
  %187 = getelementptr i8, ptr @reg_set_luid, i64 %186
  %188 = add i32 %52, -1
  %189 = zext i32 %188 to i64
  %190 = shl nuw nsw i64 %189, 2
  %191 = add nuw nsw i64 %190, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %187, i8 0, i64 %191, i1 false), !tbaa !124
  br label %192

192:                                              ; preds = %184, %181, %28, %135, %125, %170, %22, %35
  ret void
}

; Function Attrs: optsize
declare i32 @any_condjump_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fis_get_condition(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @reg_set_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @subreg_nregs(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_handle_postreload() #7 !prof !123 !PGOFuncName !348 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !124
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @reload_completed, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false, !prof !349
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_postreload() #0 !prof !123 !PGOFuncName !350 {
  %1 = tail call zeroext i8 @dbg_cnt(i32 noundef 22) #9
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %9, label %3, !prof !128

3:                                                ; preds = %0
  %4 = tail call ptr @get_insns() #9
  tail call void @reload_cse_regs(ptr noundef %4) #8
  %5 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !124
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7, !prof !349

7:                                                ; preds = %3
  %8 = tail call zeroext i8 @purge_all_dead_edges() #9
  br label %9

9:                                                ; preds = %3, %7, %0
  ret i32 0
}

; Function Attrs: optsize
declare ptr @get_insns() local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @purge_all_dead_edges() local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!122}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 82626029451}
!4 = !{!"MaxCount", i64 1293550144}
!5 = !{!"MaxInternalCount", i64 1293550144}
!6 = !{!"MaxFunctionCount", i64 1044599277}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1293550144, i32 1}
!14 = !{i32 100000, i64 238791438, i32 19}
!15 = !{i32 200000, i64 112342198, i32 73}
!16 = !{i32 300000, i64 73330888, i32 164}
!17 = !{i32 400000, i64 47991750, i32 301}
!18 = !{i32 500000, i64 28421743, i32 535}
!19 = !{i32 600000, i64 17738858, i32 910}
!20 = !{i32 700000, i64 10364112, i32 1511}
!21 = !{i32 800000, i64 5164088, i32 2659}
!22 = !{i32 900000, i64 1953302, i32 5305}
!23 = !{i32 950000, i64 847371, i32 8456}
!24 = !{i32 990000, i64 164662, i32 16525}
!25 = !{i32 999000, i64 16513, i32 27926}
!26 = !{i32 999900, i64 2384, i32 37409}
!27 = !{i32 999990, i64 310, i32 44222}
!28 = !{i32 999999, i64 42, i32 49712}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121}
!36 = !{ptr @reload_cse_regs, ptr @reload_cse_regs_1, i64 13303}
!37 = !{ptr @reload_cse_regs, ptr @reload_combine, i64 6652}
!38 = !{ptr @reload_cse_regs, ptr @reload_cse_move2add, i64 6652}
!39 = !{ptr @reload_cse_regs_1, ptr @gen_rtx_REG, i64 13304}
!40 = !{ptr @reload_cse_regs_1, ptr @cselib_init, i64 13304}
!41 = !{ptr @reload_cse_regs_1, ptr @init_alias_analysis, i64 13304}
!42 = !{ptr @reload_cse_regs_1, ptr @reload_cse_simplify, i64 2285386}
!43 = !{ptr @reload_cse_regs_1, ptr @cselib_process_insn, i64 3351872}
!44 = !{ptr @reload_cse_regs_1, ptr @end_alias_analysis, i64 13304}
!45 = !{ptr @reload_cse_regs_1, ptr @cselib_finish, i64 13304}
!46 = !{ptr @reload_combine, ptr @get_first_label_num, i64 1}
!47 = !{ptr @reload_combine, ptr @max_label_num, i64 1}
!48 = !{ptr @reload_combine, ptr @xmalloc, i64 1}
!49 = !{ptr @reload_combine, ptr @df_get_live_in, i64 6}
!50 = !{ptr @reload_combine, ptr @reg_set_to_hard_reg_set, i64 6}
!51 = !{ptr @reload_combine, ptr @compute_use_by_pseudos, i64 6}
!52 = !{ptr @reload_combine, ptr @get_last_insn, i64 1}
!53 = !{ptr @reload_combine, ptr @single_set_2, i64 2}
!54 = !{ptr @reload_combine, ptr @rhs_regno, i64 37}
!55 = !{ptr @reload_combine, ptr @note_stores, i64 4}
!56 = !{ptr @reload_combine, ptr @condjump_p, i64 1}
!57 = !{ptr @reload_combine, ptr @reload_combine_note_use, i64 4}
!58 = !{ptr @reload_combine, ptr @free, i64 1}
!59 = !{ptr @reload_cse_move2add, ptr @rhs_regno, i64 627443}
!60 = !{ptr @reload_cse_move2add, ptr @dbg_cnt, i64 35771}
!61 = !{ptr @reload_cse_move2add, ptr @gen_int_mode, i64 37990}
!62 = !{ptr @reload_cse_move2add, ptr @optimize_bb_for_speed_p, i64 3434}
!63 = !{ptr @reload_cse_move2add, ptr @validate_change, i64 34648}
!64 = !{ptr @reload_cse_move2add, ptr @rtx_cost, i64 6688}
!65 = !{ptr @reload_cse_move2add, ptr @have_add2_insn, i64 3}
!66 = !{ptr @reload_cse_move2add, ptr @gen_rtx_fmt_ee_stat, i64 65725}
!67 = !{ptr @reload_cse_move2add, ptr @have_insn_for, i64 40223}
!68 = !{ptr @reload_cse_move2add, ptr @gen_rtx_REG, i64 34556}
!69 = !{ptr @reload_cse_move2add, ptr @gen_rtx_fmt_e_stat, i64 34556}
!70 = !{ptr @reload_cse_move2add, ptr @next_nonnote_insn, i64 382}
!71 = !{ptr @reload_cse_move2add, ptr @single_set_2, i64 1}
!72 = !{ptr @reload_cse_move2add, ptr @delete_insn, i64 2}
!73 = !{ptr @reload_cse_move2add, ptr @trunc_int_for_mode, i64 3}
!74 = !{ptr @reload_cse_move2add, ptr @note_stores, i64 1138178}
!75 = !{ptr @reload_cse_move2add, ptr @any_condjump_p, i64 1138178}
!76 = !{ptr @reload_cse_move2add, ptr @fis_get_condition, i64 153183}
!77 = !{ptr @reload_cse_move2add, ptr @reg_set_p, i64 36095}
!78 = !{ptr @reload_cse_move2add, ptr @move2add_note_store, i64 31164}
!79 = !{ptr @reload_cse_simplify, ptr @reload_cse_simplify_set, i64 2222835}
!80 = !{ptr @reload_cse_simplify, ptr @reload_cse_noop_set_p, i64 2213233}
!81 = !{ptr @reload_cse_simplify, ptr @delete_insn_and_edges, i64 4158}
!82 = !{ptr @reload_cse_simplify, ptr @apply_change_group, i64 2456}
!83 = !{ptr @reload_cse_simplify, ptr @reload_cse_simplify_operands, i64 2212259}
!84 = !{ptr @reload_cse_simplify, ptr @asm_noperands, i64 149203}
!85 = !{ptr @reload_cse_simplify, ptr @cselib_invalidate_rtx, i64 5}
!86 = !{ptr @reload_cse_simplify_set, ptr @optimize_bb_for_speed_p, i64 2224042}
!87 = !{ptr @reload_cse_simplify_set, ptr @true_regnum, i64 3335376}
!88 = !{ptr @reload_cse_simplify_set, ptr @side_effects_p, i64 1239695}
!89 = !{ptr @reload_cse_simplify_set, ptr @cselib_lookup, i64 1034529}
!90 = !{ptr @reload_cse_simplify_set, ptr @ix86_memory_move_cost, i64 17806}
!91 = !{ptr @reload_cse_simplify_set, ptr @rhs_regno, i64 4281}
!92 = !{ptr @reload_cse_simplify_set, ptr @ix86_register_move_cost, i64 4281}
!93 = !{ptr @reload_cse_simplify_set, ptr @rtx_cost, i64 16329}
!94 = !{ptr @reload_cse_simplify_set, ptr @references_value_p, i64 6383}
!95 = !{ptr @reload_cse_simplify_set, ptr @validate_unshare_change, i64 2493}
!96 = !{ptr @reload_cse_noop_set_p, ptr @cselib_reg_set_mode, i64 2214384}
!97 = !{ptr @reload_cse_noop_set_p, ptr @rtx_equal_for_cselib_p, i64 1344131}
!98 = !{ptr @reload_cse_simplify_operands, ptr @extract_insn, i64 2213428}
!99 = !{ptr @reload_cse_simplify_operands, ptr @constrain_operands, i64 1676324}
!100 = !{ptr @reload_cse_simplify_operands, ptr @_fatal_insn_not_found, i64 1}
!101 = !{ptr @reload_cse_simplify_operands, ptr @cselib_lookup, i64 3484133}
!102 = !{ptr @reload_cse_simplify_operands, ptr @rhs_regno, i64 948540}
!103 = !{ptr @reload_cse_simplify_operands, ptr @true_regnum, i64 3485955}
!104 = !{ptr @reload_cse_simplify_operands, ptr @df_ref_change_reg_with_loc, i64 10921}
!105 = !{ptr @reload_cse_simplify_operands, ptr @lookup_constraint, i64 72338}
!106 = !{ptr @reload_cse_simplify_operands, ptr @regclass_for_constraint, i64 72338}
!107 = !{ptr @reload_cse_simplify_operands, ptr @reg_fits_class_p, i64 140857}
!108 = !{ptr @reload_cse_simplify_operands, ptr @optimize_bb_for_speed_p, i64 93098}
!109 = !{ptr @reload_cse_simplify_operands, ptr @rtx_cost, i64 93098}
!110 = !{ptr @reload_cse_simplify_operands, ptr @insn_constraint_len, i64 349471}
!111 = !{ptr @reload_cse_simplify_operands, ptr @gen_rtx_REG, i64 416}
!112 = !{ptr @reload_cse_simplify_operands, ptr @validate_change, i64 416}
!113 = !{ptr @reload_cse_simplify_operands, ptr @apply_change_group, i64 1676324}
!114 = !{ptr @move2add_note_store, ptr @rhs_regno, i64 789377}
!115 = !{ptr @move2add_note_store, ptr @subreg_regno_offset, i64 1}
!116 = !{ptr @move2add_note_store, ptr @subreg_nregs, i64 1}
!117 = !{ptr @move2add_note_store, ptr @trunc_int_for_mode, i64 64904}
!118 = !{ptr @rest_of_handle_postreload, ptr @dbg_cnt, i64 6652}
!119 = !{ptr @rest_of_handle_postreload, ptr @get_insns, i64 6651}
!120 = !{ptr @rest_of_handle_postreload, ptr @reload_cse_regs, i64 6651}
!121 = !{ptr @rest_of_handle_postreload, ptr @purge_all_dead_edges, i64 1}
!122 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!123 = !{!"function_entry_count", i64 6652}
!124 = !{!125, !125, i64 0}
!125 = !{!"int", !126, i64 0}
!126 = !{!"omnipotent char", !127, i64 0}
!127 = !{!"Simple C/C++ TBAA"}
!128 = !{!"branch_weights", i32 1, i32 6653}
!129 = !{!"function_entry_count", i64 13304}
!130 = !{!"postreload.c:reload_cse_regs_1"}
!131 = !{!"branch_weights", i32 1, i32 13304}
!132 = !{!"branch_weights", i32 -762999621, i32 1648209972}
!133 = !{!126, !126, i64 0}
!134 = !{!"branch_weights", i32 13304, i32 3338820}
!135 = distinct !{!135, !136}
!136 = !{!"llvm.loop.mustprogress"}
!137 = !{!"postreload.c:reload_combine"}
!138 = !{!139, !139, i64 0}
!139 = !{!"long", !126, i64 0}
!140 = distinct !{!140, !136}
!141 = !{!142, !142, i64 0}
!142 = !{!"any pointer", !126, i64 0}
!143 = !{!144, !142, i64 8}
!144 = !{!"function", !142, i64 0, !142, i64 8, !142, i64 16, !142, i64 24, !142, i64 32, !142, i64 40, !142, i64 48, !142, i64 56, !142, i64 64, !142, i64 72, !142, i64 80, !142, i64 88, !142, i64 96, !125, i64 104, !125, i64 108, !125, i64 112, !125, i64 116, !125, i64 120, !125, i64 124, !142, i64 128, !125, i64 136, !125, i64 137, !125, i64 138, !125, i64 138, !125, i64 138, !125, i64 138, !125, i64 138, !125, i64 138, !125, i64 138, !125, i64 139, !125, i64 139, !125, i64 139, !125, i64 139, !125, i64 139, !125, i64 139, !125, i64 139}
!145 = !{!146, !142, i64 8}
!146 = !{!"control_flow_graph", !142, i64 0, !142, i64 8, !142, i64 16, !125, i64 24, !125, i64 28, !125, i64 32, !142, i64 40, !125, i64 48, !126, i64 52, !126, i64 60, !125, i64 68, !125, i64 72}
!147 = !{!148, !142, i64 48}
!148 = !{!"basic_block_def", !142, i64 0, !142, i64 8, !142, i64 16, !142, i64 24, !126, i64 32, !142, i64 48, !142, i64 56, !126, i64 64, !139, i64 72, !125, i64 80, !125, i64 84, !125, i64 88, !125, i64 92, !125, i64 96}
!149 = !{!146, !142, i64 0}
!150 = !{!151, !142, i64 0}
!151 = !{!"rtl_bb_info", !142, i64 0, !142, i64 8, !142, i64 16, !142, i64 24, !125, i64 32}
!152 = distinct !{!152, !136}
!153 = !{!154, !125, i64 112}
!154 = !{!"", !126, i64 0, !125, i64 96, !142, i64 104, !125, i64 112, !125, i64 116}
!155 = distinct !{!155, !136}
!156 = !{!154, !125, i64 96}
!157 = distinct !{!157, !136}
!158 = !{!154, !125, i64 116}
!159 = distinct !{!159, !136}
!160 = !{!154, !142, i64 104}
!161 = !{!162, !142, i64 0}
!162 = !{!"reg_use", !142, i64 0, !142, i64 8}
!163 = !{!162, !142, i64 8}
!164 = distinct !{!164, !136}
!165 = distinct !{!165, !136}
!166 = distinct !{!166, !136}
!167 = distinct !{!167, !136}
!168 = distinct !{!168, !136}
!169 = distinct !{!169, !136}
!170 = distinct !{!170, !136}
!171 = distinct !{!171, !136}
!172 = !{!"postreload.c:reload_cse_move2add"}
!173 = !{!"branch_weights", i32 1, i32 6652}
!174 = !{!"branch_weights", i32 1092588139, i32 328894016, i32 -2051690730, i32 2664, i32 552655080, i32 247522132}
!175 = !{!"branch_weights", i32 1033846, i32 107938}
!176 = !{!"branch_weights", i32 552227, i32 481620}
!177 = !{!"branch_weights", i32 41532, i32 510696}
!178 = !{!"branch_weights", i32 43722576, i32 271803625}
!179 = !{!"branch_weights", i32 1, i32 35777}
!180 = !{!"branch_weights", i32 -816180595, i32 601358336, i32 609348978}
!181 = !{!"branch_weights", i32 3432, i32 1157}
!182 = !{!"branch_weights", i32 89, i32 3344}
!183 = !{!"branch_weights", i32 89, i32 1}
!184 = !{!"branch_weights", i32 1, i32 3344}
!185 = !{!"branch_weights", i32 3472, i32 424688}
!186 = !{!"branch_weights", i32 312, i32 5634}
!187 = !{!"branch_weights", i32 1, i32 5634}
!188 = !{!"branch_weights", i32 4842, i32 793}
!189 = !{!"branch_weights", i32 127, i32 760833}
!190 = distinct !{!190, !136}
!191 = !{!"branch_weights", i32 384, i32 4266}
!192 = !{!"branch_weights", i32 384, i32 1}
!193 = !{!"branch_weights", i32 7, i32 3073}
!194 = !{!"branch_weights", i32 1, i32 384}
!195 = !{!"branch_weights", i32 625712648, i32 82554912}
!196 = !{!"branch_weights", i32 276, i32 1}
!197 = !{!"branch_weights", i32 -2147483648, i32 0}
!198 = !{!"branch_weights", i32 32, i32 291}
!199 = !{!"branch_weights", i32 7, i32 26}
!200 = !{!"branch_weights", i32 6, i32 2}
!201 = !{!"branch_weights", i32 4, i32 3}
!202 = !{!"branch_weights", i32 1, i32 4}
!203 = !{!"branch_weights", i32 4, i32 1}
!204 = !{!"branch_weights", i32 0, i32 -2147483648}
!205 = !{!"branch_weights", i32 789375, i32 348974}
!206 = !{!"branch_weights", i32 1, i32 348974}
!207 = !{!"branch_weights", i32 348974, i32 0}
!208 = distinct !{!208, !136}
!209 = !{!"branch_weights", i32 985144, i32 153206}
!210 = !{!"branch_weights", i32 3026, i32 150181}
!211 = !{!"branch_weights", i32 64542, i32 85640}
!212 = !{!"branch_weights", i32 36101, i32 28442}
!213 = !{!"branch_weights", i32 36101, i32 1}
!214 = !{!"branch_weights", i32 72203, i32 1}
!215 = !{!"branch_weights", i32 31173, i32 4929}
!216 = !{!"branch_weights", i32 92861, i32 1045489}
!217 = !{!"branch_weights", i32 371441, i32 4550141}
!218 = !{!"branch_weights", i32 92861, i32 4828720}
!219 = distinct !{!219, !136}
!220 = !{!"branch_weights", i32 6652, i32 1668415}
!221 = distinct !{!221, !136}
!222 = !{!"function_entry_count", i64 2285555}
!223 = !{!"postreload.c:reload_cse_simplify"}
!224 = !{!"branch_weights", i32 112468172, i32 -804224615, i32 251648865}
!225 = !{i32 0, i32 2}
!226 = !{!"branch_weights", i32 -1764685120, i32 2996352}
!227 = !{!"branch_weights", i32 2064234, i32 2991}
!228 = !{!"branch_weights", i32 1, i32 149204}
!229 = !{!230, !125, i64 0}
!230 = !{!"rtvec_def", !125, i64 0, !126, i64 8}
!231 = distinct !{!231, !136}
!232 = !{!"branch_weights", i32 127, i32 1}
!233 = !{!"branch_weights", i32 37342464, i32 -1605085075, i32 -1659536098}
!234 = !{!"branch_weights", i32 147161, i32 2}
!235 = !{!"branch_weights", i32 2, i32 7}
!236 = !{!"branch_weights", i32 18776641, i32 127}
!237 = distinct !{!237, !136}
!238 = !{!"branch_weights", i32 149202, i32 1}
!239 = !{!"branch_weights", i32 154373, i32 146339}
!240 = !{!"branch_weights", i32 151509, i32 149202}
!241 = distinct !{!241, !136}
!242 = !{!"branch_weights", i32 115143, i32 2147368505}
!243 = !{!"function_entry_count", i64 2224042}
!244 = !{!"postreload.c:reload_cse_simplify_set"}
!245 = !{!"branch_weights", i32 984348, i32 1239696}
!246 = !{!"branch_weights", i32 1111336, i32 128361}
!247 = !{!"branch_weights", i32 76805, i32 1034532}
!248 = !{!"branch_weights", i32 1006779, i32 27754}
!249 = !{!"branch_weights", i32 98962704, i32 177161843, i32 9948}
!250 = !{!"branch_weights", i32 1, i32 27753}
!251 = !{!252, !142, i64 8}
!252 = !{!"elt_loc_list", !142, i64 0, !142, i64 8, !142, i64 16}
!253 = !{!"branch_weights", i32 6383, i32 35073}
!254 = !{!"branch_weights", i32 6383, i32 1}
!255 = !{!"branch_weights", i32 4280, i32 30794}
!256 = !{!"branch_weights", i32 2492, i32 8171}
!257 = !{!"branch_weights", i32 6277, i32 1895}
!258 = !{!"branch_weights", i32 36, i32 6242}
!259 = !{!"branch_weights", i32 36, i32 1}
!260 = !{!"branch_weights", i32 27753, i32 13702}
!261 = distinct !{!261, !136}
!262 = !{!"function_entry_count", i64 2214384}
!263 = !{!"postreload.c:reload_cse_noop_set_p"}
!264 = !{!"branch_weights", i32 1344132, i32 870254}
!265 = !{!"function_entry_count", i64 2213428}
!266 = !{!"postreload.c:reload_cse_simplify_operands"}
!267 = !{!268, !126, i64 1088}
!268 = !{!"recog_data", !126, i64 0, !126, i64 240, !126, i64 480, !126, i64 720, !126, i64 840, !126, i64 960, !126, i64 1072, !126, i64 1086, !126, i64 1087, !126, i64 1088, !126, i64 1089, !142, i64 1120}
!269 = !{!"branch_weights", i32 879260228, i32 -1550756153}
!270 = !{!"branch_weights", i32 1, i32 1676327}
!271 = !{!268, !126, i64 1086}
!272 = !{!"branch_weights", i32 1676326, i32 1}
!273 = !{!"branch_weights", i32 1821, i32 3484140}
!274 = !{!"branch_weights", i32 1187, i32 -157374118}
!275 = !{!"branch_weights", i32 2498701, i32 985440}
!276 = !{!"branch_weights", i32 1, i32 985439}
!277 = !{!"branch_weights", i32 937622, i32 929932}
!278 = !{!"branch_weights", i32 985439, i32 882114}
!279 = distinct !{!279, !136}
!280 = !{!"branch_weights", i32 1809634, i32 1676326}
!281 = distinct !{!281, !136}
!282 = !{!"branch_weights", i32 3485959, i32 1}
!283 = !{!"branch_weights", i32 1, i32 3485959}
!284 = !{!"branch_weights", i32 -2134185668, i32 1110211836, i32 193145707, i32 616408}
!285 = !{!"branch_weights", i32 3485959, i32 79674846}
!286 = distinct !{!286, !136}
!287 = !{!"branch_weights", i32 1645476, i32 1840485}
!288 = !{!"branch_weights", i32 -1126553963, i32 1410037543, i32 2487}
!289 = !{!"branch_weights", i32 67493379, i32 10921}
!290 = !{!"branch_weights", i32 28993, i32 1, i32 1, i32 104, i32 1, i32 1, i32 1, i32 18267, i32 50, i32 230, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 3, i32 1, i32 5, i32 1, i32 1, i32 1, i32 5245, i32 1713, i32 3, i32 1, i32 7, i32 5, i32 3, i32 1, i32 1, i32 1, i32 1, i32 1, i32 10297, i32 3735, i32 14918, i32 45541, i32 10921}
!291 = !{!"branch_weights", i32 56455, i32 7}
!292 = !{!"branch_weights", i32 37154, i32 19302}
!293 = !{!"branch_weights", i32 18658, i32 645}
!294 = !{!"branch_weights", i32 1, i32 18658}
!295 = !{!"branch_weights", i32 1273667, i32 66230632}
!296 = distinct !{!296, !136}
!297 = distinct !{!297, !136}
!298 = !{!"branch_weights", i32 4613290, i32 10311753}
!299 = !{!"branch_weights", i32 1676326, i32 13248716}
!300 = distinct !{!300, !136}
!301 = !{!"branch_weights", i32 5887, i32 32923810}
!302 = !{!"branch_weights", i32 4265, i32 -164763218}
!303 = !{!"branch_weights", i32 8635426, i32 24294270}
!304 = distinct !{!304, !136}
!305 = !{!"branch_weights", i32 1676326, i32 6959101}
!306 = distinct !{!306, !136}
!307 = !{!"branch_weights", i32 3485587, i32 374}
!308 = distinct !{!308, !136}
!309 = !{!268, !126, i64 1087}
!310 = !{!"branch_weights", i32 9895, i32 1666432}
!311 = !{!"branch_weights", i32 9854, i32 42}
!312 = !{!"branch_weights", i32 0, i32 9895}
!313 = distinct !{!313, !136}
!314 = !{!"function_entry_count", i64 2341181}
!315 = !{!"postreload.c:rhs_regno"}
!316 = !{!"function_entry_count", i64 140022}
!317 = !{!"postreload.c:insn_constraint_len"}
!318 = !{!"branch_weights", i32 3655, i32 136369}
!319 = !{!"function_entry_count", i64 0}
!320 = !{!"postreload.c:reload_combine_note_use"}
!321 = distinct !{!321, !136}
!322 = distinct !{!322, !136}
!323 = distinct !{!323, !136}
!324 = distinct !{!324, !136}
!325 = !{!"postreload.c:reload_combine_note_store"}
!326 = distinct !{!326, !136}
!327 = distinct !{!327, !136}
!328 = !{!"function_entry_count", i64 1210850}
!329 = !{!"postreload.c:move2add_note_store"}
!330 = !{!"branch_weights", i32 1, i32 1210851}
!331 = !{!"branch_weights", i32 748114666, i32 1026963452, i32 -1683752965}
!332 = !{!"branch_weights", i32 41441, i32 -1357560823}
!333 = !{!"branch_weights", i32 720836, i32 1}
!334 = !{!"branch_weights", i32 -996803974, i32 1549853078}
!335 = !{!"branch_weights", i32 490022, i32 373}
!336 = !{!"branch_weights", i32 -543726352, i32 336861, i32 7655}
!337 = !{!"branch_weights", i32 354396, i32 34921, i32 39378, i32 61287}
!338 = !{!"branch_weights", i32 30924, i32 3998}
!339 = !{!"branch_weights", i32 13355001, i32 136993344, i32 15347805}
!340 = !{!"branch_weights", i32 369, i32 2497}
!341 = !{!"branch_weights", i32 81, i32 3619}
!342 = !{!"branch_weights", i32 3, i32 359}
!343 = !{!"branch_weights", i32 528, i32 11712}
!344 = !{!"branch_weights", i32 1, i32 16}
!345 = !{!"branch_weights", i32 7096, i32 57852}
!346 = !{!"branch_weights", i32 4576, i32 740609}
!347 = !{!"branch_weights", i32 230857, i32 1}
!348 = !{!"postreload.c:gate_handle_postreload"}
!349 = !{!"branch_weights", i32 6653, i32 1}
!350 = !{!"postreload.c:rest_of_handle_postreload"}
