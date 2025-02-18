; ModuleID = 'blender/source/blender/blenlib/intern/boxpack2d.c'
source_filename = "blender/source/blender/blenlib/intern/boxpack2d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BoxVert = type { float, float, i32, i32, ptr, ptr, ptr, ptr, [4 x ptr], float, i32 }
%struct.BoxPack = type { float, float, float, float, [4 x ptr], i32 }

@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [14 x i8] c"BoxPack Verts\00", align 1
@vertarray = internal unnamed_addr global ptr null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"BoxPack Indices\00", align 1
@box_width = internal unnamed_addr global float 0.000000e+00, align 4
@box_height = internal unnamed_addr global float 0.000000e+00, align 4
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local void @BLI_box_pack_2d(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  store float 0.000000e+00, ptr %2, align 4, !tbaa !34
  store float 0.000000e+00, ptr %3, align 4, !tbaa !34
  br label %751

7:                                                ; preds = %4
  %8 = zext i32 %1 to i64
  tail call void @qsort(ptr noundef %0, i64 noundef %8, i64 noundef 56, ptr noundef nonnull @box_areasort) #7
  %9 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !38
  %10 = mul nuw nsw i64 %8, 352
  %11 = tail call ptr %9(i64 noundef %10, ptr noundef nonnull @.str) #7
  store ptr %11, ptr @vertarray, align 8, !tbaa !38
  %12 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !38
  %13 = mul nuw nsw i64 %8, 12
  %14 = tail call ptr %12(i64 noundef %13, ptr noundef nonnull @.str.1) #7
  br label %15

15:                                               ; preds = %7, %15
  %16 = phi ptr [ %11, %7 ], [ %65, %15 ]
  %17 = phi ptr [ %0, %7 ], [ %68, %15 ]
  %18 = phi i32 [ 0, %7 ], [ %67, %15 ]
  %19 = phi i32 [ 0, %7 ], [ %63, %15 ]
  %20 = getelementptr inbounds %struct.BoxVert, ptr %16, i64 0, i32 5
  %21 = getelementptr inbounds %struct.BoxVert, ptr %16, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %20, i8 0, i64 56, i1 false)
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, -256
  %24 = or disjoint i32 %23, 13
  store i32 %24, ptr %21, align 8
  %25 = getelementptr inbounds %struct.BoxVert, ptr %16, i64 0, i32 4
  store ptr %17, ptr %25, align 8, !tbaa !40
  %26 = and i32 %24, -499
  store i32 %26, ptr %21, align 8
  %27 = or disjoint i32 %19, 1
  %28 = getelementptr inbounds %struct.BoxVert, ptr %16, i64 0, i32 3
  store i32 %19, ptr %28, align 4, !tbaa !43
  %29 = getelementptr inbounds %struct.BoxVert, ptr %16, i64 1
  %30 = getelementptr inbounds %struct.BoxPack, ptr %17, i64 0, i32 4
  store ptr %16, ptr %30, align 8, !tbaa !38
  %31 = getelementptr inbounds %struct.BoxVert, ptr %16, i64 1, i32 6
  %32 = getelementptr inbounds %struct.BoxVert, ptr %16, i64 1, i32 4
  store ptr null, ptr %32, align 8, !tbaa !40
  %33 = getelementptr inbounds %struct.BoxVert, ptr %16, i64 1, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %31, i8 0, i64 48, i1 false)
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, -256
  %36 = or disjoint i32 %35, 14
  store i32 %36, ptr %33, align 8
  %37 = getelementptr inbounds %struct.BoxVert, ptr %16, i64 1, i32 5
  store ptr %17, ptr %37, align 8, !tbaa !44
  %38 = and i32 %36, -498
  store i32 %38, ptr %33, align 8
  %39 = or disjoint i32 %19, 2
  %40 = getelementptr inbounds %struct.BoxVert, ptr %16, i64 1, i32 3
  store i32 %27, ptr %40, align 4, !tbaa !43
  %41 = getelementptr inbounds %struct.BoxVert, ptr %16, i64 2
  %42 = getelementptr inbounds %struct.BoxPack, ptr %17, i64 0, i32 4, i64 1
  store ptr %29, ptr %42, align 8, !tbaa !38
  %43 = getelementptr inbounds %struct.BoxVert, ptr %16, i64 2, i32 7
  %44 = getelementptr inbounds %struct.BoxVert, ptr %16, i64 2, i32 4
  %45 = getelementptr inbounds %struct.BoxVert, ptr %16, i64 2, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %44, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %43, i8 0, i64 40, i1 false)
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, -256
  %48 = or disjoint i32 %47, 7
  store i32 %48, ptr %45, align 8
  %49 = getelementptr inbounds %struct.BoxVert, ptr %16, i64 2, i32 6
  store ptr %17, ptr %49, align 8, !tbaa !45
  %50 = and i32 %48, -505
  store i32 %50, ptr %45, align 8
  %51 = or disjoint i32 %19, 3
  %52 = getelementptr inbounds %struct.BoxVert, ptr %16, i64 2, i32 3
  store i32 %39, ptr %52, align 4, !tbaa !43
  %53 = getelementptr inbounds %struct.BoxVert, ptr %16, i64 3
  %54 = getelementptr inbounds %struct.BoxPack, ptr %17, i64 0, i32 4, i64 2
  store ptr %41, ptr %54, align 8, !tbaa !38
  %55 = getelementptr inbounds %struct.BoxVert, ptr %16, i64 3, i32 8
  %56 = getelementptr inbounds %struct.BoxVert, ptr %16, i64 3, i32 4
  %57 = getelementptr inbounds %struct.BoxVert, ptr %16, i64 3, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %56, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %55, i8 0, i64 32, i1 false)
  %58 = load i32, ptr %57, align 8
  %59 = and i32 %58, -256
  %60 = or disjoint i32 %59, 11
  store i32 %60, ptr %57, align 8
  %61 = getelementptr inbounds %struct.BoxVert, ptr %16, i64 3, i32 7
  store ptr %17, ptr %61, align 8, !tbaa !46
  %62 = and i32 %60, -501
  store i32 %62, ptr %57, align 8
  %63 = add i32 %19, 4
  %64 = getelementptr inbounds %struct.BoxVert, ptr %16, i64 3, i32 3
  store i32 %51, ptr %64, align 4, !tbaa !43
  %65 = getelementptr inbounds %struct.BoxVert, ptr %16, i64 4
  %66 = getelementptr inbounds %struct.BoxPack, ptr %17, i64 0, i32 4, i64 3
  store ptr %53, ptr %66, align 8, !tbaa !38
  %67 = add nuw i32 %18, 1
  %68 = getelementptr inbounds %struct.BoxPack, ptr %17, i64 1
  %69 = icmp eq i32 %67, %1
  br i1 %69, label %70, label %15, !llvm.loop !47

