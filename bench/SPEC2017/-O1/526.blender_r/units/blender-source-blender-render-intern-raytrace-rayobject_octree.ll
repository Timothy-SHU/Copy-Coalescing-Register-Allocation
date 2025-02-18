; ModuleID = 'blender/source/blender/render/intern/raytrace/rayobject_octree.cpp'
source_filename = "blender/source/blender/render/intern/raytrace/rayobject_octree.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.RayObjectAPI = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Octree = type { %struct.RayObject, ptr, ptr, float, float, float, float, [3 x float], [3 x float], i32, i32, i32, ptr, ptr, i32, i32 }
%struct.RayObject = type { ptr, %struct.RayObjectControl }
%struct.RayObjectControl = type { ptr, ptr }
%struct.Isect = type { [3 x float], [3 x float], float, [3 x float], [3 x float], [6 x i32], [3 x float], i32, i32, i32, i32, ptr, float, float, i32, %struct.anon, %struct.anon, ptr, ptr }
%struct.anon = type { ptr, ptr }
%struct.RayFace = type { [4 x float], [4 x float], [4 x float], [3 x float], i32, ptr, ptr }
%struct.Node = type { [8 x ptr], [8 x %struct.OcVal], ptr }
%struct.OcVal = type { i16, i16, i16 }
%struct.Branch = type { [8 x ptr] }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [7 x i8] c"Octree\00", align 1
@_ZL10octree_api = internal global %struct.RayObjectAPI { ptr @_ZL29RE_rayobject_octree_intersectP9RayObjectP5Isect, ptr @_ZL23RE_rayobject_octree_addP9RayObjectS0_, ptr @_ZL24RE_rayobject_octree_doneP9RayObject, ptr @_ZL24RE_rayobject_octree_freeP9RayObject, ptr @_ZL22RE_rayobject_octree_bbP9RayObjectPfS1_, ptr @_ZL24RE_rayobject_octree_costP9RayObject, ptr @_ZL27RE_rayobject_octree_hint_bbP9RayObjectP7RayHintPfS3_ }, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"octree rayobject nodes\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"octree branches\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"octree nodes\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"makeoctree\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"ocface\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"new oc branch\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"addnode\00", align 1
@_ZZL12face_in_nodeP7RayFacesssPA3_fE3nor = internal global [3 x float] zeroinitializer, align 4
@_ZZL12face_in_nodeP7RayFacesssPA3_fE1d = internal unnamed_addr global float 0.000000e+00, align 4
@str = private unnamed_addr constant [28 x i8] c"error; octree branches full\00", align 1
@str.10 = private unnamed_addr constant [25 x i8] c"error; octree nodes full\00", align 1

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @RE_rayobject_octree_create(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 120, ptr noundef nonnull @.str)
  store ptr @_ZL10octree_api, ptr %4, align 8, !tbaa !38
  %5 = getelementptr inbounds %struct.Octree, ptr %4, i64 0, i32 9
  store i32 %0, ptr %5, align 8, !tbaa !44
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %7 = sext i32 %1 to i64
  %8 = shl nsw i64 %7, 3
  %9 = tail call ptr %6(i64 noundef %8, ptr noundef nonnull @.str.1)
  %10 = getelementptr inbounds %struct.Octree, ptr %4, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !45
  %11 = getelementptr inbounds %struct.Octree, ptr %4, i64 0, i32 14
  store i32 %1, ptr %11, align 8, !tbaa !46
  %12 = getelementptr inbounds %struct.Octree, ptr %4, i64 0, i32 15
  store i32 0, ptr %12, align 4, !tbaa !47
  %13 = ptrtoint ptr %4 to i64
  %14 = or i64 %13, 2
  %15 = inttoptr i64 %14 to ptr
  ret ptr %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL29RE_rayobject_octree_intersectP9RayObjectP5Isect(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 10
  %4 = load i32, ptr %3, align 4, !tbaa !48
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %593, label %6

6:                                                ; preds = %2
  %7 = load float, ptr %1, align 4, !tbaa !49
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !49
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !49
  %12 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 1
  %13 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 2
  %14 = load float, ptr %13, align 8, !tbaa !50
  %15 = load float, ptr %12, align 4, !tbaa !49
  %16 = tail call float @llvm.fmuladd.f32(float %15, float %14, float %7)
  %17 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 1, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !49
  %19 = tail call float @llvm.fmuladd.f32(float %18, float %14, float %9)
  %20 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 1, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !49
  %22 = tail call float @llvm.fmuladd.f32(float %21, float %14, float %11)
  %23 = fmul float %14, %15
  %24 = fneg float %23
  %25 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 7
  %26 = load float, ptr %25, align 8, !tbaa !49
  %27 = fsub float %7, %26
  %28 = fcmp ogt float %23, 0.000000e+00
  br i1 %28, label %29, label %39

29:                                               ; preds = %6
  %30 = fcmp olt float %27, %24
  br i1 %30, label %53, label %31

31:                                               ; preds = %29
  %32 = fcmp olt float %27, 0.000000e+00
  br i1 %32, label %33, label %53

33:                                               ; preds = %31
  %34 = fdiv float %27, %24
  %35 = fcmp ogt float %34, 1.000000e+00
  br i1 %35, label %53, label %36

36:                                               ; preds = %33
  %37 = fcmp ogt float %34, 0.000000e+00
  br i1 %37, label %38, label %53

38:                                               ; preds = %36
  br label %53

39:                                               ; preds = %6
  %40 = fcmp olt float %23, 0.000000e+00
  %41 = fcmp olt float %27, 0.000000e+00
  br i1 %40, label %42, label %51

42:                                               ; preds = %39
  br i1 %41, label %53, label %43

43:                                               ; preds = %42
  %44 = fcmp olt float %27, %24
  br i1 %44, label %45, label %53

45:                                               ; preds = %43
  %46 = fdiv float %27, %24
  %47 = fcmp olt float %46, 0.000000e+00
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = fcmp olt float %46, 1.000000e+00
  br i1 %49, label %50, label %53

50:                                               ; preds = %48
  br label %53

51:                                               ; preds = %39
  br i1 %41, label %53, label %52

52:                                               ; preds = %51
  br label %53

53:                                               ; preds = %31, %36, %38, %43, %48, %50, %29, %33, %42, %45, %51, %52
  %54 = phi float [ 0.000000e+00, %29 ], [ 0.000000e+00, %33 ], [ 0.000000e+00, %42 ], [ 0.000000e+00, %45 ], [ 0.000000e+00, %51 ], [ %34, %38 ], [ 0.000000e+00, %36 ], [ 0.000000e+00, %31 ], [ 0.000000e+00, %50 ], [ 0.000000e+00, %48 ], [ 0.000000e+00, %43 ], [ 0.000000e+00, %52 ]
  %55 = phi float [ 1.000000e+00, %29 ], [ 1.000000e+00, %33 ], [ 1.000000e+00, %42 ], [ 1.000000e+00, %45 ], [ 1.000000e+00, %51 ], [ 1.000000e+00, %38 ], [ 1.000000e+00, %36 ], [ 1.000000e+00, %31 ], [ %46, %50 ], [ 1.000000e+00, %48 ], [ 1.000000e+00, %43 ], [ 1.000000e+00, %52 ]
  %56 = phi i1 [ true, %29 ], [ true, %33 ], [ true, %42 ], [ true, %45 ], [ true, %51 ], [ false, %38 ], [ false, %36 ], [ false, %31 ], [ false, %50 ], [ false, %48 ], [ false, %43 ], [ false, %52 ]
  br i1 %56, label %593, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 8
  %59 = load float, ptr %58, align 4, !tbaa !49
  %60 = fsub float %59, %7
  %61 = fcmp olt float %23, 0.000000e+00
  br i1 %61, label %62, label %72

62:                                               ; preds = %57
  %63 = fcmp olt float %60, %23
  br i1 %63, label %85, label %64

64:                                               ; preds = %62
  %65 = fcmp olt float %60, 0.000000e+00
  br i1 %65, label %66, label %85

66:                                               ; preds = %64
  %67 = fdiv float %60, %23
  %68 = fcmp ogt float %67, %55
  br i1 %68, label %85, label %69

69:                                               ; preds = %66
  %70 = fcmp ogt float %67, %54
  br i1 %70, label %71, label %85

71:                                               ; preds = %69
  br label %85

72:                                               ; preds = %57
  %73 = fcmp olt float %60, 0.000000e+00
  br i1 %28, label %74, label %83

74:                                               ; preds = %72
  br i1 %73, label %85, label %75

75:                                               ; preds = %74
  %76 = fcmp olt float %60, %23
  br i1 %76, label %77, label %85

77:                                               ; preds = %75
  %78 = fdiv float %60, %23
  %79 = fcmp olt float %78, %54
  br i1 %79, label %85, label %80

80:                                               ; preds = %77
  %81 = fcmp olt float %78, %55
  br i1 %81, label %82, label %85

82:                                               ; preds = %80
  br label %85

83:                                               ; preds = %72
  br i1 %73, label %85, label %84

84:                                               ; preds = %83
  br label %85

85:                                               ; preds = %64, %69, %71, %75, %80, %82, %62, %66, %74, %77, %83, %84
  %86 = phi float [ %54, %62 ], [ %54, %66 ], [ %54, %74 ], [ %54, %77 ], [ %54, %83 ], [ %67, %71 ], [ %54, %69 ], [ %54, %64 ], [ %54, %82 ], [ %54, %80 ], [ %54, %75 ], [ %54, %84 ]
  %87 = phi float [ %55, %62 ], [ %55, %66 ], [ %55, %74 ], [ %55, %77 ], [ %55, %83 ], [ %55, %71 ], [ %55, %69 ], [ %55, %64 ], [ %78, %82 ], [ %55, %80 ], [ %55, %75 ], [ %55, %84 ]
  %88 = phi i1 [ true, %62 ], [ true, %66 ], [ true, %74 ], [ true, %77 ], [ true, %83 ], [ false, %71 ], [ false, %69 ], [ false, %64 ], [ false, %82 ], [ false, %80 ], [ false, %75 ], [ false, %84 ]
  br i1 %88, label %593, label %89

89:                                               ; preds = %85
  %90 = fmul float %14, %18
  %91 = fneg float %90
  %92 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 7, i64 1
  %93 = load float, ptr %92, align 4, !tbaa !49
  %94 = fsub float %9, %93
  %95 = fcmp ogt float %90, 0.000000e+00
  br i1 %95, label %96, label %106

96:                                               ; preds = %89
  %97 = fcmp olt float %94, %91
  br i1 %97, label %120, label %98

98:                                               ; preds = %96
  %99 = fcmp olt float %94, 0.000000e+00
  br i1 %99, label %100, label %120

100:                                              ; preds = %98
  %101 = fdiv float %94, %91
  %102 = fcmp ogt float %101, %87
  br i1 %102, label %120, label %103

103:                                              ; preds = %100
  %104 = fcmp ogt float %101, %86
  br i1 %104, label %105, label %120

105:                                              ; preds = %103
  br label %120

106:                                              ; preds = %89
  %107 = fcmp olt float %90, 0.000000e+00
  %108 = fcmp olt float %94, 0.000000e+00
  br i1 %107, label %109, label %118

109:                                              ; preds = %106
  br i1 %108, label %120, label %110

110:                                              ; preds = %109
  %111 = fcmp olt float %94, %91
  br i1 %111, label %112, label %120

112:                                              ; preds = %110
  %113 = fdiv float %94, %91
  %114 = fcmp olt float %113, %86
  br i1 %114, label %120, label %115

115:                                              ; preds = %112
  %116 = fcmp olt float %113, %87
  br i1 %116, label %117, label %120

117:                                              ; preds = %115
  br label %120

118:                                              ; preds = %106
  br i1 %108, label %120, label %119

119:                                              ; preds = %118
  br label %120

120:                                              ; preds = %98, %103, %105, %110, %115, %117, %96, %100, %109, %112, %118, %119
  %121 = phi float [ %86, %96 ], [ %86, %100 ], [ %86, %109 ], [ %86, %112 ], [ %86, %118 ], [ %101, %105 ], [ %86, %103 ], [ %86, %98 ], [ %86, %117 ], [ %86, %115 ], [ %86, %110 ], [ %86, %119 ]
  %122 = phi float [ %87, %96 ], [ %87, %100 ], [ %87, %109 ], [ %87, %112 ], [ %87, %118 ], [ %87, %105 ], [ %87, %103 ], [ %87, %98 ], [ %113, %117 ], [ %87, %115 ], [ %87, %110 ], [ %87, %119 ]
  %123 = phi i1 [ true, %96 ], [ true, %100 ], [ true, %109 ], [ true, %112 ], [ true, %118 ], [ false, %105 ], [ false, %103 ], [ false, %98 ], [ false, %117 ], [ false, %115 ], [ false, %110 ], [ false, %119 ]
  br i1 %123, label %593, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 8, i64 1
  %126 = load float, ptr %125, align 4, !tbaa !49
  %127 = fsub float %126, %9
  %128 = fcmp olt float %90, 0.000000e+00
  br i1 %128, label %129, label %139

129:                                              ; preds = %124
  %130 = fcmp olt float %127, %90
  br i1 %130, label %152, label %131

131:                                              ; preds = %129
  %132 = fcmp olt float %127, 0.000000e+00
  br i1 %132, label %133, label %152

133:                                              ; preds = %131
  %134 = fdiv float %127, %90
  %135 = fcmp ogt float %134, %122
  br i1 %135, label %152, label %136

136:                                              ; preds = %133
  %137 = fcmp ogt float %134, %121
  br i1 %137, label %138, label %152

138:                                              ; preds = %136
  br label %152

139:                                              ; preds = %124
  %140 = fcmp olt float %127, 0.000000e+00
  br i1 %95, label %141, label %150

141:                                              ; preds = %139
  br i1 %140, label %152, label %142

142:                                              ; preds = %141
  %143 = fcmp olt float %127, %90
  br i1 %143, label %144, label %152

144:                                              ; preds = %142
  %145 = fdiv float %127, %90
  %146 = fcmp olt float %145, %121
  br i1 %146, label %152, label %147

147:                                              ; preds = %144
  %148 = fcmp olt float %145, %122
  br i1 %148, label %149, label %152

149:                                              ; preds = %147
  br label %152

150:                                              ; preds = %139
  br i1 %140, label %152, label %151

151:                                              ; preds = %150
  br label %152

152:                                              ; preds = %131, %136, %138, %142, %147, %149, %129, %133, %141, %144, %150, %151
  %153 = phi float [ %121, %129 ], [ %121, %133 ], [ %121, %141 ], [ %121, %144 ], [ %121, %150 ], [ %134, %138 ], [ %121, %136 ], [ %121, %131 ], [ %121, %149 ], [ %121, %147 ], [ %121, %142 ], [ %121, %151 ]
  %154 = phi float [ %122, %129 ], [ %122, %133 ], [ %122, %141 ], [ %122, %144 ], [ %122, %150 ], [ %122, %138 ], [ %122, %136 ], [ %122, %131 ], [ %145, %149 ], [ %122, %147 ], [ %122, %142 ], [ %122, %151 ]
  %155 = phi i1 [ true, %129 ], [ true, %133 ], [ true, %141 ], [ true, %144 ], [ true, %150 ], [ false, %138 ], [ false, %136 ], [ false, %131 ], [ false, %149 ], [ false, %147 ], [ false, %142 ], [ false, %151 ]
  br i1 %155, label %593, label %156

156:                                              ; preds = %152
  %157 = fmul float %14, %21
  %158 = fneg float %157
  %159 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 7, i64 2
  %160 = load float, ptr %159, align 8, !tbaa !49
  %161 = fsub float %11, %160
  %162 = fcmp ogt float %157, 0.000000e+00
  br i1 %162, label %163, label %173

163:                                              ; preds = %156
  %164 = fcmp olt float %161, %158
  br i1 %164, label %187, label %165

165:                                              ; preds = %163
  %166 = fcmp olt float %161, 0.000000e+00
  br i1 %166, label %167, label %187

167:                                              ; preds = %165
  %168 = fdiv float %161, %158
  %169 = fcmp ogt float %168, %154
  br i1 %169, label %187, label %170

170:                                              ; preds = %167
  %171 = fcmp ogt float %168, %153
  br i1 %171, label %172, label %187

172:                                              ; preds = %170
  br label %187

173:                                              ; preds = %156
  %174 = fcmp olt float %157, 0.000000e+00
  %175 = fcmp olt float %161, 0.000000e+00
  br i1 %174, label %176, label %185

176:                                              ; preds = %173
  br i1 %175, label %187, label %177

177:                                              ; preds = %176
  %178 = fcmp olt float %161, %158
  br i1 %178, label %179, label %187

179:                                              ; preds = %177
  %180 = fdiv float %161, %158
  %181 = fcmp olt float %180, %153
  br i1 %181, label %187, label %182

182:                                              ; preds = %179
  %183 = fcmp olt float %180, %154
  br i1 %183, label %184, label %187

184:                                              ; preds = %182
  br label %187

185:                                              ; preds = %173
  br i1 %175, label %187, label %186

186:                                              ; preds = %185
  br label %187

187:                                              ; preds = %165, %170, %172, %177, %182, %184, %163, %167, %176, %179, %185, %186
  %188 = phi float [ %153, %163 ], [ %153, %167 ], [ %153, %176 ], [ %153, %179 ], [ %153, %185 ], [ %168, %172 ], [ %153, %170 ], [ %153, %165 ], [ %153, %184 ], [ %153, %182 ], [ %153, %177 ], [ %153, %186 ]
  %189 = phi float [ %154, %163 ], [ %154, %167 ], [ %154, %176 ], [ %154, %179 ], [ %154, %185 ], [ %154, %172 ], [ %154, %170 ], [ %154, %165 ], [ %180, %184 ], [ %154, %182 ], [ %154, %177 ], [ %154, %186 ]
  %190 = phi i1 [ true, %163 ], [ true, %167 ], [ true, %176 ], [ true, %179 ], [ true, %185 ], [ false, %172 ], [ false, %170 ], [ false, %165 ], [ false, %184 ], [ false, %182 ], [ false, %177 ], [ false, %186 ]
  br i1 %190, label %593, label %191

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 8, i64 2
  %193 = load float, ptr %192, align 4, !tbaa !49
  %194 = fsub float %193, %11
  %195 = fcmp olt float %157, 0.000000e+00
  br i1 %195, label %196, label %206

196:                                              ; preds = %191
  %197 = fcmp olt float %194, %157
  br i1 %197, label %219, label %198

198:                                              ; preds = %196
  %199 = fcmp olt float %194, 0.000000e+00
  br i1 %199, label %200, label %219

200:                                              ; preds = %198
  %201 = fdiv float %194, %157
  %202 = fcmp ogt float %201, %189
  br i1 %202, label %219, label %203

203:                                              ; preds = %200
  %204 = fcmp ogt float %201, %188
  br i1 %204, label %205, label %219

205:                                              ; preds = %203
  br label %219

206:                                              ; preds = %191
  %207 = fcmp olt float %194, 0.000000e+00
  br i1 %162, label %208, label %217

208:                                              ; preds = %206
  br i1 %207, label %219, label %209

209:                                              ; preds = %208
  %210 = fcmp olt float %194, %157
  br i1 %210, label %211, label %219

211:                                              ; preds = %209
  %212 = fdiv float %194, %157
  %213 = fcmp olt float %212, %188
  br i1 %213, label %219, label %214

214:                                              ; preds = %211
  %215 = fcmp olt float %212, %189
  br i1 %215, label %216, label %219

216:                                              ; preds = %214
  br label %219

217:                                              ; preds = %206
  br i1 %207, label %219, label %218

218:                                              ; preds = %217
  br label %219

219:                                              ; preds = %198, %203, %205, %209, %214, %216, %196, %200, %208, %211, %217, %218
  %220 = phi float [ %188, %196 ], [ %188, %200 ], [ %188, %208 ], [ %188, %211 ], [ %188, %217 ], [ %201, %205 ], [ %188, %203 ], [ %188, %198 ], [ %188, %216 ], [ %188, %214 ], [ %188, %209 ], [ %188, %218 ]
  %221 = phi float [ %189, %196 ], [ %189, %200 ], [ %189, %208 ], [ %189, %211 ], [ %189, %217 ], [ %189, %205 ], [ %189, %203 ], [ %189, %198 ], [ %212, %216 ], [ %189, %214 ], [ %189, %209 ], [ %189, %218 ]
  %222 = phi i1 [ true, %196 ], [ true, %200 ], [ true, %208 ], [ true, %211 ], [ true, %217 ], [ false, %205 ], [ false, %203 ], [ false, %198 ], [ false, %216 ], [ false, %214 ], [ false, %209 ], [ false, %218 ]
  br i1 %222, label %593, label %223

223:                                              ; preds = %219
  %224 = fcmp olt float %221, 1.000000e+00
  br i1 %224, label %225, label %229

225:                                              ; preds = %223
  %226 = tail call float @llvm.fmuladd.f32(float %221, float %23, float %7)
  %227 = tail call float @llvm.fmuladd.f32(float %221, float %90, float %9)
  %228 = tail call float @llvm.fmuladd.f32(float %221, float %157, float %11)
  br label %229

229:                                              ; preds = %225, %223
  %230 = phi float [ %228, %225 ], [ %22, %223 ]
  %231 = phi float [ %227, %225 ], [ %19, %223 ]
  %232 = phi float [ %226, %225 ], [ %16, %223 ]
  %233 = fcmp ogt float %220, 0.000000e+00
  br i1 %233, label %234, label %238

234:                                              ; preds = %229
  %235 = tail call float @llvm.fmuladd.f32(float %220, float %23, float %7)
  %236 = tail call float @llvm.fmuladd.f32(float %220, float %90, float %9)
  %237 = tail call float @llvm.fmuladd.f32(float %220, float %157, float %11)
  br label %238

238:                                              ; preds = %234, %229
  %239 = phi float [ %237, %234 ], [ %11, %229 ]
  %240 = phi float [ %236, %234 ], [ %9, %229 ]
  %241 = phi float [ %235, %234 ], [ %7, %229 ]
  %242 = fsub float %241, %26
  %243 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 4
  %244 = load float, ptr %243, align 4, !tbaa !53
  %245 = fmul float %242, %244
  %246 = fsub float %240, %93
  %247 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 5
  %248 = load float, ptr %247, align 8, !tbaa !54
  %249 = fmul float %246, %248
  %250 = fsub float %239, %160
  %251 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 6
  %252 = load float, ptr %251, align 4, !tbaa !55
  %253 = fmul float %250, %252
  %254 = fsub float %232, %26
  %255 = fmul float %254, %244
  %256 = fsub float %231, %93
  %257 = fmul float %256, %248
  %258 = fsub float %230, %160
  %259 = fmul float %258, %252
  %260 = fptosi float %245 to i32
  %261 = fptosi float %249 to i32
  %262 = fptosi float %253 to i32
  %263 = fptosi float %255 to i32
  %264 = fptosi float %259 to i32
  %265 = icmp eq i32 %260, %263
  %266 = fptosi float %257 to i32
  %267 = icmp eq i32 %261, %266
  %268 = select i1 %265, i1 %267, i1 false
  %269 = icmp eq i32 %262, %264
  %270 = select i1 %268, i1 %269, i1 false
  br i1 %270, label %271, label %345

271:                                              ; preds = %238
  %272 = tail call fastcc noundef ptr @_ZL6ocreadP6Octreeiii(ptr noundef %0, i32 noundef %260, i32 noundef %261, i32 noundef %262)
  %273 = icmp eq ptr %272, null
  br i1 %273, label %592, label %274

274:                                              ; preds = %271
  %275 = sitofp i32 %260 to float
  %276 = sitofp i32 %261 to float
  %277 = sitofp i32 %262 to float
  %278 = fcmp olt float %245, %255
  %279 = select i1 %278, float %245, float %255
  %280 = select i1 %278, float %255, float %245
  %281 = fsub float %280, %275
  %282 = fmul float %281, 1.500000e+01
  %283 = fptosi float %282 to i32
  %284 = fsub float %279, %275
  %285 = fmul float %284, 1.500000e+01
  %286 = fptosi float %285 to i32
  %287 = icmp sgt i32 %283, 14
  %288 = add nsw i32 %283, 1
  %289 = shl nsw i32 -1, %288
  %290 = xor i32 %289, -1
  %291 = select i1 %287, i32 65535, i32 %290
  %292 = icmp sgt i32 %286, 0
  %293 = shl nsw i32 -1, %286
  %294 = add nsw i32 %293, 1
  %295 = select i1 %292, i32 %294, i32 0
  %296 = add i32 %295, %291
  %297 = fcmp olt float %249, %257
  %298 = select i1 %297, float %249, float %257
  %299 = select i1 %297, float %257, float %249
  %300 = fsub float %299, %276
  %301 = fmul float %300, 1.500000e+01
  %302 = fptosi float %301 to i32
  %303 = fsub float %298, %276
  %304 = fmul float %303, 1.500000e+01
  %305 = fptosi float %304 to i32
  %306 = icmp sgt i32 %302, 14
  %307 = add nsw i32 %302, 1
  %308 = shl nsw i32 -1, %307
  %309 = xor i32 %308, -1
  %310 = select i1 %306, i32 65535, i32 %309
  %311 = icmp sgt i32 %305, 0
  %312 = shl nsw i32 -1, %305
  %313 = add nsw i32 %312, 1
  %314 = select i1 %311, i32 %313, i32 0
  %315 = add i32 %314, %310
  %316 = fcmp olt float %253, %259
  %317 = select i1 %316, float %253, float %259
  %318 = select i1 %316, float %259, float %253
  %319 = fsub float %318, %277
  %320 = fmul float %319, 1.500000e+01
  %321 = fptosi float %320 to i32
  %322 = fsub float %317, %277
  %323 = fmul float %322, 1.500000e+01
  %324 = fptosi float %323 to i32
  %325 = icmp sgt i32 %321, 14
  %326 = add nsw i32 %321, 1
  %327 = shl nsw i32 -1, %326
  %328 = xor i32 %327, -1
  %329 = select i1 %325, i32 65535, i32 %328
  %330 = icmp sgt i32 %324, 0
  %331 = shl nsw i32 -1, %324
  %332 = add nsw i32 %331, 1
  %333 = select i1 %330, i32 %332, i32 0
  %334 = add i32 %333, %329
  %335 = zext i32 %334 to i48
  %336 = shl i48 %335, 32
  %337 = shl i32 %315, 16
  %338 = zext i32 %337 to i48
  %339 = or disjoint i48 %336, %338
  %340 = and i32 %296, 65535
  %341 = zext nneg i32 %340 to i48
  %342 = or disjoint i48 %339, %341
  %343 = tail call fastcc noundef i32 @_ZL8testnodeP6OctreeP5IsectP4Node5OcVal(ptr noundef nonnull %1, ptr noundef nonnull %272, i48 %342)
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %592, label %593

345:                                              ; preds = %238
  %346 = fsub float %245, %255
  %347 = fsub float %249, %257
  %348 = fsub float %253, %259
  %349 = fcmp olt float %346, 0xBE80000000000000
  br i1 %349, label %350, label %356

350:                                              ; preds = %345
  %351 = fdiv float -1.000000e+00, %346
  %352 = sitofp i32 %260 to float
  %353 = fsub float %352, %245
  %354 = fadd float %353, 1.000000e+00
  %355 = fmul float %351, %354
  br label %363

356:                                              ; preds = %345
  %357 = fcmp ogt float %346, 0x3E80000000000000
  br i1 %357, label %358, label %363

358:                                              ; preds = %356
  %359 = fdiv float 1.000000e+00, %346
  %360 = sitofp i32 %260 to float
  %361 = fsub float %245, %360
  %362 = fmul float %359, %361
  br label %363

363:                                              ; preds = %356, %358, %350
  %364 = phi i32 [ 1, %350 ], [ -1, %358 ], [ 0, %356 ]
  %365 = phi float [ %351, %350 ], [ %359, %358 ], [ 0.000000e+00, %356 ]
  %366 = phi float [ %355, %350 ], [ %362, %358 ], [ 1.000000e+00, %356 ]
  %367 = fcmp olt float %347, 0xBE80000000000000
  br i1 %367, label %368, label %374

368:                                              ; preds = %363
  %369 = fdiv float -1.000000e+00, %347
  %370 = sitofp i32 %261 to float
  %371 = fsub float %370, %249
  %372 = fadd float %371, 1.000000e+00
  %373 = fmul float %369, %372
  br label %381

374:                                              ; preds = %363
  %375 = fcmp ogt float %347, 0x3E80000000000000
  br i1 %375, label %376, label %381

376:                                              ; preds = %374
  %377 = fdiv float 1.000000e+00, %347
  %378 = sitofp i32 %261 to float
  %379 = fsub float %249, %378
  %380 = fmul float %377, %379
  br label %381

381:                                              ; preds = %374, %376, %368
  %382 = phi i32 [ 1, %368 ], [ -1, %376 ], [ 0, %374 ]
  %383 = phi float [ %369, %368 ], [ %377, %376 ], [ 0.000000e+00, %374 ]
  %384 = phi float [ %373, %368 ], [ %380, %376 ], [ 1.000000e+00, %374 ]
  %385 = fcmp olt float %348, 0xBE80000000000000
  br i1 %385, label %386, label %392

386:                                              ; preds = %381
  %387 = fdiv float -1.000000e+00, %348
  %388 = sitofp i32 %262 to float
  %389 = fsub float %388, %253
  %390 = fadd float %389, 1.000000e+00
  %391 = fmul float %387, %390
  br label %399

392:                                              ; preds = %381
  %393 = fcmp ogt float %348, 0x3E80000000000000
  br i1 %393, label %394, label %399

394:                                              ; preds = %392
  %395 = fdiv float 1.000000e+00, %348
  %396 = sitofp i32 %262 to float
  %397 = fsub float %253, %396
  %398 = fmul float %395, %397
  br label %399

399:                                              ; preds = %392, %394, %386
  %400 = phi i32 [ 1, %386 ], [ -1, %394 ], [ 0, %392 ]
  %401 = phi float [ %387, %386 ], [ %395, %394 ], [ 0.000000e+00, %392 ]
  %402 = phi float [ %391, %386 ], [ %398, %394 ], [ 1.000000e+00, %392 ]
  %403 = fcmp olt float %366, %384
  %404 = select i1 %403, float %366, float %384
  %405 = fcmp olt float %404, %402
  %406 = select i1 %405, float %404, float %402
  %407 = fsub float %221, %220
  br label %408

408:                                              ; preds = %575, %399
  %409 = phi float [ %253, %399 ], [ %503, %575 ]
  %410 = phi float [ %249, %399 ], [ %504, %575 ]
  %411 = phi float [ %245, %399 ], [ %505, %575 ]
  %412 = phi i32 [ %260, %399 ], [ %576, %575 ]
  %413 = phi i32 [ %261, %399 ], [ %577, %575 ]
  %414 = phi i32 [ %262, %399 ], [ %578, %575 ]
  %415 = phi float [ %406, %399 ], [ %585, %575 ]
  %416 = phi float [ %402, %399 ], [ %579, %575 ]
  %417 = phi i32 [ 0, %399 ], [ %506, %575 ]
  %418 = phi float [ %384, %399 ], [ %580, %575 ]
  %419 = phi float [ %366, %399 ], [ %581, %575 ]
  %420 = tail call fastcc noundef ptr @_ZL6ocreadP6Octreeiii(ptr noundef %0, i32 noundef %412, i32 noundef %413, i32 noundef %414)
  %421 = icmp eq ptr %420, null
  br i1 %421, label %502, label %422

422:                                              ; preds = %408
  %423 = fneg float %415
  %424 = tail call float @llvm.fmuladd.f32(float %423, float %346, float %245)
  %425 = tail call float @llvm.fmuladd.f32(float %423, float %347, float %249)
  %426 = tail call float @llvm.fmuladd.f32(float %423, float %348, float %253)
  %427 = sitofp i32 %412 to float
  %428 = sitofp i32 %413 to float
  %429 = sitofp i32 %414 to float
  %430 = fcmp olt float %411, %424
  %431 = select i1 %430, float %411, float %424
  %432 = select i1 %430, float %424, float %411
  %433 = fsub float %432, %427
  %434 = fmul float %433, 1.500000e+01
  %435 = fptosi float %434 to i32
  %436 = fsub float %431, %427
  %437 = fmul float %436, 1.500000e+01
  %438 = fptosi float %437 to i32
  %439 = icmp sgt i32 %435, 14
  %440 = add nsw i32 %435, 1
  %441 = shl nsw i32 -1, %440
  %442 = xor i32 %441, -1
  %443 = select i1 %439, i32 65535, i32 %442
  %444 = icmp sgt i32 %438, 0
  %445 = shl nsw i32 -1, %438
  %446 = add nsw i32 %445, 1
  %447 = select i1 %444, i32 %446, i32 0
  %448 = add i32 %447, %443
  %449 = fcmp olt float %410, %425
  %450 = select i1 %449, float %410, float %425
  %451 = select i1 %449, float %425, float %410
  %452 = fsub float %451, %428
  %453 = fmul float %452, 1.500000e+01
  %454 = fptosi float %453 to i32
  %455 = fsub float %450, %428
  %456 = fmul float %455, 1.500000e+01
  %457 = fptosi float %456 to i32
  %458 = icmp sgt i32 %454, 14
  %459 = add nsw i32 %454, 1
  %460 = shl nsw i32 -1, %459
  %461 = xor i32 %460, -1
  %462 = select i1 %458, i32 65535, i32 %461
  %463 = icmp sgt i32 %457, 0
  %464 = shl nsw i32 -1, %457
  %465 = add nsw i32 %464, 1
  %466 = select i1 %463, i32 %465, i32 0
  %467 = add i32 %466, %462
  %468 = fcmp olt float %409, %426
  %469 = select i1 %468, float %409, float %426
  %470 = select i1 %468, float %426, float %409
  %471 = fsub float %470, %429
  %472 = fmul float %471, 1.500000e+01
  %473 = fptosi float %472 to i32
  %474 = fsub float %469, %429
  %475 = fmul float %474, 1.500000e+01
  %476 = fptosi float %475 to i32
  %477 = icmp sgt i32 %473, 14
  %478 = add nsw i32 %473, 1
  %479 = shl nsw i32 -1, %478
  %480 = xor i32 %479, -1
  %481 = select i1 %477, i32 65535, i32 %480
  %482 = icmp sgt i32 %476, 0
  %483 = shl nsw i32 -1, %476
  %484 = add nsw i32 %483, 1
  %485 = select i1 %482, i32 %484, i32 0
  %486 = add i32 %485, %481
  %487 = zext i32 %486 to i48
  %488 = shl i48 %487, 32
  %489 = shl i32 %467, 16
  %490 = zext i32 %489 to i48
  %491 = or disjoint i48 %488, %490
  %492 = and i32 %448, 65535
  %493 = zext nneg i32 %492 to i48
  %494 = or disjoint i48 %491, %493
  %495 = tail call fastcc noundef i32 @_ZL8testnodeP6OctreeP5IsectP4Node5OcVal(ptr noundef nonnull %1, ptr noundef nonnull %420, i48 %494)
  %496 = icmp eq i32 %495, 0
  %497 = select i1 %496, i32 %417, i32 1
  %498 = load float, ptr %13, align 8, !tbaa !50
  %499 = tail call float @llvm.fmuladd.f32(float %415, float %407, float %220)
  %500 = fmul float %14, %499
  %501 = fcmp olt float %498, %500
  br i1 %501, label %589, label %502

502:                                              ; preds = %422, %408
  %503 = phi float [ %409, %408 ], [ %426, %422 ]
  %504 = phi float [ %410, %408 ], [ %425, %422 ]
  %505 = phi float [ %411, %408 ], [ %424, %422 ]
  %506 = phi i32 [ %417, %408 ], [ %497, %422 ]
  %507 = fcmp oeq float %419, %418
  %508 = zext i1 %507 to i32
  %509 = fcmp oeq float %418, %416
  %510 = select i1 %507, i32 3, i32 2
  %511 = select i1 %509, i32 %510, i32 %508
  %512 = fcmp oeq float %419, %416
  %513 = or disjoint i32 %511, 4
  %514 = select i1 %512, i32 %513, i32 %511
  switch i32 %514, label %542 [
    i32 0, label %552
    i32 7, label %515
    i32 1, label %522
    i32 2, label %532
  ]

515:                                              ; preds = %502
  %516 = add nsw i32 %412, %364
  %517 = fadd float %365, %419
  %518 = add nsw i32 %413, %382
  %519 = fadd float %383, %418
  %520 = add nsw i32 %414, %400
  %521 = fadd float %401, %416
  br label %575

522:                                              ; preds = %502
  %523 = fcmp olt float %418, %416
  br i1 %523, label %524, label %529

524:                                              ; preds = %522
  %525 = add nsw i32 %412, %364
  %526 = fadd float %365, %419
  %527 = add nsw i32 %413, %382
  %528 = fadd float %383, %418
  br label %575

529:                                              ; preds = %522
  %530 = add nsw i32 %414, %400
  %531 = fadd float %401, %416
  br label %575

532:                                              ; preds = %502
  %533 = fcmp olt float %419, %418
  br i1 %533, label %534, label %537

534:                                              ; preds = %532
  %535 = add nsw i32 %412, %364
  %536 = fadd float %365, %419
  br label %575

537:                                              ; preds = %532
  %538 = add nsw i32 %413, %382
  %539 = fadd float %383, %418
  %540 = add nsw i32 %414, %400
  %541 = fadd float %401, %416
  br label %575

542:                                              ; preds = %502
  %543 = fcmp olt float %418, %419
  br i1 %543, label %544, label %547

544:                                              ; preds = %542
  %545 = add nsw i32 %413, %382
  %546 = fadd float %383, %418
  br label %575

547:                                              ; preds = %542
  %548 = add nsw i32 %412, %364
  %549 = fadd float %365, %419
  %550 = add nsw i32 %414, %400
  %551 = fadd float %401, %416
  br label %575

552:                                              ; preds = %502
  %553 = fcmp olt float %419, %418
  %554 = zext i1 %553 to i32
  %555 = fcmp olt float %418, %416
  %556 = select i1 %553, i32 3, i32 2
  %557 = select i1 %555, i32 %556, i32 %554
  %558 = fcmp olt float %419, %416
  %559 = or disjoint i32 %557, 4
  %560 = select i1 %558, i32 %559, i32 %557
  %561 = and i32 %560, 5
  %562 = icmp eq i32 %561, 5
  br i1 %562, label %563, label %566

563:                                              ; preds = %552
  %564 = add nsw i32 %412, %364
  %565 = fadd float %365, %419
  br label %575

566:                                              ; preds = %552
  %567 = and i32 %560, 3
  %568 = icmp eq i32 %567, 2
  br i1 %568, label %569, label %572

569:                                              ; preds = %566
  %570 = add nsw i32 %413, %382
  %571 = fadd float %383, %418
  br label %575

572:                                              ; preds = %566
  %573 = add nsw i32 %414, %400
  %574 = fadd float %401, %416
  br label %575

575:                                              ; preds = %563, %572, %569, %515, %537, %534, %547, %544, %524, %529
  %576 = phi i32 [ %516, %515 ], [ %525, %524 ], [ %412, %529 ], [ %535, %534 ], [ %412, %537 ], [ %412, %544 ], [ %548, %547 ], [ %564, %563 ], [ %412, %569 ], [ %412, %572 ]
  %577 = phi i32 [ %518, %515 ], [ %527, %524 ], [ %413, %529 ], [ %413, %534 ], [ %538, %537 ], [ %545, %544 ], [ %413, %547 ], [ %413, %563 ], [ %570, %569 ], [ %413, %572 ]
  %578 = phi i32 [ %520, %515 ], [ %414, %524 ], [ %530, %529 ], [ %414, %534 ], [ %540, %537 ], [ %414, %544 ], [ %550, %547 ], [ %414, %563 ], [ %414, %569 ], [ %573, %572 ]
  %579 = phi float [ %521, %515 ], [ %416, %524 ], [ %531, %529 ], [ %416, %534 ], [ %541, %537 ], [ %416, %544 ], [ %551, %547 ], [ %416, %563 ], [ %416, %569 ], [ %574, %572 ]
  %580 = phi float [ %519, %515 ], [ %528, %524 ], [ %418, %529 ], [ %418, %534 ], [ %539, %537 ], [ %546, %544 ], [ %418, %547 ], [ %418, %563 ], [ %571, %569 ], [ %418, %572 ]
  %581 = phi float [ %517, %515 ], [ %526, %524 ], [ %419, %529 ], [ %536, %534 ], [ %419, %537 ], [ %419, %544 ], [ %549, %547 ], [ %565, %563 ], [ %419, %569 ], [ %419, %572 ]
  %582 = fcmp olt float %581, %580
  %583 = select i1 %582, float %581, float %580
  %584 = fcmp olt float %583, %579
  %585 = select i1 %584, float %583, float %579
  %586 = fcmp oeq float %585, %415
  %587 = fcmp oge float %415, 1.000000e+00
  %588 = or i1 %587, %586
  br i1 %588, label %589, label %408, !llvm.loop !56

589:                                              ; preds = %575, %422
  %590 = phi i1 [ false, %422 ], [ true, %575 ]
  %591 = phi i32 [ %497, %422 ], [ undef, %575 ]
  br i1 %590, label %592, label %593

592:                                              ; preds = %589, %271, %274
  br label %593

593:                                              ; preds = %274, %85, %152, %219, %187, %120, %53, %2, %589, %592
  %594 = phi i32 [ 0, %592 ], [ %591, %589 ], [ 0, %2 ], [ 0, %53 ], [ 0, %120 ], [ 0, %187 ], [ 0, %219 ], [ 0, %152 ], [ 0, %85 ], [ 1, %274 ]
  ret i32 %594
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @_ZL23RE_rayobject_octree_addP9RayObjectS0_(ptr nocapture noundef %0, ptr noundef %1) #2 {
  %3 = ptrtoint ptr %1 to i64
  %4 = and i64 %3, -4
  %5 = inttoptr i64 %4 to ptr
  %6 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 13
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 15
  %9 = load i32, ptr %8, align 4, !tbaa !47
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr %8, align 4, !tbaa !47
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds ptr, ptr %7, i64 %11
  store ptr %5, ptr %12, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL24RE_rayobject_octree_doneP9RayObject(ptr noundef %0) #0 {
  %2 = alloca [3 x float], align 4
  %3 = alloca [4 x [3 x float]], align 16
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [4 x [3 x i16]], align 16
  %9 = alloca [3 x i16], align 2
  %10 = alloca [3 x i16], align 2
  %11 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !44
  %13 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 7
  %14 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 7, i64 2
  store float 0x46293E5940000000, ptr %14, align 8, !tbaa !49
  %15 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 7, i64 1
  store float 0x46293E5940000000, ptr %15, align 4, !tbaa !49
  store float 0x46293E5940000000, ptr %13, align 8, !tbaa !49
  %16 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 8
  %17 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 8, i64 2
  store float 0xC6293E5940000000, ptr %17, align 4, !tbaa !49
  %18 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 8, i64 1
  store float 0xC6293E5940000000, ptr %18, align 4, !tbaa !49
  store float 0xC6293E5940000000, ptr %16, align 4, !tbaa !49
  %19 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 15
  %20 = load i32, ptr %19, align 4, !tbaa !47
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 13
  br label %24

24:                                               ; preds = %22, %24
  %25 = phi i64 [ 0, %22 ], [ %32, %24 ]
  %26 = load ptr, ptr %23, align 8, !tbaa !45
  %27 = getelementptr inbounds ptr, ptr %26, i64 %25
  %28 = load ptr, ptr %27, align 8, !tbaa !34
  %29 = ptrtoint ptr %28 to i64
  %30 = or i64 %29, 1
  %31 = inttoptr i64 %30 to ptr
  tail call void @RE_rayobject_merge_bb(ptr noundef nonnull %31, ptr noundef nonnull %13, ptr noundef nonnull %16)
  %32 = add nuw nsw i64 %25, 1
  %33 = load i32, ptr %19, align 4, !tbaa !47
  %34 = sext i32 %33 to i64
  %35 = icmp slt i64 %32, %34
  br i1 %35, label %24, label %36, !llvm.loop !59

36:                                               ; preds = %24, %1
  %37 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %38 = tail call ptr %37(i64 noundef 8192, ptr noundef nonnull @.str.2)
  %39 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 1
  store ptr %38, ptr %39, align 8, !tbaa !60
  %40 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %41 = tail call ptr %40(i64 noundef 32768, ptr noundef nonnull @.str.3)
  %42 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 2
  store ptr %41, ptr %42, align 8, !tbaa !61
  %43 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %44 = tail call ptr %43(i64 noundef 262144, ptr noundef nonnull @.str.4)
  %45 = load ptr, ptr %39, align 8, !tbaa !60
  store ptr %44, ptr %45, align 8, !tbaa !34
  %46 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %47 = mul i32 %12, 3
  %48 = mul i32 %47, %12
  %49 = add nuw nsw i32 %48, 8
  %50 = zext nneg i32 %49 to i64
  %51 = tail call ptr %46(i64 noundef %50, ptr noundef nonnull @.str.5)
  %52 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 12
  store ptr %51, ptr %52, align 8, !tbaa !62
  %53 = zext nneg i32 %48 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %51, i8 0, i64 %53, i1 false)
  br label %54

