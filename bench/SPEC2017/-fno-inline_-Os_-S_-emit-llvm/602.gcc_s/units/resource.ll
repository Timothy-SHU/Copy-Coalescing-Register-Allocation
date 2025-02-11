; ModuleID = 'resource.c'
source_filename = "resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, ptr, ptr, ptr }
%struct.emit_status = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.varasm_status = type { ptr, i32 }
%struct.incoming_args = type { i32, i32, i32, ptr, %struct.ix86_args, ptr }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.function_subsections = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtl_eh = type { ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }
%struct.resources = type { i8, i8, i8, i8, i64 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.target_info = type { i32, ptr, i64, i32, i32 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.df_lr_bb_info = type { ptr, ptr, ptr, ptr }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.dataflow = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i8, i8, i8 }

@.str = private unnamed_addr constant [11 x i8] c"resource.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@global_regs = external local_unnamed_addr global [53 x i8], align 16
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@regs_invalidated_by_call = external local_unnamed_addr global i64, align 8
@end_of_function_needs = internal global %struct.resources zeroinitializer, align 8
@target_hash_table = internal unnamed_addr global ptr null, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@compiler_params = external local_unnamed_addr global ptr, align 8
@bb_ticks = internal unnamed_addr global ptr null, align 8
@pending_dead_regs = internal global i64 0, align 8
@current_live_regs = internal global i64 0, align 8
@start_of_epilogue_needs = internal unnamed_addr global %struct.resources zeroinitializer, align 8
@df = external local_unnamed_addr global ptr, align 8
@current_function_sp_is_unchanging = external local_unnamed_addr global i32, align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mark_referenced_resources(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.resources, ptr %1, i64 0, i32 4
  %5 = getelementptr inbounds %struct.resources, ptr %1, i64 0, i32 1
  %6 = getelementptr inbounds %struct.resources, ptr %1, i64 0, i32 2
  br label %7

7:                                                ; preds = %85, %3
  %8 = phi ptr [ %0, %3 ], [ %86, %85 ]
  %9 = phi i8 [ %2, %3 ], [ 0, %85 ]
  %10 = icmp eq i8 %9, 0
  br label %11

11:                                               ; preds = %7, %226
  %12 = phi ptr [ %228, %226 ], [ %8, %7 ]
  %13 = load i32, ptr %12, align 8
  %14 = trunc i32 %13 to i16
  switch i16 %14, label %229 [
    i16 35, label %266
    i16 30, label %266
    i16 32, label %266
    i16 31, label %266
    i16 33, label %266
    i16 36, label %266
    i16 45, label %266
    i16 44, label %266
    i16 39, label %15
    i16 37, label %59
    i16 43, label %69
    i16 46, label %87
    i16 19, label %89
    i16 29, label %89
    i16 16, label %89
    i16 17, label %90
    i16 26, label %110
    i16 23, label %116
    i16 25, label %266
    i16 10, label %134
    i16 8, label %226
    i16 9, label %226
  ]

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !6
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 37
  br i1 %20, label %21, label %85

21:                                               ; preds = %15
  %22 = tail call i32 @subreg_regno(ptr noundef nonnull %12) #13
  %23 = tail call i32 @subreg_nregs(ptr noundef nonnull %12) #13
  %24 = add i32 %23, %22
  %25 = icmp ult i32 %24, 54
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 235, ptr noundef nonnull @.str.1) #13
  br label %27

27:                                               ; preds = %21, %26
  %28 = icmp ult i32 %22, %24
  br i1 %28, label %29, label %266

29:                                               ; preds = %27
  %30 = zext i32 %24 to i64
  %31 = zext i32 %22 to i64
  %32 = sub nsw i64 %30, %31
  %33 = load i64, ptr %4, align 8, !tbaa !9
  %34 = add nsw i64 %32, 1
  %35 = and i64 %34, -2
  %36 = add nsw i64 %32, -1
  %37 = insertelement <2 x i64> poison, i64 %36, i64 0
  %38 = shufflevector <2 x i64> %37, <2 x i64> poison, <2 x i32> zeroinitializer
  %39 = insertelement <2 x i64> poison, i64 %31, i64 0
  %40 = shufflevector <2 x i64> %39, <2 x i64> poison, <2 x i32> zeroinitializer
  %41 = add nuw nsw <2 x i64> %40, <i64 0, i64 1>
  %42 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %33, i64 0
  br label %43

43:                                               ; preds = %43, %29
  %44 = phi i64 [ 0, %29 ], [ %49, %43 ]
  %45 = phi <2 x i64> [ %41, %29 ], [ %50, %43 ]
  %46 = phi <2 x i64> [ %42, %29 ], [ %48, %43 ]
  %47 = shl nuw <2 x i64> <i64 1, i64 1>, %45
  %48 = or <2 x i64> %46, %47
  %49 = add i64 %44, 2
  %50 = add <2 x i64> %45, <i64 2, i64 2>
  %51 = icmp eq i64 %49, %35
  br i1 %51, label %52, label %43, !llvm.loop !12

52:                                               ; preds = %43
  %53 = insertelement <2 x i64> poison, i64 %44, i64 0
  %54 = shufflevector <2 x i64> %53, <2 x i64> poison, <2 x i32> zeroinitializer
  %55 = or disjoint <2 x i64> %54, <i64 0, i64 1>
  %56 = icmp ugt <2 x i64> %55, %38
  %57 = select <2 x i1> %56, <2 x i64> %46, <2 x i64> %48
  %58 = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %57)
  store i64 %58, ptr %4, align 8, !tbaa !9
  br label %266

59:                                               ; preds = %11
  %60 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %12) #14
  %61 = icmp ult i32 %60, 53
  br i1 %61, label %64, label %62

62:                                               ; preds = %59
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 242, ptr noundef nonnull @.str.1) #13
  %63 = load i32, ptr %12, align 8
  br label %64

64:                                               ; preds = %59, %62
  %65 = phi i32 [ %13, %59 ], [ %63, %62 ]
  %66 = lshr i32 %65, 16
  %67 = and i32 %66, 255
  %68 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %12) #14
  tail call fastcc void @add_to_hard_reg_set(ptr noundef nonnull %4, i32 noundef %67, i32 noundef %68) #14
  br label %266

69:                                               ; preds = %11
  %70 = and i32 %13, 67108864
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  store i8 1, ptr %5, align 1, !tbaa !16
  br label %74

73:                                               ; preds = %69
  store i8 1, ptr %1, align 8, !tbaa !17
  br label %74

74:                                               ; preds = %73, %72
  %75 = load i32, ptr %12, align 8
  %76 = lshr i32 %75, 27
  %77 = load i8, ptr %6, align 2, !tbaa !18
  %78 = trunc i32 %76 to i8
  %79 = and i8 %78, 1
  %80 = or i8 %79, %77
  store i8 %80, ptr %6, align 2, !tbaa !18
  %81 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  br label %82

82:                                               ; preds = %132, %110, %74
  %83 = phi ptr [ %81, %74 ], [ %115, %110 ], [ %133, %132 ]
  %84 = load ptr, ptr %83, align 8, !tbaa !6
  br label %85

85:                                               ; preds = %82, %15
  %86 = phi ptr [ %17, %15 ], [ %84, %82 ]
  br label %7

87:                                               ; preds = %11
  %88 = getelementptr inbounds %struct.resources, ptr %1, i64 0, i32 3
  store i8 1, ptr %88, align 1, !tbaa !19
  br label %266

89:                                               ; preds = %11, %11, %11
  store i8 1, ptr %6, align 2, !tbaa !18
  br label %229

90:                                               ; preds = %11
  %91 = lshr i32 %13, 27
  %92 = load i8, ptr %6, align 2, !tbaa !18
  %93 = trunc i32 %91 to i8
  %94 = and i8 %93, 1
  %95 = or i8 %92, %94
  store i8 %95, ptr %6, align 2, !tbaa !18
  %96 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !6
  %98 = load i32, ptr %97, align 8, !tbaa !20
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %266

100:                                              ; preds = %90, %100
  %101 = phi i64 [ %105, %100 ], [ 0, %90 ]
  %102 = phi ptr [ %106, %100 ], [ %97, %90 ]
  %103 = getelementptr inbounds %struct.rtvec_def, ptr %102, i64 0, i32 1, i64 %101
  %104 = load ptr, ptr %103, align 8, !tbaa !23
  tail call void @mark_referenced_resources(ptr noundef %104, ptr noundef %1, i8 noundef zeroext 0) #14
  %105 = add nuw nsw i64 %101, 1
  %106 = load ptr, ptr %96, align 8, !tbaa !6
  %107 = load i32, ptr %106, align 8, !tbaa !20
  %108 = sext i32 %107 to i64
  %109 = icmp slt i64 %105, %108
  br i1 %109, label %100, label %266, !llvm.loop !25

110:                                              ; preds = %11
  %111 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !6
  %113 = getelementptr inbounds %struct.rtx_def, ptr %112, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !6
  tail call void @mark_referenced_resources(ptr noundef %114, ptr noundef %1, i8 noundef zeroext 0) #14
  %115 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %82

116:                                              ; preds = %11
  %117 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %118 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  %119 = load ptr, ptr %118, align 8, !tbaa !6
  tail call void @mark_referenced_resources(ptr noundef %119, ptr noundef %1, i8 noundef zeroext 0) #14
  %120 = load ptr, ptr %117, align 8, !tbaa !6
  %121 = load i32, ptr %120, align 8
  %122 = trunc i32 %121 to i16
  switch i16 %122, label %127 [
    i16 120, label %123
    i16 40, label %123
    i16 39, label %124
  ]

123:                                              ; preds = %116, %116
  tail call void @mark_referenced_resources(ptr noundef nonnull %120, ptr noundef %1, i8 noundef zeroext 0) #14
  br label %127

124:                                              ; preds = %116
  %125 = getelementptr inbounds %struct.rtx_def, ptr %120, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !6
  br label %127

127:                                              ; preds = %116, %124, %123
  %128 = phi ptr [ %120, %123 ], [ %126, %124 ], [ %120, %116 ]
  %129 = load i32, ptr %128, align 8
  %130 = and i32 %129, 65535
  %131 = icmp eq i32 %130, 43
  br i1 %131, label %132, label %266

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.rtx_def, ptr %128, i64 0, i32 1
  br label %82

134:                                              ; preds = %11
  br i1 %10, label %226, label %135

135:                                              ; preds = %134
  %136 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  %137 = load ptr, ptr %136, align 8, !tbaa !6
  %138 = getelementptr inbounds %struct.rtx_def, ptr %137, i64 0, i32 1, i32 0, i32 0, i64 2
  %139 = load ptr, ptr %138, align 8, !tbaa !6
  %140 = icmp eq ptr %139, %12
  br i1 %140, label %151, label %141

141:                                              ; preds = %135
  %142 = getelementptr inbounds %struct.rtx_def, ptr %139, i64 1
  %143 = load ptr, ptr %142, align 8, !tbaa !6
  %144 = getelementptr inbounds %struct.rtx_def, ptr %143, i64 0, i32 1
  %145 = load ptr, ptr %144, align 8, !tbaa !6
  %146 = load i32, ptr %145, align 8, !tbaa !20
  %147 = load i32, ptr %143, align 8
  %148 = and i32 %147, 65535
  %149 = icmp eq i32 %148, 5
  br i1 %149, label %151, label %150

150:                                              ; preds = %141
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 329, ptr noundef nonnull @.str.1) #13
  br label %151

151:                                              ; preds = %150, %141, %135
  %152 = phi ptr [ %143, %141 ], [ %143, %150 ], [ null, %135 ]
  %153 = phi i32 [ %146, %141 ], [ %146, %150 ], [ 0, %135 ]
  store i8 1, ptr %1, align 8, !tbaa !17
  %154 = load i64, ptr %4, align 8, !tbaa !9
  %155 = or i64 %154, 128
  store i64 %155, ptr %4, align 8, !tbaa !9
  %156 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !26
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %151
  %159 = or i64 %154, 1048768
  store i64 %159, ptr %4, align 8, !tbaa !9
  br label %160

160:                                              ; preds = %158, %151
  %161 = phi i64 [ %155, %151 ], [ %159, %158 ]
  br label %162

162:                                              ; preds = %160, %171
  %163 = phi i64 [ %172, %171 ], [ %161, %160 ]
  %164 = phi i64 [ %173, %171 ], [ 0, %160 ]
  %165 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %164
  %166 = load i8, ptr %165, align 1, !tbaa !6
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %162
  %169 = shl nuw nsw i64 1, %164
  %170 = or i64 %163, %169
  store i64 %170, ptr %4, align 8, !tbaa !9
  br label %171

171:                                              ; preds = %162, %168
  %172 = phi i64 [ %163, %162 ], [ %170, %168 ]
  %173 = add nuw nsw i64 %164, 1
  %174 = icmp eq i64 %173, 53
  br i1 %174, label %175, label %162, !llvm.loop !35