70:                                               ; preds = %15
  %71 = getelementptr inbounds %struct.BoxPack, ptr %0, i64 0, i32 4
  %72 = load ptr, ptr %71, align 8, !tbaa !38
  %73 = getelementptr inbounds %struct.BoxVert, ptr %72, i64 0, i32 2
  %74 = load i32, ptr %73, align 8
  %75 = and i32 %74, -256
  store i32 %75, ptr %73, align 8
  %76 = getelementptr inbounds %struct.BoxPack, ptr %0, i64 0, i32 4, i64 3
  %77 = load ptr, ptr %76, align 8, !tbaa !38
  %78 = getelementptr inbounds %struct.BoxVert, ptr %77, i64 0, i32 2
  %79 = load i32, ptr %78, align 8
  %80 = and i32 %79, -10
  store i32 %80, ptr %78, align 8
  %81 = getelementptr inbounds %struct.BoxPack, ptr %0, i64 0, i32 4, i64 2
  %82 = load ptr, ptr %81, align 8, !tbaa !38
  %83 = getelementptr inbounds %struct.BoxVert, ptr %82, i64 0, i32 2
  %84 = load i32, ptr %83, align 8
  %85 = and i32 %84, -6
  store i32 %85, ptr %83, align 8
  %86 = getelementptr inbounds %struct.BoxPack, ptr %0, i64 0, i32 2
  %87 = load float, ptr %86, align 8, !tbaa !50
  %88 = getelementptr inbounds %struct.BoxPack, ptr %0, i64 0, i32 3
  %89 = load float, ptr %88, align 4, !tbaa !52
  %90 = fadd float %87, 0.000000e+00
  %91 = getelementptr inbounds %struct.BoxPack, ptr %0, i64 0, i32 4, i64 1
  %92 = load ptr, ptr %91, align 8, !tbaa !38
  store float %90, ptr %92, align 8, !tbaa !53
  %93 = load ptr, ptr %71, align 8, !tbaa !38
  store float 0.000000e+00, ptr %93, align 8, !tbaa !53
  %94 = load ptr, ptr %81, align 8, !tbaa !38
  store float 0.000000e+00, ptr %94, align 8, !tbaa !53
  %95 = load float, ptr %92, align 8, !tbaa !53
  %96 = load ptr, ptr %76, align 8, !tbaa !38
  store float %95, ptr %96, align 8, !tbaa !53
  %97 = fadd float %89, 0.000000e+00
  %98 = getelementptr inbounds %struct.BoxVert, ptr %92, i64 0, i32 1
  store float %97, ptr %98, align 4, !tbaa !54
  %99 = getelementptr inbounds %struct.BoxVert, ptr %93, i64 0, i32 1
  store float 0.000000e+00, ptr %99, align 4, !tbaa !54
  %100 = load float, ptr %98, align 4, !tbaa !54
  %101 = getelementptr inbounds %struct.BoxVert, ptr %94, i64 0, i32 1
  store float %100, ptr %101, align 4, !tbaa !54
  %102 = load float, ptr %99, align 4, !tbaa !54
  %103 = getelementptr inbounds %struct.BoxVert, ptr %96, i64 0, i32 1
  store float %102, ptr %103, align 4, !tbaa !54
  %104 = getelementptr inbounds %struct.BoxPack, ptr %0, i64 0, i32 1
  store float 0.000000e+00, ptr %104, align 4, !tbaa !55
  store float 0.000000e+00, ptr %0, align 8, !tbaa !56
  br label %105

105:                                              ; preds = %70, %105
  %106 = phi i64 [ 0, %70 ], [ %119, %105 ]
  %107 = getelementptr inbounds %struct.BoxPack, ptr %0, i64 0, i32 4, i64 %106
  %108 = load ptr, ptr %107, align 8, !tbaa !38
  %109 = getelementptr inbounds %struct.BoxVert, ptr %108, i64 0, i32 2
  %110 = load i32, ptr %109, align 8
  %111 = or i32 %110, 256
  store i32 %111, ptr %109, align 8
  %112 = load ptr, ptr %107, align 8, !tbaa !38
  %113 = load float, ptr %112, align 8, !tbaa !53
  %114 = getelementptr inbounds %struct.BoxVert, ptr %112, i64 0, i32 1
  %115 = load float, ptr %114, align 4, !tbaa !54
  %116 = fmul float %113, %115
  %117 = fmul float %116, 0x3EB0C6F7A0000000
  %118 = getelementptr inbounds %struct.BoxVert, ptr %112, i64 0, i32 9
  store float %117, ptr %118, align 8, !tbaa !57
  %119 = add nuw nsw i64 %106, 1
  %120 = icmp eq i64 %119, 4
  br i1 %120, label %123, label %105, !llvm.loop !58

121:                                              ; preds = %123
  %122 = icmp eq i32 %1, 1
  br i1 %122, label %737, label %132

123:                                              ; preds = %105, %123
  %124 = phi i64 [ %125, %123 ], [ 0, %105 ]
  %125 = add nuw nsw i64 %124, 1
  %126 = getelementptr inbounds %struct.BoxPack, ptr %0, i64 0, i32 4, i64 %125
  %127 = load ptr, ptr %126, align 8, !tbaa !38
  %128 = getelementptr inbounds %struct.BoxVert, ptr %127, i64 0, i32 3
  %129 = load i32, ptr %128, align 4, !tbaa !43
  %130 = getelementptr inbounds i32, ptr %14, i64 %124
  store i32 %129, ptr %130, align 4, !tbaa !59
  %131 = icmp eq i64 %125, 3
  br i1 %131, label %121, label %123, !llvm.loop !60

132:                                              ; preds = %121, %731
  %133 = phi ptr [ %138, %731 ], [ %0, %121 ]
  %134 = phi float [ %734, %731 ], [ %89, %121 ]
  %135 = phi float [ %733, %731 ], [ %87, %121 ]
  %136 = phi i32 [ %735, %731 ], [ 1, %121 ]
  %137 = phi i32 [ %732, %731 ], [ 3, %121 ]
  %138 = getelementptr inbounds %struct.BoxPack, ptr %133, i64 1
  %139 = getelementptr inbounds %struct.BoxPack, ptr %133, i64 1, i32 2
  %140 = load float, ptr %139, align 8, !tbaa !50
  store float %140, ptr @box_width, align 4, !tbaa !34
  %141 = getelementptr inbounds %struct.BoxPack, ptr %133, i64 1, i32 3
  %142 = load float, ptr %141, align 4, !tbaa !52
  store float %142, ptr @box_height, align 4, !tbaa !34
  %143 = zext i32 %137 to i64
  tail call void @qsort(ptr noundef %14, i64 noundef %143, i64 noundef 4, ptr noundef nonnull @vertex_sort) #7
  %144 = load ptr, ptr @vertarray, align 8
  br label %145

145:                                              ; preds = %149, %132
  %146 = phi i32 [ %137, %132 ], [ %147, %149 ]
  %147 = add i32 %146, -1
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %158, label %149

149:                                              ; preds = %145
  %150 = zext i32 %147 to i64
  %151 = getelementptr inbounds i32, ptr %14, i64 %150
  %152 = load i32, ptr %151, align 4, !tbaa !59
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds %struct.BoxVert, ptr %144, i64 %153, i32 2
  %155 = load i32, ptr %154, align 8
  %156 = and i32 %155, 255
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %145, label %158, !llvm.loop !61

158:                                              ; preds = %145, %149
  %159 = phi i32 [ 1, %145 ], [ %146, %149 ]
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %731, label %161

161:                                              ; preds = %158
  %162 = load ptr, ptr @vertarray, align 8, !tbaa !38
  %163 = getelementptr inbounds %struct.BoxPack, ptr %133, i64 1, i32 4
  %164 = getelementptr inbounds %struct.BoxPack, ptr %133, i64 1, i32 4, i64 1
  %165 = getelementptr inbounds %struct.BoxPack, ptr %133, i64 1, i32 4, i64 2
  %166 = getelementptr inbounds %struct.BoxPack, ptr %133, i64 1, i32 4, i64 3
  %167 = getelementptr inbounds %struct.BoxPack, ptr %133, i64 1, i32 4
  %168 = getelementptr inbounds %struct.BoxPack, ptr %133, i64 1, i32 4, i64 1
  %169 = getelementptr inbounds %struct.BoxPack, ptr %133, i64 1, i32 4, i64 2
  %170 = getelementptr inbounds %struct.BoxPack, ptr %133, i64 1, i32 4, i64 3
  %171 = getelementptr inbounds %struct.BoxPack, ptr %133, i64 1, i32 4
  %172 = getelementptr inbounds %struct.BoxPack, ptr %133, i64 1, i32 4, i64 1
  %173 = getelementptr inbounds %struct.BoxPack, ptr %133, i64 1, i32 4, i64 2
  %174 = getelementptr inbounds %struct.BoxPack, ptr %133, i64 1, i32 4, i64 3
  %175 = getelementptr inbounds %struct.BoxPack, ptr %133, i64 1, i32 4
  %176 = getelementptr inbounds %struct.BoxPack, ptr %133, i64 1, i32 4, i64 1
  %177 = getelementptr inbounds %struct.BoxPack, ptr %133, i64 1, i32 4, i64 2
  %178 = getelementptr inbounds %struct.BoxPack, ptr %133, i64 1, i32 4, i64 3
  %179 = getelementptr inbounds %struct.BoxPack, ptr %133, i64 1, i32 4
  %180 = getelementptr inbounds %struct.BoxPack, ptr %133, i64 1, i32 4
  %181 = getelementptr inbounds %struct.BoxPack, ptr %133, i64 1, i32 4, i64 1
  %182 = getelementptr inbounds %struct.BoxPack, ptr %133, i64 1, i32 4
  %183 = getelementptr inbounds %struct.BoxPack, ptr %133, i64 1, i32 4, i64 1
  %184 = getelementptr inbounds %struct.BoxPack, ptr %133, i64 1, i32 4, i64 1
  %185 = getelementptr inbounds %struct.BoxPack, ptr %133, i64 1, i32 4, i64 2
  %186 = getelementptr inbounds %struct.BoxPack, ptr %133, i64 1, i32 4, i64 3
  %187 = getelementptr inbounds %struct.BoxPack, ptr %133, i64 1, i32 4, i64 2
  %188 = getelementptr inbounds %struct.BoxPack, ptr %133, i64 1, i32 4, i64 3
  %189 = getelementptr inbounds %struct.BoxPack, ptr %133, i64 1, i32 1
  br label %190

