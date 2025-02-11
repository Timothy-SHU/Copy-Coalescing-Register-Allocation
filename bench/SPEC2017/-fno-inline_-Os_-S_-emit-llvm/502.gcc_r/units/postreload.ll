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
define dso_local void @reload_cse_regs(ptr noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @reload_cse_regs_1(ptr noundef %0) #8
  tail call fastcc void @reload_combine() #8
  tail call fastcc void @reload_cse_move2add(ptr noundef %0) #8
  %2 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call fastcc void @reload_cse_regs_1(ptr noundef %0) #8
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @reload_cse_regs_1(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @gen_rtx_REG(i32 noundef 0, i32 noundef -1) #9
  tail call void @cselib_init(i32 noundef 1) #9
  tail call void @init_alias_analysis() #9
  %3 = icmp eq ptr %0, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %1, %11
  %5 = phi ptr [ %13, %11 ], [ %0, %1 ]
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 65535
  %8 = add nsw i32 %7, -7
  %9 = icmp ult i32 %8, 4
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  tail call fastcc void @reload_cse_simplify(ptr noundef nonnull %5, ptr noundef %2) #8
  br label %11

11:                                               ; preds = %4, %10
  tail call void @cselib_process_insn(ptr noundef nonnull %5) #9
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  %13 = load ptr, ptr %12, align 8, !tbaa !9
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %4, !llvm.loop !10

15:                                               ; preds = %11, %1
  tail call void @end_alias_analysis() #9
  tail call void @cselib_finish() #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @reload_combine() unnamed_addr #0 {
  %1 = alloca i64, align 8
  %2 = load i8, ptr @double_reg_address_ok, align 1, !tbaa !9
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %458

4:                                                ; preds = %0
  %5 = load i64, ptr getelementptr inbounds ([27 x i64], ptr @reg_class_contents, i64 0, i64 11), align 8, !tbaa !12
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
  br i1 %19, label %20, label %6, !llvm.loop !14

20:                                               ; preds = %6
  %21 = icmp eq i32 %17, -1
  br i1 %21, label %458, label %22

22:                                               ; preds = %20
  %23 = tail call i32 @get_first_label_num() #9
  %24 = tail call i32 @max_label_num() #9
  %25 = sub nsw i32 %24, %23
  %26 = sext i32 %25 to i64
  %27 = shl nsw i64 %26, 3
  %28 = tail call ptr @xmalloc(i64 noundef %27) #9
  %29 = load ptr, ptr @cfun, align 8, !tbaa !15
  %30 = getelementptr inbounds %struct.function, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !17
  %32 = getelementptr inbounds %struct.control_flow_graph, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !19
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !21
  %36 = load ptr, ptr %31, align 8, !tbaa !23
  %37 = icmp eq ptr %35, %36
  br i1 %37, label %67, label %38

38:                                               ; preds = %22, %58
  %39 = phi ptr [ %59, %58 ], [ %29, %22 ]
  %40 = phi ptr [ %62, %58 ], [ %35, %22 ]
  %41 = phi i64 [ %60, %58 ], [ 0, %22 ]
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 7
  %43 = load ptr, ptr %42, align 8, !tbaa !9
  %44 = load ptr, ptr %43, align 8, !tbaa !24
  %45 = load i32, ptr %44, align 8
  %46 = and i32 %45, 65535
  %47 = icmp eq i32 %46, 12
  br i1 %47, label %48, label %58

48:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #10
  %49 = call ptr @df_get_live_in(ptr noundef nonnull %40) #9
  store i64 0, ptr %1, align 8, !tbaa !12
  call void @reg_set_to_hard_reg_set(ptr noundef nonnull %1, ptr noundef %49) #9
  call void @compute_use_by_pseudos(ptr noundef nonnull %1, ptr noundef %49) #9
  %50 = load i64, ptr %1, align 8, !tbaa !12
  %51 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 1, i32 1
  %52 = load i32, ptr %51, align 8, !tbaa !9
  %53 = sub nsw i32 %52, %23
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, ptr %28, i64 %54
  store i64 %50, ptr %55, align 8, !tbaa !12
  %56 = or i64 %41, %50
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #10
  %57 = load ptr, ptr @cfun, align 8, !tbaa !15
  br label %58

58:                                               ; preds = %38, %48
  %59 = phi ptr [ %39, %38 ], [ %57, %48 ]
  %60 = phi i64 [ %41, %38 ], [ %56, %48 ]
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 5
  %62 = load ptr, ptr %61, align 8, !tbaa !21
  %63 = getelementptr inbounds %struct.function, ptr %59, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !17
  %65 = load ptr, ptr %64, align 8, !tbaa !23
  %66 = icmp eq ptr %62, %65
  br i1 %66, label %67, label %38, !llvm.loop !26

67:                                               ; preds = %58, %22
  %68 = phi i64 [ 0, %22 ], [ %60, %58 ]
  store i32 0, ptr @reload_combine_ruid, align 4, !tbaa !5
  br label %69

69:                                               ; preds = %67, %69
  %70 = phi i64 [ 0, %67 ], [ %77, %69 ]
  %71 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %70, i32 3
  store i32 0, ptr %71, align 8, !tbaa !27
  %72 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %70
  %73 = load i8, ptr %72, align 1, !tbaa !9
  %74 = icmp eq i8 %73, 0
  %75 = select i1 %74, i32 6, i32 -1
  %76 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %70, i32 1
  store i32 %75, ptr %76, align 8
  %77 = add nuw nsw i64 %70, 1
  %78 = icmp eq i64 %77, 53
  br i1 %78, label %79, label %69, !llvm.loop !29

79:                                               ; preds = %69
  %80 = call ptr @get_last_insn() #9
  %81 = icmp eq ptr %80, null
  br i1 %81, label %457, label %82

82:                                               ; preds = %79
  %83 = icmp sgt i32 %17, %16
  %84 = sext i32 %17 to i64
  %85 = add i32 %16, 1
  br label %86

86:                                               ; preds = %82, %452
  %87 = phi ptr [ %80, %82 ], [ %455, %452 ]
  %88 = phi i32 [ 0, %82 ], [ %453, %452 ]
  %89 = load i32, ptr %87, align 8
  %90 = and i32 %89, 65535
  %91 = trunc i32 %89 to i16
  switch i16 %91, label %104 [
    i16 12, label %92
    i16 11, label %94
  ]

92:                                               ; preds = %86
  %93 = load i32, ptr @reload_combine_ruid, align 4, !tbaa !5
  br label %452

94:                                               ; preds = %86, %101
  %95 = phi i64 [ %102, %101 ], [ 0, %86 ]
  %96 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %95
  %97 = load i8, ptr %96, align 1, !tbaa !9
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %95, i32 1
  store i32 6, ptr %100, align 8, !tbaa !30
  br label %101

101:                                              ; preds = %94, %99
  %102 = add nuw nsw i64 %95, 1
  %103 = icmp eq i64 %102, 53
  br i1 %103, label %104, label %94, !llvm.loop !31

104:                                              ; preds = %101, %86
  %105 = add nsw i32 %90, -7
  %106 = icmp ult i32 %105, 4
  br i1 %106, label %107, label %452

107:                                              ; preds = %104
  %108 = load i32, ptr @reload_combine_ruid, align 4, !tbaa !5
  %109 = add nsw i32 %108, 1
  store i32 %109, ptr @reload_combine_ruid, align 4, !tbaa !5
  %110 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 1
  %111 = load ptr, ptr %110, align 8, !tbaa !9
  %112 = load i32, ptr %111, align 8
  %113 = and i32 %112, 65535
  %114 = icmp eq i32 %113, 23
  br i1 %114, label %118, label %115

115:                                              ; preds = %107
  %116 = call ptr @single_set_2(ptr noundef nonnull %87, ptr noundef nonnull %111) #9
  %117 = icmp eq ptr %116, null
  br i1 %117, label %332, label %118

118:                                              ; preds = %107, %115
  %119 = phi ptr [ %116, %115 ], [ %111, %107 ]
  %120 = getelementptr inbounds %struct.rtx_def, ptr %119, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !9
  %122 = load i32, ptr %121, align 8
  %123 = and i32 %122, 65535
  %124 = icmp eq i32 %123, 37
  br i1 %124, label %125, label %332

125:                                              ; preds = %118
  %126 = call fastcc i32 @rhs_regno(ptr noundef nonnull %121) #8
  %127 = zext i32 %126 to i64
  %128 = lshr i32 %122, 16
  %129 = and i32 %128, 255
  %130 = zext nneg i32 %129 to i64
  %131 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %127, i64 %130
  %132 = load i8, ptr %131, align 1, !tbaa !9
  %133 = icmp eq i8 %132, 1
  br i1 %133, label %134, label %332

134:                                              ; preds = %125
  %135 = getelementptr inbounds %struct.rtx_def, ptr %119, i64 0, i32 1, i32 0, i32 0, i64 1
  %136 = load ptr, ptr %135, align 8, !tbaa !9
  %137 = load i32, ptr %136, align 8
  %138 = and i32 %137, 65535
  %139 = icmp eq i32 %138, 49
  br i1 %139, label %140, label %332

140:                                              ; preds = %134
  %141 = getelementptr inbounds %struct.rtx_def, ptr %136, i64 0, i32 1, i32 0, i32 0, i64 1
  %142 = load ptr, ptr %141, align 8, !tbaa !9
  %143 = load i32, ptr %142, align 8
  %144 = and i32 %143, 65535
  %145 = icmp eq i32 %144, 37
  br i1 %145, label %146, label %332

146:                                              ; preds = %140
  %147 = getelementptr inbounds %struct.rtx_def, ptr %136, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !9
  %149 = call i32 @rtx_equal_p(ptr noundef %148, ptr noundef nonnull %121) #9
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %332, label %151

151:                                              ; preds = %146
  %152 = load ptr, ptr %135, align 8, !tbaa !9
  %153 = getelementptr inbounds %struct.rtx_def, ptr %152, i64 0, i32 1, i32 0, i32 0, i64 1
  %154 = load ptr, ptr %153, align 8, !tbaa !9
  %155 = load ptr, ptr %120, align 8, !tbaa !9
  %156 = call i32 @rtx_equal_p(ptr noundef %154, ptr noundef %155) #9
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %332

158:                                              ; preds = %151
  %159 = load ptr, ptr %120, align 8, !tbaa !9
  %160 = call fastcc i32 @rhs_regno(ptr noundef %159) #8
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %161, i32 4
  %163 = load i32, ptr %162, align 4, !tbaa !32
  %164 = icmp slt i32 %88, %163
  br i1 %164, label %165, label %332

165:                                              ; preds = %158
  %166 = load ptr, ptr %135, align 8, !tbaa !9
  %167 = getelementptr inbounds %struct.rtx_def, ptr %166, i64 0, i32 1, i32 0, i32 0, i64 1
  %168 = load ptr, ptr %167, align 8, !tbaa !9
  %169 = call ptr @prev_nonnote_insn(ptr noundef nonnull %87) #9
  %170 = icmp eq ptr %169, null
  br i1 %170, label %184, label %171

171:                                              ; preds = %165
  %172 = load i32, ptr %169, align 8
  %173 = and i32 %172, 65535
  %174 = add nsw i32 %173, -7
  %175 = icmp ult i32 %174, 4
  br i1 %175, label %176, label %184

176:                                              ; preds = %171
  %177 = getelementptr inbounds %struct.rtx_def, ptr %169, i64 1
  %178 = load ptr, ptr %177, align 8, !tbaa !9
  %179 = load i32, ptr %178, align 8
  %180 = and i32 %179, 65535
  %181 = icmp eq i32 %180, 23
  br i1 %181, label %184, label %182

182:                                              ; preds = %176
  %183 = call ptr @single_set_2(ptr noundef nonnull %169, ptr noundef nonnull %178) #9
  br label %184

184:                                              ; preds = %171, %176, %165, %182
  %185 = phi ptr [ %183, %182 ], [ null, %165 ], [ null, %171 ], [ %178, %176 ]
  %186 = call fastcc i32 @rhs_regno(ptr noundef %159) #8
  %187 = load i64, ptr getelementptr inbounds ([27 x i64], ptr @reg_class_contents, i64 0, i64 11), align 8, !tbaa !12
  %188 = zext i32 %186 to i64
  %189 = shl nuw i64 1, %188
  %190 = and i64 %189, %187
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %192, label %234

192:                                              ; preds = %184
  %193 = call fastcc i32 @rhs_regno(ptr noundef %168) #8
  %194 = zext nneg i32 %193 to i64
  %195 = shl nuw i64 1, %194
  %196 = and i64 %195, %187
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %198, label %234

198:                                              ; preds = %192
  br i1 %83, label %332, label %199

199:                                              ; preds = %198
  %200 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %188, i32 4
  br label %201

201:                                              ; preds = %199, %230
  %202 = phi i64 [ %84, %199 ], [ %231, %230 ]
  %203 = shl nuw i64 1, %202
  %204 = and i64 %203, %187
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %230, label %206

206:                                              ; preds = %201
  %207 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %202, i32 1
  %208 = load i32, ptr %207, align 8, !tbaa !30
  %209 = icmp eq i32 %208, 6
  br i1 %209, label %210, label %230

210:                                              ; preds = %206
  %211 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %202, i32 3
  %212 = load i32, ptr %211, align 8, !tbaa !27
  %213 = load i32, ptr %200, align 4, !tbaa !32
  %214 = icmp sgt i32 %212, %213
  br i1 %214, label %230, label %215

215:                                              ; preds = %210
  %216 = load i32, ptr %159, align 8
  %217 = lshr i32 %216, 16
  %218 = and i32 %217, 255
  %219 = zext nneg i32 %218 to i64
  %220 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %202, i64 %219
  %221 = load i8, ptr %220, align 1, !tbaa !9
  %222 = icmp eq i8 %221, 1
  br i1 %222, label %223, label %230

223:                                              ; preds = %215
  %224 = trunc i64 %202 to i32
  %225 = call ptr @gen_rtx_REG(i32 noundef %218, i32 noundef %224) #9
  %226 = load i32, ptr %159, align 8
  %227 = lshr i32 %226, 16
  %228 = and i32 %227, 255
  %229 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %228, ptr noundef %225, ptr noundef %168) #9
  br label %234

230:                                              ; preds = %201, %206, %210, %215
  %231 = add nsw i64 %202, 1
  %232 = trunc i64 %231 to i32
  %233 = icmp eq i32 %85, %232
  br i1 %233, label %332, label %201, !llvm.loop !33

234:                                              ; preds = %184, %192, %223
  %235 = phi ptr [ %225, %223 ], [ %159, %192 ], [ %159, %184 ]
  %236 = phi ptr [ %229, %223 ], [ %166, %192 ], [ %166, %184 ]
  %237 = icmp ne ptr %236, null
  %238 = icmp ne ptr %185, null
  %239 = select i1 %237, i1 %238, i1 false
  br i1 %239, label %240, label %332

240:                                              ; preds = %234
  %241 = getelementptr inbounds %struct.rtx_def, ptr %185, i64 0, i32 1
  %242 = getelementptr inbounds %struct.rtx_def, ptr %185, i64 0, i32 1, i32 0, i32 0, i64 1
  %243 = load ptr, ptr %242, align 8, !tbaa !9
  %244 = load i32, ptr %243, align 8
  %245 = and i32 %244, 65535
  %246 = icmp eq i32 %245, 30
  br i1 %246, label %247, label %332

247:                                              ; preds = %240
  %248 = load ptr, ptr %241, align 8, !tbaa !9
  %249 = call i32 @rtx_equal_p(ptr noundef %248, ptr noundef %159) #9
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %332, label %251

251:                                              ; preds = %247
  %252 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %188
  %253 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %188, i32 1
  %254 = load i32, ptr %253, align 8, !tbaa !30
  %255 = icmp sgt i32 %254, -1
  br i1 %255, label %256, label %332

256:                                              ; preds = %251
  %257 = call fastcc i32 @rhs_regno(ptr noundef %168) #8
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %258, i32 3
  %260 = load i32, ptr %259, align 8, !tbaa !27
  %261 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %188, i32 4
  %262 = load i32, ptr %261, align 4, !tbaa !32
  %263 = icmp sgt i32 %260, %262
  br i1 %263, label %332, label %264

264:                                              ; preds = %256
  %265 = call zeroext i8 @validate_change(ptr noundef %169, ptr noundef nonnull %241, ptr noundef %235, i8 noundef zeroext 1) #9
  %266 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %188, i32 2
  %267 = load ptr, ptr %266, align 8, !tbaa !34
  %268 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !15
  %269 = icmp eq ptr %267, %268
  br i1 %269, label %279, label %270

270:                                              ; preds = %264
  %271 = load ptr, ptr %242, align 8, !tbaa !9
  %272 = getelementptr inbounds %struct.rtx_def, ptr %271, i64 0, i32 1
  %273 = load i64, ptr %272, align 8, !tbaa !9
  %274 = getelementptr inbounds %struct.rtx_def, ptr %267, i64 0, i32 1
  %275 = load i64, ptr %274, align 8, !tbaa !9
  %276 = add nsw i64 %275, %273
  %277 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %276) #9
  %278 = call zeroext i8 @validate_change(ptr noundef %169, ptr noundef nonnull %242, ptr noundef %277, i8 noundef zeroext 1) #9
  br label %279

