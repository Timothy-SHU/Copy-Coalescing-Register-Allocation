; ModuleID = 'SimpleContentModel.cpp'
source_filename = "SimpleContentModel.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::SimpleContentModel" = type { %"class.xercesc_2_7::XMLContentModel", ptr, ptr, i32, i8, ptr }
%"class.xercesc_2_7::XMLContentModel" = type { ptr }
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::SubstitutionGroupComparator" = type { ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZTSN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTIN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

@.str = private unnamed_addr constant [23 x i8] c"SimpleContentModel.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_715XMLContentModel10gEOCFakeIdE = external local_unnamed_addr constant i32, align 4
@_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE = external local_unnamed_addr constant i32, align 4
@_ZN11xercesc_2_714XMLElementDecl14fgPCDataElemIdE = external local_unnamed_addr constant i32, align 4
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_718SimpleContentModel15validateContentEPPNS_5QNameEjj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !35
  %7 = and i32 %6, 15
  switch i32 %7, label %648 [
    i32 0, label %8
    i32 1, label %87
    i32 2, label %166
    i32 3, label %257
    i32 4, label %348
    i32 5, label %496
  ], !prof !43

8:                                                ; preds = %4
  %9 = icmp eq i32 %2, 0
  br i1 %9, label %672, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 4
  %12 = load i8, ptr %11, align 4, !tbaa !44, !range !45, !noundef !46
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %1, align 8, !tbaa !47
  br i1 %13, label %46, label %15

15:                                               ; preds = %10
  %16 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %14)
  %17 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !48
  %19 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %18)
  %20 = icmp eq ptr %16, null
  %21 = icmp eq ptr %19, null
  %22 = or i1 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %15
  %24 = load i16, ptr %16, align 2, !tbaa !49
  %25 = load i16, ptr %19, align 2, !tbaa !49
  %26 = icmp eq i16 %24, %25
  br i1 %26, label %35, label %672

27:                                               ; preds = %15
  br i1 %20, label %31, label %28

28:                                               ; preds = %27
  %29 = load i16, ptr %16, align 2, !tbaa !49
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %31, label %672

31:                                               ; preds = %28, %27
  br i1 %21, label %85, label %32

32:                                               ; preds = %31
  %33 = load i16, ptr %19, align 2, !tbaa !49
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %85, label %672

35:                                               ; preds = %23, %40
  %36 = phi i16 [ %43, %40 ], [ %24, %23 ]
  %37 = phi ptr [ %42, %40 ], [ %19, %23 ]
  %38 = phi ptr [ %41, %40 ], [ %16, %23 ]
  %39 = icmp eq i16 %36, 0
  br i1 %39, label %85, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds i16, ptr %38, i64 1
  %42 = getelementptr inbounds i16, ptr %37, i64 1
  %43 = load i16, ptr %41, align 2, !tbaa !49
  %44 = load i16, ptr %42, align 2, !tbaa !49
  %45 = icmp eq i16 %43, %44
  br i1 %45, label %35, label %672, !llvm.loop !51

46:                                               ; preds = %10
  %47 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %14, i64 0, i32 4
  %48 = load i32, ptr %47, align 4, !tbaa !54
  %49 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !48
  %51 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %50, i64 0, i32 4
  %52 = load i32, ptr %51, align 4, !tbaa !54
  %53 = icmp eq i32 %48, %52
  br i1 %53, label %54, label %672

54:                                               ; preds = %46
  %55 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %14, i64 0, i32 6
  %56 = load ptr, ptr %55, align 8, !tbaa !58
  %57 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %50, i64 0, i32 6
  %58 = load ptr, ptr %57, align 8, !tbaa !58
  %59 = icmp eq ptr %56, null
  %60 = icmp eq ptr %58, null
  %61 = or i1 %59, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %54
  %63 = load i16, ptr %56, align 2, !tbaa !49
  %64 = load i16, ptr %58, align 2, !tbaa !49
  %65 = icmp eq i16 %63, %64
  br i1 %65, label %74, label %672

66:                                               ; preds = %54
  br i1 %59, label %70, label %67

67:                                               ; preds = %66
  %68 = load i16, ptr %56, align 2, !tbaa !49
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %70, label %672

70:                                               ; preds = %67, %66
  br i1 %60, label %85, label %71

71:                                               ; preds = %70
  %72 = load i16, ptr %58, align 2, !tbaa !49
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %85, label %672

74:                                               ; preds = %62, %79
  %75 = phi i16 [ %82, %79 ], [ %63, %62 ]
  %76 = phi ptr [ %81, %79 ], [ %58, %62 ]
  %77 = phi ptr [ %80, %79 ], [ %56, %62 ]
  %78 = icmp eq i16 %75, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds i16, ptr %77, i64 1
  %81 = getelementptr inbounds i16, ptr %76, i64 1
  %82 = load i16, ptr %80, align 2, !tbaa !49
  %83 = load i16, ptr %81, align 2, !tbaa !49
  %84 = icmp eq i16 %82, %83
  br i1 %84, label %74, label %672, !llvm.loop !51

85:                                               ; preds = %35, %74, %71, %70, %32, %31
  %86 = icmp eq i32 %2, 1
  br i1 %86, label %655, label %672

87:                                               ; preds = %4
  %88 = icmp eq i32 %2, 1
  br i1 %88, label %89, label %164

89:                                               ; preds = %87
  %90 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 4
  %91 = load i8, ptr %90, align 4, !tbaa !44, !range !45, !noundef !46
  %92 = icmp eq i8 %91, 0
  %93 = load ptr, ptr %1, align 8, !tbaa !47
  br i1 %92, label %125, label %94

94:                                               ; preds = %89
  %95 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %93)
  %96 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !48
  %98 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %97)
  %99 = icmp eq ptr %95, null
  %100 = icmp eq ptr %98, null
  %101 = or i1 %99, %100
  br i1 %101, label %106, label %102

102:                                              ; preds = %94
  %103 = load i16, ptr %95, align 2, !tbaa !49
  %104 = load i16, ptr %98, align 2, !tbaa !49
  %105 = icmp eq i16 %103, %104
  br i1 %105, label %114, label %672

106:                                              ; preds = %94
  br i1 %99, label %110, label %107

107:                                              ; preds = %106
  %108 = load i16, ptr %95, align 2, !tbaa !49
  %109 = icmp eq i16 %108, 0
  br i1 %109, label %110, label %672

110:                                              ; preds = %107, %106
  br i1 %100, label %164, label %111

111:                                              ; preds = %110
  %112 = load i16, ptr %98, align 2, !tbaa !49
  %113 = icmp eq i16 %112, 0
  br i1 %113, label %164, label %672

114:                                              ; preds = %102, %119
  %115 = phi i16 [ %122, %119 ], [ %103, %102 ]
  %116 = phi ptr [ %121, %119 ], [ %98, %102 ]
  %117 = phi ptr [ %120, %119 ], [ %95, %102 ]
  %118 = icmp eq i16 %115, 0
  br i1 %118, label %164, label %119

119:                                              ; preds = %114
  %120 = getelementptr inbounds i16, ptr %117, i64 1
  %121 = getelementptr inbounds i16, ptr %116, i64 1
  %122 = load i16, ptr %120, align 2, !tbaa !49
  %123 = load i16, ptr %121, align 2, !tbaa !49
  %124 = icmp eq i16 %122, %123
  br i1 %124, label %114, label %672, !llvm.loop !51

125:                                              ; preds = %89
  %126 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %93, i64 0, i32 4
  %127 = load i32, ptr %126, align 4, !tbaa !54
  %128 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !48
  %130 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %129, i64 0, i32 4
  %131 = load i32, ptr %130, align 4, !tbaa !54
  %132 = icmp eq i32 %127, %131
  br i1 %132, label %133, label %672

133:                                              ; preds = %125
  %134 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %93, i64 0, i32 6
  %135 = load ptr, ptr %134, align 8, !tbaa !58
  %136 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %129, i64 0, i32 6
  %137 = load ptr, ptr %136, align 8, !tbaa !58
  %138 = icmp eq ptr %135, null
  %139 = icmp eq ptr %137, null
  %140 = or i1 %138, %139
  br i1 %140, label %145, label %141

141:                                              ; preds = %133
  %142 = load i16, ptr %135, align 2, !tbaa !49
  %143 = load i16, ptr %137, align 2, !tbaa !49
  %144 = icmp eq i16 %142, %143
  br i1 %144, label %153, label %672

145:                                              ; preds = %133
  br i1 %138, label %149, label %146

146:                                              ; preds = %145
  %147 = load i16, ptr %135, align 2, !tbaa !49
  %148 = icmp eq i16 %147, 0
  br i1 %148, label %149, label %672

149:                                              ; preds = %146, %145
  br i1 %139, label %164, label %150

150:                                              ; preds = %149
  %151 = load i16, ptr %137, align 2, !tbaa !49
  %152 = icmp eq i16 %151, 0
  br i1 %152, label %164, label %672

153:                                              ; preds = %141, %158
  %154 = phi i16 [ %161, %158 ], [ %142, %141 ]
  %155 = phi ptr [ %160, %158 ], [ %137, %141 ]
  %156 = phi ptr [ %159, %158 ], [ %135, %141 ]
  %157 = icmp eq i16 %154, 0
  br i1 %157, label %164, label %158

158:                                              ; preds = %153
  %159 = getelementptr inbounds i16, ptr %156, i64 1
  %160 = getelementptr inbounds i16, ptr %155, i64 1
  %161 = load i16, ptr %159, align 2, !tbaa !49
  %162 = load i16, ptr %160, align 2, !tbaa !49
  %163 = icmp eq i16 %161, %162
  br i1 %163, label %153, label %672, !llvm.loop !51

164:                                              ; preds = %114, %153, %150, %149, %111, %110, %87
  %165 = icmp ugt i32 %2, 1
  br i1 %165, label %672, label %655