175:                                              ; preds = %171
  %176 = tail call ptr @find_reg_note(ptr noundef nonnull %12, i32 noundef 30, ptr noundef null) #13
  %177 = icmp eq ptr %176, null
  br i1 %177, label %179, label %178

178:                                              ; preds = %175
  store i64 -1, ptr %4, align 8, !tbaa !9
  br label %179

179:                                              ; preds = %178, %175
  %180 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 1, i32 1, i32 0, i32 0, i64 2
  %181 = load ptr, ptr %180, align 8, !tbaa !6
  %182 = icmp eq ptr %181, null
  br i1 %182, label %226, label %183

183:                                              ; preds = %179
  %184 = icmp sgt i32 %153, 1
  %185 = getelementptr inbounds %struct.rtx_def, ptr %152, i64 0, i32 1
  %186 = zext nneg i32 %153 to i64
  br label %187

187:                                              ; preds = %183, %222
  %188 = phi ptr [ %181, %183 ], [ %224, %222 ]
  %189 = getelementptr inbounds %struct.rtx_def, ptr %188, i64 0, i32 1
  %190 = load ptr, ptr %189, align 8, !tbaa !6
  %191 = load i32, ptr %190, align 8
  %192 = and i32 %191, 65535
  %193 = icmp eq i32 %192, 24
  br i1 %193, label %194, label %222

194:                                              ; preds = %187
  br i1 %184, label %195, label %218

195:                                              ; preds = %194, %213
  %196 = phi i64 [ %214, %213 ], [ 1, %194 ]
  %197 = load ptr, ptr %185, align 8, !tbaa !6
  %198 = getelementptr inbounds %struct.rtvec_def, ptr %197, i64 0, i32 1, i64 %196
  %199 = load ptr, ptr %198, align 8, !tbaa !23
  %200 = getelementptr inbounds %struct.rtx_def, ptr %199, i64 1
  %201 = load ptr, ptr %200, align 8, !tbaa !6
  %202 = load i32, ptr %201, align 8
  %203 = and i32 %202, 65535
  %204 = icmp eq i32 %203, 23
  br i1 %204, label %205, label %213

205:                                              ; preds = %195
  %206 = getelementptr inbounds %struct.rtx_def, ptr %201, i64 0, i32 1
  %207 = load ptr, ptr %206, align 8, !tbaa !6
  %208 = load ptr, ptr %189, align 8, !tbaa !6
  %209 = getelementptr inbounds %struct.rtx_def, ptr %208, i64 0, i32 1
  %210 = load ptr, ptr %209, align 8, !tbaa !6
  %211 = tail call i32 @rtx_equal_p(ptr noundef %207, ptr noundef %210) #13
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %222

213:                                              ; preds = %195, %205
  %214 = add nuw nsw i64 %196, 1
  %215 = icmp eq i64 %214, %186
  br i1 %215, label %216, label %195, !llvm.loop !36

216:                                              ; preds = %213
  %217 = load ptr, ptr %189, align 8, !tbaa !6
  br label %218

218:                                              ; preds = %216, %194
  %219 = phi ptr [ %217, %216 ], [ %190, %194 ]
  %220 = getelementptr inbounds %struct.rtx_def, ptr %219, i64 0, i32 1
  %221 = load ptr, ptr %220, align 8, !tbaa !6
  tail call void @mark_referenced_resources(ptr noundef %221, ptr noundef nonnull %1, i8 noundef zeroext 0) #14
  br label %222

222:                                              ; preds = %205, %187, %218
  %223 = getelementptr inbounds %struct.rtx_def, ptr %188, i64 0, i32 1, i32 0, i32 0, i64 1
  %224 = load ptr, ptr %223, align 8, !tbaa !6
  %225 = icmp eq ptr %224, null
  br i1 %225, label %226, label %187, !llvm.loop !37

226:                                              ; preds = %222, %179, %134, %11, %11
  %227 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 1
  %228 = load ptr, ptr %227, align 8, !tbaa !6
  br label %11

229:                                              ; preds = %11, %89
  %230 = and i32 %13, 65535
  %231 = zext nneg i32 %230 to i64
  %232 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %231
  %233 = load i8, ptr %232, align 1, !tbaa !6
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %266, label %235

235:                                              ; preds = %229
  %236 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %231
  %237 = load ptr, ptr %236, align 8, !tbaa !23
  %238 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %239 = zext i8 %233 to i64
  br label %240

240:                                              ; preds = %235, %263
  %241 = phi i64 [ 0, %235 ], [ %264, %263 ]
  %242 = phi ptr [ %237, %235 ], [ %243, %263 ]
  %243 = getelementptr inbounds i8, ptr %242, i64 1
  %244 = load i8, ptr %242, align 1, !tbaa !6
  switch i8 %244, label %263 [
    i8 101, label %250
    i8 69, label %245
  ]

245:                                              ; preds = %240
  %246 = getelementptr inbounds [1 x %union.rtunion_def], ptr %238, i64 0, i64 %241
  %247 = load ptr, ptr %246, align 8, !tbaa !6
  %248 = load i32, ptr %247, align 8, !tbaa !20
  %249 = icmp sgt i32 %248, 0
  br i1 %249, label %253, label %263

250:                                              ; preds = %240
  %251 = getelementptr inbounds [1 x %union.rtunion_def], ptr %238, i64 0, i64 %241
  %252 = load ptr, ptr %251, align 8, !tbaa !6
  tail call void @mark_referenced_resources(ptr noundef %252, ptr noundef %1, i8 noundef zeroext %9) #14
  br label %263

253:                                              ; preds = %245, %253
  %254 = phi i64 [ %258, %253 ], [ 0, %245 ]
  %255 = phi ptr [ %259, %253 ], [ %247, %245 ]
  %256 = getelementptr inbounds %struct.rtvec_def, ptr %255, i64 0, i32 1, i64 %254
  %257 = load ptr, ptr %256, align 8, !tbaa !23
  tail call void @mark_referenced_resources(ptr noundef %257, ptr noundef %1, i8 noundef zeroext %9) #14
  %258 = add nuw nsw i64 %254, 1
  %259 = load ptr, ptr %246, align 8, !tbaa !6
  %260 = load i32, ptr %259, align 8, !tbaa !20
  %261 = sext i32 %260 to i64
  %262 = icmp slt i64 %258, %261
  br i1 %262, label %253, label %263, !llvm.loop !38

263:                                              ; preds = %253, %245, %250, %240
  %264 = add nuw nsw i64 %241, 1
  %265 = icmp eq i64 %264, %239
  br i1 %265, label %266, label %240, !llvm.loop !39