190:                                              ; preds = %161, %725
  %191 = phi i64 [ 0, %161 ], [ %726, %725 ]
  %192 = phi float [ %134, %161 ], [ %720, %725 ]
  %193 = phi float [ %135, %161 ], [ %719, %725 ]
  %194 = phi i8 [ 1, %161 ], [ %718, %725 ]
  %195 = phi i32 [ %159, %161 ], [ %717, %725 ]
  %196 = getelementptr inbounds i32, ptr %14, i64 %191
  %197 = load i32, ptr %196, align 4, !tbaa !59
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds %struct.BoxVert, ptr %162, i64 %198
  %200 = getelementptr inbounds %struct.BoxVert, ptr %162, i64 %198, i32 2
  %201 = getelementptr inbounds %struct.BoxVert, ptr %162, i64 %198, i32 1
  %202 = getelementptr inbounds %struct.BoxVert, ptr %162, i64 %198, i32 1
  %203 = getelementptr inbounds %struct.BoxVert, ptr %162, i64 %198, i32 1
  %204 = getelementptr inbounds %struct.BoxVert, ptr %162, i64 %198, i32 1
  %205 = getelementptr inbounds %struct.BoxVert, ptr %162, i64 %198, i32 5
  %206 = getelementptr inbounds %struct.BoxVert, ptr %162, i64 %198, i32 6
  %207 = getelementptr inbounds %struct.BoxVert, ptr %162, i64 %198, i32 7
  %208 = getelementptr inbounds %struct.BoxVert, ptr %162, i64 %198, i32 4
  %209 = getelementptr inbounds %struct.BoxVert, ptr %162, i64 %198, i32 7
  %210 = getelementptr inbounds %struct.BoxVert, ptr %162, i64 %198, i32 4
  %211 = getelementptr inbounds %struct.BoxVert, ptr %162, i64 %198, i32 5
  %212 = getelementptr inbounds %struct.BoxVert, ptr %162, i64 %198, i32 6
  %213 = getelementptr inbounds %struct.BoxVert, ptr %162, i64 %198, i32 5
  %214 = getelementptr inbounds %struct.BoxVert, ptr %162, i64 %198, i32 4
  %215 = getelementptr inbounds %struct.BoxVert, ptr %162, i64 %198, i32 6
  br label %216

216:                                              ; preds = %190, %716
  %217 = phi i64 [ 0, %190 ], [ %721, %716 ]
  %218 = phi float [ %192, %190 ], [ %720, %716 ]
  %219 = phi float [ %193, %190 ], [ %719, %716 ]
  %220 = phi i8 [ %194, %190 ], [ %718, %716 ]
  %221 = phi i32 [ %195, %190 ], [ %717, %716 ]
  %222 = load i32, ptr %200, align 8
  %223 = trunc i64 %217 to i32
  %224 = shl nuw nsw i32 1, %223
  %225 = and i32 %222, %224
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %716, label %227

227:                                              ; preds = %216
  %228 = trunc i64 %217 to i32
  switch i32 %228, label %289 [
    i32 0, label %229
    i32 1, label %244
    i32 2, label %259
    i32 3, label %275
  ]

229:                                              ; preds = %227
  %230 = load float, ptr %199, align 8, !tbaa !53
  %231 = load float, ptr %139, align 8, !tbaa !50
  %232 = fsub float %230, %231
  %233 = load ptr, ptr %175, align 8, !tbaa !38
  store float %232, ptr %233, align 8, !tbaa !53
  %234 = load ptr, ptr %176, align 8, !tbaa !38
  store float %230, ptr %234, align 8, !tbaa !53
  %235 = load float, ptr %233, align 8, !tbaa !53
  %236 = load ptr, ptr %177, align 8, !tbaa !38
  store float %235, ptr %236, align 8, !tbaa !53
  %237 = load float, ptr %234, align 8, !tbaa !53
  %238 = load ptr, ptr %178, align 8, !tbaa !38
  store float %237, ptr %238, align 8, !tbaa !53
  %239 = load float, ptr %204, align 4, !tbaa !54
  %240 = load float, ptr %141, align 4, !tbaa !52
  %241 = fsub float %239, %240
  %242 = getelementptr inbounds %struct.BoxVert, ptr %233, i64 0, i32 1
  store float %241, ptr %242, align 4, !tbaa !54
  %243 = getelementptr inbounds %struct.BoxVert, ptr %234, i64 0, i32 1
  store float %239, ptr %243, align 4, !tbaa !54
  br label %290

244:                                              ; preds = %227
  %245 = load float, ptr %199, align 8, !tbaa !53
  %246 = load float, ptr %139, align 8, !tbaa !50
  %247 = fadd float %245, %246
  %248 = load ptr, ptr %172, align 8, !tbaa !38
  store float %247, ptr %248, align 8, !tbaa !53
  %249 = load ptr, ptr %171, align 8, !tbaa !38
  store float %245, ptr %249, align 8, !tbaa !53
  %250 = load ptr, ptr %173, align 8, !tbaa !38
  store float %245, ptr %250, align 8, !tbaa !53
  %251 = load float, ptr %248, align 8, !tbaa !53
  %252 = load ptr, ptr %174, align 8, !tbaa !38
  store float %251, ptr %252, align 8, !tbaa !53
  %253 = load float, ptr %203, align 4, !tbaa !54
  %254 = load float, ptr %141, align 4, !tbaa !52
  %255 = fadd float %253, %254
  %256 = getelementptr inbounds %struct.BoxVert, ptr %248, i64 0, i32 1
  store float %255, ptr %256, align 4, !tbaa !54
  %257 = getelementptr inbounds %struct.BoxVert, ptr %249, i64 0, i32 1
  store float %253, ptr %257, align 4, !tbaa !54
  %258 = load float, ptr %256, align 4, !tbaa !54
  br label %290

259:                                              ; preds = %227
  %260 = load float, ptr %199, align 8, !tbaa !53
  %261 = load float, ptr %139, align 8, !tbaa !50
  %262 = fsub float %260, %261
  %263 = load ptr, ptr %167, align 8, !tbaa !38
  store float %262, ptr %263, align 8, !tbaa !53
  %264 = load ptr, ptr %168, align 8, !tbaa !38
  store float %260, ptr %264, align 8, !tbaa !53
  %265 = load float, ptr %263, align 8, !tbaa !53
  %266 = load ptr, ptr %169, align 8, !tbaa !38
  store float %265, ptr %266, align 8, !tbaa !53
  %267 = load float, ptr %264, align 8, !tbaa !53
  %268 = load ptr, ptr %170, align 8, !tbaa !38
  store float %267, ptr %268, align 8, !tbaa !53
  %269 = load float, ptr %202, align 4, !tbaa !54
  %270 = load float, ptr %141, align 4, !tbaa !52
  %271 = fadd float %269, %270
  %272 = getelementptr inbounds %struct.BoxVert, ptr %264, i64 0, i32 1
  store float %271, ptr %272, align 4, !tbaa !54
  %273 = getelementptr inbounds %struct.BoxVert, ptr %263, i64 0, i32 1
  store float %269, ptr %273, align 4, !tbaa !54
  %274 = load float, ptr %272, align 4, !tbaa !54
  br label %290

