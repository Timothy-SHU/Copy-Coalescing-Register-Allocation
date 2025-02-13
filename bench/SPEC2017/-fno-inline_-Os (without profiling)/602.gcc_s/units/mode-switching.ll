; ModuleID = 'mode-switching.c'
source_filename = "mode-switching.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.edge_iterator = type { i32, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.machine_function = type { ptr, ptr, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.machine_cfa_state = type { ptr, i64 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.bb_info = type { ptr, i32 }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.edge_list = type { i32, i32, ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.seginfo = type { i32, ptr, i32, ptr, i64 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }

@pass_mode_switching = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str, ptr @gate_mode_switching, ptr @rest_of_handle_mode_switching, ptr null, ptr null, i32 0, i32 143, i32 0, i32 0, i32 0, i32 0, i32 132097 } }, align 8
@.str = private unnamed_addr constant [8 x i8] c"mode_sw\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@antic = internal unnamed_addr global ptr null, align 8
@transp = internal unnamed_addr global ptr null, align 8
@comp = internal unnamed_addr global ptr null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"mode-switching.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef zeroext i8 @gate_mode_switching() #0 {
  ret i8 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_mode_switching() #1 {
  tail call fastcc void @optimize_mode_switching() #11
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @optimize_mode_switching() unnamed_addr #1 {
  %1 = alloca [4 x i32], align 16
  %2 = alloca [4 x ptr], align 16
  %3 = alloca i64, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = alloca ptr, align 8
  %6 = alloca [4 x i32], align 16
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #12
  %10 = load ptr, ptr @cfun, align 8, !tbaa !6
  br label %11

11:                                               ; preds = %0, %34
  %12 = phi ptr [ %10, %0 ], [ %35, %34 ]
  %13 = phi i64 [ 3, %0 ], [ %38, %34 ]
  %14 = phi i32 [ 0, %0 ], [ %37, %34 ]
  %15 = phi i32 [ 0, %0 ], [ %36, %34 ]
  %16 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 10
  %17 = load ptr, ptr %16, align 8, !tbaa !10
  %18 = getelementptr inbounds %struct.machine_function, ptr %17, i64 0, i32 4, i64 %13
  %19 = load i32, ptr %18, align 4, !tbaa !13
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !14
  %24 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 5
  %25 = load i32, ptr %24, align 8, !tbaa !15
  %26 = sext i32 %25 to i64
  %27 = tail call ptr @xcalloc(i64 noundef %26, i64 noundef 16) #13
  %28 = sext i32 %14 to i64
  %29 = getelementptr inbounds [4 x ptr], ptr %2, i64 0, i64 %28
  store ptr %27, ptr %29, align 8, !tbaa !6
  %30 = add nsw i32 %14, 1
  %31 = getelementptr inbounds [4 x i32], ptr %1, i64 0, i64 %28
  %32 = trunc i64 %13 to i32
  store i32 %32, ptr %31, align 4, !tbaa !13
  %33 = load ptr, ptr @cfun, align 8, !tbaa !6
  br label %34

34:                                               ; preds = %11, %21
  %35 = phi ptr [ %33, %21 ], [ %12, %11 ]
  %36 = phi i32 [ 5, %21 ], [ %15, %11 ]
  %37 = phi i32 [ %30, %21 ], [ %14, %11 ]
  %38 = add nsw i64 %13, -1
  %39 = icmp eq i64 %13, 0
  br i1 %39, label %40, label %11, !llvm.loop !17

40:                                               ; preds = %34
  %41 = icmp eq i32 %37, 0
  br i1 %41, label %538, label %42

42:                                               ; preds = %40
  tail call void @df_analyze() #13
  %43 = load ptr, ptr @cfun, align 8, !tbaa !6
  %44 = getelementptr inbounds %struct.function, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !14
  %46 = getelementptr inbounds %struct.control_flow_graph, ptr %45, i64 0, i32 5
  %47 = load i32, ptr %46, align 8, !tbaa !15
  %48 = tail call ptr @sbitmap_vector_alloc(i32 noundef %47, i32 noundef %37) #13
  store ptr %48, ptr @antic, align 8, !tbaa !6
  %49 = load ptr, ptr @cfun, align 8, !tbaa !6
  %50 = getelementptr inbounds %struct.function, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !14
  %52 = getelementptr inbounds %struct.control_flow_graph, ptr %51, i64 0, i32 5
  %53 = load i32, ptr %52, align 8, !tbaa !15
  %54 = tail call ptr @sbitmap_vector_alloc(i32 noundef %53, i32 noundef %37) #13
  store ptr %54, ptr @transp, align 8, !tbaa !6
  %55 = load ptr, ptr @cfun, align 8, !tbaa !6
  %56 = getelementptr inbounds %struct.function, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !14
  %58 = getelementptr inbounds %struct.control_flow_graph, ptr %57, i64 0, i32 5
  %59 = load i32, ptr %58, align 8, !tbaa !15
  %60 = tail call ptr @sbitmap_vector_alloc(i32 noundef %59, i32 noundef %37) #13
  store ptr %60, ptr @comp, align 8, !tbaa !6
  %61 = load ptr, ptr @transp, align 8, !tbaa !6
  %62 = load ptr, ptr @cfun, align 8, !tbaa !6
  %63 = getelementptr inbounds %struct.function, ptr %62, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !14
  %65 = getelementptr inbounds %struct.control_flow_graph, ptr %64, i64 0, i32 5
  %66 = load i32, ptr %65, align 8, !tbaa !15
  tail call void @sbitmap_vector_ones(ptr noundef %61, i32 noundef %66) #13
  %67 = add i32 %37, -1
  %68 = icmp sgt i32 %37, 0
  %69 = load ptr, ptr @cfun, align 8, !tbaa !6
  br i1 %68, label %70, label %238

70:                                               ; preds = %42
  %71 = getelementptr inbounds i8, ptr %4, i64 8
  %72 = zext nneg i32 %67 to i64
  br label %73

73:                                               ; preds = %70, %234
  %74 = phi ptr [ %69, %70 ], [ %235, %234 ]
  %75 = phi i64 [ %72, %70 ], [ %236, %234 ]
  %76 = getelementptr inbounds [4 x i32], ptr %1, i64 0, i64 %75
  %77 = load i32, ptr %76, align 4, !tbaa !13
  %78 = getelementptr inbounds [4 x ptr], ptr %2, i64 0, i64 %75
  %79 = load ptr, ptr %78, align 8, !tbaa !6
  %80 = getelementptr inbounds %struct.function, ptr %74, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !14
  %82 = load ptr, ptr %81, align 8, !tbaa !19
  %83 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 6
  %84 = load ptr, ptr %83, align 8, !tbaa !20
  %85 = getelementptr inbounds %struct.control_flow_graph, ptr %81, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !23
  %87 = icmp eq ptr %84, %86
  br i1 %87, label %234, label %88

