; ModuleID = 'spec_qsort/spec_qsort.c'
source_filename = "spec_qsort/spec_qsort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @spec_qsort(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 !prof !40 {
  %5 = sub i64 0, %2
  %6 = icmp ne i64 %2, 8
  %7 = zext i1 %6 to i32
  %8 = icmp ne i64 %2, 4
  %9 = zext i1 %8 to i32
  %10 = ptrtoint ptr %0 to i64
  %11 = or i64 %10, %2
  %12 = and i64 %11, 7
  %13 = icmp eq i64 %12, 0
  %14 = select i1 %13, i32 %7, i32 2, !prof !41
  %15 = and i64 %11, 3
  %16 = icmp eq i64 %15, 0
  %17 = select i1 %16, i32 %9, i32 2, !prof !41
  %18 = icmp ult i64 %1, 7
  br i1 %18, label %21, label %19, !prof !42

19:                                               ; preds = %4
  %20 = trunc i64 %2 to i32
  br label %56

21:                                               ; preds = %242, %4
  %22 = phi i64 [ %1, %4 ], [ %245, %242 ]
  %23 = phi ptr [ %0, %4 ], [ %244, %242 ]
  %24 = phi i32 [ %14, %4 ], [ %250, %242 ]
  %25 = phi i32 [ %17, %4 ], [ %253, %242 ]
  %26 = mul i64 %22, %2
  %27 = getelementptr inbounds i8, ptr %23, i64 %26
  %28 = icmp sgt i64 %26, %2
  br i1 %28, label %29, label %255, !prof !43

29:                                               ; preds = %21
  %30 = getelementptr inbounds i8, ptr %23, i64 %2
  %31 = icmp eq i32 %24, 0
  br label %32

32:                                               ; preds = %29, %53
  %33 = phi ptr [ %30, %29 ], [ %54, %53 ]
  %34 = icmp ugt ptr %33, %23
  br i1 %34, label %35, label %53, !prof !44

35:                                               ; preds = %32, %51
  %36 = phi ptr [ %37, %51 ], [ %33, %32 ]
  %37 = getelementptr inbounds i8, ptr %36, i64 %5
  %38 = tail call i32 %3(ptr noundef nonnull %37, ptr noundef nonnull %36) #3
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %53, !prof !45

40:                                               ; preds = %35
  br i1 %31, label %41, label %44, !prof !46

41:                                               ; preds = %40
  %42 = load i64, ptr %36, align 8, !tbaa !47
  %43 = load i64, ptr %37, align 8, !tbaa !47
  store i64 %43, ptr %36, align 8, !tbaa !47
  store i64 %42, ptr %37, align 8, !tbaa !47
  br label %51

44:                                               ; preds = %40
  %45 = icmp eq i32 %25, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  %47 = load i32, ptr %36, align 4, !tbaa !51
  %48 = load i32, ptr %37, align 4, !tbaa !51
  store i32 %48, ptr %36, align 4, !tbaa !51
  store i32 %47, ptr %37, align 4, !tbaa !51
  br label %51

49:                                               ; preds = %44
  %50 = trunc i64 %2 to i32
  tail call fastcc void @swapfunc(ptr noundef nonnull %36, ptr noundef nonnull %37, i32 noundef %50, i32 noundef %24, i32 noundef %25) #4
  br label %51

51:                                               ; preds = %41, %49, %46
  %52 = icmp ugt ptr %37, %23
  br i1 %52, label %35, label %53, !prof !53, !llvm.loop !54

53:                                               ; preds = %51, %35, %32
  %54 = getelementptr inbounds i8, ptr %33, i64 %2
  %55 = icmp ult ptr %54, %27
  br i1 %55, label %32, label %255, !prof !56, !llvm.loop !57

56:                                               ; preds = %19, %242
  %57 = phi i32 [ %17, %19 ], [ %253, %242 ]
  %58 = phi i32 [ %14, %19 ], [ %250, %242 ]
  %59 = phi i64 [ %10, %19 ], [ %246, %242 ]
  %60 = phi ptr [ %0, %19 ], [ %244, %242 ]
  %61 = phi i64 [ %1, %19 ], [ %245, %242 ]
  %62 = lshr i64 %61, 1
  %63 = mul i64 %62, %2
  %64 = getelementptr inbounds i8, ptr %60, i64 %63
  %65 = icmp eq i64 %61, 7
  br i1 %65, label %91, label %66, !prof !58