275:                                              ; preds = %227
  %276 = load float, ptr %199, align 8, !tbaa !53
  %277 = load float, ptr %139, align 8, !tbaa !50
  %278 = fadd float %276, %277
  %279 = load ptr, ptr %164, align 8, !tbaa !38
  store float %278, ptr %279, align 8, !tbaa !53
  %280 = load ptr, ptr %163, align 8, !tbaa !38
  store float %276, ptr %280, align 8, !tbaa !53
  %281 = load ptr, ptr %165, align 8, !tbaa !38
  store float %276, ptr %281, align 8, !tbaa !53
  %282 = load float, ptr %279, align 8, !tbaa !53
  %283 = load ptr, ptr %166, align 8, !tbaa !38
  store float %282, ptr %283, align 8, !tbaa !53
  %284 = load float, ptr %201, align 4, !tbaa !54
  %285 = load float, ptr %141, align 4, !tbaa !52
  %286 = fsub float %284, %285
  %287 = getelementptr inbounds %struct.BoxVert, ptr %280, i64 0, i32 1
  store float %286, ptr %287, align 4, !tbaa !54
  %288 = getelementptr inbounds %struct.BoxVert, ptr %279, i64 0, i32 1
  store float %284, ptr %288, align 4, !tbaa !54
  br label %290

289:                                              ; preds = %383, %227
  unreachable

290:                                              ; preds = %275, %259, %244, %229
  %291 = phi ptr [ %281, %275 ], [ %266, %259 ], [ %250, %244 ], [ %236, %229 ]
  %292 = phi float [ %284, %275 ], [ %274, %259 ], [ %258, %244 ], [ %239, %229 ]
  %293 = phi ptr [ %287, %275 ], [ %273, %259 ], [ %257, %244 ], [ %242, %229 ]
  %294 = phi ptr [ %283, %275 ], [ %268, %259 ], [ %252, %244 ], [ %238, %229 ]
  %295 = getelementptr inbounds %struct.BoxVert, ptr %291, i64 0, i32 1
  store float %292, ptr %295, align 4, !tbaa !54
  %296 = load float, ptr %293, align 4, !tbaa !54
  %297 = getelementptr inbounds %struct.BoxVert, ptr %294, i64 0, i32 1
  store float %296, ptr %297, align 4, !tbaa !54
  %298 = load ptr, ptr %179, align 8, !tbaa !38
  %299 = load float, ptr %298, align 8, !tbaa !53
  %300 = fcmp olt float %299, 0.000000e+00
  br i1 %300, label %716, label %301

301:                                              ; preds = %290
  %302 = getelementptr inbounds %struct.BoxVert, ptr %298, i64 0, i32 1
  %303 = load float, ptr %302, align 4, !tbaa !54
  %304 = fcmp olt float %303, 0.000000e+00
  br i1 %304, label %716, label %305

305:                                              ; preds = %301
  %306 = getelementptr inbounds %struct.BoxVert, ptr %162, i64 %198, i32 8, i64 %217
  %307 = load ptr, ptr %306, align 8, !tbaa !38
  %308 = icmp eq ptr %307, null
  br i1 %308, label %343, label %309

309:                                              ; preds = %305
  %310 = load ptr, ptr %180, align 8, !tbaa !38
  %311 = load float, ptr %310, align 8, !tbaa !53
  %312 = fadd float %311, 0x3E7AD7F2A0000000
  %313 = getelementptr inbounds %struct.BoxPack, ptr %307, i64 0, i32 4, i64 1
  %314 = load ptr, ptr %313, align 8, !tbaa !38
  %315 = load float, ptr %314, align 8, !tbaa !53
  %316 = fcmp ult float %312, %315
  br i1 %316, label %317, label %340

317:                                              ; preds = %309
  %318 = getelementptr inbounds %struct.BoxVert, ptr %310, i64 0, i32 1
  %319 = load float, ptr %318, align 4, !tbaa !54
  %320 = fadd float %319, 0x3E7AD7F2A0000000
  %321 = getelementptr inbounds %struct.BoxVert, ptr %314, i64 0, i32 1
  %322 = load float, ptr %321, align 4, !tbaa !54
  %323 = fcmp ult float %320, %322
  br i1 %323, label %324, label %340

324:                                              ; preds = %317
  %325 = load ptr, ptr %181, align 8, !tbaa !38
  %326 = load float, ptr %325, align 8, !tbaa !53
  %327 = fadd float %326, 0xBE7AD7F2A0000000
  %328 = getelementptr inbounds %struct.BoxPack, ptr %307, i64 0, i32 4
  %329 = load ptr, ptr %328, align 8, !tbaa !38
  %330 = load float, ptr %329, align 8, !tbaa !53
  %331 = fcmp ugt float %327, %330
  br i1 %331, label %332, label %340

332:                                              ; preds = %324
  %333 = getelementptr inbounds %struct.BoxVert, ptr %325, i64 0, i32 1
  %334 = load float, ptr %333, align 4, !tbaa !54
  %335 = fadd float %334, 0xBE7AD7F2A0000000
  %336 = getelementptr inbounds %struct.BoxVert, ptr %329, i64 0, i32 1
  %337 = load float, ptr %336, align 4, !tbaa !54
  %338 = fcmp ugt float %335, %337
  %339 = zext i1 %338 to i8
  br label %340

340:                                              ; preds = %309, %317, %324, %332
  %341 = phi i8 [ 0, %324 ], [ 0, %317 ], [ 0, %309 ], [ %339, %332 ]
  %342 = icmp eq i8 %341, 0
  br i1 %342, label %343, label %716

343:                                              ; preds = %340, %305
  %344 = load ptr, ptr %182, align 8, !tbaa !38
  %345 = load float, ptr %344, align 8, !tbaa !53
  %346 = fadd float %345, 0x3E7AD7F2A0000000
  %347 = getelementptr inbounds %struct.BoxVert, ptr %344, i64 0, i32 1
  br label %348

348:                                              ; preds = %343, %380
  %349 = phi ptr [ %0, %343 ], [ %381, %380 ]
  %350 = getelementptr inbounds %struct.BoxPack, ptr %349, i64 0, i32 4, i64 1
  %351 = load ptr, ptr %350, align 8, !tbaa !38
  %352 = load float, ptr %351, align 8, !tbaa !53
  %353 = fcmp ult float %346, %352
  br i1 %353, label %354, label %376

354:                                              ; preds = %348
  %355 = load float, ptr %347, align 4, !tbaa !54
  %356 = fadd float %355, 0x3E7AD7F2A0000000
  %357 = getelementptr inbounds %struct.BoxVert, ptr %351, i64 0, i32 1
  %358 = load float, ptr %357, align 4, !tbaa !54
  %359 = fcmp ult float %356, %358
  br i1 %359, label %360, label %376

360:                                              ; preds = %354
  %361 = load ptr, ptr %183, align 8, !tbaa !38
  %362 = load float, ptr %361, align 8, !tbaa !53
  %363 = fadd float %362, 0xBE7AD7F2A0000000
  %364 = getelementptr inbounds %struct.BoxPack, ptr %349, i64 0, i32 4
  %365 = load ptr, ptr %364, align 8, !tbaa !38
  %366 = load float, ptr %365, align 8, !tbaa !53
  %367 = fcmp ugt float %363, %366
  br i1 %367, label %368, label %376

368:                                              ; preds = %360
  %369 = getelementptr inbounds %struct.BoxVert, ptr %361, i64 0, i32 1
  %370 = load float, ptr %369, align 4, !tbaa !54
  %371 = fadd float %370, 0xBE7AD7F2A0000000
  %372 = getelementptr inbounds %struct.BoxVert, ptr %365, i64 0, i32 1
  %373 = load float, ptr %372, align 4, !tbaa !54
  %374 = fcmp ugt float %371, %373
  %375 = zext i1 %374 to i8
  br label %376

376:                                              ; preds = %348, %354, %360, %368
  %377 = phi i8 [ 0, %360 ], [ 0, %354 ], [ 0, %348 ], [ %375, %368 ]
  %378 = icmp eq i8 %377, 0
  br i1 %378, label %380, label %379