279:                                              ; preds = %270, %264
  %280 = load i32, ptr %253, align 8, !tbaa !30
  %281 = icmp slt i32 %280, 6
  br i1 %281, label %282, label %294

282:                                              ; preds = %279
  %283 = sext i32 %280 to i64
  br label %284

284:                                              ; preds = %282, %284
  %285 = phi i64 [ %283, %282 ], [ %291, %284 ]
  %286 = getelementptr inbounds [6 x %struct.reg_use], ptr %252, i64 0, i64 %285
  %287 = load ptr, ptr %286, align 8, !tbaa !35
  %288 = getelementptr inbounds [6 x %struct.reg_use], ptr %252, i64 0, i64 %285, i32 1
  %289 = load ptr, ptr %288, align 8, !tbaa !37
  %290 = call zeroext i8 @validate_unshare_change(ptr noundef %287, ptr noundef %289, ptr noundef nonnull %236, i8 noundef zeroext 1) #9
  %291 = add nsw i64 %285, 1
  %292 = and i64 %291, 4294967295
  %293 = icmp eq i64 %292, 6
  br i1 %293, label %294, label %284, !llvm.loop !38

294:                                              ; preds = %284, %279
  %295 = call i32 @apply_change_group() #9
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %332, label %297

297:                                              ; preds = %294
  %298 = load i32, ptr %253, align 8, !tbaa !30
  %299 = icmp slt i32 %298, 6
  br i1 %299, label %300, label %313

300:                                              ; preds = %297
  %301 = sext i32 %298 to i64
  br label %302

302:                                              ; preds = %300, %302
  %303 = phi i64 [ %301, %300 ], [ %310, %302 ]
  %304 = getelementptr inbounds [6 x %struct.reg_use], ptr %252, i64 0, i64 %303
  %305 = getelementptr inbounds [6 x %struct.reg_use], ptr %252, i64 0, i64 %303, i32 1
  %306 = load ptr, ptr %305, align 8, !tbaa !37
  %307 = load ptr, ptr %306, align 8, !tbaa !15
  %308 = getelementptr inbounds %struct.rtx_def, ptr %307, i64 0, i32 1, i32 0, i32 0, i64 1
  %309 = load ptr, ptr %304, align 8, !tbaa !35
  call fastcc void @reload_combine_note_use(ptr noundef nonnull %308, ptr noundef %309) #8
  %310 = add nsw i64 %303, 1
  %311 = and i64 %310, 4294967295
  %312 = icmp eq i64 %311, 6
  br i1 %312, label %313, label %302, !llvm.loop !39

313:                                              ; preds = %302, %297
  %314 = call fastcc i32 @rhs_regno(ptr noundef %168) #8
  %315 = zext i32 %314 to i64
  %316 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %315, i32 4
  %317 = load i32, ptr %316, align 4, !tbaa !32
  %318 = load i32, ptr %261, align 4, !tbaa !32
  %319 = icmp sgt i32 %317, %318
  br i1 %319, label %320, label %321

320:                                              ; preds = %313
  store i32 %318, ptr %316, align 4, !tbaa !32
  br label %321

321:                                              ; preds = %320, %313
  %322 = call ptr @delete_insn(ptr noundef nonnull %87) #9
  %323 = load ptr, ptr %266, align 8, !tbaa !34
  %324 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !15
  %325 = icmp eq ptr %323, %324
  br i1 %325, label %327, label %326

326:                                              ; preds = %321
  call void @remove_reg_equal_equiv_notes(ptr noundef %169) #9
  br label %327

327:                                              ; preds = %321, %326
  store i32 6, ptr %253, align 8, !tbaa !30
  %328 = load i32, ptr @reload_combine_ruid, align 4, !tbaa !5
  %329 = call fastcc i32 @rhs_regno(ptr noundef %235) #8
  %330 = zext i32 %329 to i64
  %331 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %330, i32 3
  store i32 %328, ptr %331, align 8, !tbaa !27
  br label %452

332:                                              ; preds = %230, %198, %294, %256, %251, %247, %240, %234, %158, %151, %146, %140, %134, %125, %118, %115
  %333 = load ptr, ptr %110, align 8, !tbaa !9
  call void @note_stores(ptr noundef %333, ptr noundef nonnull @reload_combine_note_store, ptr noundef null) #9
  %334 = load i32, ptr %87, align 8
  %335 = trunc i32 %334 to i16
  switch i16 %335, label %426 [
    i16 10, label %336
    i16 9, label %392
  ]

336:                                              ; preds = %332
  %337 = load i32, ptr @reload_combine_ruid, align 4
  br label %338

338:                                              ; preds = %336, %346
  %339 = phi i64 [ 0, %336 ], [ %347, %346 ]
  %340 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %339
  %341 = load i8, ptr %340, align 1, !tbaa !9
  %342 = icmp eq i8 %341, 0
  br i1 %342, label %346, label %343

343:                                              ; preds = %338
  %344 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %339, i32 1
  store i32 6, ptr %344, align 8, !tbaa !30
  %345 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %339, i32 3
  store i32 %337, ptr %345, align 8, !tbaa !27
  br label %346

346:                                              ; preds = %338, %343
  %347 = add nuw nsw i64 %339, 1
  %348 = icmp eq i64 %347, 53
  br i1 %348, label %349, label %338, !llvm.loop !40

349:                                              ; preds = %346
  %350 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 1, i32 1, i32 0, i32 0, i64 2
  %351 = load ptr, ptr %350, align 8, !tbaa !9
  %352 = icmp eq ptr %351, null
  br i1 %352, label %426, label %353

353:                                              ; preds = %349, %388
  %354 = phi ptr [ %390, %388 ], [ %351, %349 ]
  %355 = getelementptr inbounds %struct.rtx_def, ptr %354, i64 0, i32 1
  %356 = load ptr, ptr %355, align 8, !tbaa !9
  %357 = getelementptr inbounds %struct.rtx_def, ptr %356, i64 0, i32 1
  %358 = load ptr, ptr %357, align 8, !tbaa !9
  %359 = load i32, ptr %358, align 8
  %360 = and i32 %359, 65535
  %361 = icmp eq i32 %360, 37
  br i1 %361, label %362, label %388

362:                                              ; preds = %353
  %363 = call fastcc i32 @rhs_regno(ptr noundef nonnull %358) #8
  %364 = zext i32 %363 to i64
  %365 = lshr i32 %359, 16
  %366 = and i32 %365, 255
  %367 = zext nneg i32 %366 to i64
  %368 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %364, i64 %367
  %369 = load i8, ptr %368, align 1, !tbaa !9
  %370 = zext i8 %369 to i32
  %371 = add i32 %363, -1
  %372 = add i32 %371, %370
  %373 = icmp ugt i32 %363, %372
  br i1 %373, label %388, label %374

374:                                              ; preds = %362, %385
  %375 = phi i32 [ %386, %385 ], [ %363, %362 ]
  %376 = load ptr, ptr %355, align 8, !tbaa !9
  %377 = load i32, ptr %376, align 8
  %378 = and i32 %377, 65535
  %379 = icmp eq i32 %378, 25
  %380 = zext i32 %375 to i64
  %381 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %380, i32 1
  br i1 %379, label %382, label %384

382:                                              ; preds = %374
  store i32 6, ptr %381, align 8, !tbaa !30
  %383 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %380, i32 3
  store i32 %337, ptr %383, align 8, !tbaa !27
  br label %385

384:                                              ; preds = %374
  store i32 -1, ptr %381, align 8, !tbaa !30
  br label %385

385:                                              ; preds = %382, %384
  %386 = add i32 %375, 1
  %387 = icmp ugt i32 %386, %372
  br i1 %387, label %388, label %374, !llvm.loop !41

