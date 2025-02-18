; ModuleID = 'blender/source/blender/editors/space_nla/nla_draw.c'
source_filename = "blender/source/blender/editors/space_nla/nla_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.AnimData = type { ptr, ptr, ptr, %struct.ListBase, ptr, %struct.ListBase, %struct.ListBase, i32, i32, i16, i16, float }
%struct.DLRBT_Tree = type { ptr, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.bAnimContext = type { ptr, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SpaceNla = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], i16, i16, i32, ptr, %struct.View2D }
%struct.bAnimListElem = type { ptr, ptr, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr }
%struct.NlaTrack = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8] }
%struct.NlaStrip = type { ptr, ptr, %struct.ListBase, ptr, ptr, %struct.ListBase, %struct.ListBase, [64 x i8], float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, ptr, i32, i32 }
%struct.ActKeyColumn = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i16, float, i16, i16 }

@U = external local_unnamed_addr global %struct.UserDef, align 8
@__func__.draw_nla_channel_list = private unnamed_addr constant [22 x i8] c"draw_nla_channel_list\00", align 1
@.str = private unnamed_addr constant [10 x i8] c"influence\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"%d) Temp-Meta\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%.1f\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @nla_action_get_color(ptr noundef readonly %0, ptr noundef readnone %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = and i32 %7, 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %5, %3
  %11 = icmp eq ptr %1, null
  %12 = select i1 %11, i32 166, i32 165
  br label %13

13:                                               ; preds = %10, %5
  %14 = phi i32 [ 167, %5 ], [ %12, %10 ]
  tail call void @UI_GetThemeColor4fv(i32 noundef %14, ptr noundef %2) #5
  br i1 %4, label %24, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 7
  %17 = load i32, ptr %16, align 8, !tbaa !34
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds float, ptr %2, i64 3
  %22 = load float, ptr %21, align 4, !tbaa !43
  %23 = fmul float %22, 0x3FC3333340000000
  store float %23, ptr %21, align 4, !tbaa !43
  br label %24

24:                                               ; preds = %20, %15, %13
  ret void
}

