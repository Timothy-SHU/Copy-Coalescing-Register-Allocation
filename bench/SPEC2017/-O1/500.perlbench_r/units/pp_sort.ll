; ModuleID = 'pp_sort.c'
source_filename = "pp_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.off_runs = type { i64, i64 }
%struct.partition_stack_entry = type { i32, i32, i32 }
%struct.op = type { ptr, ptr, ptr, i64, i16, i8, i8 }
%struct.listop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr, ptr }
%struct.cv = type { ptr, i32, i32, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.xpvcv = type { ptr, %union._xmgu, i64, %union.anon.1, ptr, %union.anon.2, %union.anon.3, %union.anon.4, ptr, %union.anon.5, ptr, i32, i32, i32 }
%union._xmgu = type { ptr }
%union.anon.1 = type { i64 }
%union.anon.2 = type { ptr }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.gv = type { ptr, i32, i32, %union.anon.6 }
%union.anon.6 = type { ptr }
%struct.gp = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr }
%struct.xpvgv = type { ptr, %union._xmgu, i64, %union.anon.7, %union._xivu, %union._xnvu }
%union.anon.7 = type { i64 }
%union._xivu = type { i64 }
%union._xnvu = type { double }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.xpvav = type { ptr, %union._xmgu, i64, i64, ptr }
%struct.av = type { ptr, i32, i32, %union.anon.8 }
%union.anon.8 = type { ptr }
%struct.hv = type { ptr, i32, i32, %union.anon.9 }
%union.anon.9 = type { ptr }
%struct.jmpenv = type { [1 x %struct.__jmp_buf_tag], ptr, i32, i8 }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.stackinfo = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.context = type { %union.anon.11 }
%union.anon.11 = type { %struct.subst }
%struct.subst = type { i8, i8, i16, i32, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.block = type { i8, i8, i16, i32, ptr, i32, i32, ptr, %union.anon.12 }
%union.anon.12 = type { %struct.block_sub }
%struct.block_sub = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.padlist = type { i64, ptr, i32, i32 }
%struct.xpviv = type { ptr, %union._xmgu, i64, %union.anon.18, %union._xivu }
%union.anon.18 = type { i64 }
%struct.xpvnv = type { ptr, %union._xmgu, i64, %union.anon.19, %union._xivu, %union._xnvu }
%union.anon.19 = type { i64 }

@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@PL_markstack_ptr = external local_unnamed_addr global ptr, align 8
@PL_op = external local_unnamed_addr global ptr, align 8
@PL_stack_max = external local_unnamed_addr global ptr, align 8
@PL_sv_undef = external global %struct.sv, align 8
@PL_sortcop = external global ptr, align 8
@.str = private unnamed_addr constant [3 x i8] c"$$\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Undefined sort subroutine \22%-p\22 called\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Undefined subroutine in sort\00", align 1
@PL_top_env = external local_unnamed_addr global ptr, align 8
@PL_tmps_floor = external global i64, align 8
@PL_tmps_ix = external local_unnamed_addr global i64, align 8
@PL_curstackinfo = external local_unnamed_addr global ptr, align 8
@PL_curstack = external local_unnamed_addr global ptr, align 8
@PL_firstgv = external global ptr, align 8
@PL_secondgv = external global ptr, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@PL_curcop = external local_unnamed_addr global ptr, align 8
@PL_markstack = external local_unnamed_addr global ptr, align 8
@PL_scopestack_ix = external local_unnamed_addr global i32, align 4
@PL_curpm = external local_unnamed_addr global ptr, align 8
@PL_comppad = external local_unnamed_addr global ptr, align 8
@PL_curpad = external global ptr, align 8
@PL_defgv = external local_unnamed_addr global ptr, align 8
@PL_savestack_ix = external local_unnamed_addr global i32, align 4
@PL_scopestack = external local_unnamed_addr global ptr, align 8
@PL_sort_RealCmp = external local_unnamed_addr global ptr, align 8
@PL_runops = external local_unnamed_addr global ptr, align 8
@PL_markstack_max = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [43 x i8] c"Sort subroutine didn't return single value\00", align 1

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_sortsv(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !53 {
  tail call void @Perl_sortsv_flags(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_sortsv_flags(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 !prof !54 {
  %5 = alloca [200 x ptr], align 16
  %6 = alloca [3 x ptr], align 16
  %7 = alloca [60 x %struct.off_runs], align 16
  %8 = alloca [32 x %struct.partition_stack_entry], align 16
  %9 = alloca [32 x %struct.partition_stack_entry], align 16
  %10 = alloca [32 x %struct.partition_stack_entry], align 16
  %11 = alloca [32 x %struct.partition_stack_entry], align 16
  %12 = alloca [200 x ptr], align 16
  %13 = and i32 %3, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %1773, label %15, !prof !55

15:                                               ; preds = %4
  %16 = and i32 %3, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %1007, label %18

18:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 1600, ptr nonnull %12) #5
  %19 = icmp ult i64 %1, 2
  br i1 %19, label %1006, label %20

20:                                               ; preds = %18
  %21 = icmp ult i64 %1, 201
  br i1 %21, label %25, label %22

22:                                               ; preds = %20
  %23 = shl i64 %1, 3
  %24 = tail call ptr @Perl_safesysmalloc(i64 noundef %23) #5
  br label %25

25:                                               ; preds = %20, %22
  %26 = phi ptr [ %24, %22 ], [ %12, %20 ]
  br label %27

27:                                               ; preds = %25, %27
  %28 = phi ptr [ %33, %27 ], [ %26, %25 ]
  %29 = phi ptr [ %32, %27 ], [ %0, %25 ]
  %30 = phi i64 [ %31, %27 ], [ %1, %25 ]
  %31 = add i64 %30, -1
  %32 = getelementptr inbounds ptr, ptr %29, i64 1
  %33 = getelementptr inbounds ptr, ptr %28, i64 1
  store ptr %29, ptr %28, align 8, !tbaa !56
  %34 = icmp eq i64 %31, 0
  br i1 %34, label %35, label %27, !llvm.loop !60

35:                                               ; preds = %27
  %36 = load ptr, ptr @PL_sort_RealCmp, align 8, !tbaa !56
  store ptr %2, ptr @PL_sort_RealCmp, align 8, !tbaa !56
  %37 = and i32 %3, 1
  %38 = icmp eq i32 %37, 0
  %39 = icmp ugt i64 %1, 255
  br i1 %38, label %529, label %40

40:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %11) #5
  br i1 %39, label %41, label %53

41:                                               ; preds = %40, %41
  %42 = phi i64 [ %43, %41 ], [ %1, %40 ]
  %43 = add i64 %42, -1
  %44 = uitofp i64 %42 to double
  %45 = tail call double @spec_rand() #5
  %46 = fmul double %45, %44
  %47 = fptoui double %46 to i64
  %48 = getelementptr inbounds ptr, ptr %26, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !56
  %50 = getelementptr inbounds ptr, ptr %26, i64 %43
  %51 = load ptr, ptr %50, align 8, !tbaa !56
  store ptr %51, ptr %48, align 8, !tbaa !56
  store ptr %49, ptr %50, align 8, !tbaa !56
  %52 = icmp ugt i64 %43, 1
  br i1 %52, label %41, label %53, !llvm.loop !63

53:                                               ; preds = %41, %40
  %54 = trunc i64 %1 to i32
  %55 = add i32 %54, -1
  %56 = getelementptr ptr, ptr %26, i64 1
  br label %57

57:                                               ; preds = %523, %53
  %58 = phi i32 [ 6, %53 ], [ %524, %523 ]
  %59 = phi i32 [ %55, %53 ], [ %525, %523 ]
  %60 = phi i32 [ 0, %53 ], [ %526, %523 ]
  %61 = phi i32 [ 0, %53 ], [ %527, %523 ]
  %62 = sub nsw i32 %59, %60
  %63 = icmp slt i32 %62, %58
  br i1 %63, label %64, label %71

64:                                               ; preds = %57
  %65 = icmp slt i32 %60, %59
  br i1 %65, label %66, label %507

66:                                               ; preds = %64
  %67 = sext i32 %60 to i64
  %68 = sext i32 %60 to i64
  %69 = add i32 %60, -1
  %70 = sext i32 %60 to i64
  br label %451

71:                                               ; preds = %57
  %72 = add nsw i32 %60, %59
  %73 = sdiv i32 %72, 2
  %74 = add nsw i32 %73, -1
  %75 = add nsw i32 %73, 1
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds ptr, ptr %26, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !56
  %79 = sext i32 %73 to i64
  %80 = getelementptr inbounds ptr, ptr %26, i64 %79
  %81 = load ptr, ptr %80, align 8, !tbaa !56
  %82 = load ptr, ptr @PL_sort_RealCmp, align 8, !tbaa !56
  %83 = load ptr, ptr %78, align 8, !tbaa !56
  %84 = load ptr, ptr %81, align 8, !tbaa !56
  %85 = tail call i32 %82(ptr noundef %83, ptr noundef %84) #5
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %71
  %88 = sub nsw i32 0, %85
  br label %94

89:                                               ; preds = %71
  %90 = icmp ugt ptr %78, %81
  %91 = icmp ult ptr %78, %81
  %92 = sext i1 %91 to i32
  %93 = select i1 %90, i32 1, i32 %92
  br label %94

94:                                               ; preds = %89, %87
  %95 = phi i32 [ %88, %87 ], [ %93, %89 ]
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %148

97:                                               ; preds = %94
  %98 = load ptr, ptr %80, align 8, !tbaa !56
  %99 = sext i32 %75 to i64
  %100 = getelementptr inbounds ptr, ptr %26, i64 %99
  %101 = load ptr, ptr %100, align 8, !tbaa !56
  %102 = load ptr, ptr @PL_sort_RealCmp, align 8, !tbaa !56
  %103 = load ptr, ptr %98, align 8, !tbaa !56
  %104 = load ptr, ptr %101, align 8, !tbaa !56
  %105 = tail call i32 %102(ptr noundef %103, ptr noundef %104) #5
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %97
  %108 = sub nsw i32 0, %105
  br label %114

109:                                              ; preds = %97
  %110 = icmp ugt ptr %98, %101
  %111 = icmp ult ptr %98, %101
  %112 = sext i1 %111 to i32
  %113 = select i1 %110, i32 1, i32 %112
  br label %114

114:                                              ; preds = %109, %107
  %115 = phi i32 [ %108, %107 ], [ %113, %109 ]
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %219, label %117

117:                                              ; preds = %114
  %118 = icmp sgt i32 %115, 0
  br i1 %118, label %119, label %219

119:                                              ; preds = %117
  %120 = load ptr, ptr %77, align 8, !tbaa !56
  %121 = load ptr, ptr %100, align 8, !tbaa !56
  %122 = load ptr, ptr @PL_sort_RealCmp, align 8, !tbaa !56
  %123 = load ptr, ptr %120, align 8, !tbaa !56
  %124 = load ptr, ptr %121, align 8, !tbaa !56
  %125 = tail call i32 %122(ptr noundef %123, ptr noundef %124) #5
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %119
  %128 = sub nsw i32 0, %125
  br label %134

129:                                              ; preds = %119
  %130 = icmp ugt ptr %120, %121
  %131 = icmp ult ptr %120, %121
  %132 = sext i1 %131 to i32
  %133 = select i1 %130, i32 1, i32 %132
  br label %134

134:                                              ; preds = %129, %127
  %135 = phi i32 [ %128, %127 ], [ %133, %129 ]
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load ptr, ptr %80, align 8, !tbaa !56
  %139 = load ptr, ptr %100, align 8, !tbaa !56
  store ptr %139, ptr %80, align 8, !tbaa !56
  store ptr %138, ptr %100, align 8, !tbaa !56
  br label %219

140:                                              ; preds = %134
  %141 = icmp eq i32 %135, 0
  %142 = load ptr, ptr %80, align 8, !tbaa !56
  br i1 %141, label %143, label %145

143:                                              ; preds = %140
  %144 = load ptr, ptr %100, align 8, !tbaa !56
  store ptr %144, ptr %80, align 8, !tbaa !56
  store ptr %142, ptr %100, align 8, !tbaa !56
  br label %219

145:                                              ; preds = %140
  %146 = load ptr, ptr %77, align 8, !tbaa !56
  store ptr %146, ptr %80, align 8, !tbaa !56
  %147 = load ptr, ptr %100, align 8, !tbaa !56
  store ptr %147, ptr %77, align 8, !tbaa !56
  store ptr %142, ptr %100, align 8, !tbaa !56
  br label %219

148:                                              ; preds = %94
  %149 = icmp eq i32 %95, 0
  %150 = load ptr, ptr %80, align 8, !tbaa !56
  %151 = sext i32 %75 to i64
  %152 = getelementptr inbounds ptr, ptr %26, i64 %151
  %153 = load ptr, ptr %152, align 8, !tbaa !56
  %154 = load ptr, ptr @PL_sort_RealCmp, align 8, !tbaa !56
  %155 = load ptr, ptr %150, align 8, !tbaa !56
  %156 = load ptr, ptr %153, align 8, !tbaa !56
  %157 = tail call i32 %154(ptr noundef %155, ptr noundef %156) #5
  %158 = icmp eq i32 %157, 0
  br i1 %149, label %159, label %175

159:                                              ; preds = %148
  br i1 %158, label %162, label %160

160:                                              ; preds = %159
  %161 = sub nsw i32 0, %157
  br label %167

162:                                              ; preds = %159
  %163 = icmp ugt ptr %150, %153
  %164 = icmp ult ptr %150, %153
  %165 = sext i1 %164 to i32
  %166 = select i1 %163, i32 1, i32 %165
  br label %167

167:                                              ; preds = %162, %160
  %168 = phi i32 [ %161, %160 ], [ %166, %162 ]
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %219, label %170

170:                                              ; preds = %167
  %171 = icmp eq i32 %168, 0
  br i1 %171, label %219, label %172

172:                                              ; preds = %170
  %173 = load ptr, ptr %77, align 8, !tbaa !56
  %174 = load ptr, ptr %152, align 8, !tbaa !56
  store ptr %174, ptr %77, align 8, !tbaa !56
  store ptr %173, ptr %152, align 8, !tbaa !56
  br label %219

175:                                              ; preds = %148
  br i1 %158, label %178, label %176

176:                                              ; preds = %175
  %177 = sub nsw i32 0, %157
  br label %183

178:                                              ; preds = %175
  %179 = icmp ugt ptr %150, %153
  %180 = icmp ult ptr %150, %153
  %181 = sext i1 %180 to i32
  %182 = select i1 %179, i32 1, i32 %181
  br label %183

183:                                              ; preds = %178, %176
  %184 = phi i32 [ %177, %176 ], [ %182, %178 ]
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %214

186:                                              ; preds = %183
  %187 = load ptr, ptr %77, align 8, !tbaa !56
  %188 = load ptr, ptr %152, align 8, !tbaa !56
  %189 = load ptr, ptr @PL_sort_RealCmp, align 8, !tbaa !56
  %190 = load ptr, ptr %187, align 8, !tbaa !56
  %191 = load ptr, ptr %188, align 8, !tbaa !56
  %192 = tail call i32 %189(ptr noundef %190, ptr noundef %191) #5
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %196, label %194

194:                                              ; preds = %186
  %195 = sub nsw i32 0, %192
  br label %201

196:                                              ; preds = %186
  %197 = icmp ugt ptr %187, %188
  %198 = icmp ult ptr %187, %188
  %199 = sext i1 %198 to i32
  %200 = select i1 %197, i32 1, i32 %199
  br label %201

201:                                              ; preds = %196, %194
  %202 = phi i32 [ %195, %194 ], [ %200, %196 ]
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %201
  %205 = load ptr, ptr %77, align 8, !tbaa !56
  %206 = load ptr, ptr %80, align 8, !tbaa !56
  store ptr %206, ptr %77, align 8, !tbaa !56
  store ptr %205, ptr %80, align 8, !tbaa !56
  br label %219

207:                                              ; preds = %201
  %208 = icmp eq i32 %202, 0
  %209 = load ptr, ptr %77, align 8, !tbaa !56
  %210 = load ptr, ptr %80, align 8, !tbaa !56
  store ptr %210, ptr %77, align 8, !tbaa !56
  br i1 %208, label %211, label %212

211:                                              ; preds = %207
  store ptr %209, ptr %80, align 8, !tbaa !56
  br label %219

212:                                              ; preds = %207
  %213 = load ptr, ptr %152, align 8, !tbaa !56
  store ptr %213, ptr %80, align 8, !tbaa !56
  store ptr %209, ptr %152, align 8, !tbaa !56
  br label %219

214:                                              ; preds = %183
  %215 = icmp eq i32 %184, 0
  %216 = load ptr, ptr %77, align 8, !tbaa !56
  %217 = load ptr, ptr %152, align 8, !tbaa !56
  store ptr %217, ptr %77, align 8, !tbaa !56
  store ptr %216, ptr %152, align 8, !tbaa !56
  %218 = select i1 %215, i32 %74, i32 %73
  br label %219

219:                                              ; preds = %214, %212, %211, %204, %172, %170, %167, %145, %143, %137, %117, %114
  %220 = phi i32 [ 1, %137 ], [ 1, %143 ], [ 1, %145 ], [ 0, %117 ], [ 1, %172 ], [ 1, %204 ], [ 1, %211 ], [ 1, %212 ], [ 0, %114 ], [ 0, %167 ], [ 0, %170 ], [ 1, %214 ]
  %221 = phi i32 [ %73, %137 ], [ %74, %143 ], [ %73, %145 ], [ %73, %117 ], [ %73, %172 ], [ %73, %204 ], [ %73, %211 ], [ %73, %212 ], [ %73, %114 ], [ %74, %167 ], [ %74, %170 ], [ %218, %214 ]
  %222 = phi i32 [ %73, %137 ], [ %73, %143 ], [ %73, %145 ], [ %73, %117 ], [ %75, %172 ], [ %73, %204 ], [ %75, %211 ], [ %73, %212 ], [ %75, %114 ], [ %73, %167 ], [ %75, %170 ], [ %73, %214 ]
  %223 = add nsw i32 %73, -2
  %224 = add nsw i32 %73, 2
  %225 = sext i32 %60 to i64
  %226 = add i32 %60, -1
  %227 = sext i32 %59 to i64
  %228 = add i32 %59, 1
  br label %229

229:                                              ; preds = %393, %219
  %230 = phi i32 [ %220, %219 ], [ %394, %393 ]
  %231 = phi i32 [ %221, %219 ], [ %396, %393 ]
  %232 = phi i32 [ %222, %219 ], [ %397, %393 ]
  %233 = phi i32 [ %223, %219 ], [ %398, %393 ]
  %234 = phi i32 [ %224, %219 ], [ %399, %393 ]
  %235 = icmp slt i32 %233, %60
  br i1 %235, label %282, label %236

236:                                              ; preds = %229
  %237 = sext i32 %233 to i64
  br label %238

238:                                              ; preds = %236, %275
  %239 = phi i64 [ %237, %236 ], [ %278, %275 ]
  %240 = phi i1 [ %235, %236 ], [ %279, %275 ]
  %241 = phi i32 [ %231, %236 ], [ %277, %275 ]
  %242 = phi i32 [ %230, %236 ], [ %276, %275 ]
  %243 = getelementptr inbounds ptr, ptr %26, i64 %239
  %244 = load ptr, ptr %243, align 8, !tbaa !56
  %245 = sext i32 %241 to i64
  %246 = getelementptr inbounds ptr, ptr %26, i64 %245
  %247 = load ptr, ptr %246, align 8, !tbaa !56
  %248 = load ptr, ptr @PL_sort_RealCmp, align 8, !tbaa !56
  %249 = load ptr, ptr %244, align 8, !tbaa !56
  %250 = load ptr, ptr %247, align 8, !tbaa !56
  %251 = tail call i32 %248(ptr noundef %249, ptr noundef %250) #5
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %255, label %253

253:                                              ; preds = %238
  %254 = sub nsw i32 0, %251
  br label %260

255:                                              ; preds = %238
  %256 = icmp ugt ptr %244, %247
  %257 = icmp ult ptr %244, %247
  %258 = sext i1 %257 to i32
  %259 = select i1 %256, i32 1, i32 %258
  br label %260

260:                                              ; preds = %255, %253
  %261 = phi i32 [ %254, %253 ], [ %259, %255 ]
  %262 = icmp slt i32 %261, 0
  br i1 %262, label %275, label %263

263:                                              ; preds = %260
  %264 = icmp eq i32 %261, 0
  br i1 %264, label %265, label %280

265:                                              ; preds = %263
  %266 = add nsw i32 %241, -1
  %267 = trunc i64 %239 to i32
  %268 = icmp eq i32 %266, %267
  br i1 %268, label %275, label %269

269:                                              ; preds = %265
  %270 = add nsw i32 %242, 1
  %271 = load ptr, ptr %243, align 8, !tbaa !56
  %272 = sext i32 %266 to i64
  %273 = getelementptr inbounds ptr, ptr %26, i64 %272
  %274 = load ptr, ptr %273, align 8, !tbaa !56
  store ptr %274, ptr %243, align 8, !tbaa !56
  store ptr %271, ptr %273, align 8, !tbaa !56
  br label %275

275:                                              ; preds = %269, %265, %260
  %276 = phi i32 [ %242, %260 ], [ %270, %269 ], [ %242, %265 ]
  %277 = phi i32 [ %241, %260 ], [ %266, %269 ], [ %266, %265 ]
  %278 = add nsw i64 %239, -1
  %279 = icmp sle i64 %239, %225
  br i1 %279, label %282, label %238, !llvm.loop !64

280:                                              ; preds = %263
  %281 = trunc i64 %239 to i32
  br label %282

282:                                              ; preds = %280, %275, %229
  %283 = phi i32 [ %230, %229 ], [ %242, %280 ], [ %276, %275 ]
  %284 = phi i32 [ %231, %229 ], [ %241, %280 ], [ %277, %275 ]
  %285 = phi i32 [ %233, %229 ], [ %281, %280 ], [ %226, %275 ]
  %286 = phi i1 [ %235, %229 ], [ %240, %280 ], [ %279, %275 ]
  %287 = icmp sgt i32 %234, %59
  br i1 %287, label %334, label %288

288:                                              ; preds = %282
  %289 = sext i32 %234 to i64
  br label %290

290:                                              ; preds = %288, %327
  %291 = phi i64 [ %289, %288 ], [ %330, %327 ]
  %292 = phi i1 [ %287, %288 ], [ %331, %327 ]
  %293 = phi i32 [ %232, %288 ], [ %329, %327 ]
  %294 = phi i32 [ %283, %288 ], [ %328, %327 ]
  %295 = sext i32 %293 to i64
  %296 = getelementptr inbounds ptr, ptr %26, i64 %295
  %297 = load ptr, ptr %296, align 8, !tbaa !56
  %298 = getelementptr inbounds ptr, ptr %26, i64 %291
  %299 = load ptr, ptr %298, align 8, !tbaa !56
  %300 = load ptr, ptr @PL_sort_RealCmp, align 8, !tbaa !56
  %301 = load ptr, ptr %297, align 8, !tbaa !56
  %302 = load ptr, ptr %299, align 8, !tbaa !56
  %303 = tail call i32 %300(ptr noundef %301, ptr noundef %302) #5
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %307, label %305

305:                                              ; preds = %290
  %306 = sub nsw i32 0, %303
  br label %312

307:                                              ; preds = %290
  %308 = icmp ugt ptr %297, %299
  %309 = icmp ult ptr %297, %299
  %310 = sext i1 %309 to i32
  %311 = select i1 %308, i32 1, i32 %310
  br label %312

312:                                              ; preds = %307, %305
  %313 = phi i32 [ %306, %305 ], [ %311, %307 ]
  %314 = icmp slt i32 %313, 0
  br i1 %314, label %327, label %315

315:                                              ; preds = %312
  %316 = icmp eq i32 %313, 0
  br i1 %316, label %317, label %332

317:                                              ; preds = %315
  %318 = add nsw i32 %293, 1
  %319 = trunc i64 %291 to i32
  %320 = icmp eq i32 %318, %319
  br i1 %320, label %327, label %321

321:                                              ; preds = %317
  %322 = add nsw i32 %294, 1
  %323 = sext i32 %318 to i64
  %324 = getelementptr inbounds ptr, ptr %26, i64 %323
  %325 = load ptr, ptr %324, align 8, !tbaa !56
  %326 = load ptr, ptr %298, align 8, !tbaa !56
  store ptr %326, ptr %324, align 8, !tbaa !56
  store ptr %325, ptr %298, align 8, !tbaa !56
  br label %327

327:                                              ; preds = %321, %317, %312
  %328 = phi i32 [ %294, %312 ], [ %322, %321 ], [ %294, %317 ]
  %329 = phi i32 [ %293, %312 ], [ %318, %321 ], [ %318, %317 ]
  %330 = add nsw i64 %291, 1
  %331 = icmp sge i64 %291, %227
  br i1 %331, label %334, label %290, !llvm.loop !65

332:                                              ; preds = %315
  %333 = trunc i64 %291 to i32
  br label %334

334:                                              ; preds = %332, %327, %282
  %335 = phi i32 [ %283, %282 ], [ %294, %332 ], [ %328, %327 ]
  %336 = phi i32 [ %232, %282 ], [ %293, %332 ], [ %329, %327 ]
  %337 = phi i32 [ %234, %282 ], [ %333, %332 ], [ %228, %327 ]
  %338 = phi i1 [ %287, %282 ], [ %292, %332 ], [ %331, %327 ]
  br i1 %286, label %366, label %339

339:                                              ; preds = %334
  br i1 %338, label %349, label %340

340:                                              ; preds = %339
  %341 = sext i32 %285 to i64
  %342 = getelementptr inbounds ptr, ptr %26, i64 %341
  %343 = load ptr, ptr %342, align 8, !tbaa !56
  %344 = sext i32 %337 to i64
  %345 = getelementptr inbounds ptr, ptr %26, i64 %344
  %346 = load ptr, ptr %345, align 8, !tbaa !56
  store ptr %346, ptr %342, align 8, !tbaa !56
  store ptr %343, ptr %345, align 8, !tbaa !56
  %347 = add nsw i32 %285, -1
  %348 = add nsw i32 %337, 1
  br label %387

349:                                              ; preds = %339
  %350 = add nsw i32 %284, -1
  %351 = icmp eq i32 %350, %285
  %352 = sext i32 %285 to i64
  %353 = getelementptr inbounds ptr, ptr %26, i64 %352
  %354 = load ptr, ptr %353, align 8, !tbaa !56
  br i1 %351, label %359, label %355

355:                                              ; preds = %349
  %356 = sext i32 %350 to i64
  %357 = getelementptr inbounds ptr, ptr %26, i64 %356
  %358 = load ptr, ptr %357, align 8, !tbaa !56
  store ptr %358, ptr %353, align 8, !tbaa !56
  br label %359

359:                                              ; preds = %349, %355
  %360 = phi ptr [ %357, %355 ], [ %353, %349 ]
  %361 = sext i32 %336 to i64
  %362 = getelementptr inbounds ptr, ptr %26, i64 %361
  %363 = load ptr, ptr %362, align 8, !tbaa !56
  store ptr %363, ptr %360, align 8, !tbaa !56
  store ptr %354, ptr %362, align 8, !tbaa !56
  %364 = add nsw i32 %336, -1
  %365 = add nsw i32 %285, -1
  br label %387

366:                                              ; preds = %334
  br i1 %338, label %393, label %367

367:                                              ; preds = %366
  %368 = add nsw i32 %336, 1
  %369 = icmp eq i32 %368, %337
  %370 = sext i32 %284 to i64
  %371 = getelementptr inbounds ptr, ptr %26, i64 %370
  %372 = load ptr, ptr %371, align 8, !tbaa !56
  br i1 %369, label %373, label %377

373:                                              ; preds = %367
  %374 = sext i32 %337 to i64
  %375 = getelementptr inbounds ptr, ptr %26, i64 %374
  %376 = load ptr, ptr %375, align 8, !tbaa !56
  store ptr %372, ptr %375, align 8, !tbaa !56
  store ptr %376, ptr %371, align 8, !tbaa !56
  br label %384

377:                                              ; preds = %367
  %378 = sext i32 %368 to i64
  %379 = getelementptr inbounds ptr, ptr %26, i64 %378
  %380 = load ptr, ptr %379, align 8, !tbaa !56
  store ptr %372, ptr %379, align 8, !tbaa !56
  %381 = sext i32 %337 to i64
  %382 = getelementptr inbounds ptr, ptr %26, i64 %381
  %383 = load ptr, ptr %382, align 8, !tbaa !56
  store ptr %383, ptr %371, align 8, !tbaa !56
  store ptr %380, ptr %382, align 8, !tbaa !56
  br label %384

384:                                              ; preds = %377, %373
  %385 = add nsw i32 %284, 1
  %386 = add nsw i32 %337, 1
  br label %387

387:                                              ; preds = %384, %359, %340
  %388 = phi i32 [ %284, %340 ], [ %350, %359 ], [ %385, %384 ]
  %389 = phi i32 [ %336, %340 ], [ %364, %359 ], [ %368, %384 ]
  %390 = phi i32 [ %347, %340 ], [ %365, %359 ], [ %285, %384 ]
  %391 = phi i32 [ %348, %340 ], [ %337, %359 ], [ %386, %384 ]
  %392 = add nsw i32 %335, 1
  br label %393

393:                                              ; preds = %387, %366
  %394 = phi i32 [ %392, %387 ], [ %335, %366 ]
  %395 = phi i1 [ true, %387 ], [ false, %366 ]
  %396 = phi i32 [ %388, %387 ], [ %284, %366 ]
  %397 = phi i32 [ %389, %387 ], [ %336, %366 ]
  %398 = phi i32 [ %390, %387 ], [ %285, %366 ]
  %399 = phi i32 [ %391, %387 ], [ %337, %366 ]
  br i1 %395, label %229, label %400

400:                                              ; preds = %393
  %401 = icmp slt i32 %394, 3
  %402 = shl nsw i32 %58, 1
  %403 = select i1 %401, i32 %402, i32 6
  %404 = icmp slt i32 %60, %396
  %405 = icmp slt i32 %397, %59
  br i1 %404, label %406, label %431

406:                                              ; preds = %400
  br i1 %405, label %407, label %429

407:                                              ; preds = %406
  %408 = sub nsw i32 %59, %397
  %409 = sub nsw i32 %396, %60
  %410 = icmp sgt i32 %408, %409
  br i1 %410, label %411, label %418

411:                                              ; preds = %407
  %412 = add nsw i32 %397, 1
  %413 = sext i32 %61 to i64
  %414 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %11, i64 0, i64 %413
  store i32 %412, ptr %414, align 4, !tbaa !66
  %415 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %11, i64 0, i64 %413, i32 1
  store i32 %59, ptr %415, align 4, !tbaa !69
  %416 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %11, i64 0, i64 %413, i32 2
  store i32 %403, ptr %416, align 4, !tbaa !70
  %417 = add nsw i32 %396, -1
  br label %425

418:                                              ; preds = %407
  %419 = sext i32 %61 to i64
  %420 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %11, i64 0, i64 %419
  store i32 %60, ptr %420, align 4, !tbaa !66
  %421 = add nsw i32 %396, -1
  %422 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %11, i64 0, i64 %419, i32 1
  store i32 %421, ptr %422, align 4, !tbaa !69
  %423 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %11, i64 0, i64 %419, i32 2
  store i32 %403, ptr %423, align 4, !tbaa !70
  %424 = add nsw i32 %397, 1
  br label %425

425:                                              ; preds = %418, %411
  %426 = phi i32 [ %417, %411 ], [ %59, %418 ]
  %427 = phi i32 [ %60, %411 ], [ %424, %418 ]
  %428 = add nsw i32 %61, 1
  br label %445

429:                                              ; preds = %406
  %430 = add nsw i32 %396, -1
  br label %445

431:                                              ; preds = %400
  br i1 %405, label %432, label %434

432:                                              ; preds = %431
  %433 = add nsw i32 %397, 1
  br label %445

434:                                              ; preds = %431
  %435 = icmp eq i32 %61, 0
  br i1 %435, label %445, label %436

436:                                              ; preds = %434
  %437 = add nsw i32 %61, -1
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %11, i64 0, i64 %438
  %440 = load i32, ptr %439, align 4, !tbaa !66
  %441 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %11, i64 0, i64 %438, i32 1
  %442 = load i32, ptr %441, align 4, !tbaa !69
  %443 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %11, i64 0, i64 %438, i32 2
  %444 = load i32, ptr %443, align 4, !tbaa !70
  br label %445

445:                                              ; preds = %436, %434, %432, %429, %425
  %446 = phi i32 [ %403, %434 ], [ %403, %425 ], [ %403, %429 ], [ %403, %432 ], [ %444, %436 ]
  %447 = phi i1 [ false, %434 ], [ true, %425 ], [ true, %429 ], [ true, %432 ], [ true, %436 ]
  %448 = phi i32 [ %59, %434 ], [ %426, %425 ], [ %430, %429 ], [ %59, %432 ], [ %442, %436 ]
  %449 = phi i32 [ %60, %434 ], [ %427, %425 ], [ %60, %429 ], [ %433, %432 ], [ %440, %436 ]
  %450 = phi i32 [ %61, %434 ], [ %428, %425 ], [ %61, %429 ], [ %61, %432 ], [ %437, %436 ]
  br i1 %447, label %523, label %528

451:                                              ; preds = %66, %504
  %452 = phi i64 [ %67, %66 ], [ %453, %504 ]
  %453 = add nsw i64 %452, 1
  %454 = icmp slt i64 %452, %70
  %455 = trunc i64 %452 to i32
  br i1 %454, label %483, label %456

456:                                              ; preds = %451
  %457 = getelementptr inbounds ptr, ptr %26, i64 %453
  br label %458

458:                                              ; preds = %456, %478
  %459 = phi i64 [ %452, %456 ], [ %479, %478 ]
  %460 = load ptr, ptr %457, align 8, !tbaa !56
  %461 = getelementptr inbounds ptr, ptr %26, i64 %459
  %462 = load ptr, ptr %461, align 8, !tbaa !56
  %463 = load ptr, ptr @PL_sort_RealCmp, align 8, !tbaa !56
  %464 = load ptr, ptr %460, align 8, !tbaa !56
  %465 = load ptr, ptr %462, align 8, !tbaa !56
  %466 = tail call i32 %463(ptr noundef %464, ptr noundef %465) #5
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %470, label %468

468:                                              ; preds = %458
  %469 = sub nsw i32 0, %466
  br label %475

470:                                              ; preds = %458
  %471 = icmp ugt ptr %460, %462
  %472 = icmp ult ptr %460, %462
  %473 = sext i1 %472 to i32
  %474 = select i1 %471, i32 1, i32 %473
  br label %475

475:                                              ; preds = %470, %468
  %476 = phi i32 [ %469, %468 ], [ %474, %470 ]
  %477 = icmp sgt i32 %476, -1
  br i1 %477, label %481, label %478

478:                                              ; preds = %475
  %479 = add nsw i64 %459, -1
  %480 = icmp sgt i64 %459, %68
  br i1 %480, label %458, label %483, !llvm.loop !71

481:                                              ; preds = %475
  %482 = trunc i64 %459 to i32
  br label %483

483:                                              ; preds = %481, %478, %451
  %484 = phi i32 [ %455, %451 ], [ %482, %481 ], [ %69, %478 ]
  %485 = trunc i64 %452 to i32
  %486 = icmp eq i32 %484, %485
  br i1 %486, label %504, label %487

487:                                              ; preds = %483
  %488 = getelementptr inbounds ptr, ptr %26, i64 %453
  %489 = load ptr, ptr %488, align 8, !tbaa !56
  %490 = sext i32 %484 to i64
  %491 = icmp sgt i64 %452, %490
  br i1 %491, label %492, label %501

492:                                              ; preds = %487
  %493 = sext i32 %484 to i64
  br label %494

494:                                              ; preds = %492, %494
  %495 = phi i64 [ %452, %492 ], [ %499, %494 ]
  %496 = getelementptr inbounds ptr, ptr %26, i64 %495
  %497 = load ptr, ptr %496, align 8, !tbaa !56
  %498 = getelementptr ptr, ptr %496, i64 1
  store ptr %497, ptr %498, align 8, !tbaa !56
  %499 = add nsw i64 %495, -1
  %500 = icmp sgt i64 %499, %493
  br i1 %500, label %494, label %501, !llvm.loop !72

501:                                              ; preds = %494, %487
  %502 = sext i32 %484 to i64
  %503 = getelementptr ptr, ptr %56, i64 %502
  store ptr %489, ptr %503, align 8, !tbaa !56
  br label %504

504:                                              ; preds = %501, %483
  %505 = trunc i64 %453 to i32
  %506 = icmp eq i32 %59, %505
  br i1 %506, label %507, label %451, !llvm.loop !73

507:                                              ; preds = %504, %64
  %508 = icmp eq i32 %61, 0
  br i1 %508, label %518, label %509

509:                                              ; preds = %507
  %510 = add nsw i32 %61, -1
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %11, i64 0, i64 %511
  %513 = load i32, ptr %512, align 4, !tbaa !66
  %514 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %11, i64 0, i64 %511, i32 1
  %515 = load i32, ptr %514, align 4, !tbaa !69
  %516 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %11, i64 0, i64 %511, i32 2
  %517 = load i32, ptr %516, align 4, !tbaa !70
  br label %518

518:                                              ; preds = %509, %507
  %519 = phi i32 [ %517, %509 ], [ %58, %507 ]
  %520 = phi i32 [ %515, %509 ], [ %59, %507 ]
  %521 = phi i32 [ %513, %509 ], [ %60, %507 ]
  %522 = phi i32 [ %510, %509 ], [ %61, %507 ]
  br i1 %508, label %528, label %523

523:                                              ; preds = %518, %445
  %524 = phi i32 [ %446, %445 ], [ %519, %518 ]
  %525 = phi i32 [ %448, %445 ], [ %520, %518 ]
  %526 = phi i32 [ %449, %445 ], [ %521, %518 ]
  %527 = phi i32 [ %450, %445 ], [ %522, %518 ]
  br label %57, !llvm.loop !74

528:                                              ; preds = %518, %445
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %11) #5
  br label %973

529:                                              ; preds = %35
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %10) #5
  br i1 %39, label %530, label %542

530:                                              ; preds = %529, %530
  %531 = phi i64 [ %532, %530 ], [ %1, %529 ]
  %532 = add i64 %531, -1
  %533 = uitofp i64 %531 to double
  %534 = tail call double @spec_rand() #5
  %535 = fmul double %534, %533
  %536 = fptoui double %535 to i64
  %537 = getelementptr inbounds ptr, ptr %26, i64 %536
  %538 = load ptr, ptr %537, align 8, !tbaa !56
  %539 = getelementptr inbounds ptr, ptr %26, i64 %532
  %540 = load ptr, ptr %539, align 8, !tbaa !56
  store ptr %540, ptr %537, align 8, !tbaa !56
  store ptr %538, ptr %539, align 8, !tbaa !56
  %541 = icmp ugt i64 %532, 1
  br i1 %541, label %530, label %542, !llvm.loop !63

542:                                              ; preds = %530, %529
  %543 = trunc i64 %1 to i32
  %544 = add i32 %543, -1
  %545 = getelementptr ptr, ptr %26, i64 1
  br label %546

546:                                              ; preds = %967, %542
  %547 = phi i32 [ 6, %542 ], [ %968, %967 ]
  %548 = phi i32 [ %544, %542 ], [ %969, %967 ]
  %549 = phi i32 [ 0, %542 ], [ %970, %967 ]
  %550 = phi i32 [ 0, %542 ], [ %971, %967 ]
  %551 = sub nsw i32 %548, %549
  %552 = icmp slt i32 %551, %547
  br i1 %552, label %553, label %560

553:                                              ; preds = %546
  %554 = icmp slt i32 %549, %548
  br i1 %554, label %555, label %951

555:                                              ; preds = %553
  %556 = sext i32 %549 to i64
  %557 = sext i32 %549 to i64
  %558 = add i32 %549, -1
  %559 = sext i32 %549 to i64
  br label %902

560:                                              ; preds = %546
  %561 = add nsw i32 %549, %548
  %562 = sdiv i32 %561, 2
  %563 = add nsw i32 %562, -1
  %564 = add nsw i32 %562, 1
  %565 = sext i32 %563 to i64
  %566 = getelementptr inbounds ptr, ptr %26, i64 %565
  %567 = load ptr, ptr %566, align 8, !tbaa !56
  %568 = sext i32 %562 to i64
  %569 = getelementptr inbounds ptr, ptr %26, i64 %568
  %570 = load ptr, ptr %569, align 8, !tbaa !56
  %571 = load ptr, ptr @PL_sort_RealCmp, align 8, !tbaa !56
  %572 = load ptr, ptr %567, align 8, !tbaa !56
  %573 = load ptr, ptr %570, align 8, !tbaa !56
  %574 = tail call i32 %571(ptr noundef %572, ptr noundef %573) #5
  %575 = icmp eq i32 %574, 0
  %576 = icmp ugt ptr %567, %570
  %577 = icmp ult ptr %567, %570
  %578 = sext i1 %577 to i32
  %579 = select i1 %576, i32 1, i32 %578
  %580 = select i1 %575, i32 %579, i32 %574
  %581 = icmp slt i32 %580, 0
  br i1 %581, label %582, label %625

582:                                              ; preds = %560
  %583 = load ptr, ptr %569, align 8, !tbaa !56
  %584 = sext i32 %564 to i64
  %585 = getelementptr inbounds ptr, ptr %26, i64 %584
  %586 = load ptr, ptr %585, align 8, !tbaa !56
  %587 = load ptr, ptr @PL_sort_RealCmp, align 8, !tbaa !56
  %588 = load ptr, ptr %583, align 8, !tbaa !56
  %589 = load ptr, ptr %586, align 8, !tbaa !56
  %590 = tail call i32 %587(ptr noundef %588, ptr noundef %589) #5
  %591 = icmp eq i32 %590, 0
  %592 = icmp ugt ptr %583, %586
  %593 = icmp ult ptr %583, %586
  %594 = sext i1 %593 to i32
  %595 = select i1 %592, i32 1, i32 %594
  %596 = select i1 %591, i32 %595, i32 %590
  %597 = icmp eq i32 %596, 0
  br i1 %597, label %678, label %598

598:                                              ; preds = %582
  %599 = icmp sgt i32 %596, 0
  br i1 %599, label %600, label %678

600:                                              ; preds = %598
  %601 = load ptr, ptr %566, align 8, !tbaa !56
  %602 = load ptr, ptr %585, align 8, !tbaa !56
  %603 = load ptr, ptr @PL_sort_RealCmp, align 8, !tbaa !56
  %604 = load ptr, ptr %601, align 8, !tbaa !56
  %605 = load ptr, ptr %602, align 8, !tbaa !56
  %606 = tail call i32 %603(ptr noundef %604, ptr noundef %605) #5
  %607 = icmp eq i32 %606, 0
  %608 = icmp ugt ptr %601, %602
  %609 = icmp ult ptr %601, %602
  %610 = sext i1 %609 to i32
  %611 = select i1 %608, i32 1, i32 %610
  %612 = select i1 %607, i32 %611, i32 %606
  %613 = icmp slt i32 %612, 0
  br i1 %613, label %614, label %617

614:                                              ; preds = %600
  %615 = load ptr, ptr %569, align 8, !tbaa !56
  %616 = load ptr, ptr %585, align 8, !tbaa !56
  store ptr %616, ptr %569, align 8, !tbaa !56
  store ptr %615, ptr %585, align 8, !tbaa !56
  br label %678

617:                                              ; preds = %600
  %618 = icmp eq i32 %612, 0
  %619 = load ptr, ptr %569, align 8, !tbaa !56
  br i1 %618, label %620, label %622

620:                                              ; preds = %617
  %621 = load ptr, ptr %585, align 8, !tbaa !56
  store ptr %621, ptr %569, align 8, !tbaa !56
  store ptr %619, ptr %585, align 8, !tbaa !56
  br label %678

622:                                              ; preds = %617
  %623 = load ptr, ptr %566, align 8, !tbaa !56
  store ptr %623, ptr %569, align 8, !tbaa !56
  %624 = load ptr, ptr %585, align 8, !tbaa !56
  store ptr %624, ptr %566, align 8, !tbaa !56
  store ptr %619, ptr %585, align 8, !tbaa !56
  br label %678

625:                                              ; preds = %560
  %626 = icmp eq i32 %580, 0
  %627 = load ptr, ptr %569, align 8, !tbaa !56
  %628 = sext i32 %564 to i64
  %629 = getelementptr inbounds ptr, ptr %26, i64 %628
  %630 = load ptr, ptr %629, align 8, !tbaa !56
  %631 = load ptr, ptr @PL_sort_RealCmp, align 8, !tbaa !56
  %632 = load ptr, ptr %627, align 8, !tbaa !56
  %633 = load ptr, ptr %630, align 8, !tbaa !56
  %634 = tail call i32 %631(ptr noundef %632, ptr noundef %633) #5
  %635 = icmp eq i32 %634, 0
  %636 = icmp ugt ptr %627, %630
  %637 = icmp ult ptr %627, %630
  %638 = sext i1 %637 to i32
  %639 = select i1 %636, i32 1, i32 %638
  %640 = select i1 %635, i32 %639, i32 %634
  %641 = icmp slt i32 %640, 0
  br i1 %626, label %642, label %648

642:                                              ; preds = %625
  br i1 %641, label %678, label %643

643:                                              ; preds = %642
  %644 = icmp eq i32 %640, 0
  br i1 %644, label %678, label %645

645:                                              ; preds = %643
  %646 = load ptr, ptr %566, align 8, !tbaa !56
  %647 = load ptr, ptr %629, align 8, !tbaa !56
  store ptr %647, ptr %566, align 8, !tbaa !56
  store ptr %646, ptr %629, align 8, !tbaa !56
  br label %678

648:                                              ; preds = %625
  br i1 %641, label %649, label %673

649:                                              ; preds = %648
  %650 = load ptr, ptr %566, align 8, !tbaa !56
  %651 = load ptr, ptr %629, align 8, !tbaa !56
  %652 = load ptr, ptr @PL_sort_RealCmp, align 8, !tbaa !56
  %653 = load ptr, ptr %650, align 8, !tbaa !56
  %654 = load ptr, ptr %651, align 8, !tbaa !56
  %655 = tail call i32 %652(ptr noundef %653, ptr noundef %654) #5
  %656 = icmp eq i32 %655, 0
  %657 = icmp ugt ptr %650, %651
  %658 = icmp ult ptr %650, %651
  %659 = sext i1 %658 to i32
  %660 = select i1 %657, i32 1, i32 %659
  %661 = select i1 %656, i32 %660, i32 %655
  %662 = icmp slt i32 %661, 0
  br i1 %662, label %663, label %666

663:                                              ; preds = %649
  %664 = load ptr, ptr %566, align 8, !tbaa !56
  %665 = load ptr, ptr %569, align 8, !tbaa !56
  store ptr %665, ptr %566, align 8, !tbaa !56
  store ptr %664, ptr %569, align 8, !tbaa !56
  br label %678

666:                                              ; preds = %649
  %667 = icmp eq i32 %661, 0
  %668 = load ptr, ptr %566, align 8, !tbaa !56
  %669 = load ptr, ptr %569, align 8, !tbaa !56
  store ptr %669, ptr %566, align 8, !tbaa !56
  br i1 %667, label %670, label %671

670:                                              ; preds = %666
  store ptr %668, ptr %569, align 8, !tbaa !56
  br label %678

671:                                              ; preds = %666
  %672 = load ptr, ptr %629, align 8, !tbaa !56
  store ptr %672, ptr %569, align 8, !tbaa !56
  store ptr %668, ptr %629, align 8, !tbaa !56
  br label %678

673:                                              ; preds = %648
  %674 = icmp eq i32 %640, 0
  %675 = load ptr, ptr %566, align 8, !tbaa !56
  %676 = load ptr, ptr %629, align 8, !tbaa !56
  store ptr %676, ptr %566, align 8, !tbaa !56
  store ptr %675, ptr %629, align 8, !tbaa !56
  %677 = select i1 %674, i32 %563, i32 %562
  br label %678

678:                                              ; preds = %673, %671, %670, %663, %645, %643, %642, %622, %620, %614, %598, %582
  %679 = phi i32 [ 1, %614 ], [ 1, %620 ], [ 1, %622 ], [ 0, %598 ], [ 1, %645 ], [ 1, %663 ], [ 1, %670 ], [ 1, %671 ], [ 0, %582 ], [ 0, %642 ], [ 0, %643 ], [ 1, %673 ]
  %680 = phi i32 [ %562, %614 ], [ %563, %620 ], [ %562, %622 ], [ %562, %598 ], [ %562, %645 ], [ %562, %663 ], [ %562, %670 ], [ %562, %671 ], [ %562, %582 ], [ %563, %642 ], [ %563, %643 ], [ %677, %673 ]
  %681 = phi i32 [ %562, %614 ], [ %562, %620 ], [ %562, %622 ], [ %562, %598 ], [ %564, %645 ], [ %562, %663 ], [ %564, %670 ], [ %562, %671 ], [ %564, %582 ], [ %562, %642 ], [ %564, %643 ], [ %562, %673 ]
  %682 = add nsw i32 %562, -2
  %683 = add nsw i32 %562, 2
  %684 = sext i32 %549 to i64
  %685 = add i32 %549, -1
  %686 = sext i32 %548 to i64
  %687 = add i32 %548, 1
  br label %688

688:                                              ; preds = %844, %678
  %689 = phi i32 [ %679, %678 ], [ %845, %844 ]
  %690 = phi i32 [ %680, %678 ], [ %847, %844 ]
  %691 = phi i32 [ %681, %678 ], [ %848, %844 ]
  %692 = phi i32 [ %682, %678 ], [ %849, %844 ]
  %693 = phi i32 [ %683, %678 ], [ %850, %844 ]
  %694 = icmp slt i32 %692, %549
  br i1 %694, label %737, label %695

695:                                              ; preds = %688
  %696 = sext i32 %692 to i64
  br label %697

697:                                              ; preds = %695, %730
  %698 = phi i64 [ %696, %695 ], [ %733, %730 ]
  %699 = phi i1 [ %694, %695 ], [ %734, %730 ]
  %700 = phi i32 [ %690, %695 ], [ %732, %730 ]
  %701 = phi i32 [ %689, %695 ], [ %731, %730 ]
  %702 = getelementptr inbounds ptr, ptr %26, i64 %698
  %703 = load ptr, ptr %702, align 8, !tbaa !56
  %704 = sext i32 %700 to i64
  %705 = getelementptr inbounds ptr, ptr %26, i64 %704
  %706 = load ptr, ptr %705, align 8, !tbaa !56
  %707 = load ptr, ptr @PL_sort_RealCmp, align 8, !tbaa !56
  %708 = load ptr, ptr %703, align 8, !tbaa !56
  %709 = load ptr, ptr %706, align 8, !tbaa !56
  %710 = tail call i32 %707(ptr noundef %708, ptr noundef %709) #5
  %711 = icmp eq i32 %710, 0
  %712 = icmp ugt ptr %703, %706
  %713 = icmp ult ptr %703, %706
  %714 = sext i1 %713 to i32
  %715 = select i1 %712, i32 1, i32 %714
  %716 = select i1 %711, i32 %715, i32 %710
  %717 = icmp slt i32 %716, 0
  br i1 %717, label %730, label %718

718:                                              ; preds = %697
  %719 = icmp eq i32 %716, 0
  br i1 %719, label %720, label %735

720:                                              ; preds = %718
  %721 = add nsw i32 %700, -1
  %722 = trunc i64 %698 to i32
  %723 = icmp eq i32 %721, %722
  br i1 %723, label %730, label %724

724:                                              ; preds = %720
  %725 = add nsw i32 %701, 1
  %726 = load ptr, ptr %702, align 8, !tbaa !56
  %727 = sext i32 %721 to i64
  %728 = getelementptr inbounds ptr, ptr %26, i64 %727
  %729 = load ptr, ptr %728, align 8, !tbaa !56
  store ptr %729, ptr %702, align 8, !tbaa !56
  store ptr %726, ptr %728, align 8, !tbaa !56
  br label %730

730:                                              ; preds = %724, %720, %697
  %731 = phi i32 [ %701, %697 ], [ %725, %724 ], [ %701, %720 ]
  %732 = phi i32 [ %700, %697 ], [ %721, %724 ], [ %721, %720 ]
  %733 = add nsw i64 %698, -1
  %734 = icmp sle i64 %698, %684
  br i1 %734, label %737, label %697, !llvm.loop !64

735:                                              ; preds = %718
  %736 = trunc i64 %698 to i32
  br label %737

737:                                              ; preds = %735, %730, %688
  %738 = phi i32 [ %689, %688 ], [ %701, %735 ], [ %731, %730 ]
  %739 = phi i32 [ %690, %688 ], [ %700, %735 ], [ %732, %730 ]
  %740 = phi i32 [ %692, %688 ], [ %736, %735 ], [ %685, %730 ]
  %741 = phi i1 [ %694, %688 ], [ %699, %735 ], [ %734, %730 ]
  %742 = icmp sgt i32 %693, %548
  br i1 %742, label %785, label %743

743:                                              ; preds = %737
  %744 = sext i32 %693 to i64
  br label %745

745:                                              ; preds = %743, %778
  %746 = phi i64 [ %744, %743 ], [ %781, %778 ]
  %747 = phi i1 [ %742, %743 ], [ %782, %778 ]
  %748 = phi i32 [ %691, %743 ], [ %780, %778 ]
  %749 = phi i32 [ %738, %743 ], [ %779, %778 ]
  %750 = sext i32 %748 to i64
  %751 = getelementptr inbounds ptr, ptr %26, i64 %750
  %752 = load ptr, ptr %751, align 8, !tbaa !56
  %753 = getelementptr inbounds ptr, ptr %26, i64 %746
  %754 = load ptr, ptr %753, align 8, !tbaa !56
  %755 = load ptr, ptr @PL_sort_RealCmp, align 8, !tbaa !56
  %756 = load ptr, ptr %752, align 8, !tbaa !56
  %757 = load ptr, ptr %754, align 8, !tbaa !56
  %758 = tail call i32 %755(ptr noundef %756, ptr noundef %757) #5
  %759 = icmp eq i32 %758, 0
  %760 = icmp ugt ptr %752, %754
  %761 = icmp ult ptr %752, %754
  %762 = sext i1 %761 to i32
  %763 = select i1 %760, i32 1, i32 %762
  %764 = select i1 %759, i32 %763, i32 %758
  %765 = icmp slt i32 %764, 0
  br i1 %765, label %778, label %766

766:                                              ; preds = %745
  %767 = icmp eq i32 %764, 0
  br i1 %767, label %768, label %783

768:                                              ; preds = %766
  %769 = add nsw i32 %748, 1
  %770 = trunc i64 %746 to i32
  %771 = icmp eq i32 %769, %770
  br i1 %771, label %778, label %772

772:                                              ; preds = %768
  %773 = add nsw i32 %749, 1
  %774 = sext i32 %769 to i64
  %775 = getelementptr inbounds ptr, ptr %26, i64 %774
  %776 = load ptr, ptr %775, align 8, !tbaa !56
  %777 = load ptr, ptr %753, align 8, !tbaa !56
  store ptr %777, ptr %775, align 8, !tbaa !56
  store ptr %776, ptr %753, align 8, !tbaa !56
  br label %778

778:                                              ; preds = %772, %768, %745
  %779 = phi i32 [ %749, %745 ], [ %773, %772 ], [ %749, %768 ]
  %780 = phi i32 [ %748, %745 ], [ %769, %772 ], [ %769, %768 ]
  %781 = add nsw i64 %746, 1
  %782 = icmp sge i64 %746, %686
  br i1 %782, label %785, label %745, !llvm.loop !65

783:                                              ; preds = %766
  %784 = trunc i64 %746 to i32
  br label %785

785:                                              ; preds = %783, %778, %737
  %786 = phi i32 [ %738, %737 ], [ %749, %783 ], [ %779, %778 ]
  %787 = phi i32 [ %691, %737 ], [ %748, %783 ], [ %780, %778 ]
  %788 = phi i32 [ %693, %737 ], [ %784, %783 ], [ %687, %778 ]
  %789 = phi i1 [ %742, %737 ], [ %747, %783 ], [ %782, %778 ]
  br i1 %741, label %817, label %790

790:                                              ; preds = %785
  br i1 %789, label %800, label %791

791:                                              ; preds = %790
  %792 = sext i32 %740 to i64
  %793 = getelementptr inbounds ptr, ptr %26, i64 %792
  %794 = load ptr, ptr %793, align 8, !tbaa !56
  %795 = sext i32 %788 to i64
  %796 = getelementptr inbounds ptr, ptr %26, i64 %795
  %797 = load ptr, ptr %796, align 8, !tbaa !56
  store ptr %797, ptr %793, align 8, !tbaa !56
  store ptr %794, ptr %796, align 8, !tbaa !56
  %798 = add nsw i32 %740, -1
  %799 = add nsw i32 %788, 1
  br label %838

800:                                              ; preds = %790
  %801 = add nsw i32 %739, -1
  %802 = icmp eq i32 %801, %740
  %803 = sext i32 %740 to i64
  %804 = getelementptr inbounds ptr, ptr %26, i64 %803
  %805 = load ptr, ptr %804, align 8, !tbaa !56
  br i1 %802, label %810, label %806

806:                                              ; preds = %800
  %807 = sext i32 %801 to i64
  %808 = getelementptr inbounds ptr, ptr %26, i64 %807
  %809 = load ptr, ptr %808, align 8, !tbaa !56
  store ptr %809, ptr %804, align 8, !tbaa !56
  br label %810

810:                                              ; preds = %800, %806
  %811 = phi ptr [ %808, %806 ], [ %804, %800 ]
  %812 = sext i32 %787 to i64
  %813 = getelementptr inbounds ptr, ptr %26, i64 %812
  %814 = load ptr, ptr %813, align 8, !tbaa !56
  store ptr %814, ptr %811, align 8, !tbaa !56
  store ptr %805, ptr %813, align 8, !tbaa !56
  %815 = add nsw i32 %787, -1
  %816 = add nsw i32 %740, -1
  br label %838

817:                                              ; preds = %785
  br i1 %789, label %844, label %818

818:                                              ; preds = %817
  %819 = add nsw i32 %787, 1
  %820 = icmp eq i32 %819, %788
  %821 = sext i32 %739 to i64
  %822 = getelementptr inbounds ptr, ptr %26, i64 %821
  %823 = load ptr, ptr %822, align 8, !tbaa !56
  br i1 %820, label %824, label %828

824:                                              ; preds = %818
  %825 = sext i32 %788 to i64
  %826 = getelementptr inbounds ptr, ptr %26, i64 %825
  %827 = load ptr, ptr %826, align 8, !tbaa !56
  store ptr %823, ptr %826, align 8, !tbaa !56
  store ptr %827, ptr %822, align 8, !tbaa !56
  br label %835

828:                                              ; preds = %818
  %829 = sext i32 %819 to i64
  %830 = getelementptr inbounds ptr, ptr %26, i64 %829
  %831 = load ptr, ptr %830, align 8, !tbaa !56
  store ptr %823, ptr %830, align 8, !tbaa !56
  %832 = sext i32 %788 to i64
  %833 = getelementptr inbounds ptr, ptr %26, i64 %832
  %834 = load ptr, ptr %833, align 8, !tbaa !56
  store ptr %834, ptr %822, align 8, !tbaa !56
  store ptr %831, ptr %833, align 8, !tbaa !56
  br label %835

835:                                              ; preds = %828, %824
  %836 = add nsw i32 %739, 1
  %837 = add nsw i32 %788, 1
  br label %838

838:                                              ; preds = %835, %810, %791
  %839 = phi i32 [ %739, %791 ], [ %801, %810 ], [ %836, %835 ]
  %840 = phi i32 [ %787, %791 ], [ %815, %810 ], [ %819, %835 ]
  %841 = phi i32 [ %798, %791 ], [ %816, %810 ], [ %740, %835 ]
  %842 = phi i32 [ %799, %791 ], [ %788, %810 ], [ %837, %835 ]
  %843 = add nsw i32 %786, 1
  br label %844

844:                                              ; preds = %838, %817
  %845 = phi i32 [ %843, %838 ], [ %786, %817 ]
  %846 = phi i1 [ true, %838 ], [ false, %817 ]
  %847 = phi i32 [ %839, %838 ], [ %739, %817 ]
  %848 = phi i32 [ %840, %838 ], [ %787, %817 ]
  %849 = phi i32 [ %841, %838 ], [ %740, %817 ]
  %850 = phi i32 [ %842, %838 ], [ %788, %817 ]
  br i1 %846, label %688, label %851

851:                                              ; preds = %844
  %852 = icmp slt i32 %845, 3
  %853 = shl nsw i32 %547, 1
  %854 = select i1 %852, i32 %853, i32 6
  %855 = icmp slt i32 %549, %847
  %856 = icmp slt i32 %848, %548
  br i1 %855, label %857, label %882

857:                                              ; preds = %851
  br i1 %856, label %858, label %880

858:                                              ; preds = %857
  %859 = sub nsw i32 %548, %848
  %860 = sub nsw i32 %847, %549
  %861 = icmp sgt i32 %859, %860
  br i1 %861, label %862, label %869

862:                                              ; preds = %858
  %863 = add nsw i32 %848, 1
  %864 = sext i32 %550 to i64
  %865 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %10, i64 0, i64 %864
  store i32 %863, ptr %865, align 4, !tbaa !66
  %866 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %10, i64 0, i64 %864, i32 1
  store i32 %548, ptr %866, align 4, !tbaa !69
  %867 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %10, i64 0, i64 %864, i32 2
  store i32 %854, ptr %867, align 4, !tbaa !70
  %868 = add nsw i32 %847, -1
  br label %876

869:                                              ; preds = %858
  %870 = sext i32 %550 to i64
  %871 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %10, i64 0, i64 %870
  store i32 %549, ptr %871, align 4, !tbaa !66
  %872 = add nsw i32 %847, -1
  %873 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %10, i64 0, i64 %870, i32 1
  store i32 %872, ptr %873, align 4, !tbaa !69
  %874 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %10, i64 0, i64 %870, i32 2
  store i32 %854, ptr %874, align 4, !tbaa !70
  %875 = add nsw i32 %848, 1
  br label %876

876:                                              ; preds = %869, %862
  %877 = phi i32 [ %868, %862 ], [ %548, %869 ]
  %878 = phi i32 [ %549, %862 ], [ %875, %869 ]
  %879 = add nsw i32 %550, 1
  br label %896

880:                                              ; preds = %857
  %881 = add nsw i32 %847, -1
  br label %896

882:                                              ; preds = %851
  br i1 %856, label %883, label %885

883:                                              ; preds = %882
  %884 = add nsw i32 %848, 1
  br label %896

885:                                              ; preds = %882
  %886 = icmp eq i32 %550, 0
  br i1 %886, label %896, label %887

887:                                              ; preds = %885
  %888 = add nsw i32 %550, -1
  %889 = sext i32 %888 to i64
  %890 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %10, i64 0, i64 %889
  %891 = load i32, ptr %890, align 4, !tbaa !66
  %892 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %10, i64 0, i64 %889, i32 1
  %893 = load i32, ptr %892, align 4, !tbaa !69
  %894 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %10, i64 0, i64 %889, i32 2
  %895 = load i32, ptr %894, align 4, !tbaa !70
  br label %896

896:                                              ; preds = %887, %885, %883, %880, %876
  %897 = phi i32 [ %854, %885 ], [ %854, %876 ], [ %854, %880 ], [ %854, %883 ], [ %895, %887 ]
  %898 = phi i1 [ false, %885 ], [ true, %876 ], [ true, %880 ], [ true, %883 ], [ true, %887 ]
  %899 = phi i32 [ %548, %885 ], [ %877, %876 ], [ %881, %880 ], [ %548, %883 ], [ %893, %887 ]
  %900 = phi i32 [ %549, %885 ], [ %878, %876 ], [ %549, %880 ], [ %884, %883 ], [ %891, %887 ]
  %901 = phi i32 [ %550, %885 ], [ %879, %876 ], [ %550, %880 ], [ %550, %883 ], [ %888, %887 ]
  br i1 %898, label %967, label %972

902:                                              ; preds = %555, %948
  %903 = phi i64 [ %556, %555 ], [ %904, %948 ]
  %904 = add nsw i64 %903, 1
  %905 = getelementptr inbounds ptr, ptr %26, i64 %904
  %906 = icmp slt i64 %903, %559
  %907 = trunc i64 %903 to i32
  br i1 %906, label %927, label %908

908:                                              ; preds = %902, %922
  %909 = phi i64 [ %923, %922 ], [ %903, %902 ]
  %910 = load ptr, ptr %905, align 8, !tbaa !56
  %911 = getelementptr inbounds ptr, ptr %26, i64 %909
  %912 = load ptr, ptr %911, align 8, !tbaa !56
  %913 = load ptr, ptr @PL_sort_RealCmp, align 8, !tbaa !56
  %914 = load ptr, ptr %910, align 8, !tbaa !56
  %915 = load ptr, ptr %912, align 8, !tbaa !56
  %916 = tail call i32 %913(ptr noundef %914, ptr noundef %915) #5
  %917 = icmp eq i32 %916, 0
  %918 = icmp ult ptr %910, %912
  %919 = sext i1 %918 to i32
  %920 = select i1 %917, i32 %919, i32 %916
  %921 = icmp sgt i32 %920, -1
  br i1 %921, label %925, label %922

922:                                              ; preds = %908
  %923 = add nsw i64 %909, -1
  %924 = icmp sgt i64 %909, %557
  br i1 %924, label %908, label %927, !llvm.loop !71

925:                                              ; preds = %908
  %926 = trunc i64 %909 to i32
  br label %927

927:                                              ; preds = %925, %922, %902
  %928 = phi i32 [ %907, %902 ], [ %926, %925 ], [ %558, %922 ]
  %929 = trunc i64 %903 to i32
  %930 = icmp eq i32 %928, %929
  br i1 %930, label %948, label %931

931:                                              ; preds = %927
  %932 = getelementptr inbounds ptr, ptr %26, i64 %904
  %933 = load ptr, ptr %932, align 8, !tbaa !56
  %934 = sext i32 %928 to i64
  %935 = icmp sgt i64 %903, %934
  br i1 %935, label %936, label %945

936:                                              ; preds = %931
  %937 = sext i32 %928 to i64
  br label %938

938:                                              ; preds = %936, %938
  %939 = phi i64 [ %903, %936 ], [ %943, %938 ]
  %940 = getelementptr inbounds ptr, ptr %26, i64 %939
  %941 = load ptr, ptr %940, align 8, !tbaa !56
  %942 = getelementptr ptr, ptr %940, i64 1
  store ptr %941, ptr %942, align 8, !tbaa !56
  %943 = add nsw i64 %939, -1
  %944 = icmp sgt i64 %943, %937
  br i1 %944, label %938, label %945, !llvm.loop !72

945:                                              ; preds = %938, %931
  %946 = sext i32 %928 to i64
  %947 = getelementptr ptr, ptr %545, i64 %946
  store ptr %933, ptr %947, align 8, !tbaa !56
  br label %948

948:                                              ; preds = %945, %927
  %949 = trunc i64 %904 to i32
  %950 = icmp eq i32 %548, %949
  br i1 %950, label %951, label %902, !llvm.loop !73

951:                                              ; preds = %948, %553
  %952 = icmp eq i32 %550, 0
  br i1 %952, label %962, label %953

953:                                              ; preds = %951
  %954 = add nsw i32 %550, -1
  %955 = sext i32 %954 to i64
  %956 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %10, i64 0, i64 %955
  %957 = load i32, ptr %956, align 4, !tbaa !66
  %958 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %10, i64 0, i64 %955, i32 1
  %959 = load i32, ptr %958, align 4, !tbaa !69
  %960 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %10, i64 0, i64 %955, i32 2
  %961 = load i32, ptr %960, align 4, !tbaa !70
  br label %962

962:                                              ; preds = %953, %951
  %963 = phi i32 [ %961, %953 ], [ %547, %951 ]
  %964 = phi i32 [ %959, %953 ], [ %548, %951 ]
  %965 = phi i32 [ %957, %953 ], [ %549, %951 ]
  %966 = phi i32 [ %954, %953 ], [ %550, %951 ]
  br i1 %952, label %972, label %967

967:                                              ; preds = %962, %896
  %968 = phi i32 [ %897, %896 ], [ %963, %962 ]
  %969 = phi i32 [ %899, %896 ], [ %964, %962 ]
  %970 = phi i32 [ %900, %896 ], [ %965, %962 ]
  %971 = phi i32 [ %901, %896 ], [ %966, %962 ]
  br label %546, !llvm.loop !74

972:                                              ; preds = %962, %896
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %10) #5
  br label %973

973:                                              ; preds = %528, %972
  %974 = ptrtoint ptr %0 to i64
  br label %975

975:                                              ; preds = %973, %1000
  %976 = phi i64 [ %1, %973 ], [ %977, %1000 ]
  %977 = add i64 %976, -1
  %978 = getelementptr inbounds ptr, ptr %26, i64 %977
  %979 = load ptr, ptr %978, align 8, !tbaa !56
  %980 = ptrtoint ptr %979 to i64
  %981 = sub i64 %980, %974
  %982 = ashr exact i64 %981, 3
  %983 = icmp eq i64 %977, %982
  br i1 %983, label %1000, label %984

984:                                              ; preds = %975
  %985 = getelementptr inbounds i8, ptr %0, i64 %981
  %986 = load ptr, ptr %985, align 8, !tbaa !56
  br label %987

987:                                              ; preds = %987, %984
  %988 = phi i64 [ %982, %984 ], [ %996, %987 ]
  %989 = getelementptr inbounds ptr, ptr %26, i64 %988
  %990 = load ptr, ptr %989, align 8, !tbaa !56
  %991 = load ptr, ptr %990, align 8, !tbaa !56
  %992 = getelementptr inbounds ptr, ptr %0, i64 %988
  store ptr %991, ptr %992, align 8, !tbaa !56
  %993 = load ptr, ptr %989, align 8, !tbaa !56
  %994 = ptrtoint ptr %993 to i64
  %995 = sub i64 %994, %974
  %996 = ashr exact i64 %995, 3
  store ptr %992, ptr %989, align 8, !tbaa !56
  %997 = icmp eq i64 %996, %977
  br i1 %997, label %998, label %987, !llvm.loop !75

998:                                              ; preds = %987
  %999 = getelementptr inbounds ptr, ptr %0, i64 %977
  store ptr %986, ptr %999, align 8, !tbaa !56
  br label %1000

1000:                                             ; preds = %998, %975
  %1001 = icmp eq i64 %977, 0
  br i1 %1001, label %1002, label %975, !llvm.loop !76

1002:                                             ; preds = %1000
  %1003 = icmp eq ptr %26, %12
  br i1 %1003, label %1005, label %1004

1004:                                             ; preds = %1002
  call void @Perl_safesysfree(ptr noundef %26) #5
  br label %1005

1005:                                             ; preds = %1004, %1002
  store ptr %36, ptr @PL_sort_RealCmp, align 8, !tbaa !56
  br label %1006

1006:                                             ; preds = %1005, %18
  call void @llvm.lifetime.end.p0(i64 1600, ptr nonnull %12) #5
  br label %2190

1007:                                             ; preds = %15
  %1008 = and i32 %3, 1
  %1009 = icmp eq i32 %1008, 0
  br i1 %1009, label %1396, label %1010

1010:                                             ; preds = %1007
  %1011 = load ptr, ptr @PL_sort_RealCmp, align 8, !tbaa !56
  store ptr %2, ptr @PL_sort_RealCmp, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %9) #5
  %1012 = icmp ult i64 %1, 2
  br i1 %1012, label %1395, label %1013

