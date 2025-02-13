; ModuleID = 'web.c'
source_filename = "web.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.df_base_ref = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.df_insn_info = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.web_entry = type { ptr, ptr, ptr }
%struct.df_link = type { ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.df_regular_ref = type { %struct.df_base_ref, ptr }

@.str = private unnamed_addr constant [4 x i8] c"web\00", align 1
@pass_web = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str, ptr @gate_handle_web, ptr @web_main, ptr null, ptr null, i32 0, i32 135, i32 0, i32 0, i32 0, i32 0, i32 132097 } }, align 8
@optimize = external local_unnamed_addr global i32, align 4
@flag_web = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@df = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Updating insn %i (%i->%i)\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Web oldreg=%i newreg=%i\0A\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @unionfind_root(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %4, %2 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %2, !llvm.loop !40

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !35
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %6, %9
  %10 = phi ptr [ %12, %9 ], [ %7, %6 ]
  %11 = phi ptr [ %10, %9 ], [ %0, %6 ]
  store ptr %3, ptr %11, align 8, !tbaa !35
  %12 = load ptr, ptr %10, align 8, !tbaa !35
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %9, !llvm.loop !42

14:                                               ; preds = %9, %6
  ret ptr %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @unionfind_union(ptr noundef %0, ptr noundef %1) #0 !prof !34 {
  %3 = tail call ptr @unionfind_root(ptr noundef %0) #7
  %4 = tail call ptr @unionfind_root(ptr noundef %1) #7
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  store ptr %3, ptr %4, align 8, !tbaa !35
  br label %7

7:                                                ; preds = %2, %6
  %8 = phi i8 [ 0, %6 ], [ 1, %2 ]
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @union_defs(ptr noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #1 !prof !34 {
  %6 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  %8 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = icmp eq ptr %7, null
  br i1 %10, label %179, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr %7, align 8, !tbaa !44
  %13 = getelementptr inbounds %struct.df_insn_info, ptr %7, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  %15 = getelementptr inbounds %struct.df_insn_info, ptr %7, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !48
  %17 = getelementptr inbounds %struct.df_insn_info, ptr %7, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !49
  %19 = load i32, ptr %12, align 8
  %20 = and i32 %19, 65535
  %21 = add nsw i32 %20, -7
  %22 = icmp ult i32 %21, 4
  br i1 %22, label %23, label %31

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !43
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 23
  br i1 %28, label %31, label %29

29:                                               ; preds = %23
  %30 = tail call ptr @single_set_2(ptr noundef nonnull %12, ptr noundef nonnull %25) #8
  br label %31

31:                                               ; preds = %11, %29, %23
  %32 = phi ptr [ %30, %29 ], [ null, %11 ], [ %25, %23 ]
  %33 = icmp eq ptr %14, null
  br i1 %33, label %78, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr %14, align 8, !tbaa !50
  %36 = icmp eq ptr %35, null
  br i1 %36, label %78, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 1
  %39 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 7
  br label %40

40:                                               ; preds = %37, %74
  %41 = phi ptr [ %35, %37 ], [ %76, %74 ]
  %42 = phi ptr [ %14, %37 ], [ %75, %74 ]
  %43 = icmp eq ptr %41, %0
  br i1 %43, label %74, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr %38, align 8, !tbaa !43
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 65535
  %48 = icmp eq i32 %47, 39
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !43
  br label %52

52:                                               ; preds = %44, %49
  %53 = phi ptr [ %51, %49 ], [ %45, %44 ]
  %54 = getelementptr inbounds %struct.df_base_ref, ptr %41, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !43
  %56 = load i32, ptr %55, align 8
  %57 = and i32 %56, 65535
  %58 = icmp eq i32 %57, 39
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !43
  br label %62

62:                                               ; preds = %52, %59
  %63 = phi ptr [ %61, %59 ], [ %55, %52 ]
  %64 = icmp eq ptr %53, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %62
  %66 = load i32, ptr %39, align 4, !tbaa !43
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.web_entry, ptr %3, i64 %67
  %69 = getelementptr inbounds %struct.df_base_ref, ptr %41, i64 0, i32 7
  %70 = load i32, ptr %69, align 4, !tbaa !43
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.web_entry, ptr %3, i64 %71
  %73 = tail call zeroext i8 %4(ptr noundef %68, ptr noundef %72) #8
  br label %74

74:                                               ; preds = %65, %62, %40
  %75 = getelementptr inbounds ptr, ptr %42, i64 1
  %76 = load ptr, ptr %75, align 8, !tbaa !50
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %40, !llvm.loop !51

78:                                               ; preds = %74, %34, %31
  %79 = icmp eq ptr %16, null
  br i1 %79, label %124, label %80

80:                                               ; preds = %78
  %81 = load ptr, ptr %16, align 8, !tbaa !50
  %82 = icmp eq ptr %81, null
  br i1 %82, label %124, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 1
  %85 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 7
  br label %86

86:                                               ; preds = %83, %120
  %87 = phi ptr [ %81, %83 ], [ %122, %120 ]
  %88 = phi ptr [ %16, %83 ], [ %121, %120 ]
  %89 = icmp eq ptr %87, %0
  br i1 %89, label %120, label %90

90:                                               ; preds = %86
  %91 = load ptr, ptr %84, align 8, !tbaa !43
  %92 = load i32, ptr %91, align 8
  %93 = and i32 %92, 65535
  %94 = icmp eq i32 %93, 39
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !43
  br label %98

98:                                               ; preds = %90, %95
  %99 = phi ptr [ %97, %95 ], [ %91, %90 ]
  %100 = getelementptr inbounds %struct.df_base_ref, ptr %87, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !43
  %102 = load i32, ptr %101, align 8
  %103 = and i32 %102, 65535
  %104 = icmp eq i32 %103, 39
  br i1 %104, label %105, label %108

105:                                              ; preds = %98
  %106 = getelementptr inbounds %struct.rtx_def, ptr %101, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !43
  br label %108

108:                                              ; preds = %98, %105
  %109 = phi ptr [ %107, %105 ], [ %101, %98 ]
  %110 = icmp eq ptr %99, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %108
  %112 = load i32, ptr %85, align 4, !tbaa !43
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.web_entry, ptr %3, i64 %113
  %115 = getelementptr inbounds %struct.df_base_ref, ptr %87, i64 0, i32 7
  %116 = load i32, ptr %115, align 4, !tbaa !43
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.web_entry, ptr %3, i64 %117
  %119 = tail call zeroext i8 %4(ptr noundef %114, ptr noundef %118) #8
  br label %120

120:                                              ; preds = %111, %108, %86
  %121 = getelementptr inbounds ptr, ptr %88, i64 1
  %122 = load ptr, ptr %121, align 8, !tbaa !50
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %86, !llvm.loop !52

124:                                              ; preds = %120, %80, %78
  %125 = icmp eq ptr %32, null
  br i1 %125, label %179, label %126

126:                                              ; preds = %124
  %127 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1, i32 0, i32 0, i64 1
  %128 = load ptr, ptr %127, align 8, !tbaa !43
  %129 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !43
  %131 = icmp eq ptr %128, %130
  br i1 %131, label %132, label %179

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !43
  %135 = icmp eq ptr %128, %134
  %136 = icmp ne ptr %18, null
  %137 = select i1 %135, i1 %136, i1 false
  br i1 %137, label %138, label %179

138:                                              ; preds = %132
  %139 = load ptr, ptr %18, align 8, !tbaa !50
  %140 = icmp eq ptr %139, null
  br i1 %140, label %179, label %141

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 7
  br label %143

143:                                              ; preds = %141, %175
  %144 = phi ptr [ %139, %141 ], [ %177, %175 ]
  %145 = phi ptr [ %18, %141 ], [ %176, %175 ]
  %146 = load ptr, ptr %129, align 8, !tbaa !43
  %147 = load i32, ptr %146, align 8
  %148 = and i32 %147, 65535
  %149 = icmp eq i32 %148, 39
  br i1 %149, label %150, label %153

150:                                              ; preds = %143
  %151 = getelementptr inbounds %struct.rtx_def, ptr %146, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !43
  br label %153

153:                                              ; preds = %143, %150
  %154 = phi ptr [ %152, %150 ], [ %146, %143 ]
  %155 = getelementptr inbounds %struct.df_base_ref, ptr %144, i64 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !43
  %157 = load i32, ptr %156, align 8
  %158 = and i32 %157, 65535
  %159 = icmp eq i32 %158, 39
  br i1 %159, label %160, label %163

160:                                              ; preds = %153
  %161 = getelementptr inbounds %struct.rtx_def, ptr %156, i64 0, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !43
  br label %163

163:                                              ; preds = %153, %160
  %164 = phi ptr [ %162, %160 ], [ %156, %153 ]
  %165 = icmp eq ptr %154, %164
  br i1 %165, label %166, label %175

166:                                              ; preds = %163
  %167 = load i32, ptr %142, align 4, !tbaa !43
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.web_entry, ptr %3, i64 %168
  %170 = getelementptr inbounds %struct.df_base_ref, ptr %144, i64 0, i32 7
  %171 = load i32, ptr %170, align 4, !tbaa !43
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.web_entry, ptr %1, i64 %172
  %174 = tail call zeroext i8 %4(ptr noundef %169, ptr noundef %173) #8
  br label %175

175:                                              ; preds = %166, %163
  %176 = getelementptr inbounds ptr, ptr %145, i64 1
  %177 = load ptr, ptr %176, align 8, !tbaa !50
  %178 = icmp eq ptr %177, null
  br i1 %178, label %179, label %143, !llvm.loop !53

179:                                              ; preds = %175, %138, %5, %132, %126, %124
  %180 = icmp eq ptr %9, null
  br i1 %180, label %181, label %208

181:                                              ; preds = %179
  %182 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 1
  %183 = load ptr, ptr %182, align 8, !tbaa !43
  %184 = load i32, ptr %183, align 8
  %185 = and i32 %184, 65535
  %186 = icmp eq i32 %185, 39
  br i1 %186, label %187, label %190

187:                                              ; preds = %181
  %188 = getelementptr inbounds %struct.rtx_def, ptr %183, i64 0, i32 1
  %189 = load ptr, ptr %188, align 8, !tbaa !43
  br label %190

190:                                              ; preds = %181, %187
  %191 = phi ptr [ %189, %187 ], [ %183, %181 ]
  %192 = tail call fastcc i32 @rhs_regno(ptr noundef %191) #7
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, ptr %2, i64 %193
  %195 = load i32, ptr %194, align 4, !tbaa !54
  %196 = icmp eq i32 %195, 0
  %197 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 7
  %198 = load i32, ptr %197, align 4, !tbaa !43
  br i1 %196, label %206, label %199

199:                                              ; preds = %190
  %200 = sext i32 %198 to i64
  %201 = getelementptr inbounds %struct.web_entry, ptr %3, i64 %200
  %202 = zext i32 %195 to i64
  %203 = getelementptr inbounds %struct.web_entry, ptr %3, i64 %202
  %204 = getelementptr inbounds %struct.web_entry, ptr %203, i64 -2
  %205 = tail call zeroext i8 %4(ptr noundef %201, ptr noundef nonnull %204) #8
  br label %224

206:                                              ; preds = %190
  %207 = add nsw i32 %198, 2
  store i32 %207, ptr %194, align 4, !tbaa !54
  br label %224

208:                                              ; preds = %179
  %209 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 7
  br label %210

210:                                              ; preds = %208, %210
  %211 = phi ptr [ %9, %208 ], [ %222, %210 ]
  %212 = load i32, ptr %209, align 4, !tbaa !43
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.web_entry, ptr %3, i64 %213
  %215 = load ptr, ptr %211, align 8, !tbaa !55
  %216 = getelementptr inbounds %struct.df_base_ref, ptr %215, i64 0, i32 7
  %217 = load i32, ptr %216, align 4, !tbaa !43
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.web_entry, ptr %1, i64 %218
  %220 = tail call zeroext i8 %4(ptr noundef %214, ptr noundef %219) #8
  %221 = getelementptr inbounds %struct.df_link, ptr %211, i64 0, i32 1
  %222 = load ptr, ptr %221, align 8, !tbaa !57
  %223 = icmp eq ptr %222, null
  br i1 %223, label %224, label %210, !llvm.loop !58

224:                                              ; preds = %210, %206, %199
  %225 = load i32, ptr %0, align 8
  %226 = and i32 %225, 2097152
  %227 = icmp eq i32 %226, 0
  %228 = or i1 %10, %227
  br i1 %228, label %275, label %229

229:                                              ; preds = %224
  %230 = getelementptr inbounds %struct.df_insn_info, ptr %7, i64 0, i32 1
  %231 = load ptr, ptr %230, align 8, !tbaa !49
  %232 = icmp eq ptr %231, null
  br i1 %232, label %275, label %233

233:                                              ; preds = %229
  %234 = load ptr, ptr %231, align 8, !tbaa !50
  %235 = icmp eq ptr %234, null
  br i1 %235, label %275, label %236

236:                                              ; preds = %233
  %237 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 1
  %238 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 7
  br label %239

239:                                              ; preds = %236, %271
  %240 = phi ptr [ %234, %236 ], [ %273, %271 ]
  %241 = phi ptr [ %231, %236 ], [ %272, %271 ]
  %242 = getelementptr inbounds %struct.df_base_ref, ptr %240, i64 0, i32 1
  %243 = load ptr, ptr %242, align 8, !tbaa !43
  %244 = load i32, ptr %243, align 8
  %245 = and i32 %244, 65535
  %246 = icmp eq i32 %245, 39
  br i1 %246, label %247, label %250

247:                                              ; preds = %239
  %248 = getelementptr inbounds %struct.rtx_def, ptr %243, i64 0, i32 1
  %249 = load ptr, ptr %248, align 8, !tbaa !43
  br label %250

250:                                              ; preds = %239, %247
  %251 = phi ptr [ %249, %247 ], [ %243, %239 ]
  %252 = load ptr, ptr %237, align 8, !tbaa !43
  %253 = load i32, ptr %252, align 8
  %254 = and i32 %253, 65535
  %255 = icmp eq i32 %254, 39
  br i1 %255, label %256, label %259

256:                                              ; preds = %250
  %257 = getelementptr inbounds %struct.rtx_def, ptr %252, i64 0, i32 1
  %258 = load ptr, ptr %257, align 8, !tbaa !43
  br label %259

259:                                              ; preds = %250, %256
  %260 = phi ptr [ %258, %256 ], [ %252, %250 ]
  %261 = icmp eq ptr %251, %260
  br i1 %261, label %262, label %271

262:                                              ; preds = %259
  %263 = load i32, ptr %238, align 4, !tbaa !43
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.web_entry, ptr %3, i64 %264
  %266 = getelementptr inbounds %struct.df_base_ref, ptr %240, i64 0, i32 7
  %267 = load i32, ptr %266, align 4, !tbaa !43
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.web_entry, ptr %1, i64 %268
  %270 = tail call zeroext i8 %4(ptr noundef %265, ptr noundef %269) #8
  br label %271

271:                                              ; preds = %262, %259
  %272 = getelementptr inbounds ptr, ptr %241, i64 1
  %273 = load ptr, ptr %272, align 8, !tbaa !50
  %274 = icmp eq ptr %273, null
  br i1 %274, label %275, label %239, !llvm.loop !59

275:                                              ; preds = %271, %233, %224, %229
  ret void
}

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !34 !PGOFuncName !60 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !43
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_handle_web() #4 !prof !61 !PGOFuncName !62 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !54
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_web, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false, !prof !63
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @web_main() #1 !prof !34 !PGOFuncName !64 {
  %1 = tail call i32 @max_reg_num() #8
  %2 = tail call i32 @df_set_flags(i32 noundef 6) #8
  tail call void @df_chain_add_problem(i32 noundef 2) #8
  tail call void @df_analyze() #8
  %3 = tail call i32 @df_set_flags(i32 noundef 32) #8
  %4 = load ptr, ptr @cfun, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = icmp eq ptr %7, null
  %9 = load ptr, ptr @df, align 8
  br i1 %8, label %97, label %10

10:                                               ; preds = %0
  %11 = getelementptr inbounds %struct.df, ptr %9, i64 0, i32 10
  br label %12

12:                                               ; preds = %10, %90
  %13 = phi ptr [ %7, %10 ], [ %93, %90 ]
  %14 = phi i32 [ 0, %10 ], [ %91, %90 ]
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !43
  %17 = load ptr, ptr %16, align 8, !tbaa !43
  %18 = icmp eq ptr %17, null
  br i1 %18, label %90, label %19

19:                                               ; preds = %12, %85
  %20 = phi ptr [ %88, %85 ], [ %17, %12 ]
  %21 = phi i32 [ %86, %85 ], [ %14, %12 ]
  %22 = load ptr, ptr %15, align 8, !tbaa !43
  %23 = getelementptr inbounds %struct.rtl_bb_info, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !67
  %25 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1, i32 0, i32 0, i64 2
  %26 = load ptr, ptr %25, align 8, !tbaa !43
  %27 = icmp eq ptr %20, %26
  br i1 %27, label %90, label %28

28:                                               ; preds = %19
  %29 = load i32, ptr %20, align 8
  %30 = and i32 %29, 65535
  %31 = add nsw i32 %30, -11
  %32 = icmp ult i32 %31, -3
  br i1 %32, label %85, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !43
  %36 = load ptr, ptr %11, align 8, !tbaa !69
  %37 = zext i32 %35 to i64
  %38 = getelementptr inbounds ptr, ptr %36, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !50
  %40 = getelementptr inbounds %struct.df_insn_info, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !47
  %42 = load ptr, ptr %41, align 8, !tbaa !50
  %43 = icmp eq ptr %42, null
  br i1 %43, label %63, label %44

44:                                               ; preds = %33, %54
  %45 = phi ptr [ %57, %54 ], [ %42, %33 ]
  %46 = phi i32 [ %55, %54 ], [ %21, %33 ]
  %47 = phi ptr [ %56, %54 ], [ %41, %33 ]
  %48 = getelementptr inbounds %struct.df_base_ref, ptr %45, i64 0, i32 6
  %49 = load i32, ptr %48, align 8, !tbaa !43
  %50 = icmp ugt i32 %49, 52
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = add i32 %46, 1
  %53 = getelementptr inbounds %struct.df_base_ref, ptr %45, i64 0, i32 7
  store i32 %46, ptr %53, align 4, !tbaa !43
  br label %54

54:                                               ; preds = %51, %44
  %55 = phi i32 [ %52, %51 ], [ %46, %44 ]
  %56 = getelementptr inbounds ptr, ptr %47, i64 1
  %57 = load ptr, ptr %56, align 8, !tbaa !50
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %44, !llvm.loop !72

59:                                               ; preds = %54
  %60 = load ptr, ptr %11, align 8, !tbaa !69
  %61 = getelementptr inbounds ptr, ptr %60, i64 %37
  %62 = load ptr, ptr %61, align 8, !tbaa !50
  br label %63

63:                                               ; preds = %59, %33
  %64 = phi ptr [ %39, %33 ], [ %62, %59 ]
  %65 = phi i32 [ %21, %33 ], [ %55, %59 ]
  %66 = getelementptr inbounds %struct.df_insn_info, ptr %64, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !48
  %68 = load ptr, ptr %67, align 8, !tbaa !50
  %69 = icmp eq ptr %68, null
  br i1 %69, label %85, label %70

70:                                               ; preds = %63, %80
  %71 = phi ptr [ %83, %80 ], [ %68, %63 ]
  %72 = phi i32 [ %81, %80 ], [ %65, %63 ]
  %73 = phi ptr [ %82, %80 ], [ %67, %63 ]
  %74 = getelementptr inbounds %struct.df_base_ref, ptr %71, i64 0, i32 6
  %75 = load i32, ptr %74, align 8, !tbaa !43
  %76 = icmp ugt i32 %75, 52
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = add i32 %72, 1
  %79 = getelementptr inbounds %struct.df_base_ref, ptr %71, i64 0, i32 7
  store i32 %72, ptr %79, align 4, !tbaa !43
  br label %80

80:                                               ; preds = %77, %70
  %81 = phi i32 [ %78, %77 ], [ %72, %70 ]
  %82 = getelementptr inbounds ptr, ptr %73, i64 1
  %83 = load ptr, ptr %82, align 8, !tbaa !50
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %70, !llvm.loop !73

85:                                               ; preds = %80, %63, %28
  %86 = phi i32 [ %21, %28 ], [ %65, %63 ], [ %81, %80 ]
  %87 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 2
  %88 = load ptr, ptr %87, align 8, !tbaa !43
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %19, !llvm.loop !74

90:                                               ; preds = %85, %19, %12
  %91 = phi i32 [ %14, %12 ], [ %21, %19 ], [ %86, %85 ]
  %92 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 6
  %93 = load ptr, ptr %92, align 8, !tbaa !50
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %12, !llvm.loop !75

95:                                               ; preds = %90
  %96 = zext i32 %91 to i64
  br label %97

97:                                               ; preds = %95, %0
  %98 = phi i64 [ 0, %0 ], [ %96, %95 ]
  %99 = getelementptr inbounds %struct.df, ptr %9, i64 0, i32 3, i32 4
  %100 = load i32, ptr %99, align 4, !tbaa !76
  %101 = zext i32 %100 to i64
  %102 = tail call ptr @xcalloc(i64 noundef %101, i64 noundef 24) #8
  %103 = zext i32 %1 to i64
  %104 = tail call ptr @xcalloc(i64 noundef %103, i64 noundef 4) #8
  %105 = tail call ptr @xcalloc(i64 noundef %98, i64 noundef 24) #8
  %106 = load ptr, ptr @cfun, align 8, !tbaa !50
  %107 = getelementptr inbounds %struct.function, ptr %106, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !65
  %109 = load ptr, ptr %108, align 8, !tbaa !50
  %110 = icmp eq ptr %109, null
  br i1 %110, label %303, label %111

111:                                              ; preds = %97, %181
  %112 = phi ptr [ %183, %181 ], [ %109, %97 ]
  %113 = getelementptr inbounds %struct.basic_block_def, ptr %112, i64 0, i32 7
  %114 = load ptr, ptr %113, align 8, !tbaa !43
  %115 = load ptr, ptr %114, align 8, !tbaa !43
  %116 = icmp eq ptr %115, null
  br i1 %116, label %181, label %117

117:                                              ; preds = %111, %177
  %118 = phi ptr [ %179, %177 ], [ %115, %111 ]
  %119 = load ptr, ptr %113, align 8, !tbaa !43
  %120 = getelementptr inbounds %struct.rtl_bb_info, ptr %119, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !67
  %122 = getelementptr inbounds %struct.rtx_def, ptr %121, i64 0, i32 1, i32 0, i32 0, i64 2
  %123 = load ptr, ptr %122, align 8, !tbaa !43
  %124 = icmp eq ptr %118, %123
  br i1 %124, label %181, label %125

125:                                              ; preds = %117
  %126 = load i32, ptr %118, align 8
  %127 = and i32 %126, 65535
  %128 = add nsw i32 %127, -11
  %129 = icmp ult i32 %128, -3
  br i1 %129, label %177, label %130

130:                                              ; preds = %125
  %131 = getelementptr inbounds %struct.rtx_def, ptr %118, i64 0, i32 1
  %132 = load i32, ptr %131, align 8, !tbaa !43
  %133 = load ptr, ptr @df, align 8, !tbaa !50
  %134 = getelementptr inbounds %struct.df, ptr %133, i64 0, i32 10
  %135 = load ptr, ptr %134, align 8, !tbaa !69
  %136 = zext i32 %132 to i64
  %137 = getelementptr inbounds ptr, ptr %135, i64 %136
  %138 = load ptr, ptr %137, align 8, !tbaa !50
  %139 = getelementptr inbounds %struct.df_insn_info, ptr %138, i64 0, i32 2
  %140 = load ptr, ptr %139, align 8, !tbaa !47
  %141 = load ptr, ptr %140, align 8, !tbaa !50
  %142 = icmp eq ptr %141, null
  br i1 %142, label %160, label %143

143:                                              ; preds = %130, %150
  %144 = phi ptr [ %152, %150 ], [ %141, %130 ]
  %145 = phi ptr [ %151, %150 ], [ %140, %130 ]
  %146 = getelementptr inbounds %struct.df_base_ref, ptr %144, i64 0, i32 6
  %147 = load i32, ptr %146, align 8, !tbaa !43
  %148 = icmp ugt i32 %147, 52
  br i1 %148, label %149, label %150

149:                                              ; preds = %143
  tail call void @union_defs(ptr noundef nonnull %144, ptr noundef %102, ptr noundef %104, ptr noundef %105, ptr noundef nonnull @unionfind_union) #7
  br label %150

150:                                              ; preds = %149, %143
  %151 = getelementptr inbounds ptr, ptr %145, i64 1
  %152 = load ptr, ptr %151, align 8, !tbaa !50
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %143, !llvm.loop !77

154:                                              ; preds = %150
  %155 = load ptr, ptr @df, align 8, !tbaa !50
  %156 = getelementptr inbounds %struct.df, ptr %155, i64 0, i32 10
  %157 = load ptr, ptr %156, align 8, !tbaa !69
  %158 = getelementptr inbounds ptr, ptr %157, i64 %136
  %159 = load ptr, ptr %158, align 8, !tbaa !50
  br label %160

160:                                              ; preds = %154, %130
  %161 = phi ptr [ %159, %154 ], [ %138, %130 ]
  %162 = getelementptr inbounds %struct.df_insn_info, ptr %161, i64 0, i32 3
  %163 = load ptr, ptr %162, align 8, !tbaa !48
  %164 = load ptr, ptr %163, align 8, !tbaa !50
  %165 = icmp eq ptr %164, null
  br i1 %165, label %177, label %166

166:                                              ; preds = %160, %173
  %167 = phi ptr [ %175, %173 ], [ %164, %160 ]
  %168 = phi ptr [ %174, %173 ], [ %163, %160 ]
  %169 = getelementptr inbounds %struct.df_base_ref, ptr %167, i64 0, i32 6
  %170 = load i32, ptr %169, align 8, !tbaa !43
  %171 = icmp ugt i32 %170, 52
  br i1 %171, label %172, label %173

172:                                              ; preds = %166
  tail call void @union_defs(ptr noundef nonnull %167, ptr noundef %102, ptr noundef %104, ptr noundef %105, ptr noundef nonnull @unionfind_union) #7
  br label %173

173:                                              ; preds = %172, %166
  %174 = getelementptr inbounds ptr, ptr %168, i64 1
  %175 = load ptr, ptr %174, align 8, !tbaa !50
  %176 = icmp eq ptr %175, null
  br i1 %176, label %177, label %166, !llvm.loop !78

177:                                              ; preds = %173, %160, %125
  %178 = getelementptr inbounds %struct.rtx_def, ptr %118, i64 0, i32 1, i32 0, i32 0, i64 2
  %179 = load ptr, ptr %178, align 8, !tbaa !43
  %180 = icmp eq ptr %179, null
  br i1 %180, label %181, label %117, !llvm.loop !79

181:                                              ; preds = %177, %117, %111
  %182 = getelementptr inbounds %struct.basic_block_def, ptr %112, i64 0, i32 6
  %183 = load ptr, ptr %182, align 8, !tbaa !50
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %111, !llvm.loop !80

185:                                              ; preds = %181
  %186 = load ptr, ptr @cfun, align 8, !tbaa !50
  %187 = getelementptr inbounds %struct.function, ptr %186, i64 0, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !65
  %189 = load ptr, ptr %188, align 8, !tbaa !50
  %190 = icmp eq ptr %189, null
  br i1 %190, label %303, label %191

191:                                              ; preds = %185, %299
  %192 = phi ptr [ %301, %299 ], [ %189, %185 ]
  %193 = getelementptr inbounds %struct.basic_block_def, ptr %192, i64 0, i32 7
  %194 = load ptr, ptr %193, align 8, !tbaa !43
  %195 = load ptr, ptr %194, align 8, !tbaa !43
  %196 = icmp eq ptr %195, null
  br i1 %196, label %299, label %197

197:                                              ; preds = %191, %295
  %198 = phi ptr [ %297, %295 ], [ %195, %191 ]
  %199 = load ptr, ptr %193, align 8, !tbaa !43
  %200 = getelementptr inbounds %struct.rtl_bb_info, ptr %199, i64 0, i32 1
  %201 = load ptr, ptr %200, align 8, !tbaa !67
  %202 = getelementptr inbounds %struct.rtx_def, ptr %201, i64 0, i32 1, i32 0, i32 0, i64 2
  %203 = load ptr, ptr %202, align 8, !tbaa !43
  %204 = icmp eq ptr %198, %203
  br i1 %204, label %299, label %205

205:                                              ; preds = %197
  %206 = load i32, ptr %198, align 8
  %207 = and i32 %206, 65535
  %208 = add nsw i32 %207, -11
  %209 = icmp ult i32 %208, -3
  br i1 %209, label %295, label %210

210:                                              ; preds = %205
  %211 = getelementptr inbounds %struct.rtx_def, ptr %198, i64 0, i32 1
  %212 = load i32, ptr %211, align 8, !tbaa !43
  %213 = load ptr, ptr @df, align 8, !tbaa !50
  %214 = getelementptr inbounds %struct.df, ptr %213, i64 0, i32 10
  %215 = load ptr, ptr %214, align 8, !tbaa !69
  %216 = zext i32 %212 to i64
  %217 = getelementptr inbounds ptr, ptr %215, i64 %216
  %218 = load ptr, ptr %217, align 8, !tbaa !50
  %219 = getelementptr inbounds %struct.df_insn_info, ptr %218, i64 0, i32 2
  %220 = load ptr, ptr %219, align 8, !tbaa !47
  %221 = load ptr, ptr %220, align 8, !tbaa !50
  %222 = icmp eq ptr %221, null
  br i1 %222, label %245, label %223

223:                                              ; preds = %210, %235
  %224 = phi ptr [ %237, %235 ], [ %221, %210 ]
  %225 = phi ptr [ %236, %235 ], [ %220, %210 ]
  %226 = getelementptr inbounds %struct.df_base_ref, ptr %224, i64 0, i32 6
  %227 = load i32, ptr %226, align 8, !tbaa !43
  %228 = icmp ugt i32 %227, 52
  br i1 %228, label %229, label %235

229:                                              ; preds = %223
  %230 = getelementptr inbounds %struct.df_base_ref, ptr %224, i64 0, i32 7
  %231 = load i32, ptr %230, align 4, !tbaa !43
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.web_entry, ptr %105, i64 %232
  %234 = tail call fastcc ptr @entry_register(ptr noundef %233, ptr noundef nonnull %224, ptr noundef %104) #7
  tail call fastcc void @replace_ref(ptr noundef nonnull %224, ptr noundef %234) #7
  br label %235

235:                                              ; preds = %229, %223
  %236 = getelementptr inbounds ptr, ptr %225, i64 1
  %237 = load ptr, ptr %236, align 8, !tbaa !50
  %238 = icmp eq ptr %237, null
  br i1 %238, label %239, label %223, !llvm.loop !81

239:                                              ; preds = %235
  %240 = load ptr, ptr @df, align 8, !tbaa !50
  %241 = getelementptr inbounds %struct.df, ptr %240, i64 0, i32 10
  %242 = load ptr, ptr %241, align 8, !tbaa !69
  %243 = getelementptr inbounds ptr, ptr %242, i64 %216
  %244 = load ptr, ptr %243, align 8, !tbaa !50
  br label %245

245:                                              ; preds = %239, %210
  %246 = phi ptr [ %244, %239 ], [ %218, %210 ]
  %247 = getelementptr inbounds %struct.df_insn_info, ptr %246, i64 0, i32 3
  %248 = load ptr, ptr %247, align 8, !tbaa !48
  %249 = load ptr, ptr %248, align 8, !tbaa !50
  %250 = icmp eq ptr %249, null
  br i1 %250, label %273, label %251

251:                                              ; preds = %245, %263
  %252 = phi ptr [ %265, %263 ], [ %249, %245 ]
  %253 = phi ptr [ %264, %263 ], [ %248, %245 ]
  %254 = getelementptr inbounds %struct.df_base_ref, ptr %252, i64 0, i32 6
  %255 = load i32, ptr %254, align 8, !tbaa !43
  %256 = icmp ugt i32 %255, 52
  br i1 %256, label %257, label %263

257:                                              ; preds = %251
  %258 = getelementptr inbounds %struct.df_base_ref, ptr %252, i64 0, i32 7
  %259 = load i32, ptr %258, align 4, !tbaa !43
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.web_entry, ptr %105, i64 %260
  %262 = tail call fastcc ptr @entry_register(ptr noundef %261, ptr noundef nonnull %252, ptr noundef %104) #7
  tail call fastcc void @replace_ref(ptr noundef nonnull %252, ptr noundef %262) #7
  br label %263

263:                                              ; preds = %257, %251
  %264 = getelementptr inbounds ptr, ptr %253, i64 1
  %265 = load ptr, ptr %264, align 8, !tbaa !50
  %266 = icmp eq ptr %265, null
  br i1 %266, label %267, label %251, !llvm.loop !82

267:                                              ; preds = %263
  %268 = load ptr, ptr @df, align 8, !tbaa !50
  %269 = getelementptr inbounds %struct.df, ptr %268, i64 0, i32 10
  %270 = load ptr, ptr %269, align 8, !tbaa !69
  %271 = getelementptr inbounds ptr, ptr %270, i64 %216
  %272 = load ptr, ptr %271, align 8, !tbaa !50
  br label %273

273:                                              ; preds = %267, %245
  %274 = phi ptr [ %272, %267 ], [ %246, %245 ]
  %275 = getelementptr inbounds %struct.df_insn_info, ptr %274, i64 0, i32 1
  %276 = load ptr, ptr %275, align 8, !tbaa !49
  %277 = load ptr, ptr %276, align 8, !tbaa !50
  %278 = icmp eq ptr %277, null
  br i1 %278, label %295, label %279

279:                                              ; preds = %273, %291
  %280 = phi ptr [ %293, %291 ], [ %277, %273 ]
  %281 = phi ptr [ %292, %291 ], [ %276, %273 ]
  %282 = getelementptr inbounds %struct.df_base_ref, ptr %280, i64 0, i32 6
  %283 = load i32, ptr %282, align 8, !tbaa !43
  %284 = icmp ugt i32 %283, 52
  br i1 %284, label %285, label %291

285:                                              ; preds = %279
  %286 = getelementptr inbounds %struct.df_base_ref, ptr %280, i64 0, i32 7
  %287 = load i32, ptr %286, align 4, !tbaa !43
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.web_entry, ptr %102, i64 %288
  %290 = tail call fastcc ptr @entry_register(ptr noundef %289, ptr noundef nonnull %280, ptr noundef %104) #7
  tail call fastcc void @replace_ref(ptr noundef nonnull %280, ptr noundef %290) #7
  br label %291

291:                                              ; preds = %285, %279
  %292 = getelementptr inbounds ptr, ptr %281, i64 1
  %293 = load ptr, ptr %292, align 8, !tbaa !50
  %294 = icmp eq ptr %293, null
  br i1 %294, label %295, label %279, !llvm.loop !83

295:                                              ; preds = %291, %273, %205
  %296 = getelementptr inbounds %struct.rtx_def, ptr %198, i64 0, i32 1, i32 0, i32 0, i64 2
  %297 = load ptr, ptr %296, align 8, !tbaa !43
  %298 = icmp eq ptr %297, null
  br i1 %298, label %299, label %197, !llvm.loop !84

299:                                              ; preds = %295, %197, %191
  %300 = getelementptr inbounds %struct.basic_block_def, ptr %192, i64 0, i32 6
  %301 = load ptr, ptr %300, align 8, !tbaa !50
  %302 = icmp eq ptr %301, null
  br i1 %302, label %303, label %191, !llvm.loop !85

303:                                              ; preds = %299, %97, %185
  tail call void @free(ptr noundef %102) #7
  tail call void @free(ptr noundef %105) #7
  tail call void @free(ptr noundef %104) #7
  ret i32 0
}