266:                                              ; preds = %127, %11, %11, %11, %11, %11, %11, %11, %11, %11, %100, %263, %90, %27, %52, %229, %87, %64
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @subreg_regno(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @subreg_nregs(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !6
  ret i32 %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @add_to_hard_reg_set(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 {
  %4 = tail call fastcc i32 @end_hard_regno(i32 noundef %1, i32 noundef %2) #14
  %5 = load i64, ptr %0, align 8, !tbaa !40
  br label %6

6:                                                ; preds = %6, %3
  %7 = phi i64 [ %5, %3 ], [ %11, %6 ]
  %8 = phi i32 [ %2, %3 ], [ %12, %6 ]
  %9 = zext nneg i32 %8 to i64
  %10 = shl nuw i64 1, %9
  %11 = or i64 %10, %7
  %12 = add i32 %8, 1
  %13 = icmp ult i32 %12, %4
  br i1 %13, label %6, label %14, !llvm.loop !41

14:                                               ; preds = %6
  store i64 %11, ptr %0, align 8, !tbaa !40
  ret void
}

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i32 @end_hard_regno(i32 noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext i32 %1 to i64
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %3, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !6
  %7 = zext i8 %6 to i32
  %8 = add i32 %7, %1
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mark_set_resources(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.resources, ptr %1, i64 0, i32 3
  %6 = getelementptr inbounds %struct.resources, ptr %1, i64 0, i32 4
  %7 = getelementptr inbounds %struct.resources, ptr %1, i64 0, i32 1
  %8 = getelementptr inbounds %struct.resources, ptr %1, i64 0, i32 2
  br label %9

9:                                                ; preds = %75, %4
  %10 = phi ptr [ %0, %4 ], [ %78, %75 ]
  %11 = phi i32 [ %2, %4 ], [ %77, %75 ]
  %12 = phi i32 [ %3, %4 ], [ 0, %75 ]
  %13 = icmp eq i32 %12, 1
  %14 = icmp eq i32 %11, 0
  %15 = load i32, ptr %10, align 8
  br label %16

16:                                               ; preds = %59, %9
  %17 = phi i32 [ %15, %9 ], [ %60, %59 ]
  %18 = phi ptr [ %10, %9 ], [ %61, %59 ]
  %19 = trunc i32 %17 to i16
  switch i16 %19, label %216 [
    i16 13, label %253
    i16 11, label %253
    i16 12, label %253
    i16 24, label %253
    i16 30, label %253
    i16 32, label %253
    i16 31, label %253
    i16 33, label %253
    i16 44, label %253
    i16 45, label %253
    i16 35, label %253
    i16 36, label %253
    i16 46, label %25
    i16 10, label %27
    i16 9, label %53
    i16 8, label %53
    i16 23, label %62
    i16 25, label %79
    i16 5, label %20
    i16 77, label %105
    i16 75, label %105
    i16 76, label %105
    i16 74, label %105
    i16 78, label %107
    i16 79, label %107
    i16 119, label %116
    i16 120, label %116
    i16 43, label %122
    i16 39, label %138
    i16 37, label %183
    i16 19, label %194
    i16 16, label %194
    i16 29, label %195
    i16 17, label %196
  ]

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !6
  %23 = load i32, ptr %22, align 8, !tbaa !20
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %81, label %253

25:                                               ; preds = %16
  br i1 %14, label %253, label %26

26:                                               ; preds = %25
  store i8 1, ptr %5, align 1, !tbaa !19
  br label %253

27:                                               ; preds = %16
  br i1 %13, label %28, label %53

28:                                               ; preds = %27
  store i8 1, ptr %1, align 8, !tbaa !17
  store i8 1, ptr %5, align 1, !tbaa !19
  %29 = load i64, ptr @regs_invalidated_by_call, align 8, !tbaa !40
  %30 = load i64, ptr %6, align 8, !tbaa !9
  %31 = or i64 %30, %29
  store i64 %31, ptr %6, align 8, !tbaa !9
  %32 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 1, i32 1, i32 0, i32 0, i64 2
  %33 = load ptr, ptr %32, align 8, !tbaa !6
  %34 = icmp eq ptr %33, null
  br i1 %34, label %49, label %35

35:                                               ; preds = %28, %45
  %36 = phi ptr [ %47, %45 ], [ %33, %28 ]
  %37 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !6
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 25
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !6
  tail call void @mark_set_resources(ptr noundef %44, ptr noundef nonnull %1, i32 noundef 1, i32 noundef 0) #14
  br label %45

45:                                               ; preds = %35, %42
  %46 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1, i32 0, i32 0, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !6
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %35, !llvm.loop !42

49:                                               ; preds = %45, %28
  %50 = tail call ptr @find_reg_note(ptr noundef nonnull %18, i32 noundef 30, ptr noundef null) #13
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  store i64 -1, ptr %6, align 8, !tbaa !9
  br label %53

53:                                               ; preds = %49, %52, %27, %16, %16
  %54 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 1
  %55 = load ptr, ptr %54, align 8, !tbaa !6
  %56 = load i32, ptr %55, align 8
  %57 = and i32 %56, 65534
  %58 = icmp eq i32 %57, 24
  br i1 %58, label %253, label %59

59:                                               ; preds = %53, %139
  %60 = phi i32 [ %56, %53 ], [ %142, %139 ]
  %61 = phi ptr [ %55, %53 ], [ %141, %139 ]
  br label %16

62:                                               ; preds = %16
  %63 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !6
  br i1 %13, label %72, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 1
  %67 = load ptr, ptr %66, align 8, !tbaa !6
  %68 = load i32, ptr %67, align 8
  %69 = and i32 %68, 65535
  %70 = icmp ne i32 %69, 26
  %71 = zext i1 %70 to i32
  br label %72

72:                                               ; preds = %65, %62
  %73 = phi i32 [ 1, %62 ], [ %71, %65 ]
  tail call void @mark_set_resources(ptr noundef %64, ptr noundef %1, i32 noundef %73, i32 noundef %12) #14
  %74 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %75

75:                                               ; preds = %72, %79, %105, %107, %116, %136
  %76 = phi ptr [ %137, %136 ], [ %121, %116 ], [ %115, %107 ], [ %106, %105 ], [ %80, %79 ], [ %74, %72 ]
  %77 = phi i32 [ 0, %136 ], [ 0, %116 ], [ 0, %107 ], [ 1, %105 ], [ 1, %79 ], [ 0, %72 ]
  %78 = load ptr, ptr %76, align 8, !tbaa !6
  br label %9

79:                                               ; preds = %16
  %80 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  br label %75

81:                                               ; preds = %20, %99
  %82 = phi i32 [ %100, %99 ], [ %23, %20 ]
  %83 = phi ptr [ %101, %99 ], [ %22, %20 ]
  %84 = phi i64 [ %102, %99 ], [ 0, %20 ]
  %85 = getelementptr inbounds %struct.rtvec_def, ptr %83, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !23
  %87 = load i32, ptr %86, align 8
  %88 = and i32 %87, 67108864
  %89 = icmp eq i32 %88, 0
  %90 = getelementptr inbounds %struct.rtvec_def, ptr %83, i64 0, i32 1, i64 %84
  %91 = load ptr, ptr %90, align 8, !tbaa !23
  br i1 %89, label %96, label %92

92:                                               ; preds = %81
  %93 = load i32, ptr %91, align 8
  %94 = and i32 %93, 268435456
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %81, %92
  tail call void @mark_set_resources(ptr noundef %91, ptr noundef %1, i32 noundef 0, i32 noundef %12) #14
  %97 = load ptr, ptr %21, align 8, !tbaa !6
  %98 = load i32, ptr %97, align 8, !tbaa !20
  br label %99

99:                                               ; preds = %92, %96
  %100 = phi i32 [ %82, %92 ], [ %98, %96 ]
  %101 = phi ptr [ %83, %92 ], [ %97, %96 ]
  %102 = add nuw nsw i64 %84, 1
  %103 = sext i32 %100 to i64
  %104 = icmp slt i64 %102, %103
  br i1 %104, label %81, label %253, !llvm.loop !43

105:                                              ; preds = %16, %16, %16, %16
  %106 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  br label %75

107:                                              ; preds = %16, %16
  %108 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !6
  tail call void @mark_set_resources(ptr noundef %109, ptr noundef %1, i32 noundef 1, i32 noundef 0) #14
  %110 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 1
  %111 = load ptr, ptr %110, align 8, !tbaa !6
  %112 = getelementptr inbounds %struct.rtx_def, ptr %111, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !6
  tail call void @mark_set_resources(ptr noundef %113, ptr noundef %1, i32 noundef 0, i32 noundef 0) #14
  %114 = load ptr, ptr %110, align 8, !tbaa !6
  %115 = getelementptr inbounds %struct.rtx_def, ptr %114, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %75

116:                                              ; preds = %16, %16
  %117 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !6
  tail call void @mark_set_resources(ptr noundef %118, ptr noundef %1, i32 noundef %11, i32 noundef 0) #14
  %119 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 1
  %120 = load ptr, ptr %119, align 8, !tbaa !6
  tail call void @mark_set_resources(ptr noundef %120, ptr noundef %1, i32 noundef 0, i32 noundef 0) #14
  %121 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 2
  br label %75

122:                                              ; preds = %16
  br i1 %14, label %136, label %123

123:                                              ; preds = %122
  store i8 1, ptr %1, align 8, !tbaa !17
  %124 = load i32, ptr %18, align 8
  %125 = lshr i32 %124, 26
  %126 = load i8, ptr %7, align 1, !tbaa !16
  %127 = trunc i32 %125 to i8
  %128 = and i8 %127, 1
  %129 = or i8 %128, %126
  store i8 %129, ptr %7, align 1, !tbaa !16
  %130 = load i32, ptr %18, align 8
  %131 = lshr i32 %130, 27
  %132 = load i8, ptr %8, align 2, !tbaa !18
  %133 = trunc i32 %131 to i8
  %134 = and i8 %133, 1
  %135 = or i8 %134, %132
  store i8 %135, ptr %8, align 2, !tbaa !18
  br label %136

136:                                              ; preds = %123, %122
  %137 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  br label %75

138:                                              ; preds = %16
  br i1 %14, label %253, label %139

139:                                              ; preds = %138
  %140 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !6
  %142 = load i32, ptr %141, align 8
  %143 = and i32 %142, 65535
  %144 = icmp eq i32 %143, 37
  br i1 %144, label %145, label %59

145:                                              ; preds = %139
  %146 = tail call i32 @subreg_regno(ptr noundef nonnull %18) #13
  %147 = tail call i32 @subreg_nregs(ptr noundef nonnull %18) #13
  %148 = add i32 %147, %146
  %149 = icmp ult i32 %148, 54
  br i1 %149, label %151, label %150

150:                                              ; preds = %145
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 758, ptr noundef nonnull @.str.1) #13
  br label %151

151:                                              ; preds = %145, %150
  %152 = icmp ult i32 %146, %148
  br i1 %152, label %153, label %253

153:                                              ; preds = %151
  %154 = zext i32 %148 to i64
  %155 = zext i32 %146 to i64
  %156 = sub nsw i64 %154, %155
  %157 = load i64, ptr %6, align 8, !tbaa !9
  %158 = add nsw i64 %156, 1
  %159 = and i64 %158, -2
  %160 = add nsw i64 %156, -1
  %161 = insertelement <2 x i64> poison, i64 %160, i64 0
  %162 = shufflevector <2 x i64> %161, <2 x i64> poison, <2 x i32> zeroinitializer
  %163 = insertelement <2 x i64> poison, i64 %155, i64 0
  %164 = shufflevector <2 x i64> %163, <2 x i64> poison, <2 x i32> zeroinitializer
  %165 = add nuw nsw <2 x i64> %164, <i64 0, i64 1>
  %166 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %157, i64 0
  br label %167

167:                                              ; preds = %167, %153
  %168 = phi i64 [ 0, %153 ], [ %173, %167 ]
  %169 = phi <2 x i64> [ %165, %153 ], [ %174, %167 ]
  %170 = phi <2 x i64> [ %166, %153 ], [ %172, %167 ]
  %171 = shl nuw <2 x i64> <i64 1, i64 1>, %169
  %172 = or <2 x i64> %170, %171
  %173 = add i64 %168, 2
  %174 = add <2 x i64> %169, <i64 2, i64 2>
  %175 = icmp eq i64 %173, %159
  br i1 %175, label %176, label %167, !llvm.loop !44

176:                                              ; preds = %167
  %177 = insertelement <2 x i64> poison, i64 %168, i64 0
  %178 = shufflevector <2 x i64> %177, <2 x i64> poison, <2 x i32> zeroinitializer
  %179 = or disjoint <2 x i64> %178, <i64 0, i64 1>
  %180 = icmp ugt <2 x i64> %179, %162
  %181 = select <2 x i1> %180, <2 x i64> %170, <2 x i64> %172
  %182 = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %181)
  store i64 %182, ptr %6, align 8, !tbaa !9
  br label %253

183:                                              ; preds = %16
  br i1 %14, label %253, label %184

184:                                              ; preds = %183
  %185 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %18) #14
  %186 = icmp ult i32 %185, 53
  br i1 %186, label %189, label %187

187:                                              ; preds = %184
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 768, ptr noundef nonnull @.str.1) #13
  %188 = load i32, ptr %18, align 8
  br label %189

189:                                              ; preds = %184, %187
  %190 = phi i32 [ %17, %184 ], [ %188, %187 ]
  %191 = lshr i32 %190, 16
  %192 = and i32 %191, 255
  %193 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %18) #14
  tail call fastcc void @add_to_hard_reg_set(ptr noundef nonnull %6, i32 noundef %192, i32 noundef %193) #14
  br label %253

194:                                              ; preds = %16, %16
  store i8 1, ptr %8, align 2, !tbaa !18
  br label %253

195:                                              ; preds = %16
  store i8 1, ptr %8, align 2, !tbaa !18
  br label %216

196:                                              ; preds = %16
  %197 = lshr i32 %17, 27
  %198 = load i8, ptr %8, align 2, !tbaa !18
  %199 = trunc i32 %197 to i8
  %200 = and i8 %199, 1
  %201 = or i8 %198, %200
  store i8 %201, ptr %8, align 2, !tbaa !18
  %202 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 1
  %203 = load ptr, ptr %202, align 8, !tbaa !6
  %204 = load i32, ptr %203, align 8, !tbaa !20
  %205 = icmp sgt i32 %204, 0
  br i1 %205, label %206, label %253

206:                                              ; preds = %196, %206
  %207 = phi i64 [ %211, %206 ], [ 0, %196 ]
  %208 = phi ptr [ %212, %206 ], [ %203, %196 ]
  %209 = getelementptr inbounds %struct.rtvec_def, ptr %208, i64 0, i32 1, i64 %207
  %210 = load ptr, ptr %209, align 8, !tbaa !23
  tail call void @mark_set_resources(ptr noundef %210, ptr noundef %1, i32 noundef %11, i32 noundef 0) #14
  %211 = add nuw nsw i64 %207, 1
  %212 = load ptr, ptr %202, align 8, !tbaa !6
  %213 = load i32, ptr %212, align 8, !tbaa !20
  %214 = sext i32 %213 to i64
  %215 = icmp slt i64 %211, %214
  br i1 %215, label %206, label %253, !llvm.loop !45

216:                                              ; preds = %16, %195
  %217 = and i32 %17, 65535
  %218 = zext nneg i32 %217 to i64
  %219 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %218
  %220 = load i8, ptr %219, align 1, !tbaa !6
  %221 = icmp eq i8 %220, 0
  br i1 %221, label %253, label %222

222:                                              ; preds = %216
  %223 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %218
  %224 = load ptr, ptr %223, align 8, !tbaa !23
  %225 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %226 = zext i8 %220 to i64
  br label %227

227:                                              ; preds = %222, %250
  %228 = phi i64 [ 0, %222 ], [ %251, %250 ]
  %229 = phi ptr [ %224, %222 ], [ %230, %250 ]
  %230 = getelementptr inbounds i8, ptr %229, i64 1
  %231 = load i8, ptr %229, align 1, !tbaa !6
  switch i8 %231, label %250 [
    i8 101, label %237
    i8 69, label %232
  ]

232:                                              ; preds = %227
  %233 = getelementptr inbounds [1 x %union.rtunion_def], ptr %225, i64 0, i64 %228
  %234 = load ptr, ptr %233, align 8, !tbaa !6
  %235 = load i32, ptr %234, align 8, !tbaa !20
  %236 = icmp sgt i32 %235, 0
  br i1 %236, label %240, label %250

237:                                              ; preds = %227
  %238 = getelementptr inbounds [1 x %union.rtunion_def], ptr %225, i64 0, i64 %228
  %239 = load ptr, ptr %238, align 8, !tbaa !6
  tail call void @mark_set_resources(ptr noundef %239, ptr noundef %1, i32 noundef %11, i32 noundef %12) #14
  br label %250

240:                                              ; preds = %232, %240
  %241 = phi i64 [ %245, %240 ], [ 0, %232 ]
  %242 = phi ptr [ %246, %240 ], [ %234, %232 ]
  %243 = getelementptr inbounds %struct.rtvec_def, ptr %242, i64 0, i32 1, i64 %241
  %244 = load ptr, ptr %243, align 8, !tbaa !23
  tail call void @mark_set_resources(ptr noundef %244, ptr noundef %1, i32 noundef %11, i32 noundef %12) #14
  %245 = add nuw nsw i64 %241, 1
  %246 = load ptr, ptr %233, align 8, !tbaa !6
  %247 = load i32, ptr %246, align 8, !tbaa !20
  %248 = sext i32 %247 to i64
  %249 = icmp slt i64 %245, %248
  br i1 %249, label %240, label %250, !llvm.loop !46

250:                                              ; preds = %240, %232, %237, %227
  %251 = add nuw nsw i64 %228, 1
  %252 = icmp eq i64 %251, %226
  br i1 %252, label %253, label %227, !llvm.loop !47

253:                                              ; preds = %138, %53, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %206, %99, %250, %196, %151, %176, %20, %216, %183, %189, %25, %26, %194
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mark_target_live_regs(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.resources, align 8
  %6 = alloca %struct.resources, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.resources, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  %9 = icmp eq ptr %1, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) @end_of_function_needs, i64 16, i1 false), !tbaa.struct !48
  br label %358

11:                                               ; preds = %3
  %12 = tail call fastcc zeroext i8 @return_insn_p(ptr noundef nonnull %1) #14, !range !49
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) @end_of_function_needs, i64 16, i1 false), !tbaa.struct !48
  tail call void @mark_referenced_resources(ptr noundef nonnull %1, ptr noundef %2, i8 noundef zeroext 0) #14
  br label %358

15:                                               ; preds = %11
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %2, align 8, !tbaa !6
  %16 = load ptr, ptr @target_hash_table, align 8, !tbaa !23
  %17 = icmp eq ptr %16, null
  br i1 %17, label %51, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !6
  %21 = srem i32 %20, 257
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds ptr, ptr %16, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !23
  %25 = icmp eq ptr %24, null
  br i1 %25, label %51, label %26