1013:                                             ; preds = %1010
  %1014 = icmp ugt i64 %1, 255
  br i1 %1014, label %1015, label %1027

1015:                                             ; preds = %1013, %1015
  %1016 = phi i64 [ %1017, %1015 ], [ %1, %1013 ]
  %1017 = add i64 %1016, -1
  %1018 = uitofp i64 %1016 to double
  %1019 = tail call double @spec_rand() #5
  %1020 = fmul double %1019, %1018
  %1021 = fptoui double %1020 to i64
  %1022 = getelementptr inbounds ptr, ptr %0, i64 %1021
  %1023 = load ptr, ptr %1022, align 8, !tbaa !56
  %1024 = getelementptr inbounds ptr, ptr %0, i64 %1017
  %1025 = load ptr, ptr %1024, align 8, !tbaa !56
  store ptr %1025, ptr %1022, align 8, !tbaa !56
  store ptr %1023, ptr %1024, align 8, !tbaa !56
  %1026 = icmp ugt i64 %1017, 1
  br i1 %1026, label %1015, label %1027, !llvm.loop !63

1027:                                             ; preds = %1015, %1013
  %1028 = trunc i64 %1 to i32
  %1029 = add i32 %1028, -1
  %1030 = getelementptr ptr, ptr %0, i64 1
  br label %1031