declare void @UI_GetThemeColor4fv(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @draw_nla_main_data(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.DLRBT_Tree, align 8
  %5 = alloca float, align 4
  %6 = alloca [4 x float], align 16
  %7 = alloca [4 x i8], align 4
  %8 = alloca [32 x i8], align 16
  %9 = alloca [256 x i8], align 16
  %10 = alloca [4 x i8], align 1
  %11 = alloca %struct.rctf, align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca %struct.ListBase, align 8
  %14 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  %15 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2
  %16 = load ptr, ptr %0, align 8, !tbaa !44
  %17 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %18 = load i16, ptr %17, align 8, !tbaa !46
  %19 = sext i16 %18 to i32
  %20 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %13, i32 noundef 11, ptr noundef %16, i32 noundef %19) #5
  %21 = uitofp i64 %20 to float
  %22 = icmp eq ptr %1, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.SpaceNla, ptr %1, i64 0, i32 7
  %25 = load i16, ptr %24, align 2, !tbaa !47
  %26 = and i16 %25, 32
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %3
  br label %29

29:                                               ; preds = %23, %28
  %30 = phi float [ 0x3FF3333340000000, %28 ], [ 0x3FE99999A0000000, %23 ]
  %31 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %32 = sitofp i16 %31 to float
  %33 = fmul float %30, %32
  %34 = sitofp i16 %31 to float
  %35 = call float @llvm.fmuladd.f32(float %34, float 0x3FB99999A0000000, float %33)
  br i1 %22, label %41, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.SpaceNla, ptr %1, i64 0, i32 7
  %38 = load i16, ptr %37, align 2, !tbaa !47
  %39 = and i16 %38, 32
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36, %29
  br label %42

42:                                               ; preds = %36, %41
  %43 = phi float [ 0x3FF3333340000000, %41 ], [ 0x3FE99999A0000000, %36 ]
  %44 = fmul float %43, %34
  %45 = fmul float %44, 2.000000e+00
  %46 = call float @llvm.fmuladd.f32(float %21, float %35, float %45)
  %47 = fptosi float %46 to i32
  %48 = sub nsw i32 0, %47
  %49 = sitofp i32 %48 to float
  %50 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 0, i32 2
  store float %49, ptr %50, align 8, !tbaa !56
  br i1 %22, label %56, label %51

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.SpaceNla, ptr %1, i64 0, i32 7
  %53 = load i16, ptr %52, align 2, !tbaa !47
  %54 = and i16 %53, 32
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51, %42
  br label %57

57:                                               ; preds = %51, %56
  %58 = phi float [ 0x3FF3333340000000, %56 ], [ 0x3FE99999A0000000, %51 ]
  %59 = load ptr, ptr %13, align 8, !tbaa !57
  %60 = icmp eq ptr %59, null
  br i1 %60, label %591, label %61

61:                                               ; preds = %57
  %62 = fneg float %58
  %63 = fmul float %62, %34
  %64 = getelementptr inbounds %struct.SpaceNla, ptr %1, i64 0, i32 7
  %65 = getelementptr inbounds %struct.SpaceNla, ptr %1, i64 0, i32 7
  %66 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1
  %67 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 2
  %68 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 3
  %69 = getelementptr inbounds float, ptr %14, i64 3
  %70 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 1
  %71 = getelementptr inbounds float, ptr %6, i64 3
  %72 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 3
  %73 = getelementptr inbounds %struct.DLRBT_Tree, ptr %4, i64 0, i32 1
  %74 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 1
  %75 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 1
  %76 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 2
  %77 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 1
  %78 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 2
  %79 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 1
  %80 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 2
  %81 = getelementptr inbounds %struct.SpaceNla, ptr %1, i64 0, i32 7
  %82 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 2
  %83 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 1
  %84 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 2
  %85 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 1
  %86 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 3
  %87 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 3
  %88 = getelementptr inbounds %struct.rctf, ptr %11, i64 0, i32 2
  %89 = getelementptr inbounds %struct.rctf, ptr %11, i64 0, i32 1
  %90 = getelementptr inbounds %struct.rctf, ptr %11, i64 0, i32 3
  %91 = getelementptr inbounds %struct.SpaceNla, ptr %1, i64 0, i32 7
  br label %92

92:                                               ; preds = %61, %581
  %93 = phi ptr [ %59, %61 ], [ %589, %581 ]
  %94 = phi float [ %63, %61 ], [ %588, %581 ]
  br i1 %22, label %99, label %95

95:                                               ; preds = %92
  %96 = load i16, ptr %64, align 2, !tbaa !47
  %97 = and i16 %96, 32
  %98 = icmp eq i16 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %95, %92
  br label %100

100:                                              ; preds = %95, %99
  %101 = phi float [ 0x3FE3333340000000, %99 ], [ 0x3FD99999A0000000, %95 ]
  %102 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %103 = sitofp i16 %102 to float
  %104 = fmul float %101, %103
  %105 = fsub float %94, %104
  br i1 %22, label %110, label %106

106:                                              ; preds = %100
  %107 = load i16, ptr %65, align 2, !tbaa !47
  %108 = and i16 %107, 32
  %109 = icmp eq i16 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %106, %100
  br label %111

111:                                              ; preds = %106, %110
  %112 = phi float [ 0x3FE3333340000000, %110 ], [ 0x3FD99999A0000000, %106 ]
  %113 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %114 = sitofp i16 %113 to float
  %115 = fmul float %112, %114
  %116 = fadd float %94, %115
  %117 = load float, ptr %67, align 8, !tbaa !58
  %118 = load float, ptr %68, align 4, !tbaa !59
  %119 = fcmp olt float %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %111
  %121 = fcmp olt float %117, %105
  %122 = fcmp olt float %105, %118
  %123 = and i1 %121, %122
  br i1 %123, label %137, label %128

124:                                              ; preds = %111
  %125 = fcmp olt float %118, %105
  %126 = fcmp olt float %105, %117
  %127 = and i1 %126, %125
  br i1 %127, label %137, label %128

128:                                              ; preds = %124, %120
  br i1 %119, label %129, label %133

129:                                              ; preds = %128
  %130 = fcmp olt float %117, %116
  %131 = fcmp olt float %116, %118
  %132 = and i1 %130, %131
  br i1 %132, label %137, label %575

133:                                              ; preds = %128
  %134 = fcmp olt float %118, %116
  %135 = fcmp olt float %116, %117
  %136 = and i1 %135, %134
  br i1 %136, label %137, label %575

137:                                              ; preds = %133, %129, %124, %120
  %138 = getelementptr inbounds %struct.bAnimListElem, ptr %93, i64 0, i32 3
  %139 = load i32, ptr %138, align 8, !tbaa !60
  switch i32 %139, label %575 [
    i32 30, label %140
    i32 31, label %473
  ]

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.bAnimListElem, ptr %93, i64 0, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !62
  %143 = getelementptr inbounds %struct.NlaTrack, ptr %142, i64 0, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !57
  %145 = icmp eq ptr %144, null
  br i1 %145, label %575, label %146

146:                                              ; preds = %140
  %147 = getelementptr inbounds %struct.bAnimListElem, ptr %93, i64 0, i32 10
  %148 = load ptr, ptr %147, align 8, !tbaa !63
  %149 = icmp eq ptr %148, null
  %150 = getelementptr inbounds %struct.AnimData, ptr %148, i64 0, i32 7
  %151 = getelementptr inbounds %struct.NlaTrack, ptr %142, i64 0, i32 3
  %152 = icmp ne ptr %148, null
  %153 = getelementptr inbounds %struct.AnimData, ptr %148, i64 0, i32 7
  %154 = fsub float %116, %105
  %155 = fadd float %105, 4.000000e+00
  %156 = fadd float %116, -4.000000e+00
  %157 = fsub float %116, %105
  %158 = fmul float %157, 5.000000e-01
  %159 = fadd float %105, %158
  %160 = getelementptr inbounds %struct.AnimData, ptr %148, i64 0, i32 7
  %161 = getelementptr inbounds %struct.NlaTrack, ptr %142, i64 0, i32 3
  %162 = fadd float %116, 1.000000e+00
  br label %163

163:                                              ; preds = %146, %469
  %164 = phi ptr [ %144, %146 ], [ %471, %469 ]
  %165 = phi i32 [ 1, %146 ], [ %470, %469 ]
  %166 = load float, ptr %66, align 8, !tbaa !64
  %167 = load float, ptr %74, align 4, !tbaa !65
  %168 = call zeroext i8 @BKE_nlastrip_within_bounds(ptr noundef nonnull %164, float noundef %166, float noundef %167) #5
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %469, label %170

170:                                              ; preds = %163
  br i1 %149, label %179, label %171

171:                                              ; preds = %170
  %172 = load i32, ptr %150, align 8, !tbaa !34
  %173 = and i32 %172, 1
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %179, label %175

175:                                              ; preds = %171
  %176 = load i32, ptr %151, align 8, !tbaa !66
  %177 = and i32 %176, 8
  %178 = icmp eq i32 %177, 0
  br label %179

179:                                              ; preds = %175, %171, %170
  %180 = phi i1 [ false, %171 ], [ false, %170 ], [ %178, %175 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #5
  %181 = getelementptr inbounds %struct.NlaStrip, ptr %164, i64 0, i32 21
  %182 = load i16, ptr %181, align 2, !tbaa !68
  %183 = getelementptr inbounds %struct.NlaStrip, ptr %164, i64 0, i32 23
  %184 = load i32, ptr %183, align 8, !tbaa !70
  switch i16 %182, label %197 [
    i16 1, label %185
    i16 2, label %189
    i16 3, label %193
  ]

185:                                              ; preds = %179
  %186 = and i32 %184, 2
  %187 = icmp eq i32 %186, 0
  %188 = select i1 %187, i32 169, i32 170
  br label %212

189:                                              ; preds = %179
  %190 = and i32 %184, 2
  %191 = icmp eq i32 %190, 0
  %192 = select i1 %191, i32 171, i32 172
  br label %212

193:                                              ; preds = %179
  %194 = and i32 %184, 2
  %195 = icmp eq i32 %194, 0
  %196 = select i1 %195, i32 173, i32 174
  br label %212

197:                                              ; preds = %179
  %198 = and i32 %184, 1
  %199 = icmp ne i32 %198, 0
  %200 = and i1 %152, %199
  br i1 %200, label %201, label %205

201:                                              ; preds = %197
  %202 = load i32, ptr %153, align 8, !tbaa !34
  %203 = and i32 %202, 4
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %212

205:                                              ; preds = %201, %197
  %206 = and i32 %184, 16
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %205
  %209 = and i32 %184, 2
  %210 = icmp eq i32 %209, 0
  %211 = select i1 %210, i32 77, i32 78
  br label %212

212:                                              ; preds = %208, %205, %201, %193, %189, %185
  %213 = phi i32 [ %188, %185 ], [ %192, %189 ], [ %196, %193 ], [ 167, %201 ], [ 168, %205 ], [ %211, %208 ]
  call void @UI_GetThemeColor3fv(i32 noundef %213, ptr noundef nonnull %12) #5
  %214 = getelementptr inbounds %struct.NlaStrip, ptr %164, i64 0, i32 19
  %215 = load i16, ptr %214, align 2, !tbaa !71
  %216 = icmp eq i16 %215, 2
  %217 = select i1 %216, i1 true, i1 %180
  br i1 %217, label %264, label %218

218:                                              ; preds = %212
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #5
  call void @glEnable(i32 noundef 3042) #5
  %219 = load i16, ptr %214, align 2, !tbaa !71
  switch i16 %219, label %263 [
    i16 0, label %220
    i16 1, label %233
  ]

220:                                              ; preds = %218
  %221 = getelementptr inbounds %struct.NlaStrip, ptr %164, i64 0, i32 1
  %222 = load ptr, ptr %221, align 8, !tbaa !72
  %223 = icmp eq ptr %222, null
  br i1 %223, label %224, label %233

224:                                              ; preds = %220
  %225 = load float, ptr %12, align 4, !tbaa !43
  %226 = load float, ptr %75, align 4, !tbaa !43
  %227 = load float, ptr %76, align 4, !tbaa !43
  call void @glColor4f(float noundef %225, float noundef %226, float noundef %227, float noundef 0x3FC3333340000000) #5
  call void @glBegin(i32 noundef 7) #5
  %228 = load float, ptr %66, align 8, !tbaa !64
  call void @glVertex2f(float noundef %228, float noundef %105) #5
  %229 = load float, ptr %66, align 8, !tbaa !64
  call void @glVertex2f(float noundef %229, float noundef %116) #5
  %230 = getelementptr inbounds %struct.NlaStrip, ptr %164, i64 0, i32 10
  %231 = load float, ptr %230, align 8, !tbaa !73
  call void @glVertex2f(float noundef %231, float noundef %116) #5
  %232 = load float, ptr %230, align 8, !tbaa !73
  call void @glVertex2f(float noundef %232, float noundef %105) #5
  call void @glEnd() #5
  br label %233

233:                                              ; preds = %224, %220, %218
  %234 = load ptr, ptr %164, align 8, !tbaa !74
  %235 = icmp eq ptr %234, null
  br i1 %235, label %244, label %236

236:                                              ; preds = %233
  %237 = getelementptr inbounds %struct.NlaStrip, ptr %234, i64 0, i32 10
  %238 = load float, ptr %237, align 8, !tbaa !73
  %239 = getelementptr inbounds %struct.NlaStrip, ptr %164, i64 0, i32 11
  %240 = load float, ptr %239, align 4, !tbaa !75
  %241 = fsub float %238, %240
  %242 = call float @llvm.fabs.f32(float %241)
  %243 = fcmp ult float %242, 0x3E80000000000000
  br i1 %243, label %263, label %244

244:                                              ; preds = %236, %233
  %245 = load float, ptr %12, align 4, !tbaa !43
  %246 = load float, ptr %77, align 4, !tbaa !43
  %247 = load float, ptr %78, align 4, !tbaa !43
  call void @glColor4f(float noundef %245, float noundef %246, float noundef %247, float noundef 0x3FD3333340000000) #5
  call void @glBegin(i32 noundef 7) #5
  %248 = getelementptr inbounds %struct.NlaStrip, ptr %164, i64 0, i32 11
  %249 = load float, ptr %248, align 4, !tbaa !75
  call void @glVertex2f(float noundef %249, float noundef %105) #5
  %250 = load float, ptr %248, align 4, !tbaa !75
  call void @glVertex2f(float noundef %250, float noundef %116) #5
  %251 = load ptr, ptr %164, align 8, !tbaa !74
  %252 = icmp eq ptr %251, null
  br i1 %252, label %258, label %253

253:                                              ; preds = %244
  %254 = getelementptr inbounds %struct.NlaStrip, ptr %251, i64 0, i32 10
  %255 = load float, ptr %254, align 8, !tbaa !73
  call void @glVertex2f(float noundef %255, float noundef %116) #5
  %256 = load ptr, ptr %164, align 8, !tbaa !74
  %257 = getelementptr inbounds %struct.NlaStrip, ptr %256, i64 0, i32 10
  br label %260

258:                                              ; preds = %244
  %259 = load float, ptr %74, align 4, !tbaa !65
  call void @glVertex2f(float noundef %259, float noundef %116) #5
  br label %260

260:                                              ; preds = %258, %253
  %261 = phi ptr [ %74, %258 ], [ %257, %253 ]
  %262 = load float, ptr %261, align 4, !tbaa !43
  call void @glVertex2f(float noundef %262, float noundef %105) #5
  call void @glEnd() #5
  br label %263

263:                                              ; preds = %260, %236, %218
  call void @glDisable(i32 noundef 3042) #5
  br label %264

264:                                              ; preds = %263, %212
  br i1 %180, label %270, label %265

265:                                              ; preds = %264
  call void @glColor3fv(ptr noundef nonnull %12) #5
  call void @uiSetRoundBox(i32 noundef 15) #5
  %266 = getelementptr inbounds %struct.NlaStrip, ptr %164, i64 0, i32 10
  %267 = load float, ptr %266, align 8, !tbaa !73
  %268 = getelementptr inbounds %struct.NlaStrip, ptr %164, i64 0, i32 11
  %269 = load float, ptr %268, align 4, !tbaa !75
  call void @uiDrawBoxShade(i32 noundef 9, float noundef %267, float noundef %105, float noundef %269, float noundef %116, float noundef 0.000000e+00, float noundef 5.000000e-01, float noundef 0x3FB99999A0000000) #5
  br label %278

270:                                              ; preds = %264
  %271 = load float, ptr %12, align 4, !tbaa !43
  %272 = load float, ptr %79, align 4, !tbaa !43
  %273 = load float, ptr %80, align 4, !tbaa !43
  call void @glColor4f(float noundef %271, float noundef %272, float noundef %273, float noundef 0x3FB99999A0000000) #5
  call void @glEnable(i32 noundef 3042) #5
  %274 = getelementptr inbounds %struct.NlaStrip, ptr %164, i64 0, i32 10
  %275 = load float, ptr %274, align 8, !tbaa !73
  %276 = getelementptr inbounds %struct.NlaStrip, ptr %164, i64 0, i32 11
  %277 = load float, ptr %276, align 4, !tbaa !75
  call void @glRectf(float noundef %275, float noundef %105, float noundef %277, float noundef %116) #5
  call void @glDisable(i32 noundef 3042) #5
  br label %278

278:                                              ; preds = %270, %265
  %279 = load i16, ptr %81, align 2, !tbaa !47
  %280 = and i16 %279, 32
  %281 = icmp eq i16 %280, 0
  br i1 %281, label %282, label %337

282:                                              ; preds = %278
  call void @glColor3f(float noundef 0x3FE6666660000000, float noundef 0x3FE6666660000000, float noundef 0x3FE6666660000000) #5
  call void @glEnable(i32 noundef 2848) #5
  call void @glEnable(i32 noundef 3042) #5
  %283 = getelementptr inbounds %struct.NlaStrip, ptr %164, i64 0, i32 23
  %284 = load i32, ptr %283, align 8, !tbaa !70
  %285 = and i32 %284, 32
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %302, label %287

287:                                              ; preds = %282
  %288 = getelementptr inbounds %struct.NlaStrip, ptr %164, i64 0, i32 5
  %289 = call ptr @list_find_fcurve(ptr noundef nonnull %288, ptr noundef nonnull @.str, i32 noundef 0) #5
  call void @glBegin(i32 noundef 3) #5
  %290 = getelementptr inbounds %struct.NlaStrip, ptr %164, i64 0, i32 10
  %291 = load float, ptr %290, align 8, !tbaa !73
  %292 = getelementptr inbounds %struct.NlaStrip, ptr %164, i64 0, i32 11
  %293 = load float, ptr %292, align 4, !tbaa !75
  %294 = fcmp ugt float %291, %293
  br i1 %294, label %335, label %295

295:                                              ; preds = %287, %295
  %296 = phi float [ %299, %295 ], [ %291, %287 ]
  %297 = call float @evaluate_fcurve(ptr noundef %289, float noundef %296) #5
  %298 = call float @llvm.fmuladd.f32(float %297, float %154, float %105)
  call void @glVertex2f(float noundef %296, float noundef %298) #5
  %299 = fadd float %296, 1.000000e+00
  %300 = load float, ptr %292, align 4, !tbaa !75
  %301 = fcmp ugt float %299, %300
  br i1 %301, label %335, label %295, !llvm.loop !76

302:                                              ; preds = %282
  %303 = getelementptr inbounds %struct.NlaStrip, ptr %164, i64 0, i32 16
  %304 = load float, ptr %303, align 8, !tbaa !79
  %305 = call float @llvm.fabs.f32(float %304)
  %306 = fcmp ult float %305, 0x3E80000000000000
  br i1 %306, label %307, label %312

307:                                              ; preds = %302
  %308 = getelementptr inbounds %struct.NlaStrip, ptr %164, i64 0, i32 17
  %309 = load float, ptr %308, align 4, !tbaa !80
  %310 = call float @llvm.fabs.f32(float %309)
  %311 = fcmp ult float %310, 0x3E80000000000000
  br i1 %311, label %336, label %312

312:                                              ; preds = %307, %302
  call void @glBegin(i32 noundef 3) #5
  %313 = load float, ptr %303, align 8, !tbaa !79
  %314 = call float @llvm.fabs.f32(float %313)
  %315 = fcmp ult float %314, 0x3E80000000000000
  %316 = getelementptr inbounds %struct.NlaStrip, ptr %164, i64 0, i32 10
  %317 = load float, ptr %316, align 8, !tbaa !73
  br i1 %315, label %322, label %318

318:                                              ; preds = %312
  call void @glVertex2f(float noundef %317, float noundef %105) #5
  %319 = load float, ptr %316, align 8, !tbaa !73
  %320 = load float, ptr %303, align 8, !tbaa !79
  %321 = fadd float %319, %320
  br label %322

322:                                              ; preds = %312, %318
  %323 = phi float [ %321, %318 ], [ %317, %312 ]
  call void @glVertex2f(float noundef %323, float noundef %116) #5
  %324 = getelementptr inbounds %struct.NlaStrip, ptr %164, i64 0, i32 17
  %325 = load float, ptr %324, align 4, !tbaa !80
  %326 = call float @llvm.fabs.f32(float %325)
  %327 = fcmp ult float %326, 0x3E80000000000000
  %328 = getelementptr inbounds %struct.NlaStrip, ptr %164, i64 0, i32 11
  br i1 %327, label %332, label %329

329:                                              ; preds = %322
  %330 = load float, ptr %328, align 4, !tbaa !75
  %331 = fsub float %330, %325
  call void @glVertex2f(float noundef %331, float noundef %116) #5
  br label %332

332:                                              ; preds = %322, %329
  %333 = phi float [ %105, %329 ], [ %116, %322 ]
  %334 = load float, ptr %328, align 4, !tbaa !75
  call void @glVertex2f(float noundef %334, float noundef %333) #5
  br label %335

335:                                              ; preds = %295, %287, %332
  call void @glEnd() #5
  br label %336

336:                                              ; preds = %335, %307
  call void @glDisable(i32 noundef 2848) #5
  call void @glDisable(i32 noundef 3042) #5
  br label %337

337:                                              ; preds = %336, %278
  %338 = getelementptr inbounds %struct.NlaStrip, ptr %164, i64 0, i32 23
  %339 = load i32, ptr %338, align 8, !tbaa !70
  %340 = and i32 %339, 1
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %343, label %342

342:                                              ; preds = %337
  call void @glColor3f(float noundef 0x3FECCCCCC0000000, float noundef 1.000000e+00, float noundef 0x3FECCCCCC0000000) #5
  br label %344

343:                                              ; preds = %337
  call void @glColor3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #5
  br label %344

344:                                              ; preds = %343, %342
  %345 = load i32, ptr %338, align 8, !tbaa !70
  %346 = and i32 %345, 4096
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %349, label %348

348:                                              ; preds = %344
  call void @setlinestyle(i32 noundef 4) #5
  br label %349

349:                                              ; preds = %348, %344
  %350 = getelementptr inbounds %struct.NlaStrip, ptr %164, i64 0, i32 10
  %351 = load float, ptr %350, align 8, !tbaa !73
  %352 = getelementptr inbounds %struct.NlaStrip, ptr %164, i64 0, i32 11
  %353 = load float, ptr %352, align 4, !tbaa !75
  call void @uiDrawBoxShade(i32 noundef 2, float noundef %351, float noundef %105, float noundef %353, float noundef %116, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0x3FB99999A0000000) #5
  %354 = load i16, ptr %181, align 2, !tbaa !68
  switch i16 %354, label %418 [
    i16 0, label %355
    i16 2, label %387
  ]

355:                                              ; preds = %349
  %356 = getelementptr inbounds %struct.NlaStrip, ptr %164, i64 0, i32 14
  %357 = load float, ptr %356, align 8, !tbaa !81
  %358 = fadd float %357, -1.000000e+00
  %359 = call float @llvm.fabs.f32(float %358)
  %360 = fcmp ult float %359, 0x3E80000000000000
  br i1 %360, label %385, label %361

361:                                              ; preds = %355
  %362 = getelementptr inbounds %struct.NlaStrip, ptr %164, i64 0, i32 13
  %363 = load float, ptr %362, align 4, !tbaa !82
  %364 = getelementptr inbounds %struct.NlaStrip, ptr %164, i64 0, i32 12
  %365 = load float, ptr %364, align 8, !tbaa !83
  %366 = fsub float %363, %365
  %367 = getelementptr inbounds %struct.NlaStrip, ptr %164, i64 0, i32 15
  %368 = load float, ptr %367, align 4, !tbaa !84
  %369 = fmul float %366, %368
  %370 = load float, ptr %356, align 8, !tbaa !81
  %371 = fcmp ogt float %370, 1.000000e+00
  br i1 %371, label %372, label %418

372:                                              ; preds = %361, %380
  %373 = phi float [ %382, %380 ], [ 1.000000e+00, %361 ]
  %374 = phi i32 [ %381, %380 ], [ 1, %361 ]
  %375 = load float, ptr %350, align 8, !tbaa !73
  %376 = call float @llvm.fmuladd.f32(float %369, float %373, float %375)
  %377 = load float, ptr %352, align 4, !tbaa !75
  %378 = fcmp olt float %376, %377
  br i1 %378, label %379, label %380

379:                                              ; preds = %372
  call void @fdrawline(float noundef %376, float noundef %155, float noundef %376, float noundef %156) #5
  br label %380

380:                                              ; preds = %379, %372
  %381 = add nuw nsw i32 %374, 1
  %382 = sitofp i32 %381 to float
  %383 = load float, ptr %356, align 8, !tbaa !81
  %384 = fcmp ogt float %383, %382
  br i1 %384, label %372, label %418, !llvm.loop !85

385:                                              ; preds = %355
  %386 = icmp eq i16 %354, 2
  br i1 %386, label %387, label %418

387:                                              ; preds = %349, %385
  %388 = getelementptr inbounds %struct.NlaStrip, ptr %164, i64 0, i32 2
  %389 = load ptr, ptr %388, align 8, !tbaa !86
  %390 = getelementptr inbounds %struct.NlaStrip, ptr %164, i64 0, i32 2, i32 1
  %391 = load ptr, ptr %390, align 8, !tbaa !87
  %392 = icmp eq ptr %389, %391
  %393 = icmp eq ptr %389, null
  %394 = or i1 %392, %393
  br i1 %394, label %418, label %395

395:                                              ; preds = %387, %415
  %396 = phi ptr [ %416, %415 ], [ %389, %387 ]
  %397 = getelementptr inbounds %struct.NlaStrip, ptr %396, i64 0, i32 1
  %398 = load ptr, ptr %397, align 8, !tbaa !72
  %399 = icmp eq ptr %398, null
  br i1 %399, label %409, label %400

400:                                              ; preds = %395
  %401 = getelementptr inbounds %struct.NlaStrip, ptr %398, i64 0, i32 11
  %402 = load float, ptr %401, align 4, !tbaa !75
  %403 = getelementptr inbounds %struct.NlaStrip, ptr %396, i64 0, i32 10
  %404 = load float, ptr %403, align 8, !tbaa !73
  %405 = fsub float %402, %404
  %406 = call float @llvm.fabs.f32(float %405)
  %407 = fcmp ult float %406, 0x3E80000000000000
  br i1 %407, label %409, label %408

408:                                              ; preds = %400
  call void @fdrawline(float noundef %404, float noundef %159, float noundef %404, float noundef %116) #5
  br label %409

409:                                              ; preds = %408, %400, %395
  %410 = load ptr, ptr %396, align 8, !tbaa !74
  %411 = icmp eq ptr %410, null
  br i1 %411, label %415, label %412

412:                                              ; preds = %409
  %413 = getelementptr inbounds %struct.NlaStrip, ptr %396, i64 0, i32 11
  %414 = load float, ptr %413, align 4, !tbaa !75
  call void @fdrawline(float noundef %414, float noundef %105, float noundef %414, float noundef %159) #5
  br label %415

415:                                              ; preds = %412, %409
  %416 = load ptr, ptr %396, align 8, !tbaa !74
  %417 = icmp eq ptr %416, null
  br i1 %417, label %418, label %395, !llvm.loop !88

418:                                              ; preds = %380, %415, %361, %349, %385, %387
  call void @setlinestyle(i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #5
  br i1 %149, label %427, label %419

419:                                              ; preds = %418
  %420 = load i32, ptr %160, align 8, !tbaa !34
  %421 = and i32 %420, 1
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %427, label %423

423:                                              ; preds = %419
  %424 = load i32, ptr %161, align 8, !tbaa !66
  %425 = and i32 %424, 8
  %426 = icmp ne i32 %425, 0
  br label %427

427:                                              ; preds = %423, %419, %418
  %428 = phi i1 [ true, %419 ], [ true, %418 ], [ %426, %423 ]
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %9) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #5
  %429 = load i32, ptr %338, align 8, !tbaa !70
  %430 = and i32 %429, 1073741824
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %434, label %432

432:                                              ; preds = %427
  %433 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %9, i64 noundef 256, ptr noundef nonnull @.str.1, i32 noundef %165) #5
  br label %437

434:                                              ; preds = %427
  %435 = getelementptr inbounds %struct.NlaStrip, ptr %164, i64 0, i32 7
  %436 = call i64 @BLI_strncpy_rlen(ptr noundef nonnull %9, ptr noundef nonnull %435, i64 noundef 256) #5
  br label %437

437:                                              ; preds = %434, %432
  %438 = phi i64 [ %433, %432 ], [ %436, %434 ]
  %439 = load i32, ptr %338, align 8, !tbaa !70
  %440 = and i32 %439, 19
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %443, label %442

442:                                              ; preds = %437
  store i8 0, ptr %82, align 1, !tbaa !89
  store i8 0, ptr %83, align 1, !tbaa !89
  br label %444

443:                                              ; preds = %437
  store i8 -1, ptr %84, align 1, !tbaa !89
  store i8 -1, ptr %85, align 1, !tbaa !89
  br label %444

444:                                              ; preds = %443, %442
  %445 = phi i8 [ -1, %443 ], [ 0, %442 ]
  store i8 %445, ptr %10, align 1, !tbaa !89
  br i1 %428, label %446, label %447

446:                                              ; preds = %444
  store i8 -1, ptr %87, align 1, !tbaa !89
  br label %448

447:                                              ; preds = %444
  store i8 -128, ptr %86, align 1, !tbaa !89
  br label %448

448:                                              ; preds = %446, %447
  %449 = load float, ptr %352, align 4, !tbaa !75
  %450 = load float, ptr %350, align 8, !tbaa !73
  %451 = fsub float %449, %450
  %452 = fcmp ugt float %451, 5.000000e+00
  %453 = select i1 %452, float 1.000000e+00, float 5.000000e-01
  %454 = fadd float %450, %453
  store float %454, ptr %11, align 4, !tbaa !90
  store float %105, ptr %88, align 4, !tbaa !91
  %455 = fsub float %449, %453
  store float %455, ptr %89, align 4, !tbaa !92
  store float %116, ptr %90, align 4, !tbaa !93
  call void @UI_view2d_text_cache_add_rectf(ptr noundef nonnull %15, ptr noundef nonnull %11, ptr noundef nonnull %9, i64 noundef %438, ptr noundef nonnull %10) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #5
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %9) #5
  %456 = load i32, ptr %338, align 8, !tbaa !70
  %457 = and i32 %456, 1073741824
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %469, label %459