388:                                              ; preds = %385, %362, %353
  %389 = getelementptr inbounds %struct.rtx_def, ptr %354, i64 0, i32 1, i32 0, i32 0, i64 1
  %390 = load ptr, ptr %389, align 8, !tbaa !9
  %391 = icmp eq ptr %390, null
  br i1 %391, label %426, label %353, !llvm.loop !42

392:                                              ; preds = %332
  %393 = load ptr, ptr %110, align 8, !tbaa !9
  %394 = load i32, ptr %393, align 8
  %395 = and i32 %394, 65535
  %396 = icmp eq i32 %395, 27
  br i1 %396, label %426, label %397

397:                                              ; preds = %392
  %398 = call i32 @condjump_p(ptr noundef nonnull %87) #9
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %400, label %403

400:                                              ; preds = %397
  %401 = call i32 @condjump_in_parallel_p(ptr noundef nonnull %87) #9
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %414, label %403

403:                                              ; preds = %400, %397
  %404 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 1, i32 1, i32 0, i32 0, i64 2
  %405 = load ptr, ptr %404, align 8, !tbaa !9
  %406 = icmp eq ptr %405, null
  br i1 %406, label %414, label %407

407:                                              ; preds = %403
  %408 = getelementptr inbounds %struct.rtx_def, ptr %405, i64 1, i32 1
  %409 = load i32, ptr %408, align 8, !tbaa !9
  %410 = sub nsw i32 %409, %23
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i64, ptr %28, i64 %411
  %413 = load i64, ptr %412, align 8, !tbaa !12
  br label %414

414:                                              ; preds = %400, %403, %407
  %415 = phi i64 [ %413, %407 ], [ %68, %403 ], [ %68, %400 ]
  br label %416

416:                                              ; preds = %414, %423
  %417 = phi i64 [ 52, %414 ], [ %424, %423 ]
  %418 = shl nuw i64 1, %417
  %419 = and i64 %415, %418
  %420 = icmp eq i64 %419, 0
  br i1 %420, label %423, label %421

421:                                              ; preds = %416
  %422 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %417, i32 1
  store i32 -1, ptr %422, align 8, !tbaa !30
  br label %423

423:                                              ; preds = %416, %421
  %424 = add nsw i64 %417, -1
  %425 = icmp eq i64 %417, 0
  br i1 %425, label %426, label %416, !llvm.loop !43

426:                                              ; preds = %423, %388, %349, %332, %392
  call fastcc void @reload_combine_note_use(ptr noundef nonnull %110, ptr noundef nonnull %87) #8
  %427 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 1, i32 1, i32 0, i32 0, i64 1
  %428 = load ptr, ptr %427, align 8, !tbaa !9
  %429 = icmp eq ptr %428, null
  br i1 %429, label %452, label %430

430:                                              ; preds = %426
  %431 = load i32, ptr @reload_combine_ruid, align 4
  br label %432

432:                                              ; preds = %430, %448
  %433 = phi ptr [ %428, %430 ], [ %450, %448 ]
  %434 = load i32, ptr %433, align 8
  %435 = and i32 %434, 16711680
  %436 = icmp eq i32 %435, 131072
  br i1 %436, label %437, label %448

437:                                              ; preds = %432
  %438 = getelementptr inbounds %struct.rtx_def, ptr %433, i64 0, i32 1
  %439 = load ptr, ptr %438, align 8, !tbaa !9
  %440 = load i32, ptr %439, align 8
  %441 = and i32 %440, 65535
  %442 = icmp eq i32 %441, 37
  br i1 %442, label %443, label %448

443:                                              ; preds = %437
  %444 = call fastcc i32 @rhs_regno(ptr noundef nonnull %439) #8
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %445, i32 3
  store i32 %431, ptr %446, align 8, !tbaa !27
  %447 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %445, i32 1
  store i32 -1, ptr %447, align 8, !tbaa !30
  br label %448

448:                                              ; preds = %432, %437, %443
  %449 = getelementptr inbounds %struct.rtx_def, ptr %433, i64 0, i32 1, i32 0, i32 0, i64 1
  %450 = load ptr, ptr %449, align 8, !tbaa !9
  %451 = icmp eq ptr %450, null
  br i1 %451, label %452, label %432, !llvm.loop !44

452:                                              ; preds = %448, %426, %327, %92, %104
  %453 = phi i32 [ %93, %92 ], [ %88, %104 ], [ %88, %327 ], [ %88, %426 ], [ %88, %448 ]
  %454 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1, i32 0, i32 0, i64 1
  %455 = load ptr, ptr %454, align 8, !tbaa !9
  %456 = icmp eq ptr %455, null
  br i1 %456, label %457, label %86, !llvm.loop !45

457:                                              ; preds = %452, %79
  call void @free(ptr noundef %28) #8
  br label %458

458:                                              ; preds = %20, %0, %457
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @reload_cse_move2add(ptr noundef %0) unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(212) @reg_set_luid, i8 0, i64 212, i1 false), !tbaa !5
  store i32 0, ptr @move2add_last_label_luid, align 4, !tbaa !5
  store i32 2, ptr @move2add_luid, align 4, !tbaa !5
  %2 = icmp eq ptr %0, null
  br i1 %2, label %343, label %3

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
  ]

11:                                               ; preds = %6
  store i32 %8, ptr @move2add_last_label_luid, align 4, !tbaa !5
  %12 = add nsw i32 %8, 1
  store i32 %12, ptr @move2add_luid, align 4, !tbaa !5
  br label %336

13:                                               ; preds = %6, %6, %6, %6
  %14 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !9
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 23
  br i1 %18, label %19, label %251

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !9
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 37
  br i1 %24, label %25, label %251

25:                                               ; preds = %19
  %26 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %21) #8
  %27 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !9
  %29 = sext i32 %26 to i64
  %30 = getelementptr inbounds [53 x i32], ptr @reg_set_luid, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !5
  %32 = load i32, ptr @move2add_last_label_luid, align 4, !tbaa !5
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %251

34:                                               ; preds = %25
  %35 = lshr i32 %22, 16
  %36 = and i32 %35, 255
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !9
  %40 = getelementptr inbounds [53 x i32], ptr @reg_mode, i64 0, i64 %29
  %41 = load i32, ptr %40, align 4, !tbaa !5
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !9
  %45 = icmp ugt i8 %39, %44
  br i1 %45, label %251, label %46

46:                                               ; preds = %34
  %47 = tail call zeroext i8 @dbg_cnt(i32 noundef 3) #9
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %251, label %49

49:                                               ; preds = %46
  %50 = load i32, ptr %28, align 8
  %51 = trunc i32 %50 to i16
  switch i16 %51, label %251 [
    i16 30, label %52
    i16 37, label %137
  ]

52:                                               ; preds = %49
  %53 = getelementptr inbounds [53 x i32], ptr @reg_base_reg, i64 0, i64 %29
  %54 = load i32, ptr %53, align 4, !tbaa !5
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %251

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !9
  %59 = getelementptr inbounds [53 x i64], ptr @reg_offset, i64 0, i64 %29
  %60 = load i64, ptr %59, align 8, !tbaa !12
  %61 = sub nsw i64 %58, %60
  %62 = load i32, ptr %21, align 8
  %63 = lshr i32 %62, 16
  %64 = and i32 %63, 255
  %65 = tail call ptr @gen_int_mode(i64 noundef %61, i32 noundef %64) #9
  %66 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !9
  %68 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %67) #9
  %69 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !15
  %70 = icmp eq ptr %65, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %56
  %72 = load i64, ptr %57, align 8, !tbaa !9
  %73 = load i64, ptr %59, align 8, !tbaa !12
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %131

75:                                               ; preds = %71
  %76 = tail call zeroext i8 @validate_change(ptr noundef nonnull %7, ptr noundef nonnull %27, ptr noundef nonnull %21, i8 noundef zeroext 0) #9
  br label %131

77:                                               ; preds = %56
  %78 = tail call i32 @rtx_cost(ptr noundef %65, i32 noundef 49, i8 noundef zeroext %68) #9
  %79 = tail call i32 @rtx_cost(ptr noundef nonnull %28, i32 noundef 23, i8 noundef zeroext %68) #9
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %90

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
  br i1 %94, label %131, label %95

95:                                               ; preds = %90, %126
  %96 = phi i8 [ %129, %126 ], [ %4, %90 ]
  %97 = zext i8 %96 to i32
  %98 = load i32, ptr %21, align 8
  %99 = lshr i32 %98, 16
  %100 = trunc i32 %99 to i8
  %101 = icmp eq i8 %96, %100
  br i1 %101, label %131, label %102

102:                                              ; preds = %95
  %103 = tail call i32 @have_insn_for(i32 noundef 40, i32 noundef %97) #9
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = zext i8 %96 to i64
  br label %126

107:                                              ; preds = %102
  %108 = load i64, ptr %59, align 8, !tbaa !12
  %109 = zext i8 %96 to i64
  %110 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %109
  %111 = load i64, ptr %110, align 8, !tbaa !12
  %112 = xor i64 %111, -1
  %113 = load i64, ptr %57, align 8, !tbaa !9
  %114 = xor i64 %113, %108
  %115 = and i64 %114, %112
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %107
  %118 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %21) #8
  %119 = tail call ptr @gen_rtx_REG(i32 noundef %97, i32 noundef %118) #9
  %120 = load i64, ptr %57, align 8, !tbaa !9
  %121 = tail call ptr @gen_int_mode(i64 noundef %120, i32 noundef %97) #9
  %122 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 40, i32 noundef 0, ptr noundef %119) #9
  %123 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %122, ptr noundef %121) #9
  %124 = tail call zeroext i8 @validate_change(ptr noundef nonnull %7, ptr noundef nonnull %14, ptr noundef %123, i8 noundef zeroext 0) #9
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %105, %117, %107
  %127 = phi i64 [ %106, %105 ], [ %109, %117 ], [ %109, %107 ]
  %128 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %127
  %129 = load i8, ptr %128, align 1, !tbaa !9
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %95, !llvm.loop !46

131:                                              ; preds = %126, %95, %117, %90, %84, %71, %75
  %132 = load i32, ptr @move2add_luid, align 4, !tbaa !5
  store i32 %132, ptr %30, align 4, !tbaa !5
  %133 = load i32, ptr %21, align 8
  %134 = lshr i32 %133, 16
  %135 = and i32 %134, 255
  store i32 %135, ptr %40, align 4, !tbaa !5
  %136 = load i64, ptr %57, align 8, !tbaa !9
  store i64 %136, ptr %59, align 8, !tbaa !12
  br label %336

137:                                              ; preds = %49
  %138 = load i32, ptr %30, align 4, !tbaa !5
  %139 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %28) #8
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds [53 x i32], ptr @reg_set_luid, i64 0, i64 %140
  %142 = load i32, ptr %141, align 4, !tbaa !5
  %143 = icmp eq i32 %138, %142
  br i1 %143, label %144, label %251

144:                                              ; preds = %137
  %145 = getelementptr inbounds [53 x i32], ptr @reg_base_reg, i64 0, i64 %29
  %146 = load i32, ptr %145, align 4, !tbaa !5
  %147 = getelementptr inbounds [53 x i32], ptr @reg_base_reg, i64 0, i64 %140
  %148 = load i32, ptr %147, align 4, !tbaa !5
  %149 = icmp eq i32 %146, %148
  br i1 %149, label %150, label %251

150:                                              ; preds = %144
  %151 = load i32, ptr %21, align 8
  %152 = lshr i32 %151, 16
  %153 = and i32 %152, 255
  %154 = zext nneg i32 %153 to i64
  %155 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %154
  %156 = load i8, ptr %155, align 1, !tbaa !9
  %157 = getelementptr inbounds [53 x i32], ptr @reg_mode, i64 0, i64 %140
  %158 = load i32, ptr %157, align 4, !tbaa !5
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %159
  %161 = load i8, ptr %160, align 1, !tbaa !9
  %162 = icmp ugt i8 %156, %161
  br i1 %162, label %251, label %163

163:                                              ; preds = %150
  %164 = tail call ptr @next_nonnote_insn(ptr noundef nonnull %7) #9
  %165 = icmp eq ptr %164, null
  br i1 %165, label %251, label %166

166:                                              ; preds = %163
  %167 = load i32, ptr %164, align 8
  %168 = and i32 %167, 65535
  %169 = add nsw i32 %168, -7
  %170 = icmp ult i32 %169, 4
  br i1 %170, label %171, label %251

171:                                              ; preds = %166
  %172 = getelementptr inbounds %struct.rtx_def, ptr %164, i64 1
  %173 = load ptr, ptr %172, align 8, !tbaa !9
  %174 = load i32, ptr %173, align 8
  %175 = and i32 %174, 65535
  %176 = icmp eq i32 %175, 23
  br i1 %176, label %180, label %177