166:                                              ; preds = %4
  %167 = icmp eq i32 %2, 0
  br i1 %167, label %655, label %168, !prof !59

168:                                              ; preds = %166
  %169 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 4
  %170 = load i8, ptr %169, align 4, !tbaa !44, !range !45, !noundef !46
  %171 = icmp eq i8 %170, 0
  %172 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 1
  br i1 %171, label %175, label %173, !prof !60

173:                                              ; preds = %168
  %174 = zext i32 %2 to i64
  br label %181

175:                                              ; preds = %168
  %176 = load ptr, ptr %172, align 8, !tbaa !48
  %177 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %176, i64 0, i32 4
  %178 = load i32, ptr %177, align 4, !tbaa !54
  %179 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %176, i64 0, i32 6
  %180 = zext i32 %2 to i64
  br label %217

181:                                              ; preds = %173, %214
  %182 = phi i64 [ 0, %173 ], [ %215, %214 ]
  %183 = getelementptr inbounds ptr, ptr %1, i64 %182
  %184 = load ptr, ptr %183, align 8, !tbaa !47
  %185 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %184)
  %186 = load ptr, ptr %172, align 8, !tbaa !48
  %187 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %186)
  %188 = icmp eq ptr %185, null
  %189 = icmp eq ptr %187, null
  %190 = or i1 %188, %189
  br i1 %190, label %195, label %191

191:                                              ; preds = %181
  %192 = load i16, ptr %185, align 2, !tbaa !49
  %193 = load i16, ptr %187, align 2, !tbaa !49
  %194 = icmp eq i16 %192, %193
  br i1 %194, label %203, label %666

195:                                              ; preds = %181
  br i1 %188, label %199, label %196

196:                                              ; preds = %195
  %197 = load i16, ptr %185, align 2, !tbaa !49
  %198 = icmp eq i16 %197, 0
  br i1 %198, label %199, label %666

199:                                              ; preds = %196, %195
  br i1 %189, label %214, label %200

200:                                              ; preds = %199
  %201 = load i16, ptr %187, align 2, !tbaa !49
  %202 = icmp eq i16 %201, 0
  br i1 %202, label %214, label %666

203:                                              ; preds = %191, %208
  %204 = phi i16 [ %211, %208 ], [ %192, %191 ]
  %205 = phi ptr [ %210, %208 ], [ %187, %191 ]
  %206 = phi ptr [ %209, %208 ], [ %185, %191 ]
  %207 = icmp eq i16 %204, 0
  br i1 %207, label %214, label %208

208:                                              ; preds = %203
  %209 = getelementptr inbounds i16, ptr %206, i64 1
  %210 = getelementptr inbounds i16, ptr %205, i64 1
  %211 = load i16, ptr %209, align 2, !tbaa !49
  %212 = load i16, ptr %210, align 2, !tbaa !49
  %213 = icmp eq i16 %211, %212
  br i1 %213, label %203, label %658, !llvm.loop !51

214:                                              ; preds = %203, %199, %200
  %215 = add nuw nsw i64 %182, 1
  %216 = icmp eq i64 %215, %174
  br i1 %216, label %655, label %181, !llvm.loop !61

217:                                              ; preds = %175, %254
  %218 = phi i64 [ 0, %175 ], [ %255, %254 ]
  %219 = getelementptr inbounds ptr, ptr %1, i64 %218
  %220 = load ptr, ptr %219, align 8, !tbaa !47
  %221 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %220, i64 0, i32 4
  %222 = load i32, ptr %221, align 4, !tbaa !54
  %223 = icmp eq i32 %222, %178
  br i1 %223, label %224, label %664, !prof !62

224:                                              ; preds = %217
  %225 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %220, i64 0, i32 6
  %226 = load ptr, ptr %225, align 8, !tbaa !58
  %227 = load ptr, ptr %179, align 8, !tbaa !58
  %228 = icmp eq ptr %226, null
  %229 = icmp eq ptr %227, null
  %230 = or i1 %228, %229
  br i1 %230, label %235, label %231, !prof !63

231:                                              ; preds = %224
  %232 = load i16, ptr %226, align 2, !tbaa !49
  %233 = load i16, ptr %227, align 2, !tbaa !49
  %234 = icmp eq i16 %232, %233
  br i1 %234, label %243, label %664, !prof !64

235:                                              ; preds = %224
  br i1 %228, label %239, label %236

236:                                              ; preds = %235
  %237 = load i16, ptr %226, align 2, !tbaa !49
  %238 = icmp eq i16 %237, 0
  br i1 %238, label %239, label %664

239:                                              ; preds = %236, %235
  br i1 %229, label %254, label %240

240:                                              ; preds = %239
  %241 = load i16, ptr %227, align 2, !tbaa !49
  %242 = icmp eq i16 %241, 0
  br i1 %242, label %254, label %664

243:                                              ; preds = %231, %248
  %244 = phi i16 [ %251, %248 ], [ %232, %231 ]
  %245 = phi ptr [ %250, %248 ], [ %227, %231 ]
  %246 = phi ptr [ %249, %248 ], [ %226, %231 ]
  %247 = icmp eq i16 %244, 0
  br i1 %247, label %254, label %248, !prof !65

248:                                              ; preds = %243
  %249 = getelementptr inbounds i16, ptr %246, i64 1
  %250 = getelementptr inbounds i16, ptr %245, i64 1
  %251 = load i16, ptr %249, align 2, !tbaa !49
  %252 = load i16, ptr %250, align 2, !tbaa !49
  %253 = icmp eq i16 %251, %252
  br i1 %253, label %243, label %656, !prof !66, !llvm.loop !51

254:                                              ; preds = %243, %239, %240
  %255 = add nuw nsw i64 %218, 1
  %256 = icmp eq i64 %255, %180
  br i1 %256, label %655, label %217, !prof !67, !llvm.loop !68

257:                                              ; preds = %4
  %258 = icmp eq i32 %2, 0
  br i1 %258, label %672, label %259, !prof !69

259:                                              ; preds = %257
  %260 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 4
  %261 = load i8, ptr %260, align 4, !tbaa !44, !range !45, !noundef !46
  %262 = icmp eq i8 %261, 0
  %263 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 1
  br i1 %262, label %266, label %264, !prof !70

264:                                              ; preds = %259
  %265 = zext i32 %2 to i64
  br label %272

266:                                              ; preds = %259
  %267 = load ptr, ptr %263, align 8, !tbaa !48
  %268 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %267, i64 0, i32 4
  %269 = load i32, ptr %268, align 4, !tbaa !54
  %270 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %267, i64 0, i32 6
  %271 = zext i32 %2 to i64
  br label %308

272:                                              ; preds = %264, %305
  %273 = phi i64 [ 0, %264 ], [ %306, %305 ]
  %274 = getelementptr inbounds ptr, ptr %1, i64 %273
  %275 = load ptr, ptr %274, align 8, !tbaa !47
  %276 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %275)
  %277 = load ptr, ptr %263, align 8, !tbaa !48
  %278 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %277)
  %279 = icmp eq ptr %276, null
  %280 = icmp eq ptr %278, null
  %281 = or i1 %279, %280
  br i1 %281, label %286, label %282

282:                                              ; preds = %272
  %283 = load i16, ptr %276, align 2, !tbaa !49
  %284 = load i16, ptr %278, align 2, !tbaa !49
  %285 = icmp eq i16 %283, %284
  br i1 %285, label %294, label %670

286:                                              ; preds = %272
  br i1 %279, label %290, label %287

287:                                              ; preds = %286
  %288 = load i16, ptr %276, align 2, !tbaa !49
  %289 = icmp eq i16 %288, 0
  br i1 %289, label %290, label %670

290:                                              ; preds = %287, %286
  br i1 %280, label %305, label %291

291:                                              ; preds = %290
  %292 = load i16, ptr %278, align 2, !tbaa !49
  %293 = icmp eq i16 %292, 0
  br i1 %293, label %305, label %670

294:                                              ; preds = %282, %299
  %295 = phi i16 [ %302, %299 ], [ %283, %282 ]
  %296 = phi ptr [ %301, %299 ], [ %278, %282 ]
  %297 = phi ptr [ %300, %299 ], [ %276, %282 ]
  %298 = icmp eq i16 %295, 0
  br i1 %298, label %305, label %299

299:                                              ; preds = %294
  %300 = getelementptr inbounds i16, ptr %297, i64 1
  %301 = getelementptr inbounds i16, ptr %296, i64 1
  %302 = load i16, ptr %300, align 2, !tbaa !49
  %303 = load i16, ptr %301, align 2, !tbaa !49
  %304 = icmp eq i16 %302, %303
  br i1 %304, label %294, label %662, !llvm.loop !51

305:                                              ; preds = %294, %290, %291
  %306 = add nuw nsw i64 %273, 1
  %307 = icmp eq i64 %306, %265
  br i1 %307, label %655, label %272, !llvm.loop !71

308:                                              ; preds = %266, %345
  %309 = phi i64 [ 0, %266 ], [ %346, %345 ]
  %310 = getelementptr inbounds ptr, ptr %1, i64 %309
  %311 = load ptr, ptr %310, align 8, !tbaa !47
  %312 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %311, i64 0, i32 4
  %313 = load i32, ptr %312, align 4, !tbaa !54
  %314 = icmp eq i32 %313, %269
  br i1 %314, label %315, label %668, !prof !72

315:                                              ; preds = %308
  %316 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %311, i64 0, i32 6
  %317 = load ptr, ptr %316, align 8, !tbaa !58
  %318 = load ptr, ptr %270, align 8, !tbaa !58
  %319 = icmp eq ptr %317, null
  %320 = icmp eq ptr %318, null
  %321 = or i1 %319, %320
  br i1 %321, label %326, label %322, !prof !73

322:                                              ; preds = %315
  %323 = load i16, ptr %317, align 2, !tbaa !49
  %324 = load i16, ptr %318, align 2, !tbaa !49
  %325 = icmp eq i16 %323, %324
  br i1 %325, label %334, label %668, !prof !64