1031:                                             ; preds = %1390, %1027
  %1032 = phi i32 [ 6, %1027 ], [ %1391, %1390 ]
  %1033 = phi i32 [ %1029, %1027 ], [ %1392, %1390 ]
  %1034 = phi i32 [ 0, %1027 ], [ %1393, %1390 ]
  %1035 = phi i32 [ 0, %1027 ], [ %1394, %1390 ]
  %1036 = sub nsw i32 %1033, %1034
  %1037 = icmp slt i32 %1036, %1032
  br i1 %1037, label %1038, label %1045

1038:                                             ; preds = %1031
  %1039 = icmp slt i32 %1034, %1033
  br i1 %1039, label %1040, label %1374

1040:                                             ; preds = %1038
  %1041 = sext i32 %1034 to i64
  %1042 = sext i32 %1034 to i64
  %1043 = add i32 %1034, -1
  %1044 = sext i32 %1034 to i64
  br label %1331

1045:                                             ; preds = %1031
  %1046 = add nsw i32 %1034, %1033
  %1047 = sdiv i32 %1046, 2
  %1048 = add nsw i32 %1047, -1
  %1049 = add nsw i32 %1047, 1
  %1050 = sext i32 %1048 to i64
  %1051 = getelementptr inbounds ptr, ptr %0, i64 %1050
  %1052 = load ptr, ptr %1051, align 8, !tbaa !56
  %1053 = sext i32 %1047 to i64
  %1054 = getelementptr inbounds ptr, ptr %0, i64 %1053
  %1055 = load ptr, ptr %1054, align 8, !tbaa !56
  %1056 = load ptr, ptr @PL_sort_RealCmp, align 8, !tbaa !56
  %1057 = tail call i32 %1056(ptr noundef %1052, ptr noundef %1055) #5
  %1058 = icmp sgt i32 %1057, 0
  br i1 %1058, label %1059, label %1086

1059:                                             ; preds = %1045
  %1060 = load ptr, ptr %1054, align 8, !tbaa !56
  %1061 = sext i32 %1049 to i64
  %1062 = getelementptr inbounds ptr, ptr %0, i64 %1061
  %1063 = load ptr, ptr %1062, align 8, !tbaa !56
  %1064 = load ptr, ptr @PL_sort_RealCmp, align 8, !tbaa !56
  %1065 = tail call i32 %1064(ptr noundef %1060, ptr noundef %1063) #5
  %1066 = icmp eq i32 %1065, 0
  br i1 %1066, label %1123, label %1067

1067:                                             ; preds = %1059
  %1068 = icmp slt i32 %1065, 0
  br i1 %1068, label %1069, label %1123

1069:                                             ; preds = %1067
  %1070 = load ptr, ptr %1051, align 8, !tbaa !56
  %1071 = load ptr, ptr %1062, align 8, !tbaa !56
  %1072 = load ptr, ptr @PL_sort_RealCmp, align 8, !tbaa !56
  %1073 = tail call i32 %1072(ptr noundef %1070, ptr noundef %1071) #5
  %1074 = icmp sgt i32 %1073, 0
  br i1 %1074, label %1075, label %1078

1075:                                             ; preds = %1069
  %1076 = load ptr, ptr %1054, align 8, !tbaa !56
  %1077 = load ptr, ptr %1062, align 8, !tbaa !56
  store ptr %1077, ptr %1054, align 8, !tbaa !56
  store ptr %1076, ptr %1062, align 8, !tbaa !56
  br label %1123

1078:                                             ; preds = %1069
  %1079 = icmp eq i32 %1073, 0
  %1080 = load ptr, ptr %1054, align 8, !tbaa !56
  br i1 %1079, label %1081, label %1083

1081:                                             ; preds = %1078
  %1082 = load ptr, ptr %1062, align 8, !tbaa !56
  store ptr %1082, ptr %1054, align 8, !tbaa !56
  store ptr %1080, ptr %1062, align 8, !tbaa !56
  br label %1123

1083:                                             ; preds = %1078
  %1084 = load ptr, ptr %1051, align 8, !tbaa !56
  store ptr %1084, ptr %1054, align 8, !tbaa !56
  %1085 = load ptr, ptr %1062, align 8, !tbaa !56
  store ptr %1085, ptr %1051, align 8, !tbaa !56
  store ptr %1080, ptr %1062, align 8, !tbaa !56
  br label %1123

1086:                                             ; preds = %1045
  %1087 = icmp eq i32 %1057, 0
  %1088 = load ptr, ptr %1054, align 8, !tbaa !56
  %1089 = sext i32 %1049 to i64
  %1090 = getelementptr inbounds ptr, ptr %0, i64 %1089
  %1091 = load ptr, ptr %1090, align 8, !tbaa !56
  %1092 = load ptr, ptr @PL_sort_RealCmp, align 8, !tbaa !56
  %1093 = tail call i32 %1092(ptr noundef %1088, ptr noundef %1091) #5
  %1094 = icmp sgt i32 %1093, 0
  br i1 %1087, label %1095, label %1101

1095:                                             ; preds = %1086
  br i1 %1094, label %1123, label %1096

1096:                                             ; preds = %1095
  %1097 = icmp eq i32 %1093, 0
  br i1 %1097, label %1123, label %1098

1098:                                             ; preds = %1096
  %1099 = load ptr, ptr %1051, align 8, !tbaa !56
  %1100 = load ptr, ptr %1090, align 8, !tbaa !56
  store ptr %1100, ptr %1051, align 8, !tbaa !56
  store ptr %1099, ptr %1090, align 8, !tbaa !56
  br label %1123

1101:                                             ; preds = %1086
  br i1 %1094, label %1102, label %1118

1102:                                             ; preds = %1101
  %1103 = load ptr, ptr %1051, align 8, !tbaa !56
  %1104 = load ptr, ptr %1090, align 8, !tbaa !56
  %1105 = load ptr, ptr @PL_sort_RealCmp, align 8, !tbaa !56
  %1106 = tail call i32 %1105(ptr noundef %1103, ptr noundef %1104) #5
  %1107 = icmp sgt i32 %1106, 0
  br i1 %1107, label %1108, label %1111

1108:                                             ; preds = %1102
  %1109 = load ptr, ptr %1051, align 8, !tbaa !56
  %1110 = load ptr, ptr %1054, align 8, !tbaa !56
  store ptr %1110, ptr %1051, align 8, !tbaa !56
  store ptr %1109, ptr %1054, align 8, !tbaa !56
  br label %1123

1111:                                             ; preds = %1102
  %1112 = icmp eq i32 %1106, 0
  %1113 = load ptr, ptr %1051, align 8, !tbaa !56
  %1114 = load ptr, ptr %1054, align 8, !tbaa !56
  store ptr %1114, ptr %1051, align 8, !tbaa !56
  br i1 %1112, label %1115, label %1116

1115:                                             ; preds = %1111
  store ptr %1113, ptr %1054, align 8, !tbaa !56
  br label %1123

1116:                                             ; preds = %1111
  %1117 = load ptr, ptr %1090, align 8, !tbaa !56
  store ptr %1117, ptr %1054, align 8, !tbaa !56
  store ptr %1113, ptr %1090, align 8, !tbaa !56
  br label %1123

1118:                                             ; preds = %1101
  %1119 = icmp eq i32 %1093, 0
  %1120 = load ptr, ptr %1051, align 8, !tbaa !56
  %1121 = load ptr, ptr %1090, align 8, !tbaa !56
  store ptr %1121, ptr %1051, align 8, !tbaa !56
  store ptr %1120, ptr %1090, align 8, !tbaa !56
  %1122 = select i1 %1119, i32 %1048, i32 %1047
  br label %1123

1123:                                             ; preds = %1118, %1116, %1115, %1108, %1098, %1096, %1095, %1083, %1081, %1075, %1067, %1059
  %1124 = phi i32 [ 1, %1075 ], [ 1, %1081 ], [ 1, %1083 ], [ 0, %1067 ], [ 1, %1098 ], [ 1, %1108 ], [ 1, %1115 ], [ 1, %1116 ], [ 0, %1059 ], [ 0, %1095 ], [ 0, %1096 ], [ 1, %1118 ]
  %1125 = phi i32 [ %1047, %1075 ], [ %1048, %1081 ], [ %1047, %1083 ], [ %1047, %1067 ], [ %1047, %1098 ], [ %1047, %1108 ], [ %1047, %1115 ], [ %1047, %1116 ], [ %1047, %1059 ], [ %1048, %1095 ], [ %1048, %1096 ], [ %1122, %1118 ]
  %1126 = phi i32 [ %1047, %1075 ], [ %1047, %1081 ], [ %1047, %1083 ], [ %1047, %1067 ], [ %1049, %1098 ], [ %1047, %1108 ], [ %1049, %1115 ], [ %1047, %1116 ], [ %1049, %1059 ], [ %1047, %1095 ], [ %1049, %1096 ], [ %1047, %1118 ]
  %1127 = add nsw i32 %1047, -2
  %1128 = add nsw i32 %1047, 2
  %1129 = sext i32 %1034 to i64
  %1130 = add i32 %1034, -1
  %1131 = sext i32 %1033 to i64
  %1132 = add i32 %1033, 1
  br label %1133

1133:                                             ; preds = %1273, %1123
  %1134 = phi i32 [ %1124, %1123 ], [ %1274, %1273 ]
  %1135 = phi i32 [ %1125, %1123 ], [ %1276, %1273 ]
  %1136 = phi i32 [ %1126, %1123 ], [ %1277, %1273 ]
  %1137 = phi i32 [ %1127, %1123 ], [ %1278, %1273 ]
  %1138 = phi i32 [ %1128, %1123 ], [ %1279, %1273 ]
  %1139 = icmp slt i32 %1137, %1034
  br i1 %1139, label %1174, label %1140

1140:                                             ; preds = %1133
  %1141 = sext i32 %1137 to i64
  br label %1142

1142:                                             ; preds = %1140, %1167
  %1143 = phi i64 [ %1141, %1140 ], [ %1170, %1167 ]
  %1144 = phi i1 [ %1139, %1140 ], [ %1171, %1167 ]
  %1145 = phi i32 [ %1135, %1140 ], [ %1169, %1167 ]
  %1146 = phi i32 [ %1134, %1140 ], [ %1168, %1167 ]
  %1147 = getelementptr inbounds ptr, ptr %0, i64 %1143
  %1148 = load ptr, ptr %1147, align 8, !tbaa !56
  %1149 = sext i32 %1145 to i64
  %1150 = getelementptr inbounds ptr, ptr %0, i64 %1149
  %1151 = load ptr, ptr %1150, align 8, !tbaa !56
  %1152 = load ptr, ptr @PL_sort_RealCmp, align 8, !tbaa !56
  %1153 = tail call i32 %1152(ptr noundef %1148, ptr noundef %1151) #5
  %1154 = icmp sgt i32 %1153, 0
  br i1 %1154, label %1167, label %1155

1155:                                             ; preds = %1142
  %1156 = icmp eq i32 %1153, 0
  br i1 %1156, label %1157, label %1172

1157:                                             ; preds = %1155
  %1158 = add nsw i32 %1145, -1
  %1159 = trunc i64 %1143 to i32
  %1160 = icmp eq i32 %1158, %1159
  br i1 %1160, label %1167, label %1161

1161:                                             ; preds = %1157
  %1162 = add nsw i32 %1146, 1
  %1163 = load ptr, ptr %1147, align 8, !tbaa !56
  %1164 = sext i32 %1158 to i64
  %1165 = getelementptr inbounds ptr, ptr %0, i64 %1164
  %1166 = load ptr, ptr %1165, align 8, !tbaa !56
  store ptr %1166, ptr %1147, align 8, !tbaa !56
  store ptr %1163, ptr %1165, align 8, !tbaa !56
  br label %1167

1167:                                             ; preds = %1161, %1157, %1142
  %1168 = phi i32 [ %1146, %1142 ], [ %1162, %1161 ], [ %1146, %1157 ]
  %1169 = phi i32 [ %1145, %1142 ], [ %1158, %1161 ], [ %1158, %1157 ]
  %1170 = add nsw i64 %1143, -1
  %1171 = icmp sle i64 %1143, %1129
  br i1 %1171, label %1174, label %1142, !llvm.loop !64

1172:                                             ; preds = %1155
  %1173 = trunc i64 %1143 to i32
  br label %1174

1174:                                             ; preds = %1172, %1167, %1133
  %1175 = phi i32 [ %1134, %1133 ], [ %1146, %1172 ], [ %1168, %1167 ]
  %1176 = phi i32 [ %1135, %1133 ], [ %1145, %1172 ], [ %1169, %1167 ]
  %1177 = phi i32 [ %1137, %1133 ], [ %1173, %1172 ], [ %1130, %1167 ]
  %1178 = phi i1 [ %1139, %1133 ], [ %1144, %1172 ], [ %1171, %1167 ]
  %1179 = icmp sgt i32 %1138, %1033
  br i1 %1179, label %1214, label %1180

1180:                                             ; preds = %1174
  %1181 = sext i32 %1138 to i64
  br label %1182

1182:                                             ; preds = %1180, %1207
  %1183 = phi i64 [ %1181, %1180 ], [ %1210, %1207 ]
  %1184 = phi i1 [ %1179, %1180 ], [ %1211, %1207 ]
  %1185 = phi i32 [ %1136, %1180 ], [ %1209, %1207 ]
  %1186 = phi i32 [ %1175, %1180 ], [ %1208, %1207 ]
  %1187 = sext i32 %1185 to i64
  %1188 = getelementptr inbounds ptr, ptr %0, i64 %1187
  %1189 = load ptr, ptr %1188, align 8, !tbaa !56
  %1190 = getelementptr inbounds ptr, ptr %0, i64 %1183
  %1191 = load ptr, ptr %1190, align 8, !tbaa !56
  %1192 = load ptr, ptr @PL_sort_RealCmp, align 8, !tbaa !56
  %1193 = tail call i32 %1192(ptr noundef %1189, ptr noundef %1191) #5
  %1194 = icmp sgt i32 %1193, 0
  br i1 %1194, label %1207, label %1195

1195:                                             ; preds = %1182
  %1196 = icmp eq i32 %1193, 0
  br i1 %1196, label %1197, label %1212

1197:                                             ; preds = %1195
  %1198 = add nsw i32 %1185, 1
  %1199 = trunc i64 %1183 to i32
  %1200 = icmp eq i32 %1198, %1199
  br i1 %1200, label %1207, label %1201

1201:                                             ; preds = %1197
  %1202 = add nsw i32 %1186, 1
  %1203 = sext i32 %1198 to i64
  %1204 = getelementptr inbounds ptr, ptr %0, i64 %1203
  %1205 = load ptr, ptr %1204, align 8, !tbaa !56
  %1206 = load ptr, ptr %1190, align 8, !tbaa !56
  store ptr %1206, ptr %1204, align 8, !tbaa !56
  store ptr %1205, ptr %1190, align 8, !tbaa !56
  br label %1207

1207:                                             ; preds = %1201, %1197, %1182
  %1208 = phi i32 [ %1186, %1182 ], [ %1202, %1201 ], [ %1186, %1197 ]
  %1209 = phi i32 [ %1185, %1182 ], [ %1198, %1201 ], [ %1198, %1197 ]
  %1210 = add nsw i64 %1183, 1
  %1211 = icmp sge i64 %1183, %1131
  br i1 %1211, label %1214, label %1182, !llvm.loop !65

1212:                                             ; preds = %1195
  %1213 = trunc i64 %1183 to i32
  br label %1214

1214:                                             ; preds = %1212, %1207, %1174
  %1215 = phi i32 [ %1175, %1174 ], [ %1186, %1212 ], [ %1208, %1207 ]
  %1216 = phi i32 [ %1136, %1174 ], [ %1185, %1212 ], [ %1209, %1207 ]
  %1217 = phi i32 [ %1138, %1174 ], [ %1213, %1212 ], [ %1132, %1207 ]
  %1218 = phi i1 [ %1179, %1174 ], [ %1184, %1212 ], [ %1211, %1207 ]
  br i1 %1178, label %1246, label %1219

1219:                                             ; preds = %1214
  br i1 %1218, label %1229, label %1220

1220:                                             ; preds = %1219
  %1221 = sext i32 %1177 to i64
  %1222 = getelementptr inbounds ptr, ptr %0, i64 %1221
  %1223 = load ptr, ptr %1222, align 8, !tbaa !56
  %1224 = sext i32 %1217 to i64
  %1225 = getelementptr inbounds ptr, ptr %0, i64 %1224
  %1226 = load ptr, ptr %1225, align 8, !tbaa !56
  store ptr %1226, ptr %1222, align 8, !tbaa !56
  store ptr %1223, ptr %1225, align 8, !tbaa !56
  %1227 = add nsw i32 %1177, -1
  %1228 = add nsw i32 %1217, 1
  br label %1267

1229:                                             ; preds = %1219
  %1230 = add nsw i32 %1176, -1
  %1231 = icmp eq i32 %1230, %1177
  %1232 = sext i32 %1177 to i64
  %1233 = getelementptr inbounds ptr, ptr %0, i64 %1232
  %1234 = load ptr, ptr %1233, align 8, !tbaa !56
  br i1 %1231, label %1239, label %1235

1235:                                             ; preds = %1229
  %1236 = sext i32 %1230 to i64
  %1237 = getelementptr inbounds ptr, ptr %0, i64 %1236
  %1238 = load ptr, ptr %1237, align 8, !tbaa !56
  store ptr %1238, ptr %1233, align 8, !tbaa !56
  br label %1239

1239:                                             ; preds = %1229, %1235
  %1240 = phi ptr [ %1237, %1235 ], [ %1233, %1229 ]
  %1241 = sext i32 %1216 to i64
  %1242 = getelementptr inbounds ptr, ptr %0, i64 %1241
  %1243 = load ptr, ptr %1242, align 8, !tbaa !56
  store ptr %1243, ptr %1240, align 8, !tbaa !56
  store ptr %1234, ptr %1242, align 8, !tbaa !56
  %1244 = add nsw i32 %1216, -1
  %1245 = add nsw i32 %1177, -1
  br label %1267

1246:                                             ; preds = %1214
  br i1 %1218, label %1273, label %1247

1247:                                             ; preds = %1246
  %1248 = add nsw i32 %1216, 1
  %1249 = icmp eq i32 %1248, %1217
  %1250 = sext i32 %1176 to i64
  %1251 = getelementptr inbounds ptr, ptr %0, i64 %1250
  %1252 = load ptr, ptr %1251, align 8, !tbaa !56
  br i1 %1249, label %1253, label %1257

1253:                                             ; preds = %1247
  %1254 = sext i32 %1217 to i64
  %1255 = getelementptr inbounds ptr, ptr %0, i64 %1254
  %1256 = load ptr, ptr %1255, align 8, !tbaa !56
  store ptr %1252, ptr %1255, align 8, !tbaa !56
  store ptr %1256, ptr %1251, align 8, !tbaa !56
  br label %1264

1257:                                             ; preds = %1247
  %1258 = sext i32 %1248 to i64
  %1259 = getelementptr inbounds ptr, ptr %0, i64 %1258
  %1260 = load ptr, ptr %1259, align 8, !tbaa !56
  store ptr %1252, ptr %1259, align 8, !tbaa !56
  %1261 = sext i32 %1217 to i64
  %1262 = getelementptr inbounds ptr, ptr %0, i64 %1261
  %1263 = load ptr, ptr %1262, align 8, !tbaa !56
  store ptr %1263, ptr %1251, align 8, !tbaa !56
  store ptr %1260, ptr %1262, align 8, !tbaa !56
  br label %1264

1264:                                             ; preds = %1257, %1253
  %1265 = add nsw i32 %1176, 1
  %1266 = add nsw i32 %1217, 1
  br label %1267

1267:                                             ; preds = %1264, %1239, %1220
  %1268 = phi i32 [ %1176, %1220 ], [ %1230, %1239 ], [ %1265, %1264 ]
  %1269 = phi i32 [ %1216, %1220 ], [ %1244, %1239 ], [ %1248, %1264 ]
  %1270 = phi i32 [ %1227, %1220 ], [ %1245, %1239 ], [ %1177, %1264 ]
  %1271 = phi i32 [ %1228, %1220 ], [ %1217, %1239 ], [ %1266, %1264 ]
  %1272 = add nsw i32 %1215, 1
  br label %1273

1273:                                             ; preds = %1267, %1246
  %1274 = phi i32 [ %1272, %1267 ], [ %1215, %1246 ]
  %1275 = phi i1 [ true, %1267 ], [ false, %1246 ]
  %1276 = phi i32 [ %1268, %1267 ], [ %1176, %1246 ]
  %1277 = phi i32 [ %1269, %1267 ], [ %1216, %1246 ]
  %1278 = phi i32 [ %1270, %1267 ], [ %1177, %1246 ]
  %1279 = phi i32 [ %1271, %1267 ], [ %1217, %1246 ]
  br i1 %1275, label %1133, label %1280

1280:                                             ; preds = %1273
  %1281 = icmp slt i32 %1274, 3
  %1282 = shl nsw i32 %1032, 1
  %1283 = select i1 %1281, i32 %1282, i32 6
  %1284 = icmp slt i32 %1034, %1276
  %1285 = icmp slt i32 %1277, %1033
  br i1 %1284, label %1286, label %1311

1286:                                             ; preds = %1280
  br i1 %1285, label %1287, label %1309

1287:                                             ; preds = %1286
  %1288 = sub nsw i32 %1033, %1277
  %1289 = sub nsw i32 %1276, %1034
  %1290 = icmp sgt i32 %1288, %1289
  br i1 %1290, label %1291, label %1298

1291:                                             ; preds = %1287
  %1292 = add nsw i32 %1277, 1
  %1293 = sext i32 %1035 to i64
  %1294 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %9, i64 0, i64 %1293
  store i32 %1292, ptr %1294, align 4, !tbaa !66
  %1295 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %9, i64 0, i64 %1293, i32 1
  store i32 %1033, ptr %1295, align 4, !tbaa !69
  %1296 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %9, i64 0, i64 %1293, i32 2
  store i32 %1283, ptr %1296, align 4, !tbaa !70
  %1297 = add nsw i32 %1276, -1
  br label %1305

1298:                                             ; preds = %1287
  %1299 = sext i32 %1035 to i64
  %1300 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %9, i64 0, i64 %1299
  store i32 %1034, ptr %1300, align 4, !tbaa !66
  %1301 = add nsw i32 %1276, -1
  %1302 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %9, i64 0, i64 %1299, i32 1
  store i32 %1301, ptr %1302, align 4, !tbaa !69
  %1303 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %9, i64 0, i64 %1299, i32 2
  store i32 %1283, ptr %1303, align 4, !tbaa !70
  %1304 = add nsw i32 %1277, 1
  br label %1305

1305:                                             ; preds = %1298, %1291
  %1306 = phi i32 [ %1297, %1291 ], [ %1033, %1298 ]
  %1307 = phi i32 [ %1034, %1291 ], [ %1304, %1298 ]
  %1308 = add nsw i32 %1035, 1
  br label %1325

1309:                                             ; preds = %1286
  %1310 = add nsw i32 %1276, -1
  br label %1325

1311:                                             ; preds = %1280
  br i1 %1285, label %1312, label %1314

1312:                                             ; preds = %1311
  %1313 = add nsw i32 %1277, 1
  br label %1325

1314:                                             ; preds = %1311
  %1315 = icmp eq i32 %1035, 0
  br i1 %1315, label %1325, label %1316

1316:                                             ; preds = %1314
  %1317 = add nsw i32 %1035, -1
  %1318 = sext i32 %1317 to i64
  %1319 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %9, i64 0, i64 %1318
  %1320 = load i32, ptr %1319, align 4, !tbaa !66
  %1321 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %9, i64 0, i64 %1318, i32 1
  %1322 = load i32, ptr %1321, align 4, !tbaa !69
  %1323 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %9, i64 0, i64 %1318, i32 2
  %1324 = load i32, ptr %1323, align 4, !tbaa !70
  br label %1325

1325:                                             ; preds = %1316, %1314, %1312, %1309, %1305
  %1326 = phi i32 [ %1283, %1314 ], [ %1283, %1305 ], [ %1283, %1309 ], [ %1283, %1312 ], [ %1324, %1316 ]
  %1327 = phi i1 [ false, %1314 ], [ true, %1305 ], [ true, %1309 ], [ true, %1312 ], [ true, %1316 ]
  %1328 = phi i32 [ %1033, %1314 ], [ %1306, %1305 ], [ %1310, %1309 ], [ %1033, %1312 ], [ %1322, %1316 ]
  %1329 = phi i32 [ %1034, %1314 ], [ %1307, %1305 ], [ %1034, %1309 ], [ %1313, %1312 ], [ %1320, %1316 ]
  %1330 = phi i32 [ %1035, %1314 ], [ %1308, %1305 ], [ %1035, %1309 ], [ %1035, %1312 ], [ %1317, %1316 ]
  br i1 %1327, label %1390, label %1395

1331:                                             ; preds = %1040, %1371
  %1332 = phi i64 [ %1041, %1040 ], [ %1333, %1371 ]
  %1333 = add nsw i64 %1332, 1
  %1334 = getelementptr inbounds ptr, ptr %0, i64 %1333
  %1335 = icmp slt i64 %1332, %1044
  %1336 = trunc i64 %1332 to i32
  br i1 %1335, label %1350, label %1337

1337:                                             ; preds = %1331, %1345
  %1338 = phi i64 [ %1346, %1345 ], [ %1332, %1331 ]
  %1339 = load ptr, ptr %1334, align 8, !tbaa !56
  %1340 = getelementptr inbounds ptr, ptr %0, i64 %1338
  %1341 = load ptr, ptr %1340, align 8, !tbaa !56
  %1342 = load ptr, ptr @PL_sort_RealCmp, align 8, !tbaa !56
  %1343 = tail call i32 %1342(ptr noundef %1339, ptr noundef %1341) #5
  %1344 = icmp slt i32 %1343, 1
  br i1 %1344, label %1348, label %1345

1345:                                             ; preds = %1337
  %1346 = add nsw i64 %1338, -1
  %1347 = icmp sgt i64 %1338, %1042
  br i1 %1347, label %1337, label %1350, !llvm.loop !71

1348:                                             ; preds = %1337
  %1349 = trunc i64 %1338 to i32
  br label %1350

1350:                                             ; preds = %1348, %1345, %1331
  %1351 = phi i32 [ %1336, %1331 ], [ %1349, %1348 ], [ %1043, %1345 ]
  %1352 = trunc i64 %1332 to i32
  %1353 = icmp eq i32 %1351, %1352
  br i1 %1353, label %1371, label %1354

1354:                                             ; preds = %1350
  %1355 = getelementptr inbounds ptr, ptr %0, i64 %1333
  %1356 = load ptr, ptr %1355, align 8, !tbaa !56
  %1357 = sext i32 %1351 to i64
  %1358 = icmp sgt i64 %1332, %1357
  br i1 %1358, label %1359, label %1368

1359:                                             ; preds = %1354
  %1360 = sext i32 %1351 to i64
  br label %1361

1361:                                             ; preds = %1359, %1361
  %1362 = phi i64 [ %1332, %1359 ], [ %1366, %1361 ]
  %1363 = getelementptr inbounds ptr, ptr %0, i64 %1362
  %1364 = load ptr, ptr %1363, align 8, !tbaa !56
  %1365 = getelementptr ptr, ptr %1363, i64 1
  store ptr %1364, ptr %1365, align 8, !tbaa !56
  %1366 = add nsw i64 %1362, -1
  %1367 = icmp sgt i64 %1366, %1360
  br i1 %1367, label %1361, label %1368, !llvm.loop !72

1368:                                             ; preds = %1361, %1354
  %1369 = sext i32 %1351 to i64
  %1370 = getelementptr ptr, ptr %1030, i64 %1369
  store ptr %1356, ptr %1370, align 8, !tbaa !56
  br label %1371

1371:                                             ; preds = %1368, %1350
  %1372 = trunc i64 %1333 to i32
  %1373 = icmp eq i32 %1033, %1372
  br i1 %1373, label %1374, label %1331, !llvm.loop !73

1374:                                             ; preds = %1371, %1038
  %1375 = icmp eq i32 %1035, 0
  br i1 %1375, label %1385, label %1376

1376:                                             ; preds = %1374
  %1377 = add nsw i32 %1035, -1
  %1378 = sext i32 %1377 to i64
  %1379 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %9, i64 0, i64 %1378
  %1380 = load i32, ptr %1379, align 4, !tbaa !66
  %1381 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %9, i64 0, i64 %1378, i32 1
  %1382 = load i32, ptr %1381, align 4, !tbaa !69
  %1383 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %9, i64 0, i64 %1378, i32 2
  %1384 = load i32, ptr %1383, align 4, !tbaa !70
  br label %1385

1385:                                             ; preds = %1376, %1374
  %1386 = phi i32 [ %1384, %1376 ], [ %1032, %1374 ]
  %1387 = phi i32 [ %1382, %1376 ], [ %1033, %1374 ]
  %1388 = phi i32 [ %1380, %1376 ], [ %1034, %1374 ]
  %1389 = phi i32 [ %1377, %1376 ], [ %1035, %1374 ]
  br i1 %1375, label %1395, label %1390

1390:                                             ; preds = %1385, %1325
  %1391 = phi i32 [ %1326, %1325 ], [ %1386, %1385 ]
  %1392 = phi i32 [ %1328, %1325 ], [ %1387, %1385 ]
  %1393 = phi i32 [ %1329, %1325 ], [ %1388, %1385 ]
  %1394 = phi i32 [ %1330, %1325 ], [ %1389, %1385 ]
  br label %1031, !llvm.loop !74

1395:                                             ; preds = %1385, %1325, %1010
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %9) #5
  store ptr %1011, ptr @PL_sort_RealCmp, align 8, !tbaa !56
  br label %2190

1396:                                             ; preds = %1007
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %8) #5
  %1397 = icmp ult i64 %1, 2
  br i1 %1397, label %1772, label %1398

1398:                                             ; preds = %1396
  %1399 = icmp ugt i64 %1, 255
  br i1 %1399, label %1400, label %1412

1400:                                             ; preds = %1398, %1400
  %1401 = phi i64 [ %1402, %1400 ], [ %1, %1398 ]
  %1402 = add i64 %1401, -1
  %1403 = uitofp i64 %1401 to double
  %1404 = tail call double @spec_rand() #5
  %1405 = fmul double %1404, %1403
  %1406 = fptoui double %1405 to i64
  %1407 = getelementptr inbounds ptr, ptr %0, i64 %1406
  %1408 = load ptr, ptr %1407, align 8, !tbaa !56
  %1409 = getelementptr inbounds ptr, ptr %0, i64 %1402
  %1410 = load ptr, ptr %1409, align 8, !tbaa !56
  store ptr %1410, ptr %1407, align 8, !tbaa !56
  store ptr %1408, ptr %1409, align 8, !tbaa !56
  %1411 = icmp ugt i64 %1402, 1
  br i1 %1411, label %1400, label %1412, !llvm.loop !63

1412:                                             ; preds = %1400, %1398
  %1413 = trunc i64 %1 to i32
  %1414 = add i32 %1413, -1
  %1415 = getelementptr ptr, ptr %0, i64 1
  br label %1416

1416:                                             ; preds = %1767, %1412
  %1417 = phi i32 [ 6, %1412 ], [ %1768, %1767 ]
  %1418 = phi i32 [ %1414, %1412 ], [ %1769, %1767 ]
  %1419 = phi i32 [ 0, %1412 ], [ %1770, %1767 ]
  %1420 = phi i32 [ 0, %1412 ], [ %1771, %1767 ]
  %1421 = sub nsw i32 %1418, %1419
  %1422 = icmp slt i32 %1421, %1417
  br i1 %1422, label %1423, label %1430