66:                                               ; preds = %56
  %67 = add i64 %61, -1
  %68 = mul i64 %67, %2
  %69 = getelementptr inbounds i8, ptr %60, i64 %68
  %70 = icmp ugt i64 %61, 40
  br i1 %70, label %71, label %86, !prof !59

71:                                               ; preds = %66
  %72 = lshr i64 %61, 3
  %73 = mul i64 %72, %2
  %74 = getelementptr inbounds i8, ptr %60, i64 %73
  %75 = shl i64 %73, 1
  %76 = getelementptr inbounds i8, ptr %60, i64 %75
  %77 = tail call fastcc ptr @med3(ptr noundef %60, ptr noundef %74, ptr noundef %76, ptr noundef %3) #4
  %78 = sub i64 0, %73
  %79 = getelementptr inbounds i8, ptr %64, i64 %78
  %80 = getelementptr inbounds i8, ptr %64, i64 %73
  %81 = tail call fastcc ptr @med3(ptr noundef %79, ptr noundef %64, ptr noundef %80, ptr noundef %3) #4
  %82 = sub i64 0, %75
  %83 = getelementptr inbounds i8, ptr %69, i64 %82
  %84 = getelementptr inbounds i8, ptr %69, i64 %78
  %85 = tail call fastcc ptr @med3(ptr noundef %83, ptr noundef %84, ptr noundef %69, ptr noundef %3) #4
  br label %86

86:                                               ; preds = %71, %66
  %87 = phi ptr [ %85, %71 ], [ %69, %66 ]
  %88 = phi ptr [ %81, %71 ], [ %64, %66 ]
  %89 = phi ptr [ %77, %71 ], [ %60, %66 ]
  %90 = tail call fastcc ptr @med3(ptr noundef %89, ptr noundef %88, ptr noundef %87, ptr noundef %3) #4
  br label %91

91:                                               ; preds = %86, %56
  %92 = phi ptr [ %90, %86 ], [ %64, %56 ]
  %93 = icmp eq i32 %58, 0
  br i1 %93, label %94, label %97, !prof !60

94:                                               ; preds = %91
  %95 = load i64, ptr %60, align 8, !tbaa !47
  %96 = load i64, ptr %92, align 8, !tbaa !47
  store i64 %96, ptr %60, align 8, !tbaa !47
  store i64 %95, ptr %92, align 8, !tbaa !47
  br label %103

97:                                               ; preds = %91
  %98 = icmp eq i32 %57, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %97
  %100 = load i32, ptr %60, align 4, !tbaa !51
  %101 = load i32, ptr %92, align 4, !tbaa !51
  store i32 %101, ptr %60, align 4, !tbaa !51
  store i32 %100, ptr %92, align 4, !tbaa !51
  br label %103

102:                                              ; preds = %97
  tail call fastcc void @swapfunc(ptr noundef %60, ptr noundef %92, i32 noundef %20, i32 noundef %58, i32 noundef %57) #4
  br label %103

103:                                              ; preds = %99, %102, %94
  %104 = getelementptr inbounds i8, ptr %60, i64 %2
  %105 = add i64 %61, -1
  %106 = mul i64 %105, %2
  %107 = getelementptr inbounds i8, ptr %60, i64 %106
  %108 = icmp eq i32 %57, 0
  br label %109

109:                                              ; preds = %178, %103
  %110 = phi i32 [ 0, %103 ], [ 1, %178 ]
  %111 = phi ptr [ %107, %103 ], [ %147, %178 ]
  %112 = phi ptr [ %107, %103 ], [ %180, %178 ]
  %113 = phi ptr [ %104, %103 ], [ %179, %178 ]
  %114 = phi ptr [ %104, %103 ], [ %143, %178 ]
  %115 = icmp ugt ptr %113, %112
  br i1 %115, label %140, label %116, !prof !61

