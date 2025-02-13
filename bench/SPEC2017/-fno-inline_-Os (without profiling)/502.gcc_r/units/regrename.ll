; ModuleID = 'regrename.c'
source_filename = "regrename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, ptr, ptr, ptr }
%struct.emit_status = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.varasm_status = type { ptr, i32 }
%struct.incoming_args = type { i32, i32, i32, ptr, %struct.ix86_args, ptr }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.function_subsections = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtl_eh = type { ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }
%struct.bitmap_head_def = type { ptr, ptr, i32, ptr }
%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
%struct.recog_data = type { [30 x ptr], [30 x ptr], [30 x ptr], [30 x i32], [30 x i32], [14 x ptr], [14 x i8], i8, i8, i8, [30 x i8], ptr }
%struct.operand_alternative = type { ptr, i32, i32, i32, i32, i8 }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.du_head = type { ptr, ptr, ptr, i32, i32, i32, %struct.bitmap_head_def, i64, i8 }
%struct.du_chain = type { ptr, ptr, ptr, i16 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.df_base_ref = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.dataflow = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.VEC_du_head_p_base = type { i32, i32, [1 x ptr] }

@.str = private unnamed_addr constant [6 x i8] c"rnreg\00", align 1
@pass_regrename = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str, ptr @gate_handle_regrename, ptr @regrename_optimize, ptr null, ptr null, i32 0, i32 157, i32 0, i32 0, i32 0, i32 0, i32 132097 } }, align 8
@optimize = external local_unnamed_addr global i32, align 4
@flag_rename_registers = external local_unnamed_addr global i32, align 4
@rename_obstack = internal global %struct.obstack zeroinitializer, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@id_to_chain = internal unnamed_addr global ptr null, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"\0ABasic block %d:\0A\00", align 1
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@fixed_regs = external local_unnamed_addr global [53 x i8], align 16
@global_regs = external local_unnamed_addr global [53 x i8], align 16
@reg_class_contents = external local_unnamed_addr global [27 x i64], align 16
@call_used_reg_set = external local_unnamed_addr global i64, align 8
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@call_used_regs = external local_unnamed_addr global [53 x i8], align 16
@.str.2 = private unnamed_addr constant [23 x i8] c"Register %s in insn %d\00", align 1
@reg_names = external local_unnamed_addr global [53 x ptr], align 16
@.str.3 = private unnamed_addr constant [16 x i8] c" crosses a call\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"; no available better choice\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c", renamed as %s\0A\00", align 1
@closed_chains = internal unnamed_addr global ptr null, align 8
@open_chains = internal unnamed_addr global ptr null, align 8
@fail_current_block = internal unnamed_addr global i1 false, align 1
@current_id = internal unnamed_addr global i32 0, align 4
@open_chains_set = internal global %struct.bitmap_head_def zeroinitializer, align 8
@bitmap_default_obstack = external global %struct.bitmap_obstack, align 8
@live_in_chains = internal global i64 0, align 8
@live_hard_regs = internal global i64 0, align 8
@.str.6 = private unnamed_addr constant [12 x i8] c"regrename.c\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@which_alternative = external local_unnamed_addr global i32, align 4
@recog_data = external local_unnamed_addr global %struct.recog_data, align 8
@recog_op_alt = external local_unnamed_addr global [30 x [30 x %struct.operand_alternative]], align 16
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@df = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [23 x i8] c"Creating chain %s (%d)\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c" at insn %d\00", align 1
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@.str.11 = private unnamed_addr constant [45 x i8] c"Cannot rename chain %s (%d) at insn %d (%s)\0A\00", align 1
@scan_actions_name = internal unnamed_addr constant [6 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], align 16
@.str.12 = private unnamed_addr constant [47 x i8] c"Widening register in chain %s (%d) at insn %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"Failing basic block due to unhandled overlap\0A\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"Closing chain %s (%d) at insn %d (%s)\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"terminate_write\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"terminate_dead\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"mark_all_read\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"mark_read\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"mark_write\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"mark_access\00", align 1
@reg_renumber = external local_unnamed_addr global ptr, align 8
@.str.21 = private unnamed_addr constant [18 x i8] c"Register %s (%d):\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c" %d [%s]\00", align 1
@reg_class_names = external local_unnamed_addr global [0 x ptr], align 8
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_handle_regrename() #0 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !5
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_rename_registers, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @regrename_optimize() #1 {
  %1 = alloca [53 x i32], align 16
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 212, ptr nonnull %1) #19
  %4 = tail call i32 @df_set_flags(i32 noundef 1) #20
  tail call void @df_note_add_problem() #20
  tail call void @df_analyze() #20
  %5 = tail call i32 @df_set_flags(i32 noundef 32) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(212) %1, i8 0, i64 212, i1 false)
  %6 = tail call i32 @_obstack_begin(ptr noundef nonnull @rename_obstack, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #20
  store i64 0, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 5), align 8, !tbaa !9
  %7 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 4), align 8, !tbaa !13
  %8 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 3), align 8, !tbaa !14
  %9 = ptrtoint ptr %7 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %0
  tail call void @_obstack_newchunk(ptr noundef nonnull @rename_obstack, i32 noundef 0) #20
  %14 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 5), align 8, !tbaa !9
  %15 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 3), align 8, !tbaa !14
  br label %16

16:                                               ; preds = %0, %13
  %17 = phi ptr [ %8, %0 ], [ %15, %13 ]
  %18 = phi i64 [ 0, %0 ], [ %14, %13 ]
  %19 = getelementptr inbounds i8, ptr %17, i64 %18
  %20 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 2), align 8, !tbaa !15
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 10), align 8
  %24 = or i8 %23, 2
  store i8 %24, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 10), align 8
  br label %25

25:                                               ; preds = %16, %22
  %26 = ptrtoint ptr %20 to i64
  store i64 %26, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 5), align 8, !tbaa !9
  %27 = ptrtoint ptr %19 to i64
  %28 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 6), align 8, !tbaa !16
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %27
  %31 = xor i32 %28, -1
  %32 = sext i32 %31 to i64
  %33 = and i64 %30, %32
  %34 = inttoptr i64 %33 to ptr
  %35 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 1), align 8, !tbaa !17
  %36 = ptrtoint ptr %35 to i64
  %37 = sub i64 %33, %36
  %38 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 4), align 8, !tbaa !13
  %39 = ptrtoint ptr %38 to i64
  %40 = sub i64 %39, %36
  %41 = icmp sgt i64 %37, %40
  %42 = select i1 %41, ptr %38, ptr %34
  store ptr %42, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 3), align 8
  store ptr %42, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 2), align 8, !tbaa !15
  %43 = load ptr, ptr @cfun, align 8, !tbaa !18
  %44 = getelementptr inbounds %struct.function, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !19
  %46 = load ptr, ptr %45, align 8, !tbaa !21
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %46, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !23
  %49 = getelementptr inbounds %struct.control_flow_graph, ptr %45, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !25
  %51 = icmp eq ptr %48, %50
  br i1 %51, label %289, label %52

52:                                               ; preds = %25, %277
  %53 = phi ptr [ %279, %277 ], [ %48, %25 ]
  %54 = phi i32 [ %263, %277 ], [ 0, %25 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  %55 = tail call fastcc ptr @VEC_du_head_p_heap_alloc() #21
  store ptr %55, ptr @id_to_chain, align 8, !tbaa !18
  %56 = load ptr, ptr @dump_file, align 8, !tbaa !18
  %57 = icmp eq ptr %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.basic_block_def, ptr %53, i64 0, i32 9
  %60 = load i32, ptr %59, align 8, !tbaa !26
  %61 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %56, ptr noundef nonnull @.str.1, i32 noundef %60) #21
  br label %62

62:                                               ; preds = %58, %52
  %63 = tail call fastcc ptr @build_def_use(ptr noundef %53) #21
  %64 = load ptr, ptr @dump_file, align 8, !tbaa !18
  %65 = icmp eq ptr %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  tail call fastcc void @dump_def_use_chain(ptr noundef %63) #21
  br label %67

67:                                               ; preds = %66, %62
  store i64 0, ptr %2, align 8, !tbaa !27
  %68 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !28
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  call fastcc void @add_to_hard_reg_set(ptr noundef nonnull %2, i32 noundef 16, i32 noundef 20) #21
  call fastcc void @add_to_hard_reg_set(ptr noundef nonnull %2, i32 noundef 16, i32 noundef 6) #21
  br label %71

71:                                               ; preds = %70, %67
  %72 = icmp eq ptr %63, null
  br i1 %72, label %262, label %73

73:                                               ; preds = %71
  %74 = load i64, ptr %2, align 8
  br label %75

75:                                               ; preds = %73, %259
  %76 = phi i32 [ %54, %73 ], [ %260, %259 ]
  %77 = phi ptr [ %63, %73 ], [ %80, %259 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %78 = getelementptr inbounds %struct.du_head, ptr %77, i64 0, i32 3
  %79 = load i32, ptr %78, align 8, !tbaa !37
  %80 = load ptr, ptr %77, align 8, !tbaa !40
  %81 = getelementptr inbounds %struct.du_head, ptr %77, i64 0, i32 8
  %82 = load i8, ptr %81, align 8
  %83 = and i8 %82, 4
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %259, !llvm.loop !41

85:                                               ; preds = %75
  %86 = getelementptr inbounds %struct.du_head, ptr %77, i64 0, i32 4
  %87 = load i32, ptr %86, align 4, !tbaa !43
  %88 = sext i32 %79 to i64
  %89 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %88
  %90 = load i8, ptr %89, align 1, !tbaa !44
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %259, !llvm.loop !41

92:                                               ; preds = %85
  %93 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %88
  %94 = load i8, ptr %93, align 1, !tbaa !44
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %259, !llvm.loop !41

96:                                               ; preds = %92
  %97 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !28
  %98 = icmp ne i8 %97, 0
  %99 = icmp eq i32 %79, 6
  %100 = select i1 %98, i1 %99, i1 false
  br i1 %100, label %259, label %101, !llvm.loop !41

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.du_head, ptr %77, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !18
  %104 = icmp eq ptr %103, null
  br i1 %104, label %259, label %105

105:                                              ; preds = %101, %123
  %106 = phi ptr [ %126, %123 ], [ %103, %101 ]
  %107 = phi i32 [ %125, %123 ], [ 0, %101 ]
  %108 = phi i64 [ %124, %123 ], [ %74, %101 ]
  %109 = getelementptr inbounds %struct.du_chain, ptr %106, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !45
  %111 = load i32, ptr %110, align 8
  %112 = and i32 %111, 65535
  %113 = icmp eq i32 %112, 7
  br i1 %113, label %123, label %114

114:                                              ; preds = %105
  %115 = add nsw i32 %107, 1
  %116 = getelementptr inbounds %struct.du_chain, ptr %106, i64 0, i32 3
  %117 = load i16, ptr %116, align 8
  %118 = zext i16 %117 to i64
  %119 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %118
  %120 = load i64, ptr %119, align 8, !tbaa !27
  %121 = xor i64 %120, -1
  %122 = or i64 %108, %121
  br label %123

123:                                              ; preds = %105, %114
  %124 = phi i64 [ %108, %105 ], [ %122, %114 ]
  %125 = phi i32 [ %107, %105 ], [ %115, %114 ]
  %126 = load ptr, ptr %106, align 8, !tbaa !18
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %105, !llvm.loop !47

128:                                              ; preds = %123
  store i64 %124, ptr %3, align 8, !tbaa !27
  %129 = icmp slt i32 %125, 2
  br i1 %129, label %259, label %130, !llvm.loop !41

130:                                              ; preds = %128
  %131 = and i8 %82, 2
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %130
  %134 = load i64, ptr @call_used_reg_set, align 8, !tbaa !27
  %135 = or i64 %124, %134
  store i64 %135, ptr %3, align 8, !tbaa !27
  br label %136

136:                                              ; preds = %133, %130
  call fastcc void @merge_overlapping_regs(ptr noundef nonnull %3, ptr noundef nonnull %77) #21
  %137 = load i64, ptr %3, align 8
  br label %138

138:                                              ; preds = %136, %216
  %139 = phi i64 [ 0, %136 ], [ %219, %216 ]
  %140 = phi i32 [ %87, %136 ], [ %218, %216 ]
  %141 = phi i32 [ %79, %136 ], [ %217, %216 ]
  %142 = load ptr, ptr %102, align 8, !tbaa !48
  %143 = getelementptr inbounds %struct.du_chain, ptr %142, i64 0, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !49
  %145 = load ptr, ptr %144, align 8, !tbaa !18
  %146 = load i32, ptr %145, align 8
  %147 = lshr i32 %146, 16
  %148 = and i32 %147, 255
  %149 = zext nneg i32 %148 to i64
  %150 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %139, i64 %149
  %151 = load i8, ptr %150, align 1, !tbaa !44
  %152 = zext i8 %151 to i32
  %153 = zext i8 %151 to i64
  br label %154

154:                                              ; preds = %183, %138
  %155 = phi i64 [ %156, %183 ], [ %153, %138 ]
  %156 = add nsw i64 %155, -1
  %157 = icmp sgt i64 %155, 0
  br i1 %157, label %162, label %158

158:                                              ; preds = %154
  %159 = load ptr, ptr %102, align 8, !tbaa !18
  %160 = icmp eq ptr %159, null
  %161 = trunc i64 %139 to i32
  br i1 %160, label %207, label %188

162:                                              ; preds = %154
  %163 = add nsw i64 %156, %139
  %164 = shl nuw i64 1, %163
  %165 = and i64 %137, %164
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %216

167:                                              ; preds = %162
  %168 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %163
  %169 = load i8, ptr %168, align 1, !tbaa !44
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %171, label %216

171:                                              ; preds = %167
  %172 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %163
  %173 = load i8, ptr %172, align 1, !tbaa !44
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %175, label %216

175:                                              ; preds = %171
  %176 = trunc i64 %163 to i32
  %177 = tail call zeroext i8 @df_regs_ever_live_p(i32 noundef %176) #20
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %175
  %180 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %163
  %181 = load i8, ptr %180, align 1, !tbaa !44
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %216, label %183

183:                                              ; preds = %179, %175
  %184 = trunc i64 %156 to i32
  %185 = add i32 %79, %184
  %186 = and i32 %185, -8
  %187 = icmp eq i32 %186, 8
  br i1 %187, label %216, label %154, !llvm.loop !50

188:                                              ; preds = %158, %204
  %189 = phi ptr [ %205, %204 ], [ %159, %158 ]
  %190 = getelementptr inbounds %struct.du_chain, ptr %189, i64 0, i32 2
  %191 = load ptr, ptr %190, align 8, !tbaa !49
  %192 = load ptr, ptr %191, align 8, !tbaa !18
  %193 = load i32, ptr %192, align 8
  %194 = lshr i32 %193, 16
  %195 = and i32 %194, 255
  %196 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %161, i32 noundef %195) #20
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %198, label %204

198:                                              ; preds = %188
  %199 = getelementptr inbounds %struct.du_chain, ptr %189, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !45
  %201 = load i32, ptr %200, align 8
  %202 = and i32 %201, 65535
  %203 = icmp eq i32 %202, 7
  br i1 %203, label %204, label %216

204:                                              ; preds = %198, %188
  %205 = load ptr, ptr %189, align 8, !tbaa !18
  %206 = icmp eq ptr %205, null
  br i1 %206, label %207, label %188, !llvm.loop !51

207:                                              ; preds = %204, %158
  %208 = sext i32 %141 to i64
  %209 = getelementptr inbounds [53 x i32], ptr %1, i64 0, i64 %208
  %210 = load i32, ptr %209, align 4, !tbaa !5
  %211 = getelementptr inbounds [53 x i32], ptr %1, i64 0, i64 %139
  %212 = load i32, ptr %211, align 4, !tbaa !5
  %213 = icmp sgt i32 %210, %212
  %214 = select i1 %213, i32 %161, i32 %141
  %215 = select i1 %213, i32 %152, i32 %140
  br label %216

216:                                              ; preds = %183, %179, %171, %167, %162, %198, %207
  %217 = phi i32 [ %214, %207 ], [ %141, %198 ], [ %141, %162 ], [ %141, %167 ], [ %141, %171 ], [ %141, %179 ], [ %141, %183 ]
  %218 = phi i32 [ %215, %207 ], [ %140, %198 ], [ %140, %162 ], [ %140, %167 ], [ %140, %171 ], [ %140, %179 ], [ %140, %183 ]
  %219 = add nuw nsw i64 %139, 1
  %220 = icmp eq i64 %219, 53
  br i1 %220, label %221, label %138, !llvm.loop !52

221:                                              ; preds = %216
  %222 = load ptr, ptr @dump_file, align 8, !tbaa !18
  %223 = icmp eq ptr %222, null
  br i1 %223, label %239, label %224

224:                                              ; preds = %221
  %225 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %88
  %226 = load ptr, ptr %225, align 8, !tbaa !18
  %227 = load ptr, ptr %102, align 8, !tbaa !48
  %228 = getelementptr inbounds %struct.du_chain, ptr %227, i64 0, i32 1
  %229 = load ptr, ptr %228, align 8, !tbaa !45
  %230 = getelementptr inbounds %struct.rtx_def, ptr %229, i64 0, i32 1
  %231 = load i32, ptr %230, align 8, !tbaa !44
  %232 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %222, ptr noundef nonnull @.str.2, ptr noundef %226, i32 noundef %231) #21
  %233 = load i8, ptr %81, align 8
  %234 = and i8 %233, 2
  %235 = icmp eq i8 %234, 0
  br i1 %235, label %239, label %236