1423:                                             ; preds = %1416
  %1424 = icmp slt i32 %1419, %1418
  br i1 %1424, label %1425, label %1751

1425:                                             ; preds = %1423
  %1426 = sext i32 %1419 to i64
  %1427 = sext i32 %1419 to i64
  %1428 = add i32 %1419, -1
  %1429 = sext i32 %1419 to i64
  br label %1709

1430:                                             ; preds = %1416
  %1431 = add nsw i32 %1419, %1418
  %1432 = sdiv i32 %1431, 2
  %1433 = add nsw i32 %1432, -1
  %1434 = add nsw i32 %1432, 1
  %1435 = sext i32 %1433 to i64
  %1436 = getelementptr inbounds ptr, ptr %0, i64 %1435
  %1437 = load ptr, ptr %1436, align 8, !tbaa !56
  %1438 = sext i32 %1432 to i64
  %1439 = getelementptr inbounds ptr, ptr %0, i64 %1438
  %1440 = load ptr, ptr %1439, align 8, !tbaa !56
  %1441 = tail call i32 %2(ptr noundef %1437, ptr noundef %1440) #5
  %1442 = icmp slt i32 %1441, 0
  br i1 %1442, label %1443, label %1468

1443:                                             ; preds = %1430
  %1444 = load ptr, ptr %1439, align 8, !tbaa !56
  %1445 = sext i32 %1434 to i64
  %1446 = getelementptr inbounds ptr, ptr %0, i64 %1445
  %1447 = load ptr, ptr %1446, align 8, !tbaa !56
  %1448 = tail call i32 %2(ptr noundef %1444, ptr noundef %1447) #5
  %1449 = icmp eq i32 %1448, 0
  br i1 %1449, label %1503, label %1450

1450:                                             ; preds = %1443
  %1451 = icmp sgt i32 %1448, 0
  br i1 %1451, label %1452, label %1503

1452:                                             ; preds = %1450
  %1453 = load ptr, ptr %1436, align 8, !tbaa !56
  %1454 = load ptr, ptr %1446, align 8, !tbaa !56
  %1455 = tail call i32 %2(ptr noundef %1453, ptr noundef %1454) #5
  %1456 = icmp slt i32 %1455, 0
  br i1 %1456, label %1457, label %1460

1457:                                             ; preds = %1452
  %1458 = load ptr, ptr %1439, align 8, !tbaa !56
  %1459 = load ptr, ptr %1446, align 8, !tbaa !56
  store ptr %1459, ptr %1439, align 8, !tbaa !56
  store ptr %1458, ptr %1446, align 8, !tbaa !56
  br label %1503

1460:                                             ; preds = %1452
  %1461 = icmp eq i32 %1455, 0
  %1462 = load ptr, ptr %1439, align 8, !tbaa !56
  br i1 %1461, label %1463, label %1465

1463:                                             ; preds = %1460
  %1464 = load ptr, ptr %1446, align 8, !tbaa !56
  store ptr %1464, ptr %1439, align 8, !tbaa !56
  store ptr %1462, ptr %1446, align 8, !tbaa !56
  br label %1503

1465:                                             ; preds = %1460
  %1466 = load ptr, ptr %1436, align 8, !tbaa !56
  store ptr %1466, ptr %1439, align 8, !tbaa !56
  %1467 = load ptr, ptr %1446, align 8, !tbaa !56
  store ptr %1467, ptr %1436, align 8, !tbaa !56
  store ptr %1462, ptr %1446, align 8, !tbaa !56
  br label %1503

1468:                                             ; preds = %1430
  %1469 = icmp eq i32 %1441, 0
  %1470 = load ptr, ptr %1439, align 8, !tbaa !56
  %1471 = sext i32 %1434 to i64
  %1472 = getelementptr inbounds ptr, ptr %0, i64 %1471
  %1473 = load ptr, ptr %1472, align 8, !tbaa !56
  %1474 = tail call i32 %2(ptr noundef %1470, ptr noundef %1473) #5
  %1475 = icmp slt i32 %1474, 0
  br i1 %1469, label %1476, label %1482

1476:                                             ; preds = %1468
  br i1 %1475, label %1503, label %1477

1477:                                             ; preds = %1476
  %1478 = icmp eq i32 %1474, 0
  br i1 %1478, label %1503, label %1479

1479:                                             ; preds = %1477
  %1480 = load ptr, ptr %1436, align 8, !tbaa !56
  %1481 = load ptr, ptr %1472, align 8, !tbaa !56
  store ptr %1481, ptr %1436, align 8, !tbaa !56
  store ptr %1480, ptr %1472, align 8, !tbaa !56
  br label %1503

1482:                                             ; preds = %1468
  br i1 %1475, label %1483, label %1498

1483:                                             ; preds = %1482
  %1484 = load ptr, ptr %1436, align 8, !tbaa !56
  %1485 = load ptr, ptr %1472, align 8, !tbaa !56
  %1486 = tail call i32 %2(ptr noundef %1484, ptr noundef %1485) #5
  %1487 = icmp slt i32 %1486, 0
  br i1 %1487, label %1488, label %1491

1488:                                             ; preds = %1483
  %1489 = load ptr, ptr %1436, align 8, !tbaa !56
  %1490 = load ptr, ptr %1439, align 8, !tbaa !56
  store ptr %1490, ptr %1436, align 8, !tbaa !56
  store ptr %1489, ptr %1439, align 8, !tbaa !56
  br label %1503

1491:                                             ; preds = %1483
  %1492 = icmp eq i32 %1486, 0
  %1493 = load ptr, ptr %1436, align 8, !tbaa !56
  %1494 = load ptr, ptr %1439, align 8, !tbaa !56
  store ptr %1494, ptr %1436, align 8, !tbaa !56
  br i1 %1492, label %1495, label %1496

1495:                                             ; preds = %1491
  store ptr %1493, ptr %1439, align 8, !tbaa !56
  br label %1503

1496:                                             ; preds = %1491
  %1497 = load ptr, ptr %1472, align 8, !tbaa !56
  store ptr %1497, ptr %1439, align 8, !tbaa !56
  store ptr %1493, ptr %1472, align 8, !tbaa !56
  br label %1503

1498:                                             ; preds = %1482
  %1499 = icmp eq i32 %1474, 0
  %1500 = load ptr, ptr %1436, align 8, !tbaa !56
  %1501 = load ptr, ptr %1472, align 8, !tbaa !56
  store ptr %1501, ptr %1436, align 8, !tbaa !56
  store ptr %1500, ptr %1472, align 8, !tbaa !56
  %1502 = select i1 %1499, i32 %1433, i32 %1432
  br label %1503

1503:                                             ; preds = %1498, %1496, %1495, %1488, %1479, %1477, %1476, %1465, %1463, %1457, %1450, %1443
  %1504 = phi i32 [ 1, %1457 ], [ 1, %1463 ], [ 1, %1465 ], [ 0, %1450 ], [ 1, %1479 ], [ 1, %1488 ], [ 1, %1495 ], [ 1, %1496 ], [ 0, %1443 ], [ 0, %1476 ], [ 0, %1477 ], [ 1, %1498 ]
  %1505 = phi i32 [ %1432, %1457 ], [ %1433, %1463 ], [ %1432, %1465 ], [ %1432, %1450 ], [ %1432, %1479 ], [ %1432, %1488 ], [ %1432, %1495 ], [ %1432, %1496 ], [ %1432, %1443 ], [ %1433, %1476 ], [ %1433, %1477 ], [ %1502, %1498 ]
  %1506 = phi i32 [ %1432, %1457 ], [ %1432, %1463 ], [ %1432, %1465 ], [ %1432, %1450 ], [ %1434, %1479 ], [ %1432, %1488 ], [ %1434, %1495 ], [ %1432, %1496 ], [ %1434, %1443 ], [ %1432, %1476 ], [ %1434, %1477 ], [ %1432, %1498 ]
  %1507 = add nsw i32 %1432, -2
  %1508 = add nsw i32 %1432, 2
  %1509 = sext i32 %1419 to i64
  %1510 = add i32 %1419, -1
  %1511 = sext i32 %1418 to i64
  %1512 = add i32 %1418, 1
  br label %1513

1513:                                             ; preds = %1651, %1503
  %1514 = phi i32 [ %1504, %1503 ], [ %1652, %1651 ]
  %1515 = phi i32 [ %1505, %1503 ], [ %1654, %1651 ]
  %1516 = phi i32 [ %1506, %1503 ], [ %1655, %1651 ]
  %1517 = phi i32 [ %1507, %1503 ], [ %1656, %1651 ]
  %1518 = phi i32 [ %1508, %1503 ], [ %1657, %1651 ]
  %1519 = icmp slt i32 %1517, %1419
  br i1 %1519, label %1553, label %1520

1520:                                             ; preds = %1513
  %1521 = sext i32 %1517 to i64
  br label %1522

1522:                                             ; preds = %1520, %1546
  %1523 = phi i64 [ %1521, %1520 ], [ %1549, %1546 ]
  %1524 = phi i1 [ %1519, %1520 ], [ %1550, %1546 ]
  %1525 = phi i32 [ %1515, %1520 ], [ %1548, %1546 ]
  %1526 = phi i32 [ %1514, %1520 ], [ %1547, %1546 ]
  %1527 = getelementptr inbounds ptr, ptr %0, i64 %1523
  %1528 = load ptr, ptr %1527, align 8, !tbaa !56
  %1529 = sext i32 %1525 to i64
  %1530 = getelementptr inbounds ptr, ptr %0, i64 %1529
  %1531 = load ptr, ptr %1530, align 8, !tbaa !56
  %1532 = tail call i32 %2(ptr noundef %1528, ptr noundef %1531) #5
  %1533 = icmp slt i32 %1532, 0
  br i1 %1533, label %1546, label %1534

1534:                                             ; preds = %1522
  %1535 = icmp eq i32 %1532, 0
  br i1 %1535, label %1536, label %1551

1536:                                             ; preds = %1534
  %1537 = add nsw i32 %1525, -1
  %1538 = trunc i64 %1523 to i32
  %1539 = icmp eq i32 %1537, %1538
  br i1 %1539, label %1546, label %1540

1540:                                             ; preds = %1536
  %1541 = add nsw i32 %1526, 1
  %1542 = load ptr, ptr %1527, align 8, !tbaa !56
  %1543 = sext i32 %1537 to i64
  %1544 = getelementptr inbounds ptr, ptr %0, i64 %1543
  %1545 = load ptr, ptr %1544, align 8, !tbaa !56
  store ptr %1545, ptr %1527, align 8, !tbaa !56
  store ptr %1542, ptr %1544, align 8, !tbaa !56
  br label %1546

1546:                                             ; preds = %1540, %1536, %1522
  %1547 = phi i32 [ %1526, %1522 ], [ %1541, %1540 ], [ %1526, %1536 ]
  %1548 = phi i32 [ %1525, %1522 ], [ %1537, %1540 ], [ %1537, %1536 ]
  %1549 = add nsw i64 %1523, -1
  %1550 = icmp sle i64 %1523, %1509
  br i1 %1550, label %1553, label %1522, !llvm.loop !64

1551:                                             ; preds = %1534
  %1552 = trunc i64 %1523 to i32
  br label %1553

1553:                                             ; preds = %1551, %1546, %1513
  %1554 = phi i32 [ %1514, %1513 ], [ %1526, %1551 ], [ %1547, %1546 ]
  %1555 = phi i32 [ %1515, %1513 ], [ %1525, %1551 ], [ %1548, %1546 ]
  %1556 = phi i32 [ %1517, %1513 ], [ %1552, %1551 ], [ %1510, %1546 ]
  %1557 = phi i1 [ %1519, %1513 ], [ %1524, %1551 ], [ %1550, %1546 ]
  %1558 = icmp sgt i32 %1518, %1418
  br i1 %1558, label %1592, label %1559

1559:                                             ; preds = %1553
  %1560 = sext i32 %1518 to i64
  br label %1561

1561:                                             ; preds = %1559, %1585
  %1562 = phi i64 [ %1560, %1559 ], [ %1588, %1585 ]
  %1563 = phi i1 [ %1558, %1559 ], [ %1589, %1585 ]
  %1564 = phi i32 [ %1516, %1559 ], [ %1587, %1585 ]
  %1565 = phi i32 [ %1554, %1559 ], [ %1586, %1585 ]
  %1566 = sext i32 %1564 to i64
  %1567 = getelementptr inbounds ptr, ptr %0, i64 %1566
  %1568 = load ptr, ptr %1567, align 8, !tbaa !56
  %1569 = getelementptr inbounds ptr, ptr %0, i64 %1562
  %1570 = load ptr, ptr %1569, align 8, !tbaa !56
  %1571 = tail call i32 %2(ptr noundef %1568, ptr noundef %1570) #5
  %1572 = icmp slt i32 %1571, 0
  br i1 %1572, label %1585, label %1573

1573:                                             ; preds = %1561
  %1574 = icmp eq i32 %1571, 0
  br i1 %1574, label %1575, label %1590

1575:                                             ; preds = %1573
  %1576 = add nsw i32 %1564, 1
  %1577 = trunc i64 %1562 to i32
  %1578 = icmp eq i32 %1576, %1577
  br i1 %1578, label %1585, label %1579

1579:                                             ; preds = %1575
  %1580 = add nsw i32 %1565, 1
  %1581 = sext i32 %1576 to i64
  %1582 = getelementptr inbounds ptr, ptr %0, i64 %1581
  %1583 = load ptr, ptr %1582, align 8, !tbaa !56
  %1584 = load ptr, ptr %1569, align 8, !tbaa !56
  store ptr %1584, ptr %1582, align 8, !tbaa !56
  store ptr %1583, ptr %1569, align 8, !tbaa !56
  br label %1585

1585:                                             ; preds = %1579, %1575, %1561
  %1586 = phi i32 [ %1565, %1561 ], [ %1580, %1579 ], [ %1565, %1575 ]
  %1587 = phi i32 [ %1564, %1561 ], [ %1576, %1579 ], [ %1576, %1575 ]
  %1588 = add nsw i64 %1562, 1
  %1589 = icmp sge i64 %1562, %1511
  br i1 %1589, label %1592, label %1561, !llvm.loop !65

1590:                                             ; preds = %1573
  %1591 = trunc i64 %1562 to i32
  br label %1592

1592:                                             ; preds = %1590, %1585, %1553
  %1593 = phi i32 [ %1554, %1553 ], [ %1565, %1590 ], [ %1586, %1585 ]
  %1594 = phi i32 [ %1516, %1553 ], [ %1564, %1590 ], [ %1587, %1585 ]
  %1595 = phi i32 [ %1518, %1553 ], [ %1591, %1590 ], [ %1512, %1585 ]
  %1596 = phi i1 [ %1558, %1553 ], [ %1563, %1590 ], [ %1589, %1585 ]
  br i1 %1557, label %1624, label %1597

1597:                                             ; preds = %1592
  br i1 %1596, label %1607, label %1598

1598:                                             ; preds = %1597
  %1599 = sext i32 %1556 to i64
  %1600 = getelementptr inbounds ptr, ptr %0, i64 %1599
  %1601 = load ptr, ptr %1600, align 8, !tbaa !56
  %1602 = sext i32 %1595 to i64
  %1603 = getelementptr inbounds ptr, ptr %0, i64 %1602
  %1604 = load ptr, ptr %1603, align 8, !tbaa !56
  store ptr %1604, ptr %1600, align 8, !tbaa !56
  store ptr %1601, ptr %1603, align 8, !tbaa !56
  %1605 = add nsw i32 %1556, -1
  %1606 = add nsw i32 %1595, 1
  br label %1645

1607:                                             ; preds = %1597
  %1608 = add nsw i32 %1555, -1
  %1609 = icmp eq i32 %1608, %1556
  %1610 = sext i32 %1556 to i64
  %1611 = getelementptr inbounds ptr, ptr %0, i64 %1610
  %1612 = load ptr, ptr %1611, align 8, !tbaa !56
  br i1 %1609, label %1617, label %1613

1613:                                             ; preds = %1607
  %1614 = sext i32 %1608 to i64
  %1615 = getelementptr inbounds ptr, ptr %0, i64 %1614
  %1616 = load ptr, ptr %1615, align 8, !tbaa !56
  store ptr %1616, ptr %1611, align 8, !tbaa !56
  br label %1617

1617:                                             ; preds = %1607, %1613
  %1618 = phi ptr [ %1615, %1613 ], [ %1611, %1607 ]
  %1619 = sext i32 %1594 to i64
  %1620 = getelementptr inbounds ptr, ptr %0, i64 %1619
  %1621 = load ptr, ptr %1620, align 8, !tbaa !56
  store ptr %1621, ptr %1618, align 8, !tbaa !56
  store ptr %1612, ptr %1620, align 8, !tbaa !56
  %1622 = add nsw i32 %1594, -1
  %1623 = add nsw i32 %1556, -1
  br label %1645

1624:                                             ; preds = %1592
  br i1 %1596, label %1651, label %1625

1625:                                             ; preds = %1624
  %1626 = add nsw i32 %1594, 1
  %1627 = icmp eq i32 %1626, %1595
  %1628 = sext i32 %1555 to i64
  %1629 = getelementptr inbounds ptr, ptr %0, i64 %1628
  %1630 = load ptr, ptr %1629, align 8, !tbaa !56
  br i1 %1627, label %1631, label %1635

1631:                                             ; preds = %1625
  %1632 = sext i32 %1595 to i64
  %1633 = getelementptr inbounds ptr, ptr %0, i64 %1632
  %1634 = load ptr, ptr %1633, align 8, !tbaa !56
  store ptr %1630, ptr %1633, align 8, !tbaa !56
  store ptr %1634, ptr %1629, align 8, !tbaa !56
  br label %1642

1635:                                             ; preds = %1625
  %1636 = sext i32 %1626 to i64
  %1637 = getelementptr inbounds ptr, ptr %0, i64 %1636
  %1638 = load ptr, ptr %1637, align 8, !tbaa !56
  store ptr %1630, ptr %1637, align 8, !tbaa !56
  %1639 = sext i32 %1595 to i64
  %1640 = getelementptr inbounds ptr, ptr %0, i64 %1639
  %1641 = load ptr, ptr %1640, align 8, !tbaa !56
  store ptr %1641, ptr %1629, align 8, !tbaa !56
  store ptr %1638, ptr %1640, align 8, !tbaa !56
  br label %1642

1642:                                             ; preds = %1635, %1631
  %1643 = add nsw i32 %1555, 1
  %1644 = add nsw i32 %1595, 1
  br label %1645

1645:                                             ; preds = %1642, %1617, %1598
  %1646 = phi i32 [ %1555, %1598 ], [ %1608, %1617 ], [ %1643, %1642 ]
  %1647 = phi i32 [ %1594, %1598 ], [ %1622, %1617 ], [ %1626, %1642 ]
  %1648 = phi i32 [ %1605, %1598 ], [ %1623, %1617 ], [ %1556, %1642 ]
  %1649 = phi i32 [ %1606, %1598 ], [ %1595, %1617 ], [ %1644, %1642 ]
  %1650 = add nsw i32 %1593, 1
  br label %1651

1651:                                             ; preds = %1645, %1624
  %1652 = phi i32 [ %1650, %1645 ], [ %1593, %1624 ]
  %1653 = phi i1 [ true, %1645 ], [ false, %1624 ]
  %1654 = phi i32 [ %1646, %1645 ], [ %1555, %1624 ]
  %1655 = phi i32 [ %1647, %1645 ], [ %1594, %1624 ]
  %1656 = phi i32 [ %1648, %1645 ], [ %1556, %1624 ]
  %1657 = phi i32 [ %1649, %1645 ], [ %1595, %1624 ]
  br i1 %1653, label %1513, label %1658

1658:                                             ; preds = %1651
  %1659 = icmp slt i32 %1652, 3
  %1660 = shl nsw i32 %1417, 1
  %1661 = select i1 %1659, i32 %1660, i32 6
  %1662 = icmp slt i32 %1419, %1654
  %1663 = icmp slt i32 %1655, %1418
  br i1 %1662, label %1664, label %1689

1664:                                             ; preds = %1658
  br i1 %1663, label %1665, label %1687

1665:                                             ; preds = %1664
  %1666 = sub nsw i32 %1418, %1655
  %1667 = sub nsw i32 %1654, %1419
  %1668 = icmp sgt i32 %1666, %1667
  br i1 %1668, label %1669, label %1676

1669:                                             ; preds = %1665
  %1670 = add nsw i32 %1655, 1
  %1671 = sext i32 %1420 to i64
  %1672 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %8, i64 0, i64 %1671
  store i32 %1670, ptr %1672, align 4, !tbaa !66
  %1673 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %8, i64 0, i64 %1671, i32 1
  store i32 %1418, ptr %1673, align 4, !tbaa !69
  %1674 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %8, i64 0, i64 %1671, i32 2
  store i32 %1661, ptr %1674, align 4, !tbaa !70
  %1675 = add nsw i32 %1654, -1
  br label %1683

1676:                                             ; preds = %1665
  %1677 = sext i32 %1420 to i64
  %1678 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %8, i64 0, i64 %1677
  store i32 %1419, ptr %1678, align 4, !tbaa !66
  %1679 = add nsw i32 %1654, -1
  %1680 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %8, i64 0, i64 %1677, i32 1
  store i32 %1679, ptr %1680, align 4, !tbaa !69
  %1681 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %8, i64 0, i64 %1677, i32 2
  store i32 %1661, ptr %1681, align 4, !tbaa !70
  %1682 = add nsw i32 %1655, 1
  br label %1683

1683:                                             ; preds = %1676, %1669
  %1684 = phi i32 [ %1675, %1669 ], [ %1418, %1676 ]
  %1685 = phi i32 [ %1419, %1669 ], [ %1682, %1676 ]
  %1686 = add nsw i32 %1420, 1
  br label %1703

1687:                                             ; preds = %1664
  %1688 = add nsw i32 %1654, -1
  br label %1703

1689:                                             ; preds = %1658
  br i1 %1663, label %1690, label %1692

1690:                                             ; preds = %1689
  %1691 = add nsw i32 %1655, 1
  br label %1703

1692:                                             ; preds = %1689
  %1693 = icmp eq i32 %1420, 0
  br i1 %1693, label %1703, label %1694

1694:                                             ; preds = %1692
  %1695 = add nsw i32 %1420, -1
  %1696 = sext i32 %1695 to i64
  %1697 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %8, i64 0, i64 %1696
  %1698 = load i32, ptr %1697, align 4, !tbaa !66
  %1699 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %8, i64 0, i64 %1696, i32 1
  %1700 = load i32, ptr %1699, align 4, !tbaa !69
  %1701 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %8, i64 0, i64 %1696, i32 2
  %1702 = load i32, ptr %1701, align 4, !tbaa !70
  br label %1703

1703:                                             ; preds = %1694, %1692, %1690, %1687, %1683
  %1704 = phi i32 [ %1661, %1692 ], [ %1661, %1683 ], [ %1661, %1687 ], [ %1661, %1690 ], [ %1702, %1694 ]
  %1705 = phi i1 [ false, %1692 ], [ true, %1683 ], [ true, %1687 ], [ true, %1690 ], [ true, %1694 ]
  %1706 = phi i32 [ %1418, %1692 ], [ %1684, %1683 ], [ %1688, %1687 ], [ %1418, %1690 ], [ %1700, %1694 ]
  %1707 = phi i32 [ %1419, %1692 ], [ %1685, %1683 ], [ %1419, %1687 ], [ %1691, %1690 ], [ %1698, %1694 ]
  %1708 = phi i32 [ 0, %1692 ], [ %1686, %1683 ], [ %1420, %1687 ], [ %1420, %1690 ], [ %1695, %1694 ]
  br i1 %1705, label %1767, label %1772

1709:                                             ; preds = %1425, %1748
  %1710 = phi i64 [ %1426, %1425 ], [ %1711, %1748 ]
  %1711 = add nsw i64 %1710, 1
  %1712 = getelementptr inbounds ptr, ptr %0, i64 %1711
  %1713 = icmp slt i64 %1710, %1429
  %1714 = trunc i64 %1710 to i32
  br i1 %1713, label %1727, label %1715

1715:                                             ; preds = %1709, %1722
  %1716 = phi i64 [ %1723, %1722 ], [ %1710, %1709 ]
  %1717 = load ptr, ptr %1712, align 8, !tbaa !56
  %1718 = getelementptr inbounds ptr, ptr %0, i64 %1716
  %1719 = load ptr, ptr %1718, align 8, !tbaa !56
  %1720 = tail call i32 %2(ptr noundef %1717, ptr noundef %1719) #5
  %1721 = icmp sgt i32 %1720, -1
  br i1 %1721, label %1725, label %1722

1722:                                             ; preds = %1715
  %1723 = add nsw i64 %1716, -1
  %1724 = icmp sgt i64 %1716, %1427
  br i1 %1724, label %1715, label %1727, !llvm.loop !71

1725:                                             ; preds = %1715
  %1726 = trunc i64 %1716 to i32
  br label %1727

1727:                                             ; preds = %1725, %1722, %1709
  %1728 = phi i32 [ %1714, %1709 ], [ %1726, %1725 ], [ %1428, %1722 ]
  %1729 = trunc i64 %1710 to i32
  %1730 = icmp eq i32 %1728, %1729
  br i1 %1730, label %1748, label %1731

1731:                                             ; preds = %1727
  %1732 = getelementptr inbounds ptr, ptr %0, i64 %1711
  %1733 = load ptr, ptr %1732, align 8, !tbaa !56
  %1734 = sext i32 %1728 to i64
  %1735 = icmp sgt i64 %1710, %1734
  br i1 %1735, label %1736, label %1745

1736:                                             ; preds = %1731
  %1737 = sext i32 %1728 to i64
  br label %1738

1738:                                             ; preds = %1736, %1738
  %1739 = phi i64 [ %1710, %1736 ], [ %1743, %1738 ]
  %1740 = getelementptr inbounds ptr, ptr %0, i64 %1739
  %1741 = load ptr, ptr %1740, align 8, !tbaa !56
  %1742 = getelementptr ptr, ptr %1740, i64 1
  store ptr %1741, ptr %1742, align 8, !tbaa !56
  %1743 = add nsw i64 %1739, -1
  %1744 = icmp sgt i64 %1743, %1737
  br i1 %1744, label %1738, label %1745, !llvm.loop !72

1745:                                             ; preds = %1738, %1731
  %1746 = sext i32 %1728 to i64
  %1747 = getelementptr ptr, ptr %1415, i64 %1746
  store ptr %1733, ptr %1747, align 8, !tbaa !56
  br label %1748

1748:                                             ; preds = %1745, %1727
  %1749 = trunc i64 %1711 to i32
  %1750 = icmp eq i32 %1418, %1749
  br i1 %1750, label %1751, label %1709, !llvm.loop !73

1751:                                             ; preds = %1748, %1423
  %1752 = icmp eq i32 %1420, 0
  br i1 %1752, label %1762, label %1753

1753:                                             ; preds = %1751
  %1754 = add nsw i32 %1420, -1
  %1755 = sext i32 %1754 to i64
  %1756 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %8, i64 0, i64 %1755
  %1757 = load i32, ptr %1756, align 4, !tbaa !66
  %1758 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %8, i64 0, i64 %1755, i32 1
  %1759 = load i32, ptr %1758, align 4, !tbaa !69
  %1760 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %8, i64 0, i64 %1755, i32 2
  %1761 = load i32, ptr %1760, align 4, !tbaa !70
  br label %1762

1762:                                             ; preds = %1753, %1751
  %1763 = phi i32 [ %1761, %1753 ], [ %1417, %1751 ]
  %1764 = phi i32 [ %1759, %1753 ], [ %1418, %1751 ]
  %1765 = phi i32 [ %1757, %1753 ], [ %1419, %1751 ]
  %1766 = phi i32 [ %1754, %1753 ], [ 0, %1751 ]
  br i1 %1752, label %1772, label %1767

1767:                                             ; preds = %1762, %1703
  %1768 = phi i32 [ %1704, %1703 ], [ %1763, %1762 ]
  %1769 = phi i32 [ %1706, %1703 ], [ %1764, %1762 ]
  %1770 = phi i32 [ %1707, %1703 ], [ %1765, %1762 ]
  %1771 = phi i32 [ %1708, %1703 ], [ %1766, %1762 ]
  br label %1416, !llvm.loop !74

1772:                                             ; preds = %1762, %1703, %1396
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %8) #5
  br label %2190