; Function Attrs: optsize
declare i32 @max_reg_num() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @df_set_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_chain_add_problem(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_analyze() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @replace_ref(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #1 !prof !34 !PGOFuncName !86 {
  %3 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 39
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  br label %11

11:                                               ; preds = %2, %8
  %12 = phi ptr [ %10, %8 ], [ %4, %2 ]
  %13 = getelementptr inbounds %struct.df_regular_ref, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !43
  %15 = load ptr, ptr %14, align 8, !tbaa !50
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 39
  %19 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %20 = select i1 %18, ptr %19, ptr %14
  %21 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !43
  %23 = load ptr, ptr %22, align 8, !tbaa !44
  %24 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !43
  %26 = icmp eq ptr %12, %1
  br i1 %26, label %38, label %27

27:                                               ; preds = %11
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !50
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = tail call fastcc i32 @rhs_regno(ptr noundef %12) #7
  %32 = tail call fastcc i32 @rhs_regno(ptr noundef %1) #7
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %28, ptr noundef nonnull @.str.1, i32 noundef %25, i32 noundef %31, i32 noundef %32) #7
  br label %34

34:                                               ; preds = %30, %27
  store ptr %1, ptr %20, align 8, !tbaa !50
  %35 = load ptr, ptr %21, align 8, !tbaa !43
  %36 = load ptr, ptr %35, align 8, !tbaa !44
  %37 = tail call zeroext i8 @df_insn_rescan(ptr noundef %36) #8
  br label %38

38:                                               ; preds = %11, %34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @entry_register(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #1 !prof !34 !PGOFuncName !87 {
  %4 = tail call ptr @unionfind_root(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.web_entry, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %50

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.df_base_ref, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 39
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !43
  br label %17

17:                                               ; preds = %8, %14
  %18 = phi ptr [ %16, %14 ], [ %10, %8 ]
  %19 = tail call fastcc i32 @rhs_regno(ptr noundef %18) #7
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, ptr %2, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !54
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  store i32 1, ptr %21, align 4, !tbaa !54
  br label %48

25:                                               ; preds = %17
  %26 = load i32, ptr %18, align 8
  %27 = lshr i32 %26, 16
  %28 = and i32 %27, 255
  %29 = tail call ptr @gen_reg_rtx(i32 noundef %28) #8
  %30 = load i32, ptr %18, align 8
  %31 = and i32 %30, 134217728
  %32 = load i32, ptr %29, align 8
  %33 = and i32 %32, -134217729
  %34 = or disjoint i32 %33, %31
  store i32 %34, ptr %29, align 8
  %35 = load i32, ptr %18, align 8
  %36 = and i32 %35, 1073741824
  %37 = and i32 %34, -1073741825
  %38 = or disjoint i32 %37, %36
  store i32 %38, ptr %29, align 8
  %39 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 2
  %40 = load ptr, ptr %39, align 8, !tbaa !43
  %41 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %40, ptr %41, align 8, !tbaa !43
  %42 = load ptr, ptr @dump_file, align 8, !tbaa !50
  %43 = icmp eq ptr %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %25
  %45 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %18) #7
  %46 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %29) #7
  %47 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %42, ptr noundef nonnull @.str.2, i32 noundef %45, i32 noundef %46) #7
  br label %48