236:                                              ; preds = %224
  %237 = load ptr, ptr @dump_file, align 8, !tbaa !18
  %238 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 15, i64 1, ptr %237)
  br label %239

239:                                              ; preds = %224, %236, %221
  %240 = icmp eq i32 %217, %79
  br i1 %240, label %241, label %248

241:                                              ; preds = %239
  %242 = add nsw i32 %76, 1
  %243 = getelementptr inbounds [53 x i32], ptr %1, i64 0, i64 %88
  store i32 %242, ptr %243, align 4, !tbaa !5
  %244 = load ptr, ptr @dump_file, align 8, !tbaa !18
  %245 = icmp eq ptr %244, null
  br i1 %245, label %259, label %246, !llvm.loop !41

246:                                              ; preds = %241
  %247 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 29, i64 1, ptr nonnull %244)
  br label %259, !llvm.loop !41

248:                                              ; preds = %239
  %249 = load ptr, ptr @dump_file, align 8, !tbaa !18
  %250 = icmp eq ptr %249, null
  %251 = sext i32 %217 to i64
  br i1 %250, label %256, label %252

252:                                              ; preds = %248
  %253 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %251
  %254 = load ptr, ptr %253, align 8, !tbaa !18
  %255 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %249, ptr noundef nonnull @.str.5, ptr noundef %254) #21
  br label %256

256:                                              ; preds = %248, %252
  tail call fastcc void @do_replace(ptr noundef nonnull %77, i32 noundef %217) #21
  store i32 %217, ptr %78, align 8, !tbaa !37
  store i32 %218, ptr %86, align 4, !tbaa !43
  %257 = add nsw i32 %76, 1
  %258 = getelementptr inbounds [53 x i32], ptr %1, i64 0, i64 %251
  store i32 %257, ptr %258, align 4, !tbaa !5
  tail call void @df_set_regs_ever_live(i32 noundef %217, i8 noundef zeroext 1) #20
  br label %259

259:                                              ; preds = %101, %241, %246, %128, %85, %92, %96, %75, %256
  %260 = phi i32 [ %257, %256 ], [ %76, %75 ], [ %76, %96 ], [ %76, %92 ], [ %76, %85 ], [ %76, %128 ], [ %242, %246 ], [ %242, %241 ], [ %76, %101 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  %261 = icmp eq ptr %80, null
  br i1 %261, label %262, label %75

262:                                              ; preds = %259, %71
  %263 = phi i32 [ %54, %71 ], [ %260, %259 ]
  tail call fastcc void @free_chain_data() #21
  %264 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 1), align 8, !tbaa !17
  %265 = ptrtoint ptr %264 to i64
  %266 = sub i64 %26, %265
  store i64 %266, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 5), align 8, !tbaa !9
  %267 = icmp sgt i64 %266, 0
  br i1 %267, label %268, label %275

268:                                              ; preds = %262
  %269 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 4), align 8, !tbaa !13
  %270 = ptrtoint ptr %269 to i64
  %271 = sub i64 %270, %265
  %272 = icmp slt i64 %266, %271
  br i1 %272, label %273, label %275

273:                                              ; preds = %268
  %274 = getelementptr inbounds i8, ptr %264, i64 %266
  store ptr %274, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 2), align 8, !tbaa !15
  store ptr %274, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 3), align 8, !tbaa !14
  br label %277

275:                                              ; preds = %268, %262
  %276 = getelementptr inbounds i8, ptr %264, i64 %266
  tail call void @obstack_free(ptr noundef nonnull @rename_obstack, ptr noundef %276) #20
  br label %277

277:                                              ; preds = %275, %273
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  %278 = getelementptr inbounds %struct.basic_block_def, ptr %53, i64 0, i32 6
  %279 = load ptr, ptr %278, align 8, !tbaa !23
  %280 = load ptr, ptr @cfun, align 8, !tbaa !18
  %281 = getelementptr inbounds %struct.function, ptr %280, i64 0, i32 1
  %282 = load ptr, ptr %281, align 8, !tbaa !19
  %283 = getelementptr inbounds %struct.control_flow_graph, ptr %282, i64 0, i32 1
  %284 = load ptr, ptr %283, align 8, !tbaa !25
  %285 = icmp eq ptr %279, %284
  br i1 %285, label %286, label %52, !llvm.loop !53

286:                                              ; preds = %277
  %287 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 1), align 8, !tbaa !17
  %288 = ptrtoint ptr %287 to i64
  br label %289

289:                                              ; preds = %286, %25
  %290 = phi i64 [ %288, %286 ], [ %36, %25 ]
  %291 = phi ptr [ %287, %286 ], [ %35, %25 ]
  %292 = sub i64 0, %290
  store i64 %292, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 5), align 8, !tbaa !9
  %293 = icmp sgt i64 %292, 0
  br i1 %293, label %294, label %301

294:                                              ; preds = %289
  %295 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 4), align 8, !tbaa !13
  %296 = ptrtoint ptr %295 to i64
  %297 = sub i64 %296, %290
  %298 = icmp sgt i64 %297, %292
  br i1 %298, label %299, label %301

299:                                              ; preds = %294
  %300 = getelementptr inbounds i8, ptr %291, i64 %292
  store ptr %300, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 2), align 8, !tbaa !15
  store ptr %300, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 3), align 8, !tbaa !14
  br label %303

301:                                              ; preds = %294, %289
  %302 = getelementptr inbounds i8, ptr %291, i64 %292
  tail call void @obstack_free(ptr noundef nonnull @rename_obstack, ptr noundef %302) #20
  br label %303

303:                                              ; preds = %301, %299
  %304 = load ptr, ptr @dump_file, align 8, !tbaa !18
  %305 = icmp eq ptr %304, null
  br i1 %305, label %308, label %306

306:                                              ; preds = %303
  %307 = tail call i32 @fputc(i32 noundef 10, ptr noundef nonnull %304) #21
  br label %308