54:                                               ; preds = %36, %54
  %55 = phi i64 [ 0, %36 ], [ %62, %54 ]
  %56 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 7, i64 %55
  %57 = load float, ptr %56, align 4, !tbaa !49
  %58 = fadd float %57, 0xBF847AE140000000
  store float %58, ptr %56, align 4, !tbaa !49
  %59 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 8, i64 %55
  %60 = load float, ptr %59, align 4, !tbaa !49
  %61 = fadd float %60, 0x3F847AE140000000
  store float %61, ptr %59, align 4, !tbaa !49
  %62 = add nuw nsw i64 %55, 1
  %63 = icmp eq i64 %62, 3
  br i1 %63, label %64, label %54, !llvm.loop !63

64:                                               ; preds = %54
  %65 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 15
  %66 = load float, ptr %16, align 4, !tbaa !49
  %67 = load float, ptr %13, align 8, !tbaa !49
  %68 = fsub float %66, %67
  %69 = load float, ptr %18, align 4, !tbaa !49
  %70 = load float, ptr %15, align 4, !tbaa !49
  %71 = fsub float %69, %70
  %72 = load float, ptr %17, align 4, !tbaa !49
  %73 = load float, ptr %14, align 8, !tbaa !49
  %74 = fsub float %72, %73
  %75 = load i32, ptr %11, align 8, !tbaa !44
  %76 = sitofp i32 %75 to float
  %77 = fadd float %76, 0xBFB99999A0000000
  %78 = fdiv float %77, %68
  %79 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 4
  store float %78, ptr %79, align 4, !tbaa !53
  %80 = fdiv float %77, %71
  %81 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 5
  store float %80, ptr %81, align 8, !tbaa !54
  %82 = fdiv float %77, %74
  %83 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 6
  store float %82, ptr %83, align 4, !tbaa !55
  %84 = fmul float %71, %71
  %85 = tail call float @llvm.fmuladd.f32(float %68, float %68, float %84)
  %86 = tail call float @llvm.fmuladd.f32(float %74, float %74, float %85)
  %87 = tail call float @sqrtf(float noundef %86) #13
  %88 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 3
  store float %87, ptr %88, align 8, !tbaa !64
  %89 = load i32, ptr %65, align 4, !tbaa !47
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %697