26:                                               ; preds = %18, %30
  %27 = phi ptr [ %32, %30 ], [ %24, %18 ]
  %28 = load i32, ptr %27, align 8, !tbaa !50
  %29 = icmp eq i32 %28, %20
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.target_info, ptr %27, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !23
  %33 = icmp eq ptr %32, null
  br i1 %33, label %51, label %26, !llvm.loop !52

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.target_info, ptr %27, i64 0, i32 3
  %36 = load i32, ptr %35, align 8, !tbaa !53
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %51, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr @cfun, align 8, !tbaa !23
  %40 = getelementptr inbounds %struct.function, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !54
  %42 = getelementptr inbounds %struct.control_flow_graph, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !56
  %44 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %43, i32 noundef %36) #14
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %44, i64 0, i32 7
  %46 = load ptr, ptr %45, align 8, !tbaa !6
  %47 = load ptr, ptr %46, align 8, !tbaa !58
  %48 = load i32, ptr %47, align 8
  %49 = and i32 %48, 134217728
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %30, %18, %38, %34, %15
  %52 = phi ptr [ null, %15 ], [ %27, %34 ], [ %27, %38 ], [ null, %18 ], [ null, %30 ]
  %53 = load ptr, ptr @compiler_params, align 8, !tbaa !23
  %54 = getelementptr inbounds %struct.param_info, ptr %53, i64 13, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !60
  %56 = tail call fastcc i32 @find_basic_block(ptr noundef nonnull %1, i32 noundef %55) #14
  %57 = load ptr, ptr @target_hash_table, align 8, !tbaa !23
  %58 = icmp eq ptr %57, null
  br label %59

59:                                               ; preds = %38, %51
  %60 = phi i1 [ %58, %51 ], [ false, %38 ]
  %61 = phi ptr [ %52, %51 ], [ %27, %38 ]
  %62 = phi i32 [ %56, %51 ], [ %36, %38 ]
  br i1 %60, label %100, label %63

63:                                               ; preds = %59
  %64 = icmp eq ptr %61, null
  br i1 %64, label %84, label %65

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.target_info, ptr %61, i64 0, i32 3
  %67 = load i32, ptr %66, align 8, !tbaa !53
  %68 = icmp eq i32 %62, %67
  %69 = icmp ne i32 %62, -1
  %70 = and i1 %69, %68
  br i1 %70, label %71, label %100

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.target_info, ptr %61, i64 0, i32 4
  %73 = load i32, ptr %72, align 4, !tbaa !62
  %74 = load ptr, ptr @bb_ticks, align 8, !tbaa !23
  %75 = sext i32 %62 to i64
  %76 = getelementptr inbounds i32, ptr %74, i64 %75
  %77 = load i32, ptr %76, align 4, !tbaa !63
  %78 = icmp eq i32 %73, %77
  br i1 %78, label %80, label %79

79:                                               ; preds = %71
  store i64 0, ptr @pending_dead_regs, align 8, !tbaa !40
  br label %103

80:                                               ; preds = %71
  %81 = getelementptr inbounds %struct.target_info, ptr %61, i64 0, i32 2
  %82 = load i64, ptr %81, align 8, !tbaa !64
  %83 = getelementptr inbounds %struct.resources, ptr %2, i64 0, i32 4
  store i64 %82, ptr %83, align 8, !tbaa !9
  br label %358

84:                                               ; preds = %63
  %85 = tail call ptr @xmalloc(i64 noundef 32) #13
  %86 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %87 = load i32, ptr %86, align 8, !tbaa !6
  store i32 %87, ptr %85, align 8, !tbaa !50
  %88 = getelementptr inbounds %struct.target_info, ptr %85, i64 0, i32 3
  store i32 %62, ptr %88, align 8, !tbaa !53
  %89 = load ptr, ptr @target_hash_table, align 8, !tbaa !23
  %90 = load i32, ptr %86, align 8, !tbaa !6
  %91 = srem i32 %90, 257
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds ptr, ptr %89, i64 %92
  %94 = load ptr, ptr %93, align 8, !tbaa !23
  %95 = getelementptr inbounds %struct.target_info, ptr %85, i64 0, i32 1
  store ptr %94, ptr %95, align 8, !tbaa !65
  %96 = load i32, ptr %86, align 8, !tbaa !6
  %97 = srem i32 %96, 257
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds ptr, ptr %89, i64 %98
  store ptr %85, ptr %99, align 8, !tbaa !23
  br label %100

100:                                              ; preds = %84, %65, %59
  %101 = phi ptr [ %61, %65 ], [ %85, %84 ], [ %61, %59 ]
  store i64 0, ptr @pending_dead_regs, align 8, !tbaa !40
  %102 = icmp eq i32 %62, -1
  br i1 %102, label %320, label %103

103:                                              ; preds = %79, %100
  %104 = phi ptr [ %61, %79 ], [ %101, %100 ]
  %105 = load ptr, ptr @cfun, align 8, !tbaa !23
  %106 = getelementptr inbounds %struct.function, ptr %105, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !54
  %108 = getelementptr inbounds %struct.control_flow_graph, ptr %107, i64 0, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !56
  %110 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %109, i32 noundef %62) #14
  %111 = getelementptr inbounds %struct.basic_block_def, ptr %110, i64 0, i32 9
  %112 = load i32, ptr %111, align 8, !tbaa !66
  %113 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %112) #14
  %114 = getelementptr inbounds %struct.df_lr_bb_info, ptr %113, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !68
  store i64 0, ptr @current_live_regs, align 8, !tbaa !40
  tail call void @reg_set_to_hard_reg_set(ptr noundef nonnull @current_live_regs, ptr noundef %115) #13
  %116 = load ptr, ptr @cfun, align 8, !tbaa !23
  %117 = getelementptr inbounds %struct.function, ptr %116, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !54
  %119 = load ptr, ptr %118, align 8, !tbaa !70
  %120 = getelementptr inbounds %struct.basic_block_def, ptr %119, i64 0, i32 6
  %121 = load ptr, ptr %120, align 8, !tbaa !71
  %122 = getelementptr inbounds %struct.basic_block_def, ptr %121, i64 0, i32 9
  %123 = load i32, ptr %122, align 8, !tbaa !66
  %124 = icmp eq i32 %62, %123
  br i1 %124, label %132, label %125

125:                                              ; preds = %103
  %126 = getelementptr inbounds %struct.control_flow_graph, ptr %118, i64 0, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !56
  %128 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %127, i32 noundef %62) #14
  %129 = getelementptr inbounds %struct.basic_block_def, ptr %128, i64 0, i32 7
  %130 = load ptr, ptr %129, align 8, !tbaa !6
  %131 = load ptr, ptr %130, align 8, !tbaa !58
  br label %132

132:                                              ; preds = %103, %125
  %133 = phi ptr [ %131, %125 ], [ %0, %103 ]
  %134 = load i32, ptr %133, align 8
  %135 = and i32 %134, 65535
  %136 = icmp eq i32 %135, 8
  br i1 %136, label %137, label %148

137:                                              ; preds = %132
  %138 = getelementptr inbounds %struct.rtx_def, ptr %133, i64 1
  %139 = load ptr, ptr %138, align 8, !tbaa !6
  %140 = load i32, ptr %139, align 8
  %141 = and i32 %140, 65535
  %142 = icmp eq i32 %141, 5
  br i1 %142, label %143, label %148

143:                                              ; preds = %137
  %144 = getelementptr inbounds %struct.rtx_def, ptr %139, i64 0, i32 1
  %145 = load ptr, ptr %144, align 8, !tbaa !6
  %146 = getelementptr inbounds %struct.rtvec_def, ptr %145, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !23
  br label %148

148:                                              ; preds = %143, %137, %132
  %149 = phi ptr [ %147, %143 ], [ %133, %137 ], [ %133, %132 ]
  %150 = load i32, ptr %1, align 8
  %151 = and i32 %150, 65535
  %152 = icmp eq i32 %151, 8
  br i1 %152, label %153, label %163

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %155 = load ptr, ptr %154, align 8, !tbaa !6
  %156 = load i32, ptr %155, align 8
  %157 = and i32 %156, 65535
  %158 = icmp eq i32 %157, 5
  br i1 %158, label %159, label %163

159:                                              ; preds = %153
  %160 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %161 = load ptr, ptr %160, align 8, !tbaa !6
  %162 = tail call ptr @next_insn(ptr noundef %161) #13
  br label %163

163:                                              ; preds = %159, %153, %148
  %164 = phi ptr [ %162, %159 ], [ %1, %153 ], [ %1, %148 ]
  %165 = icmp eq ptr %149, %164
  br i1 %165, label %309, label %166

166:                                              ; preds = %163, %306
  %167 = phi ptr [ %307, %306 ], [ %149, %163 ]
  %168 = load i32, ptr %167, align 8
  %169 = and i32 %168, 65535
  %170 = icmp eq i32 %169, 7
  br i1 %170, label %306, label %171

171:                                              ; preds = %166
  %172 = and i32 %168, 65534
  %173 = icmp ne i32 %172, 8
  %174 = icmp ne i32 %169, 10
  %175 = and i1 %173, %174
  %176 = and i32 %168, 268435456
  %177 = icmp eq i32 %176, 0
  %178 = or i1 %177, %175
  br i1 %178, label %179, label %306

179:                                              ; preds = %171
  %180 = icmp eq i32 %169, 8
  br i1 %180, label %181, label %196

181:                                              ; preds = %179
  %182 = getelementptr inbounds %struct.rtx_def, ptr %167, i64 1
  %183 = load ptr, ptr %182, align 8, !tbaa !6
  %184 = load i32, ptr %183, align 8
  %185 = and i32 %184, 65535
  %186 = icmp eq i32 %185, 24
  br i1 %186, label %187, label %196

187:                                              ; preds = %181
  %188 = getelementptr inbounds %struct.rtx_def, ptr %183, i64 0, i32 1
  %189 = load ptr, ptr %188, align 8, !tbaa !6
  %190 = load i32, ptr %189, align 8
  %191 = and i32 %190, 65535
  %192 = add nsw i32 %191, -7
  %193 = icmp ult i32 %192, 4
  %194 = select i1 %193, i32 %190, i32 %168
  %195 = select i1 %193, ptr %189, ptr %167
  br label %196

196:                                              ; preds = %187, %181, %179
  %197 = phi i32 [ %168, %181 ], [ %168, %179 ], [ %194, %187 ]
  %198 = phi ptr [ %167, %181 ], [ %167, %179 ], [ %195, %187 ]
  %199 = and i32 %197, 65535
  %200 = icmp eq i32 %199, 10
  br i1 %200, label %201, label %221

201:                                              ; preds = %196
  %202 = load i64, ptr @regs_invalidated_by_call, align 8, !tbaa !40
  %203 = xor i64 %202, -1
  %204 = load i64, ptr @current_live_regs, align 8, !tbaa !40
  %205 = and i64 %204, %203
  store i64 %205, ptr @current_live_regs, align 8, !tbaa !40
  br label %206

206:                                              ; preds = %201, %215
  %207 = phi i64 [ 0, %201 ], [ %217, %215 ]
  %208 = phi i64 [ %205, %201 ], [ %216, %215 ]
  %209 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %207
  %210 = load i8, ptr %209, align 1, !tbaa !6
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %215, label %212

212:                                              ; preds = %206
  %213 = shl nuw nsw i64 1, %207
  %214 = or i64 %208, %213
  store i64 %214, ptr @current_live_regs, align 8, !tbaa !40
  br label %215

215:                                              ; preds = %206, %212
  %216 = phi i64 [ %208, %206 ], [ %214, %212 ]
  %217 = add nuw nsw i64 %207, 1
  %218 = icmp eq i64 %217, 53
  br i1 %218, label %219, label %206, !llvm.loop !72

219:                                              ; preds = %215
  %220 = load i32, ptr %198, align 8
  br label %221

221:                                              ; preds = %219, %196
  %222 = phi i32 [ %220, %219 ], [ %197, %196 ]
  %223 = trunc i32 %222 to i16
  switch i16 %223, label %306 [
    i16 8, label %224
    i16 9, label %230
    i16 10, label %230
    i16 12, label %281
    i16 13, label %298
  ]

224:                                              ; preds = %221
  %225 = getelementptr inbounds %struct.rtx_def, ptr %198, i64 1
  %226 = load ptr, ptr %225, align 8, !tbaa !6
  %227 = load i32, ptr %226, align 8
  %228 = and i32 %227, 65534
  %229 = icmp eq i32 %228, 24
  br i1 %229, label %306, label %230

230:                                              ; preds = %221, %221, %224
  %231 = getelementptr inbounds %struct.rtx_def, ptr %198, i64 1, i32 1, i32 0, i32 0, i64 1
  %232 = load ptr, ptr %231, align 8, !tbaa !6
  %233 = icmp eq ptr %232, null
  br i1 %233, label %255, label %234

234:                                              ; preds = %230, %251
  %235 = phi ptr [ %253, %251 ], [ %232, %230 ]
  %236 = load i32, ptr %235, align 8
  %237 = and i32 %236, 16711680
  %238 = icmp eq i32 %237, 65536
  br i1 %238, label %239, label %251