1773:                                             ; preds = %4
  call void @llvm.lifetime.start.p0(i64 1600, ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(i64 960, ptr nonnull %7) #5
  %1774 = icmp ult i64 %1, 2
  br i1 %1774, label %2189, label %1775, !prof !77

1775:                                             ; preds = %1773
  %1776 = and i32 %3, 1
  %1777 = icmp eq i32 %1776, 0
  br i1 %1777, label %1780, label %1778, !prof !55

1778:                                             ; preds = %1775
  %1779 = load ptr, ptr @PL_sort_RealCmp, align 8, !tbaa !56
  store ptr %2, ptr @PL_sort_RealCmp, align 8, !tbaa !56
  br label %1780

1780:                                             ; preds = %1778, %1775
  %1781 = phi ptr [ %1779, %1778 ], [ null, %1775 ]
  %1782 = phi ptr [ @cmp_desc, %1778 ], [ %2, %1775 ]
  %1783 = icmp ult i64 %1, 201
  br i1 %1783, label %1787, label %1784, !prof !78

1784:                                             ; preds = %1780
  %1785 = shl i64 %1, 3
  %1786 = tail call ptr @Perl_safesysmalloc(i64 noundef %1785) #5
  br label %1787

1787:                                             ; preds = %1784, %1780
  %1788 = phi ptr [ %1786, %1784 ], [ %5, %1780 ]
  %1789 = getelementptr inbounds ptr, ptr %0, i64 %1
  %1790 = load ptr, ptr %0, align 8, !tbaa !56
  %1791 = getelementptr inbounds ptr, ptr %0, i64 1
  %1792 = load ptr, ptr %1791, align 8, !tbaa !56
  %1793 = tail call i32 %1782(ptr noundef %1790, ptr noundef %1792) #5, !prof !79
  %1794 = icmp sgt i64 %1, 0
  br i1 %1794, label %1795, label %1922, !prof !80

1795:                                             ; preds = %1787
  %1796 = icmp sgt i32 %1793, 0
  br label %1797

1797:                                             ; preds = %1795, %1919
  %1798 = phi i1 [ %1920, %1919 ], [ %1796, %1795 ]
  %1799 = phi ptr [ %1917, %1919 ], [ %0, %1795 ]
  %1800 = phi i64 [ %1916, %1919 ], [ 0, %1795 ]
  %1801 = phi ptr [ %1907, %1919 ], [ %1788, %1795 ]
  br label %1802

1802:                                             ; preds = %1797, %1807
  %1803 = phi ptr [ %1804, %1807 ], [ %1799, %1797 ]
  %1804 = getelementptr inbounds ptr, ptr %1803, i64 2
  %1805 = getelementptr inbounds ptr, ptr %1803, i64 3
  %1806 = icmp ult ptr %1805, %1789
  br i1 %1806, label %1807, label %1813, !prof !81

1807:                                             ; preds = %1802
  %1808 = load ptr, ptr %1804, align 8, !tbaa !56
  %1809 = load ptr, ptr %1805, align 8, !tbaa !56
  %1810 = call i32 %1782(ptr noundef %1808, ptr noundef %1809) #5, !prof !82
  %1811 = icmp slt i32 %1810, 1
  %1812 = xor i1 %1798, %1811
  br i1 %1812, label %1802, label %1813, !prof !83, !llvm.loop !84

1813:                                             ; preds = %1807, %1802
  %1814 = icmp eq ptr %1805, %1789
  br label %1815

1815:                                             ; preds = %1915, %1813
  %1816 = phi ptr [ %1799, %1813 ], [ %1890, %1915 ]
  %1817 = phi ptr [ %1801, %1813 ], [ %1907, %1915 ]
  %1818 = phi i64 [ %1800, %1813 ], [ %1916, %1915 ]
  %1819 = phi ptr [ %1799, %1813 ], [ %1917, %1915 ]
  %1820 = getelementptr inbounds ptr, ptr %1819, i64 16
  %1821 = icmp ult ptr %1820, %1804
  br i1 %1821, label %1822, label %1847, !prof !85

1822:                                             ; preds = %1815, %1830
  %1823 = phi ptr [ %1831, %1830 ], [ %1820, %1815 ]
  %1824 = getelementptr inbounds ptr, ptr %1823, i64 -1
  %1825 = load ptr, ptr %1824, align 8, !tbaa !56
  %1826 = load ptr, ptr %1823, align 8, !tbaa !56
  %1827 = call i32 %1782(ptr noundef %1825, ptr noundef %1826) #5, !prof !86
  %1828 = icmp slt i32 %1827, 1
  %1829 = xor i1 %1798, %1828
  br i1 %1829, label %1830, label %1833, !prof !87

1830:                                             ; preds = %1822
  %1831 = getelementptr inbounds ptr, ptr %1823, i64 -2
  %1832 = icmp ugt ptr %1831, %1816
  br i1 %1832, label %1822, label %1833, !prof !88, !llvm.loop !89

1833:                                             ; preds = %1830, %1822
  %1834 = phi ptr [ %1823, %1822 ], [ %1831, %1830 ]
  %1835 = icmp ugt ptr %1834, %1816
  br i1 %1835, label %1847, label %1836, !prof !90

1836:                                             ; preds = %1833, %1840
  %1837 = phi ptr [ %1838, %1840 ], [ %1820, %1833 ]
  %1838 = getelementptr inbounds ptr, ptr %1837, i64 2
  %1839 = icmp ult ptr %1837, %1803
  br i1 %1839, label %1840, label %1847, !prof !91

1840:                                             ; preds = %1836
  %1841 = getelementptr inbounds ptr, ptr %1837, i64 1
  %1842 = load ptr, ptr %1841, align 8, !tbaa !56
  %1843 = load ptr, ptr %1838, align 8, !tbaa !56
  %1844 = call i32 %1782(ptr noundef %1842, ptr noundef %1843) #5, !prof !92
  %1845 = icmp slt i32 %1844, 1
  %1846 = xor i1 %1798, %1845
  br i1 %1846, label %1836, label %1847, !prof !93, !llvm.loop !94

1847:                                             ; preds = %1840, %1836, %1833, %1815
  %1848 = phi ptr [ %1816, %1815 ], [ %1816, %1833 ], [ %1837, %1836 ], [ %1837, %1840 ]
  %1849 = phi ptr [ %1804, %1815 ], [ %1834, %1833 ], [ %1838, %1836 ], [ %1838, %1840 ]
  %1850 = phi ptr [ %1804, %1815 ], [ %1820, %1833 ], [ %1838, %1836 ], [ %1838, %1840 ]
  %1851 = icmp ugt ptr %1848, %1819
  br i1 %1851, label %1852, label %1886, !prof !95

1852:                                             ; preds = %1847
  %1853 = icmp eq ptr %1805, %1789
  %1854 = getelementptr inbounds ptr, ptr %1848, i64 2
  %1855 = icmp eq ptr %1848, %1803
  %1856 = select i1 %1855, i1 %1853, i1 false, !prof !96
  br i1 %1856, label %1857, label %1865, !prof !97

1857:                                             ; preds = %1852
  %1858 = getelementptr inbounds ptr, ptr %1848, i64 1
  %1859 = load ptr, ptr %1858, align 8, !tbaa !56
  %1860 = load ptr, ptr %1854, align 8, !tbaa !56
  %1861 = call i32 %1782(ptr noundef %1859, ptr noundef %1860) #5, !prof !98
  %1862 = icmp slt i32 %1861, 1
  %1863 = xor i1 %1798, %1862
  br i1 %1863, label %1864, label %1865, !prof !99

1864:                                             ; preds = %1857
  br label %1865

1865:                                             ; preds = %1864, %1857, %1852
  %1866 = phi ptr [ %1789, %1864 ], [ %1854, %1857 ], [ %1854, %1852 ]
  %1867 = phi ptr [ %1789, %1864 ], [ %1850, %1857 ], [ %1850, %1852 ]
  %1868 = phi ptr [ %1789, %1864 ], [ %1849, %1857 ], [ %1849, %1852 ]
  %1869 = ptrtoint ptr %1866 to i64
  %1870 = ptrtoint ptr %1819 to i64
  %1871 = sub i64 %1869, %1870
  %1872 = ashr exact i64 %1871, 3
  %1873 = getelementptr inbounds ptr, ptr %1817, i64 %1872
  store ptr %1873, ptr %1817, align 8, !tbaa !56
  %1874 = add nsw i64 %1818, 1
  %1875 = getelementptr inbounds ptr, ptr %1866, i64 -1
  %1876 = icmp ult ptr %1819, %1875
  %1877 = select i1 %1798, i1 %1876, i1 false
  br i1 %1877, label %1878, label %1886, !prof !100

1878:                                             ; preds = %1865, %1878
  %1879 = phi ptr [ %1884, %1878 ], [ %1875, %1865 ]
  %1880 = phi ptr [ %1883, %1878 ], [ %1819, %1865 ]
  %1881 = load ptr, ptr %1880, align 8, !tbaa !56
  %1882 = load ptr, ptr %1879, align 8, !tbaa !56
  %1883 = getelementptr inbounds ptr, ptr %1880, i64 1
  store ptr %1882, ptr %1880, align 8, !tbaa !56
  store ptr %1881, ptr %1879, align 8, !tbaa !56
  %1884 = getelementptr inbounds ptr, ptr %1879, i64 -1
  %1885 = icmp ult ptr %1883, %1884
  br i1 %1885, label %1878, label %1886, !prof !101, !llvm.loop !102

1886:                                             ; preds = %1878, %1865, %1847
  %1887 = phi ptr [ %1848, %1847 ], [ %1866, %1865 ], [ %1866, %1878 ]
  %1888 = phi ptr [ %1817, %1847 ], [ %1873, %1865 ], [ %1873, %1878 ]
  %1889 = phi ptr [ %1849, %1847 ], [ %1868, %1865 ], [ %1868, %1878 ]
  %1890 = phi ptr [ %1850, %1847 ], [ %1867, %1865 ], [ %1867, %1878 ]
  %1891 = phi i64 [ %1818, %1847 ], [ %1874, %1865 ], [ %1874, %1878 ]
  %1892 = icmp ult ptr %1887, %1889
  br i1 %1892, label %1893, label %1906, !prof !103

1893:                                             ; preds = %1886, %1903
  %1894 = phi i64 [ %1898, %1903 ], [ %1891, %1886 ]
  %1895 = phi ptr [ %1897, %1903 ], [ %1888, %1886 ]
  %1896 = phi ptr [ %1904, %1903 ], [ %1887, %1886 ]
  %1897 = getelementptr inbounds ptr, ptr %1895, i64 2
  store ptr %1897, ptr %1895, align 8, !tbaa !56
  %1898 = add nsw i64 %1894, 1
  br i1 %1798, label %1899, label %1903, !prof !104

1899:                                             ; preds = %1893
  %1900 = getelementptr inbounds ptr, ptr %1896, i64 1
  %1901 = load ptr, ptr %1896, align 8, !tbaa !56
  %1902 = load ptr, ptr %1900, align 8, !tbaa !56
  store ptr %1902, ptr %1896, align 8, !tbaa !56
  store ptr %1901, ptr %1900, align 8, !tbaa !56
  br label %1903

1903:                                             ; preds = %1899, %1893
  %1904 = getelementptr inbounds ptr, ptr %1896, i64 2
  %1905 = icmp ult ptr %1904, %1889
  br i1 %1905, label %1893, label %1906, !prof !105, !llvm.loop !106

1906:                                             ; preds = %1903, %1886
  %1907 = phi ptr [ %1888, %1886 ], [ %1897, %1903 ]
  %1908 = phi i64 [ %1891, %1886 ], [ %1898, %1903 ]
  %1909 = icmp eq ptr %1889, %1804
  %1910 = select i1 %1909, i1 %1814, i1 false, !prof !107
  br i1 %1910, label %1911, label %1915, !prof !108

1911:                                             ; preds = %1906
  %1912 = getelementptr inbounds ptr, ptr %1907, i64 1
  store ptr %1912, ptr %1907, align 8, !tbaa !56
  %1913 = add nsw i64 %1908, 1
  %1914 = getelementptr inbounds ptr, ptr %1889, i64 1
  br label %1915

1915:                                             ; preds = %1911, %1906
  %1916 = phi i64 [ %1913, %1911 ], [ %1908, %1906 ]
  %1917 = phi ptr [ %1914, %1911 ], [ %1889, %1906 ]
  %1918 = icmp ult ptr %1917, %1804
  br i1 %1918, label %1815, label %1919, !prof !109, !llvm.loop !110

1919:                                             ; preds = %1915
  %1920 = xor i1 %1798, true
  %1921 = icmp ult ptr %1917, %1789
  br i1 %1921, label %1797, label %1922, !prof !111, !llvm.loop !112

1922:                                             ; preds = %1919, %1787
  %1923 = phi i64 [ 0, %1787 ], [ %1916, %1919 ]
  %1924 = getelementptr inbounds %struct.off_runs, ptr %7, i64 0, i32 1
  store i64 %1923, ptr %1924, align 8, !tbaa !113
  store i64 0, ptr %7, align 16, !tbaa !116
  %1925 = getelementptr inbounds [3 x ptr], ptr %6, i64 0, i64 2
  store ptr %0, ptr %1925, align 16, !tbaa !56
  store ptr %0, ptr %6, align 16, !tbaa !56
  %1926 = getelementptr inbounds [3 x ptr], ptr %6, i64 0, i64 1
  store ptr %1788, ptr %1926, align 8, !tbaa !56
  %1927 = ptrtoint ptr %1788 to i64
  %1928 = ptrtoint ptr %1788 to i64
  br label %1929

1929:                                             ; preds = %2178, %1922
  %1930 = phi i64 [ 0, %1922 ], [ %2179, %2178 ]
  %1931 = phi i32 [ 0, %1922 ], [ %2180, %2178 ]
  %1932 = phi ptr [ %7, %1922 ], [ %2181, %2178 ]
  %1933 = getelementptr inbounds %struct.off_runs, ptr %1932, i64 0, i32 1
  %1934 = load i64, ptr %1933, align 8, !tbaa !113
  %1935 = icmp eq i64 %1934, 0
  br i1 %1935, label %1936, label %2109, !prof !117

1936:                                             ; preds = %1929
  %1937 = and i32 %1931, 1
  %1938 = zext nneg i32 %1937 to i64
  %1939 = getelementptr inbounds [3 x ptr], ptr %6, i64 0, i64 %1938
  %1940 = load ptr, ptr %1939, align 8, !tbaa !56
  %1941 = add nuw nsw i32 %1937, 1
  %1942 = zext nneg i32 %1941 to i64
  %1943 = getelementptr inbounds [3 x ptr], ptr %6, i64 0, i64 %1942
  %1944 = load ptr, ptr %1943, align 8, !tbaa !56
  br label %1945

1945:                                             ; preds = %2099, %1936
  %1946 = phi i32 [ %1931, %1936 ], [ %2090, %2099 ]
  %1947 = phi ptr [ %1932, %1936 ], [ %2095, %2099 ]
  %1948 = phi ptr [ %1940, %1936 ], [ %2097, %2099 ]
  %1949 = phi ptr [ %1944, %1936 ], [ %2098, %2099 ]
  %1950 = load i64, ptr %1947, align 8, !tbaa !116
  %1951 = getelementptr inbounds ptr, ptr %1948, i64 %1950
  %1952 = getelementptr inbounds ptr, ptr %1949, i64 %1950
  %1953 = load ptr, ptr %1952, align 8, !tbaa !56
  %1954 = ptrtoint ptr %1953 to i64
  %1955 = ptrtoint ptr %1949 to i64
  %1956 = sub i64 %1954, %1955
  %1957 = getelementptr inbounds i8, ptr %1948, i64 %1956
  %1958 = load ptr, ptr %1953, align 8, !tbaa !56
  %1959 = ptrtoint ptr %1958 to i64
  %1960 = sub i64 %1959, %1955
  %1961 = getelementptr inbounds i8, ptr %1948, i64 %1960
  %1962 = icmp ult ptr %1951, %1957
  %1963 = icmp slt i64 %1956, %1960
  %1964 = select i1 %1962, i1 %1963, i1 false, !prof !118
  br i1 %1964, label %1965, label %2064, !prof !119

1965:                                             ; preds = %1945, %2053
  %1966 = phi ptr [ %2060, %2053 ], [ %1952, %1945 ]
  %1967 = phi ptr [ %2057, %2053 ], [ %1957, %1945 ]
  %1968 = phi ptr [ %2056, %2053 ], [ %1951, %1945 ]
  %1969 = load ptr, ptr %1968, align 8, !tbaa !56
  %1970 = load ptr, ptr %1967, align 8, !tbaa !56
  %1971 = call i32 %1782(ptr noundef %1969, ptr noundef %1970) #5, !prof !120
  %1972 = icmp slt i32 %1971, 1
  %1973 = sext i1 %1972 to i32
  %1974 = select i1 %1972, ptr %1957, ptr %1961, !prof !121
  %1975 = select i1 %1972, ptr %1968, ptr %1967, !prof !121
  %1976 = select i1 %1972, ptr %1967, ptr %1968, !prof !121
  %1977 = getelementptr inbounds ptr, ptr %1975, i64 1
  %1978 = icmp ult ptr %1977, %1974
  br i1 %1978, label %1979, label %1984, !prof !122

1979:                                             ; preds = %1965
  %1980 = load ptr, ptr %1976, align 8, !tbaa !56
  %1981 = load ptr, ptr %1977, align 8, !tbaa !56
  %1982 = call i32 %1782(ptr noundef %1980, ptr noundef %1981) #5, !prof !123
  %1983 = icmp sgt i32 %1982, %1973
  br i1 %1983, label %2000, label %2009, !prof !124

1984:                                             ; preds = %2000, %1965
  %1985 = phi ptr [ %1975, %1965 ], [ %2003, %2000 ]
  %1986 = getelementptr inbounds ptr, ptr %1974, i64 -1
  %1987 = icmp ugt ptr %1986, %1985
  br i1 %1987, label %1988, label %1993, !prof !125

1988:                                             ; preds = %1984
  %1989 = load ptr, ptr %1976, align 8, !tbaa !56
  %1990 = load ptr, ptr %1986, align 8, !tbaa !56
  %1991 = call i32 %1782(ptr noundef %1989, ptr noundef %1990) #5, !prof !126
  %1992 = icmp sgt i32 %1991, %1973
  br i1 %1992, label %1993, label %2009, !prof !127

1993:                                             ; preds = %1988, %1984
  br label %2009

1994:                                             ; preds = %2000
  %1995 = add nuw nsw i64 %2001, 1
  %1996 = load ptr, ptr %1976, align 8, !tbaa !56
  %1997 = load ptr, ptr %2007, align 8, !tbaa !56
  %1998 = call i32 %1782(ptr noundef %1996, ptr noundef %1997) #5, !prof !123
  %1999 = icmp sgt i32 %1998, %1973
  br i1 %1999, label %2000, label %2009, !prof !128, !llvm.loop !129

2000:                                             ; preds = %1979, %1994
  %2001 = phi i64 [ %1995, %1994 ], [ 0, %1979 ]
  %2002 = phi i64 [ %2006, %1994 ], [ 1, %1979 ]
  %2003 = phi ptr [ %2007, %1994 ], [ %1977, %1979 ]
  %2004 = icmp ugt i64 %2001, 4
  %2005 = zext i1 %2004 to i64
  %2006 = shl nsw i64 %2002, %2005
  %2007 = getelementptr inbounds ptr, ptr %2003, i64 %2006
  %2008 = icmp ult ptr %2007, %1974
  br i1 %2008, label %1994, label %1984, !prof !130, !llvm.loop !129

2009:                                             ; preds = %1994, %1979, %1993, %1988
  %2010 = phi ptr [ %1974, %1993 ], [ %1986, %1988 ], [ %1977, %1979 ], [ %2007, %1994 ]
  %2011 = phi ptr [ %1986, %1993 ], [ %1985, %1988 ], [ %1975, %1979 ], [ %2003, %1994 ]
  %2012 = getelementptr inbounds ptr, ptr %2011, i64 1
  %2013 = icmp ult ptr %2012, %2010
  br i1 %2013, label %2014, label %2032, !prof !131

2014:                                             ; preds = %2009, %2014
  %2015 = phi ptr [ %2030, %2014 ], [ %2012, %2009 ]
  %2016 = phi ptr [ %2029, %2014 ], [ %2010, %2009 ]
  %2017 = ptrtoint ptr %2016 to i64
  %2018 = ptrtoint ptr %2015 to i64
  %2019 = sub i64 %2017, %2018
  %2020 = ashr exact i64 %2019, 3
  %2021 = add nsw i64 %2020, -1
  %2022 = sdiv i64 %2021, 2
  %2023 = getelementptr inbounds ptr, ptr %2015, i64 %2022
  %2024 = load ptr, ptr %1976, align 8, !tbaa !56
  %2025 = load ptr, ptr %2023, align 8, !tbaa !56
  %2026 = call i32 %1782(ptr noundef %2024, ptr noundef %2025) #5, !prof !132
  %2027 = icmp sgt i32 %2026, %1973
  %2028 = getelementptr inbounds ptr, ptr %2023, i64 1
  %2029 = select i1 %2027, ptr %2016, ptr %2023, !prof !133
  %2030 = select i1 %2027, ptr %2028, ptr %2015, !prof !133
  %2031 = icmp ult ptr %2030, %2029
  br i1 %2031, label %2014, label %2032, !prof !134, !llvm.loop !135

2032:                                             ; preds = %2014, %2009
  %2033 = phi ptr [ %2010, %2009 ], [ %2029, %2014 ]
  %2034 = icmp eq ptr %1976, %1968
  br i1 %2034, label %2035, label %2044, !prof !136

2035:                                             ; preds = %2032, %2035
  %2036 = phi ptr [ %2038, %2035 ], [ %1967, %2032 ]
  %2037 = phi ptr [ %2040, %2035 ], [ %1966, %2032 ]
  %2038 = getelementptr inbounds ptr, ptr %2036, i64 1
  %2039 = load ptr, ptr %2036, align 8, !tbaa !56
  %2040 = getelementptr inbounds ptr, ptr %2037, i64 1
  store ptr %2039, ptr %2037, align 8, !tbaa !56
  %2041 = icmp ult ptr %2038, %2033
  br i1 %2041, label %2035, label %2042, !prof !137, !llvm.loop !138

2042:                                             ; preds = %2035
  %2043 = getelementptr inbounds ptr, ptr %1968, i64 1
  br label %2053

2044:                                             ; preds = %2032, %2044
  %2045 = phi ptr [ %2047, %2044 ], [ %1968, %2032 ]
  %2046 = phi ptr [ %2049, %2044 ], [ %1966, %2032 ]
  %2047 = getelementptr inbounds ptr, ptr %2045, i64 1
  %2048 = load ptr, ptr %2045, align 8, !tbaa !56
  %2049 = getelementptr inbounds ptr, ptr %2046, i64 1
  store ptr %2048, ptr %2046, align 8, !tbaa !56
  %2050 = icmp ult ptr %2047, %2033
  br i1 %2050, label %2044, label %2051, !prof !139, !llvm.loop !140

2051:                                             ; preds = %2044
  %2052 = getelementptr inbounds ptr, ptr %1967, i64 1
  br label %2053

2053:                                             ; preds = %2051, %2042
  %2054 = phi ptr [ %1967, %2051 ], [ %1968, %2042 ]
  %2055 = phi ptr [ %2049, %2051 ], [ %2040, %2042 ]
  %2056 = phi ptr [ %2047, %2051 ], [ %2043, %2042 ]
  %2057 = phi ptr [ %2052, %2051 ], [ %2038, %2042 ]
  %2058 = phi ptr [ %2046, %2051 ], [ %2037, %2042 ]
  %2059 = load ptr, ptr %2054, align 8, !tbaa !56
  store ptr %2059, ptr %2055, align 8, !tbaa !56
  %2060 = getelementptr inbounds ptr, ptr %2058, i64 2
  %2061 = icmp ult ptr %2056, %1957
  %2062 = icmp ult ptr %2057, %1961
  %2063 = select i1 %2061, i1 %2062, i1 false, !prof !118
  br i1 %2063, label %1965, label %2064, !prof !141, !llvm.loop !142

2064:                                             ; preds = %2053, %1945
  %2065 = phi ptr [ %1951, %1945 ], [ %2056, %2053 ]
  %2066 = phi ptr [ %1957, %1945 ], [ %2057, %2053 ]
  %2067 = phi ptr [ %1952, %1945 ], [ %2060, %2053 ]
  %2068 = phi i1 [ %1963, %1945 ], [ %2062, %2053 ]
  %2069 = icmp eq ptr %2065, %1957
  br i1 %2069, label %2070, label %2078, !prof !143

2070:                                             ; preds = %2064
  br i1 %2068, label %2071, label %2085, !prof !144

2071:                                             ; preds = %2070, %2071
  %2072 = phi ptr [ %2074, %2071 ], [ %2066, %2070 ]
  %2073 = phi ptr [ %2076, %2071 ], [ %2067, %2070 ]
  %2074 = getelementptr inbounds ptr, ptr %2072, i64 1
  %2075 = load ptr, ptr %2072, align 8, !tbaa !56
  %2076 = getelementptr inbounds ptr, ptr %2073, i64 1
  store ptr %2075, ptr %2073, align 8, !tbaa !56
  %2077 = icmp ult ptr %2074, %1961
  br i1 %2077, label %2071, label %2085, !prof !145, !llvm.loop !146

2078:                                             ; preds = %2064, %2078
  %2079 = phi ptr [ %2081, %2078 ], [ %2065, %2064 ]
  %2080 = phi ptr [ %2083, %2078 ], [ %2067, %2064 ]
  %2081 = getelementptr inbounds ptr, ptr %2079, i64 1
  %2082 = load ptr, ptr %2079, align 8, !tbaa !56
  %2083 = getelementptr inbounds ptr, ptr %2080, i64 1
  store ptr %2082, ptr %2080, align 8, !tbaa !56
  %2084 = icmp ult ptr %2081, %1957
  br i1 %2084, label %2078, label %2085, !prof !147, !llvm.loop !148

2085:                                             ; preds = %2078, %2071, %2070
  %2086 = phi ptr [ %2067, %2070 ], [ %2076, %2071 ], [ %2083, %2078 ]
  %2087 = ptrtoint ptr %2086 to i64
  %2088 = sub i64 %2087, %1955
  %2089 = getelementptr inbounds i8, ptr %1948, i64 %2088
  store ptr %2089, ptr %1951, align 8, !tbaa !56
  %2090 = add nsw i32 %1946, -1
  %2091 = icmp eq i32 %2090, 0
  br i1 %2091, label %2094, label %2092, !prof !149

2092:                                             ; preds = %2085
  %2093 = getelementptr inbounds %struct.off_runs, ptr %1947, i64 -1
  br label %2094

2094:                                             ; preds = %2092, %2085
  %2095 = phi ptr [ %2093, %2092 ], [ %1947, %2085 ]
  %2096 = phi i32 [ 0, %2092 ], [ 20, %2085 ]
  %2097 = phi ptr [ %1949, %2092 ], [ %1948, %2085 ]
  %2098 = phi ptr [ %1948, %2092 ], [ %1949, %2085 ]
  br i1 %2091, label %2103, label %2099, !prof !149

2099:                                             ; preds = %2094
  %2100 = getelementptr inbounds %struct.off_runs, ptr %2095, i64 0, i32 1
  %2101 = load i64, ptr %2100, align 8, !tbaa !113
  %2102 = icmp eq i64 %2101, 0
  br i1 %2102, label %1945, label %2103, !prof !150, !llvm.loop !151

2103:                                             ; preds = %2099, %2094
  %2104 = phi i32 [ %2090, %2099 ], [ 0, %2094 ]
  %2105 = phi i32 [ 0, %2099 ], [ %2096, %2094 ]
  %2106 = phi i64 [ %2101, %2099 ], [ 0, %2094 ]
  %2107 = ashr exact i64 %1960, 3
  %2108 = icmp eq i32 %2105, 0
  br i1 %2108, label %2109, label %2178, !prof !152

2109:                                             ; preds = %2103, %1929
  %2110 = phi i64 [ %1930, %1929 ], [ %2107, %2103 ]
  %2111 = phi i32 [ %1931, %1929 ], [ %2104, %2103 ]
  %2112 = phi ptr [ %1932, %1929 ], [ %2095, %2103 ]
  %2113 = phi i64 [ %1934, %1929 ], [ %2106, %2103 ]
  %2114 = getelementptr inbounds %struct.off_runs, ptr %2112, i64 0, i32 1
  store i64 0, ptr %2114, align 8, !tbaa !113
  %2115 = icmp sgt i64 %2113, 2
  br i1 %2115, label %2116, label %2126, !prof !153

2116:                                             ; preds = %2109, %2116
  %2117 = phi i64 [ %2124, %2116 ], [ %2113, %2109 ]
  %2118 = phi ptr [ %2121, %2116 ], [ %2112, %2109 ]
  %2119 = phi i32 [ %2120, %2116 ], [ %2111, %2109 ]
  %2120 = add nsw i32 %2119, 1
  %2121 = getelementptr inbounds %struct.off_runs, ptr %2118, i64 1
  store i64 %2110, ptr %2121, align 8, !tbaa !116
  %2122 = lshr i64 %2117, 1
  %2123 = getelementptr inbounds %struct.off_runs, ptr %2118, i64 1, i32 1
  store i64 %2122, ptr %2123, align 8, !tbaa !113
  %2124 = sub nsw i64 %2117, %2122
  %2125 = icmp sgt i64 %2124, 2
  br i1 %2125, label %2116, label %2126, !prof !154, !llvm.loop !155

2126:                                             ; preds = %2116, %2109
  %2127 = phi i32 [ %2111, %2109 ], [ %2120, %2116 ]
  %2128 = phi ptr [ %2112, %2109 ], [ %2121, %2116 ]
  %2129 = phi i64 [ %2113, %2109 ], [ %2124, %2116 ]
  %2130 = and i32 %2127, 1
  %2131 = icmp eq i64 %2129, 1
  br i1 %2131, label %2132, label %2153, !prof !156

2132:                                             ; preds = %2126
  %2133 = icmp eq i32 %2130, 0
  br i1 %2133, label %2150, label %2134, !prof !157

2134:                                             ; preds = %2132
  %2135 = getelementptr ptr, ptr %0, i64 %2110
  %2136 = getelementptr inbounds ptr, ptr %1788, i64 %2110
  %2137 = load ptr, ptr %2136, align 8, !tbaa !56
  %2138 = ptrtoint ptr %2137 to i64
  %2139 = sub i64 %2138, %1928
  %2140 = getelementptr inbounds i8, ptr %0, i64 %2139
  br label %2141

2141:                                             ; preds = %2141, %2134
  %2142 = phi ptr [ %2135, %2134 ], [ %2144, %2141 ]
  %2143 = phi ptr [ %2136, %2134 ], [ %2146, %2141 ]
  %2144 = getelementptr inbounds ptr, ptr %2142, i64 1
  %2145 = load ptr, ptr %2142, align 8, !tbaa !56
  %2146 = getelementptr inbounds ptr, ptr %2143, i64 1
  store ptr %2145, ptr %2143, align 8, !tbaa !56
  %2147 = icmp ult ptr %2144, %2140
  br i1 %2147, label %2141, label %2148, !prof !158, !llvm.loop !159

2148:                                             ; preds = %2141
  %2149 = ashr exact i64 %2139, 3
  store ptr %2140, ptr %2135, align 8, !tbaa !56
  br label %2178

2150:                                             ; preds = %2132
  %2151 = icmp eq i32 %2127, 0
  %2152 = select i1 %2151, i32 20, i32 0, !prof !160
  br label %2178

2153:                                             ; preds = %2126
  %2154 = add nsw i32 %2127, 1
  %2155 = getelementptr inbounds %struct.off_runs, ptr %2128, i64 1
  store i64 %2110, ptr %2155, align 8, !tbaa !116
  %2156 = getelementptr inbounds %struct.off_runs, ptr %2128, i64 1, i32 1
  store i64 0, ptr %2156, align 8, !tbaa !113
  %2157 = icmp eq i32 %2130, 0
  br i1 %2157, label %2158, label %2178, !prof !161

2158:                                             ; preds = %2153
  %2159 = getelementptr ptr, ptr %0, i64 %2110
  %2160 = getelementptr inbounds ptr, ptr %1788, i64 %2110
  %2161 = load ptr, ptr %2160, align 8, !tbaa !56
  %2162 = ptrtoint ptr %2161 to i64
  %2163 = sub i64 %2162, %1927
  %2164 = ashr exact i64 %2163, 3
  %2165 = load ptr, ptr %2161, align 8, !tbaa !56
  %2166 = ptrtoint ptr %2165 to i64
  %2167 = sub i64 %2166, %1927
  %2168 = getelementptr inbounds i8, ptr %0, i64 %2167
  br label %2169

2169:                                             ; preds = %2169, %2158
  %2170 = phi ptr [ %2159, %2158 ], [ %2172, %2169 ]
  %2171 = phi ptr [ %2160, %2158 ], [ %2174, %2169 ]
  %2172 = getelementptr inbounds ptr, ptr %2170, i64 1
  %2173 = load ptr, ptr %2170, align 8, !tbaa !56
  %2174 = getelementptr inbounds ptr, ptr %2171, i64 1
  store ptr %2173, ptr %2171, align 8, !tbaa !56
  %2175 = icmp ult ptr %2172, %2168
  br i1 %2175, label %2169, label %2176, !prof !162, !llvm.loop !163

2176:                                             ; preds = %2169
  %2177 = getelementptr inbounds i8, ptr %0, i64 %2163
  store ptr %2177, ptr %2159, align 8, !tbaa !56
  store ptr %2168, ptr %2177, align 8, !tbaa !56
  br label %2178

2178:                                             ; preds = %2176, %2153, %2150, %2148, %2103
  %2179 = phi i64 [ %2107, %2103 ], [ %2149, %2148 ], [ %2110, %2153 ], [ %2164, %2176 ], [ %2110, %2150 ]
  %2180 = phi i32 [ %2104, %2103 ], [ %2127, %2148 ], [ %2154, %2153 ], [ %2154, %2176 ], [ %2127, %2150 ]
  %2181 = phi ptr [ %2095, %2103 ], [ %2128, %2148 ], [ %2155, %2153 ], [ %2155, %2176 ], [ %2128, %2150 ]
  %2182 = phi i32 [ %2105, %2103 ], [ 0, %2148 ], [ 0, %2153 ], [ 0, %2176 ], [ %2152, %2150 ]
  switch i32 %2182, label %2189 [
    i32 0, label %1929
    i32 20, label %2183
  ], !prof !164, !llvm.loop !165

2183:                                             ; preds = %2178
  %2184 = icmp eq ptr %1788, %5
  br i1 %2184, label %2186, label %2185, !prof !78

2185:                                             ; preds = %2183
  call void @Perl_safesysfree(ptr noundef %1788) #5
  br label %2186

2186:                                             ; preds = %2185, %2183
  %2187 = icmp eq i32 %3, 0
  br i1 %2187, label %2189, label %2188, !prof !55

2188:                                             ; preds = %2186
  store ptr %1781, ptr @PL_sort_RealCmp, align 8, !tbaa !56
  br label %2189

2189:                                             ; preds = %2178, %1773, %2186, %2188
  call void @llvm.lifetime.end.p0(i64 960, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 1600, ptr nonnull %5) #5
  br label %2190

2190:                                             ; preds = %1772, %1395, %1006, %2189
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_pp_sort() local_unnamed_addr #1 !prof !166 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !56
  %4 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %5 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !56
  %6 = getelementptr inbounds i32, ptr %5, i64 -1
  store ptr %6, ptr @PL_markstack_ptr, align 8, !tbaa !56
  %7 = load i32, ptr %5, align 4, !tbaa !167
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %4, i64 %8
  %10 = ptrtoint ptr %9 to i64
  %11 = getelementptr inbounds ptr, ptr %4, i64 %8
  %12 = getelementptr inbounds ptr, ptr %11, i64 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #5
  %13 = load ptr, ptr @PL_op, align 8, !tbaa !56
  %14 = getelementptr inbounds %struct.op, ptr %13, i64 0, i32 5
  %15 = load i8, ptr %14, align 2, !tbaa !168
  %16 = and i8 %15, 3
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %20, label %18, !prof !170

18:                                               ; preds = %0
  %19 = zext nneg i8 %16 to i32
  br label %22

20:                                               ; preds = %0
  %21 = tail call i32 @Perl_block_gimme() #5
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  %24 = load ptr, ptr @PL_op, align 8, !tbaa !56
  %25 = load ptr, ptr %24, align 8, !tbaa !171
  %26 = getelementptr inbounds %struct.op, ptr %24, i64 0, i32 6
  %27 = load i8, ptr %26, align 1, !tbaa !172
  %28 = getelementptr inbounds %struct.op, ptr %24, i64 0, i32 5
  %29 = load i8, ptr %28, align 2, !tbaa !168
  %30 = zext i8 %27 to i32
  %31 = lshr i32 %30, 4
  %32 = and i32 %31, 1
  %33 = lshr i32 %30, 3
  %34 = and i32 %33, 4
  %35 = or disjoint i32 %32, %34
  %36 = lshr i32 %30, 5
  %37 = and i32 %36, 2
  %38 = or disjoint i32 %35, %37
  %39 = icmp eq i32 %23, 3
  br i1 %39, label %52, label %40, !prof !173

40:                                               ; preds = %22
  %41 = load ptr, ptr @PL_stack_max, align 8, !tbaa !56
  %42 = ptrtoint ptr %41 to i64
  %43 = sub i64 %42, %10
  %44 = icmp slt i64 %43, 8
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = tail call ptr @Perl_stack_grow(ptr noundef %9, ptr noundef %9, i64 noundef 1) #5
  br label %47

47:                                               ; preds = %40, %45
  %48 = phi ptr [ %46, %45 ], [ %9, %40 ]
  %49 = getelementptr inbounds ptr, ptr %48, i64 1
  store ptr @PL_sv_undef, ptr %49, align 8, !tbaa !56
  store ptr %49, ptr @PL_stack_sp, align 8, !tbaa !56
  %50 = load ptr, ptr @PL_op, align 8, !tbaa !56
  %51 = load ptr, ptr %50, align 8, !tbaa !171
  br label %872

52:                                               ; preds = %22
  tail call void @Perl_push_scope() #5
  tail call void @Perl_save_vptr(ptr noundef nonnull @PL_sortcop) #5
  %53 = and i8 %29, 64
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %185, label %55, !prof !174

55:                                               ; preds = %52
  %56 = icmp sgt i8 %29, -1
  br i1 %56, label %64, label %57, !prof !175

57:                                               ; preds = %55
  %58 = load ptr, ptr @PL_op, align 8, !tbaa !56
  %59 = getelementptr inbounds %struct.listop, ptr %58, i64 0, i32 7
  %60 = load ptr, ptr %59, align 8, !tbaa !176
  %61 = getelementptr inbounds %struct.op, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !178
  %63 = load ptr, ptr %62, align 8, !tbaa !171
  br label %185

64:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #5
  %65 = getelementptr inbounds ptr, ptr %9, i64 1
  %66 = load ptr, ptr %65, align 8, !tbaa !56
  %67 = call ptr @Perl_sv_2cv(ptr noundef %66, ptr noundef nonnull %2, ptr noundef nonnull %1, i32 noundef 1) #5
  br label %68

68:                                               ; preds = %161, %64
  %69 = phi i1 [ true, %64 ], [ false, %161 ]
  %70 = phi i8 [ 0, %64 ], [ %94, %161 ]
  %71 = phi ptr [ %67, %64 ], [ %162, %161 ]
  %72 = icmp eq ptr %71, null
  br i1 %72, label %93, label %73, !prof !179

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.cv, ptr %71, i64 0, i32 2
  %75 = load i32, ptr %74, align 4, !tbaa !167
  %76 = and i32 %75, 1024
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %93, label %78, !prof !180

78:                                               ; preds = %73
  %79 = and i32 %75, 2098176
  %80 = icmp eq i32 %79, 1024
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.sv, ptr %71, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !181
  br label %86

84:                                               ; preds = %78
  %85 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %71, ptr noundef null, i32 noundef 34) #5
  br label %86

86:                                               ; preds = %84, %81
  %87 = phi ptr [ %83, %81 ], [ %85, %84 ]
  %88 = icmp eq ptr %87, null
  br i1 %88, label %93, label %89

89:                                               ; preds = %86
  %90 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %87, ptr noundef nonnull dereferenceable(3) @.str) #6
  %91 = icmp eq i32 %90, 0
  %92 = select i1 %91, i8 1, i8 %70
  br label %93

93:                                               ; preds = %89, %86, %73, %68
  %94 = phi i8 [ %70, %73 ], [ %70, %68 ], [ %70, %86 ], [ %92, %89 ]
  br i1 %72, label %109, label %95, !prof !179

95:                                               ; preds = %93
  %96 = load ptr, ptr %71, align 8, !tbaa !182
  %97 = getelementptr inbounds %struct.xpvcv, ptr %96, i64 0, i32 12
  %98 = load i32, ptr %97, align 4, !tbaa !184
  %99 = and i32 %98, 8
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %105, label %101, !prof !180

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.xpvcv, ptr %96, i64 0, i32 6
  %103 = load ptr, ptr %102, align 8, !tbaa !181
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %172

105:                                              ; preds = %95, %101
  %106 = getelementptr inbounds %struct.xpvcv, ptr %96, i64 0, i32 6
  %107 = load ptr, ptr %106, align 8, !tbaa !181
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %172, !prof !179