91:                                               ; preds = %64
  %92 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 13
  %93 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 1
  %94 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 2
  %95 = getelementptr inbounds float, ptr %4, i64 1
  %96 = getelementptr inbounds float, ptr %4, i64 2
  %97 = getelementptr inbounds float, ptr %5, i64 1
  %98 = getelementptr inbounds float, ptr %5, i64 2
  %99 = getelementptr inbounds float, ptr %6, i64 1
  %100 = getelementptr inbounds float, ptr %6, i64 2
  %101 = getelementptr inbounds float, ptr %7, i64 1
  %102 = getelementptr inbounds float, ptr %7, i64 2
  %103 = getelementptr inbounds [3 x i16], ptr %9, i64 0, i64 1
  %104 = getelementptr inbounds [3 x i16], ptr %10, i64 0, i64 1
  %105 = getelementptr inbounds [3 x i16], ptr %9, i64 0, i64 2
  %106 = getelementptr inbounds [3 x i16], ptr %10, i64 0, i64 2
  %107 = getelementptr inbounds i16, ptr %9, i64 1
  %108 = getelementptr inbounds i16, ptr %10, i64 1
  %109 = getelementptr inbounds i16, ptr %9, i64 2
  %110 = getelementptr inbounds i16, ptr %10, i64 2
  %111 = getelementptr inbounds i16, ptr %9, i64 1
  %112 = getelementptr inbounds i16, ptr %10, i64 1
  %113 = getelementptr inbounds i16, ptr %9, i64 2
  %114 = getelementptr inbounds i16, ptr %10, i64 2
  %115 = getelementptr inbounds [3 x float], ptr %3, i64 1
  %116 = getelementptr inbounds [3 x float], ptr %3, i64 2
  %117 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %118 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %119 = getelementptr inbounds [3 x i16], ptr %9, i64 0, i64 2
  %120 = getelementptr inbounds [3 x i16], ptr %10, i64 0, i64 2
  %121 = getelementptr inbounds [3 x i16], ptr %9, i64 0, i64 2
  %122 = getelementptr inbounds [3 x i16], ptr %10, i64 0, i64 2
  br label %123

123:                                              ; preds = %91, %692
  %124 = phi i64 [ 0, %91 ], [ %693, %692 ]
  %125 = load ptr, ptr %92, align 8, !tbaa !45
  %126 = getelementptr inbounds ptr, ptr %125, i64 %124
  %127 = load ptr, ptr %126, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %10) #13
  %128 = load ptr, ptr %52, align 8, !tbaa !62
  %129 = load float, ptr %79, align 4, !tbaa !53
  store float %129, ptr %2, align 4, !tbaa !49
  %130 = load float, ptr %81, align 8, !tbaa !54
  store float %130, ptr %93, align 4, !tbaa !49
  %131 = load float, ptr %83, align 4, !tbaa !55
  store float %131, ptr %94, align 4, !tbaa !49
  %132 = load i32, ptr %11, align 8, !tbaa !44
  %133 = mul nsw i32 %132, %132
  %134 = load float, ptr %127, align 4, !tbaa !49
  store float %134, ptr %4, align 4, !tbaa !49
  %135 = getelementptr inbounds float, ptr %127, i64 1
  %136 = load float, ptr %135, align 4, !tbaa !49
  store float %136, ptr %95, align 4, !tbaa !49
  %137 = getelementptr inbounds float, ptr %127, i64 2
  %138 = load float, ptr %137, align 4, !tbaa !49
  store float %138, ptr %96, align 4, !tbaa !49
  %139 = getelementptr inbounds %struct.RayFace, ptr %127, i64 0, i32 1
  %140 = load float, ptr %139, align 4, !tbaa !49
  store float %140, ptr %5, align 4, !tbaa !49
  %141 = getelementptr inbounds %struct.RayFace, ptr %127, i64 0, i32 1, i64 1
  %142 = load float, ptr %141, align 4, !tbaa !49
  store float %142, ptr %97, align 4, !tbaa !49
  %143 = getelementptr inbounds %struct.RayFace, ptr %127, i64 0, i32 1, i64 2
  %144 = load float, ptr %143, align 4, !tbaa !49
  store float %144, ptr %98, align 4, !tbaa !49
  %145 = getelementptr inbounds %struct.RayFace, ptr %127, i64 0, i32 2
  %146 = load float, ptr %145, align 4, !tbaa !49
  store float %146, ptr %6, align 4, !tbaa !49
  %147 = getelementptr inbounds %struct.RayFace, ptr %127, i64 0, i32 2, i64 1
  %148 = load float, ptr %147, align 4, !tbaa !49
  store float %148, ptr %99, align 4, !tbaa !49
  %149 = getelementptr inbounds %struct.RayFace, ptr %127, i64 0, i32 2, i64 2
  %150 = load float, ptr %149, align 4, !tbaa !49
  store float %150, ptr %100, align 4, !tbaa !49
  %151 = getelementptr inbounds %struct.RayFace, ptr %127, i64 0, i32 4
  %152 = load i32, ptr %151, align 4, !tbaa !65
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %155, %123
  br label %165

155:                                              ; preds = %123
  %156 = getelementptr inbounds %struct.RayFace, ptr %127, i64 0, i32 3
  %157 = load float, ptr %156, align 4, !tbaa !49
  store float %157, ptr %7, align 4, !tbaa !49
  %158 = getelementptr inbounds %struct.RayFace, ptr %127, i64 0, i32 3, i64 1
  %159 = load float, ptr %158, align 4, !tbaa !49
  store float %159, ptr %101, align 4, !tbaa !49
  %160 = getelementptr inbounds %struct.RayFace, ptr %127, i64 0, i32 3, i64 2
  %161 = load float, ptr %160, align 4, !tbaa !49
  store float %161, ptr %102, align 4, !tbaa !49
  br label %154

162:                                              ; preds = %200
  %163 = trunc i32 %132 to i16
  %164 = add i16 %163, -1
  br label %203

165:                                              ; preds = %154, %200
  %166 = phi i64 [ %201, %200 ], [ 0, %154 ]
  %167 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 %166
  %168 = load float, ptr %167, align 4, !tbaa !49
  %169 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 7, i64 %166
  %170 = load float, ptr %169, align 4, !tbaa !49
  %171 = fsub float %168, %170
  %172 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 %166
  %173 = load float, ptr %172, align 4, !tbaa !49
  %174 = fmul float %171, %173
  %175 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 %166
  store float %174, ptr %175, align 4, !tbaa !49
  %176 = fptosi float %174 to i16
  %177 = getelementptr inbounds [3 x i16], ptr %8, i64 0, i64 %166
  store i16 %176, ptr %177, align 2, !tbaa !67
  %178 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %166
  %179 = load float, ptr %178, align 4, !tbaa !49
  %180 = fsub float %179, %170
  %181 = fmul float %173, %180
  %182 = getelementptr inbounds [4 x [3 x float]], ptr %3, i64 0, i64 1, i64 %166
  store float %181, ptr %182, align 4, !tbaa !49
  %183 = fptosi float %181 to i16
  %184 = getelementptr inbounds [4 x [3 x i16]], ptr %8, i64 0, i64 1, i64 %166
  store i16 %183, ptr %184, align 2, !tbaa !67
  %185 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %166
  %186 = load float, ptr %185, align 4, !tbaa !49
  %187 = fsub float %186, %170
  %188 = fmul float %173, %187
  %189 = getelementptr inbounds [4 x [3 x float]], ptr %3, i64 0, i64 2, i64 %166
  store float %188, ptr %189, align 4, !tbaa !49
  %190 = fptosi float %188 to i16
  %191 = getelementptr inbounds [4 x [3 x i16]], ptr %8, i64 0, i64 2, i64 %166
  store i16 %190, ptr %191, align 2, !tbaa !67
  br i1 %153, label %200, label %192

192:                                              ; preds = %165
  %193 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 %166
  %194 = load float, ptr %193, align 4, !tbaa !49
  %195 = fsub float %194, %170
  %196 = fmul float %173, %195
  %197 = getelementptr inbounds [4 x [3 x float]], ptr %3, i64 0, i64 3, i64 %166
  store float %196, ptr %197, align 4, !tbaa !49
  %198 = fptosi float %196 to i16
  %199 = getelementptr inbounds [4 x [3 x i16]], ptr %8, i64 0, i64 3, i64 %166
  store i16 %198, ptr %199, align 2, !tbaa !67
  br label %200

200:                                              ; preds = %192, %165
  %201 = add nuw nsw i64 %166, 1
  %202 = icmp eq i64 %201, 3
  br i1 %202, label %162, label %165, !llvm.loop !69

203:                                              ; preds = %162, %233
  %204 = phi i64 [ 0, %162 ], [ %244, %233 ]
  %205 = getelementptr inbounds [3 x i16], ptr %8, i64 0, i64 %204
  %206 = load i16, ptr %205, align 2, !tbaa !67
  %207 = sext i16 %206 to i32
  %208 = getelementptr inbounds [4 x [3 x i16]], ptr %8, i64 0, i64 1, i64 %204
  %209 = load i16, ptr %208, align 2, !tbaa !67
  %210 = sext i16 %209 to i32
  %211 = getelementptr inbounds [4 x [3 x i16]], ptr %8, i64 0, i64 2, i64 %204
  %212 = load i16, ptr %211, align 2, !tbaa !67
  %213 = sext i16 %212 to i32
  br i1 %153, label %214, label %221