379:                                              ; preds = %376
  store ptr %349, ptr %306, align 8, !tbaa !38
  br label %716

380:                                              ; preds = %376
  %381 = getelementptr inbounds %struct.BoxPack, ptr %349, i64 1
  %382 = icmp eq ptr %349, %133
  br i1 %382, label %383, label %348, !llvm.loop !62

383:                                              ; preds = %380
  %384 = load ptr, ptr %184, align 8, !tbaa !38
  %385 = load float, ptr %384, align 8, !tbaa !53
  %386 = fcmp ogt float %219, %385
  %387 = select i1 %386, float %219, float %385
  %388 = getelementptr inbounds %struct.BoxVert, ptr %384, i64 0, i32 1
  %389 = load float, ptr %388, align 4, !tbaa !54
  %390 = fcmp ogt float %218, %389
  %391 = select i1 %390, float %218, float %389
  %392 = load i32, ptr %200, align 8
  %393 = xor i32 %224, -1
  %394 = or i32 %393, -256
  %395 = and i32 %394, %392
  store i32 %395, ptr %200, align 8
  %396 = trunc i64 %217 to i32
  switch i32 %396, label %289 [
    i32 1, label %400
    i32 2, label %397
    i32 3, label %398
    i32 0, label %399
  ]

397:                                              ; preds = %383
  br label %400

398:                                              ; preds = %383
  br label %400

399:                                              ; preds = %383
  br label %400

400:                                              ; preds = %383, %399, %398, %397
  %401 = phi ptr [ %184, %399 ], [ %185, %398 ], [ %186, %397 ], [ %179, %383 ]
  %402 = phi ptr [ %205, %399 ], [ %206, %398 ], [ %207, %397 ], [ %208, %383 ]
  store ptr %199, ptr %401, align 8, !tbaa !38
  store ptr %138, ptr %402, align 8, !tbaa !38
  %403 = load ptr, ptr %179, align 8, !tbaa !38
  %404 = load float, ptr %403, align 8, !tbaa !53
  %405 = fcmp ugt float %404, 0.000000e+00
  br i1 %405, label %408, label %406

406:                                              ; preds = %400
  %407 = load ptr, ptr %187, align 8, !tbaa !38
  br label %412

408:                                              ; preds = %400
  %409 = getelementptr inbounds %struct.BoxVert, ptr %403, i64 0, i32 1
  %410 = load float, ptr %409, align 4, !tbaa !54
  %411 = fcmp ugt float %410, 0.000000e+00
  br i1 %411, label %423, label %412

412:                                              ; preds = %408, %406
  %413 = phi ptr [ %407, %406 ], [ %403, %408 ]
  %414 = phi i32 [ -6, %406 ], [ -10, %408 ]
  %415 = phi ptr [ %179, %406 ], [ %188, %408 ]
  %416 = getelementptr inbounds %struct.BoxVert, ptr %413, i64 0, i32 2
  %417 = load i32, ptr %416, align 8
  %418 = and i32 %417, %414
  store i32 %418, ptr %416, align 8
  %419 = load ptr, ptr %415, align 8, !tbaa !38
  %420 = getelementptr inbounds %struct.BoxVert, ptr %419, i64 0, i32 2
  %421 = load i32, ptr %420, align 8
  %422 = and i32 %421, %414
  store i32 %422, ptr %420, align 8
  br label %423

423:                                              ; preds = %412, %408
  %424 = load ptr, ptr %209, align 8, !tbaa !46
  %425 = icmp eq ptr %424, null
  br i1 %425, label %488, label %426

426:                                              ; preds = %423
  %427 = load ptr, ptr %210, align 8, !tbaa !40
  %428 = icmp eq ptr %427, null
  br i1 %428, label %488, label %429

429:                                              ; preds = %426
  %430 = icmp eq ptr %138, %424
  %431 = icmp eq ptr %138, %427
  %432 = or i1 %430, %431
  br i1 %432, label %433, label %488

433:                                              ; preds = %429
  %434 = getelementptr inbounds %struct.BoxPack, ptr %424, i64 0, i32 3
  %435 = load float, ptr %434, align 4, !tbaa !52
  %436 = getelementptr inbounds %struct.BoxPack, ptr %427, i64 0, i32 3
  %437 = load float, ptr %436, align 4, !tbaa !52
  %438 = fsub float %435, %437
  %439 = tail call float @llvm.fabs.f32(float %438)
  %440 = fcmp olt float %439, 0x3EE4F8B580000000
  br i1 %440, label %441, label %474

441:                                              ; preds = %433
  %442 = getelementptr inbounds %struct.BoxPack, ptr %427, i64 0, i32 4, i64 2
  %443 = load ptr, ptr %442, align 8, !tbaa !38
  %444 = getelementptr inbounds %struct.BoxVert, ptr %443, i64 0, i32 2
  %445 = load i32, ptr %444, align 8
  %446 = and i32 %445, 256
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %461, label %448

448:                                              ; preds = %441
  %449 = getelementptr inbounds %struct.BoxPack, ptr %424, i64 0, i32 4, i64 1
  %450 = load ptr, ptr %449, align 8, !tbaa !38
  %451 = getelementptr inbounds %struct.BoxVert, ptr %450, i64 0, i32 2
  %452 = load i32, ptr %451, align 8
  %453 = and i32 %452, 246
  %454 = or disjoint i32 %453, -256
  %455 = and i32 %454, %445
  store i32 %455, ptr %444, align 8
  %456 = load ptr, ptr %210, align 8, !tbaa !40
  %457 = getelementptr inbounds %struct.BoxPack, ptr %456, i64 0, i32 4, i64 2
  %458 = load ptr, ptr %457, align 8, !tbaa !38
  %459 = load ptr, ptr %209, align 8, !tbaa !46
  %460 = getelementptr inbounds %struct.BoxPack, ptr %459, i64 0, i32 4, i64 1
  store ptr %458, ptr %460, align 8, !tbaa !38
  br label %553

461:                                              ; preds = %441
  %462 = and i32 %445, 246
  %463 = getelementptr inbounds %struct.BoxPack, ptr %424, i64 0, i32 4, i64 1
  %464 = load ptr, ptr %463, align 8, !tbaa !38
  %465 = getelementptr inbounds %struct.BoxVert, ptr %464, i64 0, i32 2
  %466 = load i32, ptr %465, align 8
  %467 = or disjoint i32 %462, -256
  %468 = and i32 %466, %467
  store i32 %468, ptr %465, align 8
  %469 = load ptr, ptr %209, align 8, !tbaa !46
  %470 = getelementptr inbounds %struct.BoxPack, ptr %469, i64 0, i32 4, i64 1
  %471 = load ptr, ptr %470, align 8, !tbaa !38
  %472 = load ptr, ptr %210, align 8, !tbaa !40
  %473 = getelementptr inbounds %struct.BoxPack, ptr %472, i64 0, i32 4, i64 2
  store ptr %471, ptr %473, align 8, !tbaa !38
  br label %553

474:                                              ; preds = %433
  %475 = fcmp ogt float %435, %437
  br i1 %475, label %476, label %482

476:                                              ; preds = %474
  %477 = getelementptr inbounds %struct.BoxPack, ptr %427, i64 0, i32 4, i64 2
  %478 = load ptr, ptr %477, align 8, !tbaa !38
  %479 = getelementptr inbounds %struct.BoxVert, ptr %478, i64 0, i32 2
  %480 = load i32, ptr %479, align 8
  %481 = and i32 %480, -6
  store i32 %481, ptr %479, align 8
  br label %553

482:                                              ; preds = %474
  %483 = getelementptr inbounds %struct.BoxPack, ptr %424, i64 0, i32 4, i64 1
  %484 = load ptr, ptr %483, align 8, !tbaa !38
  %485 = getelementptr inbounds %struct.BoxVert, ptr %484, i64 0, i32 2
  %486 = load i32, ptr %485, align 8
  %487 = and i32 %486, -11
  store i32 %487, ptr %485, align 8
  br label %553

488:                                              ; preds = %429, %426, %423
  %489 = load ptr, ptr %211, align 8, !tbaa !44
  %490 = icmp eq ptr %489, null
  br i1 %490, label %553, label %491