308:                                              ; preds = %306, %303
  call void @llvm.lifetime.end.p0(i64 212, ptr nonnull %1) #19
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare i32 @df_set_flags(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @df_note_add_problem() local_unnamed_addr #3

; Function Attrs: optsize
declare void @df_analyze() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: optsize
declare i32 @_obstack_begin(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) #3

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #5

; Function Attrs: optsize
declare void @_obstack_newchunk(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_du_head_p_heap_alloc() unnamed_addr #1 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 0) #20
  ret ptr %1
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @build_def_use(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca [30 x ptr], align 16
  %3 = alloca [14 x ptr], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr null, ptr @closed_chains, align 8, !tbaa !18
  store ptr null, ptr @open_chains, align 8, !tbaa !18
  store i1 false, ptr @fail_current_block, align 1
  store i32 0, ptr @current_id, align 4, !tbaa !5
  tail call fastcc void @bitmap_initialize_stat(ptr noundef nonnull @open_chains_set) #21
  store i64 0, ptr @live_in_chains, align 8, !tbaa !27
  store i64 0, ptr @live_hard_regs, align 8, !tbaa !27
  %6 = tail call ptr @df_get_live_in(ptr noundef %0) #20
  tail call void @reg_set_to_hard_reg_set(ptr noundef nonnull @live_hard_regs, ptr noundef %6) #20
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !26
  %9 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %8) #21
  %10 = load ptr, ptr %9, align 8, !tbaa !18
  %11 = icmp eq ptr %10, null
  br i1 %11, label %32, label %12

12:                                               ; preds = %1
  %13 = load i64, ptr @live_hard_regs, align 8, !tbaa !27
  br label %14

14:                                               ; preds = %12, %27
  %15 = phi ptr [ %30, %27 ], [ %10, %12 ]
  %16 = phi ptr [ %29, %27 ], [ %9, %12 ]
  %17 = phi i64 [ %28, %27 ], [ %13, %12 ]
  %18 = load i32, ptr %15, align 8
  %19 = and i32 %18, 131072
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.df_base_ref, ptr %15, i64 0, i32 6
  %23 = load i32, ptr %22, align 8, !tbaa !44
  %24 = zext nneg i32 %23 to i64
  %25 = shl nuw i64 1, %24
  %26 = or i64 %25, %17
  store i64 %26, ptr @live_hard_regs, align 8, !tbaa !27
  br label %27

27:                                               ; preds = %21, %14
  %28 = phi i64 [ %26, %21 ], [ %17, %14 ]
  %29 = getelementptr inbounds ptr, ptr %16, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !18
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %14, !llvm.loop !54

32:                                               ; preds = %27, %1
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !44
  br label %35

35:                                               ; preds = %329, %32
  %36 = phi ptr [ %34, %32 ], [ %334, %329 ]
  %37 = load ptr, ptr %36, align 8, !tbaa !44
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 65535
  %40 = add nsw i32 %39, -7
  %41 = icmp ult i32 %40, 4
  %42 = icmp eq i32 %39, 7
  br i1 %41, label %43, label %314

43:                                               ; preds = %35
  br i1 %42, label %315, label %44

44:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  store i32 23, ptr %4, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  store i32 25, ptr %5, align 4, !tbaa !5
  call void @extract_insn(ptr noundef nonnull %37) #20
  %45 = call i32 @constrain_operands(i32 noundef 1) #20
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  call void @_fatal_insn_not_found(ptr noundef nonnull %37, ptr noundef nonnull @.str.6, i32 noundef 1127, ptr noundef nonnull @.str.7) #20
  br label %48

48:                                               ; preds = %47, %44
  call void @preprocess_constraints() #20
  %49 = load i32, ptr @which_alternative, align 4, !tbaa !5
  %50 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !55
  %51 = sext i8 %50 to i32
  %52 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !44
  %54 = load i32, ptr %53, align 8
  %55 = and i32 %54, 65535
  %56 = icmp eq i32 %55, 14
  %57 = icmp sgt i8 %50, 0
  br i1 %57, label %58, label %138

58:                                               ; preds = %48
  %59 = sext i32 %49 to i64
  %60 = zext nneg i32 %51 to i64
  br label %61

61:                                               ; preds = %58, %135
  %62 = phi i64 [ 0, %58 ], [ %136, %135 ]
  %63 = phi i64 [ 0, %58 ], [ %108, %135 ]
  %64 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %62
  %65 = load ptr, ptr %64, align 8, !tbaa !18
  %66 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %62, i64 %59, i32 3
  %67 = load i32, ptr %66, align 16, !tbaa !57
  %68 = icmp sgt i32 %67, -1
  br i1 %68, label %80, label %69

69:                                               ; preds = %61
  %70 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %62, i64 %59, i32 4
  %71 = load i32, ptr %70, align 4, !tbaa !59
  %72 = icmp sgt i32 %71, -1
  br i1 %72, label %78, label %73

73:                                               ; preds = %69
  br i1 %56, label %74, label %107

74:                                               ; preds = %73
  %75 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %62
  %76 = load i32, ptr %75, align 4, !tbaa !5
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %107

78:                                               ; preds = %74, %69
  %79 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %62
  store i32 2, ptr %79, align 4, !tbaa !5
  br label %107

80:                                               ; preds = %61
  %81 = zext nneg i32 %67 to i64
  %82 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %81, i64 %59, i32 1
  %83 = load i32, ptr %82, align 8, !tbaa !60
  %84 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %62, i64 %59, i32 1
  store i32 %83, ptr %84, align 8, !tbaa !60
  %85 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %62
  store i32 2, ptr %85, align 4, !tbaa !5
  %86 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 3, i64 %62
  %87 = load i32, ptr %86, align 4, !tbaa !5
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %88
  %90 = load i8, ptr %89, align 1, !tbaa !44
  %91 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 3, i64 %81
  %92 = load i32, ptr %91, align 4, !tbaa !5
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %93
  %95 = load i8, ptr %94, align 1, !tbaa !44
  %96 = icmp eq i8 %90, %95
  br i1 %96, label %107, label %97

97:                                               ; preds = %80
  %98 = call fastcc zeroext i8 @verify_reg_in_set(ptr noundef %65, ptr noundef nonnull @live_in_chains) #21, !range !61
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %97
  %101 = trunc i64 %62 to i32
  %102 = shl nuw i32 1, %101
  %103 = shl nuw i32 1, %67
  %104 = or i32 %103, %102
  %105 = sext i32 %104 to i64
  %106 = or i64 %63, %105
  br label %107

107:                                              ; preds = %78, %80, %97, %100, %74, %73
  %108 = phi i64 [ %63, %97 ], [ %106, %100 ], [ %63, %80 ], [ %63, %78 ], [ %63, %74 ], [ %63, %73 ]
  %109 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %62
  %110 = load i32, ptr %109, align 4, !tbaa !5
  %111 = icmp eq i32 %110, 2
  br i1 %111, label %112, label %135

112:                                              ; preds = %107
  %113 = trunc i64 %62 to i32
  %114 = shl nuw i32 1, %113
  %115 = sext i32 %114 to i64
  %116 = and i64 %108, %115
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %135

118:                                              ; preds = %112
  %119 = load i32, ptr %65, align 8
  %120 = and i32 %119, 65535
  %121 = icmp eq i32 %120, 37
  br i1 %121, label %122, label %135

122:                                              ; preds = %118
  %123 = call fastcc zeroext i8 @verify_reg_tracked(ptr noundef nonnull %65) #21, !range !61
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %122
  %126 = load i32, ptr %65, align 8
  %127 = lshr i32 %126, 16
  %128 = and i32 %127, 255
  %129 = call fastcc i32 @rhs_regno(ptr noundef nonnull %65) #21
  %130 = zext i32 %129 to i64
  %131 = zext nneg i32 %128 to i64
  %132 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %130, i64 %131
  %133 = load i8, ptr %132, align 1, !tbaa !44
  %134 = zext i8 %133 to i32
  call fastcc void @create_new_chain(i32 noundef %129, i32 noundef %134, ptr noundef null, ptr noundef null, i32 noundef 0) #21
  br label %135

135:                                              ; preds = %125, %122, %118, %112, %107
  %136 = add nuw nsw i64 %62, 1
  %137 = icmp eq i64 %136, %60
  br i1 %137, label %138, label %61, !llvm.loop !62

138:                                              ; preds = %135, %48
  %139 = phi i64 [ 0, %48 ], [ %108, %135 ]
  %140 = load i1, ptr @fail_current_block, align 1
  br i1 %140, label %313, label %141

141:                                              ; preds = %138
  call fastcc void @hide_operands(i32 noundef %51, ptr noundef nonnull %2, ptr noundef nonnull %3, i64 noundef %139, i8 noundef zeroext 0) #21
  %142 = load ptr, ptr %52, align 8, !tbaa !44
  call void @note_stores(ptr noundef %142, ptr noundef nonnull @note_sets_clobbers, ptr noundef nonnull %5) #20
  call fastcc void @restore_operands(ptr noundef nonnull %37, i32 noundef %51, ptr noundef nonnull %2, ptr noundef nonnull %3) #21
  call fastcc void @record_out_operands(ptr noundef nonnull %37, i8 noundef zeroext 1) #21
  call fastcc void @hide_operands(i32 noundef %51, ptr noundef nonnull %2, ptr noundef nonnull %3, i64 noundef %139, i8 noundef zeroext 0) #21
  call fastcc void @scan_rtx(ptr noundef nonnull %37, ptr noundef nonnull %52, i32 noundef 0, i32 noundef 2, i32 noundef 0) #21
  call fastcc void @restore_operands(ptr noundef nonnull %37, i32 noundef %51, ptr noundef nonnull %2, ptr noundef nonnull %3) #21
  %143 = load i32, ptr %37, align 8
  %144 = and i32 %143, 65535
  %145 = icmp eq i32 %144, 10
  br i1 %145, label %146, label %151

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 1, i32 1, i32 0, i32 0, i64 2
  %148 = load ptr, ptr %147, align 8, !tbaa !44
  %149 = icmp eq ptr %148, null
  br i1 %149, label %151, label %150

150:                                              ; preds = %146
  call fastcc void @scan_rtx(ptr noundef nonnull %37, ptr noundef nonnull %147, i32 noundef 0, i32 noundef 2, i32 noundef 0) #21
  br label %151

151:                                              ; preds = %150, %146, %141
  %152 = load ptr, ptr %52, align 8, !tbaa !44
  %153 = call i32 @asm_noperands(ptr noundef %152) #20
  %154 = icmp sgt i32 %153, 0
  %155 = and i1 %154, %57
  br i1 %155, label %156, label %178

156:                                              ; preds = %151
  %157 = zext i32 %51 to i64
  br label %158

158:                                              ; preds = %156, %175
  %159 = phi i64 [ 0, %156 ], [ %176, %175 ]
  %160 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %159
  %161 = load ptr, ptr %160, align 8, !tbaa !18
  %162 = load ptr, ptr %161, align 8, !tbaa !18
  %163 = load i32, ptr %162, align 8
  %164 = and i32 %163, 65535
  %165 = icmp eq i32 %164, 37
  br i1 %165, label %166, label %175

166:                                              ; preds = %158
  %167 = call fastcc i32 @rhs_regno(ptr noundef nonnull %162) #21
  %168 = getelementptr inbounds %struct.rtx_def, ptr %162, i64 0, i32 1, i32 0, i32 0, i64 1
  %169 = load i32, ptr %168, align 8, !tbaa !44
  %170 = icmp eq i32 %167, %169
  br i1 %170, label %171, label %175

171:                                              ; preds = %166
  %172 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %159
  %173 = load i32, ptr %172, align 4, !tbaa !5
  switch i32 %173, label %175 [
    i32 0, label %174
    i32 2, label %174
  ]

174:                                              ; preds = %171, %171
  call fastcc void @scan_rtx(ptr noundef nonnull %37, ptr noundef nonnull %161, i32 noundef 0, i32 noundef 2, i32 noundef 0) #21
  br label %175

175:                                              ; preds = %171, %174, %166, %158
  %176 = add nuw nsw i64 %159, 1
  %177 = icmp eq i64 %176, %157
  br i1 %177, label %178, label %158, !llvm.loop !63

178:                                              ; preds = %175, %151
  %179 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !64
  %180 = sext i8 %179 to i32
  %181 = add nsw i32 %180, %51
  %182 = icmp sgt i32 %181, 0
  br i1 %182, label %183, label %230

183:                                              ; preds = %178
  %184 = sext i32 %49 to i64
  %185 = sext i8 %50 to i64
  br label %186

186:                                              ; preds = %183, %223
  %187 = phi i64 [ 0, %183 ], [ %224, %223 ]
  %188 = icmp slt i64 %187, %185
  br i1 %188, label %189, label %192

189:                                              ; preds = %186
  %190 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %187
  %191 = trunc i64 %187 to i32
  br label %198

192:                                              ; preds = %186
  %193 = sub nsw i64 %187, %185
  %194 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 6, i64 %193
  %195 = load i8, ptr %194, align 1, !tbaa !44
  %196 = sext i8 %195 to i32
  %197 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 5, i64 %193
  br label %198

198:                                              ; preds = %192, %189
  %199 = phi i32 [ %191, %189 ], [ %196, %192 ]
  %200 = phi ptr [ %190, %189 ], [ %197, %192 ]
  %201 = load ptr, ptr %200, align 8, !tbaa !18
  %202 = sext i32 %199 to i64
  %203 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %202, i64 %184, i32 1
  %204 = load i32, ptr %203, align 8, !tbaa !60
  %205 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %202
  %206 = load i32, ptr %205, align 4, !tbaa !5
  %207 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %202
  %208 = load ptr, ptr %207, align 8, !tbaa !18
  %209 = load i8, ptr %208, align 1, !tbaa !44
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %223, label %211

211:                                              ; preds = %198
  %212 = shl nuw i32 1, %199
  %213 = sext i32 %212 to i64
  %214 = and i64 %139, %213
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %216, label %223

216:                                              ; preds = %211
  %217 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %202, i64 %184, i32 5
  %218 = load i8, ptr %217, align 8
  %219 = and i8 %218, 64
  %220 = icmp eq i8 %219, 0
  br i1 %220, label %222, label %221

221:                                              ; preds = %216
  call fastcc void @scan_rtx_address(ptr noundef nonnull %37, ptr noundef %201, i32 noundef %204, i32 noundef 3, i32 noundef 0) #21
  br label %223

222:                                              ; preds = %216
  call fastcc void @scan_rtx(ptr noundef nonnull %37, ptr noundef %201, i32 noundef %204, i32 noundef 3, i32 noundef %206) #21
  br label %223

223:                                              ; preds = %221, %222, %198, %211
  %224 = add nuw nsw i64 %187, 1
  %225 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !64
  %226 = sext i8 %225 to i32
  %227 = add nsw i32 %226, %51
  %228 = sext i32 %227 to i64
  %229 = icmp slt i64 %224, %228
  br i1 %229, label %186, label %230, !llvm.loop !65

230:                                              ; preds = %223, %178
  %231 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 1, i32 1, i32 0, i32 0, i64 1
  %232 = load ptr, ptr %231, align 8, !tbaa !44
  %233 = icmp eq ptr %232, null
  br i1 %233, label %264, label %237

234:                                              ; preds = %244
  %235 = load ptr, ptr %231, align 8, !tbaa !44
  %236 = icmp eq ptr %235, null
  br i1 %236, label %264, label %248

237:                                              ; preds = %230, %244
  %238 = phi ptr [ %246, %244 ], [ %232, %230 ]
  %239 = load i32, ptr %238, align 8
  %240 = lshr i32 %239, 16
  %241 = trunc i32 %240 to i8
  switch i8 %241, label %244 [
    i8 2, label %242
    i8 17, label %242
  ]

242:                                              ; preds = %237, %237
  %243 = getelementptr inbounds %struct.rtx_def, ptr %238, i64 0, i32 1
  call fastcc void @scan_rtx(ptr noundef nonnull %37, ptr noundef nonnull %243, i32 noundef 26, i32 noundef 3, i32 noundef 2) #21
  br label %244

244:                                              ; preds = %237, %242
  %245 = getelementptr inbounds %struct.rtx_def, ptr %238, i64 0, i32 1, i32 0, i32 0, i64 1
  %246 = load ptr, ptr %245, align 8, !tbaa !44
  %247 = icmp eq ptr %246, null
  br i1 %247, label %234, label %237, !llvm.loop !66

248:                                              ; preds = %234, %260
  %249 = phi ptr [ %262, %260 ], [ %235, %234 ]
  %250 = load i32, ptr %249, align 8
  %251 = and i32 %250, 16711680
  %252 = icmp eq i32 %251, 65536
  br i1 %252, label %253, label %260

253:                                              ; preds = %248
  %254 = getelementptr inbounds %struct.rtx_def, ptr %249, i64 0, i32 1
  %255 = load ptr, ptr %254, align 8, !tbaa !44
  %256 = load i32, ptr %255, align 8
  %257 = lshr i32 %256, 16
  %258 = and i32 %257, 255
  %259 = call fastcc i32 @rhs_regno(ptr noundef nonnull %255) #21
  call fastcc void @remove_from_hard_reg_set(i32 noundef %258, i32 noundef %259) #21
  call fastcc void @scan_rtx(ptr noundef nonnull %37, ptr noundef nonnull %254, i32 noundef 0, i32 noundef 1, i32 noundef 0) #21
  br label %260

260:                                              ; preds = %248, %253
  %261 = getelementptr inbounds %struct.rtx_def, ptr %249, i64 0, i32 1, i32 0, i32 0, i64 1
  %262 = load ptr, ptr %261, align 8, !tbaa !44
  %263 = icmp eq ptr %262, null
  br i1 %263, label %264, label %248, !llvm.loop !67

264:                                              ; preds = %260, %230, %234
  %265 = load i32, ptr %37, align 8
  %266 = and i32 %265, 65535
  %267 = icmp ne i32 %266, 10
  %268 = load ptr, ptr @open_chains, align 8
  %269 = icmp eq ptr %268, null
  %270 = select i1 %267, i1 true, i1 %269
  br i1 %270, label %278, label %271

271:                                              ; preds = %264, %271
  %272 = phi ptr [ %276, %271 ], [ %268, %264 ]
  %273 = getelementptr inbounds %struct.du_head, ptr %272, i64 0, i32 8
  %274 = load i8, ptr %273, align 8
  %275 = or i8 %274, 2
  store i8 %275, ptr %273, align 8
  %276 = load ptr, ptr %272, align 8, !tbaa !18
  %277 = icmp eq ptr %276, null
  br i1 %277, label %278, label %271, !llvm.loop !68

278:                                              ; preds = %271, %264
  call fastcc void @hide_operands(i32 noundef %51, ptr noundef nonnull %2, ptr noundef nonnull %3, i64 noundef %139, i8 noundef zeroext 1) #21
  call fastcc void @scan_rtx(ptr noundef nonnull %37, ptr noundef nonnull %52, i32 noundef 0, i32 noundef 0, i32 noundef 0) #21
  call fastcc void @restore_operands(ptr noundef nonnull %37, i32 noundef %51, ptr noundef nonnull %2, ptr noundef nonnull %3) #21
  call fastcc void @hide_operands(i32 noundef %51, ptr noundef nonnull %2, ptr noundef nonnull %3, i64 noundef %139, i8 noundef zeroext 0) #21
  %279 = load ptr, ptr %52, align 8, !tbaa !44
  call void @note_stores(ptr noundef %279, ptr noundef nonnull @note_sets_clobbers, ptr noundef nonnull %4) #20
  call fastcc void @restore_operands(ptr noundef nonnull %37, i32 noundef %51, ptr noundef nonnull %2, ptr noundef nonnull %3) #21
  call fastcc void @record_out_operands(ptr noundef nonnull %37, i8 noundef zeroext 0) #21
  %280 = load ptr, ptr %231, align 8, !tbaa !44
  %281 = icmp eq ptr %280, null
  br i1 %281, label %296, label %285

282:                                              ; preds = %292
  %283 = load ptr, ptr %231, align 8, !tbaa !44
  %284 = icmp eq ptr %283, null
  br i1 %284, label %296, label %297

285:                                              ; preds = %278, %292
  %286 = phi ptr [ %294, %292 ], [ %280, %278 ]
  %287 = load i32, ptr %286, align 8
  %288 = and i32 %287, 16711680
  %289 = icmp eq i32 %288, 1114112
  br i1 %289, label %290, label %292

290:                                              ; preds = %285
  %291 = getelementptr inbounds %struct.rtx_def, ptr %286, i64 0, i32 1
  call fastcc void @scan_rtx(ptr noundef nonnull %37, ptr noundef nonnull %291, i32 noundef 26, i32 noundef 5, i32 noundef 2) #21
  br label %292

292:                                              ; preds = %285, %290
  %293 = getelementptr inbounds %struct.rtx_def, ptr %286, i64 0, i32 1, i32 0, i32 0, i64 1
  %294 = load ptr, ptr %293, align 8, !tbaa !44
  %295 = icmp eq ptr %294, null
  br i1 %295, label %282, label %285, !llvm.loop !69

296:                                              ; preds = %309, %278, %282
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %2) #19
  br label %329

297:                                              ; preds = %282, %309
  %298 = phi ptr [ %311, %309 ], [ %283, %282 ]
  %299 = load i32, ptr %298, align 8
  %300 = and i32 %299, 16711680
  %301 = icmp eq i32 %300, 393216
  br i1 %301, label %302, label %309

302:                                              ; preds = %297
  %303 = getelementptr inbounds %struct.rtx_def, ptr %298, i64 0, i32 1
  %304 = load ptr, ptr %303, align 8, !tbaa !44
  %305 = load i32, ptr %304, align 8
  %306 = lshr i32 %305, 16
  %307 = and i32 %306, 255
  %308 = call fastcc i32 @rhs_regno(ptr noundef nonnull %304) #21
  call fastcc void @remove_from_hard_reg_set(i32 noundef %307, i32 noundef %308) #21
  call fastcc void @scan_rtx(ptr noundef nonnull %37, ptr noundef nonnull %303, i32 noundef 0, i32 noundef 1, i32 noundef 0) #21
  br label %309

309:                                              ; preds = %297, %302
  %310 = getelementptr inbounds %struct.rtx_def, ptr %298, i64 0, i32 1, i32 0, i32 0, i64 1
  %311 = load ptr, ptr %310, align 8, !tbaa !44
  %312 = icmp eq ptr %311, null
  br i1 %312, label %296, label %297, !llvm.loop !70

313:                                              ; preds = %138
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %2) #19
  br label %335

314:                                              ; preds = %35
  br i1 %42, label %315, label %329

315:                                              ; preds = %43, %314
  %316 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 1
  %317 = load ptr, ptr %316, align 8, !tbaa !44
  %318 = getelementptr inbounds %struct.rtx_def, ptr %317, i64 0, i32 1, i32 0, i32 0, i64 1
  %319 = load ptr, ptr %318, align 8, !tbaa !44
  %320 = load i32, ptr %319, align 8
  %321 = and i32 %320, 65535
  %322 = icmp eq i32 %321, 25
  br i1 %322, label %323, label %328

323:                                              ; preds = %315
  %324 = getelementptr inbounds %struct.rtx_def, ptr %319, i64 0, i32 1
  %325 = load ptr, ptr %324, align 8, !tbaa !44
  %326 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !18
  %327 = icmp eq ptr %325, %326
  br i1 %327, label %329, label %328

328:                                              ; preds = %323, %315
  call fastcc void @scan_rtx(ptr noundef nonnull %37, ptr noundef nonnull %318, i32 noundef 26, i32 noundef 3, i32 noundef 0) #21
  br label %329

329:                                              ; preds = %296, %314, %323, %328
  %330 = load ptr, ptr %33, align 8, !tbaa !44
  %331 = getelementptr inbounds %struct.rtl_bb_info, ptr %330, i64 0, i32 1
  %332 = load ptr, ptr %331, align 8, !tbaa !71
  %333 = icmp eq ptr %37, %332
  %334 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1, i32 0, i32 0, i64 2
  br i1 %333, label %335, label %35

335:                                              ; preds = %329, %313
  call void @bitmap_clear(ptr noundef nonnull @open_chains_set) #20
  %336 = load i1, ptr @fail_current_block, align 1
  %337 = load ptr, ptr @closed_chains, align 8
  %338 = select i1 %336, ptr null, ptr %337
  ret ptr %338
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @dump_def_use_chain(ptr noundef readonly %0) unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %37, label %3

3:                                                ; preds = %1, %32
  %4 = phi ptr [ %35, %32 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.du_head, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = load ptr, ptr @dump_file, align 8, !tbaa !18
  %8 = getelementptr inbounds %struct.du_head, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !37
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !18
  %13 = getelementptr inbounds %struct.du_head, ptr %4, i64 0, i32 4
  %14 = load i32, ptr %13, align 4, !tbaa !43
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.21, ptr noundef %12, i32 noundef %14) #21
  %16 = icmp eq ptr %6, null
  br i1 %16, label %32, label %17

17:                                               ; preds = %3, %17
  %18 = phi ptr [ %30, %17 ], [ %6, %3 ]
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !18
  %20 = getelementptr inbounds %struct.du_chain, ptr %18, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !45
  %22 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !44
  %24 = getelementptr inbounds %struct.du_chain, ptr %18, i64 0, i32 3
  %25 = load i16, ptr %24, align 8
  %26 = zext i16 %25 to i64
  %27 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !18
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.22, i32 noundef %23, ptr noundef %28) #21
  %30 = load ptr, ptr %18, align 8, !tbaa !73
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %17, !llvm.loop !74

32:                                               ; preds = %17, %3
  %33 = load ptr, ptr @dump_file, align 8, !tbaa !18
  %34 = tail call i32 @fputc(i32 10, ptr %33)
  %35 = load ptr, ptr %4, align 8, !tbaa !40
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %3, !llvm.loop !75