177:                                              ; preds = %171
  %178 = tail call ptr @single_set_2(ptr noundef nonnull %164, ptr noundef nonnull %173) #9
  %179 = icmp eq ptr %178, null
  br i1 %179, label %251, label %180

180:                                              ; preds = %171, %177
  %181 = phi ptr [ %178, %177 ], [ %173, %171 ]
  %182 = getelementptr inbounds %struct.rtx_def, ptr %181, i64 0, i32 1
  %183 = load ptr, ptr %182, align 8, !tbaa !9
  %184 = icmp eq ptr %183, %21
  br i1 %184, label %185, label %251

185:                                              ; preds = %180
  %186 = getelementptr inbounds %struct.rtx_def, ptr %181, i64 0, i32 1, i32 0, i32 0, i64 1
  %187 = load ptr, ptr %186, align 8, !tbaa !9
  %188 = load i32, ptr %187, align 8
  %189 = and i32 %188, 65535
  %190 = icmp eq i32 %189, 49
  br i1 %190, label %191, label %251

191:                                              ; preds = %185
  %192 = getelementptr inbounds %struct.rtx_def, ptr %187, i64 0, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !9
  %194 = icmp eq ptr %193, %21
  br i1 %194, label %195, label %251

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.rtx_def, ptr %187, i64 0, i32 1, i32 0, i32 0, i64 1
  %197 = load ptr, ptr %196, align 8, !tbaa !9
  %198 = load i32, ptr %197, align 8
  %199 = and i32 %198, 65535
  %200 = icmp eq i32 %199, 30
  br i1 %200, label %201, label %251

201:                                              ; preds = %195
  %202 = getelementptr inbounds %struct.rtx_def, ptr %197, i64 0, i32 1
  %203 = load i64, ptr %202, align 8, !tbaa !9
  %204 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %28) #8
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds [53 x i64], ptr @reg_offset, i64 0, i64 %205
  %207 = load i64, ptr %206, align 8, !tbaa !12
  %208 = getelementptr inbounds [53 x i64], ptr @reg_offset, i64 0, i64 %29
  %209 = load i64, ptr %208, align 8, !tbaa !12
  %210 = add nsw i64 %207, %203
  %211 = sub nsw i64 %210, %209
  %212 = load i32, ptr %21, align 8
  %213 = lshr i32 %212, 16
  %214 = and i32 %213, 255
  %215 = tail call ptr @gen_int_mode(i64 noundef %211, i32 noundef %214) #9
  %216 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 1
  %217 = load ptr, ptr %216, align 8, !tbaa !9
  %218 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %217) #9
  %219 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !15
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
  store i32 %246, ptr %40, align 4, !tbaa !5
  %247 = load i32, ptr %21, align 8
  %248 = lshr i32 %247, 16
  %249 = and i32 %248, 255
  %250 = tail call i64 @trunc_int_for_mode(i64 noundef %210, i32 noundef %249) #9
  store i64 %250, ptr %208, align 8, !tbaa !12
  br label %336

251:                                              ; preds = %150, %49, %166, %163, %52, %177, %180, %185, %191, %195, %25, %46, %137, %144, %34, %19, %13
  %252 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 1, i32 1, i32 0, i32 0, i64 1
  %253 = load ptr, ptr %252, align 8, !tbaa !9
  %254 = icmp eq ptr %253, null
  br i1 %254, label %276, label %255

255:                                              ; preds = %251, %272
  %256 = phi ptr [ %274, %272 ], [ %253, %251 ]
  %257 = load i32, ptr %256, align 8
  %258 = and i32 %257, 16711680
  %259 = icmp eq i32 %258, 131072
  br i1 %259, label %260, label %272

260:                                              ; preds = %255
  %261 = getelementptr inbounds %struct.rtx_def, ptr %256, i64 0, i32 1
  %262 = load ptr, ptr %261, align 8, !tbaa !9
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
  store i32 0, ptr %271, align 4, !tbaa !5
  br label %272

272:                                              ; preds = %266, %269, %255, %260
  %273 = getelementptr inbounds %struct.rtx_def, ptr %256, i64 0, i32 1, i32 0, i32 0, i64 1
  %274 = load ptr, ptr %273, align 8, !tbaa !9
  %275 = icmp eq ptr %274, null
  br i1 %275, label %276, label %255, !llvm.loop !47

276:                                              ; preds = %272, %251
  %277 = load ptr, ptr %14, align 8, !tbaa !9
  tail call void @note_stores(ptr noundef %277, ptr noundef nonnull @move2add_note_store, ptr noundef null) #9
  %278 = tail call i32 @any_condjump_p(ptr noundef nonnull %7) #9
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %322, label %280

280:                                              ; preds = %276
  %281 = tail call ptr @fis_get_condition(ptr noundef nonnull %7) #9
  %282 = icmp eq ptr %281, null
  br i1 %282, label %322, label %283

283:                                              ; preds = %280
  %284 = load i32, ptr %281, align 8
  %285 = and i32 %284, 65535
  %286 = icmp eq i32 %285, 80
  br i1 %286, label %287, label %322

287:                                              ; preds = %283
  %288 = getelementptr inbounds %struct.rtx_def, ptr %281, i64 0, i32 1
  %289 = load ptr, ptr %288, align 8, !tbaa !9
  %290 = load i32, ptr %289, align 8
  %291 = and i32 %290, 65535
  %292 = icmp eq i32 %291, 37
  br i1 %292, label %293, label %322

293:                                              ; preds = %287
  %294 = tail call i32 @reg_set_p(ptr noundef nonnull %289, ptr noundef nonnull %7) #9
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %322

296:                                              ; preds = %293
  %297 = load ptr, ptr %288, align 8, !tbaa !9
  %298 = load i32, ptr %297, align 8
  %299 = lshr i32 %298, 16
  %300 = and i32 %299, 255
  %301 = zext nneg i32 %300 to i64
  %302 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %301
  %303 = load i8, ptr %302, align 1, !tbaa !9
  %304 = and i8 %303, -2
  %305 = icmp eq i8 %304, 2
  br i1 %305, label %306, label %322

306:                                              ; preds = %296
  %307 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %297) #8
  %308 = zext i32 %307 to i64
  %309 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %308, i64 %301
  %310 = load i8, ptr %309, align 1, !tbaa !9
  %311 = icmp eq i8 %310, 1
  br i1 %311, label %312, label %322

312:                                              ; preds = %306
  %313 = getelementptr inbounds %struct.rtx_def, ptr %281, i64 0, i32 1, i32 0, i32 0, i64 1
  %314 = load ptr, ptr %313, align 8, !tbaa !9
  %315 = load i32, ptr %314, align 8
  %316 = and i32 %315, 65535
  %317 = icmp eq i32 %316, 30
  br i1 %317, label %318, label %322

318:                                              ; preds = %312
  %319 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef nonnull %297, ptr noundef nonnull %314) #9
  %320 = getelementptr inbounds %struct.rtx_def, ptr %319, i64 0, i32 1
  %321 = load ptr, ptr %320, align 8, !tbaa !9
  tail call void @move2add_note_store(ptr noundef %321, ptr noundef %319, ptr poison) #8
  br label %322

322:                                              ; preds = %296, %280, %283, %287, %293, %306, %312, %318, %276
  %323 = load i32, ptr %7, align 8
  %324 = and i32 %323, 65535
  %325 = icmp eq i32 %324, 10
  br i1 %325, label %326, label %336

326:                                              ; preds = %322, %333
  %327 = phi i64 [ %334, %333 ], [ 52, %322 ]
  %328 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %327
  %329 = load i8, ptr %328, align 1, !tbaa !9
  %330 = icmp eq i8 %329, 0
  br i1 %330, label %333, label %331

331:                                              ; preds = %326
  %332 = getelementptr inbounds [53 x i32], ptr @reg_set_luid, i64 0, i64 %327
  store i32 0, ptr %332, align 4, !tbaa !5
  br label %333

333:                                              ; preds = %326, %331
  %334 = add nsw i64 %327, -1
  %335 = icmp eq i64 %327, 0
  br i1 %335, label %336, label %326, !llvm.loop !48

336:                                              ; preds = %333, %131, %243, %322, %6, %11
  %337 = phi ptr [ %7, %11 ], [ %7, %6 ], [ %7, %322 ], [ %7, %131 ], [ %164, %243 ], [ %7, %333 ]
  %338 = getelementptr inbounds %struct.rtx_def, ptr %337, i64 0, i32 1, i32 0, i32 0, i64 2
  %339 = load ptr, ptr %338, align 8, !tbaa !9
  %340 = load i32, ptr @move2add_luid, align 4, !tbaa !5
  %341 = add nsw i32 %340, 1
  store i32 %341, ptr @move2add_luid, align 4, !tbaa !5
  %342 = icmp eq ptr %339, null
  br i1 %342, label %343, label %6, !llvm.loop !49