116:                                              ; preds = %109, %135
  %117 = phi ptr [ %137, %135 ], [ %114, %109 ]
  %118 = phi ptr [ %138, %135 ], [ %113, %109 ]
  %119 = phi i32 [ %136, %135 ], [ %110, %109 ]
  %120 = tail call i32 %3(ptr noundef %118, ptr noundef %60) #3
  %121 = icmp slt i32 %120, 1
  br i1 %121, label %122, label %140, !prof !62

122:                                              ; preds = %116
  %123 = icmp eq i32 %120, 0
  br i1 %123, label %124, label %135, !prof !63

124:                                              ; preds = %122
  br i1 %93, label %125, label %128

125:                                              ; preds = %124
  %126 = load i64, ptr %117, align 8, !tbaa !47
  %127 = load i64, ptr %118, align 8, !tbaa !47
  store i64 %127, ptr %117, align 8, !tbaa !47
  store i64 %126, ptr %118, align 8, !tbaa !47
  br label %133

128:                                              ; preds = %124
  br i1 %108, label %129, label %132

129:                                              ; preds = %128
  %130 = load i32, ptr %117, align 4, !tbaa !51
  %131 = load i32, ptr %118, align 4, !tbaa !51
  store i32 %131, ptr %117, align 4, !tbaa !51
  store i32 %130, ptr %118, align 4, !tbaa !51
  br label %133

132:                                              ; preds = %128
  tail call fastcc void @swapfunc(ptr noundef %117, ptr noundef %118, i32 noundef %20, i32 noundef %58, i32 noundef %57) #4
  br label %133

133:                                              ; preds = %129, %132, %125
  %134 = getelementptr inbounds i8, ptr %117, i64 %2
  br label %135

135:                                              ; preds = %133, %122
  %136 = phi i32 [ 1, %133 ], [ %119, %122 ]
  %137 = phi ptr [ %134, %133 ], [ %117, %122 ]
  %138 = getelementptr inbounds i8, ptr %118, i64 %2
  %139 = icmp ugt ptr %138, %112
  br i1 %139, label %140, label %116, !prof !64, !llvm.loop !65

140:                                              ; preds = %116, %135, %109
  %141 = phi i32 [ %110, %109 ], [ %136, %135 ], [ %119, %116 ]
  %142 = phi ptr [ %113, %109 ], [ %138, %135 ], [ %118, %116 ]
  %143 = phi ptr [ %114, %109 ], [ %137, %135 ], [ %117, %116 ]
  %144 = icmp ugt ptr %142, %112
  br i1 %144, label %181, label %145, !prof !66

145:                                              ; preds = %140, %164
  %146 = phi ptr [ %167, %164 ], [ %112, %140 ]
  %147 = phi ptr [ %166, %164 ], [ %111, %140 ]
  %148 = phi i32 [ %165, %164 ], [ %141, %140 ]
  %149 = tail call i32 %3(ptr noundef %146, ptr noundef %60) #3
  %150 = icmp sgt i32 %149, -1
  br i1 %150, label %151, label %169, !prof !67

151:                                              ; preds = %145
  %152 = icmp eq i32 %149, 0
  br i1 %152, label %153, label %164, !prof !68

153:                                              ; preds = %151
  br i1 %93, label %154, label %157

154:                                              ; preds = %153
  %155 = load i64, ptr %146, align 8, !tbaa !47
  %156 = load i64, ptr %147, align 8, !tbaa !47
  store i64 %156, ptr %146, align 8, !tbaa !47
  store i64 %155, ptr %147, align 8, !tbaa !47
  br label %162

157:                                              ; preds = %153
  br i1 %108, label %158, label %161

158:                                              ; preds = %157
  %159 = load i32, ptr %146, align 4, !tbaa !51
  %160 = load i32, ptr %147, align 4, !tbaa !51
  store i32 %160, ptr %146, align 4, !tbaa !51
  store i32 %159, ptr %147, align 4, !tbaa !51
  br label %162

161:                                              ; preds = %157
  tail call fastcc void @swapfunc(ptr noundef %146, ptr noundef %147, i32 noundef %20, i32 noundef %58, i32 noundef %57) #4
  br label %162

162:                                              ; preds = %158, %161, %154
  %163 = getelementptr inbounds i8, ptr %147, i64 %5
  br label %164