37:                                               ; preds = %32, %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @add_to_hard_reg_set(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #8 {
  %4 = tail call fastcc i32 @end_hard_regno(i32 noundef %1, i32 noundef %2) #21
  %5 = load i64, ptr %0, align 8, !tbaa !27
  br label %6

6:                                                ; preds = %6, %3
  %7 = phi i64 [ %5, %3 ], [ %11, %6 ]
  %8 = phi i32 [ %2, %3 ], [ %12, %6 ]
  %9 = zext nneg i32 %8 to i64
  %10 = shl nuw i64 1, %9
  %11 = or i64 %10, %7
  %12 = add i32 %8, 1
  %13 = icmp ult i32 %12, %4
  br i1 %13, label %6, label %14, !llvm.loop !76

14:                                               ; preds = %6
  store i64 %11, ptr %0, align 8, !tbaa !27
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @merge_overlapping_regs(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #8 {
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  %5 = getelementptr inbounds %struct.du_head, ptr %1, i64 0, i32 7
  %6 = load i64, ptr %5, align 8, !tbaa !77
  %7 = load i64, ptr %0, align 8, !tbaa !27
  %8 = or i64 %7, %6
  store i64 %8, ptr %0, align 8, !tbaa !27
  %9 = getelementptr inbounds %struct.du_head, ptr %1, i64 0, i32 6
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef nonnull %9, ptr noundef nonnull %4) #21
  %10 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #21, !range !61
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %43, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr @id_to_chain, align 8
  %14 = load ptr, ptr @id_to_chain, align 8
  br label %15

15:                                               ; preds = %12, %38
  %16 = phi i64 [ %8, %12 ], [ %39, %38 ]
  %17 = phi ptr [ %13, %12 ], [ %40, %38 ]
  %18 = load i32, ptr %4, align 4, !tbaa !5
  %19 = tail call fastcc ptr @VEC_du_head_p_base_index(ptr noundef %17, i32 noundef %18) #21
  %20 = getelementptr inbounds %struct.du_head, ptr %19, i64 0, i32 4
  %21 = load i32, ptr %20, align 4, !tbaa !43
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.du_head, ptr %19, i64 0, i32 3
  %25 = load i32, ptr %24, align 8, !tbaa !37
  %26 = zext i32 %21 to i64
  br label %27

27:                                               ; preds = %23, %27
  %28 = phi i64 [ %26, %23 ], [ %30, %27 ]
  %29 = phi i64 [ %16, %23 ], [ %35, %27 ]
  %30 = add nsw i64 %28, -1
  %31 = trunc i64 %30 to i32
  %32 = add i32 %25, %31
  %33 = zext nneg i32 %32 to i64
  %34 = shl nuw i64 1, %33
  %35 = or i64 %34, %29
  %36 = icmp eq i32 %31, 0
  br i1 %36, label %37, label %27, !llvm.loop !78

37:                                               ; preds = %27
  store i64 %35, ptr %0, align 8, !tbaa !27
  br label %38

38:                                               ; preds = %37, %15
  %39 = phi i64 [ %35, %37 ], [ %16, %15 ]
  %40 = phi ptr [ %14, %37 ], [ %17, %15 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #21
  %41 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #21, !range !61
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %15, !llvm.loop !79

43:                                               ; preds = %38, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @df_regs_ever_live_p(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_replace(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.du_head, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !37
  %5 = getelementptr inbounds %struct.du_head, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !18
  %7 = getelementptr inbounds %struct.du_chain, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 7
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 361, ptr noundef nonnull @.str.7) #20
  %13 = load ptr, ptr %5, align 8, !tbaa !18
  %14 = icmp eq ptr %13, null
  br i1 %14, label %108, label %15

15:                                               ; preds = %2, %12
  %16 = phi ptr [ %6, %2 ], [ %13, %12 ]
  br label %17

17:                                               ; preds = %15, %100
  %18 = phi ptr [ %104, %100 ], [ %16, %15 ]
  %19 = phi i8 [ %101, %100 ], [ 0, %15 ]
  %20 = getelementptr inbounds %struct.du_chain, ptr %18, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !49
  %22 = load ptr, ptr %21, align 8, !tbaa !18
  %23 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 1
  %24 = load i32, ptr %23, align 8, !tbaa !44
  %25 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 2
  %26 = load ptr, ptr %25, align 8, !tbaa !44
  %27 = load i32, ptr %22, align 8
  %28 = and i32 %27, 1073741824
  %29 = getelementptr inbounds %struct.du_chain, ptr %18, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !45
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 65535
  %33 = icmp eq i32 %32, 7
  br i1 %33, label %34, label %44

34:                                               ; preds = %17
  %35 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %22) #21
  %36 = icmp eq i32 %35, %4
  br i1 %36, label %44, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !18
  %39 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef 0, ptr noundef %38) #20
  %40 = load ptr, ptr %29, align 8, !tbaa !45
  %41 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !44
  %43 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %39, ptr %43, align 8, !tbaa !44
  br label %100

44:                                               ; preds = %34, %17
  %45 = lshr i32 %27, 16
  %46 = and i32 %45, 255
  %47 = tail call ptr @gen_raw_REG(i32 noundef %46, i32 noundef %1) #20
  %48 = load ptr, ptr %20, align 8, !tbaa !49
  store ptr %47, ptr %48, align 8, !tbaa !18
  %49 = icmp ugt i32 %24, 52
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load ptr, ptr %20, align 8, !tbaa !49
  %52 = load ptr, ptr %51, align 8, !tbaa !18
  %53 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 %24, ptr %53, align 8, !tbaa !44
  br label %54

54:                                               ; preds = %50, %44
  %55 = load ptr, ptr %20, align 8, !tbaa !49
  %56 = load ptr, ptr %55, align 8, !tbaa !18
  %57 = getelementptr inbounds %struct.rtx_def, ptr %56, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %26, ptr %57, align 8, !tbaa !44
  %58 = load ptr, ptr %20, align 8, !tbaa !49
  %59 = load ptr, ptr %58, align 8, !tbaa !18
  %60 = load i32, ptr %59, align 8
  %61 = and i32 %60, -1073741825
  %62 = or disjoint i32 %61, %28
  store i32 %62, ptr %59, align 8
  %63 = load ptr, ptr %29, align 8, !tbaa !45
  %64 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 1, i32 1, i32 0, i32 0, i64 1
  %65 = load ptr, ptr %64, align 8, !tbaa !44
  %66 = icmp eq ptr %65, null
  br i1 %66, label %100, label %67

67:                                               ; preds = %54, %96
  %68 = phi ptr [ %98, %96 ], [ %65, %54 ]
  %69 = load i32, ptr %68, align 8
  %70 = lshr i32 %69, 16
  %71 = trunc i32 %70 to i8
  switch i8 %71, label %96 [
    i8 6, label %72
    i8 1, label %72
  ]

72:                                               ; preds = %67, %67
  %73 = getelementptr inbounds %struct.rtx_def, ptr %68, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !44
  %75 = tail call fastcc i32 @rhs_regno(ptr noundef %74) #21
  %76 = icmp ult i32 %75, 53
  br i1 %76, label %78, label %77

77:                                               ; preds = %72
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 387, ptr noundef nonnull @.str.7) #20
  br label %78

78:                                               ; preds = %72, %77
  %79 = tail call fastcc i32 @rhs_regno(ptr noundef %74) #21
  %80 = icmp eq i32 %79, %4
  br i1 %80, label %81, label %96

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.rtx_def, ptr %68, i64 0, i32 1
  %83 = and i32 %69, 16711680
  %84 = icmp eq i32 %83, 65536
  br i1 %84, label %85, label %93

85:                                               ; preds = %81
  %86 = load ptr, ptr %20, align 8, !tbaa !49
  %87 = load ptr, ptr %86, align 8, !tbaa !18
  %88 = load ptr, ptr %29, align 8, !tbaa !45
  %89 = tail call i32 @reg_set_p(ptr noundef %87, ptr noundef %88) #20
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %85
  %92 = load ptr, ptr %29, align 8, !tbaa !45
  tail call void @remove_note(ptr noundef %92, ptr noundef nonnull %68) #20
  br label %100

93:                                               ; preds = %85, %81
  %94 = load ptr, ptr %20, align 8, !tbaa !49
  %95 = load ptr, ptr %94, align 8, !tbaa !18
  store ptr %95, ptr %82, align 8, !tbaa !44
  br label %100

96:                                               ; preds = %78, %67
  %97 = getelementptr inbounds %struct.rtx_def, ptr %68, i64 0, i32 1, i32 0, i32 0, i64 1
  %98 = load ptr, ptr %97, align 8, !tbaa !44
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %67, !llvm.loop !80

100:                                              ; preds = %96, %54, %93, %91, %37
  %101 = phi i8 [ %19, %37 ], [ 1, %91 ], [ 1, %93 ], [ %19, %54 ], [ %19, %96 ]
  %102 = load ptr, ptr %29, align 8, !tbaa !45
  %103 = tail call zeroext i8 @df_insn_rescan(ptr noundef %102) #20
  %104 = load ptr, ptr %18, align 8, !tbaa !18
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %17, !llvm.loop !81

106:                                              ; preds = %100
  %107 = icmp eq i8 %101, 0
  br i1 %107, label %108, label %136

108:                                              ; preds = %12, %106
  %109 = load ptr, ptr %5, align 8, !tbaa !48
  %110 = getelementptr inbounds %struct.du_chain, ptr %109, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !45
  %112 = getelementptr inbounds %struct.du_head, ptr %0, i64 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !82
  %114 = getelementptr inbounds %struct.du_chain, ptr %113, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !45
  %116 = icmp eq ptr %111, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %108
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 409, ptr noundef nonnull @.str.7) #20
  %118 = load ptr, ptr %112, align 8, !tbaa !82
  %119 = getelementptr inbounds %struct.du_chain, ptr %118, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !45
  br label %121

121:                                              ; preds = %108, %117
  %122 = phi ptr [ %115, %108 ], [ %120, %117 ]
  %123 = phi ptr [ %113, %108 ], [ %118, %117 ]
  %124 = getelementptr inbounds %struct.du_chain, ptr %123, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !49
  %126 = load ptr, ptr %125, align 8, !tbaa !18
  %127 = tail call i32 @reg_set_p(ptr noundef %126, ptr noundef %122) #20
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %121
  %130 = load ptr, ptr %112, align 8, !tbaa !82
  %131 = getelementptr inbounds %struct.du_chain, ptr %130, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !45
  %133 = getelementptr inbounds %struct.du_chain, ptr %130, i64 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !49
  %135 = load ptr, ptr %134, align 8, !tbaa !18
  tail call void @add_reg_note(ptr noundef %132, i32 noundef 1, ptr noundef %135) #20
  br label %136

136:                                              ; preds = %121, %129, %106
  ret void
}

; Function Attrs: optsize
declare void @df_set_regs_ever_live(i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_chain_data() unnamed_addr #1 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #19
  %2 = load ptr, ptr @id_to_chain, align 8
  %3 = call fastcc i32 @VEC_du_head_p_base_iterate(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %1) #21, !range !83
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %0, %5
  %6 = phi i32 [ %9, %5 ], [ 0, %0 ]
  %7 = load ptr, ptr %1, align 8, !tbaa !18
  %8 = getelementptr inbounds %struct.du_head, ptr %7, i64 0, i32 6
  tail call void @bitmap_clear(ptr noundef nonnull %8) #20
  %9 = add nuw nsw i32 %6, 1
  %10 = load ptr, ptr @id_to_chain, align 8
  %11 = call fastcc i32 @VEC_du_head_p_base_iterate(ptr noundef %10, i32 noundef %9, ptr noundef nonnull %1) #21, !range !83
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %5, !llvm.loop !84

13:                                               ; preds = %5, %0
  tail call fastcc void @VEC_du_head_p_heap_free() #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #19
  ret void
}

; Function Attrs: optsize
declare void @obstack_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @bitmap_initialize_stat(ptr nocapture noundef writeonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr @bitmap_default_obstack, ptr %2, align 8, !tbaa !85
  ret void
}

; Function Attrs: optsize
declare void @reg_set_to_hard_reg_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @df_get_live_in(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_get_artificial_defs(i32 noundef %0) unnamed_addr #10 {
  %2 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %0) #21
  %3 = load ptr, ptr %2, align 8, !tbaa !86
  ret ptr %3
}

; Function Attrs: optsize
declare void @extract_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @constrain_operands(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_fatal_insn_not_found(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @preprocess_constraints() local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @verify_reg_in_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #11 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 37
  br i1 %5, label %6, label %38

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #21
  %8 = zext i32 %7 to i64
  %9 = lshr i32 %3, 16
  %10 = and i32 %9, 255
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %8, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !44
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %38, label %15

15:                                               ; preds = %6
  %16 = load i64, ptr %1, align 8, !tbaa !27
  %17 = zext i8 %13 to i64
  br label %18

18:                                               ; preds = %15, %18
  %19 = phi i64 [ %17, %15 ], [ %32, %18 ]
  %20 = phi i8 [ 1, %15 ], [ %30, %18 ]
  %21 = phi i8 [ 1, %15 ], [ %29, %18 ]
  %22 = trunc i64 %19 to i32
  %23 = add nsw i32 %22, -1
  %24 = add i32 %23, %7
  %25 = zext nneg i32 %24 to i64
  %26 = shl nuw i64 1, %25
  %27 = and i64 %16, %26
  %28 = icmp eq i64 %27, 0
  %29 = select i1 %28, i8 0, i8 %21
  %30 = select i1 %28, i8 %20, i8 0
  %31 = icmp eq i32 %23, 0
  %32 = add nsw i64 %19, -1
  br i1 %31, label %33, label %18, !llvm.loop !88

33:                                               ; preds = %18
  %34 = icmp ne i8 %30, 0
  %35 = icmp ne i8 %29, 0
  %36 = select i1 %34, i1 true, i1 %35
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  store i1 true, ptr @fail_current_block, align 1
  br label %38

38:                                               ; preds = %6, %33, %2, %37
  %39 = phi i8 [ 0, %37 ], [ 0, %2 ], [ %29, %33 ], [ 1, %6 ]
  ret i8 %39
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @verify_reg_tracked(ptr nocapture noundef readonly %0) unnamed_addr #12 {
  %2 = tail call fastcc zeroext i8 @verify_reg_in_set(ptr noundef %0, ptr noundef nonnull @live_hard_regs) #21, !range !61
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @verify_reg_in_set(ptr noundef %0, ptr noundef nonnull @live_in_chains) #21, !range !61
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i8 [ 1, %1 ], [ %5, %4 ]
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !44
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_new_chain(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #1 {
  store i64 88, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 5), align 8, !tbaa !9
  %6 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 4), align 8, !tbaa !13
  %7 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 3), align 8, !tbaa !14
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = icmp slt i64 %10, 88
  br i1 %11, label %12, label %15

12:                                               ; preds = %5
  tail call void @_obstack_newchunk(ptr noundef nonnull @rename_obstack, i32 noundef 88) #20
  %13 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 5), align 8, !tbaa !9
  %14 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 3), align 8, !tbaa !14
  br label %15

15:                                               ; preds = %5, %12
  %16 = phi ptr [ %7, %5 ], [ %14, %12 ]
  %17 = phi i64 [ 88, %5 ], [ %13, %12 ]
  %18 = getelementptr inbounds i8, ptr %16, i64 %17
  %19 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 2), align 8, !tbaa !15
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 10), align 8
  %23 = or i8 %22, 2
  store i8 %23, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 10), align 8
  br label %24

24:                                               ; preds = %15, %21
  %25 = ptrtoint ptr %19 to i64
  store i64 %25, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 5), align 8, !tbaa !9
  %26 = ptrtoint ptr %18 to i64
  %27 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 6), align 8, !tbaa !16
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %26
  %30 = xor i32 %27, -1
  %31 = sext i32 %30 to i64
  %32 = and i64 %29, %31
  %33 = inttoptr i64 %32 to ptr
  %34 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 1), align 8, !tbaa !17
  %35 = ptrtoint ptr %34 to i64
  %36 = sub i64 %32, %35
  %37 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 4), align 8, !tbaa !13
  %38 = ptrtoint ptr %37 to i64
  %39 = sub i64 %38, %35
  %40 = icmp sgt i64 %36, %39
  %41 = select i1 %40, ptr %37, ptr %33
  store ptr %41, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 3), align 8
  store ptr %41, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 2), align 8, !tbaa !15
  %42 = load ptr, ptr @open_chains, align 8, !tbaa !18
  store ptr %42, ptr %19, align 8, !tbaa !40
  store ptr %19, ptr @open_chains, align 8, !tbaa !18
  %43 = getelementptr inbounds %struct.du_head, ptr %19, i64 0, i32 3
  store i32 %0, ptr %43, align 8, !tbaa !37
  %44 = getelementptr inbounds %struct.du_head, ptr %19, i64 0, i32 4
  store i32 %1, ptr %44, align 4, !tbaa !43
  %45 = getelementptr inbounds %struct.du_head, ptr %19, i64 0, i32 8
  %46 = load i8, ptr %45, align 8
  %47 = and i8 %46, -8
  store i8 %47, ptr %45, align 8
  tail call fastcc void @VEC_du_head_p_heap_safe_push(ptr noundef nonnull %19) #21
  %48 = load i32, ptr @current_id, align 4, !tbaa !5
  %49 = add i32 %48, 1
  store i32 %49, ptr @current_id, align 4, !tbaa !5
  %50 = getelementptr inbounds %struct.du_head, ptr %19, i64 0, i32 5
  store i32 %48, ptr %50, align 8, !tbaa !89
  %51 = getelementptr inbounds %struct.du_head, ptr %19, i64 0, i32 6
  tail call fastcc void @bitmap_initialize_stat(ptr noundef nonnull %51) #21
  tail call void @bitmap_copy(ptr noundef nonnull %51, ptr noundef nonnull @open_chains_set) #20
  %52 = load ptr, ptr @open_chains, align 8, !tbaa !18
  %53 = load i32, ptr %50, align 8, !tbaa !89
  tail call fastcc void @mark_conflict(ptr noundef %52, i32 noundef %53) #21
  %54 = load i32, ptr %44, align 4, !tbaa !43
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %24
  %57 = load i64, ptr @live_hard_regs, align 8, !tbaa !27
  br label %100

58:                                               ; preds = %24
  %59 = zext nneg i32 %54 to i64
  %60 = load i32, ptr %43, align 8, !tbaa !37
  %61 = load i64, ptr @live_in_chains, align 8, !tbaa !27
  %62 = load i64, ptr @live_hard_regs, align 8, !tbaa !27
  %63 = add nuw nsw i64 %59, 1
  %64 = and i64 %63, 4294967294
  %65 = add nsw i64 %59, -1
  %66 = insertelement <2 x i64> poison, i64 %65, i64 0
  %67 = shufflevector <2 x i64> %66, <2 x i64> poison, <2 x i32> zeroinitializer
  %68 = insertelement <2 x i64> poison, i64 %59, i64 0
  %69 = shufflevector <2 x i64> %68, <2 x i64> poison, <2 x i32> zeroinitializer
  %70 = add nsw <2 x i64> %69, <i64 0, i64 -1>
  %71 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %61, i64 0
  %72 = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %62, i64 0
  %73 = insertelement <2 x i32> poison, i32 %60, i64 0
  %74 = add <2 x i32> %73, <i32 -1, i32 poison>
  %75 = shufflevector <2 x i32> %74, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %76