326:                                              ; preds = %315
  br i1 %319, label %330, label %327

327:                                              ; preds = %326
  %328 = load i16, ptr %317, align 2, !tbaa !49
  %329 = icmp eq i16 %328, 0
  br i1 %329, label %330, label %668

330:                                              ; preds = %327, %326
  br i1 %320, label %345, label %331

331:                                              ; preds = %330
  %332 = load i16, ptr %318, align 2, !tbaa !49
  %333 = icmp eq i16 %332, 0
  br i1 %333, label %345, label %668

334:                                              ; preds = %322, %339
  %335 = phi i16 [ %342, %339 ], [ %323, %322 ]
  %336 = phi ptr [ %341, %339 ], [ %318, %322 ]
  %337 = phi ptr [ %340, %339 ], [ %317, %322 ]
  %338 = icmp eq i16 %335, 0
  br i1 %338, label %345, label %339, !prof !74

339:                                              ; preds = %334
  %340 = getelementptr inbounds i16, ptr %337, i64 1
  %341 = getelementptr inbounds i16, ptr %336, i64 1
  %342 = load i16, ptr %340, align 2, !tbaa !49
  %343 = load i16, ptr %341, align 2, !tbaa !49
  %344 = icmp eq i16 %342, %343
  br i1 %344, label %334, label %660, !prof !75, !llvm.loop !51

345:                                              ; preds = %334, %330, %331
  %346 = add nuw nsw i64 %309, 1
  %347 = icmp eq i64 %346, %271
  br i1 %347, label %655, label %308, !prof !76, !llvm.loop !77

348:                                              ; preds = %4
  %349 = icmp eq i32 %2, 0
  br i1 %349, label %672, label %350, !prof !78

350:                                              ; preds = %348
  %351 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 4
  %352 = load i8, ptr %351, align 4, !tbaa !44, !range !45, !noundef !46
  %353 = icmp eq i8 %352, 0
  %354 = load ptr, ptr %1, align 8, !tbaa !47
  br i1 %353, label %418, label %355, !prof !79

355:                                              ; preds = %350
  %356 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %354)
  %357 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 1
  %358 = load ptr, ptr %357, align 8, !tbaa !48
  %359 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %358)
  %360 = icmp eq ptr %356, null
  %361 = icmp eq ptr %359, null
  %362 = or i1 %360, %361
  br i1 %362, label %367, label %363

363:                                              ; preds = %355
  %364 = load i16, ptr %356, align 2, !tbaa !49
  %365 = load i16, ptr %359, align 2, !tbaa !49
  %366 = icmp eq i16 %364, %365
  br i1 %366, label %375, label %386

367:                                              ; preds = %355
  br i1 %360, label %371, label %368

368:                                              ; preds = %367
  %369 = load i16, ptr %356, align 2, !tbaa !49
  %370 = icmp eq i16 %369, 0
  br i1 %370, label %371, label %386

371:                                              ; preds = %368, %367
  br i1 %361, label %494, label %372

372:                                              ; preds = %371
  %373 = load i16, ptr %359, align 2, !tbaa !49
  %374 = icmp eq i16 %373, 0
  br i1 %374, label %494, label %386

375:                                              ; preds = %363, %380
  %376 = phi i16 [ %383, %380 ], [ %364, %363 ]
  %377 = phi ptr [ %382, %380 ], [ %359, %363 ]
  %378 = phi ptr [ %381, %380 ], [ %356, %363 ]
  %379 = icmp eq i16 %376, 0
  br i1 %379, label %494, label %380

380:                                              ; preds = %375
  %381 = getelementptr inbounds i16, ptr %378, i64 1
  %382 = getelementptr inbounds i16, ptr %377, i64 1
  %383 = load i16, ptr %381, align 2, !tbaa !49
  %384 = load i16, ptr %382, align 2, !tbaa !49
  %385 = icmp eq i16 %383, %384
  br i1 %385, label %375, label %386, !llvm.loop !51

386:                                              ; preds = %380, %363, %372, %368
  %387 = load ptr, ptr %1, align 8, !tbaa !47
  %388 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %387)
  %389 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 2
  %390 = load ptr, ptr %389, align 8, !tbaa !80
  %391 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %390)
  %392 = icmp eq ptr %388, null
  %393 = icmp eq ptr %391, null
  %394 = or i1 %392, %393
  br i1 %394, label %399, label %395

395:                                              ; preds = %386
  %396 = load i16, ptr %388, align 2, !tbaa !49
  %397 = load i16, ptr %391, align 2, !tbaa !49
  %398 = icmp eq i16 %396, %397
  br i1 %398, label %407, label %672

399:                                              ; preds = %386
  br i1 %392, label %403, label %400

400:                                              ; preds = %399
  %401 = load i16, ptr %388, align 2, !tbaa !49
  %402 = icmp eq i16 %401, 0
  br i1 %402, label %403, label %672

403:                                              ; preds = %400, %399
  br i1 %393, label %494, label %404

404:                                              ; preds = %403
  %405 = load i16, ptr %391, align 2, !tbaa !49
  %406 = icmp eq i16 %405, 0
  br i1 %406, label %494, label %672

407:                                              ; preds = %395, %412
  %408 = phi i16 [ %415, %412 ], [ %396, %395 ]
  %409 = phi ptr [ %414, %412 ], [ %391, %395 ]
  %410 = phi ptr [ %413, %412 ], [ %388, %395 ]
  %411 = icmp eq i16 %408, 0
  br i1 %411, label %494, label %412

412:                                              ; preds = %407
  %413 = getelementptr inbounds i16, ptr %410, i64 1
  %414 = getelementptr inbounds i16, ptr %409, i64 1
  %415 = load i16, ptr %413, align 2, !tbaa !49
  %416 = load i16, ptr %414, align 2, !tbaa !49
  %417 = icmp eq i16 %415, %416
  br i1 %417, label %407, label %672, !llvm.loop !51

418:                                              ; preds = %350
  %419 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %354, i64 0, i32 4
  %420 = load i32, ptr %419, align 4, !tbaa !54
  %421 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 1
  %422 = load ptr, ptr %421, align 8, !tbaa !48
  %423 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %422, i64 0, i32 4
  %424 = load i32, ptr %423, align 4, !tbaa !54
  %425 = icmp eq i32 %420, %424
  br i1 %425, label %426, label %457, !prof !79

426:                                              ; preds = %418
  %427 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %354, i64 0, i32 6
  %428 = load ptr, ptr %427, align 8, !tbaa !58
  %429 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %422, i64 0, i32 6
  %430 = load ptr, ptr %429, align 8, !tbaa !58
  %431 = icmp eq ptr %428, null
  %432 = icmp eq ptr %430, null
  %433 = or i1 %431, %432
  br i1 %433, label %438, label %434, !prof !78

434:                                              ; preds = %426
  %435 = load i16, ptr %428, align 2, !tbaa !49
  %436 = load i16, ptr %430, align 2, !tbaa !49
  %437 = icmp eq i16 %435, %436
  br i1 %437, label %446, label %457, !prof !81

438:                                              ; preds = %426
  br i1 %431, label %442, label %439

439:                                              ; preds = %438
  %440 = load i16, ptr %428, align 2, !tbaa !49
  %441 = icmp eq i16 %440, 0
  br i1 %441, label %442, label %457

442:                                              ; preds = %439, %438
  br i1 %432, label %494, label %443

443:                                              ; preds = %442
  %444 = load i16, ptr %430, align 2, !tbaa !49
  %445 = icmp eq i16 %444, 0
  br i1 %445, label %494, label %457

446:                                              ; preds = %434, %451
  %447 = phi i16 [ %454, %451 ], [ %435, %434 ]
  %448 = phi ptr [ %453, %451 ], [ %430, %434 ]
  %449 = phi ptr [ %452, %451 ], [ %428, %434 ]
  %450 = icmp eq i16 %447, 0
  br i1 %450, label %494, label %451, !prof !82

451:                                              ; preds = %446
  %452 = getelementptr inbounds i16, ptr %449, i64 1
  %453 = getelementptr inbounds i16, ptr %448, i64 1
  %454 = load i16, ptr %452, align 2, !tbaa !49
  %455 = load i16, ptr %453, align 2, !tbaa !49
  %456 = icmp eq i16 %454, %455
  br i1 %456, label %446, label %457, !prof !83, !llvm.loop !51

457:                                              ; preds = %451, %434, %443, %439, %418
  %458 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 2
  %459 = load ptr, ptr %458, align 8, !tbaa !80
  %460 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %459, i64 0, i32 4
  %461 = load i32, ptr %460, align 4, !tbaa !54
  %462 = icmp eq i32 %420, %461
  br i1 %462, label %463, label %672, !prof !84

463:                                              ; preds = %457
  %464 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %354, i64 0, i32 6
  %465 = load ptr, ptr %464, align 8, !tbaa !58
  %466 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %459, i64 0, i32 6
  %467 = load ptr, ptr %466, align 8, !tbaa !58
  %468 = icmp eq ptr %465, null
  %469 = icmp eq ptr %467, null
  %470 = or i1 %468, %469
  br i1 %470, label %475, label %471, !prof !85

471:                                              ; preds = %463
  %472 = load i16, ptr %465, align 2, !tbaa !49
  %473 = load i16, ptr %467, align 2, !tbaa !49
  %474 = icmp eq i16 %472, %473
  br i1 %474, label %483, label %672, !prof !64

475:                                              ; preds = %463
  br i1 %468, label %479, label %476

476:                                              ; preds = %475
  %477 = load i16, ptr %465, align 2, !tbaa !49
  %478 = icmp eq i16 %477, 0
  br i1 %478, label %479, label %672

479:                                              ; preds = %476, %475
  br i1 %469, label %494, label %480

480:                                              ; preds = %479
  %481 = load i16, ptr %467, align 2, !tbaa !49
  %482 = icmp eq i16 %481, 0
  br i1 %482, label %494, label %672