459:                                              ; preds = %448
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #5
  store i32 -2302756, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #5
  %460 = load float, ptr %350, align 8, !tbaa !73
  %461 = fpext float %460 to double
  %462 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %8, i64 noundef 32, ptr noundef nonnull @.str.2, double noundef %461) #5
  %463 = load float, ptr %350, align 8, !tbaa !73
  %464 = fadd float %463, -1.000000e+00
  call void @UI_view2d_text_cache_add(ptr noundef nonnull %15, float noundef %464, float noundef %162, ptr noundef nonnull %8, i64 noundef %462, ptr noundef nonnull %7) #5
  %465 = load float, ptr %352, align 4, !tbaa !75
  %466 = fpext float %465 to double
  %467 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %8, i64 noundef 32, ptr noundef nonnull @.str.2, double noundef %466) #5
  %468 = load float, ptr %352, align 4, !tbaa !75
  call void @UI_view2d_text_cache_add(ptr noundef nonnull %15, float noundef %468, float noundef %162, ptr noundef nonnull %8, i64 noundef %467, ptr noundef nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #5
  br label %469

469:                                              ; preds = %163, %459, %448
  %470 = add nuw nsw i32 %165, 1
  %471 = load ptr, ptr %164, align 8, !tbaa !57
  %472 = icmp eq ptr %471, null
  br i1 %472, label %575, label %163, !llvm.loop !94

473:                                              ; preds = %137
  %474 = getelementptr inbounds %struct.bAnimListElem, ptr %93, i64 0, i32 10
  %475 = load ptr, ptr %474, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #5
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #5
  call void @glEnable(i32 noundef 3042) #5
  %476 = getelementptr inbounds %struct.bAnimListElem, ptr %93, i64 0, i32 2
  %477 = load ptr, ptr %476, align 8, !tbaa !62
  %478 = icmp eq ptr %475, null
  br i1 %478, label %484, label %479

479:                                              ; preds = %473
  %480 = getelementptr inbounds %struct.AnimData, ptr %475, i64 0, i32 7
  %481 = load i32, ptr %480, align 8, !tbaa !34
  %482 = and i32 %481, 4
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %484, label %487

484:                                              ; preds = %479, %473
  %485 = icmp eq ptr %477, null
  %486 = select i1 %485, i32 166, i32 165
  br label %487

487:                                              ; preds = %484, %479
  %488 = phi i32 [ 167, %479 ], [ %486, %484 ]
  call void @UI_GetThemeColor4fv(i32 noundef %488, ptr noundef nonnull %14) #5
  br i1 %478, label %497, label %489

489:                                              ; preds = %487
  %490 = getelementptr inbounds %struct.AnimData, ptr %475, i64 0, i32 7
  %491 = load i32, ptr %490, align 8, !tbaa !34
  %492 = and i32 %491, 1
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %497, label %494

494:                                              ; preds = %489
  %495 = load float, ptr %69, align 4, !tbaa !43
  %496 = fmul float %495, 0x3FC3333340000000
  store float %496, ptr %69, align 4, !tbaa !43
  br label %497

497:                                              ; preds = %487, %489, %494
  call void @glColor4fv(ptr noundef nonnull %14) #5
  %498 = load float, ptr %66, align 8, !tbaa !64
  %499 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %500 = sitofp i16 %499 to float
  %501 = call float @llvm.fmuladd.f32(float %500, float 0x3FB99999A0000000, float %105)
  %502 = load float, ptr %70, align 4, !tbaa !65
  %503 = call float @llvm.fmuladd.f32(float %500, float 0xBFB99999A0000000, float %116)
  call void @glRectf(float noundef %498, float noundef %501, float noundef %502, float noundef %503) #5
  %504 = load ptr, ptr %476, align 8, !tbaa !62
  %505 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #5
  call void @BLI_dlrbTree_init(ptr noundef nonnull %4) #5
  call void @action_to_keylist(ptr noundef %475, ptr noundef %504, ptr noundef nonnull %4, ptr noundef null) #5
  call void @BLI_dlrbTree_linkedlist_sync(ptr noundef nonnull %4) #5
  %506 = icmp eq ptr %504, null
  %507 = load ptr, ptr %4, align 8
  %508 = icmp eq ptr %507, null
  %509 = select i1 %506, i1 true, i1 %508
  br i1 %509, label %554, label %510

510:                                              ; preds = %497
  %511 = sitofp i16 %505 to float
  %512 = call float @llvm.fmuladd.f32(float %511, float 0xBFB99999A0000000, float %116)
  %513 = call float @llvm.fmuladd.f32(float %511, float 0x3FB99999A0000000, float %105)
  br i1 %478, label %519, label %514

514:                                              ; preds = %510
  %515 = getelementptr inbounds %struct.AnimData, ptr %475, i64 0, i32 7
  %516 = load i32, ptr %515, align 8, !tbaa !34
  %517 = and i32 %516, 4
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %519, label %520

519:                                              ; preds = %510, %514
  br label %520

520:                                              ; preds = %514, %519
  %521 = phi i32 [ 165, %519 ], [ 167, %514 ]
  call void @UI_GetThemeColor4fv(i32 noundef %521, ptr noundef nonnull %6) #5
  br i1 %478, label %530, label %522

522:                                              ; preds = %520
  %523 = getelementptr inbounds %struct.AnimData, ptr %475, i64 0, i32 7
  %524 = load i32, ptr %523, align 8, !tbaa !34
  %525 = and i32 %524, 1
  %526 = icmp eq i32 %525, 0
  br i1 %526, label %530, label %527

527:                                              ; preds = %522
  %528 = load float, ptr %71, align 4, !tbaa !43
  %529 = fmul float %528, 0x3FC3333340000000
  store float %529, ptr %71, align 4, !tbaa !43
  br label %530

530:                                              ; preds = %520, %522, %527
  %531 = load float, ptr %72, align 4, !tbaa !43
  %532 = fmul float %531, 2.500000e+00
  store float %532, ptr %72, align 4, !tbaa !43
  call void @glColor4fv(ptr noundef nonnull %6) #5
  %533 = load ptr, ptr %4, align 8, !tbaa !95
  %534 = getelementptr inbounds %struct.ActKeyColumn, ptr %533, i64 0, i32 8
  %535 = load float, ptr %534, align 4, !tbaa !97
  %536 = load ptr, ptr %73, align 8, !tbaa !99
  %537 = getelementptr inbounds %struct.ActKeyColumn, ptr %536, i64 0, i32 8
  %538 = load float, ptr %537, align 4, !tbaa !97
  %539 = fadd float %513, 2.000000e+00
  %540 = fadd float %512, -2.000000e+00
  call void @glRectf(float noundef %535, float noundef %539, float noundef %538, float noundef %540) #5
  call void @UI_view2d_scale_get(ptr noundef nonnull %15, ptr noundef nonnull %5, ptr noundef null) #5
  call void @glColor3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #5
  %541 = load ptr, ptr %4, align 8, !tbaa !57
  %542 = icmp eq ptr %541, null
  br i1 %542, label %553, label %543

543:                                              ; preds = %530, %543
  %544 = phi ptr [ %551, %543 ], [ %541, %530 ]
  %545 = getelementptr inbounds %struct.ActKeyColumn, ptr %544, i64 0, i32 8
  %546 = load float, ptr %545, align 4, !tbaa !97
  %547 = load float, ptr %5, align 4, !tbaa !43
  %548 = getelementptr inbounds %struct.ActKeyColumn, ptr %544, i64 0, i32 6
  %549 = load i8, ptr %548, align 1, !tbaa !100
  %550 = zext i8 %549 to i16
  call void @draw_keyframe_shape(float noundef %546, float noundef %94, float noundef %547, float noundef 3.000000e+00, i16 noundef signext 0, i16 noundef signext %550, i16 noundef signext 0, float noundef 1.000000e+00) #5
  %551 = load ptr, ptr %544, align 8, !tbaa !57
  %552 = icmp eq ptr %551, null
  br i1 %552, label %553, label %543, !llvm.loop !101

553:                                              ; preds = %543, %530
  call void @BLI_dlrbTree_free(ptr noundef nonnull %4) #5
  br label %554

554:                                              ; preds = %497, %553
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #5
  call void @glLineWidth(float noundef 2.000000e+00) #5
  call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 0x3FD3333340000000) #5
  %555 = load float, ptr %66, align 8, !tbaa !64
  %556 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %557 = sitofp i16 %556 to float
  %558 = call float @llvm.fmuladd.f32(float %557, float 0x3FB99999A0000000, float %105)
  %559 = load float, ptr %70, align 4, !tbaa !65
  call void @fdrawline(float noundef %555, float noundef %558, float noundef %559, float noundef %558) #5
  %560 = load float, ptr %66, align 8, !tbaa !64
  %561 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %562 = sitofp i16 %561 to float
  %563 = call float @llvm.fmuladd.f32(float %562, float 0xBFB99999A0000000, float %116)
  %564 = load float, ptr %70, align 4, !tbaa !65
  call void @fdrawline(float noundef %560, float noundef %563, float noundef %564, float noundef %563) #5
  call void @glLineWidth(float noundef 1.000000e+00) #5
  call void @glColor3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #5
  %565 = load float, ptr %66, align 8, !tbaa !64
  %566 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %567 = sitofp i16 %566 to float
  %568 = call float @llvm.fmuladd.f32(float %567, float 0x3FB99999A0000000, float %105)
  %569 = load float, ptr %70, align 4, !tbaa !65
  call void @fdrawline(float noundef %565, float noundef %568, float noundef %569, float noundef %568) #5
  %570 = load float, ptr %66, align 8, !tbaa !64
  %571 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %572 = sitofp i16 %571 to float
  %573 = call float @llvm.fmuladd.f32(float %572, float 0xBFB99999A0000000, float %116)
  %574 = load float, ptr %70, align 4, !tbaa !65
  call void @fdrawline(float noundef %570, float noundef %573, float noundef %574, float noundef %573) #5
  call void @glDisable(i32 noundef 3042) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #5
  br label %575