239:                                              ; preds = %234
  %240 = getelementptr inbounds %struct.rtx_def, ptr %235, i64 0, i32 1
  %241 = load ptr, ptr %240, align 8, !tbaa !6
  %242 = load i32, ptr %241, align 8
  %243 = and i32 %242, 65535
  %244 = icmp eq i32 %243, 37
  br i1 %244, label %245, label %251

245:                                              ; preds = %239
  %246 = call fastcc i32 @rhs_regno(ptr noundef nonnull %241) #14
  %247 = icmp ult i32 %246, 53
  br i1 %247, label %248, label %251

248:                                              ; preds = %245
  %249 = lshr i32 %242, 16
  %250 = and i32 %249, 255
  call fastcc void @add_to_hard_reg_set(ptr noundef nonnull @pending_dead_regs, i32 noundef %250, i32 noundef %246) #14
  br label %251

251:                                              ; preds = %234, %239, %245, %248
  %252 = getelementptr inbounds %struct.rtx_def, ptr %235, i64 0, i32 1, i32 0, i32 0, i64 1
  %253 = load ptr, ptr %252, align 8, !tbaa !6
  %254 = icmp eq ptr %253, null
  br i1 %254, label %255, label %234, !llvm.loop !73

255:                                              ; preds = %251, %230
  %256 = getelementptr inbounds %struct.rtx_def, ptr %198, i64 1
  %257 = load ptr, ptr %256, align 8, !tbaa !6
  call void @note_stores(ptr noundef %257, ptr noundef nonnull @update_live_status, ptr noundef null) #13
  %258 = load ptr, ptr %231, align 8, !tbaa !6
  %259 = icmp eq ptr %258, null
  br i1 %259, label %306, label %260

260:                                              ; preds = %255, %277
  %261 = phi ptr [ %279, %277 ], [ %258, %255 ]
  %262 = load i32, ptr %261, align 8
  %263 = and i32 %262, 16711680
  %264 = icmp eq i32 %263, 393216
  br i1 %264, label %265, label %277

265:                                              ; preds = %260
  %266 = getelementptr inbounds %struct.rtx_def, ptr %261, i64 0, i32 1
  %267 = load ptr, ptr %266, align 8, !tbaa !6
  %268 = load i32, ptr %267, align 8
  %269 = and i32 %268, 65535
  %270 = icmp eq i32 %269, 37
  br i1 %270, label %271, label %277

271:                                              ; preds = %265
  %272 = call fastcc i32 @rhs_regno(ptr noundef nonnull %267) #14
  %273 = icmp ult i32 %272, 53
  br i1 %273, label %274, label %277

274:                                              ; preds = %271
  %275 = lshr i32 %268, 16
  %276 = and i32 %275, 255
  call fastcc void @remove_from_hard_reg_set(i32 noundef %276, i32 noundef %272) #14
  br label %277

277:                                              ; preds = %260, %265, %271, %274
  %278 = getelementptr inbounds %struct.rtx_def, ptr %261, i64 0, i32 1, i32 0, i32 0, i64 1
  %279 = load ptr, ptr %278, align 8, !tbaa !6
  %280 = icmp eq ptr %279, null
  br i1 %280, label %306, label %260, !llvm.loop !74

281:                                              ; preds = %221
  %282 = load i64, ptr @pending_dead_regs, align 8, !tbaa !40
  %283 = xor i64 %282, -1
  %284 = load i64, ptr @current_live_regs, align 8, !tbaa !40
  %285 = and i64 %284, %283
  store i64 %285, ptr @current_live_regs, align 8, !tbaa !40
  store i64 0, ptr @pending_dead_regs, align 8, !tbaa !40
  %286 = getelementptr inbounds %struct.rtx_def, ptr %198, i64 0, i32 1, i32 0, i32 1
  %287 = load ptr, ptr %286, align 8, !tbaa !6
  %288 = icmp eq ptr %287, null
  br i1 %288, label %306, label %289

289:                                              ; preds = %281
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #15
  store i64 0, ptr %7, align 8, !tbaa !40
  %290 = getelementptr inbounds %struct.basic_block_def, ptr %287, i64 0, i32 9
  %291 = load i32, ptr %290, align 8, !tbaa !66
  %292 = call fastcc ptr @df_lr_get_bb_info(i32 noundef %291) #14
  %293 = getelementptr inbounds %struct.df_lr_bb_info, ptr %292, i64 0, i32 2
  %294 = load ptr, ptr %293, align 8, !tbaa !68
  call void @reg_set_to_hard_reg_set(ptr noundef nonnull %7, ptr noundef %294) #13
  %295 = load i64, ptr %7, align 8, !tbaa !40
  %296 = load i64, ptr @current_live_regs, align 8, !tbaa !40
  %297 = or i64 %296, %295
  store i64 %297, ptr @current_live_regs, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  br label %306

298:                                              ; preds = %221
  %299 = getelementptr inbounds %struct.rtx_def, ptr %198, i64 1
  %300 = load i32, ptr %299, align 8, !tbaa !6
  %301 = icmp eq i32 %300, 6
  br i1 %301, label %302, label %306

302:                                              ; preds = %298
  %303 = load i64, ptr getelementptr inbounds (%struct.resources, ptr @start_of_epilogue_needs, i64 0, i32 4), align 8, !tbaa !9
  %304 = load i64, ptr @current_live_regs, align 8, !tbaa !40
  %305 = or i64 %304, %303
  store i64 %305, ptr @current_live_regs, align 8, !tbaa !40
  br label %306

306:                                              ; preds = %277, %255, %221, %224, %298, %302, %289, %281, %171, %166
  %307 = call fastcc ptr @next_insn_no_annul(ptr noundef nonnull %167) #14
  %308 = icmp eq ptr %307, %164
  br i1 %308, label %309, label %166, !llvm.loop !75

309:                                              ; preds = %306, %163
  %310 = load i64, ptr @current_live_regs, align 8, !tbaa !40
  %311 = getelementptr inbounds %struct.resources, ptr %2, i64 0, i32 4
  store i64 %310, ptr %311, align 8, !tbaa !9
  %312 = icmp eq ptr %104, null
  br i1 %312, label %322, label %313

313:                                              ; preds = %309
  %314 = getelementptr inbounds %struct.target_info, ptr %104, i64 0, i32 3
  store i32 %62, ptr %314, align 8, !tbaa !53
  %315 = load ptr, ptr @bb_ticks, align 8, !tbaa !23
  %316 = sext i32 %62 to i64
  %317 = getelementptr inbounds i32, ptr %315, i64 %316
  %318 = load i32, ptr %317, align 4, !tbaa !63
  %319 = getelementptr inbounds %struct.target_info, ptr %104, i64 0, i32 4
  store i32 %318, ptr %319, align 4, !tbaa !62
  br label %322

320:                                              ; preds = %100
  %321 = getelementptr inbounds %struct.resources, ptr %2, i64 0, i32 4
  store i64 -1, ptr %321, align 8, !tbaa !9
  br label %322

322:                                              ; preds = %309, %313, %320
  %323 = phi ptr [ null, %309 ], [ %104, %313 ], [ %101, %320 ]
  %324 = getelementptr inbounds %struct.resources, ptr %5, i64 0, i32 4
  store i32 0, ptr %5, align 8
  %325 = getelementptr inbounds %struct.resources, ptr %6, i64 0, i32 4
  store i64 0, ptr %325, align 8, !tbaa !9
  store i32 0, ptr %6, align 8
  %326 = load i64, ptr %5, align 8
  %327 = call fastcc ptr @find_dead_or_set_registers(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %4, i32 noundef 0, i64 %326, i64 0, ptr noundef nonnull byval(%struct.resources) align 8 %6) #14
  %328 = icmp eq ptr %327, null
  br i1 %328, label %352, label %329

329:                                              ; preds = %322
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #15
  %330 = call ptr @next_active_insn(ptr noundef nonnull %327) #13
  %331 = load ptr, ptr %4, align 8, !tbaa !23
  %332 = call ptr @next_active_insn(ptr noundef %331) #13
  call void @mark_target_live_regs(ptr noundef %0, ptr noundef %332, ptr noundef nonnull %8) #14
  store i64 0, ptr %324, align 8, !tbaa !9
  store i32 0, ptr %5, align 8
  store i64 0, ptr %325, align 8, !tbaa !9
  %333 = icmp eq ptr %330, %1
  store i32 0, ptr %6, align 8
  br i1 %333, label %346, label %334

334:                                              ; preds = %329
  %335 = getelementptr inbounds %struct.resources, ptr %8, i64 0, i32 4
  br label %336

336:                                              ; preds = %334, %336
  %337 = phi ptr [ %1, %334 ], [ %344, %336 ]
  call void @mark_referenced_resources(ptr noundef %337, ptr noundef nonnull %6, i8 noundef zeroext 1) #14
  %338 = load i64, ptr %325, align 8, !tbaa !9
  %339 = load i64, ptr %324, align 8, !tbaa !9
  %340 = xor i64 %339, -1
  %341 = and i64 %338, %340
  %342 = load i64, ptr %335, align 8, !tbaa !9
  %343 = or i64 %342, %341
  store i64 %343, ptr %335, align 8, !tbaa !9
  call void @mark_set_resources(ptr noundef %337, ptr noundef nonnull %5, i32 noundef 0, i32 noundef 1) #14
  %344 = call ptr @next_active_insn(ptr noundef %337) #13
  %345 = icmp eq ptr %344, %330
  br i1 %345, label %346, label %336, !llvm.loop !76

346:                                              ; preds = %336, %329
  %347 = getelementptr inbounds %struct.resources, ptr %8, i64 0, i32 4
  %348 = load i64, ptr %347, align 8, !tbaa !9
  %349 = getelementptr inbounds %struct.resources, ptr %2, i64 0, i32 4
  %350 = load i64, ptr %349, align 8, !tbaa !9
  %351 = or i64 %350, %348
  store i64 %351, ptr %349, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #15
  br label %352

352:                                              ; preds = %346, %322
  %353 = icmp eq ptr %323, null
  br i1 %353, label %358, label %354

354:                                              ; preds = %352
  %355 = getelementptr inbounds %struct.resources, ptr %2, i64 0, i32 4
  %356 = load i64, ptr %355, align 8, !tbaa !9
  %357 = getelementptr inbounds %struct.target_info, ptr %323, i64 0, i32 2
  store i64 %356, ptr %357, align 8, !tbaa !64
  br label %358