491:                                              ; preds = %488
  %492 = load ptr, ptr %212, align 8, !tbaa !45
  %493 = icmp eq ptr %492, null
  br i1 %493, label %553, label %494

494:                                              ; preds = %491
  %495 = icmp eq ptr %138, %489
  %496 = icmp eq ptr %138, %492
  %497 = or i1 %495, %496
  br i1 %497, label %498, label %553

498:                                              ; preds = %494
  %499 = getelementptr inbounds %struct.BoxPack, ptr %489, i64 0, i32 3
  %500 = load float, ptr %499, align 4, !tbaa !52
  %501 = getelementptr inbounds %struct.BoxPack, ptr %492, i64 0, i32 3
  %502 = load float, ptr %501, align 4, !tbaa !52
  %503 = fsub float %500, %502
  %504 = tail call float @llvm.fabs.f32(float %503)
  %505 = fcmp olt float %504, 0x3EE4F8B580000000
  br i1 %505, label %506, label %539

506:                                              ; preds = %498
  %507 = getelementptr inbounds %struct.BoxPack, ptr %489, i64 0, i32 4, i64 3
  %508 = load ptr, ptr %507, align 8, !tbaa !38
  %509 = getelementptr inbounds %struct.BoxVert, ptr %508, i64 0, i32 2
  %510 = load i32, ptr %509, align 8
  %511 = and i32 %510, 256
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %526, label %513

513:                                              ; preds = %506
  %514 = getelementptr inbounds %struct.BoxPack, ptr %492, i64 0, i32 4
  %515 = load ptr, ptr %514, align 8, !tbaa !38
  %516 = getelementptr inbounds %struct.BoxVert, ptr %515, i64 0, i32 2
  %517 = load i32, ptr %516, align 8
  %518 = and i32 %517, 249
  %519 = or disjoint i32 %518, -256
  %520 = and i32 %519, %510
  store i32 %520, ptr %509, align 8
  %521 = load ptr, ptr %211, align 8, !tbaa !44
  %522 = getelementptr inbounds %struct.BoxPack, ptr %521, i64 0, i32 4, i64 3
  %523 = load ptr, ptr %522, align 8, !tbaa !38
  %524 = load ptr, ptr %212, align 8, !tbaa !45
  %525 = getelementptr inbounds %struct.BoxPack, ptr %524, i64 0, i32 4
  store ptr %523, ptr %525, align 8, !tbaa !38
  br label %553

526:                                              ; preds = %506
  %527 = and i32 %510, 249
  %528 = getelementptr inbounds %struct.BoxPack, ptr %492, i64 0, i32 4
  %529 = load ptr, ptr %528, align 8, !tbaa !38
  %530 = getelementptr inbounds %struct.BoxVert, ptr %529, i64 0, i32 2
  %531 = load i32, ptr %530, align 8
  %532 = or disjoint i32 %527, -256
  %533 = and i32 %531, %532
  store i32 %533, ptr %530, align 8
  %534 = load ptr, ptr %212, align 8, !tbaa !45
  %535 = getelementptr inbounds %struct.BoxPack, ptr %534, i64 0, i32 4
  %536 = load ptr, ptr %535, align 8, !tbaa !38
  %537 = load ptr, ptr %211, align 8, !tbaa !44
  %538 = getelementptr inbounds %struct.BoxPack, ptr %537, i64 0, i32 4, i64 3
  store ptr %536, ptr %538, align 8, !tbaa !38
  br label %553

539:                                              ; preds = %498
  %540 = fcmp ogt float %500, %502
  br i1 %540, label %541, label %547

541:                                              ; preds = %539
  %542 = getelementptr inbounds %struct.BoxPack, ptr %492, i64 0, i32 4
  %543 = load ptr, ptr %542, align 8, !tbaa !38
  %544 = getelementptr inbounds %struct.BoxVert, ptr %543, i64 0, i32 2
  %545 = load i32, ptr %544, align 8
  %546 = and i32 %545, -6
  store i32 %546, ptr %544, align 8
  br label %553

547:                                              ; preds = %539
  %548 = getelementptr inbounds %struct.BoxPack, ptr %489, i64 0, i32 4, i64 3
  %549 = load ptr, ptr %548, align 8, !tbaa !38
  %550 = getelementptr inbounds %struct.BoxVert, ptr %549, i64 0, i32 2
  %551 = load i32, ptr %550, align 8
  %552 = and i32 %551, -11
  store i32 %552, ptr %550, align 8
  br label %553

553:                                              ; preds = %494, %488, %491, %541, %547, %513, %526, %461, %448, %482, %476
  %554 = load ptr, ptr %209, align 8, !tbaa !46
  %555 = icmp eq ptr %554, null
  br i1 %555, label %618, label %556

556:                                              ; preds = %553
  %557 = load ptr, ptr %213, align 8, !tbaa !44
  %558 = icmp eq ptr %557, null
  br i1 %558, label %618, label %559

559:                                              ; preds = %556
  %560 = icmp eq ptr %138, %554
  %561 = icmp eq ptr %138, %557
  %562 = or i1 %560, %561
  br i1 %562, label %563, label %618

563:                                              ; preds = %559
  %564 = getelementptr inbounds %struct.BoxPack, ptr %554, i64 0, i32 2
  %565 = load float, ptr %564, align 8, !tbaa !50
  %566 = getelementptr inbounds %struct.BoxPack, ptr %557, i64 0, i32 2
  %567 = load float, ptr %566, align 8, !tbaa !50
  %568 = fsub float %565, %567
  %569 = tail call float @llvm.fabs.f32(float %568)
  %570 = fcmp olt float %569, 0x3EE4F8B580000000
  br i1 %570, label %571, label %604

571:                                              ; preds = %563
  %572 = getelementptr inbounds %struct.BoxPack, ptr %557, i64 0, i32 4, i64 2
  %573 = load ptr, ptr %572, align 8, !tbaa !38
  %574 = getelementptr inbounds %struct.BoxVert, ptr %573, i64 0, i32 2
  %575 = load i32, ptr %574, align 8
  %576 = and i32 %575, 256
  %577 = icmp eq i32 %576, 0
  br i1 %577, label %591, label %578

578:                                              ; preds = %571
  %579 = getelementptr inbounds %struct.BoxPack, ptr %554, i64 0, i32 4
  %580 = load ptr, ptr %579, align 8, !tbaa !38
  %581 = getelementptr inbounds %struct.BoxVert, ptr %580, i64 0, i32 2
  %582 = load i32, ptr %581, align 8
  %583 = and i32 %582, 245
  %584 = or disjoint i32 %583, -256
  %585 = and i32 %584, %575
  store i32 %585, ptr %574, align 8
  %586 = load ptr, ptr %213, align 8, !tbaa !44
  %587 = getelementptr inbounds %struct.BoxPack, ptr %586, i64 0, i32 4, i64 2
  %588 = load ptr, ptr %587, align 8, !tbaa !38
  %589 = load ptr, ptr %209, align 8, !tbaa !46
  %590 = getelementptr inbounds %struct.BoxPack, ptr %589, i64 0, i32 4
  store ptr %588, ptr %590, align 8, !tbaa !38
  br label %683

591:                                              ; preds = %571
  %592 = and i32 %575, 245
  %593 = getelementptr inbounds %struct.BoxPack, ptr %554, i64 0, i32 4
  %594 = load ptr, ptr %593, align 8, !tbaa !38
  %595 = getelementptr inbounds %struct.BoxVert, ptr %594, i64 0, i32 2
  %596 = load i32, ptr %595, align 8
  %597 = or disjoint i32 %592, -256
  %598 = and i32 %596, %597
  store i32 %598, ptr %595, align 8
  %599 = load ptr, ptr %209, align 8, !tbaa !46
  %600 = getelementptr inbounds %struct.BoxPack, ptr %599, i64 0, i32 4
  %601 = load ptr, ptr %600, align 8, !tbaa !38
  %602 = load ptr, ptr %213, align 8, !tbaa !44
  %603 = getelementptr inbounds %struct.BoxPack, ptr %602, i64 0, i32 4, i64 2
  store ptr %601, ptr %603, align 8, !tbaa !38
  br label %683