164:                                              ; preds = %162, %151
  %165 = phi i32 [ 1, %162 ], [ %148, %151 ]
  %166 = phi ptr [ %163, %162 ], [ %147, %151 ]
  %167 = getelementptr inbounds i8, ptr %146, i64 %5
  %168 = icmp ugt ptr %142, %167
  br i1 %168, label %181, label %145, !prof !69, !llvm.loop !70

169:                                              ; preds = %145
  br i1 %93, label %170, label %173, !prof !71

170:                                              ; preds = %169
  %171 = load i64, ptr %142, align 8, !tbaa !47
  %172 = load i64, ptr %146, align 8, !tbaa !47
  store i64 %172, ptr %142, align 8, !tbaa !47
  store i64 %171, ptr %146, align 8, !tbaa !47
  br label %178

173:                                              ; preds = %169
  br i1 %108, label %174, label %177

174:                                              ; preds = %173
  %175 = load i32, ptr %142, align 4, !tbaa !51
  %176 = load i32, ptr %146, align 4, !tbaa !51
  store i32 %176, ptr %142, align 4, !tbaa !51
  store i32 %175, ptr %146, align 4, !tbaa !51
  br label %178

177:                                              ; preds = %173
  tail call fastcc void @swapfunc(ptr noundef %142, ptr noundef %146, i32 noundef %20, i32 noundef %58, i32 noundef %57) #4
  br label %178

178:                                              ; preds = %174, %177, %170
  %179 = getelementptr inbounds i8, ptr %142, i64 %2
  %180 = getelementptr inbounds i8, ptr %146, i64 %5
  br label %109

181:                                              ; preds = %140, %164
  %182 = phi i32 [ %165, %164 ], [ %141, %140 ]
  %183 = phi ptr [ %166, %164 ], [ %111, %140 ]
  %184 = phi ptr [ %167, %164 ], [ %112, %140 ]
  %185 = icmp eq i32 %182, 0
  %186 = mul i64 %61, %2
  %187 = getelementptr inbounds i8, ptr %60, i64 %186
  br i1 %185, label %188, label %212, !prof !72

188:                                              ; preds = %181
  %189 = icmp sgt i64 %186, %2
  br i1 %189, label %190, label %255, !prof !73

190:                                              ; preds = %188, %209
  %191 = phi ptr [ %210, %209 ], [ %104, %188 ]
  %192 = icmp ugt ptr %191, %60
  br i1 %192, label %193, label %209, !prof !74

193:                                              ; preds = %190, %207
  %194 = phi ptr [ %195, %207 ], [ %191, %190 ]
  %195 = getelementptr inbounds i8, ptr %194, i64 %5
  %196 = tail call i32 %3(ptr noundef nonnull %195, ptr noundef nonnull %194) #3
  %197 = icmp sgt i32 %196, 0
  br i1 %197, label %198, label %209, !prof !75

198:                                              ; preds = %193
  br i1 %93, label %199, label %202, !prof !76

199:                                              ; preds = %198
  %200 = load i64, ptr %194, align 8, !tbaa !47
  %201 = load i64, ptr %195, align 8, !tbaa !47
  store i64 %201, ptr %194, align 8, !tbaa !47
  store i64 %200, ptr %195, align 8, !tbaa !47
  br label %207

202:                                              ; preds = %198
  br i1 %108, label %203, label %206

203:                                              ; preds = %202
  %204 = load i32, ptr %194, align 4, !tbaa !51
  %205 = load i32, ptr %195, align 4, !tbaa !51
  store i32 %205, ptr %194, align 4, !tbaa !51
  store i32 %204, ptr %195, align 4, !tbaa !51
  br label %207

206:                                              ; preds = %202
  tail call fastcc void @swapfunc(ptr noundef nonnull %194, ptr noundef nonnull %195, i32 noundef %20, i32 noundef %58, i32 noundef %57) #4
  br label %207

207:                                              ; preds = %199, %206, %203
  %208 = icmp ugt ptr %195, %60
  br i1 %208, label %193, label %209, !prof !77, !llvm.loop !78

209:                                              ; preds = %207, %193, %190
  %210 = getelementptr inbounds i8, ptr %191, i64 %2
  %211 = icmp ult ptr %210, %187
  br i1 %211, label %190, label %255, !prof !79, !llvm.loop !80