358:                                              ; preds = %352, %354, %80, %14, %10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @return_insn_p(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  br label %2

2:                                                ; preds = %19, %1
  %3 = phi ptr [ %0, %1 ], [ %23, %19 ]
  %4 = load i32, ptr %3, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %24 [
    i16 9, label %6
    i16 8, label %13
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 27
  %12 = zext i1 %11 to i8
  br label %24

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !6
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 5
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !6
  %22 = getelementptr inbounds %struct.rtvec_def, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !23
  br label %2

24:                                               ; preds = %2, %13, %6
  %25 = phi i8 [ %12, %6 ], [ 0, %13 ], [ 0, %2 ]
  ret i8 %25
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !23
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @find_basic_block(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @prev_nonnote_insn(ptr noundef %0) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %2, %13
  %6 = phi i32 [ %15, %13 ], [ %1, %2 ]
  %7 = phi ptr [ %14, %13 ], [ %3, %2 ]
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = icmp ne i32 %9, 11
  %11 = icmp ne i32 %6, 0
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %13, label %20

13:                                               ; preds = %5
  %14 = tail call ptr @prev_nonnote_insn(ptr noundef nonnull %7) #13
  %15 = add nsw i32 %6, -1
  %16 = icmp eq ptr %14, null
  br i1 %16, label %17, label %5, !llvm.loop !77

17:                                               ; preds = %13, %2
  %18 = phi i32 [ %1, %2 ], [ %15, %13 ]
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %48, label %22

20:                                               ; preds = %5
  %21 = icmp eq i32 %6, 0
  br i1 %21, label %48, label %29

22:                                               ; preds = %17
  %23 = load ptr, ptr @cfun, align 8, !tbaa !23
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !54
  %26 = load ptr, ptr %25, align 8, !tbaa !70
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !71
  br label %44

29:                                               ; preds = %20
  %30 = tail call ptr @next_nonnote_insn(ptr noundef nonnull %7) #13
  %31 = icmp eq ptr %30, null
  br i1 %31, label %48, label %32

32:                                               ; preds = %29, %41
  %33 = phi ptr [ %42, %41 ], [ %30, %29 ]
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 12
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !6
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = tail call ptr @next_nonnote_insn(ptr noundef nonnull %33) #13
  %43 = icmp eq ptr %42, null
  br i1 %43, label %48, label %32, !llvm.loop !78

44:                                               ; preds = %37, %22
  %45 = phi ptr [ %28, %22 ], [ %39, %37 ]
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %45, i64 0, i32 9
  %47 = load i32, ptr %46, align 8, !tbaa !66
  br label %48

48:                                               ; preds = %41, %32, %44, %29, %20, %17
  %49 = phi i32 [ -1, %17 ], [ -1, %20 ], [ -1, %29 ], [ %47, %44 ], [ -1, %32 ], [ -1, %41 ]
  ret i32 %49
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_lr_get_bb_info(i32 noundef %0) unnamed_addr #8 {
  %2 = load ptr, ptr @df, align 8, !tbaa !23
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !23
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !79
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !81
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !23
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: optsize
declare void @reg_set_to_hard_reg_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @next_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @update_live_status(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = load i32, ptr %0, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %96 [
    i16 37, label %16
    i16 39, label %6
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 37
  br i1 %11, label %12, label %96

12:                                               ; preds = %6
  %13 = tail call i32 @subreg_regno(ptr noundef nonnull %0) #13
  %14 = tail call i32 @subreg_nregs(ptr noundef nonnull %0) #13
  %15 = add i32 %14, %13
  br label %21

16:                                               ; preds = %3
  %17 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #14
  %18 = lshr i32 %4, 16
  %19 = and i32 %18, 255
  %20 = tail call fastcc i32 @end_hard_regno(i32 noundef %19, i32 noundef %17) #14
  br label %21

21:                                               ; preds = %16, %12
  %22 = phi i32 [ %13, %12 ], [ %17, %16 ]
  %23 = phi i32 [ %15, %12 ], [ %20, %16 ]
  %24 = load i32, ptr %1, align 8
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 25
  %27 = icmp slt i32 %22, %23
  br i1 %26, label %65, label %28

28:                                               ; preds = %21
  br i1 %27, label %29, label %96

29:                                               ; preds = %28
  %30 = sub i32 %23, %22
  %31 = load i64, ptr @current_live_regs, align 8, !tbaa !40
  %32 = load i64, ptr @pending_dead_regs, align 8, !tbaa !40
  %33 = add i32 %30, 1
  %34 = and i32 %33, -2
  %35 = add i32 %30, -1
  %36 = insertelement <2 x i32> poison, i32 %35, i64 0
  %37 = shufflevector <2 x i32> %36, <2 x i32> poison, <2 x i32> zeroinitializer
  %38 = insertelement <2 x i32> poison, i32 %22, i64 0
  %39 = shufflevector <2 x i32> %38, <2 x i32> poison, <2 x i32> zeroinitializer
  %40 = add <2 x i32> %39, <i32 0, i32 1>
  %41 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %31, i64 0
  %42 = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %32, i64 0
  br label %43

43:                                               ; preds = %43, %29
  %44 = phi i32 [ 0, %29 ], [ %53, %43 ]
  %45 = phi <2 x i32> [ %40, %29 ], [ %54, %43 ]
  %46 = phi <2 x i64> [ %41, %29 ], [ %50, %43 ]
  %47 = phi <2 x i64> [ %42, %29 ], [ %52, %43 ]
  %48 = zext nneg <2 x i32> %45 to <2 x i64>
  %49 = shl nuw <2 x i64> <i64 1, i64 1>, %48
  %50 = or <2 x i64> %46, %49
  %51 = xor <2 x i64> %49, <i64 -1, i64 -1>
  %52 = and <2 x i64> %47, %51
  %53 = add i32 %44, 2
  %54 = add <2 x i32> %45, <i32 2, i32 2>
  %55 = icmp eq i32 %53, %34
  br i1 %55, label %56, label %43, !llvm.loop !82

56:                                               ; preds = %43
  %57 = insertelement <2 x i32> poison, i32 %44, i64 0
  %58 = shufflevector <2 x i32> %57, <2 x i32> poison, <2 x i32> zeroinitializer
  %59 = or disjoint <2 x i32> %58, <i32 0, i32 1>
  %60 = icmp ugt <2 x i32> %59, %37
  %61 = select <2 x i1> %60, <2 x i64> %47, <2 x i64> %52
  %62 = select <2 x i1> %60, <2 x i64> %46, <2 x i64> %50
  %63 = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %62)
  %64 = tail call i64 @llvm.vector.reduce.and.v2i64(<2 x i64> %61)
  store i64 %63, ptr @current_live_regs, align 8, !tbaa !40
  store i64 %64, ptr @pending_dead_regs, align 8, !tbaa !40
  br label %96

65:                                               ; preds = %21
  br i1 %27, label %66, label %96

66:                                               ; preds = %65
  %67 = sub i32 %23, %22
  %68 = load i64, ptr @current_live_regs, align 8, !tbaa !40
  %69 = add i32 %67, 1
  %70 = and i32 %69, -2
  %71 = add i32 %67, -1
  %72 = insertelement <2 x i32> poison, i32 %71, i64 0
  %73 = shufflevector <2 x i32> %72, <2 x i32> poison, <2 x i32> zeroinitializer
  %74 = insertelement <2 x i32> poison, i32 %22, i64 0
  %75 = shufflevector <2 x i32> %74, <2 x i32> poison, <2 x i32> zeroinitializer
  %76 = add <2 x i32> %75, <i32 0, i32 1>
  %77 = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %68, i64 0
  br label %78

78:                                               ; preds = %78, %66
  %79 = phi i32 [ 0, %66 ], [ %86, %78 ]
  %80 = phi <2 x i32> [ %76, %66 ], [ %87, %78 ]
  %81 = phi <2 x i64> [ %77, %66 ], [ %85, %78 ]
  %82 = zext nneg <2 x i32> %80 to <2 x i64>
  %83 = shl nuw <2 x i64> <i64 1, i64 1>, %82
  %84 = xor <2 x i64> %83, <i64 -1, i64 -1>
  %85 = and <2 x i64> %81, %84
  %86 = add i32 %79, 2
  %87 = add <2 x i32> %80, <i32 2, i32 2>
  %88 = icmp eq i32 %86, %70
  br i1 %88, label %89, label %78, !llvm.loop !83

89:                                               ; preds = %78
  %90 = insertelement <2 x i32> poison, i32 %79, i64 0
  %91 = shufflevector <2 x i32> %90, <2 x i32> poison, <2 x i32> zeroinitializer
  %92 = or disjoint <2 x i32> %91, <i32 0, i32 1>
  %93 = icmp ugt <2 x i32> %92, %73
  %94 = select <2 x i1> %93, <2 x i64> %81, <2 x i64> %85
  %95 = tail call i64 @llvm.vector.reduce.and.v2i64(<2 x i64> %94)
  store i64 %95, ptr @current_live_regs, align 8, !tbaa !40
  br label %96

96:                                               ; preds = %28, %56, %65, %89, %6, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal fastcc void @remove_from_hard_reg_set(i32 noundef %0, i32 noundef %1) unnamed_addr #9 {
  %3 = tail call fastcc i32 @end_hard_regno(i32 noundef %0, i32 noundef %1) #14
  %4 = add i32 %1, 1
  %5 = tail call i32 @llvm.umax.i32(i32 %3, i32 %4)
  %6 = sub i32 %5, %1
  %7 = load i64, ptr @current_live_regs, align 8, !tbaa !40
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
  br i1 %24, label %25, label %14, !llvm.loop !84

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
  store i64 %34, ptr @current_live_regs, align 8, !tbaa !40
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_insn_no_annul(ptr noundef readonly %0) unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %50, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = add nsw i32 %5, -11
  %7 = icmp ult i32 %6, -4
  %8 = and i32 %4, 67108864
  %9 = icmp eq i32 %8, 0
  %10 = or i1 %9, %7
  br i1 %10, label %30, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 2
  %15 = load ptr, ptr %14, align 8, !tbaa !6
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %30, label %17

17:                                               ; preds = %11, %17
  %18 = phi ptr [ %20, %17 ], [ %0, %11 ]
  %19 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 2
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 65535
  %23 = and i32 %21, 65534
  %24 = icmp ne i32 %23, 8
  %25 = icmp ne i32 %22, 10
  %26 = and i1 %24, %25
  %27 = and i32 %21, 268435456
  %28 = icmp eq i32 %27, 0
  %29 = or i1 %28, %26
  br i1 %29, label %30, label %17, !llvm.loop !85

30:                                               ; preds = %17, %3, %11
  %31 = phi ptr [ %0, %11 ], [ %0, %3 ], [ %18, %17 ]
  %32 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1, i32 0, i32 0, i64 2
  %33 = load ptr, ptr %32, align 8, !tbaa !6
  %34 = icmp eq ptr %33, null
  br i1 %34, label %50, label %35

35:                                               ; preds = %30
  %36 = load i32, ptr %33, align 8
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 8
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !6
  %42 = load i32, ptr %41, align 8
  %43 = and i32 %42, 65535
  %44 = icmp eq i32 %43, 5
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !6
  %48 = getelementptr inbounds %struct.rtvec_def, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !23
  br label %50

50:                                               ; preds = %30, %35, %39, %45, %1
  %51 = phi ptr [ %49, %45 ], [ %33, %39 ], [ %33, %35 ], [ null, %30 ], [ null, %1 ]
  ret ptr %51
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_dead_or_set_registers(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2, i32 noundef %3, i64 %4, i64 %5, ptr noundef byval(%struct.resources) align 8 %6) unnamed_addr #0 {
  %8 = alloca %struct.resources, align 8
  %9 = alloca %struct.resources, align 8
  %10 = alloca %struct.resources, align 8
  %11 = alloca %struct.resources, align 8
  store i64 %4, ptr %8, align 8
  %12 = getelementptr inbounds { i64, i64 }, ptr %8, i64 0, i32 1
  store i64 %5, ptr %12, align 8
  %13 = icmp eq ptr %0, null
  br i1 %13, label %190, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.resources, ptr %6, i64 0, i32 4
  %16 = getelementptr inbounds %struct.resources, ptr %1, i64 0, i32 4
  %17 = icmp eq ptr %2, null
  br label %18

18:                                               ; preds = %14, %185
  %19 = phi ptr [ null, %14 ], [ %188, %185 ]
  %20 = phi ptr [ %0, %14 ], [ %187, %185 ]
  %21 = phi i32 [ %3, %14 ], [ %186, %185 ]
  %22 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 2
  %23 = load ptr, ptr %22, align 8, !tbaa !6
  %24 = call zeroext i8 @can_throw_internal(ptr noundef nonnull %20) #13
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %190

26:                                               ; preds = %18
  %27 = load i32, ptr %20, align 8
  %28 = trunc i32 %27 to i16
  switch i16 %28, label %66 [
    i16 12, label %29
    i16 11, label %185
    i16 13, label %185
    i16 8, label %36
  ]

29:                                               ; preds = %26
  %30 = load i64, ptr %15, align 8, !tbaa !9
  %31 = load i64, ptr @pending_dead_regs, align 8, !tbaa !40
  %32 = xor i64 %31, -1
  %33 = or i64 %30, %32
  %34 = load i64, ptr %16, align 8, !tbaa !9
  %35 = and i64 %34, %33
  store i64 %35, ptr %16, align 8, !tbaa !9
  store i64 0, ptr @pending_dead_regs, align 8, !tbaa !40
  br label %185

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !6
  %39 = load i32, ptr %38, align 8
  %40 = trunc i32 %39 to i16
  switch i16 %40, label %66 [
    i16 24, label %48
    i16 25, label %185
    i16 5, label %41
  ]

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !6
  %44 = load i32, ptr %43, align 8, !tbaa !20
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %41
  %47 = zext nneg i32 %44 to i64
  br label %56

48:                                               ; preds = %36
  %49 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !6
  %51 = load i32, ptr %50, align 8
  %52 = and i32 %51, 65535
  %53 = add nsw i32 %52, -7
  %54 = icmp ult i32 %53, 4
  br i1 %54, label %55, label %185

55:                                               ; preds = %48
  call void @mark_set_resources(ptr noundef nonnull %50, ptr noundef %1, i32 noundef 0, i32 noundef 1) #14
  br label %185

56:                                               ; preds = %46, %56
  %57 = phi i64 [ 0, %46 ], [ %63, %56 ]
  %58 = getelementptr inbounds %struct.rtvec_def, ptr %43, i64 0, i32 1, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !23
  %60 = load i32, ptr %59, align 8
  %61 = and i32 %60, 65535
  %62 = icmp ne i32 %61, 9
  %63 = add nuw nsw i64 %57, 1
  %64 = icmp ult i64 %63, %47
  %65 = select i1 %62, i1 %64, i1 false
  br i1 %65, label %56, label %66, !llvm.loop !86

66:                                               ; preds = %56, %41, %36, %26
  %67 = phi i32 [ %27, %26 ], [ %27, %36 ], [ %27, %41 ], [ %60, %56 ]
  %68 = phi ptr [ %20, %26 ], [ %20, %36 ], [ %20, %41 ], [ %59, %56 ]
  %69 = and i32 %67, 65535
  %70 = icmp eq i32 %69, 9
  br i1 %70, label %71, label %175

71:                                               ; preds = %66
  %72 = add nsw i32 %21, 1
  %73 = icmp slt i32 %21, 10
  br i1 %73, label %74, label %190

74:                                               ; preds = %71
  %75 = call i32 @any_uncondjump_p(ptr noundef nonnull %68) #13
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.rtx_def, ptr %68, i64 1
  %79 = load ptr, ptr %78, align 8, !tbaa !6
  %80 = load i32, ptr %79, align 8
  %81 = and i32 %80, 65535
  %82 = icmp eq i32 %81, 27
  br i1 %82, label %83, label %90

83:                                               ; preds = %77, %74
  %84 = getelementptr inbounds %struct.rtx_def, ptr %68, i64 1, i32 1, i32 0, i32 0, i64 2
  %85 = load ptr, ptr %84, align 8, !tbaa !6
  %86 = icmp ne ptr %19, null
  %87 = or i1 %86, %17
  %88 = select i1 %86, ptr %19, ptr %20
  br i1 %87, label %175, label %89

89:                                               ; preds = %83
  store ptr %85, ptr %2, align 8, !tbaa !23
  br label %175

90:                                               ; preds = %77
  %91 = call i32 @any_condjump_p(ptr noundef nonnull %68) #13
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %190, label %93

93:                                               ; preds = %90
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #15
  %94 = add nsw i32 %21, 5
  %95 = icmp sgt i32 %21, 4
  br i1 %95, label %174, label %96

96:                                               ; preds = %93
  call void @mark_referenced_resources(ptr noundef nonnull %20, ptr noundef nonnull %6, i8 noundef zeroext 1) #14
  %97 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 1
  %98 = load ptr, ptr %97, align 8, !tbaa !6
  %99 = load i32, ptr %98, align 8
  %100 = and i32 %99, 65535
  %101 = icmp eq i32 %100, 5
  br i1 %101, label %102, label %146

102:                                              ; preds = %96
  %103 = load i32, ptr %68, align 8
  %104 = and i32 %103, 67108864
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %146, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.rtx_def, ptr %98, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !6
  %109 = load i32, ptr %108, align 8, !tbaa !20
  %110 = icmp sgt i32 %109, 1
  br i1 %110, label %111, label %125

111:                                              ; preds = %106, %111
  %112 = phi i64 [ %118, %111 ], [ 1, %106 ]
  %113 = phi ptr [ %121, %111 ], [ %108, %106 ]
  %114 = getelementptr inbounds %struct.rtvec_def, ptr %113, i64 0, i32 1, i64 %112
  %115 = load ptr, ptr %114, align 8, !tbaa !23
  %116 = load i32, ptr %115, align 8
  %117 = xor i32 %116, 268435456
  store i32 %117, ptr %115, align 8
  %118 = add nuw nsw i64 %112, 1
  %119 = load ptr, ptr %97, align 8, !tbaa !6
  %120 = getelementptr inbounds %struct.rtx_def, ptr %119, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !6
  %122 = load i32, ptr %121, align 8, !tbaa !20
  %123 = sext i32 %122 to i64
  %124 = icmp slt i64 %118, %123
  br i1 %124, label %111, label %125, !llvm.loop !87

125:                                              ; preds = %111, %106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !48
  call void @mark_set_resources(ptr noundef nonnull %20, ptr noundef nonnull %9, i32 noundef 0, i32 noundef 1) #14
  %126 = load ptr, ptr %97, align 8, !tbaa !6
  %127 = getelementptr inbounds %struct.rtx_def, ptr %126, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !6
  %129 = load i32, ptr %128, align 8, !tbaa !20
  %130 = icmp sgt i32 %129, 1
  br i1 %130, label %131, label %145

131:                                              ; preds = %125, %131
  %132 = phi i64 [ %138, %131 ], [ 1, %125 ]
  %133 = phi ptr [ %141, %131 ], [ %128, %125 ]
  %134 = getelementptr inbounds %struct.rtvec_def, ptr %133, i64 0, i32 1, i64 %132
  %135 = load ptr, ptr %134, align 8, !tbaa !23
  %136 = load i32, ptr %135, align 8
  %137 = xor i32 %136, 268435456
  store i32 %137, ptr %135, align 8
  %138 = add nuw nsw i64 %132, 1
  %139 = load ptr, ptr %97, align 8, !tbaa !6
  %140 = getelementptr inbounds %struct.rtx_def, ptr %139, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !6
  %142 = load i32, ptr %141, align 8, !tbaa !20
  %143 = sext i32 %142 to i64
  %144 = icmp slt i64 %138, %143
  br i1 %144, label %131, label %145, !llvm.loop !88

145:                                              ; preds = %131, %125
  call void @mark_set_resources(ptr noundef nonnull %20, ptr noundef nonnull %8, i32 noundef 0, i32 noundef 1) #14
  br label %147

146:                                              ; preds = %102, %96
  call void @mark_set_resources(ptr noundef nonnull %20, ptr noundef nonnull %8, i32 noundef 0, i32 noundef 1) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !48
  br label %147

147:                                              ; preds = %146, %145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !48
  %148 = getelementptr inbounds %struct.resources, ptr %9, i64 0, i32 4
  %149 = load i64, ptr %148, align 8
  %150 = load i64, ptr %15, align 8, !tbaa !9
  %151 = xor i64 %149, -1
  %152 = or i64 %150, %151
  %153 = getelementptr inbounds %struct.resources, ptr %10, i64 0, i32 4
  %154 = load i64, ptr %153, align 8, !tbaa !9
  %155 = and i64 %154, %152
  store i64 %155, ptr %153, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !48
  %156 = load i64, ptr %12, align 8, !tbaa !9
  %157 = xor i64 %156, -1
  %158 = or i64 %150, %157
  %159 = getelementptr inbounds %struct.resources, ptr %11, i64 0, i32 4
  %160 = load i64, ptr %159, align 8, !tbaa !9
  %161 = and i64 %160, %158
  store i64 %161, ptr %159, align 8, !tbaa !9
  %162 = getelementptr inbounds %struct.rtx_def, ptr %68, i64 1, i32 1, i32 0, i32 0, i64 2
  %163 = load ptr, ptr %162, align 8, !tbaa !6
  %164 = load i64, ptr %9, align 8
  %165 = call fastcc ptr @find_dead_or_set_registers(ptr noundef %163, ptr noundef nonnull %10, ptr noundef null, i32 noundef %94, i64 %164, i64 %149, ptr noundef nonnull byval(%struct.resources) align 8 %6) #14
  %166 = load i64, ptr %8, align 8
  %167 = load i64, ptr %12, align 8
  %168 = call fastcc ptr @find_dead_or_set_registers(ptr noundef %23, ptr noundef nonnull %11, ptr noundef null, i32 noundef %94, i64 %166, i64 %167, ptr noundef nonnull byval(%struct.resources) align 8 %6) #14
  %169 = load i64, ptr %153, align 8, !tbaa !9
  %170 = load i64, ptr %159, align 8, !tbaa !9
  %171 = or i64 %170, %169
  %172 = load i64, ptr %16, align 8, !tbaa !9
  %173 = and i64 %172, %171
  store i64 %173, ptr %16, align 8, !tbaa !9
  br label %174

174:                                              ; preds = %93, %147
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #15
  br label %190

175:                                              ; preds = %83, %89, %66
  %176 = phi i32 [ %72, %89 ], [ %72, %83 ], [ %21, %66 ]
  %177 = phi ptr [ %85, %89 ], [ %85, %83 ], [ %23, %66 ]
  %178 = phi ptr [ %20, %89 ], [ %88, %83 ], [ %19, %66 ]
  call void @mark_referenced_resources(ptr noundef nonnull %20, ptr noundef nonnull %6, i8 noundef zeroext 1) #14
  call void @mark_set_resources(ptr noundef nonnull %20, ptr noundef nonnull %8, i32 noundef 0, i32 noundef 1) #14
  %179 = load i64, ptr %12, align 8, !tbaa !9
  %180 = load i64, ptr %15, align 8, !tbaa !9
  %181 = xor i64 %179, -1
  %182 = or i64 %180, %181
  %183 = load i64, ptr %16, align 8, !tbaa !9
  %184 = and i64 %183, %182
  store i64 %184, ptr %16, align 8, !tbaa !9
  br label %185

185:                                              ; preds = %48, %36, %55, %26, %26, %175, %29
  %186 = phi i32 [ %176, %175 ], [ %21, %29 ], [ %21, %26 ], [ %21, %26 ], [ %21, %48 ], [ %21, %55 ], [ %21, %36 ]
  %187 = phi ptr [ %177, %175 ], [ %23, %29 ], [ %23, %26 ], [ %23, %26 ], [ %23, %48 ], [ %23, %55 ], [ %23, %36 ]
  %188 = phi ptr [ %178, %175 ], [ %19, %29 ], [ %19, %26 ], [ %19, %26 ], [ %19, %48 ], [ %19, %55 ], [ %19, %36 ]
  %189 = icmp eq ptr %187, null
  br i1 %189, label %190, label %18, !llvm.loop !89

190:                                              ; preds = %185, %18, %71, %7, %90, %174
  %191 = phi ptr [ %19, %90 ], [ %19, %174 ], [ null, %7 ], [ %188, %185 ], [ %19, %18 ], [ null, %71 ]
  ret ptr %191
}

; Function Attrs: optsize
declare ptr @next_active_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @prev_nonnote_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @next_nonnote_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @can_throw_internal(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @any_uncondjump_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @any_condjump_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_resource_info(ptr noundef %0) local_unnamed_addr #0 {
  store i8 0, ptr getelementptr inbounds (%struct.resources, ptr @end_of_function_needs, i64 0, i32 3), align 1, !tbaa !19
  store i8 1, ptr @end_of_function_needs, align 8, !tbaa !17
  store i8 0, ptr getelementptr inbounds (%struct.resources, ptr @end_of_function_needs, i64 0, i32 1), align 1, !tbaa !16
  %2 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !26
  %3 = icmp eq i8 %2, 0
  %4 = load i32, ptr @current_function_sp_is_unchanging, align 4
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i64 1048640, i64 1048768
  %7 = select i1 %3, i64 128, i64 %6
  store i64 %7, ptr getelementptr inbounds (%struct.resources, ptr @end_of_function_needs, i64 0, i32 4), align 8
  %8 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 7), align 8, !tbaa !90
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  tail call void @mark_referenced_resources(ptr noundef nonnull %8, ptr noundef nonnull @end_of_function_needs, i8 noundef zeroext 1) #14
  %11 = load i64, ptr getelementptr inbounds (%struct.resources, ptr @end_of_function_needs, i64 0, i32 4), align 8, !tbaa !9
  br label %12

12:                                               ; preds = %10, %1
  %13 = phi i64 [ %7, %1 ], [ %11, %10 ]
  br label %14

14:                                               ; preds = %12, %23
  %15 = phi i64 [ %25, %23 ], [ 0, %12 ]
  %16 = phi i64 [ %24, %23 ], [ %13, %12 ]
  %17 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %15
  %18 = load i8, ptr %17, align 1, !tbaa !6
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = shl nuw nsw i64 1, %15
  %22 = or i64 %16, %21
  store i64 %22, ptr getelementptr inbounds (%struct.resources, ptr @end_of_function_needs, i64 0, i32 4), align 8, !tbaa !9
  br label %23

23:                                               ; preds = %14, %20
  %24 = phi i64 [ %16, %14 ], [ %22, %20 ]
  %25 = add nuw nsw i64 %15, 1
  %26 = icmp eq i64 %25, 53
  br i1 %26, label %27, label %14, !llvm.loop !91

27:                                               ; preds = %23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @start_of_epilogue_needs, ptr noundef nonnull align 8 dereferenceable(16) @end_of_function_needs, i64 16, i1 false), !tbaa.struct !48
  br label %28

28:                                               ; preds = %32, %27
  %29 = phi ptr [ %0, %27 ], [ %30, %32 ]
  %30 = tail call ptr @next_nonnote_insn(ptr noundef %29) #13
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  tail call void @mark_set_resources(ptr noundef nonnull %30, ptr noundef nonnull @end_of_function_needs, i32 noundef 0, i32 noundef 1) #14
  %33 = tail call fastcc zeroext i8 @return_insn_p(ptr noundef nonnull %30) #14, !range !49
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %28, label %35, !llvm.loop !92

35:                                               ; preds = %32, %28
  %36 = tail call ptr @xcalloc(i64 noundef 257, i64 noundef 8) #13
  store ptr %36, ptr @target_hash_table, align 8, !tbaa !23
  %37 = load ptr, ptr @cfun, align 8, !tbaa !23
  %38 = getelementptr inbounds %struct.function, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !54
  %40 = getelementptr inbounds %struct.control_flow_graph, ptr %39, i64 0, i32 5
  %41 = load i32, ptr %40, align 8, !tbaa !93
  %42 = sext i32 %41 to i64
  %43 = tail call ptr @xcalloc(i64 noundef %42, i64 noundef 4) #13
  store ptr %43, ptr @bb_ticks, align 8, !tbaa !23
  %44 = load ptr, ptr @cfun, align 8, !tbaa !23
  %45 = getelementptr inbounds %struct.function, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !54
  %47 = load ptr, ptr %46, align 8, !tbaa !70
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %47, i64 0, i32 6
  %49 = load ptr, ptr %48, align 8, !tbaa !71
  %50 = getelementptr inbounds %struct.control_flow_graph, ptr %46, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !94
  %52 = icmp eq ptr %49, %51
  br i1 %52, label %72, label %53

53:                                               ; preds = %35, %65
  %54 = phi ptr [ %66, %65 ], [ %46, %35 ]
  %55 = phi ptr [ %68, %65 ], [ %49, %35 ]
  %56 = getelementptr inbounds %struct.basic_block_def, ptr %55, i64 0, i32 7
  %57 = load ptr, ptr %56, align 8, !tbaa !6
  %58 = load ptr, ptr %57, align 8, !tbaa !58
  %59 = load i32, ptr %58, align 8
  %60 = and i32 %59, 65535
  %61 = icmp eq i32 %60, 12
  br i1 %61, label %62, label %65

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1, i32 0, i32 1
  store ptr %55, ptr %63, align 8, !tbaa !6
  %64 = load ptr, ptr %45, align 8, !tbaa !54
  br label %65

65:                                               ; preds = %53, %62
  %66 = phi ptr [ %54, %53 ], [ %64, %62 ]
  %67 = getelementptr inbounds %struct.basic_block_def, ptr %55, i64 0, i32 6
  %68 = load ptr, ptr %67, align 8, !tbaa !71
  %69 = getelementptr inbounds %struct.control_flow_graph, ptr %66, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !94
  %71 = icmp eq ptr %68, %70
  br i1 %71, label %72, label %53, !llvm.loop !95

72:                                               ; preds = %65, %35
  ret void
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_resource_info() local_unnamed_addr #0 {
  %1 = load ptr, ptr @target_hash_table, align 8, !tbaa !23
  %2 = icmp eq ptr %1, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %0, %14
  %4 = phi i64 [ %15, %14 ], [ 0, %0 ]
  %5 = load ptr, ptr @target_hash_table, align 8, !tbaa !23
  %6 = getelementptr inbounds ptr, ptr %5, i64 %4
  %7 = load ptr, ptr %6, align 8, !tbaa !23
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %3, %9
  %10 = phi ptr [ %12, %9 ], [ %7, %3 ]
  %11 = getelementptr inbounds %struct.target_info, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !65
  tail call void @free(ptr noundef nonnull %10) #14
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %9, !llvm.loop !96

14:                                               ; preds = %9, %3
  %15 = add nuw nsw i64 %4, 1
  %16 = icmp eq i64 %15, 257
  br i1 %16, label %17, label %3, !llvm.loop !97

17:                                               ; preds = %14
  %18 = load ptr, ptr @target_hash_table, align 8, !tbaa !23
  tail call void @free(ptr noundef %18) #14
  store ptr null, ptr @target_hash_table, align 8, !tbaa !23
  br label %19

19:                                               ; preds = %17, %0
  %20 = load ptr, ptr @bb_ticks, align 8, !tbaa !23
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void @free(ptr noundef nonnull %20) #14
  store ptr null, ptr @bb_ticks, align 8, !tbaa !23
  br label %23

23:                                               ; preds = %22, %19
  %24 = load ptr, ptr @cfun, align 8, !tbaa !23
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !54
  %27 = load ptr, ptr %26, align 8, !tbaa !70
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !71
  %30 = getelementptr inbounds %struct.control_flow_graph, ptr %26, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !94
  %32 = icmp eq ptr %29, %31
  br i1 %32, label %52, label %33

33:                                               ; preds = %23, %45
  %34 = phi ptr [ %46, %45 ], [ %26, %23 ]
  %35 = phi ptr [ %48, %45 ], [ %29, %23 ]
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !6
  %38 = load ptr, ptr %37, align 8, !tbaa !58
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 12
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %43, align 8, !tbaa !6
  %44 = load ptr, ptr %25, align 8, !tbaa !54
  br label %45

45:                                               ; preds = %33, %42
  %46 = phi ptr [ %34, %33 ], [ %44, %42 ]
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !71
  %49 = getelementptr inbounds %struct.control_flow_graph, ptr %46, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !94
  %51 = icmp eq ptr %48, %50
  br i1 %51, label %52, label %33, !llvm.loop !98

52:                                               ; preds = %45, %23
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @clear_hashed_info_for_insn(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = load ptr, ptr @target_hash_table, align 8, !tbaa !23
  %3 = icmp eq ptr %2, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !6
  %7 = srem i32 %6, 257
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %2, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !23
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %4, %16
  %13 = phi ptr [ %18, %16 ], [ %10, %4 ]
  %14 = load i32, ptr %13, align 8, !tbaa !50
  %15 = icmp eq i32 %14, %6
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.target_info, ptr %13, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !23
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %12, !llvm.loop !99

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.target_info, ptr %13, i64 0, i32 3
  store i32 -1, ptr %21, align 8, !tbaa !53
  br label %22

22:                                               ; preds = %16, %4, %20, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @incr_ticks_for_insn(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @compiler_params, align 8, !tbaa !23
  %3 = getelementptr inbounds %struct.param_info, ptr %2, i64 13, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !60
  %5 = tail call fastcc i32 @find_basic_block(ptr noundef %0, i32 noundef %4) #14
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr @bb_ticks, align 8, !tbaa !23
  %9 = sext i32 %5 to i64
  %10 = getelementptr inbounds i32, ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !63
  %12 = add nsw i32 %11, 1
  store i32 %12, ptr %10, align 4, !tbaa !63
  br label %13

13:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mark_end_of_function_resources(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  tail call void @mark_referenced_resources(ptr noundef %0, ptr noundef nonnull @end_of_function_needs, i8 noundef zeroext %1) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.and.v2i64(<2 x i64>) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind optsize }
attributes #14 = { optsize }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 8}
!10 = !{!"resources", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3, !11, i64 8}
!11 = !{!"long", !7, i64 0}
!12 = distinct !{!12, !13, !14, !15}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = !{!10, !7, i64 1}
!17 = !{!10, !7, i64 0}
!18 = !{!10, !7, i64 2}
!19 = !{!10, !7, i64 3}
!20 = !{!21, !22, i64 0}
!21 = !{!"rtvec_def", !22, i64 0, !7, i64 8}
!22 = !{!"int", !7, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"any pointer", !7, i64 0}
!25 = distinct !{!25, !13}
!26 = !{!27, !7, i64 477}
!27 = !{!"rtl_data", !28, i64 0, !29, i64 40, !30, i64 96, !31, i64 112, !33, i64 208, !34, i64 248, !22, i64 312, !24, i64 320, !24, i64 328, !24, i64 336, !24, i64 344, !24, i64 352, !24, i64 360, !24, i64 368, !24, i64 376, !24, i64 384, !24, i64 392, !11, i64 400, !24, i64 408, !24, i64 416, !24, i64 424, !22, i64 432, !22, i64 436, !22, i64 440, !22, i64 444, !22, i64 448, !22, i64 452, !24, i64 456, !7, i64 464, !7, i64 465, !7, i64 466, !7, i64 467, !7, i64 468, !7, i64 469, !7, i64 470, !7, i64 471, !7, i64 472, !7, i64 473, !7, i64 474, !7, i64 475, !7, i64 476, !7, i64 477, !7, i64 478, !7, i64 479, !7, i64 480, !7, i64 481, !7, i64 482, !7, i64 483, !7, i64 484, !7, i64 485}
!28 = !{!"expr_status", !22, i64 0, !22, i64 4, !22, i64 8, !24, i64 16, !24, i64 24, !24, i64 32}
!29 = !{!"emit_status", !22, i64 0, !22, i64 4, !24, i64 8, !24, i64 16, !24, i64 24, !22, i64 32, !22, i64 36, !22, i64 40, !22, i64 44, !24, i64 48}
!30 = !{!"varasm_status", !24, i64 0, !22, i64 8}
!31 = !{!"incoming_args", !22, i64 0, !22, i64 4, !22, i64 8, !24, i64 16, !32, i64 24, !24, i64 88}
!32 = !{!"ix86_args", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !22, i64 16, !22, i64 20, !22, i64 24, !22, i64 28, !22, i64 32, !22, i64 36, !22, i64 40, !22, i64 44, !22, i64 48, !22, i64 52, !22, i64 56, !22, i64 60}
!33 = !{!"function_subsections", !24, i64 0, !24, i64 8, !24, i64 16, !24, i64 24, !24, i64 32}
!34 = !{!"rtl_eh", !24, i64 0, !24, i64 8, !24, i64 16, !24, i64 24, !24, i64 32, !24, i64 40, !7, i64 48}
!35 = distinct !{!35, !13}
!36 = distinct !{!36, !13}
!37 = distinct !{!37, !13}
!38 = distinct !{!38, !13}
!39 = distinct !{!39, !13}
!40 = !{!11, !11, i64 0}
!41 = distinct !{!41, !13}
!42 = distinct !{!42, !13}
!43 = distinct !{!43, !13}
!44 = distinct !{!44, !13, !14, !15}
!45 = distinct !{!45, !13}
!46 = distinct !{!46, !13}
!47 = distinct !{!47, !13}
!48 = !{i64 0, i64 1, !6, i64 1, i64 1, !6, i64 2, i64 1, !6, i64 3, i64 1, !6, i64 8, i64 8, !40}
!49 = !{i8 0, i8 2}
!50 = !{!51, !22, i64 0}
!51 = !{!"target_info", !22, i64 0, !24, i64 8, !11, i64 16, !22, i64 24, !22, i64 28}
!52 = distinct !{!52, !13}
!53 = !{!51, !22, i64 24}
!54 = !{!55, !24, i64 8}
!55 = !{!"function", !24, i64 0, !24, i64 8, !24, i64 16, !24, i64 24, !24, i64 32, !24, i64 40, !24, i64 48, !24, i64 56, !24, i64 64, !24, i64 72, !24, i64 80, !24, i64 88, !24, i64 96, !22, i64 104, !22, i64 108, !22, i64 112, !22, i64 116, !22, i64 120, !22, i64 124, !24, i64 128, !22, i64 136, !22, i64 137, !22, i64 138, !22, i64 138, !22, i64 138, !22, i64 138, !22, i64 138, !22, i64 138, !22, i64 138, !22, i64 139, !22, i64 139, !22, i64 139, !22, i64 139, !22, i64 139, !22, i64 139, !22, i64 139}
!56 = !{!57, !24, i64 16}
!57 = !{!"control_flow_graph", !24, i64 0, !24, i64 8, !24, i64 16, !22, i64 24, !22, i64 28, !22, i64 32, !24, i64 40, !22, i64 48, !7, i64 52, !7, i64 60, !22, i64 68, !22, i64 72}
!58 = !{!59, !24, i64 0}
!59 = !{!"rtl_bb_info", !24, i64 0, !24, i64 8, !24, i64 16, !24, i64 24, !22, i64 32}
!60 = !{!61, !22, i64 8}
!61 = !{!"param_info", !24, i64 0, !22, i64 8, !7, i64 12, !22, i64 16, !22, i64 20, !24, i64 24}
!62 = !{!51, !22, i64 28}
!63 = !{!22, !22, i64 0}
!64 = !{!51, !11, i64 16}
!65 = !{!51, !24, i64 8}
!66 = !{!67, !22, i64 80}
!67 = !{!"basic_block_def", !24, i64 0, !24, i64 8, !24, i64 16, !24, i64 24, !7, i64 32, !24, i64 48, !24, i64 56, !7, i64 64, !11, i64 72, !22, i64 80, !22, i64 84, !22, i64 88, !22, i64 92, !22, i64 96}
!68 = !{!69, !24, i64 16}
!69 = !{!"df_lr_bb_info", !24, i64 0, !24, i64 8, !24, i64 16, !24, i64 24}
!70 = !{!57, !24, i64 0}
!71 = !{!67, !24, i64 56}
!72 = distinct !{!72, !13}
!73 = distinct !{!73, !13}
!74 = distinct !{!74, !13}
!75 = distinct !{!75, !13}
!76 = distinct !{!76, !13}
!77 = distinct !{!77, !13}
!78 = distinct !{!78, !13}
!79 = !{!80, !22, i64 16}
!80 = !{!"dataflow", !24, i64 0, !24, i64 8, !22, i64 16, !24, i64 24, !24, i64 32, !24, i64 40, !22, i64 48, !7, i64 52, !7, i64 53, !7, i64 54}
!81 = !{!80, !24, i64 8}
!82 = distinct !{!82, !13, !14, !15}
!83 = distinct !{!83, !13, !14, !15}
!84 = distinct !{!84, !13, !14, !15}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !13}
!87 = distinct !{!87, !13}
!88 = distinct !{!88, !13}
!89 = distinct !{!89, !13}
!90 = !{!27, !24, i64 320}
!91 = distinct !{!91, !13}
!92 = distinct !{!92, !13}
!93 = !{!57, !22, i64 32}
!94 = !{!57, !24, i64 8}
!95 = distinct !{!95, !13}
!96 = distinct !{!96, !13}
!97 = distinct !{!97, !13}
!98 = distinct !{!98, !13}
!99 = distinct !{!99, !13}