343:                                              ; preds = %336, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_handle_postreload() #1 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !5
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @reload_completed, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_postreload() #0 {
  %1 = tail call zeroext i8 @dbg_cnt(i32 noundef 22) #9
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %9, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @get_insns() #9
  tail call void @reload_cse_regs(ptr noundef %4) #8
  %5 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

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
define internal fastcc void @reload_cse_simplify(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !9
  %5 = load i32, ptr %4, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %105 [
    i16 23, label %7
    i16 15, label %18
  ]

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @reload_cse_simplify_set(ptr noundef nonnull %4, ptr noundef nonnull %0) #8, !range !50
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @reload_cse_noop_set_p(ptr noundef nonnull %4) #8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

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
  br i1 %20, label %21, label %46

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !9
  %24 = load i32, ptr %23, align 8, !tbaa !51
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %21
  %27 = zext nneg i32 %24 to i64
  br label %28

28:                                               ; preds = %26, %44
  %29 = phi i64 [ %27, %26 ], [ %30, %44 ]
  %30 = add nsw i64 %29, -1
  %31 = load ptr, ptr %22, align 8, !tbaa !9
  %32 = getelementptr inbounds %struct.rtvec_def, ptr %31, i64 0, i32 1, i64 %30
  %33 = load ptr, ptr %32, align 8, !tbaa !15
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 25
  br i1 %36, label %37, label %44

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !9
  %40 = load i32, ptr %39, align 8
  %41 = and i32 %40, 65535
  %42 = icmp eq i32 %41, 37
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  tail call void @cselib_invalidate_rtx(ptr noundef nonnull %39) #9
  br label %44

44:                                               ; preds = %43, %37, %28
  %45 = icmp ugt i64 %29, 1
  br i1 %45, label %28, label %46, !llvm.loop !53

46:                                               ; preds = %44, %21, %18
  %47 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !9
  %49 = load i32, ptr %48, align 8, !tbaa !51
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %76

51:                                               ; preds = %46
  %52 = zext nneg i32 %49 to i64
  br label %53

53:                                               ; preds = %51, %73
  %54 = phi i64 [ %52, %51 ], [ %56, %73 ]
  %55 = phi ptr [ null, %51 ], [ %74, %73 ]
  %56 = add nsw i64 %54, -1
  %57 = load ptr, ptr %47, align 8, !tbaa !9
  %58 = getelementptr inbounds %struct.rtvec_def, ptr %57, i64 0, i32 1, i64 %56
  %59 = load ptr, ptr %58, align 8, !tbaa !15
  %60 = load i32, ptr %59, align 8
  %61 = trunc i32 %60 to i16
  switch i16 %61, label %78 [
    i16 23, label %62
    i16 25, label %73
  ]

62:                                               ; preds = %53
  %63 = tail call fastcc i32 @reload_cse_noop_set_p(ptr noundef nonnull %59) #8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %78, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !9
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
  br i1 %75, label %53, label %76, !llvm.loop !54

76:                                               ; preds = %73, %46
  %77 = tail call ptr @delete_insn_and_edges(ptr noundef %0) #9
  br label %105

78:                                               ; preds = %62, %71, %53
  %79 = load ptr, ptr %47, align 8, !tbaa !9
  %80 = load i32, ptr %79, align 8, !tbaa !51
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %104

82:                                               ; preds = %78
  %83 = zext nneg i32 %80 to i64
  br label %84

84:                                               ; preds = %82, %97
  %85 = phi i64 [ %83, %82 ], [ %87, %97 ]
  %86 = phi i32 [ 0, %82 ], [ %98, %97 ]
  %87 = add nsw i64 %85, -1
  %88 = load ptr, ptr %47, align 8, !tbaa !9
  %89 = getelementptr inbounds %struct.rtvec_def, ptr %88, i64 0, i32 1, i64 %87
  %90 = load ptr, ptr %89, align 8, !tbaa !15
  %91 = load i32, ptr %90, align 8
  %92 = and i32 %91, 65535
  %93 = icmp eq i32 %92, 23
  br i1 %93, label %94, label %97

94:                                               ; preds = %84
  %95 = tail call fastcc i32 @reload_cse_simplify_set(ptr noundef nonnull %90, ptr noundef %0) #8, !range !50
  %96 = add nsw i32 %95, %86
  br label %97

97:                                               ; preds = %84, %94
  %98 = phi i32 [ %96, %94 ], [ %86, %84 ]
  %99 = icmp ugt i64 %85, 1
  br i1 %99, label %84, label %100, !llvm.loop !55

100:                                              ; preds = %97
  %101 = icmp sgt i32 %98, 0
  br i1 %101, label %102, label %104

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
define internal fastcc i32 @reload_cse_simplify_set(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !9
  %5 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %4) #9
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !9
  %8 = tail call i32 @true_regnum(ptr noundef %7) #9
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %102, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !9
  %13 = tail call i32 @side_effects_p(ptr noundef %12) #9
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %102

15:                                               ; preds = %10
  %16 = tail call i32 @true_regnum(ptr noundef %12) #9
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %102, label %18

18:                                               ; preds = %15
  %19 = zext nneg i32 %8 to i64
  %20 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !5
  %22 = load ptr, ptr %6, align 8, !tbaa !9
  %23 = load i32, ptr %22, align 8
  %24 = lshr i32 %23, 16
  %25 = and i32 %24, 255
  %26 = tail call ptr @cselib_lookup(ptr noundef %12, i32 noundef %25, i32 noundef 0) #9
  %27 = icmp eq ptr %26, null
  br i1 %27, label %102, label %28

28:                                               ; preds = %18
  %29 = load i32, ptr %12, align 8
  %30 = trunc i32 %29 to i16
  switch i16 %30, label %43 [
    i16 43, label %31
    i16 37, label %35
  ]

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
  %41 = load i32, ptr %40, align 4, !tbaa !5
  %42 = tail call i32 @ix86_register_move_cost(i32 noundef %37, i32 noundef %41, i32 noundef %21) #9
  br label %45

43:                                               ; preds = %28
  %44 = tail call i32 @rtx_cost(ptr noundef nonnull %12, i32 noundef 23, i8 noundef zeroext %5) #9
  br label %45

45:                                               ; preds = %35, %43, %31
  %46 = phi i32 [ %34, %31 ], [ %42, %35 ], [ %44, %43 ]
  %47 = getelementptr inbounds %struct.cselib_val_struct, ptr %26, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !15
  %49 = icmp eq ptr %48, null
  br i1 %49, label %102, label %50

50:                                               ; preds = %45, %97
  %51 = phi ptr [ %100, %97 ], [ %48, %45 ]
  %52 = phi i32 [ %99, %97 ], [ 0, %45 ]
  %53 = phi i32 [ %98, %97 ], [ %46, %45 ]
  %54 = getelementptr inbounds %struct.elt_loc_list, ptr %51, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !56
  %56 = load i32, ptr %55, align 8
  %57 = and i32 %56, 65535
  %58 = zext nneg i32 %57 to i64
  %59 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !5
  %61 = icmp eq i32 %60, 9
  br i1 %61, label %62, label %69

62:                                               ; preds = %50
  %63 = tail call i32 @references_value_p(ptr noundef nonnull %55, i32 noundef 0) #9
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

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
  br i1 %72, label %73, label %97

73:                                               ; preds = %69
  %74 = lshr i32 %70, 16
  %75 = and i32 %74, 255
  %76 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %55) #8
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !5
  %80 = tail call i32 @ix86_register_move_cost(i32 noundef %75, i32 noundef %79, i32 noundef %21) #9
  br label %81

81:                                               ; preds = %73, %67
  %82 = phi i32 [ %80, %73 ], [ %68, %67 ]
  %83 = icmp slt i32 %82, %53
  br i1 %83, label %95, label %84

84:                                               ; preds = %81
  %85 = icmp eq i32 %82, %53
  br i1 %85, label %86, label %97

86:                                               ; preds = %84
  %87 = load i32, ptr %55, align 8
  %88 = and i32 %87, 65535
  %89 = icmp eq i32 %88, 37
  br i1 %89, label %90, label %97

90:                                               ; preds = %86
  %91 = load ptr, ptr %11, align 8, !tbaa !9
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
  %100 = load ptr, ptr %51, align 8, !tbaa !15
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %50, !llvm.loop !58

102:                                              ; preds = %97, %45, %18, %10, %15, %2
  %103 = phi i32 [ 0, %2 ], [ 0, %15 ], [ 0, %10 ], [ 0, %18 ], [ 0, %45 ], [ %99, %97 ]
  ret i32 %103
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @reload_cse_noop_set_p(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !9
  %4 = tail call i32 @cselib_reg_set_mode(ptr noundef %3) #9
  %5 = load ptr, ptr %2, align 8, !tbaa !9
  %6 = load i32, ptr %5, align 8
  %7 = lshr i32 %6, 16
  %8 = and i32 %7, 255
  %9 = icmp eq i32 %4, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !9
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
define internal fastcc void @reload_cse_simplify_operands(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [30 x i64], align 16
  %4 = alloca [30 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %4) #10
  tail call void @extract_insn(ptr noundef %0) #9
  %5 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !59
  %6 = icmp eq i8 %5, 0
  %7 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %6, i1 true, i1 %8
  br i1 %9, label %325, label %10

10:                                               ; preds = %2
  %11 = tail call i32 @constrain_operands(i32 noundef 1) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  tail call void @_fatal_insn_not_found(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef 396, ptr noundef nonnull @.str.2) #9
  br label %14

14:                                               ; preds = %13, %10
  %15 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !59
  %16 = sext i8 %15 to i64
  %17 = shl nsw i64 %16, 2
  %18 = alloca i8, i64 %17, align 16
  %19 = alloca i8, i64 %17, align 16
  %20 = alloca i8, i64 %17, align 16
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %18, i8 0, i64 %17, i1 false)
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %19, i8 0, i64 %17, i1 false)
  %21 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !61
  %22 = icmp sgt i8 %21, 0
  br i1 %22, label %28, label %74

23:                                               ; preds = %69
  %24 = icmp sgt i8 %71, 0
  br i1 %24, label %25, label %74

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %27 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  br label %85

28:                                               ; preds = %14, %69
  %29 = phi i64 [ %70, %69 ], [ 0, %14 ]
  %30 = getelementptr inbounds [30 x i64], ptr %3, i64 0, i64 %29
  store i64 0, ptr %30, align 8, !tbaa !12
  %31 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !15
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 65535
  %35 = icmp eq i32 %34, 12
  br i1 %35, label %69, label %36

36:                                               ; preds = %28
  %37 = zext nneg i32 %34 to i64
  %38 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !5
  %40 = icmp eq i32 %39, 9
  %41 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 3, i64 %29
  %42 = load i32, ptr %41, align 4, !tbaa !5
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %40, i1 %43, i1 false
  br i1 %44, label %69, label %45

45:                                               ; preds = %36
  %46 = tail call ptr @cselib_lookup(ptr noundef nonnull %32, i32 noundef %42, i32 noundef 0) #9
  %47 = icmp eq ptr %46, null
  br i1 %47, label %69, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.cselib_val_struct, ptr %46, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !15
  %51 = icmp eq ptr %50, null
  br i1 %51, label %69, label %52

52:                                               ; preds = %48, %65
  %53 = phi i64 [ %66, %65 ], [ 0, %48 ]
  %54 = phi ptr [ %67, %65 ], [ %50, %48 ]
  %55 = getelementptr inbounds %struct.elt_loc_list, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !56
  %57 = load i32, ptr %56, align 8
  %58 = and i32 %57, 65535
  %59 = icmp eq i32 %58, 37
  br i1 %59, label %60, label %65

60:                                               ; preds = %52
  %61 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %56) #8
  %62 = zext nneg i32 %61 to i64
  %63 = shl nuw i64 1, %62
  %64 = or i64 %63, %53
  store i64 %64, ptr %30, align 8, !tbaa !12
  br label %65

65:                                               ; preds = %52, %60
  %66 = phi i64 [ %53, %52 ], [ %64, %60 ]
  %67 = load ptr, ptr %54, align 8, !tbaa !15
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %52, !llvm.loop !62

69:                                               ; preds = %65, %36, %48, %45, %28
  %70 = add nuw nsw i64 %29, 1
  %71 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !61
  %72 = sext i8 %71 to i64
  %73 = icmp slt i64 %70, %72
  br i1 %73, label %28, label %23, !llvm.loop !63

74:                                               ; preds = %199, %14, %23
  %75 = phi i8 [ %71, %23 ], [ %21, %14 ], [ %201, %199 ]
  %76 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !59
  %77 = icmp sgt i8 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  store i8 0, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !59
  br label %271

79:                                               ; preds = %74
  %80 = zext nneg i8 %76 to i64
  %81 = load i32, ptr @which_alternative, align 4, !tbaa !5
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, ptr %18, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !5
  br label %204

85:                                               ; preds = %25, %199
  %86 = phi i64 [ 0, %25 ], [ %200, %199 ]
  %87 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !59
  %88 = sext i8 %87 to i64
  %89 = shl nsw i64 %88, 2
  %90 = alloca i8, i64 %89, align 16
  %91 = getelementptr inbounds [30 x ptr], ptr %4, i64 0, i64 %86
  store ptr %90, ptr %91, align 8, !tbaa !15
  %92 = icmp sgt i8 %87, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %85
  %94 = zext nneg i8 %87 to i64
  %95 = shl nuw nsw i64 %94, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %90, i8 -1, i64 %95, i1 false), !tbaa !5
  br label %96

96:                                               ; preds = %93, %85
  %97 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %86
  %98 = load ptr, ptr %97, align 8, !tbaa !15
  %99 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 3, i64 %86
  %100 = load i32, ptr %99, align 4, !tbaa !5
  %101 = load i8, ptr %98, align 1, !tbaa !9
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %124, label %103

103:                                              ; preds = %96, %120
  %104 = phi i8 [ %122, %120 ], [ %101, %96 ]
  %105 = phi i32 [ %121, %120 ], [ 0, %96 ]
  %106 = phi ptr [ %107, %120 ], [ %98, %96 ]
  %107 = getelementptr inbounds i8, ptr %106, i64 1
  switch i8 %104, label %120 [
    i8 44, label %108
    i8 63, label %110
    i8 33, label %115
  ]

108:                                              ; preds = %103
  %109 = add nsw i32 %105, 1
  br label %120

110:                                              ; preds = %103
  %111 = sext i32 %105 to i64
  %112 = getelementptr inbounds i32, ptr %18, i64 %111
  %113 = load i32, ptr %112, align 4, !tbaa !5
  %114 = add nsw i32 %113, 3
  store i32 %114, ptr %112, align 4, !tbaa !5
  br label %120

115:                                              ; preds = %103
  %116 = sext i32 %105 to i64
  %117 = getelementptr inbounds i32, ptr %18, i64 %116
  %118 = load i32, ptr %117, align 4, !tbaa !5
  %119 = add nsw i32 %118, 300
  store i32 %119, ptr %117, align 4, !tbaa !5
  br label %120

120:                                              ; preds = %103, %110, %115, %108
  %121 = phi i32 [ %109, %108 ], [ %105, %110 ], [ %105, %115 ], [ %105, %103 ]
  %122 = load i8, ptr %107, align 1, !tbaa !9
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %124, label %103, !llvm.loop !64

124:                                              ; preds = %120, %96
  %125 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %86
  %126 = load ptr, ptr %125, align 8, !tbaa !15
  %127 = call i32 @true_regnum(ptr noundef %126) #9
  %128 = icmp sgt i32 %127, -1
  br i1 %128, label %199, label %129

129:                                              ; preds = %124
  %130 = load i8, ptr %98, align 1, !tbaa !9
  switch i8 %130, label %131 [
    i8 61, label %199
    i8 43, label %199
  ]

131:                                              ; preds = %129
  %132 = getelementptr inbounds [30 x i64], ptr %3, i64 0, i64 %86
  %133 = load i64, ptr %132, align 8, !tbaa !12
  %134 = shl i32 %100, 16
  %135 = and i32 %134, 16711680
  br label %136