483:                                              ; preds = %471, %488
  %484 = phi i16 [ %491, %488 ], [ %472, %471 ]
  %485 = phi ptr [ %490, %488 ], [ %467, %471 ]
  %486 = phi ptr [ %489, %488 ], [ %465, %471 ]
  %487 = icmp eq i16 %484, 0
  br i1 %487, label %494, label %488, !prof !86

488:                                              ; preds = %483
  %489 = getelementptr inbounds i16, ptr %486, i64 1
  %490 = getelementptr inbounds i16, ptr %485, i64 1
  %491 = load i16, ptr %489, align 2, !tbaa !49
  %492 = load i16, ptr %490, align 2, !tbaa !49
  %493 = icmp eq i16 %491, %492
  br i1 %493, label %483, label %672, !prof !87, !llvm.loop !51

494:                                              ; preds = %375, %407, %446, %483, %480, %479, %443, %442, %404, %403, %372, %371
  %495 = icmp eq i32 %2, 1
  br i1 %495, label %655, label %672, !prof !79

496:                                              ; preds = %4
  switch i32 %2, label %646 [
    i32 0, label %672
    i32 2, label %497
  ], !prof !88

497:                                              ; preds = %496
  %498 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 4
  %499 = load i8, ptr %498, align 4, !tbaa !44, !range !45, !noundef !46
  %500 = icmp eq i8 %499, 0
  %501 = load ptr, ptr %1, align 8, !tbaa !47
  br i1 %500, label %566, label %502, !prof !89

502:                                              ; preds = %497
  %503 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %501)
  %504 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 1
  %505 = load ptr, ptr %504, align 8, !tbaa !48
  %506 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %505)
  %507 = icmp eq ptr %503, null
  %508 = icmp eq ptr %506, null
  %509 = or i1 %507, %508
  br i1 %509, label %514, label %510

510:                                              ; preds = %502
  %511 = load i16, ptr %503, align 2, !tbaa !49
  %512 = load i16, ptr %506, align 2, !tbaa !49
  %513 = icmp eq i16 %511, %512
  br i1 %513, label %522, label %672

514:                                              ; preds = %502
  br i1 %507, label %518, label %515

515:                                              ; preds = %514
  %516 = load i16, ptr %503, align 2, !tbaa !49
  %517 = icmp eq i16 %516, 0
  br i1 %517, label %518, label %672

518:                                              ; preds = %515, %514
  br i1 %508, label %533, label %519

519:                                              ; preds = %518
  %520 = load i16, ptr %506, align 2, !tbaa !49
  %521 = icmp eq i16 %520, 0
  br i1 %521, label %533, label %672

522:                                              ; preds = %510, %527
  %523 = phi i16 [ %530, %527 ], [ %511, %510 ]
  %524 = phi ptr [ %529, %527 ], [ %506, %510 ]
  %525 = phi ptr [ %528, %527 ], [ %503, %510 ]
  %526 = icmp eq i16 %523, 0
  br i1 %526, label %533, label %527

527:                                              ; preds = %522
  %528 = getelementptr inbounds i16, ptr %525, i64 1
  %529 = getelementptr inbounds i16, ptr %524, i64 1
  %530 = load i16, ptr %528, align 2, !tbaa !49
  %531 = load i16, ptr %529, align 2, !tbaa !49
  %532 = icmp eq i16 %530, %531
  br i1 %532, label %522, label %672, !llvm.loop !51

533:                                              ; preds = %522, %519, %518
  %534 = getelementptr inbounds ptr, ptr %1, i64 1
  %535 = load ptr, ptr %534, align 8, !tbaa !47
  %536 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %535)
  %537 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 2
  %538 = load ptr, ptr %537, align 8, !tbaa !80
  %539 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %538)
  %540 = icmp eq ptr %536, null
  %541 = icmp eq ptr %539, null
  %542 = or i1 %540, %541
  br i1 %542, label %547, label %543

543:                                              ; preds = %533
  %544 = load i16, ptr %536, align 2, !tbaa !49
  %545 = load i16, ptr %539, align 2, !tbaa !49
  %546 = icmp eq i16 %544, %545
  br i1 %546, label %555, label %672

547:                                              ; preds = %533
  br i1 %540, label %551, label %548

548:                                              ; preds = %547
  %549 = load i16, ptr %536, align 2, !tbaa !49
  %550 = icmp eq i16 %549, 0
  br i1 %550, label %551, label %672

551:                                              ; preds = %548, %547
  br i1 %541, label %655, label %552

552:                                              ; preds = %551
  %553 = load i16, ptr %539, align 2, !tbaa !49
  %554 = icmp eq i16 %553, 0
  br i1 %554, label %655, label %672

555:                                              ; preds = %543, %560
  %556 = phi i16 [ %563, %560 ], [ %544, %543 ]
  %557 = phi ptr [ %562, %560 ], [ %539, %543 ]
  %558 = phi ptr [ %561, %560 ], [ %536, %543 ]
  %559 = icmp eq i16 %556, 0
  br i1 %559, label %655, label %560

560:                                              ; preds = %555
  %561 = getelementptr inbounds i16, ptr %558, i64 1
  %562 = getelementptr inbounds i16, ptr %557, i64 1
  %563 = load i16, ptr %561, align 2, !tbaa !49
  %564 = load i16, ptr %562, align 2, !tbaa !49
  %565 = icmp eq i16 %563, %564
  br i1 %565, label %555, label %672, !llvm.loop !51

566:                                              ; preds = %497
  %567 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %501, i64 0, i32 4
  %568 = load i32, ptr %567, align 4, !tbaa !54
  %569 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 1
  %570 = load ptr, ptr %569, align 8, !tbaa !48
  %571 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %570, i64 0, i32 4
  %572 = load i32, ptr %571, align 4, !tbaa !54
  %573 = icmp eq i32 %568, %572
  br i1 %573, label %574, label %672, !prof !89

574:                                              ; preds = %566
  %575 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %501, i64 0, i32 6
  %576 = load ptr, ptr %575, align 8, !tbaa !58
  %577 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %570, i64 0, i32 6
  %578 = load ptr, ptr %577, align 8, !tbaa !58
  %579 = icmp eq ptr %576, null
  %580 = icmp eq ptr %578, null
  %581 = or i1 %579, %580
  br i1 %581, label %586, label %582, !prof !90

582:                                              ; preds = %574
  %583 = load i16, ptr %576, align 2, !tbaa !49
  %584 = load i16, ptr %578, align 2, !tbaa !49
  %585 = icmp eq i16 %583, %584
  br i1 %585, label %594, label %672, !prof !64

586:                                              ; preds = %574
  br i1 %579, label %590, label %587

587:                                              ; preds = %586
  %588 = load i16, ptr %576, align 2, !tbaa !49
  %589 = icmp eq i16 %588, 0
  br i1 %589, label %590, label %672

590:                                              ; preds = %587, %586
  br i1 %580, label %605, label %591

591:                                              ; preds = %590
  %592 = load i16, ptr %578, align 2, !tbaa !49
  %593 = icmp eq i16 %592, 0
  br i1 %593, label %605, label %672

594:                                              ; preds = %582, %599
  %595 = phi i16 [ %602, %599 ], [ %583, %582 ]
  %596 = phi ptr [ %601, %599 ], [ %578, %582 ]
  %597 = phi ptr [ %600, %599 ], [ %576, %582 ]
  %598 = icmp eq i16 %595, 0
  br i1 %598, label %605, label %599, !prof !91

599:                                              ; preds = %594
  %600 = getelementptr inbounds i16, ptr %597, i64 1
  %601 = getelementptr inbounds i16, ptr %596, i64 1
  %602 = load i16, ptr %600, align 2, !tbaa !49
  %603 = load i16, ptr %601, align 2, !tbaa !49
  %604 = icmp eq i16 %602, %603
  br i1 %604, label %594, label %672, !prof !92, !llvm.loop !51

605:                                              ; preds = %594, %591, %590
  %606 = getelementptr inbounds ptr, ptr %1, i64 1
  %607 = load ptr, ptr %606, align 8, !tbaa !47
  %608 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %607, i64 0, i32 4
  %609 = load i32, ptr %608, align 4, !tbaa !54
  %610 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 2
  %611 = load ptr, ptr %610, align 8, !tbaa !80
  %612 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %611, i64 0, i32 4
  %613 = load i32, ptr %612, align 4, !tbaa !54
  %614 = icmp eq i32 %609, %613
  br i1 %614, label %615, label %672, !prof !89

615:                                              ; preds = %605
  %616 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %607, i64 0, i32 6
  %617 = load ptr, ptr %616, align 8, !tbaa !58
  %618 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %611, i64 0, i32 6
  %619 = load ptr, ptr %618, align 8, !tbaa !58
  %620 = icmp eq ptr %617, null
  %621 = icmp eq ptr %619, null
  %622 = or i1 %620, %621
  br i1 %622, label %627, label %623, !prof !90

623:                                              ; preds = %615
  %624 = load i16, ptr %617, align 2, !tbaa !49
  %625 = load i16, ptr %619, align 2, !tbaa !49
  %626 = icmp eq i16 %624, %625
  br i1 %626, label %635, label %672, !prof !64

627:                                              ; preds = %615
  br i1 %620, label %631, label %628

628:                                              ; preds = %627
  %629 = load i16, ptr %617, align 2, !tbaa !49
  %630 = icmp eq i16 %629, 0
  br i1 %630, label %631, label %672

631:                                              ; preds = %628, %627
  br i1 %621, label %655, label %632

632:                                              ; preds = %631
  %633 = load i16, ptr %619, align 2, !tbaa !49
  %634 = icmp eq i16 %633, 0
  br i1 %634, label %655, label %672

635:                                              ; preds = %623, %640
  %636 = phi i16 [ %643, %640 ], [ %624, %623 ]
  %637 = phi ptr [ %642, %640 ], [ %619, %623 ]
  %638 = phi ptr [ %641, %640 ], [ %617, %623 ]
  %639 = icmp eq i16 %636, 0
  br i1 %639, label %655, label %640, !prof !93