109:                                              ; preds = %93, %105
  %110 = load ptr, ptr %1, align 8, !tbaa !56
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %134

112:                                              ; preds = %109
  %113 = load ptr, ptr %71, align 8, !tbaa !182
  %114 = getelementptr inbounds %struct.xpvcv, ptr %113, i64 0, i32 12
  %115 = load i32, ptr %114, align 4, !tbaa !184
  %116 = and i32 %115, 128
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %170

118:                                              ; preds = %112
  %119 = and i32 %115, 32768
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %118
  %122 = call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %71) #5
  br label %126

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.xpvcv, ptr %113, i64 0, i32 7
  %125 = load ptr, ptr %124, align 8, !tbaa !181
  br label %126

126:                                              ; preds = %121, %123
  %127 = phi ptr [ %122, %121 ], [ %125, %123 ]
  store ptr %127, ptr %1, align 8, !tbaa !56
  %128 = icmp eq ptr %127, null
  br i1 %128, label %170, label %129

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.gv, ptr %127, i64 0, i32 3
  %131 = load ptr, ptr %130, align 8, !tbaa !181
  %132 = getelementptr inbounds %struct.gp, ptr %131, i64 0, i32 2
  %133 = load ptr, ptr %132, align 8, !tbaa !186
  br label %134

134:                                              ; preds = %129, %109
  %135 = phi ptr [ %71, %109 ], [ %133, %129 ]
  br i1 %69, label %136, label %166

136:                                              ; preds = %134
  %137 = load ptr, ptr %1, align 8, !tbaa !56
  %138 = load ptr, ptr %137, align 8, !tbaa !188
  %139 = getelementptr inbounds %struct.xpvgv, ptr %138, i64 0, i32 5
  %140 = load ptr, ptr %139, align 8, !tbaa !181
  %141 = getelementptr inbounds %struct.xpvgv, ptr %138, i64 0, i32 4
  %142 = load ptr, ptr %141, align 8, !tbaa !181
  %143 = getelementptr inbounds %struct.hek, ptr %142, i64 0, i32 2
  %144 = getelementptr inbounds %struct.hek, ptr %142, i64 0, i32 1
  %145 = load i32, ptr %144, align 4, !tbaa !190
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, ptr %143, i64 %146
  %148 = getelementptr inbounds i8, ptr %147, i64 1
  %149 = load i8, ptr %148, align 1, !tbaa !181
  %150 = and i8 %149, 1
  %151 = zext nneg i8 %150 to i32
  %152 = shl nuw nsw i32 %151, 29
  %153 = call ptr @Perl_gv_autoload_pvn(ptr noundef %140, ptr noundef nonnull %143, i64 noundef %146, i32 noundef %152) #5
  %154 = icmp eq ptr %153, null
  br i1 %154, label %166, label %155

155:                                              ; preds = %136
  %156 = getelementptr inbounds %struct.gv, ptr %153, i64 0, i32 3
  %157 = load ptr, ptr %156, align 8, !tbaa !181
  %158 = getelementptr inbounds %struct.gp, ptr %157, i64 0, i32 3
  %159 = load i32, ptr %158, align 8, !tbaa !192
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %163, label %161

161:                                              ; preds = %155, %163
  %162 = phi ptr [ null, %155 ], [ %165, %163 ]
  br label %68

163:                                              ; preds = %155
  %164 = getelementptr inbounds %struct.gp, ptr %157, i64 0, i32 2
  %165 = load ptr, ptr %164, align 8, !tbaa !186
  br label %161

166:                                              ; preds = %136, %134
  %167 = call ptr @Perl_sv_newmortal() #5
  %168 = load ptr, ptr %1, align 8, !tbaa !56
  call void @Perl_gv_efullname4(ptr noundef %167, ptr noundef %168, ptr noundef null, i1 noundef zeroext true) #5
  %169 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.1, ptr noundef %167) #5
  br label %180

170:                                              ; preds = %126, %112
  %171 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.2) #5
  br label %180

172:                                              ; preds = %101, %105
  %173 = phi i1 [ true, %105 ], [ false, %101 ]
  %174 = phi i32 [ 0, %105 ], [ 1, %101 ]
  br i1 %173, label %175, label %178, !prof !180

175:                                              ; preds = %172
  %176 = getelementptr inbounds %struct.xpvcv, ptr %96, i64 0, i32 5
  %177 = load ptr, ptr %176, align 8, !tbaa !181
  br label %178

178:                                              ; preds = %172, %175
  %179 = phi ptr [ %177, %175 ], [ %71, %172 ]
  store ptr %179, ptr @PL_sortcop, align 8, !tbaa !56
  br label %180