136:                                              ; preds = %131, %196
  %137 = phi i64 [ 0, %131 ], [ %197, %196 ]
  %138 = shl nuw nsw i64 1, %137
  %139 = and i64 %133, %138
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %196, label %141

141:                                              ; preds = %136
  %142 = call fastcc i32 @rhs_regno(ptr noundef %1) #8
  %143 = trunc i64 %137 to i32
  call void @df_ref_change_reg_with_loc(i32 noundef %142, i32 noundef %143, ptr noundef %1) #9
  store i32 %143, ptr %26, align 8, !tbaa !9
  %144 = load i32, ptr %1, align 8
  %145 = and i32 %144, -16711681
  %146 = or disjoint i32 %145, %135
  store i32 %146, ptr %1, align 8
  br label %147

147:                                              ; preds = %190, %141
  %148 = phi i32 [ 0, %141 ], [ %191, %190 ]
  %149 = phi ptr [ %98, %141 ], [ %194, %190 ]
  %150 = phi i32 [ 0, %141 ], [ %192, %190 ]
  %151 = load i8, ptr %149, align 1, !tbaa !9
  switch i8 %151, label %156 [
    i8 61, label %190
    i8 43, label %190
    i8 63, label %190
    i8 35, label %190
    i8 38, label %190
    i8 33, label %190
    i8 42, label %190
    i8 37, label %190
    i8 48, label %190
    i8 49, label %190
    i8 50, label %190
    i8 51, label %190
    i8 52, label %190
    i8 53, label %190
    i8 54, label %190
    i8 55, label %190
    i8 56, label %190
    i8 57, label %190
    i8 60, label %190
    i8 62, label %190
    i8 86, label %190
    i8 111, label %190
    i8 69, label %190
    i8 70, label %190
    i8 71, label %190
    i8 72, label %190
    i8 115, label %190
    i8 105, label %190
    i8 110, label %190
    i8 73, label %190
    i8 74, label %190
    i8 75, label %190
    i8 76, label %190
    i8 77, label %190
    i8 78, label %190
    i8 79, label %190
    i8 80, label %190
    i8 112, label %190
    i8 88, label %190
    i8 109, label %190
    i8 103, label %152
    i8 114, label %152
    i8 44, label %163
    i8 0, label %163
  ]

152:                                              ; preds = %147, %147
  %153 = sext i32 %148 to i64
  %154 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subunion, i64 0, i64 %153, i64 13
  %155 = load i32, ptr %154, align 4, !tbaa !5
  br label %190

156:                                              ; preds = %147
  %157 = sext i32 %148 to i64
  %158 = call i32 @lookup_constraint(ptr noundef nonnull %149) #9
  %159 = call i32 @regclass_for_constraint(i32 noundef %158) #9
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subunion, i64 0, i64 %157, i64 %160
  %162 = load i32, ptr %161, align 4, !tbaa !5
  br label %190

163:                                              ; preds = %147, %147
  %164 = sext i32 %150 to i64
  %165 = getelementptr inbounds i32, ptr %90, i64 %164
  %166 = load i32, ptr %165, align 4, !tbaa !5
  %167 = icmp eq i32 %166, -1
  br i1 %167, label %168, label %188

168:                                              ; preds = %163
  %169 = call i32 @reg_fits_class_p(ptr noundef nonnull %1, i32 noundef %148, i32 noundef 0, i32 noundef %100) #9
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %188, label %171

171:                                              ; preds = %168
  %172 = load ptr, ptr %125, align 8, !tbaa !15
  %173 = load i32, ptr %172, align 8
  %174 = and i32 %173, 65535
  %175 = icmp eq i32 %174, 30
  br i1 %175, label %176, label %184

176:                                              ; preds = %171
  %177 = load ptr, ptr %27, align 8, !tbaa !9
  %178 = call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %177) #9
  %179 = call i32 @rtx_cost(ptr noundef nonnull %172, i32 noundef 23, i8 noundef zeroext %178) #9
  %180 = load ptr, ptr %27, align 8, !tbaa !9
  %181 = call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %180) #9
  %182 = call i32 @rtx_cost(ptr noundef nonnull %1, i32 noundef 23, i8 noundef zeroext %181) #9
  %183 = icmp sgt i32 %179, %182
  br i1 %183, label %184, label %188

184:                                              ; preds = %176, %171
  %185 = getelementptr inbounds i32, ptr %19, i64 %164
  %186 = load i32, ptr %185, align 4, !tbaa !5
  %187 = add nsw i32 %186, 1
  store i32 %187, ptr %185, align 4, !tbaa !5
  store i32 %143, ptr %165, align 4, !tbaa !5
  br label %188

188:                                              ; preds = %184, %176, %168, %163
  %189 = add nsw i32 %150, 1
  br label %190

190:                                              ; preds = %147, %147, %147, %147, %147, %147, %147, %147, %147, %147, %147, %147, %147, %147, %147, %147, %147, %147, %147, %147, %147, %147, %147, %147, %147, %147, %147, %147, %147, %147, %147, %147, %147, %147, %147, %147, %147, %147, %147, %147, %188, %156, %152
  %191 = phi i32 [ %162, %156 ], [ 0, %188 ], [ %155, %152 ], [ %148, %147 ], [ %148, %147 ], [ %148, %147 ], [ %148, %147 ], [ %148, %147 ], [ %148, %147 ], [ %148, %147 ], [ %148, %147 ], [ %148, %147 ], [ %148, %147 ], [ %148, %147 ], [ %148, %147 ], [ %148, %147 ], [ %148, %147 ], [ %148, %147 ], [ %148, %147 ], [ %148, %147 ], [ %148, %147 ], [ %148, %147 ], [ %148, %147 ], [ %148, %147 ], [ %148, %147 ], [ %148, %147 ], [ %148, %147 ], [ %148, %147 ], [ %148, %147 ], [ %148, %147 ], [ %148, %147 ], [ %148, %147 ], [ %148, %147 ], [ %148, %147 ], [ %148, %147 ], [ %148, %147 ], [ %148, %147 ], [ %148, %147 ], [ %148, %147 ], [ %148, %147 ], [ %148, %147 ], [ %148, %147 ], [ %148, %147 ]
  %192 = phi i32 [ %150, %156 ], [ %189, %188 ], [ %150, %152 ], [ %150, %147 ], [ %150, %147 ], [ %150, %147 ], [ %150, %147 ], [ %150, %147 ], [ %150, %147 ], [ %150, %147 ], [ %150, %147 ], [ %150, %147 ], [ %150, %147 ], [ %150, %147 ], [ %150, %147 ], [ %150, %147 ], [ %150, %147 ], [ %150, %147 ], [ %150, %147 ], [ %150, %147 ], [ %150, %147 ], [ %150, %147 ], [ %150, %147 ], [ %150, %147 ], [ %150, %147 ], [ %150, %147 ], [ %150, %147 ], [ %150, %147 ], [ %150, %147 ], [ %150, %147 ], [ %150, %147 ], [ %150, %147 ], [ %150, %147 ], [ %150, %147 ], [ %150, %147 ], [ %150, %147 ], [ %150, %147 ], [ %150, %147 ], [ %150, %147 ], [ %150, %147 ], [ %150, %147 ], [ %150, %147 ], [ %150, %147 ]
  %193 = call fastcc i64 @insn_constraint_len(i8 noundef signext %151) #8
  %194 = getelementptr inbounds i8, ptr %149, i64 %193
  %195 = icmp eq i8 %151, 0
  br i1 %195, label %196, label %147

196:                                              ; preds = %190, %136
  %197 = add nuw nsw i64 %137, 1
  %198 = icmp eq i64 %197, 53
  br i1 %198, label %199, label %136, !llvm.loop !65

199:                                              ; preds = %196, %124, %129, %129
  %200 = add nuw nsw i64 %86, 1
  %201 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !61
  %202 = sext i8 %201 to i64
  %203 = icmp slt i64 %200, %202
  br i1 %203, label %85, label %74, !llvm.loop !66

204:                                              ; preds = %79, %215
  %205 = phi i64 [ 0, %79 ], [ %217, %215 ]
  %206 = phi i32 [ 0, %79 ], [ %216, %215 ]
  %207 = getelementptr inbounds i32, ptr %18, i64 %205
  %208 = load i32, ptr %207, align 4, !tbaa !5
  %209 = icmp sgt i32 %208, %84
  br i1 %209, label %215, label %210

210:                                              ; preds = %204
  %211 = add nsw i32 %206, 1
  %212 = sext i32 %206 to i64
  %213 = getelementptr inbounds i32, ptr %20, i64 %212
  %214 = trunc i64 %205 to i32
  store i32 %214, ptr %213, align 4, !tbaa !5
  br label %215

215:                                              ; preds = %204, %210
  %216 = phi i32 [ %211, %210 ], [ %206, %204 ]
  %217 = add nuw nsw i64 %205, 1
  %218 = icmp eq i64 %217, %80
  br i1 %218, label %219, label %204, !llvm.loop !67

219:                                              ; preds = %215
  %220 = trunc i32 %216 to i8
  store i8 %220, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !59
  %221 = shl i32 %216, 24
  %222 = ashr exact i32 %221, 24
  %223 = icmp sgt i32 %222, 1
  br i1 %223, label %224, label %271

224:                                              ; preds = %219
  %225 = add nsw i32 %222, -1
  %226 = zext nneg i32 %225 to i64
  %227 = zext nneg i32 %222 to i64
  br label %228

228:                                              ; preds = %265, %224
  %229 = phi i64 [ 0, %224 ], [ %233, %265 ]
  %230 = phi i64 [ 1, %224 ], [ %269, %265 ]
  %231 = getelementptr inbounds i32, ptr %20, i64 %229
  %232 = load i32, ptr %231, align 4, !tbaa !5
  %233 = add nuw nsw i64 %229, 1
  %234 = trunc i64 %229 to i32
  %235 = sext i32 %232 to i64
  %236 = getelementptr inbounds i32, ptr %19, i64 %235
  %237 = load i32, ptr %236, align 4, !tbaa !5
  %238 = getelementptr inbounds i32, ptr %18, i64 %235
  %239 = load i32, ptr %238, align 4, !tbaa !5
  br label %240

240:                                              ; preds = %228, %259
  %241 = phi i64 [ %230, %228 ], [ %263, %259 ]
  %242 = phi i32 [ %237, %228 ], [ %262, %259 ]
  %243 = phi i32 [ %239, %228 ], [ %261, %259 ]
  %244 = phi i32 [ %234, %228 ], [ %260, %259 ]
  %245 = getelementptr inbounds i32, ptr %20, i64 %241
  %246 = load i32, ptr %245, align 4, !tbaa !5
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, ptr %18, i64 %247
  %249 = load i32, ptr %248, align 4, !tbaa !5
  %250 = getelementptr inbounds i32, ptr %19, i64 %247
  %251 = load i32, ptr %250, align 4, !tbaa !5
  %252 = icmp slt i32 %249, %243
  br i1 %252, label %257, label %253

253:                                              ; preds = %240
  %254 = icmp eq i32 %249, %243
  %255 = icmp sgt i32 %251, %242
  %256 = select i1 %254, i1 %255, i1 false
  br i1 %256, label %257, label %259

257:                                              ; preds = %253, %240
  %258 = trunc i64 %241 to i32
  br label %259

259:                                              ; preds = %257, %253
  %260 = phi i32 [ %258, %257 ], [ %244, %253 ]
  %261 = phi i32 [ %249, %257 ], [ %243, %253 ]
  %262 = phi i32 [ %251, %257 ], [ %242, %253 ]
  %263 = add nuw nsw i64 %241, 1
  %264 = icmp eq i64 %263, %227
  br i1 %264, label %265, label %240, !llvm.loop !68

265:                                              ; preds = %259
  %266 = sext i32 %260 to i64
  %267 = getelementptr inbounds i32, ptr %20, i64 %266
  %268 = load i32, ptr %267, align 4, !tbaa !5
  store i32 %232, ptr %267, align 4, !tbaa !5
  store i32 %268, ptr %231, align 4, !tbaa !5
  %269 = add nuw nsw i64 %230, 1
  %270 = icmp eq i64 %233, %226
  br i1 %270, label %271, label %228, !llvm.loop !69

271:                                              ; preds = %265, %78, %219
  %272 = load i32, ptr %20, align 16, !tbaa !5
  %273 = icmp sgt i8 %75, 0
  br i1 %273, label %274, label %297

274:                                              ; preds = %271
  %275 = sext i32 %272 to i64
  br label %276