640:                                              ; preds = %635
  %641 = getelementptr inbounds i16, ptr %638, i64 1
  %642 = getelementptr inbounds i16, ptr %637, i64 1
  %643 = load i16, ptr %641, align 2, !tbaa !49
  %644 = load i16, ptr %642, align 2, !tbaa !49
  %645 = icmp eq i16 %643, %644
  br i1 %645, label %635, label %672, !prof !94, !llvm.loop !51

646:                                              ; preds = %496
  %647 = tail call i32 @llvm.umin.i32(i32 %2, i32 2)
  br label %672

648:                                              ; preds = %4
  %649 = tail call ptr @__cxa_allocate_exception(i64 48) #8
  %650 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 5
  %651 = load ptr, ptr %650, align 8, !tbaa !95
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %649, ptr noundef nonnull @.str, i32 noundef 223, i32 noundef 22, ptr noundef %651)
          to label %652 unwind label %653

652:                                              ; preds = %648
  tail call void @__cxa_throw(ptr nonnull %649, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #9
  unreachable

653:                                              ; preds = %648
  %654 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %649) #8
  resume { ptr, i32 } %654

655:                                              ; preds = %555, %635, %305, %345, %214, %254, %632, %631, %552, %551, %494, %166, %164, %85
  br label %672

656:                                              ; preds = %248
  %657 = trunc i64 %218 to i32
  br label %672

658:                                              ; preds = %208
  %659 = trunc i64 %182 to i32
  br label %672

660:                                              ; preds = %339
  %661 = trunc i64 %309 to i32
  br label %672

662:                                              ; preds = %299
  %663 = trunc i64 %273 to i32
  br label %672

664:                                              ; preds = %231, %217, %236, %240
  %665 = trunc i64 %218 to i32
  br label %672

666:                                              ; preds = %191, %196, %200
  %667 = trunc i64 %182 to i32
  br label %672

668:                                              ; preds = %322, %308, %327, %331
  %669 = trunc i64 %309 to i32
  br label %672

670:                                              ; preds = %282, %287, %291
  %671 = trunc i64 %273 to i32
  br label %672

672:                                              ; preds = %527, %560, %599, %640, %412, %488, %119, %158, %40, %79, %670, %668, %666, %664, %662, %660, %658, %656, %510, %543, %582, %623, %395, %471, %102, %141, %23, %62, %494, %85, %632, %628, %591, %587, %552, %548, %519, %515, %480, %476, %404, %400, %150, %146, %111, %107, %71, %67, %32, %28, %646, %605, %566, %496, %457, %348, %257, %164, %125, %46, %8, %655
  %673 = phi i32 [ -1, %655 ], [ 0, %8 ], [ 0, %46 ], [ 0, %125 ], [ 1, %164 ], [ 0, %257 ], [ 0, %348 ], [ 0, %457 ], [ %2, %496 ], [ 0, %566 ], [ 1, %605 ], [ %647, %646 ], [ 0, %28 ], [ 0, %32 ], [ 0, %67 ], [ 0, %71 ], [ 0, %107 ], [ 0, %111 ], [ 0, %146 ], [ 0, %150 ], [ 0, %400 ], [ 0, %404 ], [ 0, %476 ], [ 0, %480 ], [ 0, %515 ], [ 0, %519 ], [ 1, %548 ], [ 1, %552 ], [ 0, %587 ], [ 0, %591 ], [ 1, %628 ], [ 1, %632 ], [ 1, %85 ], [ 1, %494 ], [ 0, %62 ], [ 0, %23 ], [ 0, %141 ], [ 0, %102 ], [ 0, %471 ], [ 0, %395 ], [ 1, %623 ], [ 0, %582 ], [ 1, %543 ], [ 0, %510 ], [ %657, %656 ], [ %659, %658 ], [ %661, %660 ], [ %663, %662 ], [ %665, %664 ], [ %667, %666 ], [ %669, %668 ], [ %671, %670 ], [ 0, %79 ], [ 0, %40 ], [ 0, %158 ], [ 0, %119 ], [ 0, %488 ], [ 0, %412 ], [ 1, %640 ], [ 0, %599 ], [ 1, %560 ], [ 0, %527 ]
  ret i32 %673
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #3

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !97
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #8
  resume { ptr, i32 } %8
}

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #0

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_718SimpleContentModel22validateContentSpecialEPPNS_5QNameEjjPNS_15GrammarResolverEPNS_13XMLStringPoolE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %7 = alloca %"class.xercesc_2_7::SubstitutionGroupComparator", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8
  store ptr %4, ptr %7, align 8, !tbaa !99
  %8 = getelementptr inbounds %"class.xercesc_2_7::SubstitutionGroupComparator", ptr %7, i64 0, i32 1
  store ptr %5, ptr %8, align 8, !tbaa !101
  %9 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !35
  %11 = and i32 %10, 15
  switch i32 %11, label %381 [
    i32 0, label %12
    i32 1, label %58
    i32 2, label %104
    i32 3, label %155
    i32 4, label %206
    i32 5, label %293
  ]

12:                                               ; preds = %6
  %13 = icmp eq i32 %2, 0
  br i1 %13, label %393, label %14

14:                                               ; preds = %12
  %15 = load ptr, ptr %1, align 8, !tbaa !47
  %16 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %15, i64 0, i32 4
  %17 = load i32, ptr %16, align 4, !tbaa !54
  %18 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !48
  %20 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %19, i64 0, i32 4
  %21 = load i32, ptr %20, align 4, !tbaa !54
  %22 = icmp eq i32 %17, %21
  br i1 %22, label %23, label %54

23:                                               ; preds = %14
  %24 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %15, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !58
  %26 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %19, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !58
  %28 = icmp eq ptr %25, null
  %29 = icmp eq ptr %27, null
  %30 = or i1 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %23
  %32 = load i16, ptr %25, align 2, !tbaa !49
  %33 = load i16, ptr %27, align 2, !tbaa !49
  %34 = icmp eq i16 %32, %33
  br i1 %34, label %43, label %54

35:                                               ; preds = %23
  br i1 %28, label %39, label %36

36:                                               ; preds = %35
  %37 = load i16, ptr %25, align 2, !tbaa !49
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %36, %35
  br i1 %29, label %56, label %40

40:                                               ; preds = %39
  %41 = load i16, ptr %27, align 2, !tbaa !49
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %56, label %54

43:                                               ; preds = %31, %48
  %44 = phi i16 [ %51, %48 ], [ %32, %31 ]
  %45 = phi ptr [ %50, %48 ], [ %27, %31 ]
  %46 = phi ptr [ %49, %48 ], [ %25, %31 ]
  %47 = icmp eq i16 %44, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds i16, ptr %46, i64 1
  %50 = getelementptr inbounds i16, ptr %45, i64 1
  %51 = load i16, ptr %49, align 2, !tbaa !49
  %52 = load i16, ptr %50, align 2, !tbaa !49
  %53 = icmp eq i16 %51, %52
  br i1 %53, label %43, label %54, !llvm.loop !51

54:                                               ; preds = %48, %31, %40, %36, %14
  %55 = call noundef zeroext i1 @_ZN11xercesc_2_727SubstitutionGroupComparator14isEquivalentToEPNS_5QNameES2_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %15, ptr noundef %19)
  br i1 %55, label %56, label %393

56:                                               ; preds = %43, %40, %39, %54
  %57 = icmp eq i32 %2, 1
  br i1 %57, label %388, label %393

58:                                               ; preds = %6
  %59 = icmp eq i32 %2, 1
  br i1 %59, label %60, label %102

60:                                               ; preds = %58
  %61 = load ptr, ptr %1, align 8, !tbaa !47
  %62 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %61, i64 0, i32 4
  %63 = load i32, ptr %62, align 4, !tbaa !54
  %64 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !48
  %66 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %65, i64 0, i32 4
  %67 = load i32, ptr %66, align 4, !tbaa !54
  %68 = icmp eq i32 %63, %67
  br i1 %68, label %69, label %100

69:                                               ; preds = %60
  %70 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %61, i64 0, i32 6
  %71 = load ptr, ptr %70, align 8, !tbaa !58
  %72 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %65, i64 0, i32 6
  %73 = load ptr, ptr %72, align 8, !tbaa !58
  %74 = icmp eq ptr %71, null
  %75 = icmp eq ptr %73, null
  %76 = or i1 %74, %75
  br i1 %76, label %81, label %77

77:                                               ; preds = %69
  %78 = load i16, ptr %71, align 2, !tbaa !49
  %79 = load i16, ptr %73, align 2, !tbaa !49
  %80 = icmp eq i16 %78, %79
  br i1 %80, label %89, label %100

81:                                               ; preds = %69
  br i1 %74, label %85, label %82

82:                                               ; preds = %81
  %83 = load i16, ptr %71, align 2, !tbaa !49
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %82, %81
  br i1 %75, label %102, label %86

86:                                               ; preds = %85
  %87 = load i16, ptr %73, align 2, !tbaa !49
  %88 = icmp eq i16 %87, 0
  br i1 %88, label %102, label %100

89:                                               ; preds = %77, %94
  %90 = phi i16 [ %97, %94 ], [ %78, %77 ]
  %91 = phi ptr [ %96, %94 ], [ %73, %77 ]
  %92 = phi ptr [ %95, %94 ], [ %71, %77 ]
  %93 = icmp eq i16 %90, 0
  br i1 %93, label %102, label %94

94:                                               ; preds = %89
  %95 = getelementptr inbounds i16, ptr %92, i64 1
  %96 = getelementptr inbounds i16, ptr %91, i64 1
  %97 = load i16, ptr %95, align 2, !tbaa !49
  %98 = load i16, ptr %96, align 2, !tbaa !49
  %99 = icmp eq i16 %97, %98
  br i1 %99, label %89, label %100, !llvm.loop !51