604:                                              ; preds = %563
  %605 = fcmp ogt float %565, %567
  br i1 %605, label %606, label %612

606:                                              ; preds = %604
  %607 = getelementptr inbounds %struct.BoxPack, ptr %557, i64 0, i32 4, i64 2
  %608 = load ptr, ptr %607, align 8, !tbaa !38
  %609 = getelementptr inbounds %struct.BoxVert, ptr %608, i64 0, i32 2
  %610 = load i32, ptr %609, align 8
  %611 = and i32 %610, -7
  store i32 %611, ptr %609, align 8
  br label %683

612:                                              ; preds = %604
  %613 = getelementptr inbounds %struct.BoxPack, ptr %554, i64 0, i32 4
  %614 = load ptr, ptr %613, align 8, !tbaa !38
  %615 = getelementptr inbounds %struct.BoxVert, ptr %614, i64 0, i32 2
  %616 = load i32, ptr %615, align 8
  %617 = and i32 %616, -10
  store i32 %617, ptr %615, align 8
  br label %683

618:                                              ; preds = %559, %556, %553
  %619 = load ptr, ptr %214, align 8, !tbaa !40
  %620 = icmp eq ptr %619, null
  br i1 %620, label %683, label %621

621:                                              ; preds = %618
  %622 = load ptr, ptr %215, align 8, !tbaa !45
  %623 = icmp eq ptr %622, null
  br i1 %623, label %683, label %624

624:                                              ; preds = %621
  %625 = icmp eq ptr %138, %619
  %626 = icmp eq ptr %138, %622
  %627 = or i1 %625, %626
  br i1 %627, label %628, label %683

628:                                              ; preds = %624
  %629 = getelementptr inbounds %struct.BoxPack, ptr %619, i64 0, i32 2
  %630 = load float, ptr %629, align 8, !tbaa !50
  %631 = getelementptr inbounds %struct.BoxPack, ptr %622, i64 0, i32 2
  %632 = load float, ptr %631, align 8, !tbaa !50
  %633 = fsub float %630, %632
  %634 = tail call float @llvm.fabs.f32(float %633)
  %635 = fcmp olt float %634, 0x3EE4F8B580000000
  br i1 %635, label %636, label %669

636:                                              ; preds = %628
  %637 = getelementptr inbounds %struct.BoxPack, ptr %622, i64 0, i32 4, i64 1
  %638 = load ptr, ptr %637, align 8, !tbaa !38
  %639 = getelementptr inbounds %struct.BoxVert, ptr %638, i64 0, i32 2
  %640 = load i32, ptr %639, align 8
  %641 = and i32 %640, 256
  %642 = icmp eq i32 %641, 0
  br i1 %642, label %656, label %643

643:                                              ; preds = %636
  %644 = getelementptr inbounds %struct.BoxPack, ptr %619, i64 0, i32 4, i64 3
  %645 = load ptr, ptr %644, align 8, !tbaa !38
  %646 = getelementptr inbounds %struct.BoxVert, ptr %645, i64 0, i32 2
  %647 = load i32, ptr %646, align 8
  %648 = and i32 %647, 250
  %649 = or disjoint i32 %648, -256
  %650 = and i32 %649, %640
  store i32 %650, ptr %639, align 8
  %651 = load ptr, ptr %215, align 8, !tbaa !45
  %652 = getelementptr inbounds %struct.BoxPack, ptr %651, i64 0, i32 4, i64 1
  %653 = load ptr, ptr %652, align 8, !tbaa !38
  %654 = load ptr, ptr %214, align 8, !tbaa !40
  %655 = getelementptr inbounds %struct.BoxPack, ptr %654, i64 0, i32 4, i64 3
  store ptr %653, ptr %655, align 8, !tbaa !38
  br label %683

656:                                              ; preds = %636
  %657 = and i32 %640, 250
  %658 = getelementptr inbounds %struct.BoxPack, ptr %619, i64 0, i32 4, i64 3
  %659 = load ptr, ptr %658, align 8, !tbaa !38
  %660 = getelementptr inbounds %struct.BoxVert, ptr %659, i64 0, i32 2
  %661 = load i32, ptr %660, align 8
  %662 = or disjoint i32 %657, -256
  %663 = and i32 %661, %662
  store i32 %663, ptr %660, align 8
  %664 = load ptr, ptr %214, align 8, !tbaa !40
  %665 = getelementptr inbounds %struct.BoxPack, ptr %664, i64 0, i32 4, i64 3
  %666 = load ptr, ptr %665, align 8, !tbaa !38
  %667 = load ptr, ptr %215, align 8, !tbaa !45
  %668 = getelementptr inbounds %struct.BoxPack, ptr %667, i64 0, i32 4, i64 1
  store ptr %666, ptr %668, align 8, !tbaa !38
  br label %683

669:                                              ; preds = %628
  %670 = fcmp ogt float %630, %632
  br i1 %670, label %671, label %677

671:                                              ; preds = %669
  %672 = getelementptr inbounds %struct.BoxPack, ptr %622, i64 0, i32 4, i64 1
  %673 = load ptr, ptr %672, align 8, !tbaa !38
  %674 = getelementptr inbounds %struct.BoxVert, ptr %673, i64 0, i32 2
  %675 = load i32, ptr %674, align 8
  %676 = and i32 %675, -7
  store i32 %676, ptr %674, align 8
  br label %683

677:                                              ; preds = %669
  %678 = getelementptr inbounds %struct.BoxPack, ptr %619, i64 0, i32 4, i64 3
  %679 = load ptr, ptr %678, align 8, !tbaa !38
  %680 = getelementptr inbounds %struct.BoxVert, ptr %679, i64 0, i32 2
  %681 = load i32, ptr %680, align 8
  %682 = and i32 %681, -10
  store i32 %682, ptr %680, align 8
  br label %683

683:                                              ; preds = %624, %618, %621, %671, %677, %643, %656, %591, %578, %612, %606
  br label %684

684:                                              ; preds = %683, %707
  %685 = phi i64 [ %709, %707 ], [ 0, %683 ]
  %686 = phi i32 [ %708, %707 ], [ %221, %683 ]
  %687 = getelementptr inbounds %struct.BoxPack, ptr %133, i64 1, i32 4, i64 %685
  %688 = load ptr, ptr %687, align 8, !tbaa !38
  %689 = getelementptr inbounds %struct.BoxVert, ptr %688, i64 0, i32 2
  %690 = load i32, ptr %689, align 8
  %691 = and i32 %690, 256
  %692 = icmp eq i32 %691, 0
  br i1 %692, label %693, label %707

693:                                              ; preds = %684
  %694 = or disjoint i32 %690, 256
  store i32 %694, ptr %689, align 8
  %695 = load ptr, ptr %687, align 8, !tbaa !38
  %696 = load float, ptr %695, align 8, !tbaa !53
  %697 = getelementptr inbounds %struct.BoxVert, ptr %695, i64 0, i32 1
  %698 = load float, ptr %697, align 4, !tbaa !54
  %699 = fmul float %696, %698
  %700 = fmul float %699, 0x3EB0C6F7A0000000
  %701 = getelementptr inbounds %struct.BoxVert, ptr %695, i64 0, i32 9
  store float %700, ptr %701, align 8, !tbaa !57
  %702 = getelementptr inbounds %struct.BoxVert, ptr %695, i64 0, i32 3
  %703 = load i32, ptr %702, align 4, !tbaa !43
  %704 = zext i32 %686 to i64
  %705 = getelementptr inbounds i32, ptr %14, i64 %704
  store i32 %703, ptr %705, align 4, !tbaa !59
  %706 = add i32 %686, 1
  br label %707

707:                                              ; preds = %684, %693
  %708 = phi i32 [ %706, %693 ], [ %686, %684 ]
  %709 = add nuw nsw i64 %685, 1
  %710 = icmp eq i64 %709, 4
  br i1 %710, label %711, label %684, !llvm.loop !63