276:                                              ; preds = %274, %292
  %277 = phi i8 [ %75, %274 ], [ %293, %292 ]
  %278 = phi i64 [ 0, %274 ], [ %294, %292 ]
  %279 = getelementptr inbounds [30 x ptr], ptr %4, i64 0, i64 %278
  %280 = load ptr, ptr %279, align 8, !tbaa !15
  %281 = getelementptr inbounds i32, ptr %280, i64 %275
  %282 = load i32, ptr %281, align 4, !tbaa !5
  %283 = icmp eq i32 %282, -1
  br i1 %283, label %292, label %284

284:                                              ; preds = %276
  %285 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 3, i64 %278
  %286 = load i32, ptr %285, align 4, !tbaa !5
  %287 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %278
  %288 = load ptr, ptr %287, align 8, !tbaa !15
  %289 = call ptr @gen_rtx_REG(i32 noundef %286, i32 noundef %282) #9
  %290 = call zeroext i8 @validate_change(ptr noundef %0, ptr noundef %288, ptr noundef %289, i8 noundef zeroext 1) #9
  %291 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !61
  br label %292

292:                                              ; preds = %276, %284
  %293 = phi i8 [ %277, %276 ], [ %291, %284 ]
  %294 = add nuw nsw i64 %278, 1
  %295 = sext i8 %293 to i64
  %296 = icmp slt i64 %294, %295
  br i1 %296, label %276, label %297, !llvm.loop !70

297:                                              ; preds = %292, %271
  %298 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !71
  %299 = icmp sgt i8 %298, 0
  br i1 %299, label %300, label %323

300:                                              ; preds = %297
  %301 = sext i32 %272 to i64
  %302 = zext nneg i8 %298 to i64
  br label %303

303:                                              ; preds = %300, %321
  %304 = phi i64 [ %302, %300 ], [ %305, %321 ]
  %305 = add nsw i64 %304, -1
  %306 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 6, i64 %305
  %307 = load i8, ptr %306, align 1, !tbaa !9
  %308 = sext i8 %307 to i64
  %309 = getelementptr inbounds [30 x ptr], ptr %4, i64 0, i64 %308
  %310 = load ptr, ptr %309, align 8, !tbaa !15
  %311 = getelementptr inbounds i32, ptr %310, i64 %301
  %312 = load i32, ptr %311, align 4, !tbaa !5
  %313 = icmp eq i32 %312, -1
  br i1 %313, label %321, label %314

314:                                              ; preds = %303
  %315 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 3, i64 %308
  %316 = load i32, ptr %315, align 4, !tbaa !5
  %317 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 5, i64 %305
  %318 = load ptr, ptr %317, align 8, !tbaa !15
  %319 = call ptr @gen_rtx_REG(i32 noundef %316, i32 noundef %312) #9
  %320 = call zeroext i8 @validate_change(ptr noundef %0, ptr noundef %318, ptr noundef %319, i8 noundef zeroext 1) #9
  br label %321

321:                                              ; preds = %303, %314
  %322 = icmp ugt i64 %304, 1
  br i1 %322, label %303, label %323, !llvm.loop !72

323:                                              ; preds = %321, %297
  %324 = call i32 @apply_change_group() #9
  br label %325

325:                                              ; preds = %2, %323
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
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !9
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
define internal fastcc noundef i64 @insn_constraint_len(i8 noundef signext %0) unnamed_addr #6 {
  %2 = icmp eq i8 %0, 89
  %3 = select i1 %2, i64 2, i64 1
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
define internal fastcc void @reload_combine_note_use(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  br label %3

3:                                                ; preds = %14, %2
  %4 = phi ptr [ %0, %2 ], [ %15, %14 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !15
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
  %10 = load ptr, ptr %9, align 8, !tbaa !9
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 37
  br i1 %13, label %14, label %109

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %3

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !9
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
  %29 = load i8, ptr %28, align 1, !tbaa !9
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
  store i32 -1, ptr %37, align 8, !tbaa !30
  %38 = icmp ugt i64 %34, 1
  br i1 %38, label %33, label %142, !llvm.loop !73

39:                                               ; preds = %3
  %40 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !9
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
  %51 = load ptr, ptr %50, align 8, !tbaa !9
  %52 = load i32, ptr %51, align 8
  %53 = and i32 %52, 65535
  %54 = icmp eq i32 %53, 37
  br i1 %54, label %55, label %109

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %57 = load ptr, ptr %56, align 8, !tbaa !9
  %58 = load i32, ptr %57, align 8
  %59 = and i32 %58, 65535
  %60 = icmp eq i32 %59, 30
  br i1 %60, label %63, label %109

61:                                               ; preds = %3
  %62 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !15
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
  %78 = load i8, ptr %77, align 1, !tbaa !9
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
  store i32 -1, ptr %86, align 8, !tbaa !30
  %87 = icmp ugt i64 %83, 1
  br i1 %87, label %82, label %142, !llvm.loop !74

88:                                               ; preds = %71
  %89 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %73
  %90 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %73, i32 1
  %91 = load i32, ptr %90, align 8, !tbaa !30
  %92 = add nsw i32 %91, -1
  store i32 %92, ptr %90, align 8, !tbaa !30
  %93 = icmp slt i32 %91, 1
  br i1 %93, label %142, label %94

94:                                               ; preds = %88
  %95 = icmp eq i32 %92, 5
  %96 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %73, i32 2
  br i1 %95, label %102, label %97

97:                                               ; preds = %94
  %98 = load ptr, ptr %96, align 8, !tbaa !34
  %99 = tail call i32 @rtx_equal_p(ptr noundef %65, ptr noundef %98) #9
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  store i32 -1, ptr %90, align 8, !tbaa !30
  br label %142

102:                                              ; preds = %94
  store ptr %65, ptr %96, align 8, !tbaa !34
  %103 = load i32, ptr @reload_combine_ruid, align 4, !tbaa !5
  %104 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %73, i32 4
  store i32 %103, ptr %104, align 4, !tbaa !32
  br label %105

105:                                              ; preds = %97, %102
  %106 = zext nneg i32 %92 to i64
  %107 = getelementptr inbounds [6 x %struct.reg_use], ptr %89, i64 0, i64 %106
  store ptr %1, ptr %107, align 8, !tbaa !35
  %108 = getelementptr inbounds [6 x %struct.reg_use], ptr %89, i64 0, i64 %106, i32 1
  store ptr %4, ptr %108, align 8, !tbaa !37
  br label %142

109:                                              ; preds = %3, %8, %49, %55, %39, %16
  %110 = and i32 %6, 65535
  %111 = zext nneg i32 %110 to i64
  %112 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %111
  %113 = load ptr, ptr %112, align 8, !tbaa !15
  %114 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %111
  %115 = load i8, ptr %114, align 1, !tbaa !9
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
  %124 = load i8, ptr %123, align 1, !tbaa !9
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
  %129 = load ptr, ptr %128, align 8, !tbaa !9
  %130 = load i32, ptr %129, align 8, !tbaa !51
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %127
  %133 = zext nneg i32 %130 to i64
  br label %134

134:                                              ; preds = %132, %134
  %135 = phi i64 [ %133, %132 ], [ %136, %134 ]
  %136 = add nsw i64 %135, -1
  %137 = load ptr, ptr %128, align 8, !tbaa !9
  %138 = getelementptr inbounds %struct.rtvec_def, ptr %137, i64 0, i32 1, i64 %136
  tail call fastcc void @reload_combine_note_use(ptr noundef nonnull %138, ptr noundef %1) #8
  %139 = icmp ugt i64 %135, 1
  br i1 %139, label %134, label %140, !llvm.loop !75

140:                                              ; preds = %134, %127, %120, %125
  %141 = icmp sgt i64 %121, 1
  br i1 %141, label %120, label %142, !llvm.loop !76

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
define internal void @reload_combine_note_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = load i32, ptr %0, align 8
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 255
  %7 = and i32 %4, 65535
  %8 = icmp eq i32 %7, 39
  br i1 %8, label %9, label %21

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !9
  %12 = tail call fastcc i32 @rhs_regno(ptr noundef %11) #8
  %13 = load i32, ptr %11, align 8
  %14 = lshr i32 %13, 16
  %15 = and i32 %14, 255
  %16 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %17 = load i32, ptr %16, align 8, !tbaa !9
  %18 = tail call i32 @subreg_regno_offset(i32 noundef %12, i32 noundef %15, i32 noundef %17, i32 noundef %6) #9
  %19 = load ptr, ptr %10, align 8, !tbaa !9
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
  %35 = load ptr, ptr %34, align 8, !tbaa !9
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
  %42 = load i8, ptr %41, align 1, !tbaa !9
  %43 = zext i8 %42 to i32
  %44 = add i32 %29, -1
  %45 = add i32 %44, %43
  %46 = icmp slt i32 %45, %29
  br i1 %46, label %74, label %47

47:                                               ; preds = %38
  %48 = load i32, ptr @reload_combine_ruid, align 4, !tbaa !5
  %49 = sext i32 %45 to i64
  br label %50

50:                                               ; preds = %47, %50
  %51 = phi i64 [ %49, %47 ], [ %54, %50 ]
  %52 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %51, i32 1
  store i32 -1, ptr %52, align 8, !tbaa !30
  %53 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %51, i32 3
  store i32 %48, ptr %53, align 8, !tbaa !27
  %54 = add nsw i64 %51, -1
  %55 = icmp sgt i64 %51, %39
  br i1 %55, label %50, label %74, !llvm.loop !77

56:                                               ; preds = %33
  %57 = sext i32 %29 to i64
  %58 = zext nneg i32 %6 to i64
  %59 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %57, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !9
  %61 = zext i8 %60 to i32
  %62 = add i32 %29, -1
  %63 = add i32 %62, %61
  %64 = icmp slt i32 %63, %29
  br i1 %64, label %74, label %65

65:                                               ; preds = %56
  %66 = load i32, ptr @reload_combine_ruid, align 4, !tbaa !5
  %67 = sext i32 %63 to i64
  br label %68

68:                                               ; preds = %65, %68
  %69 = phi i64 [ %67, %65 ], [ %72, %68 ]
  %70 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %69, i32 3
  store i32 %66, ptr %70, align 8, !tbaa !27
  %71 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %69, i32 1
  store i32 6, ptr %71, align 8, !tbaa !30
  %72 = add nsw i64 %69, -1
  %73 = icmp sgt i64 %69, %57
  br i1 %73, label %68, label %74, !llvm.loop !78

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
define internal void @move2add_note_store(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = load i32, ptr %0, align 8
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 255
  %7 = and i32 %4, 65535
  %8 = icmp eq i32 %7, 39
  br i1 %8, label %9, label %22

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !9
  %12 = tail call fastcc i32 @rhs_regno(ptr noundef %11) #8
  %13 = load i32, ptr %11, align 8
  %14 = lshr i32 %13, 16
  %15 = and i32 %14, 255
  %16 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %17 = load i32, ptr %16, align 8, !tbaa !9
  %18 = tail call i32 @subreg_regno_offset(i32 noundef %12, i32 noundef %15, i32 noundef %17, i32 noundef %6) #9
  %19 = tail call i32 @subreg_nregs(ptr noundef nonnull %0) #9
  %20 = load ptr, ptr %10, align 8, !tbaa !9
  %21 = load i32, ptr %20, align 8
  br label %22

22:                                               ; preds = %9, %3
  %23 = phi i32 [ %21, %9 ], [ %4, %3 ]
  %24 = phi i32 [ %19, %9 ], [ 0, %3 ]
  %25 = phi i32 [ %18, %9 ], [ 0, %3 ]
  %26 = phi ptr [ %20, %9 ], [ %0, %3 ]
  %27 = trunc i32 %23 to i16
  switch i16 %27, label %195 [
    i16 43, label %28
    i16 37, label %41
  ]

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !9
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 65534
  %33 = add nsw i32 %32, -74
  %34 = icmp ult i32 %33, 4
  br i1 %34, label %35, label %195

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !9
  %38 = tail call fastcc i32 @rhs_regno(ptr noundef %37) #8
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds [53 x i32], ptr @reg_set_luid, i64 0, i64 %39
  store i32 0, ptr %40, align 4, !tbaa !5
  br label %195

41:                                               ; preds = %22
  %42 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %26) #8
  %43 = add i32 %42, %25
  %44 = icmp eq i32 %24, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = zext i32 %43 to i64
  %47 = zext nneg i32 %6 to i64
  %48 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %46, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !9
  %50 = zext i8 %49 to i32
  br label %51

51:                                               ; preds = %45, %41
  %52 = phi i32 [ %24, %41 ], [ %50, %45 ]
  %53 = lshr i32 %23, 16
  %54 = and i32 %53, 255
  %55 = zext nneg i32 %54 to i64
  %56 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !9
  %58 = icmp eq i8 %57, 2
  br i1 %58, label %63, label %59

59:                                               ; preds = %51
  %60 = icmp eq i8 %57, 3
  %61 = icmp eq i32 %52, 1
  %62 = select i1 %60, i1 %61, i1 false
  br i1 %62, label %65, label %184

63:                                               ; preds = %51
  %64 = icmp eq i32 %52, 1
  br i1 %64, label %65, label %184

65:                                               ; preds = %59, %63
  %66 = load i32, ptr %1, align 8
  %67 = and i32 %66, 65535
  %68 = icmp eq i32 %67, 23
  br i1 %68, label %69, label %184

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !9
  %72 = load i32, ptr %71, align 8
  %73 = trunc i32 %72 to i16
  switch i16 %73, label %74 [
    i16 120, label %184
    i16 40, label %184
  ]

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %76 = load ptr, ptr %75, align 8, !tbaa !9
  %77 = load i32, ptr %76, align 8
  %78 = trunc i32 %77 to i16
  switch i16 %78, label %138 [
    i16 49, label %79
    i16 37, label %145
    i16 30, label %128
  ]

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !9
  %82 = load i32, ptr %81, align 8
  %83 = and i32 %82, 65535
  %84 = icmp eq i32 %83, 37
  br i1 %84, label %85, label %138

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1, i32 0, i32 0, i64 1
  %87 = load ptr, ptr %86, align 8, !tbaa !9
  %88 = load i32, ptr %87, align 8
  %89 = trunc i32 %88 to i16
  switch i16 %89, label %138 [
    i16 30, label %90
    i16 37, label %92
  ]

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1
  br label %141

92:                                               ; preds = %85
  %93 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %87) #8
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds [53 x i32], ptr @reg_set_luid, i64 0, i64 %94
  %96 = load i32, ptr %95, align 4, !tbaa !5
  %97 = load i32, ptr @move2add_last_label_luid, align 4, !tbaa !5
  %98 = icmp sgt i32 %96, %97
  br i1 %98, label %99, label %138

99:                                               ; preds = %92
  %100 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %55
  %101 = load i8, ptr %100, align 1, !tbaa !9
  %102 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %87) #8
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds [53 x i32], ptr @reg_mode, i64 0, i64 %103
  %105 = load i32, ptr %104, align 4, !tbaa !5
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %106
  %108 = load i8, ptr %107, align 1, !tbaa !9
  %109 = icmp ugt i8 %101, %108
  br i1 %109, label %138, label %110