100:                                              ; preds = %94, %77, %86, %82, %60
  %101 = call noundef zeroext i1 @_ZN11xercesc_2_727SubstitutionGroupComparator14isEquivalentToEPNS_5QNameES2_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %61, ptr noundef %65)
  br i1 %101, label %102, label %393

102:                                              ; preds = %89, %86, %85, %100, %58
  %103 = icmp ugt i32 %2, 1
  br i1 %103, label %393, label %388

104:                                              ; preds = %6
  %105 = icmp eq i32 %2, 0
  br i1 %105, label %388, label %106

106:                                              ; preds = %104
  %107 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 1
  %108 = zext i32 %2 to i64
  br label %109

109:                                              ; preds = %106, %152
  %110 = phi i64 [ 0, %106 ], [ %153, %152 ]
  %111 = getelementptr inbounds ptr, ptr %1, i64 %110
  %112 = load ptr, ptr %111, align 8, !tbaa !47
  %113 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %112, i64 0, i32 4
  %114 = load i32, ptr %113, align 4, !tbaa !54
  %115 = load ptr, ptr %107, align 8, !tbaa !48
  %116 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %115, i64 0, i32 4
  %117 = load i32, ptr %116, align 4, !tbaa !54
  %118 = icmp eq i32 %114, %117
  br i1 %118, label %119, label %150

119:                                              ; preds = %109
  %120 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %112, i64 0, i32 6
  %121 = load ptr, ptr %120, align 8, !tbaa !58
  %122 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %115, i64 0, i32 6
  %123 = load ptr, ptr %122, align 8, !tbaa !58
  %124 = icmp eq ptr %121, null
  %125 = icmp eq ptr %123, null
  %126 = or i1 %124, %125
  br i1 %126, label %131, label %127

127:                                              ; preds = %119
  %128 = load i16, ptr %121, align 2, !tbaa !49
  %129 = load i16, ptr %123, align 2, !tbaa !49
  %130 = icmp eq i16 %128, %129
  br i1 %130, label %139, label %150

131:                                              ; preds = %119
  br i1 %124, label %135, label %132

132:                                              ; preds = %131
  %133 = load i16, ptr %121, align 2, !tbaa !49
  %134 = icmp eq i16 %133, 0
  br i1 %134, label %135, label %150

135:                                              ; preds = %132, %131
  br i1 %125, label %152, label %136

136:                                              ; preds = %135
  %137 = load i16, ptr %123, align 2, !tbaa !49
  %138 = icmp eq i16 %137, 0
  br i1 %138, label %152, label %150

139:                                              ; preds = %127, %144
  %140 = phi i16 [ %147, %144 ], [ %128, %127 ]
  %141 = phi ptr [ %146, %144 ], [ %123, %127 ]
  %142 = phi ptr [ %145, %144 ], [ %121, %127 ]
  %143 = icmp eq i16 %140, 0
  br i1 %143, label %152, label %144

144:                                              ; preds = %139
  %145 = getelementptr inbounds i16, ptr %142, i64 1
  %146 = getelementptr inbounds i16, ptr %141, i64 1
  %147 = load i16, ptr %145, align 2, !tbaa !49
  %148 = load i16, ptr %146, align 2, !tbaa !49
  %149 = icmp eq i16 %147, %148
  br i1 %149, label %139, label %150, !llvm.loop !51

150:                                              ; preds = %144, %127, %136, %132, %109
  %151 = call noundef zeroext i1 @_ZN11xercesc_2_727SubstitutionGroupComparator14isEquivalentToEPNS_5QNameES2_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %112, ptr noundef %115)
  br i1 %151, label %152, label %389

152:                                              ; preds = %139, %136, %135, %150
  %153 = add nuw nsw i64 %110, 1
  %154 = icmp eq i64 %153, %108
  br i1 %154, label %388, label %109, !llvm.loop !102

155:                                              ; preds = %6
  %156 = icmp eq i32 %2, 0
  br i1 %156, label %393, label %157

157:                                              ; preds = %155
  %158 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 1
  %159 = zext i32 %2 to i64
  br label %160

160:                                              ; preds = %157, %203
  %161 = phi i64 [ 0, %157 ], [ %204, %203 ]
  %162 = getelementptr inbounds ptr, ptr %1, i64 %161
  %163 = load ptr, ptr %162, align 8, !tbaa !47
  %164 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %163, i64 0, i32 4
  %165 = load i32, ptr %164, align 4, !tbaa !54
  %166 = load ptr, ptr %158, align 8, !tbaa !48
  %167 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %166, i64 0, i32 4
  %168 = load i32, ptr %167, align 4, !tbaa !54
  %169 = icmp eq i32 %165, %168
  br i1 %169, label %170, label %201

170:                                              ; preds = %160
  %171 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %163, i64 0, i32 6
  %172 = load ptr, ptr %171, align 8, !tbaa !58
  %173 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %166, i64 0, i32 6
  %174 = load ptr, ptr %173, align 8, !tbaa !58
  %175 = icmp eq ptr %172, null
  %176 = icmp eq ptr %174, null
  %177 = or i1 %175, %176
  br i1 %177, label %182, label %178

178:                                              ; preds = %170
  %179 = load i16, ptr %172, align 2, !tbaa !49
  %180 = load i16, ptr %174, align 2, !tbaa !49
  %181 = icmp eq i16 %179, %180
  br i1 %181, label %190, label %201

182:                                              ; preds = %170
  br i1 %175, label %186, label %183

183:                                              ; preds = %182
  %184 = load i16, ptr %172, align 2, !tbaa !49
  %185 = icmp eq i16 %184, 0
  br i1 %185, label %186, label %201

186:                                              ; preds = %183, %182
  br i1 %176, label %203, label %187

187:                                              ; preds = %186
  %188 = load i16, ptr %174, align 2, !tbaa !49
  %189 = icmp eq i16 %188, 0
  br i1 %189, label %203, label %201

190:                                              ; preds = %178, %195
  %191 = phi i16 [ %198, %195 ], [ %179, %178 ]
  %192 = phi ptr [ %197, %195 ], [ %174, %178 ]
  %193 = phi ptr [ %196, %195 ], [ %172, %178 ]
  %194 = icmp eq i16 %191, 0
  br i1 %194, label %203, label %195

195:                                              ; preds = %190
  %196 = getelementptr inbounds i16, ptr %193, i64 1
  %197 = getelementptr inbounds i16, ptr %192, i64 1
  %198 = load i16, ptr %196, align 2, !tbaa !49
  %199 = load i16, ptr %197, align 2, !tbaa !49
  %200 = icmp eq i16 %198, %199
  br i1 %200, label %190, label %201, !llvm.loop !51

201:                                              ; preds = %195, %178, %187, %183, %160
  %202 = call noundef zeroext i1 @_ZN11xercesc_2_727SubstitutionGroupComparator14isEquivalentToEPNS_5QNameES2_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %163, ptr noundef %166)
  br i1 %202, label %203, label %391

203:                                              ; preds = %190, %187, %186, %201
  %204 = add nuw nsw i64 %161, 1
  %205 = icmp eq i64 %204, %159
  br i1 %205, label %388, label %160, !llvm.loop !103

206:                                              ; preds = %6
  %207 = icmp eq i32 %2, 0
  br i1 %207, label %393, label %208

208:                                              ; preds = %206
  %209 = load ptr, ptr %1, align 8, !tbaa !47
  %210 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %209, i64 0, i32 4
  %211 = load i32, ptr %210, align 4, !tbaa !54
  %212 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 1
  %213 = load ptr, ptr %212, align 8, !tbaa !48
  %214 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %213, i64 0, i32 4
  %215 = load i32, ptr %214, align 4, !tbaa !54
  %216 = icmp eq i32 %211, %215
  br i1 %216, label %217, label %248

217:                                              ; preds = %208
  %218 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %209, i64 0, i32 6
  %219 = load ptr, ptr %218, align 8, !tbaa !58
  %220 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %213, i64 0, i32 6
  %221 = load ptr, ptr %220, align 8, !tbaa !58
  %222 = icmp eq ptr %219, null
  %223 = icmp eq ptr %221, null
  %224 = or i1 %222, %223
  br i1 %224, label %229, label %225

225:                                              ; preds = %217
  %226 = load i16, ptr %219, align 2, !tbaa !49
  %227 = load i16, ptr %221, align 2, !tbaa !49
  %228 = icmp eq i16 %226, %227
  br i1 %228, label %237, label %248

229:                                              ; preds = %217
  br i1 %222, label %233, label %230

230:                                              ; preds = %229
  %231 = load i16, ptr %219, align 2, !tbaa !49
  %232 = icmp eq i16 %231, 0
  br i1 %232, label %233, label %248

233:                                              ; preds = %230, %229
  br i1 %223, label %291, label %234

234:                                              ; preds = %233
  %235 = load i16, ptr %221, align 2, !tbaa !49
  %236 = icmp eq i16 %235, 0
  br i1 %236, label %291, label %248

237:                                              ; preds = %225, %242
  %238 = phi i16 [ %245, %242 ], [ %226, %225 ]
  %239 = phi ptr [ %244, %242 ], [ %221, %225 ]
  %240 = phi ptr [ %243, %242 ], [ %219, %225 ]
  %241 = icmp eq i16 %238, 0
  br i1 %241, label %291, label %242

242:                                              ; preds = %237
  %243 = getelementptr inbounds i16, ptr %240, i64 1
  %244 = getelementptr inbounds i16, ptr %239, i64 1
  %245 = load i16, ptr %243, align 2, !tbaa !49
  %246 = load i16, ptr %244, align 2, !tbaa !49
  %247 = icmp eq i16 %245, %246
  br i1 %247, label %237, label %248, !llvm.loop !51