212:                                              ; preds = %181
  %213 = ptrtoint ptr %143 to i64
  %214 = sub i64 %213, %59
  %215 = ptrtoint ptr %142 to i64
  %216 = sub i64 %215, %213
  %217 = tail call i64 @llvm.smin.i64(i64 %214, i64 %216)
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %223, label %219, !prof !81

219:                                              ; preds = %212
  %220 = sub i64 0, %217
  %221 = getelementptr inbounds i8, ptr %142, i64 %220
  %222 = trunc i64 %217 to i32
  tail call fastcc void @swapfunc(ptr noundef %60, ptr noundef nonnull %221, i32 noundef %222, i32 noundef %58, i32 noundef %57) #4
  br label %223

223:                                              ; preds = %219, %212
  %224 = ptrtoint ptr %183 to i64
  %225 = ptrtoint ptr %184 to i64
  %226 = sub i64 %224, %225
  %227 = ptrtoint ptr %187 to i64
  %228 = add i64 %224, %2
  %229 = sub i64 %227, %228
  %230 = tail call i64 @llvm.smin.i64(i64 %226, i64 %229)
  %231 = icmp eq i64 %230, 0
  br i1 %231, label %236, label %232, !prof !82

232:                                              ; preds = %223
  %233 = sub i64 0, %230
  %234 = getelementptr inbounds i8, ptr %187, i64 %233
  %235 = trunc i64 %230 to i32
  tail call fastcc void @swapfunc(ptr noundef nonnull %142, ptr noundef nonnull %234, i32 noundef %235, i32 noundef %58, i32 noundef %57) #4
  br label %236

236:                                              ; preds = %232, %223
  %237 = icmp ugt i64 %216, %2
  br i1 %237, label %238, label %240, !prof !83

238:                                              ; preds = %236
  %239 = udiv i64 %216, %2
  tail call void @spec_qsort(ptr noundef %60, i64 noundef %239, i64 noundef %2, ptr noundef %3) #4
  br label %240

240:                                              ; preds = %238, %236
  %241 = icmp ugt i64 %226, %2
  br i1 %241, label %242, label %255, !prof !84

242:                                              ; preds = %240
  %243 = sub i64 0, %226
  %244 = getelementptr inbounds i8, ptr %187, i64 %243
  %245 = udiv i64 %226, %2
  %246 = ptrtoint ptr %244 to i64
  %247 = or i64 %246, %2
  %248 = and i64 %247, 7
  %249 = icmp eq i64 %248, 0
  %250 = select i1 %249, i32 %7, i32 2, !prof !41
  %251 = and i64 %247, 3
  %252 = icmp eq i64 %251, 0
  %253 = select i1 %252, i32 %9, i32 2, !prof !41
  %254 = icmp ult i64 %245, 7
  br i1 %254, label %21, label %56, !prof !85