88:                                               ; preds = %73
  %89 = trunc i64 %75 to i32
  %90 = trunc i64 %75 to i32
  br label %91

91:                                               ; preds = %88, %225
  %92 = phi ptr [ %227, %225 ], [ %84, %88 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  store i64 0, ptr %3, align 8, !tbaa !24
  %93 = call ptr @df_get_live_in(ptr noundef %92) #13
  call void @reg_set_to_hard_reg_set(ptr noundef nonnull %3, ptr noundef %93) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  %94 = call fastcc ptr @ei_start_1(ptr noundef %92) #11
  store i32 0, ptr %4, align 8, !tbaa.struct !25
  store ptr %94, ptr %71, align 8, !tbaa.struct !26
  %95 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %94, ptr noundef nonnull %5) #11, !range !27
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %108, label %97

97:                                               ; preds = %91, %103
  %98 = load ptr, ptr %5, align 8, !tbaa !6
  %99 = getelementptr inbounds %struct.edge_def, ptr %98, i64 0, i32 7
  %100 = load i32, ptr %99, align 8, !tbaa !28
  %101 = and i32 %100, 14
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %97
  call fastcc void @ei_next(ptr noundef nonnull %4) #11
  %104 = load i32, ptr %4, align 8
  %105 = load ptr, ptr %71, align 8
  %106 = call fastcc zeroext i8 @ei_cond(i32 %104, ptr %105, ptr noundef nonnull %5) #11, !range !27
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %97, !llvm.loop !30

108:                                              ; preds = %103, %91
  %109 = load ptr, ptr %5, align 8, !tbaa !6
  %110 = icmp eq ptr %109, null
  br i1 %110, label %127, label %111

111:                                              ; preds = %97, %108
  %112 = getelementptr inbounds %struct.basic_block_def, ptr %92, i64 0, i32 7
  %113 = load ptr, ptr %112, align 8, !tbaa !31
  %114 = load ptr, ptr %113, align 8, !tbaa !32
  %115 = getelementptr inbounds %struct.basic_block_def, ptr %92, i64 0, i32 9
  %116 = load i32, ptr %115, align 8, !tbaa !34
  %117 = load i64, ptr %3, align 8, !tbaa !24
  %118 = call fastcc ptr @new_seginfo(i32 noundef 5, ptr noundef %114, i32 noundef %116, i64 noundef %117) #11
  %119 = load i32, ptr %115, align 8, !tbaa !34
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.bb_info, ptr %79, i64 %120
  call fastcc void @add_seginfo(ptr noundef %121, ptr noundef %118) #11
  %122 = load ptr, ptr @transp, align 8, !tbaa !6
  %123 = load i32, ptr %115, align 8, !tbaa !34
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds ptr, ptr %122, i64 %124
  %126 = load ptr, ptr %125, align 8, !tbaa !6
  call fastcc void @RESET_BIT(ptr noundef %126, i32 noundef %89) #11
  br label %127

127:                                              ; preds = %111, %108
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  %128 = getelementptr inbounds %struct.basic_block_def, ptr %92, i64 0, i32 7
  %129 = load ptr, ptr %128, align 8, !tbaa !31
  %130 = load ptr, ptr %129, align 8, !tbaa !31
  %131 = icmp eq ptr %130, null
  %132 = getelementptr inbounds %struct.basic_block_def, ptr %92, i64 0, i32 9
  br i1 %131, label %133, label %137

133:                                              ; preds = %127
  %134 = load i32, ptr %132, align 8, !tbaa !34
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.bb_info, ptr %79, i64 %135, i32 1
  store i32 5, ptr %136, align 8, !tbaa !35
  br label %214

137:                                              ; preds = %127, %202
  %138 = phi ptr [ %205, %202 ], [ %130, %127 ]
  %139 = phi i32 [ %203, %202 ], [ 5, %127 ]
  %140 = load ptr, ptr %128, align 8, !tbaa !31
  %141 = getelementptr inbounds %struct.rtl_bb_info, ptr %140, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !37
  %143 = getelementptr inbounds %struct.rtx_def, ptr %142, i64 0, i32 1, i32 0, i32 0, i64 2
  %144 = load ptr, ptr %143, align 8, !tbaa !31
  %145 = icmp eq ptr %138, %144
  br i1 %145, label %207, label %146

146:                                              ; preds = %137
  %147 = load i32, ptr %138, align 8
  %148 = and i32 %147, 65535
  %149 = add nsw i32 %148, -7
  %150 = icmp ult i32 %149, 4
  br i1 %150, label %151, label %202

151:                                              ; preds = %146
  %152 = call i32 @ix86_mode_needed(i32 noundef %77, ptr noundef nonnull %138) #13
  %153 = icmp eq i32 %152, 5
  %154 = icmp eq i32 %152, %139
  %155 = select i1 %153, i1 true, i1 %154
  br i1 %155, label %168, label %156

156:                                              ; preds = %151
  %157 = load i32, ptr %132, align 8, !tbaa !34
  %158 = load i64, ptr %3, align 8, !tbaa !24
  %159 = call fastcc ptr @new_seginfo(i32 noundef %152, ptr noundef nonnull %138, i32 noundef %157, i64 noundef %158) #11
  %160 = load i32, ptr %132, align 8, !tbaa !34
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.bb_info, ptr %79, i64 %161
  call fastcc void @add_seginfo(ptr noundef %162, ptr noundef %159) #11
  %163 = load ptr, ptr @transp, align 8, !tbaa !6
  %164 = load i32, ptr %132, align 8, !tbaa !34
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds ptr, ptr %163, i64 %165
  %167 = load ptr, ptr %166, align 8, !tbaa !6
  call fastcc void @RESET_BIT(ptr noundef %167, i32 noundef %90) #11
  br label %168

168:                                              ; preds = %156, %151
  %169 = phi i32 [ %152, %156 ], [ %139, %151 ]
  %170 = getelementptr inbounds %struct.rtx_def, ptr %138, i64 1, i32 1, i32 0, i32 0, i64 1
  %171 = load ptr, ptr %170, align 8, !tbaa !31
  %172 = icmp eq ptr %171, null
  br i1 %172, label %185, label %173

173:                                              ; preds = %168, %181
  %174 = phi ptr [ %183, %181 ], [ %171, %168 ]
  %175 = load i32, ptr %174, align 8
  %176 = and i32 %175, 16711680
  %177 = icmp eq i32 %176, 65536
  br i1 %177, label %178, label %181

178:                                              ; preds = %173
  %179 = getelementptr inbounds %struct.rtx_def, ptr %174, i64 0, i32 1
  %180 = load ptr, ptr %179, align 8, !tbaa !31
  call fastcc void @reg_dies(ptr noundef %180, ptr noundef nonnull %3) #11
  br label %181