248:                                              ; preds = %242, %225, %234, %230, %208
  %249 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 2
  %250 = load ptr, ptr %249, align 8, !tbaa !80
  %251 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %250, i64 0, i32 4
  %252 = load i32, ptr %251, align 4, !tbaa !54
  %253 = icmp eq i32 %211, %252
  br i1 %253, label %254, label %285

254:                                              ; preds = %248
  %255 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %209, i64 0, i32 6
  %256 = load ptr, ptr %255, align 8, !tbaa !58
  %257 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %250, i64 0, i32 6
  %258 = load ptr, ptr %257, align 8, !tbaa !58
  %259 = icmp eq ptr %256, null
  %260 = icmp eq ptr %258, null
  %261 = or i1 %259, %260
  br i1 %261, label %266, label %262

262:                                              ; preds = %254
  %263 = load i16, ptr %256, align 2, !tbaa !49
  %264 = load i16, ptr %258, align 2, !tbaa !49
  %265 = icmp eq i16 %263, %264
  br i1 %265, label %274, label %285

266:                                              ; preds = %254
  br i1 %259, label %270, label %267

267:                                              ; preds = %266
  %268 = load i16, ptr %256, align 2, !tbaa !49
  %269 = icmp eq i16 %268, 0
  br i1 %269, label %270, label %285

270:                                              ; preds = %267, %266
  br i1 %260, label %291, label %271

271:                                              ; preds = %270
  %272 = load i16, ptr %258, align 2, !tbaa !49
  %273 = icmp eq i16 %272, 0
  br i1 %273, label %291, label %285

274:                                              ; preds = %262, %279
  %275 = phi i16 [ %282, %279 ], [ %263, %262 ]
  %276 = phi ptr [ %281, %279 ], [ %258, %262 ]
  %277 = phi ptr [ %280, %279 ], [ %256, %262 ]
  %278 = icmp eq i16 %275, 0
  br i1 %278, label %291, label %279

279:                                              ; preds = %274
  %280 = getelementptr inbounds i16, ptr %277, i64 1
  %281 = getelementptr inbounds i16, ptr %276, i64 1
  %282 = load i16, ptr %280, align 2, !tbaa !49
  %283 = load i16, ptr %281, align 2, !tbaa !49
  %284 = icmp eq i16 %282, %283
  br i1 %284, label %274, label %285, !llvm.loop !51

285:                                              ; preds = %279, %262, %271, %267, %248
  %286 = call noundef zeroext i1 @_ZN11xercesc_2_727SubstitutionGroupComparator14isEquivalentToEPNS_5QNameES2_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %209, ptr noundef %213)
  br i1 %286, label %291, label %287

287:                                              ; preds = %285
  %288 = load ptr, ptr %1, align 8, !tbaa !47
  %289 = load ptr, ptr %249, align 8, !tbaa !80
  %290 = call noundef zeroext i1 @_ZN11xercesc_2_727SubstitutionGroupComparator14isEquivalentToEPNS_5QNameES2_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %288, ptr noundef %289)
  br i1 %290, label %291, label %393

291:                                              ; preds = %237, %274, %271, %270, %234, %233, %285, %287
  %292 = icmp eq i32 %2, 1
  br i1 %292, label %388, label %393

293:                                              ; preds = %6
  switch i32 %2, label %379 [
    i32 0, label %393
    i32 2, label %294
  ]

294:                                              ; preds = %293
  %295 = load ptr, ptr %1, align 8, !tbaa !47
  %296 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %295, i64 0, i32 4
  %297 = load i32, ptr %296, align 4, !tbaa !54
  %298 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 1
  %299 = load ptr, ptr %298, align 8, !tbaa !48
  %300 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %299, i64 0, i32 4
  %301 = load i32, ptr %300, align 4, !tbaa !54
  %302 = icmp eq i32 %297, %301
  br i1 %302, label %303, label %334

303:                                              ; preds = %294
  %304 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %295, i64 0, i32 6
  %305 = load ptr, ptr %304, align 8, !tbaa !58
  %306 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %299, i64 0, i32 6
  %307 = load ptr, ptr %306, align 8, !tbaa !58
  %308 = icmp eq ptr %305, null
  %309 = icmp eq ptr %307, null
  %310 = or i1 %308, %309
  br i1 %310, label %315, label %311

311:                                              ; preds = %303
  %312 = load i16, ptr %305, align 2, !tbaa !49
  %313 = load i16, ptr %307, align 2, !tbaa !49
  %314 = icmp eq i16 %312, %313
  br i1 %314, label %323, label %334

315:                                              ; preds = %303
  br i1 %308, label %319, label %316

316:                                              ; preds = %315
  %317 = load i16, ptr %305, align 2, !tbaa !49
  %318 = icmp eq i16 %317, 0
  br i1 %318, label %319, label %334

319:                                              ; preds = %316, %315
  br i1 %309, label %336, label %320

320:                                              ; preds = %319
  %321 = load i16, ptr %307, align 2, !tbaa !49
  %322 = icmp eq i16 %321, 0
  br i1 %322, label %336, label %334

323:                                              ; preds = %311, %328
  %324 = phi i16 [ %331, %328 ], [ %312, %311 ]
  %325 = phi ptr [ %330, %328 ], [ %307, %311 ]
  %326 = phi ptr [ %329, %328 ], [ %305, %311 ]
  %327 = icmp eq i16 %324, 0
  br i1 %327, label %336, label %328

328:                                              ; preds = %323
  %329 = getelementptr inbounds i16, ptr %326, i64 1
  %330 = getelementptr inbounds i16, ptr %325, i64 1
  %331 = load i16, ptr %329, align 2, !tbaa !49
  %332 = load i16, ptr %330, align 2, !tbaa !49
  %333 = icmp eq i16 %331, %332
  br i1 %333, label %323, label %334, !llvm.loop !51

334:                                              ; preds = %328, %311, %320, %316, %294
  %335 = call noundef zeroext i1 @_ZN11xercesc_2_727SubstitutionGroupComparator14isEquivalentToEPNS_5QNameES2_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %295, ptr noundef %299)
  br i1 %335, label %336, label %393

336:                                              ; preds = %323, %320, %319, %334
  %337 = getelementptr inbounds ptr, ptr %1, i64 1
  %338 = load ptr, ptr %337, align 8, !tbaa !47
  %339 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %338, i64 0, i32 4
  %340 = load i32, ptr %339, align 4, !tbaa !54
  %341 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 2
  %342 = load ptr, ptr %341, align 8, !tbaa !80
  %343 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %342, i64 0, i32 4
  %344 = load i32, ptr %343, align 4, !tbaa !54
  %345 = icmp eq i32 %340, %344
  br i1 %345, label %346, label %377

346:                                              ; preds = %336
  %347 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %338, i64 0, i32 6
  %348 = load ptr, ptr %347, align 8, !tbaa !58
  %349 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %342, i64 0, i32 6
  %350 = load ptr, ptr %349, align 8, !tbaa !58
  %351 = icmp eq ptr %348, null
  %352 = icmp eq ptr %350, null
  %353 = or i1 %351, %352
  br i1 %353, label %358, label %354

354:                                              ; preds = %346
  %355 = load i16, ptr %348, align 2, !tbaa !49
  %356 = load i16, ptr %350, align 2, !tbaa !49
  %357 = icmp eq i16 %355, %356
  br i1 %357, label %366, label %377

358:                                              ; preds = %346
  br i1 %351, label %362, label %359

359:                                              ; preds = %358
  %360 = load i16, ptr %348, align 2, !tbaa !49
  %361 = icmp eq i16 %360, 0
  br i1 %361, label %362, label %377

362:                                              ; preds = %359, %358
  br i1 %352, label %388, label %363

363:                                              ; preds = %362
  %364 = load i16, ptr %350, align 2, !tbaa !49
  %365 = icmp eq i16 %364, 0
  br i1 %365, label %388, label %377

366:                                              ; preds = %354, %371
  %367 = phi i16 [ %374, %371 ], [ %355, %354 ]
  %368 = phi ptr [ %373, %371 ], [ %350, %354 ]
  %369 = phi ptr [ %372, %371 ], [ %348, %354 ]
  %370 = icmp eq i16 %367, 0
  br i1 %370, label %388, label %371

371:                                              ; preds = %366
  %372 = getelementptr inbounds i16, ptr %369, i64 1
  %373 = getelementptr inbounds i16, ptr %368, i64 1
  %374 = load i16, ptr %372, align 2, !tbaa !49
  %375 = load i16, ptr %373, align 2, !tbaa !49
  %376 = icmp eq i16 %374, %375
  br i1 %376, label %366, label %377, !llvm.loop !51

377:                                              ; preds = %371, %354, %363, %359, %336
  %378 = call noundef zeroext i1 @_ZN11xercesc_2_727SubstitutionGroupComparator14isEquivalentToEPNS_5QNameES2_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %338, ptr noundef %342)
  br i1 %378, label %388, label %393

379:                                              ; preds = %293
  %380 = tail call i32 @llvm.umin.i32(i32 %2, i32 2)
  br label %393

381:                                              ; preds = %6
  %382 = tail call ptr @__cxa_allocate_exception(i64 48) #8
  %383 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 5
  %384 = load ptr, ptr %383, align 8, !tbaa !95
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %382, ptr noundef nonnull @.str, i32 noundef 383, i32 noundef 22, ptr noundef %384)
          to label %385 unwind label %386

385:                                              ; preds = %381
  tail call void @__cxa_throw(ptr nonnull %382, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #9
  unreachable

386:                                              ; preds = %381
  %387 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %382) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8
  resume { ptr, i32 } %387

388:                                              ; preds = %366, %203, %152, %377, %363, %362, %56, %291, %104, %102
  br label %393

389:                                              ; preds = %150
  %390 = trunc i64 %110 to i32
  br label %393

391:                                              ; preds = %201
  %392 = trunc i64 %161 to i32
  br label %393