180:                                              ; preds = %178, %170, %166
  %181 = phi i1 [ true, %178 ], [ false, %166 ], [ false, %170 ]
  %182 = phi i32 [ %174, %178 ], [ 0, %166 ], [ 0, %170 ]
  %183 = phi ptr [ %71, %178 ], [ %135, %166 ], [ %71, %170 ]
  %184 = phi ptr [ undef, %178 ], [ %169, %166 ], [ %171, %170 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #5
  br i1 %181, label %187, label %872, !prof !180

185:                                              ; preds = %52, %57
  %186 = phi ptr [ %63, %57 ], [ null, %52 ]
  store ptr %186, ptr @PL_sortcop, align 8, !tbaa !56
  br label %187

187:                                              ; preds = %185, %180
  %188 = phi i32 [ %182, %180 ], [ 0, %185 ]
  %189 = phi i8 [ %94, %180 ], [ 0, %185 ]
  %190 = phi ptr [ %183, %180 ], [ null, %185 ]
  %191 = phi ptr [ %65, %180 ], [ %9, %185 ]
  %192 = and i32 %30, 8
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %260, label %194, !prof !173

194:                                              ; preds = %187
  %195 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !56
  %196 = getelementptr inbounds i32, ptr %195, i64 -1
  store ptr %196, ptr @PL_markstack_ptr, align 8, !tbaa !56
  %197 = load ptr, ptr %3, align 8, !tbaa !56
  %198 = getelementptr inbounds %struct.sv, ptr %197, i64 0, i32 2
  %199 = load i32, ptr %198, align 4, !tbaa !193
  %200 = and i32 %199, 8388608
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %205, label %202

202:                                              ; preds = %194
  %203 = call i32 @Perl_mg_size(ptr noundef %197) #5
  %204 = sext i32 %203 to i64
  br label %209

205:                                              ; preds = %194
  %206 = load ptr, ptr %197, align 8, !tbaa !195
  %207 = getelementptr inbounds %struct.xpvav, ptr %206, i64 0, i32 2
  %208 = load i64, ptr %207, align 8, !tbaa !197
  br label %209

209:                                              ; preds = %205, %202
  %210 = phi i64 [ %204, %202 ], [ %208, %205 ]
  %211 = add nsw i64 %210, 1
  %212 = load i32, ptr %198, align 4, !tbaa !199
  %213 = and i32 %212, 14680064
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %251, label %215

215:                                              ; preds = %209
  %216 = load ptr, ptr @PL_stack_max, align 8, !tbaa !56
  %217 = ptrtoint ptr %216 to i64
  %218 = ptrtoint ptr %3 to i64
  %219 = sub i64 %217, %218
  %220 = ashr exact i64 %219, 3
  %221 = icmp sgt i64 %220, %210
  br i1 %221, label %230, label %222

222:                                              ; preds = %215
  %223 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %224 = ptrtoint ptr %191 to i64
  %225 = ptrtoint ptr %223 to i64
  %226 = sub i64 %224, %225
  %227 = call ptr @Perl_stack_grow(ptr noundef nonnull %3, ptr noundef nonnull %3, i64 noundef %211) #5
  %228 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %229 = getelementptr inbounds i8, ptr %228, i64 %226
  br label %230

230:                                              ; preds = %215, %222
  %231 = phi ptr [ %229, %222 ], [ %191, %215 ]
  %232 = phi ptr [ %227, %222 ], [ %3, %215 ]
  %233 = icmp slt i64 %210, 0
  br i1 %233, label %246, label %234

234:                                              ; preds = %230, %241
  %235 = phi ptr [ %243, %241 ], [ %232, %230 ]
  %236 = phi i64 [ %244, %241 ], [ 0, %230 ]
  %237 = call ptr @Perl_av_fetch(ptr noundef %197, i64 noundef %236, i32 noundef 0) #5
  %238 = icmp eq ptr %237, null
  br i1 %238, label %241, label %239

239:                                              ; preds = %234
  %240 = load ptr, ptr %237, align 8, !tbaa !56
  br label %241

241:                                              ; preds = %234, %239
  %242 = phi ptr [ %240, %239 ], [ null, %234 ]
  %243 = getelementptr inbounds ptr, ptr %235, i64 1
  store ptr %242, ptr %235, align 8, !tbaa !56
  %244 = add nuw i64 %236, 1
  %245 = icmp eq i64 %236, %210
  br i1 %245, label %246, label %234, !llvm.loop !200

246:                                              ; preds = %241, %230
  %247 = phi ptr [ %232, %230 ], [ %243, %241 ]
  %248 = getelementptr inbounds ptr, ptr %247, i64 -1
  %249 = sub i64 0, %210
  %250 = getelementptr inbounds ptr, ptr %248, i64 %249
  br label %266

251:                                              ; preds = %209
  %252 = and i32 %212, 134283264
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %255, label %254

254:                                              ; preds = %251
  call void @Perl_croak_no_modify() #5
  br label %257

255:                                              ; preds = %251
  %256 = or disjoint i32 %212, 134283264
  store i32 %256, ptr %198, align 4, !tbaa !199
  call void @Perl_save_pushptr(ptr noundef %197, i32 noundef 21) #5
  br label %257

257:                                              ; preds = %255, %254
  %258 = getelementptr inbounds %struct.av, ptr %197, i64 0, i32 3
  %259 = load ptr, ptr %258, align 8, !tbaa !181
  br label %266

260:                                              ; preds = %187
  %261 = getelementptr inbounds ptr, ptr %191, i64 1
  %262 = ptrtoint ptr %3 to i64
  %263 = ptrtoint ptr %191 to i64
  %264 = sub i64 %262, %263
  %265 = ashr exact i64 %264, 3
  br label %266

266:                                              ; preds = %246, %257, %260
  %267 = phi i1 [ true, %246 ], [ false, %257 ], [ true, %260 ]
  %268 = phi ptr [ %197, %246 ], [ %197, %257 ], [ null, %260 ]
  %269 = phi i64 [ %211, %246 ], [ %211, %257 ], [ %265, %260 ]
  %270 = phi ptr [ %250, %246 ], [ %259, %257 ], [ %261, %260 ]
  %271 = phi ptr [ %250, %246 ], [ %259, %257 ], [ %12, %260 ]
  %272 = phi ptr [ %231, %246 ], [ %191, %257 ], [ %191, %260 ]
  %273 = phi ptr [ %248, %246 ], [ %3, %257 ], [ %3, %260 ]
  %274 = load ptr, ptr @PL_sortcop, align 8
  %275 = icmp ne ptr %274, null
  %276 = select i1 %267, i1 %275, i1 false, !prof !173
  %277 = icmp sgt i64 %269, 0
  br i1 %277, label %278, label %372, !prof !201

278:                                              ; preds = %266
  %279 = and i32 %30, 1
  %280 = icmp eq i32 %279, 0
  br label %281

281:                                              ; preds = %278, %365
  %282 = phi ptr [ %271, %278 ], [ %369, %365 ]
  %283 = phi ptr [ %270, %278 ], [ %288, %365 ]
  %284 = phi i64 [ %269, %278 ], [ %368, %365 ]
  %285 = phi i64 [ %269, %278 ], [ %370, %365 ]
  %286 = phi i32 [ 0, %278 ], [ %367, %365 ]
  %287 = phi i32 [ 1, %278 ], [ %366, %365 ]
  %288 = getelementptr inbounds ptr, ptr %283, i64 1
  %289 = load ptr, ptr %283, align 8, !tbaa !56
  store ptr %289, ptr %282, align 8, !tbaa !56
  %290 = icmp eq ptr %289, null
  br i1 %290, label %363, label %291, !prof !202

291:                                              ; preds = %281
  br i1 %276, label %292, label %299, !prof !203

292:                                              ; preds = %291
  %293 = getelementptr inbounds %struct.sv, ptr %289, i64 0, i32 2
  %294 = load i32, ptr %293, align 4, !tbaa !193
  %295 = and i32 %294, 131072
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %299, label %297, !prof !204

297:                                              ; preds = %292
  %298 = call ptr @Perl_sv_mortalcopy_flags(ptr noundef nonnull %289, i32 noundef 1538) #5
  store ptr %298, ptr %282, align 8, !tbaa !56
  br label %299

299:                                              ; preds = %297, %292, %291
  %300 = load ptr, ptr %282, align 8, !tbaa !56
  %301 = getelementptr inbounds %struct.sv, ptr %300, i64 0, i32 2
  %302 = load i32, ptr %301, align 4, !tbaa !193
  %303 = and i32 %302, -524289
  store i32 %303, ptr %301, align 4, !tbaa !193
  %304 = load ptr, ptr @PL_sortcop, align 8, !tbaa !56
  %305 = icmp eq ptr %304, null
  br i1 %305, label %306, label %359, !prof !205

306:                                              ; preds = %299
  br i1 %280, label %332, label %307, !prof !206

307:                                              ; preds = %306
  %308 = and i32 %30, 2
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %315, label %310

310:                                              ; preds = %307
  %311 = and i32 %302, 256
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %337

313:                                              ; preds = %310
  %314 = call i64 @Perl_sv_2iv_flags(ptr noundef %300, i32 noundef 8194) #5
  br label %337

315:                                              ; preds = %307
  %316 = and i32 %302, 512
  %317 = icmp ne i32 %316, 0
  %318 = and i32 %302, -2147483392
  %319 = icmp eq i32 %318, 256
  %320 = or i1 %317, %319
  br i1 %320, label %323, label %321

321:                                              ; preds = %315
  %322 = call double @Perl_sv_2nv_flags(ptr noundef %300, i32 noundef 8194) #5
  br label %323

323:                                              ; preds = %321, %315
  %324 = icmp eq i32 %287, 0
  br i1 %324, label %337, label %325

325:                                              ; preds = %323
  %326 = load ptr, ptr %282, align 8, !tbaa !56
  %327 = getelementptr inbounds %struct.sv, ptr %326, i64 0, i32 2
  %328 = load i32, ptr %327, align 4, !tbaa !193
  %329 = and i32 %328, -2147483392
  %330 = icmp eq i32 %329, 256
  %331 = zext i1 %330 to i32
  br label %337

332:                                              ; preds = %306
  %333 = and i32 %302, 1024
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %335, label %337, !prof !207

335:                                              ; preds = %332
  %336 = call ptr @Perl_sv_2pv_flags(ptr noundef %300, ptr noundef null, i32 noundef 8226) #5
  br label %337

337:                                              ; preds = %325, %332, %335, %313, %310, %323
  %338 = phi i32 [ %287, %310 ], [ %287, %313 ], [ 0, %323 ], [ %287, %332 ], [ %287, %335 ], [ %331, %325 ]
  %339 = load ptr, ptr %282, align 8, !tbaa !56
  %340 = getelementptr inbounds %struct.sv, ptr %339, i64 0, i32 2
  %341 = load i32, ptr %340, align 4, !tbaa !193
  %342 = and i32 %341, 2048
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %359, label %344, !prof !206

344:                                              ; preds = %337
  %345 = getelementptr inbounds %struct.sv, ptr %339, i64 0, i32 3
  %346 = load ptr, ptr %345, align 8, !tbaa !181
  %347 = getelementptr inbounds %struct.sv, ptr %346, i64 0, i32 2
  %348 = load i32, ptr %347, align 4, !tbaa !193
  %349 = and i32 %348, 1048576
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %359, label %351

351:                                              ; preds = %344
  %352 = load ptr, ptr %346, align 8, !tbaa !208
  %353 = load ptr, ptr %352, align 8, !tbaa !209
  %354 = getelementptr inbounds %struct.hv, ptr %353, i64 0, i32 2
  %355 = load i32, ptr %354, align 4, !tbaa !211
  %356 = and i32 %355, 268435456
  %357 = icmp eq i32 %356, 0
  %358 = select i1 %357, i32 %286, i32 1
  br label %359

359:                                              ; preds = %351, %337, %344, %299
  %360 = phi i32 [ %287, %299 ], [ %338, %344 ], [ %338, %337 ], [ %338, %351 ]
  %361 = phi i32 [ %286, %299 ], [ %286, %344 ], [ %286, %337 ], [ %358, %351 ]
  %362 = getelementptr inbounds ptr, ptr %282, i64 1
  br label %365

363:                                              ; preds = %281
  %364 = add nsw i64 %284, -1
  br label %365

365:                                              ; preds = %359, %363
  %366 = phi i32 [ %360, %359 ], [ %287, %363 ]
  %367 = phi i32 [ %361, %359 ], [ %286, %363 ]
  %368 = phi i64 [ %284, %359 ], [ %364, %363 ]
  %369 = phi ptr [ %362, %359 ], [ %282, %363 ]
  %370 = add nsw i64 %285, -1
  %371 = icmp sgt i64 %285, 1
  br i1 %371, label %281, label %372, !prof !213, !llvm.loop !214

372:                                              ; preds = %365, %266
  %373 = phi i32 [ 1, %266 ], [ %366, %365 ]
  %374 = phi i32 [ 0, %266 ], [ %367, %365 ]
  %375 = phi i64 [ %269, %266 ], [ %368, %365 ]
  %376 = phi ptr [ %271, %266 ], [ %369, %365 ]
  br i1 %267, label %381, label %377, !prof !173

377:                                              ; preds = %372
  %378 = add nsw i64 %375, -1
  %379 = load ptr, ptr %268, align 8, !tbaa !195
  %380 = getelementptr inbounds %struct.xpvav, ptr %379, i64 0, i32 2
  store i64 %378, ptr %380, align 8, !tbaa !197
  br label %381

381:                                              ; preds = %377, %372
  %382 = icmp sgt i64 %375, 1
  br i1 %382, label %383, label %829, !prof !215

383:                                              ; preds = %381
  %384 = load ptr, ptr @PL_sortcop, align 8, !tbaa !56
  %385 = icmp eq ptr %384, null
  br i1 %385, label %770, label %386, !prof !216

386:                                              ; preds = %383
  %387 = load ptr, ptr @PL_top_env, align 8, !tbaa !56
  %388 = getelementptr inbounds %struct.jmpenv, ptr %387, i64 0, i32 3
  %389 = load i8, ptr %388, align 4, !tbaa !217, !range !220, !noundef !221
  call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #5
  %390 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !222
  store i64 %390, ptr @PL_tmps_floor, align 8, !tbaa !222
  %391 = load ptr, ptr @PL_op, align 8, !tbaa !56
  call void @Perl_save_pushptr(ptr noundef %391, i32 noundef 18) #5
  %392 = load ptr, ptr @PL_top_env, align 8, !tbaa !56
  %393 = getelementptr inbounds %struct.jmpenv, ptr %392, i64 0, i32 3
  store i8 1, ptr %393, align 4, !tbaa !217
  %394 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !56
  %395 = getelementptr inbounds %struct.stackinfo, ptr %394, i64 0, i32 3
  %396 = load ptr, ptr %395, align 8, !tbaa !223
  %397 = icmp eq ptr %396, null
  br i1 %397, label %398, label %403, !prof !225

398:                                              ; preds = %386
  %399 = call ptr @Perl_new_stackinfo(i32 noundef 32, i32 noundef 22) #5
  %400 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !56
  %401 = getelementptr inbounds %struct.stackinfo, ptr %399, i64 0, i32 2
  store ptr %400, ptr %401, align 8, !tbaa !226
  %402 = getelementptr inbounds %struct.stackinfo, ptr %400, i64 0, i32 3
  store ptr %399, ptr %402, align 8, !tbaa !223
  br label %403

403:                                              ; preds = %398, %386
  %404 = phi ptr [ %396, %386 ], [ %399, %398 ]
  %405 = getelementptr inbounds %struct.stackinfo, ptr %404, i64 0, i32 6
  store i32 3, ptr %405, align 8, !tbaa !227
  %406 = getelementptr inbounds %struct.stackinfo, ptr %404, i64 0, i32 4
  store i32 -1, ptr %406, align 8, !tbaa !228
  %407 = load ptr, ptr %404, align 8, !tbaa !229
  %408 = load ptr, ptr %407, align 8, !tbaa !195
  %409 = getelementptr inbounds %struct.xpvav, ptr %408, i64 0, i32 2
  store i64 0, ptr %409, align 8, !tbaa !197
  %410 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %411 = ptrtoint ptr %273 to i64
  %412 = ptrtoint ptr %410 to i64
  %413 = sub i64 %411, %412
  %414 = ashr exact i64 %413, 3
  %415 = load ptr, ptr @PL_curstack, align 8, !tbaa !56
  %416 = load ptr, ptr %415, align 8, !tbaa !195
  %417 = getelementptr inbounds %struct.xpvav, ptr %416, i64 0, i32 2
  store i64 %414, ptr %417, align 8, !tbaa !197
  %418 = getelementptr inbounds %struct.av, ptr %407, i64 0, i32 3
  %419 = load ptr, ptr %418, align 8, !tbaa !181
  store ptr %419, ptr @PL_stack_base, align 8, !tbaa !56
  %420 = load ptr, ptr %404, align 8, !tbaa !229
  %421 = load ptr, ptr %420, align 8, !tbaa !195
  %422 = getelementptr inbounds %struct.xpvav, ptr %421, i64 0, i32 3
  %423 = load i64, ptr %422, align 8, !tbaa !230
  %424 = getelementptr inbounds ptr, ptr %419, i64 %423
  store ptr %424, ptr @PL_stack_max, align 8, !tbaa !56
  %425 = load ptr, ptr %404, align 8, !tbaa !229
  %426 = load ptr, ptr %425, align 8, !tbaa !195
  %427 = getelementptr inbounds %struct.xpvav, ptr %426, i64 0, i32 2
  %428 = load i64, ptr %427, align 8, !tbaa !197
  %429 = getelementptr inbounds ptr, ptr %419, i64 %428
  store ptr %429, ptr @PL_stack_sp, align 8, !tbaa !56
  %430 = load ptr, ptr %404, align 8, !tbaa !229
  store ptr %430, ptr @PL_curstack, align 8, !tbaa !56
  store ptr %404, ptr @PL_curstackinfo, align 8, !tbaa !56
  %431 = and i8 %189, 1
  %432 = icmp ne i8 %431, 0
  %433 = icmp ne i32 %188, 0
  %434 = or i1 %433, %432
  br i1 %434, label %456, label %435, !prof !225

435:                                              ; preds = %403
  call void @Perl_save_generic_svref(ptr noundef nonnull @PL_firstgv) #5
  call void @Perl_save_generic_svref(ptr noundef nonnull @PL_secondgv) #5
  %436 = call ptr @Perl_gv_fetchpvn_flags(ptr noundef nonnull @.str.3, i64 noundef 1, i32 noundef 129, i32 noundef 3) #5
  %437 = icmp eq ptr %436, null
  br i1 %437, label %442, label %438, !prof !225

438:                                              ; preds = %435
  %439 = getelementptr inbounds %struct.sv, ptr %436, i64 0, i32 1
  %440 = load i32, ptr %439, align 8, !tbaa !231
  %441 = add i32 %440, 1
  store i32 %441, ptr %439, align 8, !tbaa !231
  br label %442

442:                                              ; preds = %435, %438
  store ptr %436, ptr @PL_firstgv, align 8, !tbaa !56
  %443 = call ptr @Perl_gv_fetchpvn_flags(ptr noundef nonnull @.str.4, i64 noundef 1, i32 noundef 129, i32 noundef 3) #5
  %444 = icmp eq ptr %443, null
  br i1 %444, label %449, label %445, !prof !225

445:                                              ; preds = %442
  %446 = getelementptr inbounds %struct.sv, ptr %443, i64 0, i32 1
  %447 = load i32, ptr %446, align 8, !tbaa !231
  %448 = add i32 %447, 1
  store i32 %448, ptr %446, align 8, !tbaa !231
  br label %449

449:                                              ; preds = %442, %445
  store ptr %443, ptr @PL_secondgv, align 8, !tbaa !56
  %450 = load ptr, ptr @PL_firstgv, align 8, !tbaa !56
  %451 = getelementptr inbounds %struct.gv, ptr %450, i64 0, i32 3
  %452 = load ptr, ptr %451, align 8, !tbaa !181
  call void @Perl_save_sptr(ptr noundef %452) #5
  %453 = load ptr, ptr @PL_secondgv, align 8, !tbaa !56
  %454 = getelementptr inbounds %struct.gv, ptr %453, i64 0, i32 3
  %455 = load ptr, ptr %454, align 8, !tbaa !181
  call void @Perl_save_sptr(ptr noundef %455) #5
  br label %456

456:                                              ; preds = %449, %403
  %457 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !56
  %458 = getelementptr inbounds %struct.stackinfo, ptr %457, i64 0, i32 4
  %459 = load i32, ptr %458, align 8, !tbaa !228
  %460 = getelementptr inbounds %struct.stackinfo, ptr %457, i64 0, i32 5
  %461 = load i32, ptr %460, align 4, !tbaa !232
  %462 = icmp slt i32 %459, %461
  br i1 %462, label %463, label %465, !prof !233

463:                                              ; preds = %456
  %464 = add nsw i32 %459, 1
  store i32 %464, ptr %458, align 8, !tbaa !228
  br label %469

465:                                              ; preds = %456
  %466 = call i32 @Perl_cxinc() #5
  %467 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !56
  %468 = getelementptr inbounds %struct.stackinfo, ptr %467, i64 0, i32 4
  store i32 %466, ptr %468, align 8, !tbaa !228
  br label %469

469:                                              ; preds = %465, %463
  %470 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !56
  %471 = getelementptr inbounds %struct.stackinfo, ptr %470, i64 0, i32 1
  %472 = load ptr, ptr %471, align 8, !tbaa !234
  %473 = getelementptr inbounds %struct.stackinfo, ptr %470, i64 0, i32 4
  %474 = load i32, ptr %473, align 8, !tbaa !228
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds %struct.context, ptr %472, i64 %475
  store i8 0, ptr %476, align 8, !tbaa !181
  %477 = getelementptr inbounds %struct.block, ptr %476, i64 0, i32 3
  store i32 0, ptr %477, align 4, !tbaa !181
  %478 = load ptr, ptr @PL_curcop, align 8, !tbaa !56
  %479 = getelementptr inbounds %struct.block, ptr %476, i64 0, i32 4
  store ptr %478, ptr %479, align 8, !tbaa !181
  %480 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !56
  %481 = load ptr, ptr @PL_markstack, align 8, !tbaa !56
  %482 = ptrtoint ptr %480 to i64
  %483 = ptrtoint ptr %481 to i64
  %484 = sub i64 %482, %483
  %485 = lshr exact i64 %484, 2
  %486 = trunc i64 %485 to i32
  %487 = getelementptr inbounds %struct.block, ptr %476, i64 0, i32 5
  store i32 %486, ptr %487, align 8, !tbaa !181
  %488 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !167
  %489 = getelementptr inbounds %struct.block, ptr %476, i64 0, i32 6
  store i32 %488, ptr %489, align 4, !tbaa !181
  %490 = load ptr, ptr @PL_curpm, align 8, !tbaa !56
  %491 = getelementptr inbounds %struct.block, ptr %476, i64 0, i32 7
  store ptr %490, ptr %491, align 8, !tbaa !181
  %492 = getelementptr inbounds %struct.block, ptr %476, i64 0, i32 1
  store i8 3, ptr %492, align 1, !tbaa !181
  %493 = icmp sgt i8 %29, -1
  br i1 %493, label %494, label %587, !prof !235

494:                                              ; preds = %469
  store i8 8, ptr %476, align 8, !tbaa !181
  store i8 2, ptr %492, align 1, !tbaa !181
  %495 = load ptr, ptr %190, align 8, !tbaa !182
  %496 = getelementptr inbounds %struct.xpvcv, ptr %495, i64 0, i32 13
  %497 = load i32, ptr %496, align 4, !tbaa !167
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %503, label %499, !prof !236

499:                                              ; preds = %494
  %500 = getelementptr inbounds %struct.sv, ptr %190, i64 0, i32 1
  %501 = load i32, ptr %500, align 8, !tbaa !231
  %502 = add i32 %501, 1
  store i32 %502, ptr %500, align 8, !tbaa !231
  br label %503

503:                                              ; preds = %499, %494
  %504 = load ptr, ptr @PL_op, align 8, !tbaa !56
  %505 = getelementptr inbounds %struct.op, ptr %504, i64 0, i32 5
  %506 = load i8, ptr %505, align 2, !tbaa !168
  %507 = and i8 %506, 3
  %508 = icmp eq i8 %507, 0
  br i1 %508, label %509, label %517, !prof !237

509:                                              ; preds = %503
  %510 = getelementptr inbounds %struct.op, ptr %504, i64 0, i32 6
  %511 = load i8, ptr %510, align 1, !tbaa !172
  %512 = and i8 %511, -127
  %513 = icmp eq i8 %512, 0
  br i1 %513, label %517, label %514

514:                                              ; preds = %509
  %515 = call i32 @Perl_was_lvalue_sub() #5
  %516 = and i32 %515, 255
  br label %517

517:                                              ; preds = %514, %509, %503
  %518 = phi i32 [ 129, %503 ], [ %516, %514 ], [ 0, %509 ]
  %519 = getelementptr inbounds %struct.block, ptr %476, i64 0, i32 8
  %520 = getelementptr inbounds %struct.block, ptr %476, i64 0, i32 8, i32 0, i32 1
  store ptr %190, ptr %520, align 8, !tbaa !181
  %521 = load ptr, ptr %190, align 8, !tbaa !182
  %522 = getelementptr inbounds %struct.xpvcv, ptr %521, i64 0, i32 13
  %523 = load i32, ptr %522, align 4, !tbaa !167
  %524 = getelementptr inbounds %struct.block, ptr %476, i64 0, i32 8, i32 0, i32 4
  store i32 %523, ptr %524, align 8, !tbaa !181
  %525 = shl nuw nsw i8 %431, 5
  %526 = load i8, ptr %476, align 8, !tbaa !181
  %527 = or i8 %526, %525
  store i8 %527, ptr %476, align 8, !tbaa !181
  store ptr null, ptr %519, align 8, !tbaa !181
  %528 = load ptr, ptr %190, align 8, !tbaa !182
  %529 = getelementptr inbounds %struct.xpvcv, ptr %528, i64 0, i32 13
  %530 = load i32, ptr %529, align 4, !tbaa !167
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %532, label %536, !prof !236

532:                                              ; preds = %517
  %533 = getelementptr inbounds %struct.sv, ptr %190, i64 0, i32 1
  %534 = load i32, ptr %533, align 8, !tbaa !231
  %535 = add i32 %534, 2
  store i32 %535, ptr %533, align 8, !tbaa !231
  call void @Perl_save_pushptr(ptr noundef nonnull %190, i32 noundef 11) #5
  br label %536

536:                                              ; preds = %532, %517
  %537 = load ptr, ptr @PL_op, align 8, !tbaa !56
  %538 = getelementptr inbounds %struct.op, ptr %537, i64 0, i32 6
  %539 = load i8, ptr %538, align 1, !tbaa !172
  %540 = zext i8 %539 to i32
  %541 = or i32 %518, 48
  %542 = and i32 %541, %540
  %543 = trunc i32 %542 to i16
  %544 = getelementptr inbounds %struct.block, ptr %476, i64 0, i32 2
  store i16 %543, ptr %544, align 2, !tbaa !181
  br i1 %433, label %587, label %545, !prof !237

545:                                              ; preds = %536
  %546 = load ptr, ptr %190, align 8, !tbaa !182
  %547 = getelementptr inbounds %struct.xpvcv, ptr %546, i64 0, i32 9
  %548 = load ptr, ptr %547, align 8, !tbaa !181
  %549 = getelementptr inbounds %struct.xpvcv, ptr %546, i64 0, i32 13
  %550 = load i32, ptr %549, align 4, !tbaa !167
  %551 = add nsw i32 %550, 1
  store i32 %551, ptr %549, align 4, !tbaa !167
  %552 = icmp sgt i32 %550, 0
  br i1 %552, label %553, label %554, !prof !237

553:                                              ; preds = %545
  call void @Perl_pad_push(ptr noundef %548, i32 noundef %551) #5
  br label %554

554:                                              ; preds = %553, %545
  %555 = load ptr, ptr @PL_comppad, align 8, !tbaa !56
  call void @Perl_save_pushptr(ptr noundef %555, i32 noundef 7) #5
  %556 = getelementptr inbounds %struct.padlist, ptr %548, i64 0, i32 1
  %557 = load ptr, ptr %556, align 8, !tbaa !238
  %558 = load ptr, ptr %190, align 8, !tbaa !182
  %559 = getelementptr inbounds %struct.xpvcv, ptr %558, i64 0, i32 13
  %560 = load i32, ptr %559, align 4, !tbaa !167
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds ptr, ptr %557, i64 %561
  %563 = load ptr, ptr %562, align 8, !tbaa !56
  store ptr %563, ptr @PL_comppad, align 8, !tbaa !56
  %564 = getelementptr inbounds %struct.av, ptr %563, i64 0, i32 3
  %565 = load ptr, ptr %564, align 8, !tbaa !181
  store ptr %565, ptr @PL_curpad, align 8, !tbaa !56
  br i1 %432, label %566, label %587, !prof !237

566:                                              ; preds = %554
  %567 = load ptr, ptr %565, align 8, !tbaa !56
  %568 = load ptr, ptr @PL_defgv, align 8, !tbaa !56
  %569 = getelementptr inbounds %struct.gv, ptr %568, i64 0, i32 3
  %570 = load ptr, ptr %569, align 8, !tbaa !181
  %571 = getelementptr inbounds %struct.gp, ptr %570, i64 0, i32 6
  %572 = load ptr, ptr %571, align 8, !tbaa !240
  %573 = getelementptr inbounds %struct.block, ptr %476, i64 0, i32 8, i32 0, i32 2
  store ptr %572, ptr %573, align 8, !tbaa !181
  %574 = icmp eq ptr %567, null
  br i1 %574, label %579, label %575

575:                                              ; preds = %566
  %576 = getelementptr inbounds %struct.sv, ptr %567, i64 0, i32 1
  %577 = load i32, ptr %576, align 8, !tbaa !231
  %578 = add i32 %577, 1
  store i32 %578, ptr %576, align 8, !tbaa !231
  br label %579

579:                                              ; preds = %566, %575
  %580 = load ptr, ptr @PL_defgv, align 8, !tbaa !56
  %581 = getelementptr inbounds %struct.gv, ptr %580, i64 0, i32 3
  %582 = load ptr, ptr %581, align 8, !tbaa !181
  %583 = getelementptr inbounds %struct.gp, ptr %582, i64 0, i32 6
  store ptr %567, ptr %583, align 8, !tbaa !240
  %584 = load ptr, ptr @PL_comppad, align 8, !tbaa !56
  %585 = getelementptr inbounds %struct.block, ptr %476, i64 0, i32 8, i32 0, i32 5
  store ptr %584, ptr %585, align 8, !tbaa !181
  %586 = getelementptr inbounds %struct.block, ptr %476, i64 0, i32 8, i32 0, i32 3
  store ptr %567, ptr %586, align 8, !tbaa !181
  br label %587

587:                                              ; preds = %554, %579, %536, %469
  %588 = load i8, ptr %476, align 8, !tbaa !181
  %589 = or i8 %588, 16
  store i8 %589, ptr %476, align 8, !tbaa !181
  %590 = sub nsw i64 0, %375
  %591 = getelementptr inbounds ptr, ptr %376, i64 %590
  %592 = select i1 %432, ptr @S_sortcv_stacked, ptr @S_sortcv, !prof !225
  %593 = select i1 %433, ptr @S_sortcv_xsub, ptr %592, !prof !225
  call void @Perl_sortsv_flags(ptr noundef nonnull %591, i64 noundef %375, ptr noundef nonnull %593, i32 noundef %38)
  br i1 %493, label %594, label %716, !prof !235

594:                                              ; preds = %587
  %595 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !56
  %596 = getelementptr inbounds %struct.stackinfo, ptr %595, i64 0, i32 1
  %597 = load ptr, ptr %596, align 8, !tbaa !234
  %598 = getelementptr inbounds %struct.stackinfo, ptr %595, i64 0, i32 4
  %599 = load i32, ptr %598, align 8, !tbaa !228
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds %struct.context, ptr %597, i64 %600
  %602 = getelementptr inbounds %struct.block, ptr %601, i64 0, i32 8, i32 0, i32 4
  %603 = load i32, ptr %602, align 8, !tbaa !181
  %604 = getelementptr inbounds %struct.block, ptr %601, i64 0, i32 2
  %605 = load i16, ptr %604, align 2, !tbaa !181
  %606 = and i16 %605, 256
  %607 = icmp eq i16 %606, 0
  br i1 %607, label %608, label %686, !prof !236

608:                                              ; preds = %594
  %609 = or disjoint i16 %605, 256
  store i16 %609, ptr %604, align 2, !tbaa !181
  %610 = load i8, ptr %601, align 8, !tbaa !181
  %611 = and i8 %610, 32
  %612 = icmp eq i8 %611, 0
  br i1 %612, label %686, label %613, !prof !236

613:                                              ; preds = %608
  %614 = load ptr, ptr @PL_defgv, align 8, !tbaa !56
  %615 = getelementptr inbounds %struct.gv, ptr %614, i64 0, i32 3
  %616 = load ptr, ptr %615, align 8, !tbaa !181
  %617 = getelementptr inbounds %struct.gp, ptr %616, i64 0, i32 6
  %618 = load ptr, ptr %617, align 8, !tbaa !240
  %619 = icmp eq ptr %618, null
  br i1 %619, label %627, label %620

620:                                              ; preds = %613
  %621 = getelementptr inbounds %struct.sv, ptr %618, i64 0, i32 1
  %622 = load i32, ptr %621, align 8, !tbaa !231
  %623 = icmp ugt i32 %622, 1
  br i1 %623, label %624, label %626

624:                                              ; preds = %620
  %625 = add i32 %622, -1
  store i32 %625, ptr %621, align 8, !tbaa !231
  br label %627

626:                                              ; preds = %620
  call void @Perl_sv_free2(ptr noundef nonnull %618, i32 noundef %622) #5
  br label %627

627:                                              ; preds = %613, %624, %626
  %628 = getelementptr inbounds %struct.block, ptr %601, i64 0, i32 8, i32 0, i32 2
  %629 = load ptr, ptr %628, align 8, !tbaa !181
  %630 = load ptr, ptr @PL_defgv, align 8, !tbaa !56
  %631 = getelementptr inbounds %struct.gv, ptr %630, i64 0, i32 3
  %632 = load ptr, ptr %631, align 8, !tbaa !181
  %633 = getelementptr inbounds %struct.gp, ptr %632, i64 0, i32 6
  store ptr %629, ptr %633, align 8, !tbaa !240
  %634 = getelementptr inbounds %struct.block, ptr %601, i64 0, i32 8, i32 0, i32 3
  %635 = load ptr, ptr %634, align 8, !tbaa !181
  %636 = getelementptr inbounds %struct.av, ptr %635, i64 0, i32 2
  %637 = load i32, ptr %636, align 4, !tbaa !199
  %638 = and i32 %637, 1073741824
  %639 = icmp eq i32 %638, 0
  br i1 %639, label %665, label %640

640:                                              ; preds = %627
  %641 = load ptr, ptr %635, align 8, !tbaa !195
  %642 = getelementptr inbounds %struct.xpvav, ptr %641, i64 0, i32 2
  %643 = load i64, ptr %642, align 8, !tbaa !197
  %644 = getelementptr inbounds %struct.sv, ptr %635, i64 0, i32 1
  %645 = load i32, ptr %644, align 8, !tbaa !231
  %646 = icmp ugt i32 %645, 1
  br i1 %646, label %647, label %649

647:                                              ; preds = %640
  %648 = add i32 %645, -1
  store i32 %648, ptr %644, align 8, !tbaa !231
  br label %650

649:                                              ; preds = %640
  call void @Perl_sv_free2(ptr noundef nonnull %635, i32 noundef %645) #5
  br label %650

650:                                              ; preds = %647, %649
  %651 = call ptr @Perl_newSV_type(i32 noundef 11) #5
  store ptr %651, ptr %634, align 8, !tbaa !181
  call void @Perl_av_extend(ptr noundef %651, i64 noundef %643) #5
  %652 = load ptr, ptr %634, align 8, !tbaa !181
  %653 = getelementptr inbounds %struct.av, ptr %652, i64 0, i32 2
  %654 = load i32, ptr %653, align 4, !tbaa !199
  %655 = and i32 %654, -1073741825
  store i32 %655, ptr %653, align 4, !tbaa !199
  %656 = load ptr, ptr %634, align 8, !tbaa !181
  %657 = getelementptr inbounds %struct.av, ptr %656, i64 0, i32 2
  %658 = load i32, ptr %657, align 4, !tbaa !199
  %659 = or i32 %658, -2147483648
  store i32 %659, ptr %657, align 4, !tbaa !199
  %660 = load ptr, ptr %634, align 8, !tbaa !181
  %661 = getelementptr inbounds %struct.block, ptr %601, i64 0, i32 8, i32 0, i32 5
  %662 = load ptr, ptr %661, align 8, !tbaa !181
  %663 = getelementptr inbounds %struct.av, ptr %662, i64 0, i32 3
  %664 = load ptr, ptr %663, align 8, !tbaa !181
  store ptr %660, ptr %664, align 8, !tbaa !56
  br label %686

665:                                              ; preds = %627
  %666 = getelementptr inbounds %struct.av, ptr %635, i64 0, i32 3
  %667 = load ptr, ptr %666, align 8, !tbaa !181
  %668 = load ptr, ptr %635, align 8, !tbaa !195
  %669 = getelementptr inbounds %struct.xpvav, ptr %668, i64 0, i32 4
  %670 = load ptr, ptr %669, align 8, !tbaa !241
  %671 = ptrtoint ptr %667 to i64
  %672 = ptrtoint ptr %670 to i64
  %673 = sub i64 %671, %672
  %674 = ashr exact i64 %673, 3
  %675 = getelementptr inbounds %struct.xpvav, ptr %668, i64 0, i32 3
  %676 = load i64, ptr %675, align 8, !tbaa !230
  %677 = add nsw i64 %674, %676
  store i64 %677, ptr %675, align 8, !tbaa !230
  %678 = load ptr, ptr %634, align 8, !tbaa !181
  %679 = load ptr, ptr %678, align 8, !tbaa !195
  %680 = getelementptr inbounds %struct.xpvav, ptr %679, i64 0, i32 4
  %681 = load ptr, ptr %680, align 8, !tbaa !241
  %682 = getelementptr inbounds %struct.av, ptr %678, i64 0, i32 3
  store ptr %681, ptr %682, align 8, !tbaa !181
  %683 = load ptr, ptr %634, align 8, !tbaa !181
  %684 = load ptr, ptr %683, align 8, !tbaa !195
  %685 = getelementptr inbounds %struct.xpvav, ptr %684, i64 0, i32 2
  store i64 -1, ptr %685, align 8, !tbaa !197
  br label %686

686:                                              ; preds = %608, %665, %650, %594
  %687 = getelementptr inbounds %struct.block, ptr %601, i64 0, i32 8, i32 0, i32 1
  %688 = load ptr, ptr %687, align 8, !tbaa !181
  %689 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !167
  %690 = load ptr, ptr @PL_scopestack, align 8, !tbaa !56
  %691 = getelementptr inbounds %struct.block, ptr %601, i64 0, i32 6
  %692 = load i32, ptr %691, align 4, !tbaa !181
  %693 = sext i32 %692 to i64
  %694 = getelementptr i32, ptr %690, i64 %693
  %695 = getelementptr i32, ptr %694, i64 -1
  %696 = load i32, ptr %695, align 4, !tbaa !167
  %697 = icmp sgt i32 %689, %696
  br i1 %697, label %698, label %699, !prof !236

698:                                              ; preds = %686
  call void @Perl_leave_scope(i32 noundef %696) #5
  br label %699

699:                                              ; preds = %698, %686
  %700 = icmp eq ptr %688, null
  br i1 %700, label %706, label %701, !prof !237

701:                                              ; preds = %699
  %702 = load ptr, ptr %688, align 8, !tbaa !182
  %703 = getelementptr inbounds %struct.xpvcv, ptr %702, i64 0, i32 13
  store i32 %603, ptr %703, align 4, !tbaa !167
  %704 = icmp eq i32 %603, 0
  %705 = select i1 %704, ptr %688, ptr null, !prof !236
  br label %706

706:                                              ; preds = %701, %699
  %707 = phi ptr [ null, %699 ], [ %705, %701 ]
  %708 = icmp eq ptr %707, null
  br i1 %708, label %716, label %709, !prof !237

709:                                              ; preds = %706
  %710 = getelementptr inbounds %struct.sv, ptr %707, i64 0, i32 1
  %711 = load i32, ptr %710, align 8, !tbaa !231
  %712 = icmp ugt i32 %711, 1
  br i1 %712, label %713, label %715, !prof !236

713:                                              ; preds = %709
  %714 = add i32 %711, -1
  store i32 %714, ptr %710, align 8, !tbaa !231
  br label %716

715:                                              ; preds = %709
  call void @Perl_sv_free2(ptr noundef nonnull %707, i32 noundef %711) #5
  br label %716

716:                                              ; preds = %715, %713, %706, %587
  %717 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !56
  %718 = getelementptr inbounds %struct.stackinfo, ptr %717, i64 0, i32 1
  %719 = load ptr, ptr %718, align 8, !tbaa !234
  %720 = getelementptr inbounds %struct.stackinfo, ptr %717, i64 0, i32 4
  %721 = load i32, ptr %720, align 8, !tbaa !228
  %722 = add nsw i32 %721, -1
  store i32 %722, ptr %720, align 8, !tbaa !228
  %723 = sext i32 %721 to i64
  %724 = getelementptr inbounds %struct.context, ptr %719, i64 %723
  %725 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %726 = getelementptr inbounds %struct.block, ptr %724, i64 0, i32 3
  %727 = load i32, ptr %726, align 4, !tbaa !181
  %728 = sext i32 %727 to i64
  %729 = getelementptr inbounds ptr, ptr %725, i64 %728
  %730 = getelementptr inbounds %struct.block, ptr %724, i64 0, i32 4
  %731 = load ptr, ptr %730, align 8, !tbaa !181
  store ptr %731, ptr @PL_curcop, align 8, !tbaa !56
  %732 = load ptr, ptr @PL_markstack, align 8, !tbaa !56
  %733 = getelementptr inbounds %struct.block, ptr %724, i64 0, i32 5
  %734 = load i32, ptr %733, align 8, !tbaa !181
  %735 = sext i32 %734 to i64
  %736 = getelementptr inbounds i32, ptr %732, i64 %735
  store ptr %736, ptr @PL_markstack_ptr, align 8, !tbaa !56
  %737 = getelementptr inbounds %struct.block, ptr %724, i64 0, i32 6
  %738 = load i32, ptr %737, align 4, !tbaa !181
  store i32 %738, ptr @PL_scopestack_ix, align 4, !tbaa !167
  %739 = getelementptr inbounds %struct.block, ptr %724, i64 0, i32 7
  %740 = load ptr, ptr %739, align 8, !tbaa !181
  store ptr %740, ptr @PL_curpm, align 8, !tbaa !56
  store ptr %729, ptr @PL_stack_sp, align 8, !tbaa !56
  %741 = getelementptr inbounds %struct.stackinfo, ptr %717, i64 0, i32 2
  %742 = load ptr, ptr %741, align 8, !tbaa !226
  %743 = icmp eq ptr %742, null
  br i1 %743, label %744, label %745, !prof !225

744:                                              ; preds = %716
  call void @Perl_croak_popstack() #5
  br label %745

745:                                              ; preds = %716, %744
  %746 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %747 = ptrtoint ptr %729 to i64
  %748 = ptrtoint ptr %746 to i64
  %749 = sub i64 %747, %748
  %750 = ashr exact i64 %749, 3
  %751 = load ptr, ptr @PL_curstack, align 8, !tbaa !56
  %752 = load ptr, ptr %751, align 8, !tbaa !195
  %753 = getelementptr inbounds %struct.xpvav, ptr %752, i64 0, i32 2
  store i64 %750, ptr %753, align 8, !tbaa !197
  %754 = load ptr, ptr %742, align 8, !tbaa !229
  %755 = getelementptr inbounds %struct.av, ptr %754, i64 0, i32 3
  %756 = load ptr, ptr %755, align 8, !tbaa !181
  store ptr %756, ptr @PL_stack_base, align 8, !tbaa !56
  %757 = load ptr, ptr %742, align 8, !tbaa !229
  %758 = load ptr, ptr %757, align 8, !tbaa !195
  %759 = getelementptr inbounds %struct.xpvav, ptr %758, i64 0, i32 3
  %760 = load i64, ptr %759, align 8, !tbaa !230
  %761 = getelementptr inbounds ptr, ptr %756, i64 %760
  store ptr %761, ptr @PL_stack_max, align 8, !tbaa !56
  %762 = load ptr, ptr %742, align 8, !tbaa !229
  %763 = load ptr, ptr %762, align 8, !tbaa !195
  %764 = getelementptr inbounds %struct.xpvav, ptr %763, i64 0, i32 2
  %765 = load i64, ptr %764, align 8, !tbaa !197
  %766 = getelementptr inbounds ptr, ptr %756, i64 %765
  store ptr %766, ptr @PL_stack_sp, align 8, !tbaa !56
  %767 = load ptr, ptr %742, align 8, !tbaa !229
  store ptr %767, ptr @PL_curstack, align 8, !tbaa !56
  store ptr %742, ptr @PL_curstackinfo, align 8, !tbaa !56
  %768 = load ptr, ptr @PL_top_env, align 8, !tbaa !56
  %769 = getelementptr inbounds %struct.jmpenv, ptr %768, i64 0, i32 3
  store i8 %389, ptr %769, align 4, !tbaa !217
  br label %812

770:                                              ; preds = %383
  %771 = load ptr, ptr @PL_stack_max, align 8, !tbaa !56
  %772 = ptrtoint ptr %771 to i64
  %773 = ptrtoint ptr %273 to i64
  %774 = sub i64 %772, %773
  %775 = icmp slt i64 %774, 160
  br i1 %775, label %776, label %784, !prof !242

776:                                              ; preds = %770
  %777 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %778 = ptrtoint ptr %272 to i64
  %779 = ptrtoint ptr %777 to i64
  %780 = sub i64 %778, %779
  %781 = call ptr @Perl_stack_grow(ptr noundef %273, ptr noundef %273, i64 noundef 20) #5
  %782 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %783 = getelementptr inbounds i8, ptr %782, i64 %780
  br label %784

784:                                              ; preds = %770, %776
  %785 = phi ptr [ %783, %776 ], [ %272, %770 ]
  br i1 %267, label %789, label %786, !prof !243

786:                                              ; preds = %784
  %787 = getelementptr inbounds %struct.av, ptr %268, i64 0, i32 3
  %788 = load ptr, ptr %787, align 8, !tbaa !181
  br label %793

789:                                              ; preds = %784
  %790 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %791 = getelementptr inbounds ptr, ptr %790, i64 %8
  %792 = getelementptr inbounds ptr, ptr %791, i64 1
  br label %793

793:                                              ; preds = %789, %786
  %794 = phi ptr [ %788, %786 ], [ %792, %789 ]
  %795 = and i32 %30, 1
  %796 = icmp eq i32 %795, 0
  br i1 %796, label %807, label %797, !prof !243

797:                                              ; preds = %793
  %798 = and i32 %30, 2
  %799 = icmp ne i32 %798, 0
  %800 = icmp ne i32 %373, 0
  %801 = select i1 %799, i1 true, i1 %800
  %802 = icmp eq i32 %374, 0
  br i1 %801, label %803, label %805

803:                                              ; preds = %797
  %804 = select i1 %802, ptr @S_sv_i_ncmp, ptr @S_amagic_i_ncmp
  br label %810

805:                                              ; preds = %797
  %806 = select i1 %802, ptr @S_sv_ncmp, ptr @S_amagic_ncmp
  br label %810

807:                                              ; preds = %793
  %808 = icmp eq i32 %374, 0
  %809 = select i1 %808, ptr @Perl_sv_cmp, ptr @S_amagic_cmp, !prof !243
  br label %810

810:                                              ; preds = %803, %805, %807
  %811 = phi ptr [ %809, %807 ], [ %804, %803 ], [ %806, %805 ]
  call void @Perl_sortsv_flags(ptr noundef %794, i64 noundef %375, ptr noundef nonnull %811, i32 noundef %38)
  br label %812

812:                                              ; preds = %810, %745
  %813 = phi ptr [ %591, %745 ], [ %794, %810 ]
  %814 = phi ptr [ %272, %745 ], [ %785, %810 ]
  %815 = and i32 %30, 4
  %816 = icmp eq i32 %815, 0
  br i1 %816, label %829, label %817, !prof !244

817:                                              ; preds = %812
  %818 = getelementptr inbounds ptr, ptr %813, i64 %375
  %819 = getelementptr inbounds ptr, ptr %818, i64 -1
  %820 = icmp ult ptr %813, %819
  br i1 %820, label %821, label %829, !prof !245

821:                                              ; preds = %817, %821
  %822 = phi ptr [ %827, %821 ], [ %819, %817 ]
  %823 = phi ptr [ %826, %821 ], [ %813, %817 ]
  %824 = load ptr, ptr %823, align 8, !tbaa !56
  %825 = load ptr, ptr %822, align 8, !tbaa !56
  %826 = getelementptr inbounds ptr, ptr %823, i64 1
  store ptr %825, ptr %823, align 8, !tbaa !56
  store ptr %824, ptr %822, align 8, !tbaa !56
  %827 = getelementptr inbounds ptr, ptr %822, i64 -1
  %828 = icmp ult ptr %826, %827
  br i1 %828, label %821, label %829, !prof !246, !llvm.loop !247

829:                                              ; preds = %821, %817, %812, %381
  %830 = phi ptr [ %272, %381 ], [ %814, %812 ], [ %814, %817 ], [ %814, %821 ]
  br i1 %267, label %835, label %831, !prof !173

831:                                              ; preds = %829
  %832 = getelementptr inbounds %struct.av, ptr %268, i64 0, i32 2
  %833 = load i32, ptr %832, align 4, !tbaa !199
  %834 = and i32 %833, -134283265
  store i32 %834, ptr %832, align 4, !tbaa !199
  br label %867

835:                                              ; preds = %829
  %836 = icmp eq ptr %268, null
  br i1 %836, label %867, label %837, !prof !173

837:                                              ; preds = %835
  %838 = getelementptr inbounds ptr, ptr %830, i64 1
  %839 = icmp sgt i64 %375, 0
  br i1 %839, label %840, label %847

840:                                              ; preds = %837, %840
  %841 = phi i64 [ %845, %840 ], [ 0, %837 ]
  %842 = getelementptr inbounds ptr, ptr %838, i64 %841
  %843 = load ptr, ptr %842, align 8, !tbaa !56
  %844 = call ptr @Perl_newSVsv(ptr noundef %843) #5
  store ptr %844, ptr %842, align 8, !tbaa !56
  %845 = add nuw nsw i64 %841, 1
  %846 = icmp eq i64 %845, %375
  br i1 %846, label %847, label %840, !llvm.loop !248

847:                                              ; preds = %840, %837
  call void @Perl_av_clear(ptr noundef nonnull %268) #5
  call void @Perl_av_extend(ptr noundef nonnull %268, i64 noundef %375) #5
  %848 = icmp sgt i64 %375, 0
  br i1 %848, label %849, label %867

849:                                              ; preds = %847, %864
  %850 = phi i64 [ %865, %864 ], [ 0, %847 ]
  %851 = getelementptr inbounds ptr, ptr %838, i64 %850
  %852 = load ptr, ptr %851, align 8, !tbaa !56
  %853 = call ptr @Perl_av_store(ptr noundef nonnull %268, i64 noundef %850, ptr noundef %852) #5
  %854 = getelementptr inbounds %struct.sv, ptr %852, i64 0, i32 2
  %855 = load i32, ptr %854, align 4, !tbaa !193
  %856 = and i32 %855, 4194304
  %857 = icmp eq i32 %856, 0
  br i1 %857, label %860, label %858

858:                                              ; preds = %849
  %859 = call i32 @Perl_mg_set(ptr noundef %852) #5
  br label %860

860:                                              ; preds = %858, %849
  %861 = icmp eq ptr %853, null
  br i1 %861, label %862, label %864

862:                                              ; preds = %860
  %863 = call ptr @Perl_sv_2mortal(ptr noundef %852) #5
  br label %864

864:                                              ; preds = %862, %860
  %865 = add nuw nsw i64 %850, 1
  %866 = icmp eq i64 %865, %375
  br i1 %866, label %867, label %849, !llvm.loop !249

867:                                              ; preds = %864, %847, %835, %831
  %868 = phi i64 [ %375, %835 ], [ 0, %831 ], [ %375, %847 ], [ %375, %864 ]
  call void @Perl_pop_scope() #5
  %869 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %870 = getelementptr inbounds ptr, ptr %869, i64 %8
  %871 = getelementptr inbounds ptr, ptr %870, i64 %868
  store ptr %871, ptr @PL_stack_sp, align 8, !tbaa !56
  br label %872

872:                                              ; preds = %180, %867, %47
  %873 = phi ptr [ %51, %47 ], [ %25, %867 ], [ %184, %180 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #5
  ret ptr %873
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare i32 @Perl_block_gimme() local_unnamed_addr #3

declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @Perl_push_scope() local_unnamed_addr #3

declare void @Perl_save_vptr(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare ptr @Perl_sv_2cv(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

declare ptr @Perl_gv_autoload_pvn(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @Perl_sv_newmortal() local_unnamed_addr #3

declare void @Perl_gv_efullname4(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare ptr @Perl_die(ptr noundef, ...) local_unnamed_addr #3

declare i32 @Perl_mg_size(ptr noundef) local_unnamed_addr #3

declare ptr @Perl_av_fetch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare void @Perl_croak_no_modify() local_unnamed_addr #3

declare void @Perl_save_pushptr(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @Perl_sv_mortalcopy_flags(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @Perl_sv_2iv_flags(ptr noundef, i32 noundef) local_unnamed_addr #3

declare double @Perl_sv_2nv_flags(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @Perl_save_strlen(ptr noundef) local_unnamed_addr #3

declare ptr @Perl_new_stackinfo(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @Perl_save_generic_svref(ptr noundef) local_unnamed_addr #3

declare ptr @Perl_gv_fetchpvn_flags(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @Perl_save_sptr(ptr noundef) local_unnamed_addr #3

declare i32 @Perl_cxinc() local_unnamed_addr #3

declare i32 @Perl_was_lvalue_sub() local_unnamed_addr #3

declare void @Perl_pad_push(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal i32 @S_sortcv_xsub(ptr noundef %0, ptr noundef %1) #0 !prof !53 {
  %3 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !167
  %4 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !167
  %5 = load ptr, ptr @PL_sortcop, align 8, !tbaa !56
  %6 = load ptr, ptr @PL_curpm, align 8, !tbaa !56
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %8 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !56
  %9 = getelementptr inbounds i32, ptr %8, i64 1
  store ptr %9, ptr @PL_markstack_ptr, align 8, !tbaa !56
  %10 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !56
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = tail call ptr @Perl_markstack_grow() #5
  br label %14

14:                                               ; preds = %2, %12
  %15 = phi ptr [ %13, %12 ], [ %9, %2 ]
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %17 = ptrtoint ptr %7 to i64
  %18 = ptrtoint ptr %16 to i64
  %19 = sub i64 %17, %18
  %20 = lshr exact i64 %19, 3
  %21 = trunc i64 %20 to i32
  store i32 %21, ptr %15, align 4, !tbaa !167
  %22 = load ptr, ptr @PL_stack_max, align 8, !tbaa !56
  %23 = ptrtoint ptr %22 to i64
  %24 = sub i64 %23, %17
  %25 = icmp slt i64 %24, 16
  br i1 %25, label %26, label %28

26:                                               ; preds = %14
  %27 = tail call ptr @Perl_stack_grow(ptr noundef %7, ptr noundef %7, i64 noundef 2) #5
  br label %28

28:                                               ; preds = %14, %26
  %29 = phi ptr [ %27, %26 ], [ %7, %14 ]
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  store ptr %0, ptr %30, align 8, !tbaa !56
  %31 = getelementptr inbounds ptr, ptr %29, i64 2
  store ptr %1, ptr %31, align 8, !tbaa !56
  store ptr %31, ptr @PL_stack_sp, align 8, !tbaa !56
  %32 = load ptr, ptr %5, align 8, !tbaa !182
  %33 = getelementptr inbounds %struct.xpvcv, ptr %32, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !181
  tail call void %34(ptr noundef nonnull %5) #5
  %35 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !56
  %36 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %37 = getelementptr inbounds ptr, ptr %36, i64 1
  %38 = icmp eq ptr %35, %37
  br i1 %38, label %40, label %39

39:                                               ; preds = %28
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.5) #5
  br label %40

40:                                               ; preds = %39, %28
  %41 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !56
  %42 = load ptr, ptr %41, align 8, !tbaa !56
  %43 = getelementptr inbounds %struct.sv, ptr %42, i64 0, i32 2
  %44 = load i32, ptr %43, align 4, !tbaa !193
  %45 = and i32 %44, 2097408
  %46 = icmp eq i32 %45, 256
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load ptr, ptr %42, align 8, !tbaa !208
  %49 = getelementptr inbounds %struct.xpviv, ptr %48, i64 0, i32 4
  %50 = load i64, ptr %49, align 8, !tbaa !181
  br label %53

51:                                               ; preds = %40
  %52 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %42, i32 noundef 2) #5
  br label %53

53:                                               ; preds = %51, %47
  %54 = phi i64 [ %50, %47 ], [ %52, %51 ]
  %55 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !167
  %56 = icmp sgt i32 %55, %4
  br i1 %56, label %57, label %60

57:                                               ; preds = %53, %57
  tail call void @Perl_pop_scope() #5
  %58 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !167
  %59 = icmp sgt i32 %58, %4
  br i1 %59, label %57, label %60, !llvm.loop !250

60:                                               ; preds = %57, %53
  %61 = trunc i64 %54 to i32
  tail call void @Perl_leave_scope(i32 noundef %3) #5
  store ptr %6, ptr @PL_curpm, align 8, !tbaa !56
  ret i32 %61
}

; Function Attrs: cold nounwind uwtable
define internal i32 @S_sortcv_stacked(ptr noundef %0, ptr noundef %1) #0 !prof !53 {
  %3 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !167
  %4 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !167
  %5 = load ptr, ptr @PL_defgv, align 8, !tbaa !56
  %6 = getelementptr inbounds %struct.gv, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !181
  %8 = getelementptr inbounds %struct.gp, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !240
  %10 = load ptr, ptr @PL_curpm, align 8, !tbaa !56
  %11 = load ptr, ptr @PL_op, align 8, !tbaa !56
  %12 = load ptr, ptr @PL_curcop, align 8, !tbaa !56
  %13 = getelementptr inbounds %struct.av, ptr %9, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !199
  %15 = and i32 %14, 1073741824
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  tail call void @Perl_av_clear(ptr noundef %9) #5
  %18 = load i32, ptr %13, align 4, !tbaa !199
  %19 = and i32 %18, 1073741823
  %20 = or disjoint i32 %19, -2147483648
  store i32 %20, ptr %13, align 4, !tbaa !199
  br label %21

21:                                               ; preds = %17, %2
  %22 = load ptr, ptr %9, align 8, !tbaa !195
  %23 = getelementptr inbounds %struct.xpvav, ptr %22, i64 0, i32 3
  %24 = load i64, ptr %23, align 8, !tbaa !230
  %25 = icmp slt i64 %24, 1
  br i1 %25, label %26, label %45

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.xpvav, ptr %22, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !241
  %29 = getelementptr inbounds %struct.av, ptr %9, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !181
  %31 = icmp eq ptr %30, %28
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = ptrtoint ptr %30 to i64
  %34 = ptrtoint ptr %28 to i64
  %35 = sub i64 %33, %34
  %36 = ashr exact i64 %35, 3
  %37 = add nsw i64 %36, %24
  store i64 %37, ptr %23, align 8, !tbaa !230
  store ptr %28, ptr %29, align 8, !tbaa !181
  br label %38

38:                                               ; preds = %32, %26
  %39 = load i64, ptr %23, align 8, !tbaa !230
  %40 = icmp slt i64 %39, 1
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  store i64 1, ptr %23, align 8, !tbaa !230
  %42 = tail call ptr @Perl_safesysrealloc(ptr noundef %28, i64 noundef 16) #5
  store ptr %42, ptr %29, align 8, !tbaa !181
  %43 = load ptr, ptr %9, align 8, !tbaa !195
  %44 = getelementptr inbounds %struct.xpvav, ptr %43, i64 0, i32 4
  store ptr %42, ptr %44, align 8, !tbaa !241
  br label %45

45:                                               ; preds = %38, %41, %21
  %46 = load ptr, ptr %9, align 8, !tbaa !195
  %47 = getelementptr inbounds %struct.xpvav, ptr %46, i64 0, i32 2
  store i64 1, ptr %47, align 8, !tbaa !197
  %48 = getelementptr inbounds %struct.av, ptr %9, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !181
  store ptr %0, ptr %49, align 8, !tbaa !56
  %50 = load ptr, ptr %48, align 8, !tbaa !181
  %51 = getelementptr inbounds ptr, ptr %50, i64 1
  store ptr %1, ptr %51, align 8, !tbaa !56
  %52 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  store ptr %52, ptr @PL_stack_sp, align 8, !tbaa !56
  %53 = load ptr, ptr @PL_sortcop, align 8, !tbaa !56
  store ptr %53, ptr @PL_op, align 8, !tbaa !56
  %54 = load ptr, ptr @PL_runops, align 8, !tbaa !56
  %55 = tail call i32 %54() #5
  store ptr %11, ptr @PL_op, align 8, !tbaa !56
  store ptr %12, ptr @PL_curcop, align 8, !tbaa !56
  %56 = load ptr, ptr @PL_curpad, align 8, !tbaa !56
  store ptr null, ptr @PL_curpad, align 8, !tbaa !56
  %57 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !56
  %58 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %59 = getelementptr inbounds ptr, ptr %58, i64 1
  %60 = icmp eq ptr %57, %59
  br i1 %60, label %71, label %61

61:                                               ; preds = %45
  %62 = load i32, ptr getelementptr inbounds (%struct.sv, ptr @PL_sv_undef, i64 0, i32 2), align 4, !tbaa !193
  %63 = and i32 %62, 2097408
  %64 = icmp eq i32 %63, 256
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load ptr, ptr @PL_sv_undef, align 8, !tbaa !208
  %67 = getelementptr inbounds %struct.xpviv, ptr %66, i64 0, i32 4
  %68 = load i64, ptr %67, align 8, !tbaa !181
  br label %83

69:                                               ; preds = %61
  %70 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull @PL_sv_undef, i32 noundef 2) #5
  br label %83

71:                                               ; preds = %45
  %72 = load ptr, ptr %57, align 8, !tbaa !56
  %73 = getelementptr inbounds %struct.sv, ptr %72, i64 0, i32 2
  %74 = load i32, ptr %73, align 4, !tbaa !193
  %75 = and i32 %74, 2097408
  %76 = icmp eq i32 %75, 256
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load ptr, ptr %72, align 8, !tbaa !208
  %79 = getelementptr inbounds %struct.xpviv, ptr %78, i64 0, i32 4
  %80 = load i64, ptr %79, align 8, !tbaa !181
  br label %83

81:                                               ; preds = %71
  %82 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %72, i32 noundef 2) #5
  br label %83

83:                                               ; preds = %77, %81, %65, %69
  %84 = phi i64 [ %68, %65 ], [ %70, %69 ], [ %80, %77 ], [ %82, %81 ]
  store ptr %56, ptr @PL_curpad, align 8, !tbaa !56
  %85 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !167
  %86 = icmp sgt i32 %85, %4
  br i1 %86, label %87, label %90

87:                                               ; preds = %83, %87
  tail call void @Perl_pop_scope() #5
  %88 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !167
  %89 = icmp sgt i32 %88, %4
  br i1 %89, label %87, label %90, !llvm.loop !251

90:                                               ; preds = %87, %83
  %91 = trunc i64 %84 to i32
  tail call void @Perl_leave_scope(i32 noundef %3) #5
  store ptr %10, ptr @PL_curpm, align 8, !tbaa !56
  ret i32 %91
}

; Function Attrs: nounwind uwtable
define internal i32 @S_sortcv(ptr noundef %0, ptr noundef %1) #1 !prof !252 !PGOFuncName !253 {
  %3 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !167
  %4 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !167
  %5 = load ptr, ptr @PL_curpm, align 8, !tbaa !56
  %6 = load ptr, ptr @PL_op, align 8, !tbaa !56
  %7 = load ptr, ptr @PL_curcop, align 8, !tbaa !56
  %8 = load ptr, ptr @PL_firstgv, align 8, !tbaa !56
  %9 = getelementptr inbounds %struct.gv, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !181
  store ptr %0, ptr %10, align 8, !tbaa !254
  %11 = load ptr, ptr @PL_secondgv, align 8, !tbaa !56
  %12 = getelementptr inbounds %struct.gv, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !181
  store ptr %1, ptr %13, align 8, !tbaa !254
  %14 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  store ptr %14, ptr @PL_stack_sp, align 8, !tbaa !56
  %15 = load ptr, ptr @PL_sortcop, align 8, !tbaa !56
  store ptr %15, ptr @PL_op, align 8, !tbaa !56
  %16 = load ptr, ptr @PL_runops, align 8, !tbaa !56
  %17 = tail call i32 %16() #5, !prof !255
  store ptr %6, ptr @PL_op, align 8, !tbaa !56
  store ptr %7, ptr @PL_curcop, align 8, !tbaa !56
  %18 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !56
  %19 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = icmp eq ptr %18, %20
  br i1 %21, label %22, label %24, !prof !256

22:                                               ; preds = %2
  %23 = load ptr, ptr %18, align 8, !tbaa !56
  br label %24

24:                                               ; preds = %2, %22
  %25 = phi ptr [ %23, %22 ], [ @PL_sv_undef, %2 ]
  %26 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !193
  %28 = and i32 %27, 768
  %29 = icmp ne i32 %28, 0
  %30 = and i32 %27, 2097152
  %31 = icmp eq i32 %30, 0
  %32 = and i1 %29, %31
  br i1 %32, label %33, label %42, !prof !256

33:                                               ; preds = %24
  %34 = and i32 %27, 256
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36, !prof !257

36:                                               ; preds = %33
  %37 = load ptr, ptr %25, align 8, !tbaa !208
  %38 = getelementptr inbounds %struct.xpviv, ptr %37, i64 0, i32 4
  %39 = load i64, ptr %38, align 8, !tbaa !181
  br label %54

40:                                               ; preds = %33
  %41 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %25, i32 noundef 2) #5
  br label %54

42:                                               ; preds = %24
  tail call void @Perl_push_scope() #5
  tail call void @Perl_save_vptr(ptr noundef nonnull @PL_curpad) #5
  store ptr null, ptr @PL_curpad, align 8, !tbaa !56
  %43 = load i32, ptr %26, align 4, !tbaa !193
  %44 = and i32 %43, 2097408
  %45 = icmp eq i32 %44, 256
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load ptr, ptr %25, align 8, !tbaa !208
  %48 = getelementptr inbounds %struct.xpviv, ptr %47, i64 0, i32 4
  %49 = load i64, ptr %48, align 8, !tbaa !181
  br label %52

50:                                               ; preds = %42
  %51 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %25, i32 noundef 2) #5
  br label %52

52:                                               ; preds = %50, %46
  %53 = phi i64 [ %49, %46 ], [ %51, %50 ]
  tail call void @Perl_pop_scope() #5
  br label %54

54:                                               ; preds = %36, %40, %52
  %55 = phi i64 [ %53, %52 ], [ %39, %36 ], [ %41, %40 ]
  %56 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !167
  %57 = icmp sgt i32 %56, %4
  br i1 %57, label %58, label %61, !prof !258

58:                                               ; preds = %54, %58
  tail call void @Perl_pop_scope() #5
  %59 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !167
  %60 = icmp sgt i32 %59, %4
  br i1 %60, label %58, label %61, !prof !258, !llvm.loop !259

61:                                               ; preds = %58, %54
  %62 = trunc i64 %55 to i32
  tail call void @Perl_leave_scope(i32 noundef %3) #5
  store ptr %5, ptr @PL_curpm, align 8, !tbaa !56
  ret i32 %62
}

declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #3

declare void @Perl_av_extend(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @Perl_leave_scope(i32 noundef) local_unnamed_addr #3

declare void @Perl_croak_popstack() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal i32 @S_amagic_i_ncmp(ptr noundef %0, ptr noundef %1) #0 !prof !53 {
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !193
  %5 = and i32 %4, 2048
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !181
  %10 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !193
  %12 = and i32 %11, 1048576
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %7
  %15 = load ptr, ptr %9, align 8, !tbaa !208
  %16 = load ptr, ptr %15, align 8, !tbaa !209
  %17 = getelementptr inbounds %struct.hv, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !211
  %19 = and i32 %18, 268435456
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %14, %7, %2
  %22 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !193
  %24 = and i32 %23, 2048
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %42, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !181
  %29 = getelementptr inbounds %struct.sv, ptr %28, i64 0, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !193
  %31 = and i32 %30, 1048576
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %26
  %34 = load ptr, ptr %28, align 8, !tbaa !208
  %35 = load ptr, ptr %34, align 8, !tbaa !209
  %36 = getelementptr inbounds %struct.hv, ptr %35, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !211
  %38 = and i32 %37, 268435456
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %33, %14
  %41 = tail call ptr @Perl_amagic_call(ptr noundef %0, ptr noundef %1, i32 noundef 58, i32 noundef 0) #5
  br label %42

42:                                               ; preds = %21, %26, %33, %40
  %43 = phi ptr [ %41, %40 ], [ null, %33 ], [ null, %26 ], [ null, %21 ]
  %44 = icmp eq ptr %43, null
  br i1 %44, label %74, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.sv, ptr %43, i64 0, i32 2
  %47 = load i32, ptr %46, align 4, !tbaa !193
  %48 = and i32 %47, 256
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %45
  %51 = load ptr, ptr %43, align 8, !tbaa !208
  %52 = getelementptr inbounds %struct.xpviv, ptr %51, i64 0, i32 4
  %53 = load i64, ptr %52, align 8, !tbaa !181
  %54 = trunc i64 %53 to i32
  %55 = icmp ne i32 %54, 0
  %56 = sext i1 %55 to i32
  %57 = icmp slt i32 %54, 1
  %58 = select i1 %57, i32 %56, i32 1
  br label %76

59:                                               ; preds = %45
  %60 = and i32 %47, 2097664
  %61 = icmp eq i32 %60, 512
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load ptr, ptr %43, align 8, !tbaa !208
  %64 = getelementptr inbounds %struct.xpvnv, ptr %63, i64 0, i32 5
  %65 = load double, ptr %64, align 8, !tbaa !181
  br label %68

66:                                               ; preds = %59
  %67 = tail call double @Perl_sv_2nv_flags(ptr noundef nonnull %43, i32 noundef 2) #5
  br label %68

68:                                               ; preds = %66, %62
  %69 = phi double [ %65, %62 ], [ %67, %66 ]
  %70 = fcmp ogt double %69, 0.000000e+00
  %71 = fcmp une double %69, 0.000000e+00
  %72 = sext i1 %71 to i32
  %73 = select i1 %70, i32 1, i32 %72
  br label %76

74:                                               ; preds = %42
  %75 = tail call i32 @S_sv_i_ncmp(ptr noundef %0, ptr noundef %1), !range !260
  br label %76

76:                                               ; preds = %74, %68, %50
  %77 = phi i32 [ %58, %50 ], [ %73, %68 ], [ %75, %74 ]
  ret i32 %77
}

; Function Attrs: cold nounwind uwtable
define internal i32 @S_sv_i_ncmp(ptr noundef %0, ptr noundef %1) #0 !prof !53 {
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !193
  %5 = and i32 %4, 2097408
  %6 = icmp eq i32 %5, 256
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !208
  %9 = getelementptr inbounds %struct.xpviv, ptr %8, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !181
  br label %13

11:                                               ; preds = %2
  %12 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %0, i32 noundef 2) #5
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi i64 [ %10, %7 ], [ %12, %11 ]
  %15 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !193
  %17 = and i32 %16, 2097408
  %18 = icmp eq i32 %17, 256
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load ptr, ptr %1, align 8, !tbaa !208
  %21 = getelementptr inbounds %struct.xpviv, ptr %20, i64 0, i32 4
  %22 = load i64, ptr %21, align 8, !tbaa !181
  br label %25

23:                                               ; preds = %13
  %24 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %1, i32 noundef 2) #5
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi i64 [ %22, %19 ], [ %24, %23 ]
  %27 = icmp slt i64 %14, %26
  %28 = icmp sgt i64 %14, %26
  %29 = zext i1 %28 to i32
  %30 = select i1 %27, i32 -1, i32 %29
  ret i32 %30
}