181:                                              ; preds = %173, %178
  %182 = getelementptr inbounds %struct.rtx_def, ptr %174, i64 0, i32 1, i32 0, i32 0, i64 1
  %183 = load ptr, ptr %182, align 8, !tbaa !31
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %173, !llvm.loop !38

185:                                              ; preds = %181, %168
  %186 = getelementptr inbounds %struct.rtx_def, ptr %138, i64 1
  %187 = load ptr, ptr %186, align 8, !tbaa !31
  call void @note_stores(ptr noundef %187, ptr noundef nonnull @reg_becomes_live, ptr noundef nonnull %3) #13
  %188 = load ptr, ptr %170, align 8, !tbaa !31
  %189 = icmp eq ptr %188, null
  br i1 %189, label %202, label %190

190:                                              ; preds = %185, %198
  %191 = phi ptr [ %200, %198 ], [ %188, %185 ]
  %192 = load i32, ptr %191, align 8
  %193 = and i32 %192, 16711680
  %194 = icmp eq i32 %193, 393216
  br i1 %194, label %195, label %198

195:                                              ; preds = %190
  %196 = getelementptr inbounds %struct.rtx_def, ptr %191, i64 0, i32 1
  %197 = load ptr, ptr %196, align 8, !tbaa !31
  call fastcc void @reg_dies(ptr noundef %197, ptr noundef nonnull %3) #11
  br label %198

198:                                              ; preds = %190, %195
  %199 = getelementptr inbounds %struct.rtx_def, ptr %191, i64 0, i32 1, i32 0, i32 0, i64 1
  %200 = load ptr, ptr %199, align 8, !tbaa !31
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %190, !llvm.loop !39

202:                                              ; preds = %198, %185, %146
  %203 = phi i32 [ %139, %146 ], [ %169, %185 ], [ %169, %198 ]
  %204 = getelementptr inbounds %struct.rtx_def, ptr %138, i64 0, i32 1, i32 0, i32 0, i64 2
  %205 = load ptr, ptr %204, align 8, !tbaa !31
  %206 = icmp eq ptr %205, null
  br i1 %206, label %207, label %137, !llvm.loop !40

207:                                              ; preds = %137, %202
  %208 = phi i32 [ %139, %137 ], [ %203, %202 ]
  %209 = getelementptr inbounds %struct.basic_block_def, ptr %92, i64 0, i32 9
  %210 = load i32, ptr %209, align 8, !tbaa !34
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.bb_info, ptr %79, i64 %211, i32 1
  store i32 %208, ptr %212, align 8, !tbaa !35
  %213 = icmp eq i32 %208, 5
  br i1 %213, label %214, label %225

214:                                              ; preds = %133, %207
  %215 = phi i32 [ %134, %133 ], [ %210, %207 ]
  %216 = phi ptr [ %132, %133 ], [ %209, %207 ]
  %217 = load ptr, ptr %128, align 8, !tbaa !31
  %218 = getelementptr inbounds %struct.rtl_bb_info, ptr %217, i64 0, i32 1
  %219 = load ptr, ptr %218, align 8, !tbaa !37
  %220 = load i64, ptr %3, align 8, !tbaa !24
  %221 = call fastcc ptr @new_seginfo(i32 noundef 5, ptr noundef %219, i32 noundef %215, i64 noundef %220) #11
  %222 = load i32, ptr %216, align 8, !tbaa !34
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.bb_info, ptr %79, i64 %223
  call fastcc void @add_seginfo(ptr noundef %224, ptr noundef %221) #11
  br label %225

225:                                              ; preds = %214, %207
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  %226 = getelementptr inbounds %struct.basic_block_def, ptr %92, i64 0, i32 6
  %227 = load ptr, ptr %226, align 8, !tbaa !20
  %228 = load ptr, ptr @cfun, align 8, !tbaa !6
  %229 = getelementptr inbounds %struct.function, ptr %228, i64 0, i32 1
  %230 = load ptr, ptr %229, align 8, !tbaa !14
  %231 = getelementptr inbounds %struct.control_flow_graph, ptr %230, i64 0, i32 1
  %232 = load ptr, ptr %231, align 8, !tbaa !23
  %233 = icmp eq ptr %227, %232
  br i1 %233, label %234, label %91, !llvm.loop !41

234:                                              ; preds = %225, %73
  %235 = phi ptr [ %74, %73 ], [ %228, %225 ]
  %236 = add nsw i64 %75, -1
  %237 = icmp sgt i64 %75, 0
  br i1 %237, label %73, label %238, !llvm.loop !42

238:                                              ; preds = %234, %42
  %239 = phi ptr [ %69, %42 ], [ %235, %234 ]
  %240 = getelementptr inbounds %struct.function, ptr %239, i64 0, i32 1
  %241 = load ptr, ptr %240, align 8, !tbaa !14
  %242 = getelementptr inbounds %struct.control_flow_graph, ptr %241, i64 0, i32 5
  %243 = load i32, ptr %242, align 8, !tbaa !15
  %244 = call ptr @sbitmap_vector_alloc(i32 noundef %243, i32 noundef %37) #13
  %245 = icmp sgt i32 %36, 0
  br i1 %245, label %246, label %250

246:                                              ; preds = %238
  %247 = zext i32 %67 to i64
  br label %254

248:                                              ; preds = %456
  %249 = icmp ne i32 %457, 0
  br label %250

250:                                              ; preds = %248, %238
  %251 = phi i1 [ false, %238 ], [ %249, %248 ]
  br i1 %68, label %252, label %533

252:                                              ; preds = %250
  %253 = zext nneg i32 %67 to i64
  br label %462