214:                                              ; preds = %203
  %215 = call noundef i32 @llvm.smin.i32(i32 %207, i32 %210)
  %216 = call noundef i32 @llvm.smin.i32(i32 %215, i32 %213)
  %217 = trunc i32 %216 to i16
  %218 = getelementptr inbounds [3 x i16], ptr %9, i64 0, i64 %204
  store i16 %217, ptr %218, align 2, !tbaa !67
  %219 = call noundef i32 @llvm.smax.i32(i32 %210, i32 %207)
  %220 = call noundef i32 @llvm.smax.i32(i32 %213, i32 %219)
  br label %233

221:                                              ; preds = %203
  %222 = getelementptr inbounds [4 x [3 x i16]], ptr %8, i64 0, i64 3, i64 %204
  %223 = load i16, ptr %222, align 2, !tbaa !67
  %224 = sext i16 %223 to i32
  %225 = call noundef i32 @llvm.smin.i32(i32 %207, i32 %210)
  %226 = call noundef i32 @llvm.smin.i32(i32 %225, i32 %213)
  %227 = call noundef i32 @llvm.smin.i32(i32 %226, i32 %224)
  %228 = trunc i32 %227 to i16
  %229 = getelementptr inbounds [3 x i16], ptr %9, i64 0, i64 %204
  store i16 %228, ptr %229, align 2, !tbaa !67
  %230 = call noundef i32 @llvm.smax.i32(i32 %210, i32 %207)
  %231 = call noundef i32 @llvm.smax.i32(i32 %213, i32 %230)
  %232 = call noundef i32 @llvm.smax.i32(i32 %224, i32 %231)
  br label %233

233:                                              ; preds = %221, %214
  %234 = phi i32 [ %232, %221 ], [ %220, %214 ]
  %235 = trunc i32 %234 to i16
  %236 = getelementptr inbounds [3 x i16], ptr %10, i64 0, i64 %204
  %237 = shl i32 %234, 16
  %238 = ashr exact i32 %237, 16
  %239 = icmp sgt i32 %132, %238
  %240 = select i1 %239, i16 %235, i16 %164
  store i16 %240, ptr %236, align 2
  %241 = getelementptr inbounds [3 x i16], ptr %9, i64 0, i64 %204
  %242 = load i16, ptr %241, align 2, !tbaa !67
  %243 = call i16 @llvm.smax.i16(i16 %242, i16 0)
  store i16 %243, ptr %241, align 2
  %244 = add nuw nsw i64 %204, 1
  %245 = icmp eq i64 %244, 3
  br i1 %245, label %246, label %203, !llvm.loop !70

246:                                              ; preds = %233
  %247 = load i16, ptr %9, align 2, !tbaa !67
  %248 = load i16, ptr %10, align 2, !tbaa !67
  %249 = icmp eq i16 %247, %248
  br i1 %249, label %250, label %259

250:                                              ; preds = %246
  %251 = load i16, ptr %103, align 2, !tbaa !67
  %252 = load i16, ptr %104, align 2, !tbaa !67
  %253 = icmp eq i16 %251, %252
  br i1 %253, label %254, label %259

254:                                              ; preds = %250
  %255 = load i16, ptr %105, align 2, !tbaa !67
  %256 = load i16, ptr %106, align 2, !tbaa !67
  %257 = icmp eq i16 %255, %256
  br i1 %257, label %258, label %259

258:                                              ; preds = %254
  call fastcc void @_ZL7ocwriteP6OctreeP7RayFaceisssPA3_f(ptr noundef %0, ptr noundef nonnull %127, i32 noundef %152, i16 noundef signext %247, i16 noundef signext %251, i16 noundef signext %255, ptr noundef nonnull %3)
  br label %692

259:                                              ; preds = %254, %250, %246
  %260 = zext nneg i32 %133 to i64
  %261 = getelementptr inbounds i8, ptr %128, i64 %260
  call fastcc void @_ZL5d2ddaP6OctreessssPcPA3_sPA3_f(ptr noundef %0, i16 noundef signext 0, i16 noundef signext 1, i16 noundef signext 0, i16 noundef signext 1, ptr noundef %261, ptr noundef nonnull %8, ptr noundef nonnull %3)
  call fastcc void @_ZL5d2ddaP6OctreessssPcPA3_sPA3_f(ptr noundef %0, i16 noundef signext 0, i16 noundef signext 1, i16 noundef signext 0, i16 noundef signext 2, ptr noundef %128, ptr noundef nonnull %8, ptr noundef nonnull %3)
  %262 = shl nuw nsw i32 %133, 1
  %263 = zext nneg i32 %262 to i64
  %264 = getelementptr inbounds i8, ptr %128, i64 %263
  call fastcc void @_ZL5d2ddaP6OctreessssPcPA3_sPA3_f(ptr noundef %0, i16 noundef signext 0, i16 noundef signext 1, i16 noundef signext 1, i16 noundef signext 2, ptr noundef %264, ptr noundef nonnull %8, ptr noundef nonnull %3)
  call fastcc void @_ZL5d2ddaP6OctreessssPcPA3_sPA3_f(ptr noundef %0, i16 noundef signext 1, i16 noundef signext 2, i16 noundef signext 0, i16 noundef signext 1, ptr noundef %261, ptr noundef nonnull %8, ptr noundef nonnull %3)
  call fastcc void @_ZL5d2ddaP6OctreessssPcPA3_sPA3_f(ptr noundef %0, i16 noundef signext 1, i16 noundef signext 2, i16 noundef signext 0, i16 noundef signext 2, ptr noundef %128, ptr noundef nonnull %8, ptr noundef nonnull %3)
  call fastcc void @_ZL5d2ddaP6OctreessssPcPA3_sPA3_f(ptr noundef %0, i16 noundef signext 1, i16 noundef signext 2, i16 noundef signext 1, i16 noundef signext 2, ptr noundef %264, ptr noundef nonnull %8, ptr noundef nonnull %3)
  %265 = load i32, ptr %151, align 4, !tbaa !65
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %268, label %267

267:                                              ; preds = %259
  call fastcc void @_ZL5d2ddaP6OctreessssPcPA3_sPA3_f(ptr noundef %0, i16 noundef signext 2, i16 noundef signext 3, i16 noundef signext 0, i16 noundef signext 1, ptr noundef %261, ptr noundef nonnull %8, ptr noundef nonnull %3)
  call fastcc void @_ZL5d2ddaP6OctreessssPcPA3_sPA3_f(ptr noundef %0, i16 noundef signext 2, i16 noundef signext 3, i16 noundef signext 0, i16 noundef signext 2, ptr noundef %128, ptr noundef nonnull %8, ptr noundef nonnull %3)
  call fastcc void @_ZL5d2ddaP6OctreessssPcPA3_sPA3_f(ptr noundef %0, i16 noundef signext 2, i16 noundef signext 3, i16 noundef signext 1, i16 noundef signext 2, ptr noundef %264, ptr noundef nonnull %8, ptr noundef nonnull %3)
  br label %268

268:                                              ; preds = %259, %267
  %269 = phi i16 [ 3, %267 ], [ 2, %259 ]
  call fastcc void @_ZL5d2ddaP6OctreessssPcPA3_sPA3_f(ptr noundef %0, i16 noundef signext %269, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 1, ptr noundef %261, ptr noundef nonnull %8, ptr noundef nonnull %3)
  call fastcc void @_ZL5d2ddaP6OctreessssPcPA3_sPA3_f(ptr noundef %0, i16 noundef signext %269, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 2, ptr noundef %128, ptr noundef nonnull %8, ptr noundef nonnull %3)
  call fastcc void @_ZL5d2ddaP6OctreessssPcPA3_sPA3_f(ptr noundef %0, i16 noundef signext %269, i16 noundef signext 0, i16 noundef signext 1, i16 noundef signext 2, ptr noundef %264, ptr noundef nonnull %8, ptr noundef nonnull %3)
  %270 = icmp sgt i16 %247, %248
  br i1 %270, label %413, label %271

271:                                              ; preds = %268
  %272 = sext i16 %247 to i32
  %273 = load i16, ptr %107, align 2, !tbaa !67
  %274 = load i16, ptr %108, align 2, !tbaa !67
  %275 = icmp sgt i16 %273, %274
  %276 = sext i16 %248 to i32
  %277 = sext i16 %274 to i32
  %278 = sext i16 %273 to i32
  br label %279

279:                                              ; preds = %339, %271
  %280 = phi i32 [ %272, %271 ], [ %340, %339 ]
  %281 = load i32, ptr %11, align 8, !tbaa !44
  %282 = mul i32 %281, %280
  br i1 %275, label %339, label %283

283:                                              ; preds = %279
  %284 = sext i32 %282 to i64
  %285 = add i32 %282, 1
  %286 = getelementptr i8, ptr %261, i64 %284
  br label %287

287:                                              ; preds = %335, %283
  %288 = phi i32 [ %337, %335 ], [ %278, %283 ]
  %289 = add nsw i32 %288, %282
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i8, ptr %261, i64 %290
  %292 = load i8, ptr %291, align 1, !tbaa !71
  %293 = icmp eq i8 %292, 0
  br i1 %293, label %335, label %294

294:                                              ; preds = %287
  %295 = sext i32 %288 to i64
  br label %296

296:                                              ; preds = %296, %294
  %297 = phi i64 [ 0, %294 ], [ %306, %296 ]
  %298 = phi i64 [ %295, %294 ], [ %299, %296 ]
  %299 = add nsw i64 %298, 1
  %300 = getelementptr i8, ptr %286, i64 %299
  %301 = load i8, ptr %300, align 1, !tbaa !71
  %302 = icmp eq i8 %301, 0
  %303 = trunc i64 %299 to i32
  %304 = icmp eq i32 %277, %303
  %305 = or i1 %302, %304
  %306 = add nuw nsw i64 %297, 1
  br i1 %305, label %307, label %296, !llvm.loop !72

307:                                              ; preds = %296
  %308 = trunc i64 %298 to i32
  %309 = icmp sgt i32 %277, %303
  br i1 %309, label %310, label %335

310:                                              ; preds = %307
  %311 = add i32 %285, %288
  %312 = sext i32 %311 to i64
  %313 = getelementptr i8, ptr %261, i64 %297
  %314 = getelementptr i8, ptr %313, i64 %312
  %315 = xor i32 %288, -1
  %316 = trunc i64 %297 to i32
  %317 = sub i32 %315, %316
  br label %318

318:                                              ; preds = %331, %310
  %319 = phi i32 [ %333, %331 ], [ %277, %310 ]
  %320 = add nsw i32 %319, %282
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i8, ptr %261, i64 %321
  %323 = load i8, ptr %322, align 1, !tbaa !71
  %324 = icmp eq i8 %323, 0
  br i1 %324, label %331, label %325

325:                                              ; preds = %318
  %326 = icmp sgt i32 %319, %308
  br i1 %326, label %327, label %331

327:                                              ; preds = %325
  %328 = add i32 %317, %319
  %329 = zext i32 %328 to i64
  %330 = add nuw nsw i64 %329, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %314, i8 1, i64 %330, i1 false), !tbaa !71
  br label %331

331:                                              ; preds = %327, %325, %318
  %332 = phi i32 [ %319, %318 ], [ 0, %325 ], [ 0, %327 ]
  %333 = add nsw i32 %332, -1
  %334 = icmp sgt i32 %333, %303
  br i1 %334, label %318, label %335, !llvm.loop !73

335:                                              ; preds = %331, %307, %287
  %336 = phi i32 [ %288, %287 ], [ %277, %307 ], [ %277, %331 ]
  %337 = add nsw i32 %336, 1
  %338 = icmp slt i32 %336, %277
  br i1 %338, label %287, label %339, !llvm.loop !74

339:                                              ; preds = %335, %279
  %340 = add nsw i32 %280, 1
  %341 = icmp eq i32 %280, %276
  br i1 %341, label %342, label %279, !llvm.loop !75

342:                                              ; preds = %339
  br i1 %270, label %413, label %343

343:                                              ; preds = %342
  %344 = sext i16 %247 to i32
  %345 = load i16, ptr %109, align 2, !tbaa !67
  %346 = load i16, ptr %110, align 2, !tbaa !67
  %347 = icmp sgt i16 %345, %346
  %348 = sext i16 %346 to i32
  %349 = sext i16 %345 to i32
  br label %350

350:                                              ; preds = %410, %343
  %351 = phi i32 [ %344, %343 ], [ %411, %410 ]
  %352 = load i32, ptr %11, align 8, !tbaa !44
  %353 = mul i32 %352, %351
  br i1 %347, label %410, label %354

354:                                              ; preds = %350
  %355 = sext i32 %353 to i64
  %356 = add i32 %353, 1
  %357 = getelementptr i8, ptr %128, i64 %355
  br label %358

358:                                              ; preds = %406, %354
  %359 = phi i32 [ %408, %406 ], [ %349, %354 ]
  %360 = add nsw i32 %359, %353
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i8, ptr %128, i64 %361
  %363 = load i8, ptr %362, align 1, !tbaa !71
  %364 = icmp eq i8 %363, 0
  br i1 %364, label %406, label %365

365:                                              ; preds = %358
  %366 = sext i32 %359 to i64
  br label %367

367:                                              ; preds = %367, %365
  %368 = phi i64 [ 0, %365 ], [ %377, %367 ]
  %369 = phi i64 [ %366, %365 ], [ %370, %367 ]
  %370 = add nsw i64 %369, 1
  %371 = getelementptr i8, ptr %357, i64 %370
  %372 = load i8, ptr %371, align 1, !tbaa !71
  %373 = icmp eq i8 %372, 0
  %374 = trunc i64 %370 to i32
  %375 = icmp eq i32 %348, %374
  %376 = or i1 %373, %375
  %377 = add nuw nsw i64 %368, 1
  br i1 %376, label %378, label %367, !llvm.loop !72

378:                                              ; preds = %367
  %379 = trunc i64 %369 to i32
  %380 = icmp sgt i32 %348, %374
  br i1 %380, label %381, label %406

381:                                              ; preds = %378
  %382 = add i32 %356, %359
  %383 = sext i32 %382 to i64
  %384 = getelementptr i8, ptr %128, i64 %368
  %385 = getelementptr i8, ptr %384, i64 %383
  %386 = xor i32 %359, -1
  %387 = trunc i64 %368 to i32
  %388 = sub i32 %386, %387
  br label %389

389:                                              ; preds = %402, %381
  %390 = phi i32 [ %404, %402 ], [ %348, %381 ]
  %391 = add nsw i32 %390, %353
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i8, ptr %128, i64 %392
  %394 = load i8, ptr %393, align 1, !tbaa !71
  %395 = icmp eq i8 %394, 0
  br i1 %395, label %402, label %396

396:                                              ; preds = %389
  %397 = icmp sgt i32 %390, %379
  br i1 %397, label %398, label %402

398:                                              ; preds = %396
  %399 = add i32 %388, %390
  %400 = zext i32 %399 to i64
  %401 = add nuw nsw i64 %400, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %385, i8 1, i64 %401, i1 false), !tbaa !71
  br label %402

402:                                              ; preds = %398, %396, %389
  %403 = phi i32 [ %390, %389 ], [ 0, %396 ], [ 0, %398 ]
  %404 = add nsw i32 %403, -1
  %405 = icmp sgt i32 %404, %374
  br i1 %405, label %389, label %406, !llvm.loop !73

406:                                              ; preds = %402, %378, %358
  %407 = phi i32 [ %359, %358 ], [ %348, %378 ], [ %348, %402 ]
  %408 = add nsw i32 %407, 1
  %409 = icmp slt i32 %407, %348
  br i1 %409, label %358, label %410, !llvm.loop !74

410:                                              ; preds = %406, %350
  %411 = add nsw i32 %351, 1
  %412 = icmp eq i32 %351, %276
  br i1 %412, label %413, label %350, !llvm.loop !75

413:                                              ; preds = %410, %268, %342
  %414 = load i16, ptr %111, align 2, !tbaa !67
  %415 = load i16, ptr %112, align 2, !tbaa !67
  %416 = icmp sgt i16 %414, %415
  br i1 %416, label %488, label %417

417:                                              ; preds = %413
  %418 = sext i16 %414 to i32
  %419 = load i16, ptr %113, align 2, !tbaa !67
  %420 = load i16, ptr %114, align 2, !tbaa !67
  %421 = icmp sgt i16 %419, %420
  %422 = sext i16 %415 to i32
  %423 = sext i16 %420 to i32
  %424 = sext i16 %419 to i32
  br label %425

425:                                              ; preds = %485, %417
  %426 = phi i32 [ %418, %417 ], [ %486, %485 ]
  %427 = load i32, ptr %11, align 8, !tbaa !44
  %428 = mul i32 %427, %426
  br i1 %421, label %485, label %429

429:                                              ; preds = %425
  %430 = sext i32 %428 to i64
  %431 = add i32 %428, 1
  %432 = getelementptr i8, ptr %264, i64 %430
  br label %433

433:                                              ; preds = %481, %429
  %434 = phi i32 [ %483, %481 ], [ %424, %429 ]
  %435 = add nsw i32 %434, %428
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds i8, ptr %264, i64 %436
  %438 = load i8, ptr %437, align 1, !tbaa !71
  %439 = icmp eq i8 %438, 0
  br i1 %439, label %481, label %440

440:                                              ; preds = %433
  %441 = sext i32 %434 to i64
  br label %442

442:                                              ; preds = %442, %440
  %443 = phi i64 [ 0, %440 ], [ %452, %442 ]
  %444 = phi i64 [ %441, %440 ], [ %445, %442 ]
  %445 = add nsw i64 %444, 1
  %446 = getelementptr i8, ptr %432, i64 %445
  %447 = load i8, ptr %446, align 1, !tbaa !71
  %448 = icmp eq i8 %447, 0
  %449 = trunc i64 %445 to i32
  %450 = icmp eq i32 %423, %449
  %451 = or i1 %448, %450
  %452 = add nuw nsw i64 %443, 1
  br i1 %451, label %453, label %442, !llvm.loop !72

453:                                              ; preds = %442
  %454 = trunc i64 %444 to i32
  %455 = icmp sgt i32 %423, %449
  br i1 %455, label %456, label %481

456:                                              ; preds = %453
  %457 = add i32 %431, %434
  %458 = sext i32 %457 to i64
  %459 = getelementptr i8, ptr %264, i64 %443
  %460 = getelementptr i8, ptr %459, i64 %458
  %461 = xor i32 %434, -1
  %462 = trunc i64 %443 to i32
  %463 = sub i32 %461, %462
  br label %464

464:                                              ; preds = %477, %456
  %465 = phi i32 [ %479, %477 ], [ %423, %456 ]
  %466 = add nsw i32 %465, %428
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds i8, ptr %264, i64 %467
  %469 = load i8, ptr %468, align 1, !tbaa !71
  %470 = icmp eq i8 %469, 0
  br i1 %470, label %477, label %471

471:                                              ; preds = %464
  %472 = icmp sgt i32 %465, %454
  br i1 %472, label %473, label %477

473:                                              ; preds = %471
  %474 = add i32 %463, %465
  %475 = zext i32 %474 to i64
  %476 = add nuw nsw i64 %475, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %460, i8 1, i64 %476, i1 false), !tbaa !71
  br label %477

477:                                              ; preds = %473, %471, %464
  %478 = phi i32 [ %465, %464 ], [ 0, %471 ], [ 0, %473 ]
  %479 = add nsw i32 %478, -1
  %480 = icmp sgt i32 %479, %449
  br i1 %480, label %464, label %481, !llvm.loop !73