; Function Attrs: cold nounwind uwtable
define internal i32 @S_amagic_ncmp(ptr noundef %0, ptr noundef %1) #0 !prof !53 {
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !193
  %5 = and i32 %4, 2048
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !181
  %10 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !193
  %12 = and i32 %11, 1048576
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %7
  %15 = load ptr, ptr %9, align 8, !tbaa !208
  %16 = load ptr, ptr %15, align 8, !tbaa !209
  %17 = getelementptr inbounds %struct.hv, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !211
  %19 = and i32 %18, 268435456
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %14, %7, %2
  %22 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !193
  %24 = and i32 %23, 2048
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %42, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !181
  %29 = getelementptr inbounds %struct.sv, ptr %28, i64 0, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !193
  %31 = and i32 %30, 1048576
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %26
  %34 = load ptr, ptr %28, align 8, !tbaa !208
  %35 = load ptr, ptr %34, align 8, !tbaa !209
  %36 = getelementptr inbounds %struct.hv, ptr %35, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !211
  %38 = and i32 %37, 268435456
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %33, %14
  %41 = tail call ptr @Perl_amagic_call(ptr noundef %0, ptr noundef %1, i32 noundef 58, i32 noundef 0) #5
  br label %42

42:                                               ; preds = %21, %26, %33, %40
  %43 = phi ptr [ %41, %40 ], [ null, %33 ], [ null, %26 ], [ null, %21 ]
  %44 = icmp eq ptr %43, null
  br i1 %44, label %74, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.sv, ptr %43, i64 0, i32 2
  %47 = load i32, ptr %46, align 4, !tbaa !193
  %48 = and i32 %47, 256
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %45
  %51 = load ptr, ptr %43, align 8, !tbaa !208
  %52 = getelementptr inbounds %struct.xpviv, ptr %51, i64 0, i32 4
  %53 = load i64, ptr %52, align 8, !tbaa !181
  %54 = trunc i64 %53 to i32
  %55 = icmp ne i32 %54, 0
  %56 = sext i1 %55 to i32
  %57 = icmp slt i32 %54, 1
  %58 = select i1 %57, i32 %56, i32 1
  br label %76

59:                                               ; preds = %45
  %60 = and i32 %47, 2097664
  %61 = icmp eq i32 %60, 512
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load ptr, ptr %43, align 8, !tbaa !208
  %64 = getelementptr inbounds %struct.xpvnv, ptr %63, i64 0, i32 5
  %65 = load double, ptr %64, align 8, !tbaa !181
  br label %68

66:                                               ; preds = %59
  %67 = tail call double @Perl_sv_2nv_flags(ptr noundef nonnull %43, i32 noundef 2) #5
  br label %68

68:                                               ; preds = %66, %62
  %69 = phi double [ %65, %62 ], [ %67, %66 ]
  %70 = fcmp ogt double %69, 0.000000e+00
  %71 = fcmp une double %69, 0.000000e+00
  %72 = sext i1 %71 to i32
  %73 = select i1 %70, i32 1, i32 %72
  br label %76

74:                                               ; preds = %42
  %75 = tail call i32 @S_sv_ncmp(ptr noundef %0, ptr noundef %1), !range !260
  br label %76

76:                                               ; preds = %74, %68, %50
  %77 = phi i32 [ %58, %50 ], [ %73, %68 ], [ %75, %74 ]
  ret i32 %77
}

; Function Attrs: cold nounwind uwtable
define internal i32 @S_sv_ncmp(ptr noundef %0, ptr noundef %1) #0 !prof !53 {
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !193
  %5 = and i32 %4, 512
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !208
  %9 = getelementptr inbounds %struct.xpvnv, ptr %8, i64 0, i32 5
  %10 = load double, ptr %9, align 8, !tbaa !181
  br label %21

11:                                               ; preds = %2
  %12 = and i32 %4, -2147483392
  %13 = icmp eq i32 %12, 256
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load ptr, ptr %0, align 8, !tbaa !208
  %16 = getelementptr inbounds %struct.xpviv, ptr %15, i64 0, i32 4
  %17 = load i64, ptr %16, align 8, !tbaa !181
  %18 = sitofp i64 %17 to double
  br label %21

19:                                               ; preds = %11
  %20 = tail call double @Perl_sv_2nv_flags(ptr noundef %0, i32 noundef 2) #5
  br label %21

21:                                               ; preds = %14, %19, %7
  %22 = phi double [ %10, %7 ], [ %18, %14 ], [ %20, %19 ]
  %23 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !193
  %25 = and i32 %24, 512
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = load ptr, ptr %1, align 8, !tbaa !208
  %29 = getelementptr inbounds %struct.xpvnv, ptr %28, i64 0, i32 5
  %30 = load double, ptr %29, align 8, !tbaa !181
  br label %41

31:                                               ; preds = %21
  %32 = and i32 %24, -2147483392
  %33 = icmp eq i32 %32, 256
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load ptr, ptr %1, align 8, !tbaa !208
  %36 = getelementptr inbounds %struct.xpviv, ptr %35, i64 0, i32 4
  %37 = load i64, ptr %36, align 8, !tbaa !181
  %38 = sitofp i64 %37 to double
  br label %41

39:                                               ; preds = %31
  %40 = tail call double @Perl_sv_2nv_flags(ptr noundef %1, i32 noundef 2) #5
  br label %41

41:                                               ; preds = %34, %39, %27
  %42 = phi double [ %30, %27 ], [ %38, %34 ], [ %40, %39 ]
  %43 = fcmp uno double %22, 0.000000e+00
  %44 = fcmp uno double %42, 0.000000e+00
  %45 = select i1 %43, i1 true, i1 %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 41) #5
  br i1 %47, label %48, label %54

48:                                               ; preds = %46
  tail call void @Perl_report_uninit(ptr noundef null) #5
  br label %54

49:                                               ; preds = %41
  %50 = fcmp olt double %22, %42
  %51 = fcmp ogt double %22, %42
  %52 = zext i1 %51 to i32
  %53 = select i1 %50, i32 -1, i32 %52
  br label %54

54:                                               ; preds = %46, %48, %49
  %55 = phi i32 [ %53, %49 ], [ 0, %48 ], [ 0, %46 ]
  ret i32 %55
}

; Function Attrs: cold nounwind uwtable
define internal i32 @S_amagic_cmp(ptr noundef %0, ptr noundef %1) #0 !prof !53 {
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !193
  %5 = and i32 %4, 2048
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !181
  %10 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !193
  %12 = and i32 %11, 1048576
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %7
  %15 = load ptr, ptr %9, align 8, !tbaa !208
  %16 = load ptr, ptr %15, align 8, !tbaa !209
  %17 = getelementptr inbounds %struct.hv, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !211
  %19 = and i32 %18, 268435456
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %14, %7, %2
  %22 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !193
  %24 = and i32 %23, 2048
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %42, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !181
  %29 = getelementptr inbounds %struct.sv, ptr %28, i64 0, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !193
  %31 = and i32 %30, 1048576
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %26
  %34 = load ptr, ptr %28, align 8, !tbaa !208
  %35 = load ptr, ptr %34, align 8, !tbaa !209
  %36 = getelementptr inbounds %struct.hv, ptr %35, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !211
  %38 = and i32 %37, 268435456
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %33, %14
  %41 = tail call ptr @Perl_amagic_call(ptr noundef %0, ptr noundef %1, i32 noundef 59, i32 noundef 0) #5
  br label %42

42:                                               ; preds = %21, %26, %33, %40
  %43 = phi ptr [ %41, %40 ], [ null, %33 ], [ null, %26 ], [ null, %21 ]
  %44 = icmp eq ptr %43, null
  br i1 %44, label %74, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.sv, ptr %43, i64 0, i32 2
  %47 = load i32, ptr %46, align 4, !tbaa !193
  %48 = and i32 %47, 256
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %45
  %51 = load ptr, ptr %43, align 8, !tbaa !208
  %52 = getelementptr inbounds %struct.xpviv, ptr %51, i64 0, i32 4
  %53 = load i64, ptr %52, align 8, !tbaa !181
  %54 = trunc i64 %53 to i32
  %55 = icmp ne i32 %54, 0
  %56 = sext i1 %55 to i32
  %57 = icmp slt i32 %54, 1
  %58 = select i1 %57, i32 %56, i32 1
  br label %76

59:                                               ; preds = %45
  %60 = and i32 %47, 2097664
  %61 = icmp eq i32 %60, 512
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load ptr, ptr %43, align 8, !tbaa !208
  %64 = getelementptr inbounds %struct.xpvnv, ptr %63, i64 0, i32 5
  %65 = load double, ptr %64, align 8, !tbaa !181
  br label %68

66:                                               ; preds = %59
  %67 = tail call double @Perl_sv_2nv_flags(ptr noundef nonnull %43, i32 noundef 2) #5
  br label %68

68:                                               ; preds = %66, %62
  %69 = phi double [ %65, %62 ], [ %67, %66 ]
  %70 = fcmp ogt double %69, 0.000000e+00
  %71 = fcmp une double %69, 0.000000e+00
  %72 = sext i1 %71 to i32
  %73 = select i1 %70, i32 1, i32 %72
  br label %76

74:                                               ; preds = %42
  %75 = tail call i32 @Perl_sv_cmp_flags(ptr noundef %0, ptr noundef %1, i32 noundef 2) #5
  br label %76

76:                                               ; preds = %74, %68, %50
  %77 = phi i32 [ %58, %50 ], [ %73, %68 ], [ %75, %74 ]
  ret i32 %77
}

declare i32 @Perl_sv_cmp(ptr noundef, ptr noundef) #3

declare ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #3

declare void @Perl_av_clear(ptr noundef) local_unnamed_addr #3

declare ptr @Perl_av_store(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #3

declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #3

declare void @Perl_pop_scope() local_unnamed_addr #3

declare ptr @Perl_safesysmalloc(i64 noundef) local_unnamed_addr #3

declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal i32 @cmp_desc(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !53 {
  %3 = load ptr, ptr @PL_sort_RealCmp, align 8, !tbaa !56
  %4 = tail call i32 %3(ptr noundef %0, ptr noundef %1) #5
  %5 = sub nsw i32 0, %4
  ret i32 %5
}

declare double @spec_rand() local_unnamed_addr #3

declare ptr @Perl_cvgv_from_hek(ptr noundef) local_unnamed_addr #3

declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @Perl_safesysrealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @Perl_markstack_grow() local_unnamed_addr #3

declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #3

declare zeroext i1 @Perl_ckwarn(i32 noundef) local_unnamed_addr #3

declare void @Perl_report_uninit(ptr noundef) local_unnamed_addr #3

declare ptr @Perl_amagic_call(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @Perl_sv_cmp_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!52}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 53336217263}
!8 = !{!"MaxCount", i64 1126593358}
!9 = !{!"MaxInternalCount", i64 1126593358}
!10 = !{!"MaxFunctionCount", i64 465576726}
!11 = !{!"NumCounts", i64 53216}
!12 = !{!"NumFunctions", i64 2490}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1126593358, i32 1}
!18 = !{i32 100000, i64 852534058, i32 6}
!19 = !{i32 200000, i64 504831111, i32 16}
!20 = !{i32 300000, i64 482068791, i32 26}
!21 = !{i32 400000, i64 459921484, i32 39}
!22 = !{i32 500000, i64 444801476, i32 50}
!23 = !{i32 600000, i64 426267029, i32 64}
!24 = !{i32 700000, i64 422040304, i32 74}
!25 = !{i32 800000, i64 220037356, i32 89}
!26 = !{i32 900000, i64 39885265, i32 162}
!27 = !{i32 950000, i64 20973884, i32 262}
!28 = !{i32 990000, i64 1545742, i32 632}
!29 = !{i32 999000, i64 97988, i32 1692}
!30 = !{i32 999900, i64 9981, i32 2885}
!31 = !{i32 999990, i64 671, i32 4392}
!32 = !{i32 999999, i64 57, i32 6648}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51}
!35 = !{ptr @Perl_sortsv_flags, ptr @Perl_safesysmalloc, i64 6271}
!36 = !{ptr @Perl_sortsv_flags, ptr @Perl_sv_cmp, i64 351435291}
!37 = !{ptr @Perl_sortsv_flags, ptr @S_sortcv, i64 296065}
!38 = !{ptr @Perl_sortsv_flags, ptr @Perl_safesysfree, i64 6271}
!39 = !{ptr @Perl_pp_sort, ptr @Perl_block_gimme, i64 6448}
!40 = !{ptr @Perl_pp_sort, ptr @Perl_push_scope, i64 19518}
!41 = !{ptr @Perl_pp_sort, ptr @Perl_save_vptr, i64 19518}
!42 = !{ptr @Perl_pp_sort, ptr @Perl_sv_2cv, i64 1012}
!43 = !{ptr @Perl_pp_sort, ptr @Perl_save_strlen, i64 128}
!44 = !{ptr @Perl_pp_sort, ptr @Perl_save_pushptr, i64 224}
!45 = !{ptr @Perl_pp_sort, ptr @Perl_save_generic_svref, i64 256}
!46 = !{ptr @Perl_pp_sort, ptr @Perl_gv_fetchpvn_flags, i64 256}
!47 = !{ptr @Perl_pp_sort, ptr @Perl_save_sptr, i64 256}
!48 = !{ptr @Perl_pp_sort, ptr @Perl_sortsv_flags, i64 18552}
!49 = !{ptr @Perl_pp_sort, ptr @Perl_leave_scope, i64 48}
!50 = !{ptr @Perl_pp_sort, ptr @Perl_pop_scope, i64 19518}
!51 = !{ptr @S_sortcv, ptr @Perl_leave_scope, i64 188894}
!52 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!53 = !{!"function_entry_count", i64 0}
!54 = !{!"function_entry_count", i64 18552}
!55 = !{!"branch_weights", i32 18552, i32 0}
!56 = !{!57, !57, i64 0}
!57 = !{!"any pointer", !58, i64 0}
!58 = !{!"omnipotent char", !59, i64 0}
!59 = !{!"Simple C/C++ TBAA"}
!60 = distinct !{!60, !61, !62}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!"llvm.loop.unroll.disable"}
!63 = distinct !{!63, !61, !62}
!64 = distinct !{!64, !61, !62}
!65 = distinct !{!65, !61, !62}
!66 = !{!67, !68, i64 0}
!67 = !{!"partition_stack_entry", !68, i64 0, !68, i64 4, !68, i64 8}
!68 = !{!"int", !58, i64 0}
!69 = !{!67, !68, i64 4}
!70 = !{!67, !68, i64 8}
!71 = distinct !{!71, !61, !62}
!72 = distinct !{!72, !61, !62}
!73 = distinct !{!73, !61, !62}
!74 = distinct !{!74, !62}
!75 = distinct !{!75, !61, !62}
!76 = distinct !{!76, !61, !62}
!77 = !{!"branch_weights", i32 0, i32 18552}
!78 = !{!"branch_weights", i32 12281, i32 6271}
!79 = !{!"VP", i32 0, i64 18552, i64 4255901253480947289, i64 18424, i64 -737559845122516748, i64 128}
!80 = !{!"branch_weights", i32 18551, i32 1}
!81 = !{!"branch_weights", i32 10325689, i32 18552}
!82 = !{!"VP", i32 0, i64 10325689, i64 4255901253480947289, i64 10311408, i64 -737559845122516748, i64 14281}
!83 = !{!"branch_weights", i32 5170336, i32 5155353}
!84 = distinct !{!84, !61, !62}
!85 = !{!"branch_weights", i32 19578, i32 5173898}
!86 = !{!"VP", i32 0, i64 25941, i64 4255901253480947289, i64 25309, i64 -737559845122516748, i64 632}
!87 = !{!"branch_weights", i32 6375, i32 19566}
!88 = !{!"branch_weights", i32 6363, i32 12}
!89 = distinct !{!89, !61, !62}
!90 = !{!"branch_weights", i32 19566, i32 12}
!91 = !{!"branch_weights", i32 31, i32 7}
!92 = !{!"VP", i32 0, i64 31, i64 -737559845122516748, i64 31}
!93 = !{!"branch_weights", i32 26, i32 5}
!94 = distinct !{!94, !61, !62}
!95 = !{!"branch_weights", i32 5586, i32 5187890}
!96 = !{!"branch_weights", i32 2764, i32 2822}
!97 = !{!"branch_weights", i32 1, i32 5585}
!98 = !{!"VP", i32 0, i64 1, i64 -737559845122516748, i64 1}
!99 = !{!"branch_weights", i32 1, i32 0}
!100 = !{!"branch_weights", i32 8079806, i32 7801192}
!101 = !{!"branch_weights", i32 3230, i32 2842}
!102 = distinct !{!102, !61, !62}
!103 = !{!"branch_weights", i32 5193475, i32 1}
!104 = !{!"branch_weights", i32 5182952, i32 5149302}
!105 = !{!"branch_weights", i32 5138779, i32 5193475}
!106 = distinct !{!106, !61, !62}
!107 = !{!"branch_weights", i32 5173904, i32 19572}
!108 = !{!"branch_weights", i32 9497, i32 5183979}
!109 = !{!"branch_weights", i32 19571, i32 5173905}
!110 = distinct !{!110, !61, !62}
!111 = !{!"branch_weights", i32 5155354, i32 18551}
!112 = distinct !{!112, !61, !62}
!113 = !{!114, !115, i64 8}
!114 = !{!"", !115, i64 0, !115, i64 8}
!115 = !{!"long", !58, i64 0}
!116 = !{!114, !115, i64 0}
!117 = !{!"branch_weights", i32 6179595, i32 18552}
!118 = !{!"branch_weights", i32 80821046, i32 6964194}
!119 = !{!"branch_weights", i32 10328784, i32 1}
!120 = !{!"VP", i32 0, i64 77456455, i64 4255901253480947289, i64 77391498, i64 -737559845122516748, i64 64957}
!121 = !{!"branch_weights", i32 39885265, i32 37571190}
!122 = !{!"branch_weights", i32 8563573, i32 1}
!123 = !{!"VP", i32 0, i64 131563975, i64 4255901253480947289, i64 131456804, i64 -737559845122516748, i64 107171}
!124 = !{!"branch_weights", i32 62671094, i32 6221787}
!125 = !{!"branch_weights", i32 13521, i32 8550053}
!126 = !{!"VP", i32 0, i64 13521, i64 4255901253480947289, i64 13018, i64 -737559845122516748, i64 503}
!127 = !{!"branch_weights", i32 3708, i32 9813}
!128 = !{!"branch_weights", i32 0, i32 62671094}
!129 = distinct !{!129, !62}
!130 = !{!"branch_weights", i32 123000402, i32 8563573}
!131 = !{!"branch_weights", i32 763216, i32 76693239}
!132 = !{!"VP", i32 0, i64 763216, i64 4255901253480947289, i64 762026, i64 -737559845122516748, i64 1190}
!133 = !{!"branch_weights", i32 245397, i32 517819}
!134 = !{!"branch_weights", i32 0, i32 763216}
!135 = distinct !{!135, !61, !62}
!136 = !{!"branch_weights", i32 37571190, i32 39885265}
!137 = !{!"branch_weights", i32 29025963, i32 37571190}
!138 = distinct !{!138, !61, !62}
!139 = !{!"branch_weights", i32 34102633, i32 39885265}
!140 = distinct !{!140, !61, !62}
!141 = !{!"branch_weights", i32 67127671, i32 10328784}
!142 = distinct !{!142, !61, !62}
!143 = !{!"branch_weights", i32 6964194, i32 3364591}
!144 = !{!"branch_weights", i32 1957094, i32 5007100}
!145 = !{!"branch_weights", i32 640477, i32 1957094}
!146 = distinct !{!146, !61, !62}
!147 = !{!"branch_weights", i32 1880131, i32 3364591}
!148 = distinct !{!148, !61, !62}
!149 = !{!"branch_weights", i32 18507, i32 10310278}
!150 = !{!"branch_weights", i32 4149190, i32 6161088}
!151 = distinct !{!151, !61, !62}
!152 = !{!"branch_weights", i32 6161088, i32 18507}
!153 = !{!"branch_weights", i32 6161088, i32 18552}
!154 = !{!"branch_weights", i32 0, i32 6161088}
!155 = distinct !{!155, !61, !62}
!156 = !{!"branch_weights", i32 2011943, i32 4167697}
!157 = !{!"branch_weights", i32 569996, i32 1441947}
!158 = !{!"branch_weights", i32 1442461, i32 1441947}
!159 = distinct !{!159, !61, !62}
!160 = !{!"branch_weights", i32 45, i32 569951}
!161 = !{!"branch_weights", i32 2267656, i32 1900041}
!162 = !{!"branch_weights", i32 6805733, i32 2267656}
!163 = distinct !{!163, !61, !62}
!164 = !{!"branch_weights", i32 0, i32 6179595, i32 18552}
!165 = distinct !{!165, !62}
!166 = !{!"function_entry_count", i64 19518}
!167 = !{!68, !68, i64 0}
!168 = !{!169, !58, i64 34}
!169 = !{!"op", !57, i64 0, !57, i64 8, !57, i64 16, !115, i64 24, !68, i64 32, !68, i64 33, !68, i64 33, !68, i64 33, !68, i64 33, !68, i64 33, !68, i64 33, !68, i64 33, !58, i64 34, !58, i64 35}
!170 = !{!"branch_weights", i32 6448, i32 13070}
!171 = !{!169, !57, i64 0}
!172 = !{!169, !58, i64 35}
!173 = !{!"branch_weights", i32 19518, i32 0}
!174 = !{!"branch_weights", i32 18426, i32 1092}
!175 = !{!"branch_weights", i32 1012, i32 80}
!176 = !{!177, !57, i64 40}
!177 = !{!"listop", !57, i64 0, !57, i64 8, !57, i64 16, !115, i64 24, !68, i64 32, !68, i64 33, !68, i64 33, !68, i64 33, !68, i64 33, !68, i64 33, !68, i64 33, !68, i64 33, !58, i64 34, !58, i64 35, !57, i64 40, !57, i64 48}
!178 = !{!169, !57, i64 8}
!179 = !{!"branch_weights", i32 0, i32 1012}
!180 = !{!"branch_weights", i32 1012, i32 0}
!181 = !{!58, !58, i64 0}
!182 = !{!183, !57, i64 0}
!183 = !{!"cv", !57, i64 0, !68, i64 8, !68, i64 12, !58, i64 16}
!184 = !{!185, !68, i64 92}
!185 = !{!"xpvcv", !57, i64 0, !58, i64 8, !115, i64 16, !58, i64 24, !57, i64 32, !58, i64 40, !58, i64 48, !58, i64 56, !57, i64 64, !58, i64 72, !57, i64 80, !68, i64 88, !68, i64 92, !68, i64 96}
!186 = !{!187, !57, i64 16}
!187 = !{!"gp", !57, i64 0, !57, i64 8, !57, i64 16, !68, i64 24, !68, i64 28, !57, i64 32, !57, i64 40, !57, i64 48, !57, i64 56, !68, i64 64, !68, i64 67, !57, i64 72}
!188 = !{!189, !57, i64 0}
!189 = !{!"gv", !57, i64 0, !68, i64 8, !68, i64 12, !58, i64 16}
!190 = !{!191, !68, i64 4}
!191 = !{!"hek", !68, i64 0, !68, i64 4, !58, i64 8}
!192 = !{!187, !68, i64 24}
!193 = !{!194, !68, i64 12}
!194 = !{!"sv", !57, i64 0, !68, i64 8, !68, i64 12, !58, i64 16}
!195 = !{!196, !57, i64 0}
!196 = !{!"av", !57, i64 0, !68, i64 8, !68, i64 12, !58, i64 16}
!197 = !{!198, !115, i64 16}
!198 = !{!"xpvav", !57, i64 0, !58, i64 8, !115, i64 16, !115, i64 24, !57, i64 32}
!199 = !{!196, !68, i64 12}
!200 = distinct !{!200, !61, !62}
!201 = !{!"branch_weights", i32 19517, i32 1}
!202 = !{!"branch_weights", i32 0, i32 20698945}
!203 = !{!"branch_weights", i32 29824, i32 20669121}
!204 = !{!"branch_weights", i32 29824, i32 0}
!205 = !{!"branch_weights", i32 20669121, i32 29824}
!206 = !{!"branch_weights", i32 20669121, i32 0}
!207 = !{!"branch_weights", i32 0, i32 20669121}
!208 = !{!194, !57, i64 0}
!209 = !{!210, !57, i64 0}
!210 = !{!"xpvmg", !57, i64 0, !58, i64 8, !115, i64 16, !58, i64 24, !58, i64 32, !58, i64 40}
!211 = !{!212, !68, i64 12}
!212 = !{!"hv", !57, i64 0, !68, i64 8, !68, i64 12, !58, i64 16}
!213 = !{!"branch_weights", i32 20679428, i32 19517}
!214 = distinct !{!214, !61, !62}
!215 = !{!"branch_weights", i32 18552, i32 966}
!216 = !{!"branch_weights", i32 18424, i32 128}
!217 = !{!218, !219, i64 212}
!218 = !{!"jmpenv", !58, i64 0, !57, i64 200, !68, i64 208, !219, i64 212}
!219 = !{!"_Bool", !58, i64 0}
!220 = !{i8 0, i8 2}
!221 = !{}
!222 = !{!115, !115, i64 0}
!223 = !{!224, !57, i64 24}
!224 = !{!"stackinfo", !57, i64 0, !57, i64 8, !57, i64 16, !57, i64 24, !68, i64 32, !68, i64 36, !68, i64 40, !68, i64 44}
!225 = !{!"branch_weights", i32 0, i32 128}
!226 = !{!224, !57, i64 16}
!227 = !{!224, !68, i64 40}
!228 = !{!224, !68, i64 32}
!229 = !{!224, !57, i64 0}
!230 = !{!198, !115, i64 24}
!231 = !{!194, !68, i64 8}
!232 = !{!224, !68, i64 36}
!233 = !{!"branch_weights", i32 128, i32 0}
!234 = !{!224, !57, i64 8}
!235 = !{!"branch_weights", i32 48, i32 80}
!236 = !{!"branch_weights", i32 48, i32 0}
!237 = !{!"branch_weights", i32 0, i32 48}
!238 = !{!239, !57, i64 8}
!239 = !{!"padlist", !115, i64 0, !57, i64 8, !68, i64 16, !68, i64 20}
!240 = !{!187, !57, i64 40}
!241 = !{!198, !57, i64 32}
!242 = !{!"branch_weights", i32 0, i32 18424}
!243 = !{!"branch_weights", i32 18424, i32 0}
!244 = !{!"branch_weights", i32 18548, i32 4}
!245 = !{!"branch_weights", i32 127, i32 1}
!246 = !{!"branch_weights", i32 103425, i32 127}
!247 = distinct !{!247, !61, !62}
!248 = distinct !{!248, !61, !62}
!249 = distinct !{!249, !61, !62}
!250 = distinct !{!250, !61, !62}
!251 = distinct !{!251, !61, !62}
!252 = !{!"function_entry_count", i64 188894}
!253 = !{!"pp_sort.c;S_sortcv"}
!254 = !{!187, !57, i64 0}
!255 = !{!"VP", i32 0, i64 188894, i64 -4908769839911734730, i64 188894}
!256 = !{!"branch_weights", i32 188894, i32 0}
!257 = !{!"branch_weights", i32 0, i32 188894}
!258 = !{!"branch_weights", i32 0, i32 1}
!259 = distinct !{!259, !61, !62}
!260 = !{i32 -1, i32 2}