254:                                              ; preds = %246, %456
  %255 = phi i32 [ 0, %246 ], [ %457, %456 ]
  %256 = phi i32 [ 0, %246 ], [ %460, %456 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #12
  %257 = load ptr, ptr @antic, align 8, !tbaa !6
  %258 = load ptr, ptr @cfun, align 8, !tbaa !6
  %259 = getelementptr inbounds %struct.function, ptr %258, i64 0, i32 1
  %260 = load ptr, ptr %259, align 8, !tbaa !14
  %261 = getelementptr inbounds %struct.control_flow_graph, ptr %260, i64 0, i32 5
  %262 = load i32, ptr %261, align 8, !tbaa !15
  call void @sbitmap_vector_zero(ptr noundef %257, i32 noundef %262) #13
  %263 = load ptr, ptr @comp, align 8, !tbaa !6
  %264 = load ptr, ptr @cfun, align 8, !tbaa !6
  %265 = getelementptr inbounds %struct.function, ptr %264, i64 0, i32 1
  %266 = load ptr, ptr %265, align 8, !tbaa !14
  %267 = getelementptr inbounds %struct.control_flow_graph, ptr %266, i64 0, i32 5
  %268 = load i32, ptr %267, align 8, !tbaa !15
  call void @sbitmap_vector_zero(ptr noundef %263, i32 noundef %268) #13
  %269 = load ptr, ptr @cfun, align 8, !tbaa !6
  br i1 %68, label %270, label %324

270:                                              ; preds = %254, %320
  %271 = phi ptr [ %321, %320 ], [ %269, %254 ]
  %272 = phi i64 [ %322, %320 ], [ %247, %254 ]
  %273 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 %272
  store i32 %256, ptr %273, align 4, !tbaa !13
  %274 = getelementptr inbounds [4 x ptr], ptr %2, i64 0, i64 %272
  %275 = load ptr, ptr %274, align 8, !tbaa !6
  %276 = getelementptr inbounds %struct.function, ptr %271, i64 0, i32 1
  %277 = load ptr, ptr %276, align 8, !tbaa !14
  %278 = load ptr, ptr %277, align 8, !tbaa !19
  %279 = getelementptr inbounds %struct.basic_block_def, ptr %278, i64 0, i32 6
  %280 = load ptr, ptr %279, align 8, !tbaa !20
  %281 = getelementptr inbounds %struct.control_flow_graph, ptr %277, i64 0, i32 1
  %282 = load ptr, ptr %281, align 8, !tbaa !23
  %283 = icmp eq ptr %280, %282
  br i1 %283, label %320, label %284

284:                                              ; preds = %270
  %285 = trunc i64 %272 to i32
  %286 = trunc i64 %272 to i32
  br label %287

287:                                              ; preds = %284, %311
  %288 = phi ptr [ %313, %311 ], [ %280, %284 ]
  %289 = getelementptr inbounds %struct.basic_block_def, ptr %288, i64 0, i32 9
  %290 = load i32, ptr %289, align 8, !tbaa !34
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.bb_info, ptr %275, i64 %291
  %293 = load ptr, ptr %292, align 8, !tbaa !43
  %294 = load i32, ptr %293, align 8, !tbaa !44
  %295 = icmp eq i32 %294, %256
  br i1 %295, label %296, label %302

296:                                              ; preds = %287
  %297 = load ptr, ptr @antic, align 8, !tbaa !6
  %298 = getelementptr inbounds ptr, ptr %297, i64 %291
  %299 = load ptr, ptr %298, align 8, !tbaa !6
  call fastcc void @SET_BIT(ptr noundef %299, i32 noundef %285) #11
  %300 = load i32, ptr %289, align 8, !tbaa !34
  %301 = sext i32 %300 to i64
  br label %302

302:                                              ; preds = %296, %287
  %303 = phi i64 [ %301, %296 ], [ %291, %287 ]
  %304 = getelementptr inbounds %struct.bb_info, ptr %275, i64 %303, i32 1
  %305 = load i32, ptr %304, align 8, !tbaa !35
  %306 = icmp eq i32 %305, %256
  br i1 %306, label %307, label %311

307:                                              ; preds = %302
  %308 = load ptr, ptr @comp, align 8, !tbaa !6
  %309 = getelementptr inbounds ptr, ptr %308, i64 %303
  %310 = load ptr, ptr %309, align 8, !tbaa !6
  call fastcc void @SET_BIT(ptr noundef %310, i32 noundef %286) #11
  br label %311

311:                                              ; preds = %302, %307
  %312 = getelementptr inbounds %struct.basic_block_def, ptr %288, i64 0, i32 6
  %313 = load ptr, ptr %312, align 8, !tbaa !20
  %314 = load ptr, ptr @cfun, align 8, !tbaa !6
  %315 = getelementptr inbounds %struct.function, ptr %314, i64 0, i32 1
  %316 = load ptr, ptr %315, align 8, !tbaa !14
  %317 = getelementptr inbounds %struct.control_flow_graph, ptr %316, i64 0, i32 1
  %318 = load ptr, ptr %317, align 8, !tbaa !23
  %319 = icmp eq ptr %313, %318
  br i1 %319, label %320, label %287, !llvm.loop !46

320:                                              ; preds = %311, %270
  %321 = phi ptr [ %271, %270 ], [ %314, %311 ]
  %322 = add nsw i64 %272, -1
  %323 = icmp sgt i64 %272, 0
  br i1 %323, label %270, label %324, !llvm.loop !47

324:                                              ; preds = %320, %254
  %325 = phi ptr [ %269, %254 ], [ %321, %320 ]
  %326 = getelementptr inbounds %struct.function, ptr %325, i64 0, i32 1
  %327 = load ptr, ptr %326, align 8, !tbaa !14
  %328 = load ptr, ptr %327, align 8, !tbaa !19
  %329 = getelementptr inbounds %struct.basic_block_def, ptr %328, i64 0, i32 6
  %330 = load ptr, ptr %329, align 8, !tbaa !20
  %331 = getelementptr inbounds %struct.control_flow_graph, ptr %327, i64 0, i32 1
  %332 = load ptr, ptr %331, align 8, !tbaa !23
  %333 = icmp eq ptr %330, %332
  br i1 %333, label %352, label %334

334:                                              ; preds = %324, %334
  %335 = phi ptr [ %345, %334 ], [ %330, %324 ]
  %336 = getelementptr inbounds %struct.basic_block_def, ptr %335, i64 0, i32 9
  %337 = load i32, ptr %336, align 8, !tbaa !34
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds ptr, ptr %244, i64 %338
  %340 = load ptr, ptr %339, align 8, !tbaa !6
  %341 = load ptr, ptr @transp, align 8, !tbaa !6
  %342 = getelementptr inbounds ptr, ptr %341, i64 %338
  %343 = load ptr, ptr %342, align 8, !tbaa !6
  call void @sbitmap_not(ptr noundef %340, ptr noundef %343) #13
  %344 = getelementptr inbounds %struct.basic_block_def, ptr %335, i64 0, i32 6
  %345 = load ptr, ptr %344, align 8, !tbaa !20
  %346 = load ptr, ptr @cfun, align 8, !tbaa !6
  %347 = getelementptr inbounds %struct.function, ptr %346, i64 0, i32 1
  %348 = load ptr, ptr %347, align 8, !tbaa !14
  %349 = getelementptr inbounds %struct.control_flow_graph, ptr %348, i64 0, i32 1
  %350 = load ptr, ptr %349, align 8, !tbaa !23
  %351 = icmp eq ptr %345, %350
  br i1 %351, label %352, label %334, !llvm.loop !48

352:                                              ; preds = %334, %324
  %353 = load ptr, ptr @transp, align 8, !tbaa !6
  %354 = load ptr, ptr @comp, align 8, !tbaa !6
  %355 = load ptr, ptr @antic, align 8, !tbaa !6
  %356 = call ptr @pre_edge_lcm(i32 noundef %37, ptr noundef %353, ptr noundef %354, ptr noundef %355, ptr noundef %244, ptr noundef nonnull %8, ptr noundef nonnull %7) #13
  br i1 %68, label %357, label %456

357:                                              ; preds = %352
  %358 = getelementptr inbounds %struct.edge_list, ptr %356, i64 0, i32 1
  %359 = getelementptr inbounds %struct.edge_list, ptr %356, i64 0, i32 2
  br label %360

360:                                              ; preds = %357, %453
  %361 = phi i64 [ %247, %357 ], [ %454, %453 ]
  %362 = phi i32 [ %255, %357 ], [ %408, %453 ]
  %363 = load i32, ptr %358, align 4, !tbaa !49
  %364 = icmp sgt i32 %363, 0
  br i1 %364, label %365, label %407

365:                                              ; preds = %360
  %366 = lshr i64 %361, 6
  %367 = and i64 %366, 67108863
  %368 = and i64 %361, 63
  %369 = shl nuw i64 1, %368
  %370 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 %361
  %371 = zext nneg i32 %363 to i64
  br label %372

372:                                              ; preds = %365, %404
  %373 = phi i64 [ %371, %365 ], [ %375, %404 ]
  %374 = phi i32 [ %362, %365 ], [ %405, %404 ]
  %375 = add nsw i64 %373, -1
  %376 = load ptr, ptr %359, align 8, !tbaa !51
  %377 = getelementptr inbounds ptr, ptr %376, i64 %375
  %378 = load ptr, ptr %377, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #12
  %379 = getelementptr inbounds %struct.edge_def, ptr %378, i64 0, i32 3
  store ptr null, ptr %379, align 8, !tbaa !52
  %380 = load ptr, ptr %8, align 8, !tbaa !6
  %381 = getelementptr inbounds ptr, ptr %380, i64 %375
  %382 = load ptr, ptr %381, align 8, !tbaa !6
  %383 = getelementptr inbounds %struct.simple_bitmap_def, ptr %382, i64 0, i32 3, i64 %367
  %384 = load i64, ptr %383, align 8, !tbaa !24
  %385 = and i64 %384, %369
  %386 = icmp eq i64 %385, 0
  br i1 %386, label %404, label %387

387:                                              ; preds = %372
  store ptr inttoptr (i64 1 to ptr), ptr %379, align 8, !tbaa !52
  %388 = load i32, ptr %370, align 4, !tbaa !13
  %389 = load ptr, ptr %378, align 8, !tbaa !53
  store i64 0, ptr %9, align 8, !tbaa !24
  %390 = call ptr @df_get_live_out(ptr noundef %389) #13
  call void @reg_set_to_hard_reg_set(ptr noundef nonnull %9, ptr noundef %390) #13
  call void @start_sequence() #13
  %391 = add i32 %388, -6
  %392 = icmp ult i32 %391, -2
  br i1 %392, label %393, label %394

393:                                              ; preds = %387
  call void @emit_i387_cw_initialization(i32 noundef %388) #13
  br label %394

394:                                              ; preds = %387, %393
  %395 = call ptr @get_insns() #13
  call void @end_sequence() #13
  %396 = icmp eq ptr %395, null
  br i1 %396, label %404, label %397

397:                                              ; preds = %394
  %398 = getelementptr inbounds %struct.edge_def, ptr %378, i64 0, i32 7
  %399 = load i32, ptr %398, align 8, !tbaa !28
  %400 = and i32 %399, 2
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %403, label %402

402:                                              ; preds = %397
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 659, ptr noundef nonnull @.str.2) #13
  br label %403