76:                                               ; preds = %76, %58
  %77 = phi i64 [ 0, %58 ], [ %88, %76 ]
  %78 = phi <2 x i64> [ %70, %58 ], [ %89, %76 ]
  %79 = phi <2 x i64> [ %71, %58 ], [ %85, %76 ]
  %80 = phi <2 x i64> [ %72, %58 ], [ %87, %76 ]
  %81 = trunc <2 x i64> %78 to <2 x i32>
  %82 = add <2 x i32> %75, %81
  %83 = zext nneg <2 x i32> %82 to <2 x i64>
  %84 = shl nuw <2 x i64> <i64 1, i64 1>, %83
  %85 = or <2 x i64> %84, %79
  %86 = xor <2 x i64> %84, <i64 -1, i64 -1>
  %87 = and <2 x i64> %80, %86
  %88 = add i64 %77, 2
  %89 = add <2 x i64> %78, <i64 -2, i64 -2>
  %90 = icmp eq i64 %88, %64
  br i1 %90, label %91, label %76, !llvm.loop !90

91:                                               ; preds = %76
  %92 = insertelement <2 x i64> poison, i64 %77, i64 0
  %93 = shufflevector <2 x i64> %92, <2 x i64> poison, <2 x i32> zeroinitializer
  %94 = or disjoint <2 x i64> %93, <i64 0, i64 1>
  %95 = icmp ugt <2 x i64> %94, %67
  %96 = select <2 x i1> %95, <2 x i64> %80, <2 x i64> %87
  %97 = select <2 x i1> %95, <2 x i64> %79, <2 x i64> %85
  %98 = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %97)
  %99 = tail call i64 @llvm.vector.reduce.and.v2i64(<2 x i64> %96)
  store i64 %98, ptr @live_in_chains, align 8, !tbaa !27
  store i64 %99, ptr @live_hard_regs, align 8, !tbaa !27
  br label %100

100:                                              ; preds = %56, %91
  %101 = phi i64 [ %57, %56 ], [ %99, %91 ]
  %102 = getelementptr inbounds %struct.du_head, ptr %19, i64 0, i32 7
  store i64 %101, ptr %102, align 8, !tbaa !77
  %103 = load i32, ptr %50, align 8, !tbaa !89
  %104 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull @open_chains_set, i32 noundef %103) #20
  store ptr %19, ptr @open_chains, align 8, !tbaa !18
  %105 = load ptr, ptr @dump_file, align 8, !tbaa !18
  %106 = icmp eq ptr %105, null
  br i1 %106, label %123, label %107

107:                                              ; preds = %100
  %108 = load i32, ptr %43, align 8, !tbaa !37
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %109
  %111 = load ptr, ptr %110, align 8, !tbaa !18
  %112 = load i32, ptr %50, align 8, !tbaa !89
  %113 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %105, ptr noundef nonnull @.str.8, ptr noundef %111, i32 noundef %112) #21
  %114 = icmp eq ptr %3, null
  br i1 %114, label %120, label %115

115:                                              ; preds = %107
  %116 = load ptr, ptr @dump_file, align 8, !tbaa !18
  %117 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %118 = load i32, ptr %117, align 8, !tbaa !44
  %119 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %116, ptr noundef nonnull @.str.9, i32 noundef %118) #21
  br label %120

120:                                              ; preds = %115, %107
  %121 = load ptr, ptr @dump_file, align 8, !tbaa !18
  %122 = tail call i32 @fputc(i32 10, ptr %121)
  br label %123

123:                                              ; preds = %120, %100
  %124 = icmp eq ptr %3, null
  br i1 %124, label %125, label %127

125:                                              ; preds = %123
  %126 = getelementptr inbounds %struct.du_head, ptr %19, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %126, i8 0, i64 16, i1 false)
  br label %170

127:                                              ; preds = %123
  store i64 32, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 5), align 8, !tbaa !9
  %128 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 4), align 8, !tbaa !13
  %129 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 3), align 8, !tbaa !14
  %130 = ptrtoint ptr %128 to i64
  %131 = ptrtoint ptr %129 to i64
  %132 = sub i64 %130, %131
  %133 = icmp slt i64 %132, 32
  br i1 %133, label %134, label %137

134:                                              ; preds = %127
  tail call void @_obstack_newchunk(ptr noundef nonnull @rename_obstack, i32 noundef 32) #20
  %135 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 5), align 8, !tbaa !9
  %136 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 3), align 8, !tbaa !14
  br label %137

137:                                              ; preds = %127, %134
  %138 = phi ptr [ %129, %127 ], [ %136, %134 ]
  %139 = phi i64 [ 32, %127 ], [ %135, %134 ]
  %140 = getelementptr inbounds i8, ptr %138, i64 %139
  %141 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 2), align 8, !tbaa !15
  %142 = icmp eq ptr %140, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %137
  %144 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 10), align 8
  %145 = or i8 %144, 2
  store i8 %145, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 10), align 8
  br label %146

146:                                              ; preds = %137, %143
  %147 = ptrtoint ptr %141 to i64
  store i64 %147, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 5), align 8, !tbaa !9
  %148 = ptrtoint ptr %140 to i64
  %149 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 6), align 8, !tbaa !16
  %150 = sext i32 %149 to i64
  %151 = add nsw i64 %150, %148
  %152 = xor i32 %149, -1
  %153 = sext i32 %152 to i64
  %154 = and i64 %151, %153
  %155 = inttoptr i64 %154 to ptr
  %156 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 1), align 8, !tbaa !17
  %157 = ptrtoint ptr %156 to i64
  %158 = sub i64 %154, %157
  %159 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 4), align 8, !tbaa !13
  %160 = ptrtoint ptr %159 to i64
  %161 = sub i64 %160, %157
  %162 = icmp sgt i64 %158, %161
  %163 = select i1 %162, ptr %159, ptr %155
  store ptr %163, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 3), align 8
  store ptr %163, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 2), align 8, !tbaa !15
  %164 = getelementptr inbounds %struct.du_head, ptr %19, i64 0, i32 2
  store ptr %141, ptr %164, align 8, !tbaa !82
  %165 = getelementptr inbounds %struct.du_head, ptr %19, i64 0, i32 1
  store ptr %141, ptr %165, align 8, !tbaa !48
  store ptr null, ptr %141, align 8, !tbaa !73
  %166 = getelementptr inbounds %struct.du_chain, ptr %141, i64 0, i32 2
  store ptr %2, ptr %166, align 8, !tbaa !49
  %167 = getelementptr inbounds %struct.du_chain, ptr %141, i64 0, i32 1
  store ptr %3, ptr %167, align 8, !tbaa !45
  %168 = getelementptr inbounds %struct.du_chain, ptr %141, i64 0, i32 3
  %169 = trunc i32 %4 to i16
  store i16 %169, ptr %168, align 8
  br label %170

170:                                              ; preds = %146, %125
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @hide_operands(i32 noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, i64 noundef %3, i8 noundef zeroext %4) unnamed_addr #12 {
  %6 = load i32, ptr @which_alternative, align 4, !tbaa !5
  %7 = icmp sgt i32 %0, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = icmp eq i8 %4, 0
  %10 = sext i32 %6 to i64
  %11 = zext nneg i32 %0 to i64
  br label %19

12:                                               ; preds = %48, %5
  %13 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !64
  %14 = icmp sgt i8 %13, 0
  br i1 %14, label %15, label %81

15:                                               ; preds = %12
  %16 = zext nneg i8 %13 to i64
  %17 = icmp eq i8 %4, 0
  %18 = sext i32 %6 to i64
  br label %51

19:                                               ; preds = %8, %48
  %20 = phi i64 [ 0, %8 ], [ %49, %48 ]
  %21 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !18
  %23 = getelementptr inbounds ptr, ptr %1, i64 %20
  store ptr %22, ptr %23, align 8, !tbaa !18
  %24 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %20
  %25 = load ptr, ptr %24, align 8, !tbaa !18
  %26 = load i8, ptr %25, align 1, !tbaa !44
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %48, label %28

28:                                               ; preds = %19
  %29 = trunc i64 %20 to i32
  %30 = shl nuw i32 1, %29
  %31 = sext i32 %30 to i64
  %32 = and i64 %31, %3
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %28
  br i1 %9, label %44, label %35

35:                                               ; preds = %34
  %36 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %20
  %37 = load i32, ptr %36, align 4, !tbaa !5
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %20, i64 %10, i32 5
  %41 = load i8, ptr %40, align 8
  %42 = and i8 %41, 1
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %39, %35, %34
  %45 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 1), align 8, !tbaa !18
  %46 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %20
  %47 = load ptr, ptr %46, align 8, !tbaa !18
  store ptr %45, ptr %47, align 8, !tbaa !18
  br label %48

48:                                               ; preds = %39, %44, %28, %19
  %49 = add nuw nsw i64 %20, 1
  %50 = icmp eq i64 %49, %11
  br i1 %50, label %12, label %19, !llvm.loop !93

51:                                               ; preds = %15, %78
  %52 = phi i64 [ 0, %15 ], [ %79, %78 ]
  %53 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 6, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !44
  %55 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 5, i64 %52
  %56 = load ptr, ptr %55, align 8, !tbaa !18
  %57 = load ptr, ptr %56, align 8, !tbaa !18
  %58 = getelementptr inbounds ptr, ptr %2, i64 %52
  store ptr %57, ptr %58, align 8, !tbaa !18
  %59 = zext nneg i8 %54 to i32
  %60 = shl nuw i32 1, %59
  %61 = sext i32 %60 to i64
  %62 = and i64 %61, %3
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %51
  br i1 %17, label %75, label %65

65:                                               ; preds = %64
  %66 = sext i8 %54 to i64
  %67 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !5
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %75, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %66, i64 %18, i32 5
  %72 = load i8, ptr %71, align 8
  %73 = and i8 %72, 1
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %70, %65, %64
  %76 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 1), align 8, !tbaa !18
  %77 = load ptr, ptr %55, align 8, !tbaa !18
  store ptr %76, ptr %77, align 8, !tbaa !18
  br label %78

78:                                               ; preds = %70, %75, %51
  %79 = add nuw nsw i64 %52, 1
  %80 = icmp eq i64 %79, %16
  br i1 %80, label %81, label %51, !llvm.loop !94

81:                                               ; preds = %78, %12
  ret void
}

; Function Attrs: optsize
declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @note_sets_clobbers(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #1 {
  %4 = load i32, ptr %2, align 4, !tbaa !5
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 39
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !44
  %11 = load i32, ptr %10, align 8
  br label %12

12:                                               ; preds = %8, %3
  %13 = phi i32 [ %11, %8 ], [ %5, %3 ]
  %14 = phi ptr [ %10, %8 ], [ %0, %3 ]
  %15 = and i32 %13, 65535
  %16 = icmp eq i32 %15, 37
  br i1 %16, label %17, label %42

17:                                               ; preds = %12
  %18 = load i32, ptr %1, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, %4
  br i1 %20, label %21, label %42

21:                                               ; preds = %17
  %22 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %14) #21
  %23 = icmp ult i32 %22, 53
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 506, ptr noundef nonnull @.str.7) #20
  %25 = load i32, ptr %14, align 8
  br label %26

26:                                               ; preds = %21, %24
  %27 = phi i32 [ %13, %21 ], [ %25, %24 ]
  %28 = lshr i32 %27, 16
  %29 = and i32 %28, 255
  %30 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %14) #21
  tail call fastcc void @add_to_hard_reg_set(ptr noundef nonnull @live_hard_regs, i32 noundef %29, i32 noundef %30) #21
  %31 = load ptr, ptr @open_chains, align 8, !tbaa !18
  %32 = icmp eq ptr %31, null
  br i1 %32, label %42, label %33

33:                                               ; preds = %26, %33
  %34 = phi ptr [ %40, %33 ], [ %31, %26 ]
  %35 = getelementptr inbounds %struct.du_head, ptr %34, i64 0, i32 7
  %36 = load i32, ptr %14, align 8
  %37 = lshr i32 %36, 16
  %38 = and i32 %37, 255
  %39 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %14) #21
  tail call fastcc void @add_to_hard_reg_set(ptr noundef nonnull %35, i32 noundef %38, i32 noundef %39) #21
  %40 = load ptr, ptr %34, align 8, !tbaa !18
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %33, !llvm.loop !95