110:                                              ; preds = %99
  %111 = getelementptr inbounds [53 x i32], ptr @reg_base_reg, i64 0, i64 %103
  %112 = load i32, ptr %111, align 4, !tbaa !5
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = getelementptr inbounds [53 x i64], ptr @reg_offset, i64 0, i64 %103
  br label %141

116:                                              ; preds = %110
  %117 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %81) #8
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds [53 x i32], ptr @reg_set_luid, i64 0, i64 %118
  %120 = load i32, ptr %119, align 4, !tbaa !5
  %121 = icmp sgt i32 %120, %97
  br i1 %121, label %122, label %138

122:                                              ; preds = %116
  %123 = getelementptr inbounds [53 x i32], ptr @reg_base_reg, i64 0, i64 %118
  %124 = load i32, ptr %123, align 4, !tbaa !5
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %138

126:                                              ; preds = %122
  %127 = getelementptr inbounds [53 x i64], ptr @reg_offset, i64 0, i64 %118
  br label %141

128:                                              ; preds = %74
  %129 = zext i32 %43 to i64
  %130 = getelementptr inbounds [53 x i32], ptr @reg_base_reg, i64 0, i64 %129
  store i32 -1, ptr %130, align 4, !tbaa !5
  %131 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1
  %132 = load i64, ptr %131, align 8, !tbaa !9
  %133 = getelementptr inbounds [53 x i64], ptr @reg_offset, i64 0, i64 %129
  store i64 %132, ptr %133, align 8, !tbaa !12
  %134 = load i32, ptr @move2add_last_label_luid, align 4, !tbaa !5
  %135 = add nsw i32 %134, 1
  %136 = getelementptr inbounds [53 x i32], ptr @reg_set_luid, i64 0, i64 %129
  store i32 %135, ptr %136, align 4, !tbaa !5
  %137 = getelementptr inbounds [53 x i32], ptr @reg_mode, i64 0, i64 %129
  store i32 %6, ptr %137, align 4, !tbaa !5
  br label %195

138:                                              ; preds = %99, %159, %85, %74, %79, %92, %116, %122
  %139 = zext i32 %43 to i64
  %140 = getelementptr inbounds [53 x i32], ptr @reg_set_luid, i64 0, i64 %139
  store i32 0, ptr %140, align 4, !tbaa !5
  br label %195

141:                                              ; preds = %126, %114, %90
  %142 = phi ptr [ %91, %90 ], [ %115, %114 ], [ %127, %126 ]
  %143 = phi ptr [ %81, %90 ], [ %81, %114 ], [ %87, %126 ]
  %144 = load i64, ptr %142, align 8, !tbaa !9
  br label %145

145:                                              ; preds = %141, %74
  %146 = phi ptr [ %76, %74 ], [ %143, %141 ]
  %147 = phi i64 [ 0, %74 ], [ %144, %141 ]
  %148 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %146) #8
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [53 x i32], ptr @reg_set_luid, i64 0, i64 %149
  %151 = load i32, ptr %150, align 4, !tbaa !5
  %152 = load i32, ptr @move2add_last_label_luid, align 4, !tbaa !5
  %153 = icmp sgt i32 %151, %152
  br i1 %153, label %159, label %154

154:                                              ; preds = %145
  %155 = getelementptr inbounds [53 x i32], ptr @reg_base_reg, i64 0, i64 %149
  store i32 %148, ptr %155, align 4, !tbaa !5
  %156 = getelementptr inbounds [53 x i64], ptr @reg_offset, i64 0, i64 %149
  store i64 0, ptr %156, align 8, !tbaa !12
  %157 = load i32, ptr @move2add_luid, align 4, !tbaa !5
  store i32 %157, ptr %150, align 4, !tbaa !5
  %158 = getelementptr inbounds [53 x i32], ptr @reg_mode, i64 0, i64 %149
  store i32 %6, ptr %158, align 4, !tbaa !5
  br label %173

159:                                              ; preds = %145
  %160 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %55
  %161 = load i8, ptr %160, align 1, !tbaa !9
  %162 = getelementptr inbounds [53 x i32], ptr @reg_mode, i64 0, i64 %149
  %163 = load i32, ptr %162, align 4, !tbaa !5
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %164
  %166 = load i8, ptr %165, align 1, !tbaa !9
  %167 = icmp ugt i8 %161, %166
  br i1 %167, label %138, label %168

168:                                              ; preds = %159
  %169 = getelementptr inbounds [53 x i32], ptr @reg_base_reg, i64 0, i64 %149
  %170 = load i32, ptr %169, align 4, !tbaa !5
  %171 = getelementptr inbounds [53 x i64], ptr @reg_offset, i64 0, i64 %149
  %172 = load i64, ptr %171, align 8, !tbaa !12
  br label %173

173:                                              ; preds = %168, %154
  %174 = phi i64 [ %172, %168 ], [ 0, %154 ]
  %175 = phi i32 [ %170, %168 ], [ %148, %154 ]
  %176 = phi i32 [ %151, %168 ], [ %157, %154 ]
  %177 = zext i32 %43 to i64
  %178 = getelementptr inbounds [53 x i32], ptr @reg_mode, i64 0, i64 %177
  store i32 %6, ptr %178, align 4, !tbaa !5
  %179 = getelementptr inbounds [53 x i32], ptr @reg_set_luid, i64 0, i64 %177
  store i32 %176, ptr %179, align 4, !tbaa !5
  %180 = getelementptr inbounds [53 x i32], ptr @reg_base_reg, i64 0, i64 %177
  store i32 %175, ptr %180, align 4, !tbaa !5
  %181 = add nsw i64 %174, %147
  %182 = tail call i64 @trunc_int_for_mode(i64 noundef %181, i32 noundef %54) #9
  %183 = getelementptr inbounds [53 x i64], ptr @reg_offset, i64 0, i64 %177
  store i64 %182, ptr %183, align 8, !tbaa !12
  br label %195

184:                                              ; preds = %69, %69, %65, %63, %59
  %185 = add i32 %52, %43
  %186 = icmp ult i32 %43, %185
  br i1 %186, label %187, label %195

187:                                              ; preds = %184
  %188 = zext i32 %43 to i64
  %189 = shl nuw nsw i64 %188, 2
  %190 = getelementptr i8, ptr @reg_set_luid, i64 %189
  %191 = add i32 %52, -1
  %192 = zext i32 %191 to i64
  %193 = shl nuw nsw i64 %192, 2
  %194 = add nuw nsw i64 %193, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %190, i8 0, i64 %194, i1 false), !tbaa !5
  br label %195

195:                                              ; preds = %187, %184, %28, %138, %128, %173, %22, %35
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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = distinct !{!14, !11}
!15 = !{!16, !16, i64 0}
!16 = !{!"any pointer", !7, i64 0}
!17 = !{!18, !16, i64 8}
!18 = !{!"function", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !16, i64 88, !16, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !16, i64 128, !6, i64 136, !6, i64 137, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139}
!19 = !{!20, !16, i64 8}
!20 = !{!"control_flow_graph", !16, i64 0, !16, i64 8, !16, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !16, i64 40, !6, i64 48, !7, i64 52, !7, i64 60, !6, i64 68, !6, i64 72}
!21 = !{!22, !16, i64 48}
!22 = !{!"basic_block_def", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !7, i64 32, !16, i64 48, !16, i64 56, !7, i64 64, !13, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96}
!23 = !{!20, !16, i64 0}
!24 = !{!25, !16, i64 0}
!25 = !{!"rtl_bb_info", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !6, i64 32}
!26 = distinct !{!26, !11}
!27 = !{!28, !6, i64 112}
!28 = !{!"", !7, i64 0, !6, i64 96, !16, i64 104, !6, i64 112, !6, i64 116}
!29 = distinct !{!29, !11}
!30 = !{!28, !6, i64 96}
!31 = distinct !{!31, !11}
!32 = !{!28, !6, i64 116}
!33 = distinct !{!33, !11}
!34 = !{!28, !16, i64 104}
!35 = !{!36, !16, i64 0}
!36 = !{!"reg_use", !16, i64 0, !16, i64 8}
!37 = !{!36, !16, i64 8}
!38 = distinct !{!38, !11}
!39 = distinct !{!39, !11}
!40 = distinct !{!40, !11}
!41 = distinct !{!41, !11}
!42 = distinct !{!42, !11}
!43 = distinct !{!43, !11}
!44 = distinct !{!44, !11}
!45 = distinct !{!45, !11}
!46 = distinct !{!46, !11}
!47 = distinct !{!47, !11}
!48 = distinct !{!48, !11}
!49 = distinct !{!49, !11}
!50 = !{i32 0, i32 2}
!51 = !{!52, !6, i64 0}
!52 = !{!"rtvec_def", !6, i64 0, !7, i64 8}
!53 = distinct !{!53, !11}
!54 = distinct !{!54, !11}
!55 = distinct !{!55, !11}
!56 = !{!57, !16, i64 8}
!57 = !{!"elt_loc_list", !16, i64 0, !16, i64 8, !16, i64 16}
!58 = distinct !{!58, !11}
!59 = !{!60, !7, i64 1088}
!60 = !{!"recog_data", !7, i64 0, !7, i64 240, !7, i64 480, !7, i64 720, !7, i64 840, !7, i64 960, !7, i64 1072, !7, i64 1086, !7, i64 1087, !7, i64 1088, !7, i64 1089, !16, i64 1120}
!61 = !{!60, !7, i64 1086}
!62 = distinct !{!62, !11}
!63 = distinct !{!63, !11}
!64 = distinct !{!64, !11}
!65 = distinct !{!65, !11}
!66 = distinct !{!66, !11}
!67 = distinct !{!67, !11}
!68 = distinct !{!68, !11}
!69 = distinct !{!69, !11}
!70 = distinct !{!70, !11}
!71 = !{!60, !7, i64 1087}
!72 = distinct !{!72, !11}
!73 = distinct !{!73, !11}
!74 = distinct !{!74, !11}
!75 = distinct !{!75, !11}
!76 = distinct !{!76, !11}
!77 = distinct !{!77, !11}
!78 = distinct !{!78, !11}