481:                                              ; preds = %477, %453, %433
  %482 = phi i32 [ %434, %433 ], [ %423, %453 ], [ %423, %477 ]
  %483 = add nsw i32 %482, 1
  %484 = icmp slt i32 %482, %423
  br i1 %484, label %433, label %485, !llvm.loop !74

485:                                              ; preds = %481, %425
  %486 = add nsw i32 %426, 1
  %487 = icmp eq i32 %426, %422
  br i1 %487, label %488, label %425, !llvm.loop !75

488:                                              ; preds = %485, %413
  %489 = call float @normal_tri_v3(ptr noundef nonnull @_ZZL12face_in_nodeP7RayFacesssPA3_fE3nor, ptr noundef nonnull %3, ptr noundef nonnull %115, ptr noundef nonnull %116)
  %490 = load float, ptr @_ZZL12face_in_nodeP7RayFacesssPA3_fE3nor, align 4, !tbaa !49
  %491 = fneg float %490
  %492 = load float, ptr %3, align 16, !tbaa !49
  %493 = load float, ptr getelementptr inbounds ([3 x float], ptr @_ZZL12face_in_nodeP7RayFacesssPA3_fE3nor, i64 0, i64 1), align 4, !tbaa !49
  %494 = load float, ptr %117, align 4, !tbaa !49
  %495 = fneg float %493
  %496 = fmul float %494, %495
  %497 = call float @llvm.fmuladd.f32(float %491, float %492, float %496)
  %498 = load float, ptr getelementptr inbounds ([3 x float], ptr @_ZZL12face_in_nodeP7RayFacesssPA3_fE3nor, i64 0, i64 2), align 4, !tbaa !49
  %499 = load float, ptr %118, align 8, !tbaa !49
  %500 = fneg float %498
  %501 = call float @llvm.fmuladd.f32(float %500, float %499, float %497)
  store float %501, ptr @_ZZL12face_in_nodeP7RayFacesssPA3_fE1d, align 4, !tbaa !49
  %502 = sext i16 %247 to i32
  %503 = sext i16 %248 to i32
  %504 = icmp sgt i16 %247, %248
  br i1 %504, label %516, label %505

505:                                              ; preds = %488
  %506 = icmp sgt i16 %414, %415
  %507 = load i16, ptr %119, align 2
  %508 = load i16, ptr %120, align 2
  %509 = icmp sgt i16 %507, %508
  %510 = sext i16 %507 to i64
  %511 = call i16 @llvm.smax.i16(i16 %507, i16 %508)
  %512 = sext i16 %511 to i64
  %513 = sext i16 %414 to i64
  %514 = call i16 @llvm.smax.i16(i16 %414, i16 %415)
  %515 = sext i16 %514 to i64
  br label %529

516:                                              ; preds = %656, %488
  %517 = icmp sgt i16 %247, %248
  br i1 %517, label %692, label %518

518:                                              ; preds = %516
  %519 = icmp sgt i16 %414, %415
  %520 = load i16, ptr %121, align 2
  %521 = load i16, ptr %122, align 2
  %522 = icmp sgt i16 %520, %521
  %523 = sext i16 %520 to i64
  %524 = call i16 @llvm.smax.i16(i16 %520, i16 %521)
  %525 = sext i16 %524 to i64
  %526 = sext i16 %414 to i64
  %527 = call i16 @llvm.smax.i16(i16 %414, i16 %415)
  %528 = sext i16 %527 to i64
  br label %659

529:                                              ; preds = %505, %656
  %530 = phi i32 [ %502, %505 ], [ %657, %656 ]
  br i1 %506, label %656, label %531

531:                                              ; preds = %529
  %532 = load i32, ptr %11, align 8, !tbaa !44
  %533 = mul nsw i32 %532, %530
  %534 = add i32 %533, %133
  %535 = trunc i32 %530 to i16
  %536 = sitofp i16 %535 to float
  %537 = fadd float %536, 1.000000e+00
  %538 = fadd float %536, 1.000000e+00
  %539 = sext i32 %533 to i64
  %540 = getelementptr i8, ptr %128, i64 %539
  br label %541

541:                                              ; preds = %531, %653
  %542 = phi i64 [ %513, %531 ], [ %654, %653 ]
  %543 = trunc i64 %542 to i32
  %544 = add i32 %534, %543
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds i8, ptr %128, i64 %545
  %547 = load i8, ptr %546, align 1, !tbaa !71
  %548 = icmp eq i8 %547, 0
  %549 = select i1 %548, i1 true, i1 %509
  br i1 %549, label %653, label %550

550:                                              ; preds = %541
  %551 = load i32, ptr %11, align 8, !tbaa !44
  %552 = trunc i64 %542 to i32
  %553 = mul nsw i32 %551, %552
  %554 = add nsw i32 %553, %262
  %555 = trunc i64 %542 to i16
  %556 = sitofp i16 %555 to float
  %557 = fadd float %556, 1.000000e+00
  %558 = fadd float %556, 1.000000e+00
  %559 = sext i32 %554 to i64
  %560 = getelementptr i8, ptr %128, i64 %559
  br label %561

561:                                              ; preds = %550, %650
  %562 = phi i64 [ %510, %550 ], [ %651, %650 ]
  %563 = getelementptr i8, ptr %560, i64 %562
  %564 = load i8, ptr %563, align 1, !tbaa !71
  %565 = icmp eq i8 %564, 0
  br i1 %565, label %650, label %566

566:                                              ; preds = %561
  %567 = getelementptr i8, ptr %540, i64 %562
  %568 = load i8, ptr %567, align 1, !tbaa !71
  %569 = icmp eq i8 %568, 0
  br i1 %569, label %650, label %570

570:                                              ; preds = %566
  %571 = trunc i64 %562 to i16
  %572 = sitofp i16 %571 to float
  %573 = load float, ptr @_ZZL12face_in_nodeP7RayFacesssPA3_fE3nor, align 4, !tbaa !49
  %574 = load float, ptr getelementptr inbounds ([3 x float], ptr @_ZZL12face_in_nodeP7RayFacesssPA3_fE3nor, i64 0, i64 1), align 4, !tbaa !49
  %575 = fmul float %574, %556
  %576 = call float @llvm.fmuladd.f32(float %536, float %573, float %575)
  %577 = load float, ptr getelementptr inbounds ([3 x float], ptr @_ZZL12face_in_nodeP7RayFacesssPA3_fE3nor, i64 0, i64 2), align 4, !tbaa !49
  %578 = call float @llvm.fmuladd.f32(float %572, float %577, float %576)
  %579 = load float, ptr @_ZZL12face_in_nodeP7RayFacesssPA3_fE1d, align 4, !tbaa !49
  %580 = fadd float %579, %578
  %581 = fcmp ogt float %580, 0.000000e+00
  br i1 %581, label %582, label %615

582:                                              ; preds = %570
  %583 = call float @llvm.fmuladd.f32(float %538, float %573, float %575)
  %584 = call float @llvm.fmuladd.f32(float %572, float %577, float %583)
  %585 = fadd float %579, %584
  %586 = fcmp olt float %585, 0.000000e+00
  br i1 %586, label %648, label %587

587:                                              ; preds = %582
  %588 = fmul float %558, %574
  %589 = call float @llvm.fmuladd.f32(float %536, float %573, float %588)
  %590 = call float @llvm.fmuladd.f32(float %572, float %577, float %589)
  %591 = fadd float %579, %590
  %592 = fcmp olt float %591, 0.000000e+00
  br i1 %592, label %648, label %593

593:                                              ; preds = %587
  %594 = call float @llvm.fmuladd.f32(float %538, float %573, float %588)
  %595 = call float @llvm.fmuladd.f32(float %572, float %577, float %594)
  %596 = fadd float %579, %595
  %597 = fcmp olt float %596, 0.000000e+00
  br i1 %597, label %648, label %598

598:                                              ; preds = %593
  %599 = fadd float %572, 1.000000e+00
  %600 = call float @llvm.fmuladd.f32(float %599, float %577, float %576)
  %601 = fadd float %579, %600
  %602 = fcmp olt float %601, 0.000000e+00
  br i1 %602, label %648, label %603

603:                                              ; preds = %598
  %604 = call float @llvm.fmuladd.f32(float %599, float %577, float %583)
  %605 = fadd float %579, %604
  %606 = fcmp olt float %605, 0.000000e+00
  br i1 %606, label %648, label %607

607:                                              ; preds = %603
  %608 = call float @llvm.fmuladd.f32(float %599, float %577, float %589)
  %609 = fadd float %579, %608
  %610 = fcmp olt float %609, 0.000000e+00
  br i1 %610, label %648, label %611

611:                                              ; preds = %607
  %612 = call float @llvm.fmuladd.f32(float %599, float %577, float %594)
  %613 = fadd float %579, %612
  %614 = fcmp olt float %613, 0.000000e+00
  br i1 %614, label %648, label %650

615:                                              ; preds = %570
  %616 = call float @llvm.fmuladd.f32(float %537, float %573, float %575)
  %617 = call float @llvm.fmuladd.f32(float %572, float %577, float %616)
  %618 = fadd float %579, %617
  %619 = fcmp ogt float %618, 0.000000e+00
  br i1 %619, label %648, label %620

620:                                              ; preds = %615
  %621 = fmul float %557, %574
  %622 = call float @llvm.fmuladd.f32(float %536, float %573, float %621)
  %623 = call float @llvm.fmuladd.f32(float %572, float %577, float %622)
  %624 = fadd float %579, %623
  %625 = fcmp ogt float %624, 0.000000e+00
  br i1 %625, label %648, label %626

626:                                              ; preds = %620
  %627 = call float @llvm.fmuladd.f32(float %537, float %573, float %621)
  %628 = call float @llvm.fmuladd.f32(float %572, float %577, float %627)
  %629 = fadd float %579, %628
  %630 = fcmp ogt float %629, 0.000000e+00
  br i1 %630, label %648, label %631

631:                                              ; preds = %626
  %632 = fadd float %572, 1.000000e+00
  %633 = call float @llvm.fmuladd.f32(float %632, float %577, float %576)
  %634 = fadd float %579, %633
  %635 = fcmp ogt float %634, 0.000000e+00
  br i1 %635, label %648, label %636

636:                                              ; preds = %631
  %637 = call float @llvm.fmuladd.f32(float %632, float %577, float %616)
  %638 = fadd float %579, %637
  %639 = fcmp ogt float %638, 0.000000e+00
  br i1 %639, label %648, label %640

640:                                              ; preds = %636
  %641 = call float @llvm.fmuladd.f32(float %632, float %577, float %622)
  %642 = fadd float %579, %641
  %643 = fcmp ogt float %642, 0.000000e+00
  br i1 %643, label %648, label %644

644:                                              ; preds = %640
  %645 = call float @llvm.fmuladd.f32(float %632, float %577, float %627)
  %646 = fadd float %579, %645
  %647 = fcmp ogt float %646, 0.000000e+00
  br i1 %647, label %648, label %650

648:                                              ; preds = %644, %640, %636, %631, %626, %620, %615, %611, %607, %603, %598, %593, %587, %582
  %649 = load i32, ptr %151, align 4, !tbaa !65
  call fastcc void @_ZL7ocwriteP6OctreeP7RayFaceisssPA3_f(ptr noundef %0, ptr noundef nonnull %127, i32 noundef %649, i16 noundef signext %535, i16 noundef signext %555, i16 noundef signext %571, ptr noundef nonnull %3)
  br label %650

650:                                              ; preds = %611, %644, %648, %566, %561
  %651 = add nsw i64 %562, 1
  %652 = icmp eq i64 %562, %512
  br i1 %652, label %653, label %561, !llvm.loop !76

653:                                              ; preds = %650, %541
  %654 = add nsw i64 %542, 1
  %655 = icmp eq i64 %542, %515
  br i1 %655, label %656, label %541, !llvm.loop !77

656:                                              ; preds = %653, %529
  %657 = add nsw i32 %530, 1
  %658 = icmp eq i32 %530, %503
  br i1 %658, label %516, label %529, !llvm.loop !78

659:                                              ; preds = %518, %689
  %660 = phi i32 [ %502, %518 ], [ %690, %689 ]
  br i1 %519, label %689, label %661

661:                                              ; preds = %659
  %662 = load i32, ptr %11, align 8, !tbaa !44
  %663 = mul i32 %662, %660
  %664 = add i32 %663, %133
  %665 = sext i32 %663 to i64
  %666 = getelementptr i8, ptr %128, i64 %665
  br label %667

667:                                              ; preds = %661, %686
  %668 = phi i64 [ %526, %661 ], [ %687, %686 ]
  %669 = trunc i64 %668 to i32
  %670 = add i32 %664, %669
  %671 = sext i32 %670 to i64
  %672 = getelementptr inbounds i8, ptr %128, i64 %671
  store i8 0, ptr %672, align 1, !tbaa !71
  br i1 %522, label %686, label %673

673:                                              ; preds = %667
  %674 = load i32, ptr %11, align 8, !tbaa !44
  %675 = trunc i64 %668 to i32
  %676 = mul nsw i32 %674, %675
  %677 = add nsw i32 %676, %262
  %678 = sext i32 %677 to i64
  %679 = getelementptr i8, ptr %128, i64 %678
  br label %680

680:                                              ; preds = %673, %680
  %681 = phi i64 [ %523, %673 ], [ %684, %680 ]
  %682 = getelementptr i8, ptr %679, i64 %681
  store i8 0, ptr %682, align 1, !tbaa !71
  %683 = getelementptr i8, ptr %666, i64 %681
  store i8 0, ptr %683, align 1, !tbaa !71
  %684 = add nsw i64 %681, 1
  %685 = icmp eq i64 %681, %525
  br i1 %685, label %686, label %680, !llvm.loop !79

686:                                              ; preds = %680, %667
  %687 = add nsw i64 %668, 1
  %688 = icmp eq i64 %668, %528
  br i1 %688, label %689, label %667, !llvm.loop !80

689:                                              ; preds = %686, %659
  %690 = add nsw i32 %660, 1
  %691 = icmp eq i32 %660, %503
  br i1 %691, label %692, label %659, !llvm.loop !81

692:                                              ; preds = %689, %516, %258
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #13
  %693 = add nuw nsw i64 %124, 1
  %694 = load i32, ptr %65, align 4, !tbaa !47
  %695 = sext i32 %694 to i64
  %696 = icmp slt i64 %693, %695
  br i1 %696, label %123, label %697, !llvm.loop !82