42:                                               ; preds = %33, %26, %12, %17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @restore_operands(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #1 {
  %5 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !64
  %6 = icmp sgt i8 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = zext nneg i8 %5 to i64
  br label %13

9:                                                ; preds = %13, %4
  %10 = icmp sgt i32 %1, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %9
  %12 = zext nneg i32 %1 to i64
  br label %21

13:                                               ; preds = %7, %13
  %14 = phi i64 [ 0, %7 ], [ %19, %13 ]
  %15 = getelementptr inbounds ptr, ptr %3, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !18
  %17 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 5, i64 %14
  %18 = load ptr, ptr %17, align 8, !tbaa !18
  store ptr %16, ptr %18, align 8, !tbaa !18
  %19 = add nuw nsw i64 %14, 1
  %20 = icmp eq i64 %19, %8
  br i1 %20, label %9, label %13, !llvm.loop !96

21:                                               ; preds = %11, %21
  %22 = phi i64 [ 0, %11 ], [ %27, %21 ]
  %23 = getelementptr inbounds ptr, ptr %2, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !18
  %25 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %22
  %26 = load ptr, ptr %25, align 8, !tbaa !18
  store ptr %24, ptr %26, align 8, !tbaa !18
  %27 = add nuw nsw i64 %22, 1
  %28 = icmp eq i64 %27, %12
  br i1 %28, label %29, label %21, !llvm.loop !97

29:                                               ; preds = %21, %9
  %30 = icmp eq i8 %5, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %29
  %32 = tail call zeroext i8 @df_insn_rescan(ptr noundef %0) #20
  br label %33

33:                                               ; preds = %31, %29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_out_operands(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #1 {
  %3 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !55
  %4 = sext i8 %3 to i32
  %5 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !64
  %6 = sext i8 %5 to i32
  %7 = add nsw i32 %6, %4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %74

9:                                                ; preds = %2
  %10 = load i32, ptr @which_alternative, align 4, !tbaa !5
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %13 = sext i8 %3 to i64
  br label %14

14:                                               ; preds = %9, %67
  %15 = phi i64 [ 0, %9 ], [ %68, %67 ]
  %16 = icmp slt i64 %15, %13
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %15
  br label %25

19:                                               ; preds = %14
  %20 = sub nsw i64 %15, %13
  %21 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 6, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !44
  %23 = sext i8 %22 to i64
  %24 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 5, i64 %20
  br label %25

25:                                               ; preds = %19, %17
  %26 = phi i64 [ %15, %17 ], [ %23, %19 ]
  %27 = phi ptr [ %18, %17 ], [ %24, %19 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !18
  %29 = load ptr, ptr %28, align 8, !tbaa !18
  %30 = shl i64 %26, 32
  %31 = ashr exact i64 %30, 32
  %32 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %31, i64 %11, i32 1
  %33 = load i32, ptr %32, align 8, !tbaa !60
  %34 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %31
  %35 = load i32, ptr %34, align 4, !tbaa !5
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %67

37:                                               ; preds = %25
  %38 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %31, i64 %11, i32 5
  %39 = load i8, ptr %38, align 8
  %40 = and i8 %39, 1
  %41 = icmp eq i8 %40, %1
  br i1 %41, label %42, label %67

42:                                               ; preds = %37
  %43 = load ptr, ptr @open_chains, align 8, !tbaa !18
  tail call fastcc void @scan_rtx(ptr noundef %0, ptr noundef nonnull %28, i32 noundef %33, i32 noundef 4, i32 noundef 1) #21
  %44 = load i32, ptr %0, align 8
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 10
  br i1 %46, label %60, label %47

47:                                               ; preds = %42
  %48 = load ptr, ptr %12, align 8, !tbaa !44
  %49 = tail call i32 @asm_noperands(ptr noundef %48) #20
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %47
  %52 = load i32, ptr %29, align 8
  %53 = and i32 %52, 65535
  %54 = icmp eq i32 %53, 37
  br i1 %54, label %55, label %67

55:                                               ; preds = %51
  %56 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %29) #21
  %57 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 1
  %58 = load i32, ptr %57, align 8, !tbaa !44
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %55, %42
  %61 = load ptr, ptr @open_chains, align 8, !tbaa !18
  %62 = icmp eq ptr %43, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.du_head, ptr %61, i64 0, i32 8
  %65 = load i8, ptr %64, align 8
  %66 = or i8 %65, 4
  store i8 %66, ptr %64, align 8
  br label %67

67:                                               ; preds = %47, %51, %55, %63, %60, %25, %37
  %68 = add nuw nsw i64 %15, 1
  %69 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !64
  %70 = sext i8 %69 to i32
  %71 = add nsw i32 %70, %4
  %72 = sext i32 %71 to i64
  %73 = icmp slt i64 %68, %72
  br i1 %73, label %14, label %74, !llvm.loop !98

74:                                               ; preds = %67, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scan_rtx(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #1 {
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  br label %7

7:                                                ; preds = %58, %5
  %8 = phi ptr [ %1, %5 ], [ %59, %58 ]
  %9 = phi i32 [ %4, %5 ], [ %60, %58 ]
  %10 = load ptr, ptr %8, align 8, !tbaa !18
  br label %11

11:                                               ; preds = %7, %66
  %12 = phi ptr [ %69, %66 ], [ %10, %7 ]
  %13 = phi ptr [ %68, %66 ], [ %8, %7 ]
  %14 = load i32, ptr %12, align 8
  %15 = trunc i32 %14 to i16
  switch i16 %15, label %71 [
    i16 35, label %104
    i16 30, label %104
    i16 32, label %104
    i16 31, label %104
    i16 33, label %104
    i16 45, label %104
    i16 44, label %104
    i16 46, label %104
    i16 36, label %104
    i16 37, label %16
    i16 43, label %17
    i16 23, label %21
    i16 40, label %33
    i16 120, label %39
    i16 119, label %39
    i16 77, label %51
    i16 75, label %51
    i16 76, label %51
    i16 74, label %51
    i16 79, label %51
    i16 78, label %51
    i16 25, label %52
    i16 3, label %66
  ]

16:                                               ; preds = %11
  tail call fastcc void @scan_rtx_reg(ptr noundef %0, ptr noundef nonnull %13, i32 noundef %2, i32 noundef %3, i32 noundef %9) #21
  br label %104

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %19 = lshr i32 %14, 16
  %20 = and i32 %19, 255
  tail call fastcc void @scan_rtx_address(ptr noundef %0, ptr noundef nonnull %18, i32 noundef 13, i32 noundef %3, i32 noundef %20) #21
  br label %104

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %23 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call fastcc void @scan_rtx(ptr noundef %0, ptr noundef nonnull %23, i32 noundef %2, i32 noundef %3, i32 noundef 0) #21
  %24 = load ptr, ptr %6, align 8, !tbaa !44
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 14
  br i1 %27, label %28, label %58

28:                                               ; preds = %21
  %29 = load ptr, ptr %22, align 8, !tbaa !44
  %30 = tail call fastcc zeroext i8 @verify_reg_tracked(ptr noundef %29) #21, !range !61
  %31 = icmp eq i8 %30, 0
  %32 = select i1 %31, i32 1, i32 2
  br label %58

33:                                               ; preds = %11
  %34 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !44
  %36 = tail call fastcc zeroext i8 @verify_reg_tracked(ptr noundef %35) #21, !range !61
  %37 = icmp eq i8 %36, 0
  %38 = select i1 %37, i32 1, i32 2
  br label %58

39:                                               ; preds = %11, %11
  %40 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %41 = icmp eq i32 %9, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr %40, align 8, !tbaa !44
  %44 = tail call fastcc zeroext i8 @verify_reg_tracked(ptr noundef %43) #21, !range !61
  %45 = icmp eq i8 %44, 0
  %46 = select i1 %45, i32 1, i32 2
  br label %47

47:                                               ; preds = %39, %42
  %48 = phi i32 [ %46, %42 ], [ 0, %39 ]
  tail call fastcc void @scan_rtx(ptr noundef %0, ptr noundef nonnull %40, i32 noundef %2, i32 noundef %3, i32 noundef %48) #21
  %49 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call fastcc void @scan_rtx(ptr noundef %0, ptr noundef nonnull %49, i32 noundef %2, i32 noundef %3, i32 noundef 0) #21
  %50 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 2
  br label %58

51:                                               ; preds = %11, %11, %11, %11, %11, %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 935, ptr noundef nonnull @.str.7) #20
  br label %52

52:                                               ; preds = %11, %51
  %53 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %54 = load ptr, ptr %6, align 8, !tbaa !44
  %55 = load i32, ptr %54, align 8
  %56 = and i32 %55, 65535
  %57 = icmp eq i32 %56, 14
  br i1 %57, label %61, label %58

58:                                               ; preds = %52, %61, %21, %28, %33, %47
  %59 = phi ptr [ %50, %47 ], [ %34, %33 ], [ %22, %28 ], [ %22, %21 ], [ %53, %61 ], [ %53, %52 ]
  %60 = phi i32 [ 0, %47 ], [ %38, %33 ], [ %32, %28 ], [ 1, %21 ], [ %65, %61 ], [ 1, %52 ]
  br label %7

61:                                               ; preds = %52
  %62 = load ptr, ptr %53, align 8, !tbaa !44
  %63 = tail call fastcc zeroext i8 @verify_reg_tracked(ptr noundef %62) #21, !range !61
  %64 = icmp eq i8 %63, 0
  %65 = select i1 %64, i32 1, i32 2
  br label %58

66:                                               ; preds = %11
  %67 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  tail call fastcc void @scan_rtx(ptr noundef %0, ptr noundef nonnull %67, i32 noundef %2, i32 noundef %3, i32 noundef %9) #21
  %68 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  %69 = load ptr, ptr %68, align 8, !tbaa !44
  %70 = icmp eq ptr %69, null
  br i1 %70, label %104, label %11

71:                                               ; preds = %11
  %72 = and i32 %14, 65535
  %73 = zext nneg i32 %72 to i64
  %74 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %73
  %75 = load ptr, ptr %74, align 8, !tbaa !18
  %76 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %73
  %77 = load i8, ptr %76, align 1, !tbaa !44
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %104, label %79

79:                                               ; preds = %71
  %80 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %81 = zext i8 %77 to i64
  br label %82

82:                                               ; preds = %79, %102
  %83 = phi i64 [ %81, %79 ], [ %84, %102 ]
  %84 = add nsw i64 %83, -1
  %85 = getelementptr inbounds i8, ptr %75, i64 %84
  %86 = load i8, ptr %85, align 1, !tbaa !44
  switch i8 %86, label %102 [
    i8 101, label %87
    i8 69, label %89
  ]

87:                                               ; preds = %82
  %88 = getelementptr inbounds [1 x %union.rtunion_def], ptr %80, i64 0, i64 %84
  tail call fastcc void @scan_rtx(ptr noundef %0, ptr noundef nonnull %88, i32 noundef %2, i32 noundef %3, i32 noundef %9) #21
  br label %102

89:                                               ; preds = %82
  %90 = getelementptr inbounds [1 x %union.rtunion_def], ptr %80, i64 0, i64 %84
  %91 = load ptr, ptr %90, align 8, !tbaa !44
  %92 = load i32, ptr %91, align 8, !tbaa !99
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %89
  %95 = zext nneg i32 %92 to i64
  br label %96

96:                                               ; preds = %94, %96
  %97 = phi i64 [ %95, %94 ], [ %98, %96 ]
  %98 = add nsw i64 %97, -1
  %99 = load ptr, ptr %90, align 8, !tbaa !44
  %100 = getelementptr inbounds %struct.rtvec_def, ptr %99, i64 0, i32 1, i64 %98
  tail call fastcc void @scan_rtx(ptr noundef %0, ptr noundef nonnull %100, i32 noundef %2, i32 noundef %3, i32 noundef %9) #21
  %101 = icmp ugt i64 %97, 1
  br i1 %101, label %96, label %102, !llvm.loop !101

102:                                              ; preds = %96, %89, %82, %87
  %103 = icmp sgt i64 %83, 1
  br i1 %103, label %82, label %104, !llvm.loop !102

104:                                              ; preds = %66, %11, %11, %11, %11, %11, %11, %11, %11, %11, %102, %71, %17, %16
  ret void
}

; Function Attrs: optsize
declare i32 @asm_noperands(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scan_rtx_address(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #1 {
  %6 = and i32 %3, -2
  %7 = icmp eq i32 %6, 4
  br i1 %7, label %181, label %8

8:                                                ; preds = %5, %141
  %9 = phi i32 [ %144, %141 ], [ %4, %5 ]
  %10 = phi i32 [ 13, %141 ], [ %2, %5 ]
  %11 = phi ptr [ %142, %141 ], [ %1, %5 ]
  br label %12

12:                                               ; preds = %139, %8
  %13 = phi i32 [ %10, %8 ], [ 13, %139 ]
  %14 = phi ptr [ %11, %8 ], [ %140, %139 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !18
  %16 = load i32, ptr %15, align 8
  %17 = trunc i32 %16 to i16
  switch i16 %17, label %147 [
    i16 49, label %18
    i16 77, label %146
    i16 76, label %146
    i16 79, label %146
    i16 75, label %146
    i16 74, label %146
    i16 78, label %146
    i16 43, label %141
    i16 37, label %145
  ]

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !44
  %21 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !44
  %23 = load i32, ptr %20, align 8
  %24 = and i32 %23, 65535
  %25 = load i32, ptr %22, align 8
  %26 = icmp eq i32 %24, 39
  br i1 %26, label %27, label %32

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !44
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 65535
  br label %32

32:                                               ; preds = %27, %18
  %33 = phi i32 [ %31, %27 ], [ %24, %18 ]
  %34 = phi ptr [ %29, %27 ], [ %20, %18 ]
  %35 = and i32 %25, 65535
  %36 = icmp eq i32 %35, 39
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !44
  %40 = load i32, ptr %39, align 8
  br label %41

41:                                               ; preds = %37, %32
  %42 = phi i32 [ %40, %37 ], [ %25, %32 ]
  %43 = phi ptr [ %39, %37 ], [ %22, %32 ]
  %44 = freeze i32 %42
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 43
  br i1 %46, label %136, label %47

47:                                               ; preds = %41
  %48 = trunc i32 %33 to i16
  switch i16 %48, label %49 [
    i16 100, label %136
    i16 99, label %136
    i16 98, label %136
    i16 52, label %136
    i16 43, label %135
  ]

49:                                               ; preds = %47
  %50 = trunc i32 %44 to i16
  switch i16 %50, label %51 [
    i16 100, label %136
    i16 99, label %136
    i16 98, label %136
    i16 52, label %136
  ]

51:                                               ; preds = %49
  %52 = and i32 %33, 65534
  %53 = icmp eq i32 %52, 44
  br i1 %53, label %139, label %54

54:                                               ; preds = %51
  switch i16 %48, label %55 [
    i16 35, label %139
    i16 30, label %139
  ]

55:                                               ; preds = %54
  %56 = and i32 %44, 65534
  %57 = icmp eq i32 %56, 44
  br i1 %57, label %139, label %58

58:                                               ; preds = %55
  switch i16 %50, label %59 [
    i16 35, label %139
    i16 30, label %139
  ]

59:                                               ; preds = %58
  %60 = icmp eq i32 %33, 37
  %61 = icmp eq i32 %45, 37
  %62 = and i1 %60, %61
  br i1 %62, label %63, label %131

63:                                               ; preds = %59
  %64 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %34) #21
  %65 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %43) #21
  %66 = icmp ult i32 %65, 7
  br i1 %66, label %81, label %67

67:                                               ; preds = %63
  %68 = zext i32 %65 to i64
  %69 = add nsw i64 %68, -37
  %70 = icmp ult i64 %69, 8
  br i1 %70, label %81, label %71

71:                                               ; preds = %67
  %72 = load ptr, ptr @reg_renumber, align 8, !tbaa !18
  %73 = getelementptr inbounds i16, ptr %72, i64 %68
  %74 = load i16, ptr %73, align 2, !tbaa !103
  %75 = icmp ult i16 %74, 7
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = sext i16 %74 to i64
  %78 = and i64 %77, 4294967295
  %79 = add nsw i64 %78, -37
  %80 = icmp ult i64 %79, 8
  br i1 %80, label %81, label %84

81:                                               ; preds = %76, %71, %67, %63
  %82 = tail call fastcc zeroext i8 @regno_ok_for_base_p(i32 noundef %64) #21
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %126

84:                                               ; preds = %81, %76
  %85 = icmp ult i32 %64, 7
  br i1 %85, label %100, label %86

86:                                               ; preds = %84
  %87 = zext i32 %64 to i64
  %88 = add nsw i64 %87, -37
  %89 = icmp ult i64 %88, 8
  br i1 %89, label %100, label %90

90:                                               ; preds = %86
  %91 = load ptr, ptr @reg_renumber, align 8, !tbaa !18
  %92 = getelementptr inbounds i16, ptr %91, i64 %87
  %93 = load i16, ptr %92, align 2, !tbaa !103
  %94 = icmp ult i16 %93, 7
  br i1 %94, label %100, label %95

95:                                               ; preds = %90
  %96 = sext i16 %93 to i64
  %97 = and i64 %96, 4294967295
  %98 = add nsw i64 %97, -37
  %99 = icmp ult i64 %98, 8
  br i1 %99, label %100, label %103

100:                                              ; preds = %95, %90, %86, %84
  %101 = tail call fastcc zeroext i8 @regno_ok_for_base_p(i32 noundef %65) #21
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %126

103:                                              ; preds = %100, %95
  %104 = tail call fastcc zeroext i8 @regno_ok_for_base_p(i32 noundef %64) #21
  %105 = icmp ne i8 %104, 0
  %106 = or i1 %66, %105
  br i1 %106, label %126, label %107

107:                                              ; preds = %103
  %108 = zext i32 %65 to i64
  %109 = add nsw i64 %108, -37
  %110 = icmp ult i64 %109, 8
  br i1 %110, label %126, label %111

111:                                              ; preds = %107
  %112 = load ptr, ptr @reg_renumber, align 8, !tbaa !18
  %113 = getelementptr inbounds i16, ptr %112, i64 %108
  %114 = load i16, ptr %113, align 2, !tbaa !103
  %115 = icmp ult i16 %114, 7
  br i1 %115, label %126, label %116

116:                                              ; preds = %111
  %117 = sext i16 %114 to i64
  %118 = and i64 %117, 4294967295
  %119 = add nsw i64 %118, -37
  %120 = icmp ult i64 %119, 8
  br i1 %120, label %126, label %121

121:                                              ; preds = %116
  %122 = tail call fastcc zeroext i8 @regno_ok_for_base_p(i32 noundef %65) #21
  %123 = zext nneg i8 %122 to i64
  %124 = xor i8 %122, 1
  %125 = zext nneg i8 %124 to i64
  br label %126

126:                                              ; preds = %121, %103, %107, %111, %116, %100, %81
  %127 = phi i64 [ 0, %81 ], [ 1, %100 ], [ 0, %116 ], [ 0, %111 ], [ 0, %107 ], [ 0, %103 ], [ %123, %121 ]
  %128 = phi i64 [ 1, %81 ], [ 0, %100 ], [ 1, %116 ], [ 1, %111 ], [ 1, %107 ], [ 1, %103 ], [ %125, %121 ]
  %129 = getelementptr inbounds [1 x %union.rtunion_def], ptr %19, i64 0, i64 %128
  %130 = getelementptr inbounds [1 x %union.rtunion_def], ptr %19, i64 0, i64 %127
  br label %136

131:                                              ; preds = %59
  %132 = or i1 %60, %61
  %133 = select i1 %60, ptr %19, ptr %21
  %134 = select i1 %60, ptr %21, ptr %19
  br i1 %132, label %136, label %181

135:                                              ; preds = %47
  br label %136

136:                                              ; preds = %131, %47, %47, %47, %47, %135, %126, %41, %49, %49, %49, %49
  %137 = phi ptr [ %133, %131 ], [ %21, %49 ], [ %21, %49 ], [ %21, %49 ], [ %21, %49 ], [ %19, %41 ], [ %19, %47 ], [ %19, %47 ], [ %19, %47 ], [ %19, %47 ], [ %129, %126 ], [ %21, %135 ]
  %138 = phi ptr [ %134, %131 ], [ %19, %49 ], [ %19, %49 ], [ %19, %49 ], [ %19, %49 ], [ %21, %41 ], [ %21, %47 ], [ %21, %47 ], [ %21, %47 ], [ %21, %47 ], [ %130, %126 ], [ %19, %135 ]
  tail call fastcc void @scan_rtx_address(ptr noundef %0, ptr noundef nonnull %137, i32 noundef 11, i32 noundef %3, i32 noundef %9) #21
  br label %139

139:                                              ; preds = %136, %54, %54, %51, %58, %58, %55
  %140 = phi ptr [ %138, %136 ], [ %21, %54 ], [ %21, %54 ], [ %21, %51 ], [ %19, %58 ], [ %19, %58 ], [ %19, %55 ]
  br label %12

141:                                              ; preds = %12
  %142 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %143 = lshr i32 %16, 16
  %144 = and i32 %143, 255
  br label %8

145:                                              ; preds = %12
  tail call fastcc void @scan_rtx_reg(ptr noundef %0, ptr noundef nonnull %14, i32 noundef %13, i32 noundef %3, i32 noundef 0) #21
  br label %181

146:                                              ; preds = %12, %12, %12, %12, %12, %12
  br label %147

147:                                              ; preds = %12, %146
  %148 = phi i32 [ 2, %146 ], [ %3, %12 ]
  %149 = and i32 %16, 65535
  %150 = zext nneg i32 %149 to i64
  %151 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %150
  %152 = load ptr, ptr %151, align 8, !tbaa !18
  %153 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %150
  %154 = load i8, ptr %153, align 1, !tbaa !44
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %181, label %156

156:                                              ; preds = %147
  %157 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %158 = zext i8 %154 to i64
  br label %159

159:                                              ; preds = %156, %179
  %160 = phi i64 [ %158, %156 ], [ %161, %179 ]
  %161 = add nsw i64 %160, -1
  %162 = getelementptr inbounds i8, ptr %152, i64 %161
  %163 = load i8, ptr %162, align 1, !tbaa !44
  switch i8 %163, label %179 [
    i8 101, label %164
    i8 69, label %166
  ]

164:                                              ; preds = %159
  %165 = getelementptr inbounds [1 x %union.rtunion_def], ptr %157, i64 0, i64 %161
  tail call fastcc void @scan_rtx_address(ptr noundef %0, ptr noundef nonnull %165, i32 noundef %13, i32 noundef %148, i32 noundef %9) #21
  br label %179

166:                                              ; preds = %159
  %167 = getelementptr inbounds [1 x %union.rtunion_def], ptr %157, i64 0, i64 %161
  %168 = load ptr, ptr %167, align 8, !tbaa !44
  %169 = load i32, ptr %168, align 8, !tbaa !99
  %170 = icmp sgt i32 %169, 0
  br i1 %170, label %171, label %179

171:                                              ; preds = %166
  %172 = zext nneg i32 %169 to i64
  br label %173

173:                                              ; preds = %171, %173
  %174 = phi i64 [ %172, %171 ], [ %175, %173 ]
  %175 = add nsw i64 %174, -1
  %176 = load ptr, ptr %167, align 8, !tbaa !44
  %177 = getelementptr inbounds %struct.rtvec_def, ptr %176, i64 0, i32 1, i64 %175
  tail call fastcc void @scan_rtx_address(ptr noundef %0, ptr noundef nonnull %177, i32 noundef %13, i32 noundef %148, i32 noundef %9) #21
  %178 = icmp ugt i64 %174, 1
  br i1 %178, label %173, label %179, !llvm.loop !105

179:                                              ; preds = %173, %166, %159, %164
  %180 = icmp sgt i64 %160, 1
  br i1 %180, label %159, label %181, !llvm.loop !106

181:                                              ; preds = %131, %179, %5, %147, %145
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal fastcc void @remove_from_hard_reg_set(i32 noundef %0, i32 noundef %1) unnamed_addr #11 {
  %3 = tail call fastcc i32 @end_hard_regno(i32 noundef %0, i32 noundef %1) #21
  %4 = add i32 %1, 1
  %5 = tail call i32 @llvm.umax.i32(i32 %3, i32 %4)
  %6 = sub i32 %5, %1
  %7 = load i64, ptr @live_hard_regs, align 8, !tbaa !27
  %8 = add i32 %6, 1
  %9 = and i32 %8, -2
  %10 = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %7, i64 0
  %11 = insertelement <2 x i32> poison, i32 %1, i64 0
  %12 = shufflevector <2 x i32> %11, <2 x i32> poison, <2 x i32> zeroinitializer
  %13 = add <2 x i32> %12, <i32 0, i32 1>
  br label %14

14:                                               ; preds = %14, %2
  %15 = phi i32 [ 0, %2 ], [ %22, %14 ]
  %16 = phi <2 x i64> [ %10, %2 ], [ %21, %14 ]
  %17 = phi <2 x i32> [ %13, %2 ], [ %23, %14 ]
  %18 = zext nneg <2 x i32> %17 to <2 x i64>
  %19 = shl nuw <2 x i64> <i64 1, i64 1>, %18
  %20 = xor <2 x i64> %19, <i64 -1, i64 -1>
  %21 = and <2 x i64> %16, %20
  %22 = add i32 %15, 2
  %23 = add <2 x i32> %17, <i32 2, i32 2>
  %24 = icmp eq i32 %22, %9
  br i1 %24, label %25, label %14, !llvm.loop !107

25:                                               ; preds = %14
  %26 = add i32 %6, -1
  %27 = insertelement <2 x i32> poison, i32 %26, i64 0
  %28 = shufflevector <2 x i32> %27, <2 x i32> poison, <2 x i32> zeroinitializer
  %29 = insertelement <2 x i32> poison, i32 %15, i64 0
  %30 = shufflevector <2 x i32> %29, <2 x i32> poison, <2 x i32> zeroinitializer
  %31 = or disjoint <2 x i32> %30, <i32 0, i32 1>
  %32 = icmp ugt <2 x i32> %31, %28
  %33 = select <2 x i1> %32, <2 x i64> %16, <2 x i64> %21
  %34 = tail call i64 @llvm.vector.reduce.and.v2i64(<2 x i64> %33)
  store i64 %34, ptr @live_hard_regs, align 8, !tbaa !27
  ret void
}

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_scan_get_bb_info(i32 noundef %0) unnamed_addr #10 {
  %2 = load ptr, ptr @df, align 8, !tbaa !18
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !18
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !108
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !110
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !18
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_du_head_p_heap_safe_push(ptr noundef %0) unnamed_addr #1 {
  tail call fastcc void @VEC_du_head_p_heap_reserve() #21
  %2 = load ptr, ptr @id_to_chain, align 8, !tbaa !18
  tail call fastcc void @VEC_du_head_p_base_quick_push(ptr noundef %2, ptr noundef %0) #21
  ret void
}