711:                                              ; preds = %707
  %712 = load ptr, ptr %179, align 8, !tbaa !38
  %713 = load float, ptr %712, align 8, !tbaa !53
  store float %713, ptr %138, align 8, !tbaa !56
  %714 = getelementptr inbounds %struct.BoxVert, ptr %712, i64 0, i32 1
  %715 = load float, ptr %714, align 4, !tbaa !54
  store float %715, ptr %189, align 4, !tbaa !55
  br label %716

716:                                              ; preds = %379, %340, %301, %290, %216, %711
  %717 = phi i32 [ %708, %711 ], [ %221, %216 ], [ %221, %290 ], [ %221, %301 ], [ %221, %340 ], [ %221, %379 ]
  %718 = phi i8 [ 0, %711 ], [ %220, %216 ], [ 1, %290 ], [ 1, %301 ], [ 1, %340 ], [ 1, %379 ]
  %719 = phi float [ %387, %711 ], [ %219, %216 ], [ %219, %290 ], [ %219, %301 ], [ %219, %340 ], [ %219, %379 ]
  %720 = phi float [ %391, %711 ], [ %218, %216 ], [ %218, %290 ], [ %218, %301 ], [ %218, %340 ], [ %218, %379 ]
  %721 = add nuw nsw i64 %217, 1
  %722 = icmp ult i64 %217, 3
  %723 = icmp ne i8 %718, 0
  %724 = select i1 %722, i1 %723, i1 false
  br i1 %724, label %216, label %725, !llvm.loop !64

725:                                              ; preds = %716
  %726 = add nuw nsw i64 %191, 1
  %727 = zext i32 %717 to i64
  %728 = icmp ult i64 %726, %727
  %729 = icmp ne i8 %718, 0
  %730 = select i1 %728, i1 %729, i1 false
  br i1 %730, label %190, label %731, !llvm.loop !65

731:                                              ; preds = %725, %158
  %732 = phi i32 [ %159, %158 ], [ %717, %725 ]
  %733 = phi float [ %135, %158 ], [ %719, %725 ]
  %734 = phi float [ %134, %158 ], [ %720, %725 ]
  %735 = add nuw i32 %136, 1
  %736 = icmp eq i32 %735, %1
  br i1 %736, label %737, label %132, !llvm.loop !66

737:                                              ; preds = %731, %121
  %738 = phi float [ %87, %121 ], [ %733, %731 ]
  %739 = phi float [ %89, %121 ], [ %734, %731 ]
  store float %738, ptr %2, align 4, !tbaa !34
  store float %739, ptr %3, align 4, !tbaa !34
  %740 = tail call i32 @llvm.umax.i32(i32 %1, i32 1)
  %741 = zext i32 %740 to i64
  br label %742

742:                                              ; preds = %737, %742
  %743 = phi i64 [ 0, %737 ], [ %745, %742 ]
  %744 = getelementptr inbounds %struct.BoxPack, ptr %0, i64 %743, i32 4
  %745 = add nuw nsw i64 %743, 1
  %746 = icmp eq i64 %745, %741
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %744, i8 0, i64 32, i1 false)
  br i1 %746, label %747, label %742, !llvm.loop !67

747:                                              ; preds = %742
  %748 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  tail call void %748(ptr noundef %14) #7
  %749 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  %750 = load ptr, ptr @vertarray, align 8, !tbaa !38
  tail call void %749(ptr noundef %750) #7
  br label %751

751:                                              ; preds = %747, %6
  ret void
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @box_areasort(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.BoxPack, ptr %0, i64 0, i32 2
  %4 = load float, ptr %3, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct.BoxPack, ptr %0, i64 0, i32 3
  %6 = load float, ptr %5, align 4, !tbaa !52
  %7 = fmul float %4, %6
  %8 = getelementptr inbounds %struct.BoxPack, ptr %1, i64 0, i32 2
  %9 = load float, ptr %8, align 8, !tbaa !50
  %10 = getelementptr inbounds %struct.BoxPack, ptr %1, i64 0, i32 3
  %11 = load float, ptr %10, align 4, !tbaa !52
  %12 = fmul float %9, %11
  %13 = fcmp olt float %7, %12
  %14 = fcmp ogt float %7, %12
  %15 = sext i1 %14 to i32
  %16 = select i1 %13, i32 1, i32 %15
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @vertex_sort(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = load ptr, ptr @vertarray, align 8, !tbaa !38
  %4 = load i32, ptr %0, align 4, !tbaa !59
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds %struct.BoxVert, ptr %3, i64 %5
  %7 = load i32, ptr %1, align 4, !tbaa !59
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.BoxVert, ptr %3, i64 %8
  %10 = getelementptr inbounds %struct.BoxVert, ptr %3, i64 %5, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 255
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds %struct.BoxVert, ptr %3, i64 %8, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 255
  br i1 %13, label %17, label %20

17:                                               ; preds = %2
  %18 = icmp ne i32 %16, 0
  %19 = zext i1 %18 to i32
  br label %49

20:                                               ; preds = %2
  %21 = icmp eq i32 %16, 0
  br i1 %21, label %49, label %22

22:                                               ; preds = %20
  %23 = load float, ptr %6, align 8, !tbaa !53
  %24 = load float, ptr @box_width, align 4, !tbaa !34
  %25 = fadd float %23, %24
  %26 = getelementptr inbounds %struct.BoxVert, ptr %3, i64 %5, i32 1
  %27 = load float, ptr %26, align 4, !tbaa !54
  %28 = load float, ptr @box_height, align 4, !tbaa !34
  %29 = fadd float %27, %28
  %30 = fcmp ogt float %29, %25
  %31 = select i1 %30, float %29, float %25
  %32 = load float, ptr %9, align 8, !tbaa !53
  %33 = fadd float %24, %32
  %34 = getelementptr inbounds %struct.BoxVert, ptr %3, i64 %8, i32 1
  %35 = load float, ptr %34, align 4, !tbaa !54
  %36 = fadd float %28, %35
  %37 = fcmp ogt float %36, %33
  %38 = select i1 %37, float %36, float %33
  %39 = getelementptr inbounds %struct.BoxVert, ptr %3, i64 %5, i32 9
  %40 = load float, ptr %39, align 8, !tbaa !57
  %41 = fadd float %31, %40
  %42 = getelementptr inbounds %struct.BoxVert, ptr %3, i64 %8, i32 9
  %43 = load float, ptr %42, align 8, !tbaa !57
  %44 = fadd float %43, %38
  %45 = fcmp ogt float %41, %44
  br i1 %45, label %49, label %46

46:                                               ; preds = %22
  %47 = fcmp olt float %41, %44
  %48 = sext i1 %47 to i32
  br label %49

49:                                               ; preds = %17, %46, %22, %20
  %50 = phi i32 [ %19, %17 ], [ -1, %20 ], [ 1, %22 ], [ %48, %46 ]
  ret i32 %50
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

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
!35 = !{!"float", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"any pointer", !36, i64 0}
!40 = !{!41, !39, i64 16}
!41 = !{!"BoxVert", !35, i64 0, !35, i64 4, !42, i64 8, !42, i64 9, !42, i64 9, !42, i64 12, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !36, i64 48, !35, i64 80, !42, i64 84}
!42 = !{!"int", !36, i64 0}
!43 = !{!41, !42, i64 12}
!44 = !{!41, !39, i64 24}
!45 = !{!41, !39, i64 32}
!46 = !{!41, !39, i64 40}
!47 = distinct !{!47, !48, !49}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = !{!51, !35, i64 8}
!51 = !{!"BoxPack", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !36, i64 16, !42, i64 48}
!52 = !{!51, !35, i64 12}
!53 = !{!41, !35, i64 0}
!54 = !{!41, !35, i64 4}
!55 = !{!51, !35, i64 4}
!56 = !{!51, !35, i64 0}
!57 = !{!41, !35, i64 80}
!58 = distinct !{!58, !48, !49}
!59 = !{!42, !42, i64 0}
!60 = distinct !{!60, !48, !49}
!61 = distinct !{!61, !48, !49}
!62 = distinct !{!62, !48, !49}
!63 = distinct !{!63, !48, !49}
!64 = distinct !{!64, !48, !49}
!65 = distinct !{!65, !48, !49}
!66 = distinct !{!66, !48, !49}
!67 = distinct !{!67, !48, !49}