48:                                               ; preds = %25, %44, %24
  %49 = phi ptr [ %18, %24 ], [ %29, %44 ], [ %29, %25 ]
  store ptr %49, ptr %5, align 8, !tbaa !88
  br label %50

50:                                               ; preds = %3, %48
  %51 = phi ptr [ %49, %48 ], [ %6, %3 ]
  ret ptr %51
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @df_insn_rescan(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_reg_rtx(i32 noundef) local_unnamed_addr #2

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !37, i64 0}
!36 = !{!"web_entry", !37, i64 0, !37, i64 8, !37, i64 16}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.mustprogress"}
!42 = distinct !{!42, !41}
!43 = !{!38, !38, i64 0}
!44 = !{!45, !37, i64 0}
!45 = !{!"df_insn_info", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !46, i64 40}
!46 = !{!"int", !38, i64 0}
!47 = !{!45, !37, i64 16}
!48 = !{!45, !37, i64 24}
!49 = !{!45, !37, i64 8}
!50 = !{!37, !37, i64 0}
!51 = distinct !{!51, !41}
!52 = distinct !{!52, !41}
!53 = distinct !{!53, !41}
!54 = !{!46, !46, i64 0}
!55 = !{!56, !37, i64 0}
!56 = !{!"df_link", !37, i64 0, !37, i64 8}
!57 = !{!56, !37, i64 8}
!58 = distinct !{!58, !41}
!59 = distinct !{!59, !41}
!60 = !{!"web.c:rhs_regno"}
!61 = !{!"function_entry_count", i64 38}
!62 = !{!"web.c:gate_handle_web"}
!63 = !{!"branch_weights", i32 39, i32 1}
!64 = !{!"web.c:web_main"}
!65 = !{!66, !37, i64 8}
!66 = !{!"function", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !46, i64 104, !46, i64 108, !46, i64 112, !46, i64 116, !46, i64 120, !46, i64 124, !37, i64 128, !46, i64 136, !46, i64 137, !46, i64 138, !46, i64 138, !46, i64 138, !46, i64 138, !46, i64 138, !46, i64 138, !46, i64 138, !46, i64 139, !46, i64 139, !46, i64 139, !46, i64 139, !46, i64 139, !46, i64 139, !46, i64 139}
!67 = !{!68, !37, i64 8}
!68 = !{!"rtl_bb_info", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !46, i64 32}
!69 = !{!70, !37, i64 248}
!70 = !{!"df", !38, i64 0, !38, i64 64, !37, i64 128, !71, i64 136, !71, i64 176, !37, i64 216, !37, i64 224, !37, i64 232, !46, i64 240, !46, i64 244, !37, i64 248, !46, i64 256, !46, i64 260, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !37, i64 312, !37, i64 320, !37, i64 328, !37, i64 336, !46, i64 344, !46, i64 348, !37, i64 352, !46, i64 360, !46, i64 364, !38, i64 365, !38, i64 366}
!71 = !{!"df_ref_info", !37, i64 0, !37, i64 8, !37, i64 16, !46, i64 24, !46, i64 28, !46, i64 32, !46, i64 36}
!72 = distinct !{!72, !41}
!73 = distinct !{!73, !41}
!74 = distinct !{!74, !41}
!75 = distinct !{!75, !41}
!76 = !{!70, !46, i64 164}
!77 = distinct !{!77, !41}
!78 = distinct !{!78, !41}
!79 = distinct !{!79, !41}
!80 = distinct !{!80, !41}
!81 = distinct !{!81, !41}
!82 = distinct !{!82, !41}
!83 = distinct !{!83, !41}
!84 = distinct !{!84, !41}
!85 = distinct !{!85, !41}
!86 = !{!"web.c:replace_ref"}
!87 = !{!"web.c:entry_register"}
!88 = !{!36, !37, i64 8}