393:                                              ; preds = %391, %389, %377, %291, %287, %100, %56, %379, %334, %293, %206, %155, %102, %54, %12, %388
  %394 = phi i32 [ -1, %388 ], [ 0, %12 ], [ 0, %54 ], [ 1, %102 ], [ 0, %155 ], [ 0, %206 ], [ %2, %293 ], [ 0, %334 ], [ %380, %379 ], [ 1, %56 ], [ 0, %100 ], [ 0, %287 ], [ 1, %291 ], [ 1, %377 ], [ %390, %389 ], [ %392, %391 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8
  ret i32 %394
}

declare noundef zeroext i1 @_ZN11xercesc_2_727SubstitutionGroupComparator14isEquivalentToEPNS_5QNameES2_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xercesc_2_718SimpleContentModel28getContentLeafNameTypeVectorEv(ptr nocapture noundef nonnull readnone align 8 dereferenceable(40) %0) unnamed_addr #5 align 2 !prof !104 {
  ret ptr null
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_718SimpleContentModel30checkUniqueParticleAttributionEPNS_13SchemaGrammarEPNS_15GrammarResolverEPNS_13XMLStringPoolEPNS_12XMLValidatorEPjPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ptr noundef %6) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %8 = alloca %"class.xercesc_2_7::SubstitutionGroupComparator", align 8
  %9 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !48
  %11 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %10, i64 0, i32 4
  %12 = load i32, ptr %11, align 4, !tbaa !54
  %13 = load i32, ptr @_ZN11xercesc_2_715XMLContentModel10gEOCFakeIdE, align 4, !tbaa !105
  %14 = icmp eq i32 %12, %13
  %15 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE, align 4
  %16 = icmp eq i32 %12, %15
  %17 = select i1 %14, i1 true, i1 %16
  %18 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl14fgPCDataElemIdE, align 4
  %19 = icmp eq i32 %12, %18
  %20 = select i1 %17, i1 true, i1 %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %7
  %22 = zext i32 %12 to i64
  %23 = getelementptr inbounds i32, ptr %5, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !105
  store i32 %24, ptr %11, align 4, !tbaa !54
  br label %25

25:                                               ; preds = %21, %7
  %26 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !80
  %28 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %27, i64 0, i32 4
  %29 = load i32, ptr %28, align 4, !tbaa !54
  %30 = icmp eq i32 %29, %13
  %31 = icmp eq i32 %29, %15
  %32 = select i1 %30, i1 true, i1 %31
  %33 = icmp eq i32 %29, %18
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %25
  %36 = zext i32 %29 to i64
  %37 = getelementptr inbounds i32, ptr %5, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !105
  store i32 %38, ptr %28, align 4, !tbaa !54
  br label %39

39:                                               ; preds = %35, %25
  %40 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 3
  %41 = load i32, ptr %40, align 8, !tbaa !35
  %42 = and i32 %41, 15
  %43 = icmp eq i32 %42, 4
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8
  store ptr %2, ptr %8, align 8, !tbaa !99
  %45 = getelementptr inbounds %"class.xercesc_2_7::SubstitutionGroupComparator", ptr %8, i64 0, i32 1
  store ptr %3, ptr %45, align 8, !tbaa !101
  %46 = call noundef zeroext i1 @_ZN11xercesc_2_721XercesElementWildcard8conflictEPNS_13SchemaGrammarENS_15ContentSpecNode9NodeTypesEPNS_5QNameES4_S6_PNS_27SubstitutionGroupComparatorE(ptr noundef %1, i32 noundef 0, ptr noundef %10, i32 noundef 0, ptr noundef %27, ptr noundef nonnull %8)
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load ptr, ptr %9, align 8, !tbaa !48
  %49 = call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %48)
  %50 = load ptr, ptr %26, align 8, !tbaa !80
  %51 = call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %50)
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 88, ptr noundef %6, ptr noundef %49, ptr noundef %51, ptr noundef null)
  br label %52

52:                                               ; preds = %47, %44
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8
  br label %53

53:                                               ; preds = %52, %39
  ret void
}

declare noundef zeroext i1 @_ZN11xercesc_2_721XercesElementWildcard8conflictEPNS_13SchemaGrammarENS_15ContentSpecNode9NodeTypesEPNS_5QNameES4_S6_PNS_27SubstitutionGroupComparatorE(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !prof !96 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #8
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !prof !96 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !106
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !97
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #8
  resume { ptr, i32 } %7
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 291165203993}
!8 = !{!"MaxCount", i64 30012997636}
!9 = !{!"MaxInternalCount", i64 22313335011}
!10 = !{!"MaxFunctionCount", i64 30012997636}
!11 = !{!"NumCounts", i64 82185}
!12 = !{!"NumFunctions", i64 15169}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 30012997636, i32 1}
!18 = !{i32 100000, i64 30012997636, i32 1}
!19 = !{i32 200000, i64 28750937236, i32 2}
!20 = !{i32 300000, i64 22313335011, i32 4}
!21 = !{i32 400000, i64 22313318476, i32 5}
!22 = !{i32 500000, i64 22291044611, i32 6}
!23 = !{i32 600000, i64 16685493830, i32 8}
!24 = !{i32 700000, i64 11836361228, i32 10}
!25 = !{i32 800000, i64 1835010489, i32 17}
!26 = !{i32 900000, i64 917973775, i32 41}
!27 = !{i32 950000, i64 89504425, i32 134}
!28 = !{i32 990000, i64 22419101, i32 349}
!29 = !{i32 999000, i64 832910, i32 928}
!30 = !{i32 999900, i64 93159, i32 1814}
!31 = !{i32 999990, i64 19206, i32 2310}
!32 = !{i32 999999, i64 550, i32 2997}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 86886}
!35 = !{!36, !41, i64 24}
!36 = !{!"_ZTSN11xercesc_2_718SimpleContentModelE", !37, i64 0, !38, i64 8, !38, i64 16, !41, i64 24, !42, i64 28, !38, i64 32}
!37 = !{!"_ZTSN11xercesc_2_715XMLContentModelE"}
!38 = !{!"any pointer", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C++ TBAA"}
!41 = !{!"_ZTSN11xercesc_2_715ContentSpecNode9NodeTypesE", !39, i64 0}
!42 = !{!"bool", !39, i64 0}
!43 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 17256, i32 10458, i32 52672, i32 6500}
!44 = !{!36, !42, i64 28}
!45 = !{i8 0, i8 2}
!46 = !{}
!47 = !{!38, !38, i64 0}
!48 = !{!36, !38, i64 8}
!49 = !{!50, !50, i64 0}
!50 = !{!"short", !39, i64 0}
!51 = distinct !{!51, !52, !53}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = !{!55, !57, i64 20}
!55 = !{!"_ZTSN11xercesc_2_75QNameE", !56, i64 0, !57, i64 8, !57, i64 12, !57, i64 16, !57, i64 20, !38, i64 24, !38, i64 32, !38, i64 40, !38, i64 48}
!56 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!57 = !{!"int", !39, i64 0}
!58 = !{!55, !38, i64 32}
!59 = !{!"branch_weights", i32 5061, i32 12195}
!60 = !{!"branch_weights", i32 12195, i32 0}
!61 = distinct !{!61, !52, !53}
!62 = !{!"branch_weights", i32 35869, i32 0}
!63 = !{!"branch_weights", i32 0, i32 35869}
!64 = !{!"branch_weights", i32 1, i32 0}
!65 = !{!"branch_weights", i32 35869, i32 168890}
!66 = !{!"branch_weights", i32 204759, i32 0}
!67 = !{!"branch_weights", i32 12195, i32 23674}
!68 = distinct !{!68, !52, !53}
!69 = !{!"branch_weights", i32 0, i32 10458}
!70 = !{!"branch_weights", i32 10458, i32 0}
!71 = distinct !{!71, !52, !53}
!72 = !{!"branch_weights", i32 65922, i32 0}
!73 = !{!"branch_weights", i32 0, i32 65922}
!74 = !{!"branch_weights", i32 65922, i32 509626}
!75 = !{!"branch_weights", i32 575548, i32 0}
!76 = !{!"branch_weights", i32 10458, i32 55464}
!77 = distinct !{!77, !52, !53}
!78 = !{!"branch_weights", i32 0, i32 52672}
!79 = !{!"branch_weights", i32 52672, i32 0}
!80 = !{!36, !38, i64 16}
!81 = !{!"branch_weights", i32 10446, i32 1}
!82 = !{!"branch_weights", i32 42225, i32 168900}
!83 = !{!"branch_weights", i32 200679, i32 10446}
!84 = !{!"branch_weights", i32 10447, i32 0}
!85 = !{!"branch_weights", i32 0, i32 10447}
!86 = !{!"branch_weights", i32 10447, i32 73129}
!87 = !{!"branch_weights", i32 83576, i32 0}
!88 = !{!"branch_weights", i32 0, i32 0, i32 6500}
!89 = !{!"branch_weights", i32 6500, i32 0}
!90 = !{!"branch_weights", i32 0, i32 6500}
!91 = !{!"branch_weights", i32 6500, i32 32000}
!92 = !{!"branch_weights", i32 38500, i32 0}
!93 = !{!"branch_weights", i32 6500, i32 23500}
!94 = !{!"branch_weights", i32 30000, i32 0}
!95 = !{!36, !38, i64 32}
!96 = !{!"function_entry_count", i64 0}
!97 = !{!98, !98, i64 0}
!98 = !{!"vtable pointer", !40, i64 0}
!99 = !{!100, !38, i64 0}
!100 = !{!"_ZTSN11xercesc_2_727SubstitutionGroupComparatorE", !38, i64 0, !38, i64 8}
!101 = !{!100, !38, i64 8}
!102 = distinct !{!102, !52, !53}
!103 = distinct !{!103, !52, !53}
!104 = !{!"function_entry_count", i64 167463}
!105 = !{!57, !57, i64 0}
!106 = !{!107, !38, i64 40}
!107 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !108, i64 8, !38, i64 16, !57, i64 24, !38, i64 32, !38, i64 40}
!108 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !39, i64 0}