255:                                              ; preds = %240, %209, %53, %188, %21
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @swapfunc(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #1 !prof !86 !PGOFuncName !87 {
  %6 = icmp slt i32 %3, 2
  br i1 %6, label %7, label %20, !prof !82

7:                                                ; preds = %5
  %8 = sext i32 %2 to i64
  %9 = lshr i64 %8, 3
  br label %10

10:                                               ; preds = %10, %7
  %11 = phi ptr [ %1, %7 ], [ %17, %10 ]
  %12 = phi ptr [ %0, %7 ], [ %16, %10 ]
  %13 = phi i64 [ %9, %7 ], [ %18, %10 ]
  %14 = load i64, ptr %12, align 8, !tbaa !47
  %15 = load i64, ptr %11, align 8, !tbaa !47
  %16 = getelementptr inbounds i64, ptr %12, i64 1
  store i64 %15, ptr %12, align 8, !tbaa !47
  %17 = getelementptr inbounds i64, ptr %11, i64 1
  store i64 %14, ptr %11, align 8, !tbaa !47
  %18 = add nsw i64 %13, -1
  %19 = icmp ugt i64 %13, 1
  br i1 %19, label %10, label %45, !prof !81, !llvm.loop !88

20:                                               ; preds = %5
  %21 = icmp slt i32 %4, 2
  %22 = sext i32 %2 to i64
  br i1 %21, label %23, label %35

23:                                               ; preds = %20
  %24 = lshr i64 %22, 2
  br label %25

25:                                               ; preds = %25, %23
  %26 = phi i64 [ %24, %23 ], [ %33, %25 ]
  %27 = phi ptr [ %0, %23 ], [ %31, %25 ]
  %28 = phi ptr [ %1, %23 ], [ %32, %25 ]
  %29 = load i32, ptr %27, align 4, !tbaa !51
  %30 = load i32, ptr %28, align 4, !tbaa !51
  %31 = getelementptr inbounds i32, ptr %27, i64 1
  store i32 %30, ptr %27, align 4, !tbaa !51
  %32 = getelementptr inbounds i32, ptr %28, i64 1
  store i32 %29, ptr %28, align 4, !tbaa !51
  %33 = add nsw i64 %26, -1
  %34 = icmp ugt i64 %26, 1
  br i1 %34, label %25, label %45, !llvm.loop !89

35:                                               ; preds = %20, %35
  %36 = phi i64 [ %43, %35 ], [ %22, %20 ]
  %37 = phi ptr [ %41, %35 ], [ %0, %20 ]
  %38 = phi ptr [ %42, %35 ], [ %1, %20 ]
  %39 = load i8, ptr %37, align 1, !tbaa !90
  %40 = load i8, ptr %38, align 1, !tbaa !90
  %41 = getelementptr inbounds i8, ptr %37, i64 1
  store i8 %40, ptr %37, align 1, !tbaa !90
  %42 = getelementptr inbounds i8, ptr %38, i64 1
  store i8 %39, ptr %38, align 1, !tbaa !90
  %43 = add nsw i64 %36, -1
  %44 = icmp sgt i64 %36, 1
  br i1 %44, label %35, label %45, !llvm.loop !91

45:                                               ; preds = %35, %25, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @med3(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !prof !92 !PGOFuncName !93 {
  %5 = tail call i32 %3(ptr noundef %0, ptr noundef %1) #3
  %6 = icmp slt i32 %5, 0
  %7 = tail call i32 %3(ptr noundef %1, ptr noundef %2) #3
  br i1 %6, label %8, label %14, !prof !94

8:                                                ; preds = %4
  %9 = icmp slt i32 %7, 0
  br i1 %9, label %20, label %10, !prof !95

10:                                               ; preds = %8
  %11 = tail call i32 %3(ptr noundef %0, ptr noundef %2) #3
  %12 = icmp slt i32 %11, 0
  %13 = select i1 %12, ptr %2, ptr %0, !prof !96
  br label %20

14:                                               ; preds = %4
  %15 = icmp sgt i32 %7, 0
  br i1 %15, label %20, label %16, !prof !97

16:                                               ; preds = %14
  %17 = tail call i32 %3(ptr noundef %0, ptr noundef %2) #3
  %18 = icmp slt i32 %17, 0
  %19 = select i1 %18, ptr %0, ptr %2, !prof !98
  br label %20

20:                                               ; preds = %14, %8, %16, %10
  %21 = phi ptr [ %13, %10 ], [ %19, %16 ], [ %1, %8 ], [ %1, %14 ]
  ret ptr %21
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind optsize }
attributes #4 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!39}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 142077978206}
!4 = !{!"MaxCount", i64 28590381975}
!5 = !{!"MaxInternalCount", i64 14978154134}
!6 = !{!"MaxFunctionCount", i64 28590381975}
!7 = !{!"NumCounts", i64 220}
!8 = !{!"NumFunctions", i64 31}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 28590381975, i32 1}
!14 = !{i32 100000, i64 28590381975, i32 1}
!15 = !{i32 200000, i64 28590381975, i32 1}
!16 = !{i32 300000, i64 17552692142, i32 2}
!17 = !{i32 400000, i64 14978154134, i32 3}
!18 = !{i32 500000, i64 12636872640, i32 4}
!19 = !{i32 600000, i64 11748475564, i32 5}
!20 = !{i32 700000, i64 9740370976, i32 7}
!21 = !{i32 800000, i64 2641604201, i32 10}
!22 = !{i32 900000, i64 1154233495, i32 16}
!23 = !{i32 950000, i64 353949924, i32 30}
!24 = !{i32 990000, i64 202655375, i32 46}
!25 = !{i32 999000, i64 28900000, i32 57}
!26 = !{i32 999900, i64 1101517, i32 82}
!27 = !{i32 999990, i64 864162, i32 94}
!28 = !{i32 999999, i64 50268, i32 104}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38}
!36 = !{ptr @spec_qsort, ptr @med3, i64 1001194925}
!37 = !{ptr @spec_qsort, ptr @swapfunc, i64 655812185}
!38 = !{ptr @spec_qsort, ptr @spec_qsort, i64 603709452}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 555623850}
!41 = !{!"branch_weights", i32 -1878695601, i32 4}
!42 = !{!"branch_weights", i32 1, i32 493725045}
!43 = !{!"branch_weights", i32 493725045, i32 1}
!44 = !{!"branch_weights", i32 512730683, i32 1}
!45 = !{!"branch_weights", i32 1692437607, i32 1470032636}
!46 = !{!"branch_weights", i32 1692437607, i32 1}
!47 = !{!48, !48, i64 0}
!48 = !{!"long", !49, i64 0}
!49 = !{!"omnipotent char", !50, i64 0}
!50 = !{!"Simple C/C++ TBAA"}
!51 = !{!52, !52, i64 0}
!52 = !{!"int", !49, i64 0}
!53 = !{!"branch_weights", i32 2137008876, i32 512730683}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"branch_weights", i32 976307591, i32 493725045}
!57 = distinct !{!57, !55}
!58 = !{!"branch_weights", i32 65807518, i32 579425729}
!59 = !{!"branch_weights", i32 112140721, i32 467285009}
!60 = !{!"branch_weights", i32 645233246, i32 1}
!61 = !{!"branch_weights", i32 1, i32 72467929}
!62 = !{!"branch_weights", i32 -1250659298, i32 -1961959402}
!63 = !{!"branch_weights", i32 1, i32 -1250659298}
!64 = !{!"branch_weights", i32 72467929, i32 -406916235}
!65 = distinct !{!65, !55}
!66 = !{!"branch_weights", i32 1, i32 161308311}
!67 = !{!"branch_weights", i32 -1180882789, i32 -1961959402}
!68 = !{!"branch_weights", i32 1, i32 -1180882789}
!69 = !{!"branch_weights", i32 161308311, i32 -532264618}
!70 = distinct !{!70, !55}
!71 = !{!"branch_weights", i32 -1118072077, i32 1}
!72 = !{!"branch_weights", i32 45325895, i32 599907352}
!73 = !{!"branch_weights", i32 45325894, i32 1}
!74 = !{!"branch_weights", i32 100406665, i32 1}
!75 = !{!"branch_weights", i32 1094070804, i32 471124441}
!76 = !{!"branch_weights", i32 1094070804, i32 1}
!77 = !{!"branch_weights", i32 1364381914, i32 100406665}
!78 = distinct !{!78, !55}
!79 = !{!"branch_weights", i32 425798547, i32 45325894}
!80 = distinct !{!80, !55}
!81 = !{!"branch_weights", i32 1, i32 599907352}
!82 = !{!"branch_weights", i32 599907352, i32 1}
!83 = !{!"branch_weights", i32 552246137, i32 47661216}
!84 = !{!"branch_weights", i32 583334441, i32 16572912}
!85 = !{!"branch_weights", i32 493725045, i32 151508201}
!86 = !{!"function_entry_count", i64 599907351}
!87 = !{!"spec_qsort.c:swapfunc"}
!88 = distinct !{!88, !55}
!89 = distinct !{!89, !55}
!90 = !{!49, !49, i64 0}
!91 = distinct !{!91, !55}
!92 = !{!"function_entry_count", i64 915847888}
!93 = !{!"spec_qsort.c:med3"}
!94 = !{!"branch_weights", i32 489252379, i32 426595511}
!95 = !{!"branch_weights", i32 171922283, i32 743925607}
!96 = !{!"branch_weights", i32 143129754, i32 772718136}
!97 = !{!"branch_weights", i32 138565834, i32 777282056}
!98 = !{!"branch_weights", i32 137550473, i32 778297417}