697:                                              ; preds = %692, %64
  %698 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %699 = load ptr, ptr %52, align 8, !tbaa !62
  call void %698(ptr noundef %699)
  store ptr null, ptr %52, align 8, !tbaa !62
  %700 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %701 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 13
  %702 = load ptr, ptr %701, align 8, !tbaa !45
  call void %700(ptr noundef %702)
  store ptr null, ptr %701, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL24RE_rayobject_octree_freeP9RayObject(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %6(ptr noundef nonnull %3)
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !60
  %10 = icmp eq ptr %9, null
  br i1 %10, label %29, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %8, align 8, !tbaa !60
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %11, %15
  %16 = phi i64 [ %21, %15 ], [ 0, %11 ]
  %17 = phi ptr [ %24, %15 ], [ %13, %11 ]
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %18(ptr noundef nonnull %17)
  %19 = load ptr, ptr %8, align 8, !tbaa !60
  %20 = getelementptr inbounds ptr, ptr %19, i64 %16
  store ptr null, ptr %20, align 8, !tbaa !34
  %21 = add nuw i64 %16, 1
  %22 = load ptr, ptr %8, align 8, !tbaa !60
  %23 = getelementptr inbounds ptr, ptr %22, i64 %21
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %15, !llvm.loop !83

26:                                               ; preds = %15, %11
  %27 = phi ptr [ %12, %11 ], [ %22, %15 ]
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %28(ptr noundef %27)
  store ptr null, ptr %8, align 8, !tbaa !60
  br label %29

29:                                               ; preds = %26, %7
  %30 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 10
  store i32 0, ptr %30, align 4, !tbaa !48
  %31 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !61
  %33 = icmp eq ptr %32, null
  br i1 %33, label %52, label %34

34:                                               ; preds = %29
  %35 = load ptr, ptr %31, align 8, !tbaa !61
  %36 = load ptr, ptr %35, align 8, !tbaa !34
  %37 = icmp eq ptr %36, null
  br i1 %37, label %49, label %38

38:                                               ; preds = %34, %38
  %39 = phi i64 [ %44, %38 ], [ 0, %34 ]
  %40 = phi ptr [ %47, %38 ], [ %36, %34 ]
  %41 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %41(ptr noundef nonnull %40)
  %42 = load ptr, ptr %31, align 8, !tbaa !61
  %43 = getelementptr inbounds ptr, ptr %42, i64 %39
  store ptr null, ptr %43, align 8, !tbaa !34
  %44 = add nuw i64 %39, 1
  %45 = load ptr, ptr %31, align 8, !tbaa !61
  %46 = getelementptr inbounds ptr, ptr %45, i64 %44
  %47 = load ptr, ptr %46, align 8, !tbaa !34
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %38, !llvm.loop !84

49:                                               ; preds = %38, %34
  %50 = phi ptr [ %35, %34 ], [ %45, %38 ]
  %51 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %51(ptr noundef %50)
  store ptr null, ptr %31, align 8, !tbaa !61
  br label %52

52:                                               ; preds = %49, %29
  %53 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 11
  store i32 0, ptr %53, align 8, !tbaa !85
  %54 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %54(ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZL22RE_rayobject_octree_bbP9RayObjectPfS1_(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2) #3 {
  %4 = load float, ptr %1, align 4, !tbaa !49
  %5 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 7
  %6 = load float, ptr %5, align 8, !tbaa !49
  %7 = fcmp ogt float %4, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  store float %6, ptr %1, align 4, !tbaa !49
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds float, ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !49
  %12 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 7, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !49
  %14 = fcmp ogt float %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store float %13, ptr %10, align 4, !tbaa !49
  br label %16

16:                                               ; preds = %15, %9
  %17 = getelementptr inbounds float, ptr %1, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !49
  %19 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 7, i64 2
  %20 = load float, ptr %19, align 8, !tbaa !49
  %21 = fcmp ogt float %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store float %20, ptr %17, align 4, !tbaa !49
  br label %23

23:                                               ; preds = %22, %16
  %24 = load float, ptr %2, align 4, !tbaa !49
  %25 = load float, ptr %5, align 8, !tbaa !49
  %26 = fcmp olt float %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store float %25, ptr %2, align 4, !tbaa !49
  br label %28

28:                                               ; preds = %27, %23
  %29 = getelementptr inbounds float, ptr %2, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !49
  %31 = load float, ptr %12, align 4, !tbaa !49
  %32 = fcmp olt float %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store float %31, ptr %29, align 4, !tbaa !49
  br label %34

34:                                               ; preds = %33, %28
  %35 = getelementptr inbounds float, ptr %2, i64 2
  %36 = load float, ptr %35, align 4, !tbaa !49
  %37 = load float, ptr %19, align 8, !tbaa !49
  %38 = fcmp olt float %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store float %37, ptr %35, align 4, !tbaa !49
  br label %40

40:                                               ; preds = %39, %34
  %41 = load float, ptr %1, align 4, !tbaa !49
  %42 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 8
  %43 = load float, ptr %42, align 4, !tbaa !49
  %44 = fcmp ogt float %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store float %43, ptr %1, align 4, !tbaa !49
  br label %46

46:                                               ; preds = %45, %40
  %47 = load float, ptr %10, align 4, !tbaa !49
  %48 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 8, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !49
  %50 = fcmp ogt float %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store float %49, ptr %10, align 4, !tbaa !49
  br label %52

52:                                               ; preds = %51, %46
  %53 = load float, ptr %17, align 4, !tbaa !49
  %54 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 8, i64 2
  %55 = load float, ptr %54, align 4, !tbaa !49
  %56 = fcmp ogt float %53, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store float %55, ptr %17, align 4, !tbaa !49
  br label %58

58:                                               ; preds = %57, %52
  %59 = load float, ptr %2, align 4, !tbaa !49
  %60 = load float, ptr %42, align 4, !tbaa !49
  %61 = fcmp olt float %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store float %60, ptr %2, align 4, !tbaa !49
  br label %63

63:                                               ; preds = %62, %58
  %64 = load float, ptr %29, align 4, !tbaa !49
  %65 = load float, ptr %48, align 4, !tbaa !49
  %66 = fcmp olt float %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store float %65, ptr %29, align 4, !tbaa !49
  br label %68

68:                                               ; preds = %67, %63
  %69 = load float, ptr %35, align 4, !tbaa !49
  %70 = load float, ptr %54, align 4, !tbaa !49
  %71 = fcmp olt float %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store float %70, ptr %35, align 4, !tbaa !49
  br label %73

73:                                               ; preds = %72, %68
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef float @_ZL24RE_rayobject_octree_costP9RayObject(ptr nocapture readnone %0) #4 {
  ret float 1.000000e+00
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZL27RE_rayobject_octree_hint_bbP9RayObjectP7RayHintPfS3_(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #4 {
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @_ZL6ocreadP6Octreeiii(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #6 {
  %5 = shl i32 %1, 2
  %6 = shl i32 %2, 1
  %7 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !60
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 9
  %11 = load i32, ptr %10, align 8, !tbaa !44
  %12 = icmp eq i32 %11, 512
  br i1 %12, label %13, label %24

13:                                               ; preds = %4
  %14 = and i32 %5, 1024
  %15 = and i32 %6, 512
  %16 = or disjoint i32 %15, %14
  %17 = and i32 %3, 256
  %18 = or disjoint i32 %16, %17
  %19 = lshr exact i32 %18, 8
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds [8 x ptr], ptr %9, i64 0, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  %23 = icmp eq ptr %22, null
  br i1 %23, label %117, label %24

24:                                               ; preds = %13, %4
  %25 = phi ptr [ %22, %13 ], [ %9, %4 ]
  %26 = icmp sgt i32 %11, 255
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = and i32 %5, 512
  %29 = and i32 %6, 256
  %30 = or disjoint i32 %29, %28
  %31 = and i32 %3, 128
  %32 = or disjoint i32 %30, %31
  %33 = lshr exact i32 %32, 7
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds [8 x ptr], ptr %25, i64 0, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !34
  %37 = icmp eq ptr %36, null
  br i1 %37, label %117, label %38

38:                                               ; preds = %27, %24
  %39 = phi ptr [ %36, %27 ], [ %25, %24 ]
  %40 = icmp sgt i32 %11, 127
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = and i32 %5, 256
  %43 = and i32 %6, 128
  %44 = or disjoint i32 %43, %42
  %45 = and i32 %3, 64
  %46 = or disjoint i32 %44, %45
  %47 = lshr exact i32 %46, 6
  %48 = zext nneg i32 %47 to i64
  %49 = getelementptr inbounds [8 x ptr], ptr %39, i64 0, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !34
  %51 = icmp eq ptr %50, null
  br i1 %51, label %117, label %52

52:                                               ; preds = %41, %38
  %53 = phi ptr [ %50, %41 ], [ %39, %38 ]
  %54 = and i32 %5, 128
  %55 = and i32 %6, 64
  %56 = or disjoint i32 %55, %54
  %57 = and i32 %3, 32
  %58 = or disjoint i32 %56, %57
  %59 = lshr exact i32 %58, 5
  %60 = zext nneg i32 %59 to i64
  %61 = getelementptr inbounds [8 x ptr], ptr %53, i64 0, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !34
  %63 = icmp eq ptr %62, null
  br i1 %63, label %117, label %64

64:                                               ; preds = %52
  %65 = and i32 %5, 64
  %66 = and i32 %6, 32
  %67 = or disjoint i32 %66, %65
  %68 = and i32 %3, 16
  %69 = or disjoint i32 %67, %68
  %70 = lshr exact i32 %69, 4
  %71 = zext nneg i32 %70 to i64
  %72 = getelementptr inbounds [8 x ptr], ptr %62, i64 0, i64 %71
  %73 = load ptr, ptr %72, align 8, !tbaa !34
  %74 = icmp eq ptr %73, null
  br i1 %74, label %117, label %75

75:                                               ; preds = %64
  %76 = and i32 %5, 32
  %77 = and i32 %6, 16
  %78 = or disjoint i32 %77, %76
  %79 = and i32 %3, 8
  %80 = or disjoint i32 %78, %79
  %81 = lshr exact i32 %80, 3
  %82 = zext nneg i32 %81 to i64
  %83 = getelementptr inbounds [8 x ptr], ptr %73, i64 0, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !34
  %85 = icmp eq ptr %84, null
  br i1 %85, label %117, label %86

86:                                               ; preds = %75
  %87 = and i32 %5, 16
  %88 = and i32 %6, 8
  %89 = or disjoint i32 %88, %87
  %90 = and i32 %3, 4
  %91 = or disjoint i32 %89, %90
  %92 = lshr exact i32 %91, 2
  %93 = zext nneg i32 %92 to i64
  %94 = getelementptr inbounds [8 x ptr], ptr %84, i64 0, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !34
  %96 = icmp eq ptr %95, null
  br i1 %96, label %117, label %97

97:                                               ; preds = %86
  %98 = and i32 %5, 8
  %99 = and i32 %6, 4
  %100 = or disjoint i32 %99, %98
  %101 = and i32 %3, 2
  %102 = or disjoint i32 %100, %101
  %103 = lshr exact i32 %102, 1
  %104 = zext nneg i32 %103 to i64
  %105 = getelementptr inbounds [8 x ptr], ptr %95, i64 0, i64 %104
  %106 = load ptr, ptr %105, align 8, !tbaa !34
  %107 = icmp eq ptr %106, null
  br i1 %107, label %117, label %108

108:                                              ; preds = %97
  %109 = and i32 %5, 4
  %110 = and i32 %6, 2
  %111 = or disjoint i32 %110, %109
  %112 = and i32 %3, 1
  %113 = or disjoint i32 %111, %112
  %114 = zext nneg i32 %113 to i64
  %115 = getelementptr inbounds [8 x ptr], ptr %106, i64 0, i64 %114
  %116 = load ptr, ptr %115, align 8, !tbaa !34
  br label %117

117:                                              ; preds = %52, %75, %97, %86, %64, %41, %27, %13, %108
  %118 = phi ptr [ %116, %108 ], [ null, %13 ], [ null, %27 ], [ null, %41 ], [ null, %64 ], [ null, %86 ], [ null, %97 ], [ null, %75 ], [ null, %52 ]
  ret ptr %118
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL8testnodeP6OctreeP5IsectP4Node5OcVal(ptr noundef %0, ptr noundef readonly %1, i48 %2) unnamed_addr #0 {
  %4 = trunc i48 %2 to i16
  %5 = lshr i48 %2, 16
  %6 = trunc i48 %5 to i16
  %7 = lshr i48 %2, 32
  %8 = trunc i48 %7 to i16
  %9 = getelementptr inbounds %struct.Isect, ptr %0, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !86
  %11 = icmp eq i32 %10, 0
  %12 = icmp eq ptr %1, null
  br i1 %11, label %14, label %13

13:                                               ; preds = %3
  br i1 %12, label %96, label %54

14:                                               ; preds = %3
  br i1 %12, label %96, label %15

15:                                               ; preds = %14, %50
  %16 = phi ptr [ %52, %50 ], [ %1, %14 ]
  %17 = getelementptr inbounds %struct.Node, ptr %16, i64 0, i32 1
  br label %18

18:                                               ; preds = %15, %47
  %19 = phi i64 [ 0, %15 ], [ %48, %47 ]
  %20 = getelementptr inbounds [8 x ptr], ptr %16, i64 0, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = icmp eq ptr %21, null
  br i1 %22, label %45, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.OcVal, ptr %17, i64 %19
  %25 = load i16, ptr %24, align 2, !tbaa !87
  %26 = and i16 %25, %4
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.OcVal, ptr %17, i64 %19, i32 1
  %30 = load i16, ptr %29, align 2, !tbaa !89
  %31 = and i16 %30, %6
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.OcVal, ptr %17, i64 %19, i32 2
  %35 = load i16, ptr %34, align 2, !tbaa !90
  %36 = and i16 %35, %8
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %33
  %39 = ptrtoint ptr %21 to i64
  %40 = or i64 %39, 1
  %41 = inttoptr i64 %40 to ptr
  %42 = tail call i32 @RE_rayobject_intersect(ptr noundef nonnull %41, ptr noundef %0)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38, %33, %28, %23
  br label %45

45:                                               ; preds = %38, %18, %44
  %46 = phi i32 [ 0, %44 ], [ 5, %18 ], [ 1, %38 ]
  switch i32 %46, label %96 [
    i32 0, label %47
    i32 5, label %50
  ]

47:                                               ; preds = %45
  %48 = add nuw nsw i64 %19, 1
  %49 = icmp eq i64 %48, 8
  br i1 %49, label %50, label %18, !llvm.loop !91

50:                                               ; preds = %47, %45
  %51 = getelementptr inbounds %struct.Node, ptr %16, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !92
  %53 = icmp eq ptr %52, null
  br i1 %53, label %96, label %15, !llvm.loop !94

54:                                               ; preds = %13, %92
  %55 = phi ptr [ %94, %92 ], [ %1, %13 ]
  %56 = phi i32 [ %88, %92 ], [ 0, %13 ]
  %57 = getelementptr inbounds %struct.Node, ptr %55, i64 0, i32 1
  br label %58

58:                                               ; preds = %87, %54
  %59 = phi i32 [ %56, %54 ], [ %88, %87 ]
  %60 = phi i16 [ 0, %54 ], [ %89, %87 ]
  %61 = zext nneg i16 %60 to i64
  %62 = getelementptr inbounds [8 x ptr], ptr %55, i64 0, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !34
  %64 = icmp ne ptr %63, null
  br i1 %64, label %65, label %87

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.OcVal, ptr %57, i64 %61
  %67 = load i16, ptr %66, align 2, !tbaa !87
  %68 = and i16 %67, %4
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %87, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.OcVal, ptr %57, i64 %61, i32 1
  %72 = load i16, ptr %71, align 2, !tbaa !89
  %73 = and i16 %72, %6
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %87, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.OcVal, ptr %57, i64 %61, i32 2
  %77 = load i16, ptr %76, align 2, !tbaa !90
  %78 = and i16 %77, %8
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %75
  %81 = ptrtoint ptr %63 to i64
  %82 = or i64 %81, 1
  %83 = inttoptr i64 %82 to ptr
  %84 = tail call i32 @RE_rayobject_intersect(ptr noundef nonnull %83, ptr noundef %0)
  %85 = icmp eq i32 %84, 0
  %86 = select i1 %85, i32 %59, i32 1
  br label %87

87:                                               ; preds = %80, %65, %70, %75, %58
  %88 = phi i32 [ %59, %58 ], [ %86, %80 ], [ %59, %75 ], [ %59, %70 ], [ %59, %65 ]
  %89 = add nuw nsw i16 %60, 1
  %90 = icmp ult i16 %60, 7
  %91 = and i1 %64, %90
  br i1 %91, label %58, label %92, !llvm.loop !95

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.Node, ptr %55, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !92
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %54, !llvm.loop !96

96:                                               ; preds = %92, %50, %45, %13, %14
  %97 = phi i32 [ 0, %14 ], [ 0, %13 ], [ 1, %45 ], [ 0, %50 ], [ %88, %92 ]
  ret i32 %97
}

declare i32 @RE_rayobject_intersect(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @RE_rayobject_merge_bb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL7ocwriteP6OctreeP7RayFaceisssPA3_f(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef signext %3, i16 noundef signext %4, i16 noundef signext %5, ptr noundef %6) unnamed_addr #0 {
  %8 = shl i16 %3, 2
  %9 = shl i16 %4, 1
  %10 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !60
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !44
  %15 = icmp eq i32 %14, 512
  br i1 %15, label %16, label %54

16:                                               ; preds = %7
  %17 = and i16 %8, 1024
  %18 = and i16 %9, 512
  %19 = or disjoint i16 %18, %17
  %20 = and i16 %5, 256
  %21 = or disjoint i16 %19, %20
  %22 = lshr exact i16 %21, 8
  %23 = zext nneg i16 %22 to i64
  %24 = getelementptr inbounds [8 x ptr], ptr %12, i64 0, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %54

27:                                               ; preds = %16
  %28 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 10
  %29 = load i32, ptr %28, align 4, !tbaa !48
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %28, align 4, !tbaa !48
  %31 = ashr i32 %30, 12
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds ptr, ptr %11, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !34
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %27
  %37 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %38 = tail call ptr %37(i64 noundef 262144, ptr noundef nonnull @.str.6)
  %39 = load ptr, ptr %10, align 8, !tbaa !60
  %40 = getelementptr inbounds ptr, ptr %39, i64 %32
  store ptr %38, ptr %40, align 8, !tbaa !34
  br label %41

41:                                               ; preds = %36, %27
  %42 = load i32, ptr %28, align 4, !tbaa !48
  %43 = icmp sgt i32 %42, 4194303
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  store i32 0, ptr %28, align 4, !tbaa !48
  br label %46

46:                                               ; preds = %44, %41
  %47 = load ptr, ptr %10, align 8, !tbaa !60
  %48 = getelementptr inbounds ptr, ptr %47, i64 %32
  %49 = load ptr, ptr %48, align 8, !tbaa !34
  %50 = load i32, ptr %28, align 4, !tbaa !48
  %51 = and i32 %50, 4095
  %52 = zext nneg i32 %51 to i64
  %53 = getelementptr inbounds %struct.Branch, ptr %49, i64 %52
  store ptr %53, ptr %24, align 8, !tbaa !34
  br label %54

54:                                               ; preds = %46, %16, %7
  %55 = phi ptr [ %12, %7 ], [ %53, %46 ], [ %25, %16 ]
  %56 = load i32, ptr %13, align 8, !tbaa !44
  %57 = icmp sgt i32 %56, 255
  br i1 %57, label %58, label %97

58:                                               ; preds = %54
  %59 = and i16 %8, 512
  %60 = and i16 %9, 256
  %61 = or disjoint i16 %60, %59
  %62 = and i16 %5, 128
  %63 = or disjoint i16 %61, %62
  %64 = lshr exact i16 %63, 7
  %65 = zext nneg i16 %64 to i64
  %66 = getelementptr inbounds [8 x ptr], ptr %55, i64 0, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !34
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %97

69:                                               ; preds = %58
  %70 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 10
  %71 = load i32, ptr %70, align 4, !tbaa !48
  %72 = add nsw i32 %71, 1
  store i32 %72, ptr %70, align 4, !tbaa !48
  %73 = ashr i32 %72, 12
  %74 = load ptr, ptr %10, align 8, !tbaa !60
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds ptr, ptr %74, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !34
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %69
  %80 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %81 = tail call ptr %80(i64 noundef 262144, ptr noundef nonnull @.str.6)
  %82 = load ptr, ptr %10, align 8, !tbaa !60
  %83 = getelementptr inbounds ptr, ptr %82, i64 %75
  store ptr %81, ptr %83, align 8, !tbaa !34
  br label %84

84:                                               ; preds = %79, %69
  %85 = load i32, ptr %70, align 4, !tbaa !48
  %86 = icmp sgt i32 %85, 4194303
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  store i32 0, ptr %70, align 4, !tbaa !48
  br label %89

89:                                               ; preds = %87, %84
  %90 = load ptr, ptr %10, align 8, !tbaa !60
  %91 = getelementptr inbounds ptr, ptr %90, i64 %75
  %92 = load ptr, ptr %91, align 8, !tbaa !34
  %93 = load i32, ptr %70, align 4, !tbaa !48
  %94 = and i32 %93, 4095
  %95 = zext nneg i32 %94 to i64
  %96 = getelementptr inbounds %struct.Branch, ptr %92, i64 %95
  store ptr %96, ptr %66, align 8, !tbaa !34
  br label %97

97:                                               ; preds = %89, %58, %54
  %98 = phi ptr [ %55, %54 ], [ %96, %89 ], [ %67, %58 ]
  %99 = load i32, ptr %13, align 8, !tbaa !44
  %100 = icmp sgt i32 %99, 127
  br i1 %100, label %101, label %140

101:                                              ; preds = %97
  %102 = and i16 %8, 256
  %103 = and i16 %9, 128
  %104 = or disjoint i16 %103, %102
  %105 = and i16 %5, 64
  %106 = or disjoint i16 %104, %105
  %107 = lshr exact i16 %106, 6
  %108 = zext nneg i16 %107 to i64
  %109 = getelementptr inbounds [8 x ptr], ptr %98, i64 0, i64 %108
  %110 = load ptr, ptr %109, align 8, !tbaa !34
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %140

112:                                              ; preds = %101
  %113 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 10
  %114 = load i32, ptr %113, align 4, !tbaa !48
  %115 = add nsw i32 %114, 1
  store i32 %115, ptr %113, align 4, !tbaa !48
  %116 = ashr i32 %115, 12
  %117 = load ptr, ptr %10, align 8, !tbaa !60
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds ptr, ptr %117, i64 %118
  %120 = load ptr, ptr %119, align 8, !tbaa !34
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %127

122:                                              ; preds = %112
  %123 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %124 = tail call ptr %123(i64 noundef 262144, ptr noundef nonnull @.str.6)
  %125 = load ptr, ptr %10, align 8, !tbaa !60
  %126 = getelementptr inbounds ptr, ptr %125, i64 %118
  store ptr %124, ptr %126, align 8, !tbaa !34
  br label %127

127:                                              ; preds = %122, %112
  %128 = load i32, ptr %113, align 4, !tbaa !48
  %129 = icmp sgt i32 %128, 4194303
  br i1 %129, label %130, label %132

130:                                              ; preds = %127
  %131 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  store i32 0, ptr %113, align 4, !tbaa !48
  br label %132

132:                                              ; preds = %130, %127
  %133 = load ptr, ptr %10, align 8, !tbaa !60
  %134 = getelementptr inbounds ptr, ptr %133, i64 %118
  %135 = load ptr, ptr %134, align 8, !tbaa !34
  %136 = load i32, ptr %113, align 4, !tbaa !48
  %137 = and i32 %136, 4095
  %138 = zext nneg i32 %137 to i64
  %139 = getelementptr inbounds %struct.Branch, ptr %135, i64 %138
  store ptr %139, ptr %109, align 8, !tbaa !34
  br label %140

140:                                              ; preds = %132, %101, %97
  %141 = phi ptr [ %98, %97 ], [ %139, %132 ], [ %110, %101 ]
  %142 = and i16 %8, 128
  %143 = and i16 %9, 64
  %144 = or disjoint i16 %143, %142
  %145 = and i16 %5, 32
  %146 = or disjoint i16 %144, %145
  %147 = lshr exact i16 %146, 5
  %148 = and i16 %8, 64
  %149 = and i16 %9, 32
  %150 = or disjoint i16 %149, %148
  %151 = and i16 %5, 16
  %152 = or disjoint i16 %150, %151
  %153 = lshr exact i16 %152, 4
  %154 = and i16 %8, 32
  %155 = and i16 %9, 16
  %156 = or disjoint i16 %155, %154
  %157 = and i16 %5, 8
  %158 = or disjoint i16 %156, %157
  %159 = lshr exact i16 %158, 3
  %160 = and i16 %8, 16
  %161 = and i16 %9, 8
  %162 = or disjoint i16 %161, %160
  %163 = and i16 %5, 4
  %164 = or disjoint i16 %162, %163
  %165 = lshr exact i16 %164, 2
  %166 = and i16 %8, 8
  %167 = and i16 %9, 4
  %168 = or disjoint i16 %167, %166
  %169 = and i16 %5, 2
  %170 = or disjoint i16 %168, %169
  %171 = lshr exact i16 %170, 1
  %172 = and i16 %8, 4
  %173 = and i16 %9, 2
  %174 = or disjoint i16 %173, %172
  %175 = and i16 %5, 1
  %176 = or disjoint i16 %174, %175
  %177 = zext nneg i16 %147 to i64
  %178 = getelementptr inbounds [8 x ptr], ptr %141, i64 0, i64 %177
  %179 = load ptr, ptr %178, align 8, !tbaa !34
  %180 = icmp eq ptr %179, null
  br i1 %180, label %181, label %209

181:                                              ; preds = %140
  %182 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 10
  %183 = load i32, ptr %182, align 4, !tbaa !48
  %184 = add nsw i32 %183, 1
  store i32 %184, ptr %182, align 4, !tbaa !48
  %185 = ashr i32 %184, 12
  %186 = load ptr, ptr %10, align 8, !tbaa !60
  %187 = sext i32 %185 to i64
  %188 = getelementptr inbounds ptr, ptr %186, i64 %187
  %189 = load ptr, ptr %188, align 8, !tbaa !34
  %190 = icmp eq ptr %189, null
  br i1 %190, label %191, label %196

191:                                              ; preds = %181
  %192 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %193 = tail call ptr %192(i64 noundef 262144, ptr noundef nonnull @.str.6)
  %194 = load ptr, ptr %10, align 8, !tbaa !60
  %195 = getelementptr inbounds ptr, ptr %194, i64 %187
  store ptr %193, ptr %195, align 8, !tbaa !34
  br label %196

196:                                              ; preds = %191, %181
  %197 = load i32, ptr %182, align 4, !tbaa !48
  %198 = icmp sgt i32 %197, 4194303
  br i1 %198, label %199, label %201

199:                                              ; preds = %196
  %200 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  store i32 0, ptr %182, align 4, !tbaa !48
  br label %201

201:                                              ; preds = %199, %196
  %202 = load ptr, ptr %10, align 8, !tbaa !60
  %203 = getelementptr inbounds ptr, ptr %202, i64 %187
  %204 = load ptr, ptr %203, align 8, !tbaa !34
  %205 = load i32, ptr %182, align 4, !tbaa !48
  %206 = and i32 %205, 4095
  %207 = zext nneg i32 %206 to i64
  %208 = getelementptr inbounds %struct.Branch, ptr %204, i64 %207
  store ptr %208, ptr %178, align 8, !tbaa !34
  br label %209

209:                                              ; preds = %140, %201
  %210 = phi ptr [ %208, %201 ], [ %179, %140 ]
  %211 = zext nneg i16 %153 to i64
  %212 = getelementptr inbounds [8 x ptr], ptr %210, i64 0, i64 %211
  %213 = load ptr, ptr %212, align 8, !tbaa !34
  %214 = icmp eq ptr %213, null
  br i1 %214, label %215, label %243

215:                                              ; preds = %209
  %216 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 10
  %217 = load i32, ptr %216, align 4, !tbaa !48
  %218 = add nsw i32 %217, 1
  store i32 %218, ptr %216, align 4, !tbaa !48
  %219 = ashr i32 %218, 12
  %220 = load ptr, ptr %10, align 8, !tbaa !60
  %221 = sext i32 %219 to i64
  %222 = getelementptr inbounds ptr, ptr %220, i64 %221
  %223 = load ptr, ptr %222, align 8, !tbaa !34
  %224 = icmp eq ptr %223, null
  br i1 %224, label %225, label %230

225:                                              ; preds = %215
  %226 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %227 = tail call ptr %226(i64 noundef 262144, ptr noundef nonnull @.str.6)
  %228 = load ptr, ptr %10, align 8, !tbaa !60
  %229 = getelementptr inbounds ptr, ptr %228, i64 %221
  store ptr %227, ptr %229, align 8, !tbaa !34
  br label %230

230:                                              ; preds = %225, %215
  %231 = load i32, ptr %216, align 4, !tbaa !48
  %232 = icmp sgt i32 %231, 4194303
  br i1 %232, label %233, label %235

233:                                              ; preds = %230
  %234 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  store i32 0, ptr %216, align 4, !tbaa !48
  br label %235

235:                                              ; preds = %233, %230
  %236 = load ptr, ptr %10, align 8, !tbaa !60
  %237 = getelementptr inbounds ptr, ptr %236, i64 %221
  %238 = load ptr, ptr %237, align 8, !tbaa !34
  %239 = load i32, ptr %216, align 4, !tbaa !48
  %240 = and i32 %239, 4095
  %241 = zext nneg i32 %240 to i64
  %242 = getelementptr inbounds %struct.Branch, ptr %238, i64 %241
  store ptr %242, ptr %212, align 8, !tbaa !34
  br label %243

243:                                              ; preds = %209, %235
  %244 = phi ptr [ %242, %235 ], [ %213, %209 ]
  %245 = zext nneg i16 %159 to i64
  %246 = getelementptr inbounds [8 x ptr], ptr %244, i64 0, i64 %245
  %247 = load ptr, ptr %246, align 8, !tbaa !34
  %248 = icmp eq ptr %247, null
  br i1 %248, label %249, label %277

249:                                              ; preds = %243
  %250 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 10
  %251 = load i32, ptr %250, align 4, !tbaa !48
  %252 = add nsw i32 %251, 1
  store i32 %252, ptr %250, align 4, !tbaa !48
  %253 = ashr i32 %252, 12
  %254 = load ptr, ptr %10, align 8, !tbaa !60
  %255 = sext i32 %253 to i64
  %256 = getelementptr inbounds ptr, ptr %254, i64 %255
  %257 = load ptr, ptr %256, align 8, !tbaa !34
  %258 = icmp eq ptr %257, null
  br i1 %258, label %259, label %264

259:                                              ; preds = %249
  %260 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %261 = tail call ptr %260(i64 noundef 262144, ptr noundef nonnull @.str.6)
  %262 = load ptr, ptr %10, align 8, !tbaa !60
  %263 = getelementptr inbounds ptr, ptr %262, i64 %255
  store ptr %261, ptr %263, align 8, !tbaa !34
  br label %264

264:                                              ; preds = %259, %249
  %265 = load i32, ptr %250, align 4, !tbaa !48
  %266 = icmp sgt i32 %265, 4194303
  br i1 %266, label %267, label %269

267:                                              ; preds = %264
  %268 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  store i32 0, ptr %250, align 4, !tbaa !48
  br label %269

269:                                              ; preds = %267, %264
  %270 = load ptr, ptr %10, align 8, !tbaa !60
  %271 = getelementptr inbounds ptr, ptr %270, i64 %255
  %272 = load ptr, ptr %271, align 8, !tbaa !34
  %273 = load i32, ptr %250, align 4, !tbaa !48
  %274 = and i32 %273, 4095
  %275 = zext nneg i32 %274 to i64
  %276 = getelementptr inbounds %struct.Branch, ptr %272, i64 %275
  store ptr %276, ptr %246, align 8, !tbaa !34
  br label %277

277:                                              ; preds = %243, %269
  %278 = phi ptr [ %276, %269 ], [ %247, %243 ]
  %279 = zext nneg i16 %165 to i64
  %280 = getelementptr inbounds [8 x ptr], ptr %278, i64 0, i64 %279
  %281 = load ptr, ptr %280, align 8, !tbaa !34
  %282 = icmp eq ptr %281, null
  br i1 %282, label %283, label %311

283:                                              ; preds = %277
  %284 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 10
  %285 = load i32, ptr %284, align 4, !tbaa !48
  %286 = add nsw i32 %285, 1
  store i32 %286, ptr %284, align 4, !tbaa !48
  %287 = ashr i32 %286, 12
  %288 = load ptr, ptr %10, align 8, !tbaa !60
  %289 = sext i32 %287 to i64
  %290 = getelementptr inbounds ptr, ptr %288, i64 %289
  %291 = load ptr, ptr %290, align 8, !tbaa !34
  %292 = icmp eq ptr %291, null
  br i1 %292, label %293, label %298

293:                                              ; preds = %283
  %294 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %295 = tail call ptr %294(i64 noundef 262144, ptr noundef nonnull @.str.6)
  %296 = load ptr, ptr %10, align 8, !tbaa !60
  %297 = getelementptr inbounds ptr, ptr %296, i64 %289
  store ptr %295, ptr %297, align 8, !tbaa !34
  br label %298

298:                                              ; preds = %293, %283
  %299 = load i32, ptr %284, align 4, !tbaa !48
  %300 = icmp sgt i32 %299, 4194303
  br i1 %300, label %301, label %303

301:                                              ; preds = %298
  %302 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  store i32 0, ptr %284, align 4, !tbaa !48
  br label %303

303:                                              ; preds = %301, %298
  %304 = load ptr, ptr %10, align 8, !tbaa !60
  %305 = getelementptr inbounds ptr, ptr %304, i64 %289
  %306 = load ptr, ptr %305, align 8, !tbaa !34
  %307 = load i32, ptr %284, align 4, !tbaa !48
  %308 = and i32 %307, 4095
  %309 = zext nneg i32 %308 to i64
  %310 = getelementptr inbounds %struct.Branch, ptr %306, i64 %309
  store ptr %310, ptr %280, align 8, !tbaa !34
  br label %311

311:                                              ; preds = %277, %303
  %312 = phi ptr [ %310, %303 ], [ %281, %277 ]
  %313 = zext nneg i16 %171 to i64
  %314 = getelementptr inbounds [8 x ptr], ptr %312, i64 0, i64 %313
  %315 = load ptr, ptr %314, align 8, !tbaa !34
  %316 = icmp eq ptr %315, null
  br i1 %316, label %317, label %345

317:                                              ; preds = %311
  %318 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 10
  %319 = load i32, ptr %318, align 4, !tbaa !48
  %320 = add nsw i32 %319, 1
  store i32 %320, ptr %318, align 4, !tbaa !48
  %321 = ashr i32 %320, 12
  %322 = load ptr, ptr %10, align 8, !tbaa !60
  %323 = sext i32 %321 to i64
  %324 = getelementptr inbounds ptr, ptr %322, i64 %323
  %325 = load ptr, ptr %324, align 8, !tbaa !34
  %326 = icmp eq ptr %325, null
  br i1 %326, label %327, label %332

327:                                              ; preds = %317
  %328 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %329 = tail call ptr %328(i64 noundef 262144, ptr noundef nonnull @.str.6)
  %330 = load ptr, ptr %10, align 8, !tbaa !60
  %331 = getelementptr inbounds ptr, ptr %330, i64 %323
  store ptr %329, ptr %331, align 8, !tbaa !34
  br label %332

332:                                              ; preds = %327, %317
  %333 = load i32, ptr %318, align 4, !tbaa !48
  %334 = icmp sgt i32 %333, 4194303
  br i1 %334, label %335, label %337

335:                                              ; preds = %332
  %336 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  store i32 0, ptr %318, align 4, !tbaa !48
  br label %337

337:                                              ; preds = %335, %332
  %338 = load ptr, ptr %10, align 8, !tbaa !60
  %339 = getelementptr inbounds ptr, ptr %338, i64 %323
  %340 = load ptr, ptr %339, align 8, !tbaa !34
  %341 = load i32, ptr %318, align 4, !tbaa !48
  %342 = and i32 %341, 4095
  %343 = zext nneg i32 %342 to i64
  %344 = getelementptr inbounds %struct.Branch, ptr %340, i64 %343
  store ptr %344, ptr %314, align 8, !tbaa !34
  br label %345

345:                                              ; preds = %311, %337
  %346 = phi ptr [ %344, %337 ], [ %315, %311 ]
  %347 = zext nneg i16 %176 to i64
  %348 = getelementptr inbounds [8 x ptr], ptr %346, i64 0, i64 %347
  %349 = load ptr, ptr %348, align 8, !tbaa !34
  %350 = icmp eq ptr %349, null
  br i1 %350, label %351, label %380

351:                                              ; preds = %345
  %352 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 11
  %353 = load i32, ptr %352, align 8, !tbaa !85
  %354 = add nsw i32 %353, 1
  store i32 %354, ptr %352, align 8, !tbaa !85
  %355 = ashr i32 %354, 12
  %356 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 2
  %357 = load ptr, ptr %356, align 8, !tbaa !61
  %358 = sext i32 %355 to i64
  %359 = getelementptr inbounds ptr, ptr %357, i64 %358
  %360 = load ptr, ptr %359, align 8, !tbaa !34
  %361 = icmp eq ptr %360, null
  br i1 %361, label %362, label %367

362:                                              ; preds = %351
  %363 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %364 = tail call ptr %363(i64 noundef 491520, ptr noundef nonnull @.str.8)
  %365 = load ptr, ptr %356, align 8, !tbaa !61
  %366 = getelementptr inbounds ptr, ptr %365, i64 %358
  store ptr %364, ptr %366, align 8, !tbaa !34
  br label %367

367:                                              ; preds = %362, %351
  %368 = load i32, ptr %352, align 8, !tbaa !85
  %369 = icmp sgt i32 %368, 16777216
  br i1 %369, label %370, label %372

370:                                              ; preds = %367
  %371 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.10)
  store i32 0, ptr %352, align 8, !tbaa !85
  br label %372

372:                                              ; preds = %367, %370
  %373 = load ptr, ptr %356, align 8, !tbaa !61
  %374 = getelementptr inbounds ptr, ptr %373, i64 %358
  %375 = load ptr, ptr %374, align 8, !tbaa !34
  %376 = load i32, ptr %352, align 8, !tbaa !85
  %377 = and i32 %376, 4095
  %378 = zext nneg i32 %377 to i64
  %379 = getelementptr inbounds %struct.Node, ptr %375, i64 %378
  store ptr %379, ptr %348, align 8, !tbaa !34
  br label %380

380:                                              ; preds = %372, %345
  %381 = phi ptr [ %349, %345 ], [ %379, %372 ]
  br label %382

382:                                              ; preds = %380, %382
  %383 = phi ptr [ %385, %382 ], [ %381, %380 ]
  %384 = getelementptr inbounds %struct.Node, ptr %383, i64 0, i32 2
  %385 = load ptr, ptr %384, align 8, !tbaa !92
  %386 = icmp eq ptr %385, null
  br i1 %386, label %387, label %382, !llvm.loop !97

387:                                              ; preds = %382
  %388 = getelementptr inbounds %struct.Node, ptr %383, i64 0, i32 2
  %389 = getelementptr inbounds [8 x ptr], ptr %383, i64 0, i64 7
  %390 = load ptr, ptr %389, align 8, !tbaa !34
  %391 = icmp eq ptr %390, null
  br i1 %391, label %421, label %392

392:                                              ; preds = %387
  %393 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 11
  %394 = load i32, ptr %393, align 8, !tbaa !85
  %395 = add nsw i32 %394, 1
  store i32 %395, ptr %393, align 8, !tbaa !85
  %396 = ashr i32 %395, 12
  %397 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 2
  %398 = load ptr, ptr %397, align 8, !tbaa !61
  %399 = sext i32 %396 to i64
  %400 = getelementptr inbounds ptr, ptr %398, i64 %399
  %401 = load ptr, ptr %400, align 8, !tbaa !34
  %402 = icmp eq ptr %401, null
  br i1 %402, label %403, label %408

403:                                              ; preds = %392
  %404 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %405 = tail call ptr %404(i64 noundef 491520, ptr noundef nonnull @.str.8)
  %406 = load ptr, ptr %397, align 8, !tbaa !61
  %407 = getelementptr inbounds ptr, ptr %406, i64 %399
  store ptr %405, ptr %407, align 8, !tbaa !34
  br label %408

408:                                              ; preds = %403, %392
  %409 = load i32, ptr %393, align 8, !tbaa !85
  %410 = icmp sgt i32 %409, 16777216
  br i1 %410, label %411, label %413

411:                                              ; preds = %408
  %412 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.10)
  store i32 0, ptr %393, align 8, !tbaa !85
  br label %413

413:                                              ; preds = %408, %411
  %414 = load ptr, ptr %397, align 8, !tbaa !61
  %415 = getelementptr inbounds ptr, ptr %414, i64 %399
  %416 = load ptr, ptr %415, align 8, !tbaa !34
  %417 = load i32, ptr %393, align 8, !tbaa !85
  %418 = and i32 %417, 4095
  %419 = zext nneg i32 %418 to i64
  %420 = getelementptr inbounds %struct.Node, ptr %416, i64 %419
  store ptr %420, ptr %388, align 8, !tbaa !92
  br label %430

421:                                              ; preds = %387, %421
  %422 = phi i16 [ %427, %421 ], [ 0, %387 ]
  %423 = sext i16 %422 to i64
  %424 = getelementptr inbounds [8 x ptr], ptr %383, i64 0, i64 %423
  %425 = load ptr, ptr %424, align 8, !tbaa !34
  %426 = icmp eq ptr %425, null
  %427 = add i16 %422, 1
  br i1 %426, label %428, label %421, !llvm.loop !98

428:                                              ; preds = %421
  %429 = sext i16 %422 to i64
  br label %430

430:                                              ; preds = %428, %413
  %431 = phi i64 [ 0, %413 ], [ %429, %428 ]
  %432 = phi ptr [ %420, %413 ], [ %383, %428 ]
  %433 = ptrtoint ptr %1 to i64
  %434 = and i64 %433, -4
  %435 = inttoptr i64 %434 to ptr
  %436 = getelementptr inbounds [8 x ptr], ptr %432, i64 0, i64 %431
  store ptr %435, ptr %436, align 8, !tbaa !34
  %437 = icmp eq i32 %2, 0
  %438 = getelementptr inbounds [3 x float], ptr %6, i64 1
  %439 = getelementptr inbounds [3 x float], ptr %6, i64 2
  br i1 %437, label %445, label %440

440:                                              ; preds = %430
  %441 = getelementptr inbounds [3 x float], ptr %6, i64 3
  %442 = ashr exact i16 %8, 2
  %443 = ashr exact i16 %9, 1
  %444 = getelementptr inbounds %struct.Node, ptr %432, i64 0, i32 1, i64 %431
  tail call fastcc void @_ZL15calc_ocval_facePfS_S_S_sssP5OcVal(ptr noundef %6, ptr noundef nonnull %438, ptr noundef nonnull %439, ptr noundef nonnull %441, i16 noundef signext %442, i16 noundef signext %443, i16 noundef signext %5, ptr noundef nonnull %444)
  br label %449

445:                                              ; preds = %430
  %446 = ashr exact i16 %8, 2
  %447 = ashr exact i16 %9, 1
  %448 = getelementptr inbounds %struct.Node, ptr %432, i64 0, i32 1, i64 %431
  tail call fastcc void @_ZL15calc_ocval_facePfS_S_S_sssP5OcVal(ptr noundef %6, ptr noundef nonnull %438, ptr noundef nonnull %439, ptr noundef null, i16 noundef signext %446, i16 noundef signext %447, i16 noundef signext %5, ptr noundef nonnull %448)
  br label %449

449:                                              ; preds = %445, %440
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL5d2ddaP6OctreessssPcPA3_sPA3_f(ptr nocapture noundef readonly %0, i16 noundef signext %1, i16 noundef signext %2, i16 noundef signext %3, i16 noundef signext %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef readonly %6, ptr nocapture noundef readonly %7) unnamed_addr #10 {
  %9 = zext nneg i16 %1 to i64
  %10 = zext nneg i16 %3 to i64
  %11 = getelementptr inbounds [3 x i16], ptr %6, i64 %9, i64 %10
  %12 = load i16, ptr %11, align 2, !tbaa !67
  %13 = sext i16 %12 to i32
  %14 = zext nneg i16 %4 to i64
  %15 = getelementptr inbounds [3 x i16], ptr %6, i64 %9, i64 %14
  %16 = load i16, ptr %15, align 2, !tbaa !67
  %17 = sext i16 %16 to i32
  %18 = zext nneg i16 %2 to i64
  %19 = getelementptr inbounds [3 x i16], ptr %6, i64 %18, i64 %10
  %20 = load i16, ptr %19, align 2, !tbaa !67
  %21 = sext i16 %20 to i32
  %22 = getelementptr inbounds [3 x i16], ptr %6, i64 %18, i64 %14
  %23 = load i16, ptr %22, align 2, !tbaa !67
  %24 = sext i16 %23 to i32
  %25 = icmp eq i16 %12, %20
  %26 = icmp eq i16 %16, %23
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %122, label %28

28:                                               ; preds = %8
  %29 = getelementptr inbounds [3 x float], ptr %7, i64 %9, i64 %10
  %30 = load float, ptr %29, align 4, !tbaa !49
  %31 = getelementptr inbounds [3 x float], ptr %7, i64 %9, i64 %14
  %32 = load float, ptr %31, align 4, !tbaa !49
  %33 = getelementptr inbounds [3 x float], ptr %7, i64 %18, i64 %10
  %34 = load float, ptr %33, align 4, !tbaa !49
  %35 = getelementptr inbounds [3 x float], ptr %7, i64 %18, i64 %14
  %36 = load float, ptr %35, align 4, !tbaa !49
  %37 = fcmp une float %30, %34
  br i1 %37, label %38, label %52

38:                                               ; preds = %28
  %39 = fsub float %34, %30
  %40 = fcmp ogt float %39, 0.000000e+00
  %41 = sitofp i16 %12 to float
  %42 = fsub float %30, %41
  br i1 %40, label %43, label %48

43:                                               ; preds = %38
  %44 = fadd float %42, -1.000000e+00
  %45 = fsub float %30, %34
  %46 = fdiv float %44, %45
  %47 = fdiv float -1.000000e+00, %45
  br label %52

48:                                               ; preds = %38
  %49 = fsub float %30, %34
  %50 = fdiv float %42, %49
  %51 = fdiv float 1.000000e+00, %49
  br label %52

52:                                               ; preds = %28, %43, %48
  %53 = phi i32 [ 1, %43 ], [ -1, %48 ], [ 0, %28 ]
  %54 = phi float [ %46, %43 ], [ %50, %48 ], [ 1.000000e+00, %28 ]
  %55 = phi float [ %47, %43 ], [ %51, %48 ], [ 0.000000e+00, %28 ]
  %56 = fcmp une float %32, %36
  br i1 %56, label %57, label %71

57:                                               ; preds = %52
  %58 = fsub float %36, %32
  %59 = fcmp ogt float %58, 0.000000e+00
  %60 = sitofp i16 %16 to float
  %61 = fsub float %32, %60
  br i1 %59, label %62, label %67

62:                                               ; preds = %57
  %63 = fadd float %61, -1.000000e+00
  %64 = fsub float %32, %36
  %65 = fdiv float %63, %64
  %66 = fdiv float -1.000000e+00, %64
  br label %71

67:                                               ; preds = %57
  %68 = fsub float %32, %36
  %69 = fdiv float %61, %68
  %70 = fdiv float 1.000000e+00, %68
  br label %71

71:                                               ; preds = %52, %62, %67
  %72 = phi i32 [ 1, %62 ], [ -1, %67 ], [ 0, %52 ]
  %73 = phi float [ %65, %62 ], [ %69, %67 ], [ 1.000000e+00, %52 ]
  %74 = phi float [ %66, %62 ], [ %70, %67 ], [ 0.000000e+00, %52 ]
  %75 = fcmp olt float %54, %73
  %76 = select i1 %75, float %54, float %73
  %77 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 9
  br label %78

78:                                               ; preds = %112, %71
  %79 = phi i32 [ %17, %71 ], [ %113, %112 ]
  %80 = phi float [ %76, %71 ], [ %118, %112 ]
  %81 = phi i32 [ %13, %71 ], [ %114, %112 ]
  %82 = phi float [ %54, %71 ], [ %115, %112 ]
  %83 = phi float [ %73, %71 ], [ %116, %112 ]
  %84 = icmp slt i32 %81, 0
  %85 = icmp slt i32 %79, 0
  %86 = select i1 %84, i1 true, i1 %85
  br i1 %86, label %97, label %87

87:                                               ; preds = %78
  %88 = load i32, ptr %77, align 8, !tbaa !44
  %89 = icmp slt i32 %81, %88
  %90 = icmp slt i32 %79, %88
  %91 = select i1 %89, i1 %90, i1 false
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = mul nsw i32 %88, %81
  %94 = add nsw i32 %93, %79
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, ptr %5, i64 %95
  store i8 1, ptr %96, align 1, !tbaa !71
  br label %97

97:                                               ; preds = %78, %87, %92
  %98 = fcmp oeq float %82, %83
  br i1 %98, label %99, label %104

99:                                               ; preds = %97
  %100 = fadd float %55, %82
  %101 = add nsw i32 %81, %53
  %102 = fadd float %74, %83
  %103 = add nsw i32 %79, %72
  br label %112

104:                                              ; preds = %97
  %105 = fcmp olt float %82, %83
  br i1 %105, label %106, label %109

106:                                              ; preds = %104
  %107 = fadd float %55, %82
  %108 = add nsw i32 %81, %53
  br label %112

109:                                              ; preds = %104
  %110 = fadd float %74, %83
  %111 = add nsw i32 %79, %72
  br label %112

112:                                              ; preds = %106, %109, %99
  %113 = phi i32 [ %103, %99 ], [ %79, %106 ], [ %111, %109 ]
  %114 = phi i32 [ %101, %99 ], [ %108, %106 ], [ %81, %109 ]
  %115 = phi float [ %100, %99 ], [ %107, %106 ], [ %82, %109 ]
  %116 = phi float [ %102, %99 ], [ %83, %106 ], [ %110, %109 ]
  %117 = fcmp olt float %115, %116
  %118 = select i1 %117, float %115, float %116
  %119 = fcmp oeq float %118, %80
  %120 = fcmp oge float %118, 1.000000e+00
  %121 = or i1 %119, %120
  br i1 %121, label %122, label %78, !llvm.loop !99

122:                                              ; preds = %112, %8
  %123 = phi i32 [ %13, %8 ], [ %21, %112 ]
  %124 = phi i32 [ %17, %8 ], [ %24, %112 ]
  %125 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 9
  %126 = load i32, ptr %125, align 8, !tbaa !44
  %127 = mul nsw i32 %126, %123
  %128 = add nsw i32 %127, %124
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, ptr %5, i64 %129
  store i8 1, ptr %130, align 1, !tbaa !71
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL15calc_ocval_facePfS_S_S_sssP5OcVal(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef readonly %3, i16 noundef signext %4, i16 noundef signext %5, i16 noundef signext %6, ptr nocapture noundef writeonly %7) unnamed_addr #3 {
  %9 = load float, ptr %0, align 4, !tbaa !49
  %10 = getelementptr inbounds float, ptr %0, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !49
  %12 = getelementptr inbounds float, ptr %0, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !49
  %14 = load float, ptr %1, align 4, !tbaa !49
  %15 = fcmp ogt float %9, %14
  %16 = select i1 %15, float %14, float %9
  %17 = getelementptr inbounds float, ptr %1, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !49
  %19 = fcmp ogt float %11, %18
  %20 = select i1 %19, float %18, float %11
  %21 = getelementptr inbounds float, ptr %1, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !49
  %23 = fcmp ogt float %13, %22
  %24 = select i1 %23, float %22, float %13
  %25 = fcmp olt float %9, %14
  %26 = select i1 %25, float %14, float %9
  %27 = fcmp olt float %11, %18
  %28 = select i1 %27, float %18, float %11
  %29 = fcmp olt float %13, %22
  %30 = select i1 %29, float %22, float %13
  %31 = load float, ptr %2, align 4, !tbaa !49
  %32 = fcmp ogt float %16, %31
  %33 = select i1 %32, float %31, float %16
  %34 = getelementptr inbounds float, ptr %2, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !49
  %36 = fcmp ogt float %20, %35
  %37 = select i1 %36, float %35, float %20
  %38 = getelementptr inbounds float, ptr %2, i64 2
  %39 = load float, ptr %38, align 4, !tbaa !49
  %40 = fcmp ogt float %24, %39
  %41 = select i1 %40, float %39, float %24
  %42 = fcmp olt float %26, %31
  %43 = select i1 %42, float %31, float %26
  %44 = fcmp olt float %28, %35
  %45 = select i1 %44, float %35, float %28
  %46 = fcmp olt float %30, %39
  %47 = select i1 %46, float %39, float %30
  %48 = icmp eq ptr %3, null
  br i1 %48, label %67, label %49

49:                                               ; preds = %8
  %50 = load float, ptr %3, align 4, !tbaa !49
  %51 = fcmp ogt float %33, %50
  %52 = select i1 %51, float %50, float %33
  %53 = getelementptr inbounds float, ptr %3, i64 1
  %54 = load float, ptr %53, align 4, !tbaa !49
  %55 = fcmp ogt float %37, %54
  %56 = select i1 %55, float %54, float %37
  %57 = getelementptr inbounds float, ptr %3, i64 2
  %58 = load float, ptr %57, align 4, !tbaa !49
  %59 = fcmp ogt float %41, %58
  %60 = select i1 %59, float %58, float %41
  %61 = fcmp olt float %43, %50
  %62 = select i1 %61, float %50, float %43
  %63 = fcmp olt float %45, %54
  %64 = select i1 %63, float %54, float %45
  %65 = fcmp olt float %47, %58
  br i1 %65, label %66, label %67

66:                                               ; preds = %49
  br label %67

67:                                               ; preds = %49, %66, %8
  %68 = phi float [ %41, %8 ], [ %60, %66 ], [ %60, %49 ]
  %69 = phi float [ %37, %8 ], [ %56, %66 ], [ %56, %49 ]
  %70 = phi float [ %33, %8 ], [ %52, %66 ], [ %52, %49 ]
  %71 = phi float [ %47, %8 ], [ %58, %66 ], [ %47, %49 ]
  %72 = phi float [ %45, %8 ], [ %64, %66 ], [ %64, %49 ]
  %73 = phi float [ %43, %8 ], [ %62, %66 ], [ %62, %49 ]
  %74 = sitofp i16 %4 to float
  %75 = fsub float %70, %74
  %76 = fmul float %75, 1.500000e+01
  %77 = fptosi float %76 to i32
  %78 = fsub float %73, %74
  %79 = fmul float %78, 1.500000e+01
  %80 = fptosi float %79 to i32
  %81 = icmp sgt i32 %80, 14
  %82 = add nsw i32 %80, 1
  %83 = shl nsw i32 -1, %82
  %84 = xor i32 %83, -1
  %85 = select i1 %81, i32 65535, i32 %84
  %86 = icmp sgt i32 %77, 0
  %87 = shl nsw i32 -1, %77
  %88 = add nsw i32 %87, 1
  %89 = select i1 %86, i32 %88, i32 0
  %90 = add i32 %85, %89
  %91 = trunc i32 %90 to i16
  store i16 %91, ptr %7, align 2, !tbaa !87
  %92 = sitofp i16 %5 to float
  %93 = fsub float %69, %92
  %94 = fmul float %93, 1.500000e+01
  %95 = fptosi float %94 to i32
  %96 = fsub float %72, %92
  %97 = fmul float %96, 1.500000e+01
  %98 = fptosi float %97 to i32
  %99 = icmp sgt i32 %98, 14
  %100 = add nsw i32 %98, 1
  %101 = shl nsw i32 -1, %100
  %102 = xor i32 %101, -1
  %103 = select i1 %99, i32 65535, i32 %102
  %104 = icmp sgt i32 %95, 0
  %105 = shl nsw i32 -1, %95
  %106 = add nsw i32 %105, 1
  %107 = select i1 %104, i32 %106, i32 0
  %108 = add i32 %103, %107
  %109 = trunc i32 %108 to i16
  %110 = getelementptr inbounds %struct.OcVal, ptr %7, i64 0, i32 1
  store i16 %109, ptr %110, align 2, !tbaa !89
  %111 = sitofp i16 %6 to float
  %112 = fsub float %68, %111
  %113 = fmul float %112, 1.500000e+01
  %114 = fptosi float %113 to i32
  %115 = fsub float %71, %111
  %116 = fmul float %115, 1.500000e+01
  %117 = fptosi float %116 to i32
  %118 = icmp sgt i32 %117, 14
  %119 = add nsw i32 %117, 1
  %120 = shl nsw i32 -1, %119
  %121 = xor i32 %120, -1
  %122 = select i1 %118, i32 65535, i32 %121
  %123 = icmp sgt i32 %114, 0
  %124 = shl nsw i32 -1, %114
  %125 = add nsw i32 %124, 1
  %126 = select i1 %123, i32 %125, i32 0
  %127 = add i32 %122, %126
  %128 = trunc i32 %127 to i16
  %129 = getelementptr inbounds %struct.OcVal, ptr %7, i64 0, i32 2
  store i16 %128, ptr %129, align 2, !tbaa !90
  ret void
}

declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree nounwind }
attributes #13 = { nounwind }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !35, i64 0}
!39 = !{!"_ZTS6Octree", !40, i64 0, !35, i64 24, !35, i64 32, !42, i64 40, !42, i64 44, !42, i64 48, !42, i64 52, !36, i64 56, !36, i64 68, !43, i64 80, !43, i64 84, !43, i64 88, !35, i64 96, !35, i64 104, !43, i64 112, !43, i64 116}
!40 = !{!"_ZTS9RayObject", !35, i64 0, !41, i64 8}
!41 = !{!"_ZTS16RayObjectControl", !35, i64 0, !35, i64 8}
!42 = !{!"float", !36, i64 0}
!43 = !{!"int", !36, i64 0}
!44 = !{!39, !43, i64 80}
!45 = !{!39, !35, i64 104}
!46 = !{!39, !43, i64 112}
!47 = !{!39, !43, i64 116}
!48 = !{!39, !43, i64 84}
!49 = !{!42, !42, i64 0}
!50 = !{!51, !42, i64 24}
!51 = !{!"_ZTS5Isect", !36, i64 0, !36, i64 12, !42, i64 24, !36, i64 28, !36, i64 40, !36, i64 52, !36, i64 76, !43, i64 88, !43, i64 92, !43, i64 96, !43, i64 100, !35, i64 104, !42, i64 112, !42, i64 116, !43, i64 120, !52, i64 128, !52, i64 144, !35, i64 160, !35, i64 168}
!52 = !{!"_ZTSN5IsectUt_E", !35, i64 0, !35, i64 8}
!53 = !{!39, !42, i64 44}
!54 = !{!39, !42, i64 48}
!55 = !{!39, !42, i64 52}
!56 = distinct !{!56, !57, !58}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = distinct !{!59, !57, !58}
!60 = !{!39, !35, i64 24}
!61 = !{!39, !35, i64 32}
!62 = !{!39, !35, i64 96}
!63 = distinct !{!63, !57, !58}
!64 = !{!39, !42, i64 40}
!65 = !{!66, !43, i64 60}
!66 = !{!"_ZTS7RayFace", !36, i64 0, !36, i64 16, !36, i64 32, !36, i64 48, !43, i64 60, !35, i64 64, !35, i64 72}
!67 = !{!68, !68, i64 0}
!68 = !{!"short", !36, i64 0}
!69 = distinct !{!69, !57, !58}
!70 = distinct !{!70, !57, !58}
!71 = !{!36, !36, i64 0}
!72 = distinct !{!72, !57, !58}
!73 = distinct !{!73, !57, !58}
!74 = distinct !{!74, !57, !58}
!75 = distinct !{!75, !57, !58}
!76 = distinct !{!76, !57, !58}
!77 = distinct !{!77, !57, !58}
!78 = distinct !{!78, !57, !58}
!79 = distinct !{!79, !57, !58}
!80 = distinct !{!80, !57, !58}
!81 = distinct !{!81, !57, !58}
!82 = distinct !{!82, !57, !58}
!83 = distinct !{!83, !57, !58}
!84 = distinct !{!84, !57, !58}
!85 = !{!39, !43, i64 88}
!86 = !{!51, !43, i64 88}
!87 = !{!88, !68, i64 0}
!88 = !{!"_ZTS5OcVal", !68, i64 0, !68, i64 2, !68, i64 4}
!89 = !{!88, !68, i64 2}
!90 = !{!88, !68, i64 4}
!91 = distinct !{!91, !57, !58}
!92 = !{!93, !35, i64 112}
!93 = !{!"_ZTS4Node", !36, i64 0, !36, i64 64, !35, i64 112}
!94 = distinct !{!94, !57, !58}
!95 = distinct !{!95, !57, !58}
!96 = distinct !{!96, !57, !58}
!97 = distinct !{!97, !57, !58}
!98 = distinct !{!98, !57, !58}
!99 = distinct !{!99, !57, !58}