; Function Attrs: optsize
declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_conflict(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %8, %4 ], [ %0, %2 ]
  %6 = getelementptr inbounds %struct.du_head, ptr %5, i64 0, i32 6
  %7 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %6, i32 noundef %1) #20
  %8 = load ptr, ptr %5, align 8, !tbaa !40
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %4, !llvm.loop !111

10:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_du_head_p_heap_reserve() unnamed_addr #1 {
  %1 = load ptr, ptr @id_to_chain, align 8, !tbaa !18
  %2 = tail call fastcc i32 @VEC_du_head_p_base_space(ptr noundef %1) #21
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_p_reserve(ptr noundef %1, i32 noundef 1) #20
  store ptr %5, ptr @id_to_chain, align 8, !tbaa !18
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_du_head_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #14 {
  %3 = load i32, ptr %0, align 8, !tbaa !112
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !112
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_du_head_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_du_head_p_base_space(ptr noundef readonly %0) unnamed_addr #13 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_du_head_p_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !114
  %6 = load i32, ptr %0, align 8, !tbaa !112
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @df_insn_rescan(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scan_rtx_reg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #1 {
  %6 = load ptr, ptr %1, align 8, !tbaa !18
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 16
  %9 = and i32 %8, 255
  %10 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %6) #21
  %11 = zext i32 %10 to i64
  %12 = zext nneg i32 %9 to i64
  %13 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %11, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !44
  %15 = zext i8 %14 to i32
  %16 = icmp eq i32 %3, 4
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = icmp eq i32 %4, 1
  br i1 %18, label %19, label %272

19:                                               ; preds = %17
  tail call fastcc void @create_new_chain(i32 noundef %10, i32 noundef %15, ptr noundef nonnull %1, ptr noundef %0, i32 noundef %2) #21
  br label %272

20:                                               ; preds = %5
  %21 = icmp eq i32 %3, 0
  %22 = icmp eq i32 %3, 5
  %23 = or i1 %21, %22
  %24 = icmp ne i32 %4, 1
  %25 = xor i1 %24, %23
  br i1 %25, label %26, label %272

26:                                               ; preds = %20
  %27 = load ptr, ptr @open_chains, align 8, !tbaa !18
  %28 = icmp eq ptr %27, null
  br i1 %28, label %272, label %29

29:                                               ; preds = %26
  %30 = add i32 %10, %15
  %31 = icmp eq i32 %2, 0
  %32 = trunc i32 %2 to i16
  %33 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %34 = zext nneg i32 %3 to i64
  %35 = getelementptr inbounds [6 x ptr], ptr @scan_actions_name, i64 0, i64 %34
  %36 = icmp eq i8 %14, 0
  %37 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %11
  %38 = icmp ult i32 %3, 2
  %39 = sext i32 %3 to i64
  %40 = getelementptr inbounds [6 x ptr], ptr @scan_actions_name, i64 0, i64 %39
  %41 = zext i8 %14 to i64
  br label %42

42:                                               ; preds = %29, %268
  %43 = phi ptr [ %27, %29 ], [ %269, %268 ]
  %44 = phi ptr [ @open_chains, %29 ], [ %270, %268 ]
  %45 = load ptr, ptr %43, align 8, !tbaa !40
  %46 = getelementptr inbounds %struct.du_head, ptr %43, i64 0, i32 3
  %47 = load i32, ptr %46, align 8, !tbaa !37
  %48 = icmp eq i32 %47, %10
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.du_head, ptr %43, i64 0, i32 4
  %51 = load i32, ptr %50, align 4, !tbaa !43
  %52 = icmp eq i32 %51, %15
  br label %53

53:                                               ; preds = %49, %42
  %54 = phi i1 [ false, %42 ], [ %52, %49 ]
  %55 = icmp ugt i32 %10, %47
  br i1 %55, label %61, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.du_head, ptr %43, i64 0, i32 4
  %58 = load i32, ptr %57, align 4, !tbaa !43
  %59 = add i32 %58, %47
  %60 = icmp uge i32 %30, %59
  br label %61

61:                                               ; preds = %56, %53
  %62 = phi i1 [ false, %53 ], [ %60, %56 ]
  %63 = icmp ult i32 %10, %47
  br i1 %63, label %69, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.du_head, ptr %43, i64 0, i32 4
  %66 = load i32, ptr %65, align 4, !tbaa !43
  %67 = add i32 %66, %47
  %68 = icmp ule i32 %30, %67
  br label %69

69:                                               ; preds = %64, %61
  %70 = phi i1 [ false, %61 ], [ %68, %64 ]
  %71 = getelementptr inbounds %struct.du_head, ptr %43, i64 0, i32 8
  %72 = load i8, ptr %71, align 8
  %73 = and i8 %72, 1
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %265, !llvm.loop !115

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.du_head, ptr %43, i64 0, i32 4
  %77 = load i32, ptr %76, align 4, !tbaa !43
  %78 = add i32 %77, %47
  %79 = icmp ugt i32 %78, %10
  %80 = icmp ugt i32 %30, %47
  %81 = select i1 %79, i1 %80, i1 false
  br i1 %81, label %82, label %265, !llvm.loop !115

82:                                               ; preds = %75
  switch i32 %3, label %187 [
    i32 5, label %83
    i32 3, label %83
  ]

83:                                               ; preds = %82, %82
  br i1 %31, label %89, label %84

84:                                               ; preds = %83
  br i1 %54, label %134, label %85

85:                                               ; preds = %84
  %86 = load i32, ptr %0, align 8
  %87 = and i32 %86, 65535
  %88 = icmp eq i32 %87, 7
  br i1 %88, label %134, label %89

89:                                               ; preds = %85, %83
  %90 = load ptr, ptr @dump_file, align 8, !tbaa !18
  %91 = icmp eq ptr %90, null
  br i1 %91, label %102, label %92

92:                                               ; preds = %89
  %93 = zext i32 %47 to i64
  %94 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !18
  %96 = getelementptr inbounds %struct.du_head, ptr %43, i64 0, i32 5
  %97 = load i32, ptr %96, align 8, !tbaa !89
  %98 = load i32, ptr %33, align 8, !tbaa !44
  %99 = load ptr, ptr %35, align 8, !tbaa !18
  %100 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %90, ptr noundef nonnull @.str.11, ptr noundef %95, i32 noundef %97, i32 noundef %98, ptr noundef %99) #21
  %101 = load i8, ptr %71, align 8
  br label %102

102:                                              ; preds = %92, %89
  %103 = phi i8 [ %101, %92 ], [ %72, %89 ]
  %104 = or i8 %103, 4
  store i8 %104, ptr %71, align 8
  br i1 %62, label %105, label %128

105:                                              ; preds = %102
  store i32 %10, ptr %46, align 8, !tbaa !37
  store i32 %15, ptr %76, align 4, !tbaa !43
  br i1 %36, label %119, label %106

106:                                              ; preds = %105
  %107 = load i64, ptr @live_in_chains, align 8, !tbaa !27
  br label %108

108:                                              ; preds = %106, %108
  %109 = phi i64 [ %41, %106 ], [ %111, %108 ]
  %110 = phi i64 [ %107, %106 ], [ %116, %108 ]
  %111 = add nsw i64 %109, -1
  %112 = trunc i64 %111 to i32
  %113 = add i32 %10, %112
  %114 = zext nneg i32 %113 to i64
  %115 = shl nuw i64 1, %114
  %116 = or i64 %110, %115
  %117 = icmp eq i32 %112, 0
  br i1 %117, label %118, label %108, !llvm.loop !116

118:                                              ; preds = %108
  store i64 %116, ptr @live_in_chains, align 8, !tbaa !27
  br label %119

119:                                              ; preds = %118, %105
  %120 = load ptr, ptr @dump_file, align 8, !tbaa !18
  %121 = icmp eq ptr %120, null
  br i1 %121, label %183, label %122

122:                                              ; preds = %119
  %123 = load ptr, ptr %37, align 8, !tbaa !18
  %124 = getelementptr inbounds %struct.du_head, ptr %43, i64 0, i32 5
  %125 = load i32, ptr %124, align 8, !tbaa !89
  %126 = load i32, ptr %33, align 8, !tbaa !44
  %127 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %120, ptr noundef nonnull @.str.12, ptr noundef %123, i32 noundef %125, i32 noundef %126) #21
  br label %183

128:                                              ; preds = %102
  br i1 %70, label %183, label %129

129:                                              ; preds = %128
  store i1 true, ptr @fail_current_block, align 1
  %130 = load ptr, ptr @dump_file, align 8, !tbaa !18
  %131 = icmp eq ptr %130, null
  br i1 %131, label %183, label %132

132:                                              ; preds = %129
  %133 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 45, i64 1, ptr nonnull %130)
  br label %183

134:                                              ; preds = %85, %84
  store i64 32, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 5), align 8, !tbaa !9
  %135 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 4), align 8, !tbaa !13
  %136 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 3), align 8, !tbaa !14
  %137 = ptrtoint ptr %135 to i64
  %138 = ptrtoint ptr %136 to i64
  %139 = sub i64 %137, %138
  %140 = icmp slt i64 %139, 32
  br i1 %140, label %141, label %144

141:                                              ; preds = %134
  tail call void @_obstack_newchunk(ptr noundef nonnull @rename_obstack, i32 noundef 32) #20
  %142 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 5), align 8, !tbaa !9
  %143 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 3), align 8, !tbaa !14
  br label %144

144:                                              ; preds = %134, %141
  %145 = phi ptr [ %136, %134 ], [ %143, %141 ]
  %146 = phi i64 [ 32, %134 ], [ %142, %141 ]
  %147 = getelementptr inbounds i8, ptr %145, i64 %146
  %148 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 2), align 8, !tbaa !15
  %149 = icmp eq ptr %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %144
  %151 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 10), align 8
  %152 = or i8 %151, 2
  store i8 %152, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 10), align 8
  br label %153

153:                                              ; preds = %144, %150
  %154 = ptrtoint ptr %148 to i64
  store i64 %154, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 5), align 8, !tbaa !9
  %155 = ptrtoint ptr %147 to i64
  %156 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 6), align 8, !tbaa !16
  %157 = sext i32 %156 to i64
  %158 = add nsw i64 %157, %155
  %159 = xor i32 %156, -1
  %160 = sext i32 %159 to i64
  %161 = and i64 %158, %160
  %162 = inttoptr i64 %161 to ptr
  %163 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 1), align 8, !tbaa !17
  %164 = ptrtoint ptr %163 to i64
  %165 = sub i64 %161, %164
  %166 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 4), align 8, !tbaa !13
  %167 = ptrtoint ptr %166 to i64
  %168 = sub i64 %167, %164
  %169 = icmp sgt i64 %165, %168
  %170 = select i1 %169, ptr %166, ptr %162
  store ptr %170, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 3), align 8
  store ptr %170, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 2), align 8, !tbaa !15
  store ptr null, ptr %148, align 8, !tbaa !73
  %171 = getelementptr inbounds %struct.du_chain, ptr %148, i64 0, i32 2
  store ptr %1, ptr %171, align 8, !tbaa !49
  %172 = getelementptr inbounds %struct.du_chain, ptr %148, i64 0, i32 1
  store ptr %0, ptr %172, align 8, !tbaa !45
  %173 = getelementptr inbounds %struct.du_chain, ptr %148, i64 0, i32 3
  store i16 %32, ptr %173, align 8
  %174 = getelementptr inbounds %struct.du_head, ptr %43, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !48
  %176 = icmp eq ptr %175, null
  br i1 %176, label %180, label %177

177:                                              ; preds = %153
  %178 = getelementptr inbounds %struct.du_head, ptr %43, i64 0, i32 2
  %179 = load ptr, ptr %178, align 8, !tbaa !82
  br label %180

180:                                              ; preds = %153, %177
  %181 = phi ptr [ %179, %177 ], [ %174, %153 ]
  store ptr %148, ptr %181, align 8, !tbaa !18
  %182 = getelementptr inbounds %struct.du_head, ptr %43, i64 0, i32 2
  store ptr %148, ptr %182, align 8, !tbaa !82
  br label %183

183:                                              ; preds = %119, %122, %129, %132, %128, %180
  %184 = load i32, ptr %0, align 8
  %185 = and i32 %184, 65535
  %186 = icmp eq i32 %185, 7
  br i1 %186, label %272, label %265

187:                                              ; preds = %82
  %188 = select i1 %38, i1 %62, i1 false
  br i1 %188, label %189, label %245