403:                                              ; preds = %397, %402
  call void @insert_insn_on_edge(ptr noundef nonnull %395, ptr noundef nonnull %378) #13
  br label %404

404:                                              ; preds = %394, %372, %403
  %405 = phi i32 [ 1, %403 ], [ %374, %372 ], [ %374, %394 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #12
  %406 = icmp ugt i64 %373, 1
  br i1 %406, label %372, label %407, !llvm.loop !54

407:                                              ; preds = %404, %360
  %408 = phi i32 [ %362, %360 ], [ %405, %404 ]
  %409 = load ptr, ptr @cfun, align 8, !tbaa !6
  %410 = getelementptr inbounds %struct.function, ptr %409, i64 0, i32 1
  %411 = load ptr, ptr %410, align 8, !tbaa !14
  %412 = getelementptr inbounds %struct.control_flow_graph, ptr %411, i64 0, i32 1
  %413 = load ptr, ptr %412, align 8, !tbaa !23
  %414 = getelementptr inbounds %struct.basic_block_def, ptr %413, i64 0, i32 5
  %415 = load ptr, ptr %414, align 8, !tbaa !55
  %416 = load ptr, ptr %411, align 8, !tbaa !19
  %417 = icmp eq ptr %415, %416
  br i1 %417, label %453, label %418

418:                                              ; preds = %407
  %419 = trunc i64 %361 to i32
  %420 = lshr i64 %361, 6
  %421 = and i64 %420, 67108863
  %422 = and i64 %361, 63
  %423 = shl nuw i64 1, %422
  %424 = getelementptr inbounds [4 x ptr], ptr %2, i64 0, i64 %361
  br label %425

425:                                              ; preds = %418, %445
  %426 = phi ptr [ %409, %418 ], [ %446, %445 ]
  %427 = phi ptr [ %415, %418 ], [ %448, %445 ]
  %428 = load ptr, ptr %7, align 8, !tbaa !6
  %429 = getelementptr inbounds %struct.basic_block_def, ptr %427, i64 0, i32 9
  %430 = load i32, ptr %429, align 8, !tbaa !34
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds ptr, ptr %428, i64 %431
  %433 = load ptr, ptr %432, align 8, !tbaa !6
  %434 = getelementptr inbounds %struct.simple_bitmap_def, ptr %433, i64 0, i32 3, i64 %421
  %435 = load i64, ptr %434, align 8, !tbaa !24
  %436 = and i64 %435, %423
  %437 = icmp eq i64 %436, 0
  br i1 %437, label %445, label %438

438:                                              ; preds = %425
  call fastcc void @make_preds_opaque(ptr noundef nonnull %427, i32 noundef %419) #11
  %439 = load ptr, ptr %424, align 8, !tbaa !6
  %440 = load i32, ptr %429, align 8, !tbaa !34
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds %struct.bb_info, ptr %439, i64 %441
  %443 = load ptr, ptr %442, align 8, !tbaa !43
  store i32 5, ptr %443, align 8, !tbaa !44
  %444 = load ptr, ptr @cfun, align 8, !tbaa !6
  br label %445

445:                                              ; preds = %425, %438
  %446 = phi ptr [ %426, %425 ], [ %444, %438 ]
  %447 = getelementptr inbounds %struct.basic_block_def, ptr %427, i64 0, i32 5
  %448 = load ptr, ptr %447, align 8, !tbaa !55
  %449 = getelementptr inbounds %struct.function, ptr %446, i64 0, i32 1
  %450 = load ptr, ptr %449, align 8, !tbaa !14
  %451 = load ptr, ptr %450, align 8, !tbaa !19
  %452 = icmp eq ptr %448, %451
  br i1 %452, label %453, label %425, !llvm.loop !56

453:                                              ; preds = %445, %407
  %454 = add nsw i64 %361, -1
  %455 = icmp sgt i64 %361, 0
  br i1 %455, label %360, label %456, !llvm.loop !57

456:                                              ; preds = %453, %352
  %457 = phi i32 [ %255, %352 ], [ %408, %453 ]
  %458 = load ptr, ptr %7, align 8, !tbaa !6
  call void @free(ptr noundef %458) #11
  %459 = load ptr, ptr %8, align 8, !tbaa !6
  call void @free(ptr noundef %459) #11
  call void @clear_aux_for_edges() #13
  call void @free_edge_list(ptr noundef %356) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #12
  %460 = add nuw nsw i32 %256, 1
  %461 = icmp eq i32 %460, %36
  br i1 %461, label %248, label %254, !llvm.loop !58

462:                                              ; preds = %252, %529
  %463 = phi i64 [ %253, %252 ], [ %531, %529 ]
  %464 = phi i8 [ 0, %252 ], [ %530, %529 ]
  %465 = load ptr, ptr @cfun, align 8, !tbaa !6
  %466 = getelementptr inbounds %struct.function, ptr %465, i64 0, i32 1
  %467 = load ptr, ptr %466, align 8, !tbaa !14
  %468 = getelementptr inbounds %struct.control_flow_graph, ptr %467, i64 0, i32 1
  %469 = load ptr, ptr %468, align 8, !tbaa !23
  %470 = getelementptr inbounds %struct.basic_block_def, ptr %469, i64 0, i32 5
  %471 = load ptr, ptr %470, align 8, !tbaa !55
  %472 = load ptr, ptr %467, align 8, !tbaa !19
  %473 = icmp eq ptr %471, %472
  %474 = getelementptr inbounds [4 x ptr], ptr %2, i64 0, i64 %463
  %475 = load ptr, ptr %474, align 8, !tbaa !6
  br i1 %473, label %529, label %487

476:                                              ; preds = %526
  %477 = load ptr, ptr @cfun, align 8, !tbaa !6
  br label %478

478:                                              ; preds = %476, %487
  %479 = phi ptr [ %488, %487 ], [ %477, %476 ]
  %480 = phi i8 [ %490, %487 ], [ %527, %476 ]
  %481 = getelementptr inbounds %struct.basic_block_def, ptr %489, i64 0, i32 5
  %482 = load ptr, ptr %481, align 8, !tbaa !55
  %483 = getelementptr inbounds %struct.function, ptr %479, i64 0, i32 1
  %484 = load ptr, ptr %483, align 8, !tbaa !14
  %485 = load ptr, ptr %484, align 8, !tbaa !19
  %486 = icmp eq ptr %482, %485
  br i1 %486, label %529, label %487, !llvm.loop !59

487:                                              ; preds = %462, %478
  %488 = phi ptr [ %479, %478 ], [ %465, %462 ]
  %489 = phi ptr [ %482, %478 ], [ %471, %462 ]
  %490 = phi i8 [ %480, %478 ], [ %464, %462 ]
  %491 = getelementptr inbounds %struct.basic_block_def, ptr %489, i64 0, i32 9
  %492 = load i32, ptr %491, align 8, !tbaa !34
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds %struct.bb_info, ptr %475, i64 %493
  %495 = load ptr, ptr %494, align 8, !tbaa !43
  %496 = icmp eq ptr %495, null
  br i1 %496, label %478, label %497

497:                                              ; preds = %487, %526
  %498 = phi ptr [ %501, %526 ], [ %495, %487 ]
  %499 = phi i8 [ %527, %526 ], [ %490, %487 ]
  %500 = getelementptr inbounds %struct.seginfo, ptr %498, i64 0, i32 3
  %501 = load ptr, ptr %500, align 8, !tbaa !60
  %502 = load i32, ptr %498, align 8, !tbaa !44
  %503 = icmp eq i32 %502, 5
  br i1 %503, label %526, label %504

504:                                              ; preds = %497
  call void @start_sequence() #13
  %505 = load i32, ptr %498, align 8, !tbaa !44
  %506 = and i32 %505, -2
  %507 = icmp eq i32 %506, 4
  br i1 %507, label %509, label %508

508:                                              ; preds = %504
  call void @emit_i387_cw_initialization(i32 noundef %505) #13
  br label %509

509:                                              ; preds = %504, %508
  %510 = call ptr @get_insns() #13
  call void @end_sequence() #13
  %511 = icmp eq ptr %510, null
  br i1 %511, label %526, label %512

512:                                              ; preds = %509
  %513 = getelementptr inbounds %struct.seginfo, ptr %498, i64 0, i32 1
  %514 = load ptr, ptr %513, align 8, !tbaa !61
  %515 = load i32, ptr %514, align 8
  %516 = and i32 %515, 65535
  %517 = icmp eq i32 %516, 13
  br i1 %517, label %518, label %524

518:                                              ; preds = %512
  %519 = getelementptr inbounds %struct.rtx_def, ptr %514, i64 1
  %520 = load i32, ptr %519, align 8, !tbaa !31
  %521 = icmp eq i32 %520, 10
  br i1 %521, label %522, label %524

522:                                              ; preds = %518
  %523 = call ptr @emit_insn_after(ptr noundef nonnull %510, ptr noundef nonnull %514) #13
  br label %526

524:                                              ; preds = %518, %512
  %525 = call ptr @emit_insn_before(ptr noundef nonnull %510, ptr noundef nonnull %514) #13
  br label %526

526:                                              ; preds = %509, %524, %522, %497
  %527 = phi i8 [ %499, %497 ], [ 1, %522 ], [ 1, %524 ], [ %499, %509 ]
  call void @free(ptr noundef nonnull %498) #11
  %528 = icmp eq ptr %501, null
  br i1 %528, label %476, label %497, !llvm.loop !62

529:                                              ; preds = %478, %462
  %530 = phi i8 [ %464, %462 ], [ %480, %478 ]
  call void @free(ptr noundef %475) #11
  %531 = add nsw i64 %463, -1
  %532 = icmp sgt i64 %463, 0
  br i1 %532, label %462, label %533, !llvm.loop !63

533:                                              ; preds = %529, %250
  call void @free(ptr noundef %244) #11
  %534 = load ptr, ptr @antic, align 8, !tbaa !6
  call void @free(ptr noundef %534) #11
  %535 = load ptr, ptr @transp, align 8, !tbaa !6
  call void @free(ptr noundef %535) #11
  %536 = load ptr, ptr @comp, align 8, !tbaa !6
  call void @free(ptr noundef %536) #11
  br i1 %251, label %537, label %538

537:                                              ; preds = %533
  call void @commit_edge_insertions() #13
  br label %538

538:                                              ; preds = %533, %537, %40
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @df_analyze() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @sbitmap_vector_alloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @sbitmap_vector_ones(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @reg_set_to_hard_reg_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @df_get_live_in(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #0 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #1 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #11, !range !27
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #11
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !6
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #11
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #11
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.2) #13
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !64
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !64
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @new_seginfo(i32 noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) unnamed_addr #1 {
  %5 = tail call ptr @xmalloc(i64 noundef 40) #13
  store i32 %0, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.seginfo, ptr %5, i64 0, i32 1
  store ptr %1, ptr %6, align 8, !tbaa !61
  %7 = getelementptr inbounds %struct.seginfo, ptr %5, i64 0, i32 2
  store i32 %2, ptr %7, align 8, !tbaa !66
  %8 = getelementptr inbounds %struct.seginfo, ptr %5, i64 0, i32 3
  store ptr null, ptr %8, align 8, !tbaa !60
  %9 = getelementptr inbounds %struct.seginfo, ptr %5, i64 0, i32 4
  store i64 %3, ptr %9, align 8, !tbaa !67
  ret ptr %5
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @add_seginfo(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #4 {
  %3 = load ptr, ptr %0, align 8, !tbaa !43
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %8, %5 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.seginfo, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !60
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !68

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.seginfo, ptr %6, i64 0, i32 3
  br label %12

12:                                               ; preds = %2, %10
  %13 = phi ptr [ %11, %10 ], [ %0, %2 ]
  store ptr %1, ptr %13, align 8, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @RESET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = load ptr, ptr %0, align 8, !tbaa !69
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
  %15 = load i64, ptr %14, align 8, !tbaa !24
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !31
  %24 = add i8 %23, -1
  store i8 %24, ptr %22, align 1, !tbaa !31
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = xor i64 %27, -1
  %29 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %30 = load i64, ptr %29, align 8, !tbaa !24
  %31 = and i64 %30, %28
  store i64 %31, ptr %29, align 8, !tbaa !24
  ret void
}

; Function Attrs: optsize
declare i32 @ix86_mode_needed(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @reg_dies(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #6 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 37
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #11
  %8 = icmp slt i32 %7, 53
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = lshr i32 %3, 16
  %11 = and i32 %10, 255
  tail call fastcc void @remove_from_hard_reg_set(ptr noundef %1, i32 noundef %11, i32 noundef %7) #11
  br label %12

12:                                               ; preds = %6, %9, %2
  ret void
}

; Function Attrs: optsize
declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @reg_becomes_live(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture noundef %2) #6 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 39
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !31
  %10 = load i32, ptr %9, align 8
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ %10, %7 ], [ %4, %3 ]
  %13 = phi ptr [ %9, %7 ], [ %0, %3 ]
  %14 = and i32 %12, 65535
  %15 = icmp eq i32 %14, 37
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %13) #11
  %18 = icmp slt i32 %17, 53
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = lshr i32 %12, 16
  %21 = and i32 %20, 255
  tail call fastcc void @add_to_hard_reg_set(ptr noundef %2, i32 noundef %21, i32 noundef %17) #11
  br label %22

22:                                               ; preds = %16, %19, %11
  ret void
}