575:                                              ; preds = %469, %140, %554, %137, %133, %129
  br i1 %22, label %580, label %576

576:                                              ; preds = %575
  %577 = load i16, ptr %91, align 2, !tbaa !47
  %578 = and i16 %577, 32
  %579 = icmp eq i16 %578, 0
  br i1 %579, label %580, label %581

580:                                              ; preds = %576, %575
  br label %581

581:                                              ; preds = %576, %580
  %582 = phi float [ 0x3FF3333340000000, %580 ], [ 0x3FE99999A0000000, %576 ]
  %583 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %584 = sitofp i16 %583 to float
  %585 = fmul float %582, %584
  %586 = sitofp i16 %583 to float
  %587 = call float @llvm.fmuladd.f32(float %586, float 0x3FB99999A0000000, float %585)
  %588 = fsub float %94, %587
  %589 = load ptr, ptr %93, align 8, !tbaa !57
  %590 = icmp eq ptr %589, null
  br i1 %590, label %591, label %92, !llvm.loop !102

591:                                              ; preds = %581, %57
  call void @ANIM_animdata_freelist(ptr noundef nonnull %13) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare i64 @ANIM_animdata_filter(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

declare zeroext i8 @BKE_nlastrip_within_bounds(ptr noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @glEnable(i32 noundef) local_unnamed_addr #1

declare void @glColor4fv(ptr noundef) local_unnamed_addr #1

declare void @glRectf(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @glLineWidth(float noundef) local_unnamed_addr #1

declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @fdrawline(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @glColor3f(float noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @glDisable(i32 noundef) local_unnamed_addr #1

declare void @ANIM_animdata_freelist(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @draw_nla_channel_list(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !103
  %7 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %1, align 8, !tbaa !44
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !46
  %11 = sext i16 %10 to i32
  %12 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %1, ptr noundef nonnull %4, i32 noundef 11, ptr noundef %8, i32 noundef %11) #5
  %13 = uitofp i64 %12 to float
  %14 = icmp eq ptr %6, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.SpaceNla, ptr %6, i64 0, i32 7
  %17 = load i16, ptr %16, align 2, !tbaa !47
  %18 = and i16 %17, 32
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %3
  br label %21

21:                                               ; preds = %15, %20
  %22 = phi float [ 0x3FF3333340000000, %20 ], [ 0x3FE99999A0000000, %15 ]
  %23 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %24 = sitofp i16 %23 to float
  %25 = fmul float %22, %24
  %26 = sitofp i16 %23 to float
  %27 = call float @llvm.fmuladd.f32(float %26, float 0x3FB99999A0000000, float %25)
  br i1 %14, label %33, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.SpaceNla, ptr %6, i64 0, i32 7
  %30 = load i16, ptr %29, align 2, !tbaa !47
  %31 = and i16 %30, 32
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28, %21
  br label %34

34:                                               ; preds = %28, %33
  %35 = phi float [ 0x3FF3333340000000, %33 ], [ 0x3FE99999A0000000, %28 ]
  %36 = fmul float %35, %26
  %37 = fmul float %36, 2.000000e+00
  %38 = call float @llvm.fmuladd.f32(float %13, float %27, float %37)
  %39 = fptosi float %38 to i32
  %40 = sub nsw i32 0, %39
  %41 = sitofp i32 %40 to float
  %42 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 0, i32 2
  store float %41, ptr %42, align 8, !tbaa !56
  %43 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 5
  %44 = load ptr, ptr %43, align 8, !tbaa !104
  call void @UI_view2d_sync(ptr noundef null, ptr noundef %44, ptr noundef nonnull %7, i32 noundef 1) #5
  br i1 %14, label %50, label %45

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.SpaceNla, ptr %6, i64 0, i32 7
  %47 = load i16, ptr %46, align 2, !tbaa !47
  %48 = and i16 %47, 32
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45, %34
  br label %51

51:                                               ; preds = %45, %50
  %52 = phi float [ 0x3FF3333340000000, %50 ], [ 0x3FE99999A0000000, %45 ]
  %53 = load ptr, ptr %4, align 8, !tbaa !57
  %54 = icmp eq ptr %53, null
  br i1 %54, label %127, label %55

55:                                               ; preds = %51
  %56 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %57 = sitofp i16 %56 to float
  %58 = fneg float %52
  %59 = fmul float %58, %57
  %60 = getelementptr inbounds %struct.SpaceNla, ptr %6, i64 0, i32 7
  %61 = getelementptr inbounds %struct.SpaceNla, ptr %6, i64 0, i32 7
  %62 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 2
  %63 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 3
  %64 = getelementptr inbounds %struct.SpaceNla, ptr %6, i64 0, i32 7
  br label %65

65:                                               ; preds = %55, %117
  %66 = phi ptr [ %53, %55 ], [ %125, %117 ]
  %67 = phi float [ %59, %55 ], [ %124, %117 ]
  br i1 %14, label %72, label %68

68:                                               ; preds = %65
  %69 = load i16, ptr %60, align 2, !tbaa !47
  %70 = and i16 %69, 32
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68, %65
  br label %73

73:                                               ; preds = %68, %72
  %74 = phi float [ 0x3FE3333340000000, %72 ], [ 0x3FD99999A0000000, %68 ]
  %75 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %76 = sitofp i16 %75 to float
  %77 = fmul float %74, %76
  %78 = fsub float %67, %77
  br i1 %14, label %83, label %79

79:                                               ; preds = %73
  %80 = load i16, ptr %61, align 2, !tbaa !47
  %81 = and i16 %80, 32
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %79, %73
  br label %84

84:                                               ; preds = %79, %83
  %85 = phi float [ 0x3FE3333340000000, %83 ], [ 0x3FD99999A0000000, %79 ]
  %86 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %87 = sitofp i16 %86 to float
  %88 = fmul float %85, %87
  %89 = fadd float %67, %88
  %90 = load float, ptr %62, align 8, !tbaa !58
  %91 = load float, ptr %63, align 4, !tbaa !59
  %92 = fcmp olt float %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %84
  %94 = fcmp olt float %90, %78
  %95 = fcmp olt float %78, %91
  %96 = and i1 %94, %95
  br i1 %96, label %110, label %101

97:                                               ; preds = %84
  %98 = fcmp olt float %91, %78
  %99 = fcmp olt float %78, %90
  %100 = and i1 %99, %98
  br i1 %100, label %110, label %101

101:                                              ; preds = %97, %93
  br i1 %92, label %102, label %106

102:                                              ; preds = %101
  %103 = fcmp olt float %90, %89
  %104 = fcmp olt float %89, %91
  %105 = and i1 %103, %104
  br i1 %105, label %110, label %111

106:                                              ; preds = %101
  %107 = fcmp olt float %91, %89
  %108 = fcmp olt float %89, %90
  %109 = and i1 %108, %107
  br i1 %109, label %110, label %111

110:                                              ; preds = %106, %102, %97, %93
  call void @ANIM_channel_draw(ptr noundef nonnull %1, ptr noundef nonnull %66, float noundef %78, float noundef %89) #5
  br label %111

111:                                              ; preds = %106, %102, %110
  br i1 %14, label %116, label %112

112:                                              ; preds = %111
  %113 = load i16, ptr %64, align 2, !tbaa !47
  %114 = and i16 %113, 32
  %115 = icmp eq i16 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %112, %111
  br label %117

117:                                              ; preds = %112, %116
  %118 = phi float [ 0x3FF3333340000000, %116 ], [ 0x3FE99999A0000000, %112 ]
  %119 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %120 = sitofp i16 %119 to float
  %121 = fmul float %118, %120
  %122 = sitofp i16 %119 to float
  %123 = call float @llvm.fmuladd.f32(float %122, float 0x3FB99999A0000000, float %121)
  %124 = fsub float %67, %123
  %125 = load ptr, ptr %66, align 8, !tbaa !57
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %65, !llvm.loop !105

127:                                              ; preds = %117, %51
  %128 = call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @__func__.draw_nla_channel_list, i16 noundef signext 0) #5
  br i1 %14, label %134, label %129

129:                                              ; preds = %127
  %130 = getelementptr inbounds %struct.SpaceNla, ptr %6, i64 0, i32 7
  %131 = load i16, ptr %130, align 2, !tbaa !47
  %132 = and i16 %131, 32
  %133 = icmp eq i16 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %129, %127
  br label %135

135:                                              ; preds = %129, %134
  %136 = phi float [ 0x3FF3333340000000, %134 ], [ 0x3FE99999A0000000, %129 ]
  %137 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #5
  call void @glEnable(i32 noundef 3042) #5
  %138 = load ptr, ptr %4, align 8, !tbaa !57
  %139 = icmp eq ptr %138, null
  br i1 %139, label %213, label %140

140:                                              ; preds = %135
  %141 = sitofp i16 %137 to float
  %142 = fneg float %136
  %143 = fmul float %142, %141
  %144 = getelementptr inbounds %struct.SpaceNla, ptr %6, i64 0, i32 7
  %145 = getelementptr inbounds %struct.SpaceNla, ptr %6, i64 0, i32 7
  %146 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 2
  %147 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 3
  %148 = getelementptr inbounds %struct.SpaceNla, ptr %6, i64 0, i32 7
  br label %149

149:                                              ; preds = %140, %202
  %150 = phi ptr [ %138, %140 ], [ %211, %202 ]
  %151 = phi float [ %143, %140 ], [ %209, %202 ]
  %152 = phi i64 [ 0, %140 ], [ %210, %202 ]
  br i1 %14, label %157, label %153

153:                                              ; preds = %149
  %154 = load i16, ptr %144, align 2, !tbaa !47
  %155 = and i16 %154, 32
  %156 = icmp eq i16 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %153, %149
  br label %158

158:                                              ; preds = %153, %157
  %159 = phi float [ 0x3FE3333340000000, %157 ], [ 0x3FD99999A0000000, %153 ]
  %160 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %161 = sitofp i16 %160 to float
  %162 = fmul float %159, %161
  %163 = fsub float %151, %162
  br i1 %14, label %168, label %164

164:                                              ; preds = %158
  %165 = load i16, ptr %145, align 2, !tbaa !47
  %166 = and i16 %165, 32
  %167 = icmp eq i16 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %164, %158
  br label %169

169:                                              ; preds = %164, %168
  %170 = phi float [ 0x3FE3333340000000, %168 ], [ 0x3FD99999A0000000, %164 ]
  %171 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %172 = sitofp i16 %171 to float
  %173 = fmul float %170, %172
  %174 = fadd float %151, %173
  %175 = load float, ptr %146, align 8, !tbaa !58
  %176 = load float, ptr %147, align 4, !tbaa !59
  %177 = fcmp olt float %175, %176
  br i1 %177, label %178, label %182

178:                                              ; preds = %169
  %179 = fcmp olt float %175, %163
  %180 = fcmp olt float %163, %176
  %181 = and i1 %179, %180
  br i1 %181, label %195, label %186

182:                                              ; preds = %169
  %183 = fcmp olt float %176, %163
  %184 = fcmp olt float %163, %175
  %185 = and i1 %184, %183
  br i1 %185, label %195, label %186

186:                                              ; preds = %182, %178
  br i1 %177, label %187, label %191

187:                                              ; preds = %186
  %188 = fcmp olt float %175, %174
  %189 = fcmp olt float %174, %176
  %190 = and i1 %188, %189
  br i1 %190, label %195, label %196

191:                                              ; preds = %186
  %192 = fcmp olt float %176, %174
  %193 = fcmp olt float %174, %175
  %194 = and i1 %193, %192
  br i1 %194, label %195, label %196

195:                                              ; preds = %191, %187, %182, %178
  call void @ANIM_channel_draw_widgets(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %150, ptr noundef %128, float noundef %163, float noundef %174, i64 noundef %152) #5
  br label %196

196:                                              ; preds = %191, %187, %195
  br i1 %14, label %201, label %197

197:                                              ; preds = %196
  %198 = load i16, ptr %148, align 2, !tbaa !47
  %199 = and i16 %198, 32
  %200 = icmp eq i16 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %197, %196
  br label %202

202:                                              ; preds = %197, %201
  %203 = phi float [ 0x3FF3333340000000, %201 ], [ 0x3FE99999A0000000, %197 ]
  %204 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %205 = sitofp i16 %204 to float
  %206 = fmul float %203, %205
  %207 = sitofp i16 %204 to float
  %208 = call float @llvm.fmuladd.f32(float %207, float 0x3FB99999A0000000, float %206)
  %209 = fsub float %151, %208
  %210 = add i64 %152, 1
  %211 = load ptr, ptr %150, align 8, !tbaa !57
  %212 = icmp eq ptr %211, null
  br i1 %212, label %213, label %149, !llvm.loop !106

213:                                              ; preds = %202, %135
  call void @uiEndBlock(ptr noundef %0, ptr noundef %128) #5
  call void @uiDrawBlock(ptr noundef %0, ptr noundef %128) #5
  call void @glDisable(i32 noundef 3042) #5
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5
  ret void
}

declare void @UI_view2d_sync(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @ANIM_channel_draw(ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #1

declare ptr @uiBeginBlock(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare void @ANIM_channel_draw_widgets(ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef, i64 noundef) local_unnamed_addr #1

declare void @uiEndBlock(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @uiDrawBlock(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @glBegin(i32 noundef) local_unnamed_addr #1

declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #1

declare void @glEnd() local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

declare void @glColor3fv(ptr noundef) local_unnamed_addr #1

declare void @uiSetRoundBox(i32 noundef) local_unnamed_addr #1

declare void @uiDrawBoxShade(i32 noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @setlinestyle(i32 noundef) local_unnamed_addr #1

declare void @UI_GetThemeColor3fv(i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @list_find_fcurve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare float @evaluate_fcurve(ptr noundef, float noundef) local_unnamed_addr #1

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

declare i64 @BLI_strncpy_rlen(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @UI_view2d_text_cache_add_rectf(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @UI_view2d_text_cache_add(ptr noundef, float noundef, float noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_dlrbTree_init(ptr noundef) local_unnamed_addr #1

declare void @action_to_keylist(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_dlrbTree_linkedlist_sync(ptr noundef) local_unnamed_addr #1

declare void @UI_view2d_scale_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @draw_keyframe_shape(float noundef, float noundef, float noundef, float noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, float noundef) local_unnamed_addr #1

declare void @BLI_dlrbTree_free(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !40, i64 80}
!35 = !{!"AnimData", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !36, i64 40, !39, i64 48, !39, i64 64, !40, i64 80, !40, i64 84, !41, i64 88, !41, i64 90, !42, i64 92}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"int", !37, i64 0}
!41 = !{!"short", !37, i64 0}
!42 = !{!"float", !37, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{!45, !36, i64 0}
!45 = !{!"bAnimContext", !36, i64 0, !41, i64 8, !41, i64 10, !41, i64 12, !41, i64 14, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72}
!46 = !{!45, !41, i64 8}
!47 = !{!48, !41, i64 58}
!48 = !{!"SpaceNla", !36, i64 0, !36, i64 8, !39, i64 16, !40, i64 32, !42, i64 36, !37, i64 40, !41, i64 56, !41, i64 58, !40, i64 60, !36, i64 64, !49, i64 72}
!49 = !{!"View2D", !50, i64 0, !50, i64 16, !51, i64 32, !51, i64 48, !51, i64 64, !37, i64 80, !37, i64 88, !42, i64 96, !42, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !40, i64 136, !40, i64 140, !36, i64 144, !36, i64 152}
!50 = !{!"rctf", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!51 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!52 = !{!53, !41, i64 8948}
!53 = !{!"UserDef", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !40, i64 8468, !41, i64 8472, !41, i64 8474, !41, i64 8476, !41, i64 8478, !41, i64 8480, !41, i64 8482, !40, i64 8484, !40, i64 8488, !40, i64 8492, !41, i64 8496, !41, i64 8498, !40, i64 8500, !40, i64 8504, !40, i64 8508, !40, i64 8512, !40, i64 8516, !40, i64 8520, !40, i64 8524, !41, i64 8528, !41, i64 8530, !41, i64 8532, !41, i64 8534, !39, i64 8536, !39, i64 8552, !39, i64 8568, !39, i64 8584, !39, i64 8600, !39, i64 8616, !39, i64 8632, !37, i64 8648, !41, i64 8712, !41, i64 8714, !41, i64 8716, !41, i64 8718, !41, i64 8720, !41, i64 8722, !41, i64 8724, !41, i64 8726, !37, i64 8728, !41, i64 8896, !41, i64 8898, !41, i64 8900, !41, i64 8902, !41, i64 8904, !41, i64 8906, !41, i64 8908, !41, i64 8910, !40, i64 8912, !40, i64 8916, !41, i64 8920, !41, i64 8922, !41, i64 8924, !41, i64 8926, !41, i64 8928, !41, i64 8930, !41, i64 8932, !41, i64 8934, !41, i64 8936, !41, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !41, i64 8944, !41, i64 8946, !41, i64 8948, !41, i64 8950, !41, i64 8952, !41, i64 8954, !42, i64 8956, !42, i64 8960, !40, i64 8964, !41, i64 8968, !41, i64 8970, !42, i64 8972, !41, i64 8976, !41, i64 8978, !41, i64 8980, !41, i64 8982, !54, i64 8984, !37, i64 9760, !37, i64 9772, !41, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !40, i64 10896, !40, i64 10900, !42, i64 10904, !42, i64 10908, !40, i64 10912, !41, i64 10916, !41, i64 10918, !41, i64 10920, !41, i64 10922, !41, i64 10924, !41, i64 10926, !55, i64 10928}
!54 = !{!"ColorBand", !41, i64 0, !41, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!55 = !{!"WalkNavigation", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !41, i64 24, !37, i64 26}
!56 = !{!49, !42, i64 8}
!57 = !{!36, !36, i64 0}
!58 = !{!49, !42, i64 24}
!59 = !{!49, !42, i64 28}
!60 = !{!61, !40, i64 24}
!61 = !{!"bAnimListElem", !36, i64 0, !36, i64 8, !36, i64 16, !40, i64 24, !40, i64 28, !40, i64 32, !41, i64 36, !41, i64 38, !36, i64 40, !36, i64 48, !36, i64 56}
!62 = !{!61, !36, i64 16}
!63 = !{!61, !36, i64 56}
!64 = !{!49, !42, i64 16}
!65 = !{!49, !42, i64 20}
!66 = !{!67, !40, i64 32}
!67 = !{!"NlaTrack", !36, i64 0, !36, i64 8, !39, i64 16, !40, i64 32, !40, i64 36, !37, i64 40}
!68 = !{!69, !41, i64 190}
!69 = !{!"NlaStrip", !36, i64 0, !36, i64 8, !39, i64 16, !36, i64 32, !36, i64 40, !39, i64 48, !39, i64 64, !37, i64 80, !42, i64 144, !42, i64 148, !42, i64 152, !42, i64 156, !42, i64 160, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180, !41, i64 184, !41, i64 186, !41, i64 188, !41, i64 190, !36, i64 192, !40, i64 200, !40, i64 204}
!70 = !{!69, !40, i64 200}
!71 = !{!69, !41, i64 186}
!72 = !{!69, !36, i64 8}
!73 = !{!69, !42, i64 152}
!74 = !{!69, !36, i64 0}
!75 = !{!69, !42, i64 156}
!76 = distinct !{!76, !77, !78}
!77 = !{!"llvm.loop.mustprogress"}
!78 = !{!"llvm.loop.unroll.disable"}
!79 = !{!69, !42, i64 176}
!80 = !{!69, !42, i64 180}
!81 = !{!69, !42, i64 168}
!82 = !{!69, !42, i64 164}
!83 = !{!69, !42, i64 160}
!84 = !{!69, !42, i64 172}
!85 = distinct !{!85, !77, !78}
!86 = !{!69, !36, i64 16}
!87 = !{!69, !36, i64 24}
!88 = distinct !{!88, !77, !78}
!89 = !{!37, !37, i64 0}
!90 = !{!50, !42, i64 0}
!91 = !{!50, !42, i64 8}
!92 = !{!50, !42, i64 4}
!93 = !{!50, !42, i64 12}
!94 = distinct !{!94, !77, !78}
!95 = !{!96, !36, i64 0}
!96 = !{!"DLRBT_Tree", !36, i64 0, !36, i64 8, !36, i64 16}
!97 = !{!98, !42, i64 44}
!98 = !{!"ActKeyColumn", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 41, !41, i64 42, !42, i64 44, !41, i64 48, !41, i64 50}
!99 = !{!96, !36, i64 8}
!100 = !{!98, !37, i64 41}
!101 = distinct !{!101, !77, !78}
!102 = distinct !{!102, !77, !78}
!103 = !{!45, !36, i64 24}
!104 = !{!45, !36, i64 16}
!105 = distinct !{!105, !77, !78}
!106 = distinct !{!106, !77, !78}