189:                                              ; preds = %187
  %190 = or disjoint i8 %72, 1
  store i8 %190, ptr %71, align 8
  %191 = load ptr, ptr @closed_chains, align 8, !tbaa !18
  store ptr %191, ptr %43, align 8, !tbaa !40
  store ptr %43, ptr @closed_chains, align 8, !tbaa !18
  %192 = getelementptr inbounds %struct.du_head, ptr %43, i64 0, i32 5
  %193 = load i32, ptr %192, align 8, !tbaa !89
  %194 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef nonnull @open_chains_set, i32 noundef %193) #20
  %195 = load i32, ptr %76, align 4, !tbaa !43
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %233, label %197

197:                                              ; preds = %189
  %198 = zext i32 %195 to i64
  %199 = load i32, ptr %46, align 8, !tbaa !37
  %200 = load i64, ptr @live_in_chains, align 8, !tbaa !27
  %201 = add nuw nsw i64 %198, 1
  %202 = and i64 %201, 8589934590
  %203 = add nsw i64 %198, -1
  %204 = insertelement <2 x i64> poison, i64 %203, i64 0
  %205 = shufflevector <2 x i64> %204, <2 x i64> poison, <2 x i32> zeroinitializer
  %206 = insertelement <2 x i64> poison, i64 %198, i64 0
  %207 = shufflevector <2 x i64> %206, <2 x i64> poison, <2 x i32> zeroinitializer
  %208 = add nsw <2 x i64> %207, <i64 0, i64 -1>
  %209 = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %200, i64 0
  %210 = insertelement <2 x i32> poison, i32 %199, i64 0
  %211 = add <2 x i32> %210, <i32 -1, i32 poison>
  %212 = shufflevector <2 x i32> %211, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %213

213:                                              ; preds = %213, %197
  %214 = phi i64 [ 0, %197 ], [ %223, %213 ]
  %215 = phi <2 x i64> [ %208, %197 ], [ %224, %213 ]
  %216 = phi <2 x i64> [ %209, %197 ], [ %222, %213 ]
  %217 = trunc <2 x i64> %215 to <2 x i32>
  %218 = add <2 x i32> %212, %217
  %219 = zext nneg <2 x i32> %218 to <2 x i64>
  %220 = shl nuw <2 x i64> <i64 1, i64 1>, %219
  %221 = xor <2 x i64> %220, <i64 -1, i64 -1>
  %222 = and <2 x i64> %216, %221
  %223 = add i64 %214, 2
  %224 = add <2 x i64> %215, <i64 -2, i64 -2>
  %225 = icmp eq i64 %223, %202
  br i1 %225, label %226, label %213, !llvm.loop !117

226:                                              ; preds = %213
  %227 = insertelement <2 x i64> poison, i64 %214, i64 0
  %228 = shufflevector <2 x i64> %227, <2 x i64> poison, <2 x i32> zeroinitializer
  %229 = or disjoint <2 x i64> %228, <i64 0, i64 1>
  %230 = icmp ugt <2 x i64> %229, %205
  %231 = select <2 x i1> %230, <2 x i64> %216, <2 x i64> %222
  %232 = tail call i64 @llvm.vector.reduce.and.v2i64(<2 x i64> %231)
  store i64 %232, ptr @live_in_chains, align 8, !tbaa !27
  br label %233

233:                                              ; preds = %226, %189
  store ptr %45, ptr %44, align 8, !tbaa !18
  %234 = load ptr, ptr @dump_file, align 8, !tbaa !18
  %235 = icmp eq ptr %234, null
  br i1 %235, label %268, label %236

236:                                              ; preds = %233
  %237 = load i32, ptr %46, align 8, !tbaa !37
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %238
  %240 = load ptr, ptr %239, align 8, !tbaa !18
  %241 = load i32, ptr %192, align 8, !tbaa !89
  %242 = load i32, ptr %33, align 8, !tbaa !44
  %243 = load ptr, ptr %40, align 8, !tbaa !18
  %244 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %234, ptr noundef nonnull @.str.14, ptr noundef %240, i32 noundef %241, i32 noundef %242, ptr noundef %243) #21
  br label %265

245:                                              ; preds = %187
  br i1 %38, label %246, label %252

246:                                              ; preds = %245
  %247 = load ptr, ptr @dump_file, align 8, !tbaa !18
  %248 = icmp eq ptr %247, null
  br i1 %248, label %251, label %249

249:                                              ; preds = %246
  %250 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 45, i64 1, ptr nonnull %247)
  br label %251

251:                                              ; preds = %249, %246
  store i1 true, ptr @fail_current_block, align 1
  br label %272

252:                                              ; preds = %245
  %253 = or i8 %72, 4
  store i8 %253, ptr %71, align 8
  %254 = load ptr, ptr @dump_file, align 8, !tbaa !18
  %255 = icmp eq ptr %254, null
  br i1 %255, label %265, label %256

256:                                              ; preds = %252
  %257 = zext i32 %47 to i64
  %258 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %257
  %259 = load ptr, ptr %258, align 8, !tbaa !18
  %260 = getelementptr inbounds %struct.du_head, ptr %43, i64 0, i32 5
  %261 = load i32, ptr %260, align 8, !tbaa !89
  %262 = load i32, ptr %33, align 8, !tbaa !44
  %263 = load ptr, ptr %40, align 8, !tbaa !18
  %264 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %254, ptr noundef nonnull @.str.11, ptr noundef %259, i32 noundef %261, i32 noundef %262, ptr noundef %263) #21
  br label %265

265:                                              ; preds = %75, %69, %252, %256, %236, %183
  %266 = phi ptr [ %43, %252 ], [ %43, %256 ], [ %44, %236 ], [ %43, %183 ], [ %43, %69 ], [ %43, %75 ]
  %267 = load ptr, ptr %266, align 8, !tbaa !18
  br label %268

268:                                              ; preds = %265, %233
  %269 = phi ptr [ %267, %265 ], [ %45, %233 ]
  %270 = phi ptr [ %266, %265 ], [ %44, %233 ]
  %271 = icmp eq ptr %269, null
  br i1 %271, label %272, label %42

272:                                              ; preds = %268, %183, %26, %251, %20, %17, %19
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @regno_ok_for_base_p(i32 noundef %0) unnamed_addr #10 {
  %2 = icmp ugt i32 %0, 52
  br i1 %2, label %3, label %11

3:                                                ; preds = %1
  %4 = load ptr, ptr @reg_renumber, align 8, !tbaa !18
  %5 = zext i32 %0 to i64
  %6 = getelementptr inbounds i16, ptr %4, i64 %5
  %7 = load i16, ptr %6, align 2, !tbaa !103
  %8 = sext i16 %7 to i32
  %9 = icmp slt i16 %7, 0
  %10 = select i1 %9, i32 %0, i32 %8
  br label %11

11:                                               ; preds = %3, %1
  %12 = phi i32 [ %0, %1 ], [ %10, %3 ]
  %13 = tail call fastcc zeroext i8 @ok_for_base_p_1(i32 noundef %12) #21
  ret i8 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @ok_for_base_p_1(i32 noundef %0) unnamed_addr #10 {
  %2 = icmp ult i32 %0, 8
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = zext i32 %0 to i64
  %5 = add nsw i64 %4, -37
  %6 = icmp ult i64 %5, 8
  %7 = and i32 %0, -5
  %8 = icmp eq i32 %7, 16
  %9 = or i1 %8, %6
  br i1 %9, label %21, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr @reg_renumber, align 8, !tbaa !18
  %12 = getelementptr inbounds i16, ptr %11, i64 %4
  %13 = load i16, ptr %12, align 2, !tbaa !103
  %14 = icmp ult i16 %13, 8
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  %16 = sext i16 %13 to i64
  %17 = and i64 %16, 4294967295
  %18 = add nsw i64 %17, -37
  %19 = icmp ult i64 %18, 8
  %20 = zext i1 %19 to i8
  br label %21

21:                                               ; preds = %10, %15, %3, %1
  %22 = phi i8 [ 1, %3 ], [ 1, %1 ], [ 1, %10 ], [ %20, %15 ]
  ret i8 %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i32 @end_hard_regno(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = zext i32 %1 to i64
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %3, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !44
  %7 = zext i8 %6 to i32
  %8 = add i32 %7, %1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #15 {
  %4 = load ptr, ptr %1, align 8, !tbaa !118
  store ptr %4, ptr %0, align 8, !tbaa !119
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !121
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !119
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !122
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !124
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !27
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !125
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !5
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !125
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !5
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !126

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !5
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !5
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !124
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !119
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !124
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !27
  store i64 %35, ptr %3, align 8, !tbaa !125
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !5
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !5
  %40 = load i32, ptr %23, align 8, !tbaa !124
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !124
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !llvm.loop !127

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !128
  store ptr %44, ptr %0, align 8, !tbaa !119
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !122
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !5
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !125
  store i32 %16, ptr %1, align 4, !tbaa !5
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_du_head_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #13 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_du_head_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !18
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !125
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !125
  %6 = load i32, ptr %1, align 4, !tbaa !5
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !5
  ret void
}

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_raw_REG(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @reg_set_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @remove_note(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @add_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_du_head_p_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #14 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !112
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_du_head_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !18
  ret i32 %14
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_du_head_p_heap_free() unnamed_addr #16 {
  %1 = load ptr, ptr @id_to_chain, align 8, !tbaa !18
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #21
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @id_to_chain, align 8, !tbaa !18
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.and.v2i64(<2 x i64>) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind }
attributes #20 = { nounwind optsize }
attributes #21 = { optsize }

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
!9 = !{!10, !11, i64 40}
!10 = !{!"obstack", !11, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !11, i64 40, !6, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !6, i64 80, !6, i64 80, !6, i64 80}
!11 = !{!"long", !7, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!10, !12, i64 32}
!14 = !{!10, !12, i64 24}
!15 = !{!10, !12, i64 16}
!16 = !{!10, !6, i64 48}
!17 = !{!10, !12, i64 8}
!18 = !{!12, !12, i64 0}
!19 = !{!20, !12, i64 8}
!20 = !{!"function", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !12, i64 128, !6, i64 136, !6, i64 137, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139}
!21 = !{!22, !12, i64 0}
!22 = !{!"control_flow_graph", !12, i64 0, !12, i64 8, !12, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !12, i64 40, !6, i64 48, !7, i64 52, !7, i64 60, !6, i64 68, !6, i64 72}
!23 = !{!24, !12, i64 56}
!24 = !{!"basic_block_def", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !7, i64 32, !12, i64 48, !12, i64 56, !7, i64 64, !11, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96}
!25 = !{!22, !12, i64 8}
!26 = !{!24, !6, i64 80}
!27 = !{!11, !11, i64 0}
!28 = !{!29, !7, i64 477}
!29 = !{!"rtl_data", !30, i64 0, !31, i64 40, !32, i64 96, !33, i64 112, !35, i64 208, !36, i64 248, !6, i64 312, !12, i64 320, !12, i64 328, !12, i64 336, !12, i64 344, !12, i64 352, !12, i64 360, !12, i64 368, !12, i64 376, !12, i64 384, !12, i64 392, !11, i64 400, !12, i64 408, !12, i64 416, !12, i64 424, !6, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !12, i64 456, !7, i64 464, !7, i64 465, !7, i64 466, !7, i64 467, !7, i64 468, !7, i64 469, !7, i64 470, !7, i64 471, !7, i64 472, !7, i64 473, !7, i64 474, !7, i64 475, !7, i64 476, !7, i64 477, !7, i64 478, !7, i64 479, !7, i64 480, !7, i64 481, !7, i64 482, !7, i64 483, !7, i64 484, !7, i64 485}
!30 = !{!"expr_status", !6, i64 0, !6, i64 4, !6, i64 8, !12, i64 16, !12, i64 24, !12, i64 32}
!31 = !{!"emit_status", !6, i64 0, !6, i64 4, !12, i64 8, !12, i64 16, !12, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !12, i64 48}
!32 = !{!"varasm_status", !12, i64 0, !6, i64 8}
!33 = !{!"incoming_args", !6, i64 0, !6, i64 4, !6, i64 8, !12, i64 16, !34, i64 24, !12, i64 88}
!34 = !{!"ix86_args", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60}
!35 = !{!"function_subsections", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32}
!36 = !{!"rtl_eh", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !7, i64 48}
!37 = !{!38, !6, i64 24}
!38 = !{!"du_head", !12, i64 0, !12, i64 8, !12, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !39, i64 40, !11, i64 72, !6, i64 80, !6, i64 80, !6, i64 80}
!39 = !{!"bitmap_head_def", !12, i64 0, !12, i64 8, !6, i64 16, !12, i64 24}
!40 = !{!38, !12, i64 0}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!38, !6, i64 28}
!44 = !{!7, !7, i64 0}
!45 = !{!46, !12, i64 8}
!46 = !{!"du_chain", !12, i64 0, !12, i64 8, !12, i64 16, !6, i64 24}
!47 = distinct !{!47, !42}
!48 = !{!38, !12, i64 8}
!49 = !{!46, !12, i64 16}
!50 = distinct !{!50, !42}
!51 = distinct !{!51, !42}
!52 = distinct !{!52, !42}
!53 = distinct !{!53, !42}
!54 = distinct !{!54, !42}
!55 = !{!56, !7, i64 1086}
!56 = !{!"recog_data", !7, i64 0, !7, i64 240, !7, i64 480, !7, i64 720, !7, i64 840, !7, i64 960, !7, i64 1072, !7, i64 1086, !7, i64 1087, !7, i64 1088, !7, i64 1089, !12, i64 1120}
!57 = !{!58, !6, i64 16}
!58 = !{!"operand_alternative", !12, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 24, !6, i64 24, !6, i64 24, !6, i64 24, !6, i64 24, !6, i64 24, !6, i64 24}
!59 = !{!58, !6, i64 20}
!60 = !{!58, !6, i64 8}
!61 = !{i8 0, i8 2}
!62 = distinct !{!62, !42}
!63 = distinct !{!63, !42}
!64 = !{!56, !7, i64 1087}
!65 = distinct !{!65, !42}
!66 = distinct !{!66, !42}
!67 = distinct !{!67, !42}
!68 = distinct !{!68, !42}
!69 = distinct !{!69, !42}
!70 = distinct !{!70, !42}
!71 = !{!72, !12, i64 8}
!72 = !{!"rtl_bb_info", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !6, i64 32}
!73 = !{!46, !12, i64 0}
!74 = distinct !{!74, !42}
!75 = distinct !{!75, !42}
!76 = distinct !{!76, !42}
!77 = !{!38, !11, i64 72}
!78 = distinct !{!78, !42}
!79 = distinct !{!79, !42}
!80 = distinct !{!80, !42}
!81 = distinct !{!81, !42}
!82 = !{!38, !12, i64 16}
!83 = !{i32 0, i32 2}
!84 = distinct !{!84, !42}
!85 = !{!39, !12, i64 24}
!86 = !{!87, !12, i64 0}
!87 = !{!"df_scan_bb_info", !12, i64 0, !12, i64 8}
!88 = distinct !{!88, !42}
!89 = !{!38, !6, i64 32}
!90 = distinct !{!90, !42, !91, !92}
!91 = !{!"llvm.loop.isvectorized", i32 1}
!92 = !{!"llvm.loop.unroll.runtime.disable"}
!93 = distinct !{!93, !42}
!94 = distinct !{!94, !42}
!95 = distinct !{!95, !42}
!96 = distinct !{!96, !42}
!97 = distinct !{!97, !42}
!98 = distinct !{!98, !42}
!99 = !{!100, !6, i64 0}
!100 = !{!"rtvec_def", !6, i64 0, !7, i64 8}
!101 = distinct !{!101, !42}
!102 = distinct !{!102, !42}
!103 = !{!104, !104, i64 0}
!104 = !{!"short", !7, i64 0}
!105 = distinct !{!105, !42}
!106 = distinct !{!106, !42}
!107 = distinct !{!107, !42, !91, !92}
!108 = !{!109, !6, i64 16}
!109 = !{!"dataflow", !12, i64 0, !12, i64 8, !6, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !6, i64 48, !7, i64 52, !7, i64 53, !7, i64 54}
!110 = !{!109, !12, i64 8}
!111 = distinct !{!111, !42}
!112 = !{!113, !6, i64 0}
!113 = !{!"VEC_du_head_p_base", !6, i64 0, !6, i64 4, !7, i64 8}
!114 = !{!113, !6, i64 4}
!115 = distinct !{!115, !42}
!116 = distinct !{!116, !42}
!117 = distinct !{!117, !42, !91, !92}
!118 = !{!39, !12, i64 0}
!119 = !{!120, !12, i64 0}
!120 = !{!"", !12, i64 0, !12, i64 8, !6, i64 16, !11, i64 24}
!121 = !{!120, !12, i64 8}
!122 = !{!123, !6, i64 16}
!123 = !{!"bitmap_element_def", !12, i64 0, !12, i64 8, !6, i64 16, !7, i64 24}
!124 = !{!120, !6, i64 16}
!125 = !{!120, !11, i64 24}
!126 = distinct !{!126, !42}
!127 = distinct !{!127, !42}
!128 = !{!123, !12, i64 0}