; Function Attrs: optsize
declare void @sbitmap_vector_zero(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = load ptr, ptr %0, align 8, !tbaa !69
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
  %15 = load i64, ptr %14, align 8, !tbaa !24
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !31
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !31
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !24
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !24
  ret void
}

; Function Attrs: optsize
declare void @sbitmap_not(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @pre_edge_lcm(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @df_get_live_out(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @start_sequence() local_unnamed_addr #3

; Function Attrs: optsize
declare void @emit_i387_cw_initialization(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @get_insns() local_unnamed_addr #3

; Function Attrs: optsize
declare void @end_sequence() local_unnamed_addr #3

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @insert_insn_on_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_preds_opaque(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  %5 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #11
  store i32 0, ptr %4, align 8, !tbaa.struct !25
  %6 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %5, ptr %6, align 8, !tbaa.struct !26
  %7 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %5, ptr noundef nonnull %3) #11, !range !27
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %38, label %9

9:                                                ; preds = %2
  %10 = lshr i32 %1, 6
  %11 = zext nneg i32 %10 to i64
  %12 = and i32 %1, 63
  %13 = zext nneg i32 %12 to i64
  %14 = shl nuw i64 1, %13
  br label %15

15:                                               ; preds = %9, %33
  %16 = load ptr, ptr %3, align 8, !tbaa !6
  %17 = load ptr, ptr %16, align 8, !tbaa !53
  %18 = getelementptr inbounds %struct.edge_def, ptr %16, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !52
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %15
  %22 = load ptr, ptr @transp, align 8, !tbaa !6
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 9
  %24 = load i32, ptr %23, align 8, !tbaa !34
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds ptr, ptr %22, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %27, i64 0, i32 3, i64 %11
  %29 = load i64, ptr %28, align 8, !tbaa !24
  %30 = and i64 %29, %14
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %21
  tail call fastcc void @RESET_BIT(ptr noundef nonnull %27, i32 noundef %1) #11
  tail call fastcc void @make_preds_opaque(ptr noundef nonnull %17, i32 noundef %1) #11
  br label %33

33:                                               ; preds = %15, %21, %32
  call fastcc void @ei_next(ptr noundef nonnull %4) #11
  %34 = load i32, ptr %4, align 8
  %35 = load ptr, ptr %6, align 8
  %36 = call fastcc zeroext i8 @ei_cond(i32 %34, ptr %35, ptr noundef nonnull %3) #11, !range !27
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %15, !llvm.loop !71

38:                                               ; preds = %33, %2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @clear_aux_for_edges() local_unnamed_addr #3

; Function Attrs: optsize
declare void @free_edge_list(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @emit_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @emit_insn_before(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @commit_edge_insertions() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #1 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #11
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #11
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #1 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #11
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #11
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !72
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 687, ptr noundef nonnull @.str.2) #13
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !6
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !31
  ret i32 %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @remove_from_hard_reg_set(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 {
  %4 = tail call fastcc i32 @end_hard_regno(i32 noundef %1, i32 noundef %2) #11, !range !74
  %5 = add i32 %2, 1
  %6 = tail call i32 @llvm.umax.i32(i32 %4, i32 %5)
  %7 = sub i32 %6, %2
  %8 = load i64, ptr %0, align 8, !tbaa !24
  %9 = add i32 %7, 1
  %10 = and i32 %9, -2
  %11 = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %8, i64 0
  %12 = insertelement <2 x i32> poison, i32 %2, i64 0
  %13 = shufflevector <2 x i32> %12, <2 x i32> poison, <2 x i32> zeroinitializer
  %14 = add <2 x i32> %13, <i32 0, i32 1>
  br label %15

15:                                               ; preds = %15, %3
  %16 = phi i32 [ 0, %3 ], [ %23, %15 ]
  %17 = phi <2 x i64> [ %11, %3 ], [ %22, %15 ]
  %18 = phi <2 x i32> [ %14, %3 ], [ %24, %15 ]
  %19 = zext nneg <2 x i32> %18 to <2 x i64>
  %20 = shl nuw <2 x i64> <i64 1, i64 1>, %19
  %21 = xor <2 x i64> %20, <i64 -1, i64 -1>
  %22 = and <2 x i64> %17, %21
  %23 = add i32 %16, 2
  %24 = add <2 x i32> %18, <i32 2, i32 2>
  %25 = icmp eq i32 %23, %10
  br i1 %25, label %26, label %15, !llvm.loop !75

26:                                               ; preds = %15
  %27 = add i32 %7, -1
  %28 = insertelement <2 x i32> poison, i32 %27, i64 0
  %29 = shufflevector <2 x i32> %28, <2 x i32> poison, <2 x i32> zeroinitializer
  %30 = insertelement <2 x i32> poison, i32 %16, i64 0
  %31 = shufflevector <2 x i32> %30, <2 x i32> poison, <2 x i32> zeroinitializer
  %32 = or disjoint <2 x i32> %31, <i32 0, i32 1>
  %33 = icmp ugt <2 x i32> %32, %29
  %34 = select <2 x i1> %33, <2 x i64> %17, <2 x i64> %22
  %35 = tail call i64 @llvm.vector.reduce.and.v2i64(<2 x i64> %34)
  store i64 %35, ptr %0, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i32 @end_hard_regno(i32 noundef %0, i32 noundef %1) unnamed_addr #9 {
  %3 = zext i32 %1 to i64
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %3, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !31
  %7 = zext i8 %6 to i32
  %8 = add nsw i32 %7, %1
  ret i32 %8
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @add_to_hard_reg_set(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 {
  %4 = tail call fastcc i32 @end_hard_regno(i32 noundef %1, i32 noundef %2) #11, !range !74
  %5 = load i64, ptr %0, align 8, !tbaa !24
  br label %6

6:                                                ; preds = %6, %3
  %7 = phi i64 [ %5, %3 ], [ %11, %6 ]
  %8 = phi i32 [ %2, %3 ], [ %12, %6 ]
  %9 = zext nneg i32 %8 to i64
  %10 = shl nuw i64 1, %9
  %11 = or i64 %10, %7
  %12 = add i32 %8, 1
  %13 = icmp ult i32 %12, %4
  br i1 %13, label %6, label %14, !llvm.loop !78

14:                                               ; preds = %6
  store i64 %11, ptr %0, align 8, !tbaa !24
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.and.v2i64(<2 x i64>) #10

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { optsize }
attributes #12 = { nounwind }
attributes #13 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !7, i64 80}
!11 = !{!"function", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !12, i64 104, !12, i64 108, !12, i64 112, !12, i64 116, !12, i64 120, !12, i64 124, !7, i64 128, !12, i64 136, !12, i64 137, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139}
!12 = !{!"int", !8, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!11, !7, i64 8}
!15 = !{!16, !12, i64 32}
!16 = !{!"control_flow_graph", !7, i64 0, !7, i64 8, !7, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !7, i64 40, !12, i64 48, !8, i64 52, !8, i64 60, !12, i64 68, !12, i64 72}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!16, !7, i64 0}
!20 = !{!21, !7, i64 56}
!21 = !{!"basic_block_def", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !7, i64 48, !7, i64 56, !8, i64 64, !22, i64 72, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96}
!22 = !{!"long", !8, i64 0}
!23 = !{!16, !7, i64 8}
!24 = !{!22, !22, i64 0}
!25 = !{i64 0, i64 4, !13, i64 8, i64 8, !6}
!26 = !{i64 0, i64 8, !6}
!27 = !{i8 0, i8 2}
!28 = !{!29, !12, i64 48}
!29 = !{!"edge_def", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 24, !7, i64 32, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !22, i64 56}
!30 = distinct !{!30, !18}
!31 = !{!8, !8, i64 0}
!32 = !{!33, !7, i64 0}
!33 = !{!"rtl_bb_info", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !12, i64 32}
!34 = !{!21, !12, i64 80}
!35 = !{!36, !12, i64 8}
!36 = !{!"bb_info", !7, i64 0, !12, i64 8}
!37 = !{!33, !7, i64 8}
!38 = distinct !{!38, !18}
!39 = distinct !{!39, !18}
!40 = distinct !{!40, !18}
!41 = distinct !{!41, !18}
!42 = distinct !{!42, !18}
!43 = !{!36, !7, i64 0}
!44 = !{!45, !12, i64 0}
!45 = !{!"seginfo", !12, i64 0, !7, i64 8, !12, i64 16, !7, i64 24, !22, i64 32}
!46 = distinct !{!46, !18}
!47 = distinct !{!47, !18}
!48 = distinct !{!48, !18}
!49 = !{!50, !12, i64 4}
!50 = !{!"edge_list", !12, i64 0, !12, i64 4, !7, i64 8}
!51 = !{!50, !7, i64 8}
!52 = !{!29, !7, i64 24}
!53 = !{!29, !7, i64 0}
!54 = distinct !{!54, !18}
!55 = !{!21, !7, i64 48}
!56 = distinct !{!56, !18}
!57 = distinct !{!57, !18}
!58 = distinct !{!58, !18}
!59 = distinct !{!59, !18}
!60 = !{!45, !7, i64 24}
!61 = !{!45, !7, i64 8}
!62 = distinct !{!62, !18}
!63 = distinct !{!63, !18}
!64 = !{!65, !12, i64 0}
!65 = !{!"", !12, i64 0, !7, i64 8}
!66 = !{!45, !12, i64 16}
!67 = !{!45, !22, i64 32}
!68 = distinct !{!68, !18}
!69 = !{!70, !7, i64 0}
!70 = !{!"simple_bitmap_def", !7, i64 0, !12, i64 8, !12, i64 12, !8, i64 16}
!71 = distinct !{!71, !18}
!72 = !{!73, !12, i64 0}
!73 = !{!"VEC_edge_base", !12, i64 0, !12, i64 4, !8, i64 8}
!74 = !{i32 -2147483648, i32 308}
!75 = distinct !{!75, !18, !76, !77}
!76 = !{!"llvm.loop.isvectorized", i32 1}
!77 = !{!"llvm.loop.unroll.runtime.disable"}
!78 = distinct !{!78, !18}
