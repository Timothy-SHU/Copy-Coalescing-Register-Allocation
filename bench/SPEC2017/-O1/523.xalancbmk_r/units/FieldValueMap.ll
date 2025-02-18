; ModuleID = 'FieldValueMap.cpp'
source_filename = "FieldValueMap.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::FieldValueMap" = type { ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::ValueVectorOf" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::ValueVectorOf.0" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_716RefArrayVectorOfItED2Ev = comdat any

$_ZN11xercesc_2_716RefArrayVectorOfItED0Ev = comdat any

$_ZN11xercesc_2_716RefArrayVectorOfItE12setElementAtEPtj = comdat any

$_ZN11xercesc_2_716RefArrayVectorOfItE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_716RefArrayVectorOfItE15removeElementAtEj = comdat any

$_ZN11xercesc_2_716RefArrayVectorOfItE17removeLastElementEv = comdat any

$_ZN11xercesc_2_716RefArrayVectorOfItE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE12setElementAtEPtj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE7cleanupEv = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_716RefArrayVectorOfItEE = comdat any

$_ZTSN11xercesc_2_716RefArrayVectorOfItEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfItEE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfItEE = comdat any

$_ZTIN11xercesc_2_716RefArrayVectorOfItEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfItEE = comdat any

@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@.str = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_716RefArrayVectorOfItEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RefArrayVectorOfItEE, ptr @_ZN11xercesc_2_716RefArrayVectorOfItED2Ev, ptr @_ZN11xercesc_2_716RefArrayVectorOfItED0Ev, ptr @_ZN11xercesc_2_716RefArrayVectorOfItE12setElementAtEPtj, ptr @_ZN11xercesc_2_716RefArrayVectorOfItE17removeAllElementsEv, ptr @_ZN11xercesc_2_716RefArrayVectorOfItE15removeElementAtEj, ptr @_ZN11xercesc_2_716RefArrayVectorOfItE17removeLastElementEv, ptr @_ZN11xercesc_2_716RefArrayVectorOfItE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_716RefArrayVectorOfItEE = linkonce_odr dso_local constant [37 x i8] c"N11xercesc_2_716RefArrayVectorOfItEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfItEE = linkonce_odr dso_local constant [36 x i8] c"N11xercesc_2_715BaseRefVectorOfItEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfItEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfItEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_716RefArrayVectorOfItEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RefArrayVectorOfItEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfItEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfItEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfItEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfItED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfItED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfItE12setElementAtEPtj, ptr @_ZN11xercesc_2_715BaseRefVectorOfItE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfItE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfItE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfItE7cleanupEv] }, comdat, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"./xercesc/util/RefArrayVectorOf.c\00", align 1

@_ZN11xercesc_2_713FieldValueMapC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_713FieldValueMapC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_713FieldValueMapC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_713FieldValueMapC2ERKS0_
@_ZN11xercesc_2_713FieldValueMapD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_713FieldValueMapD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_713FieldValueMapC2EPNS_13MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !41 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::FieldValueMap", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  store ptr %1, ptr %3, align 8, !tbaa !42
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713FieldValueMapC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::FieldValueMap", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::FieldValueMap", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.xercesc_2_7::FieldValueMap", ptr %0, i64 0, i32 3
  %6 = getelementptr inbounds %"class.xercesc_2_7::FieldValueMap", ptr %1, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  store ptr %7, ptr %5, align 8, !tbaa !42
  %8 = load ptr, ptr %1, align 8, !tbaa !48
  %9 = icmp eq ptr %8, null
  br i1 %9, label %269, label %10, !prof !49

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"class.xercesc_2_7::FieldValueMap", ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !50
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !51
  %15 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %7)
          to label %16 unwind label %127, !prof !55

16:                                               ; preds = %10
  %17 = load ptr, ptr %1, align 8, !tbaa !48
  %18 = load i8, ptr %17, align 8, !tbaa !56, !range !58, !noundef !59
  store i8 %18, ptr %15, align 8, !tbaa !56
  %19 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %15, i64 0, i32 1
  %20 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %17, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !60
  store i32 %21, ptr %19, align 4, !tbaa !60
  %22 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %15, i64 0, i32 2
  %23 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %17, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !61
  store i32 %24, ptr %22, align 8, !tbaa !61
  %25 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %15, i64 0, i32 3
  store ptr null, ptr %25, align 8, !tbaa !62
  %26 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %15, i64 0, i32 4
  %27 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %17, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !63
  store ptr %28, ptr %26, align 8, !tbaa !63
  %29 = zext i32 %24 to i64
  %30 = shl nuw nsw i64 %29, 3
  %31 = load ptr, ptr %28, align 8, !tbaa !64
  %32 = getelementptr inbounds ptr, ptr %31, i64 2
  %33 = load ptr, ptr %32, align 8
  %34 = invoke noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %28, i64 noundef %30)
          to label %35 unwind label %129, !prof !66

35:                                               ; preds = %16
  store ptr %34, ptr %25, align 8, !tbaa !62
  %36 = load i32, ptr %22, align 8, !tbaa !61
  %37 = zext i32 %36 to i64
  %38 = shl nuw nsw i64 %37, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %34, i8 0, i64 %38, i1 false), !prof !67
  %39 = load i32, ptr %19, align 4, !tbaa !60
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %53, label %41, !prof !68

41:                                               ; preds = %35
  %42 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %17, i64 0, i32 3
  %43 = zext i32 %39 to i64
  br label %44

44:                                               ; preds = %44, %41
  %45 = phi i64 [ 0, %41 ], [ %51, %44 ]
  %46 = load ptr, ptr %42, align 8, !tbaa !62
  %47 = getelementptr inbounds ptr, ptr %46, i64 %45
  %48 = load ptr, ptr %47, align 8, !tbaa !69
  %49 = load ptr, ptr %25, align 8, !tbaa !62
  %50 = getelementptr inbounds ptr, ptr %49, i64 %45
  store ptr %48, ptr %50, align 8, !tbaa !69
  %51 = add nuw nsw i64 %45, 1
  %52 = icmp eq i64 %51, %43
  br i1 %52, label %53, label %44, !prof !70, !llvm.loop !71

53:                                               ; preds = %44, %35
  store ptr %15, ptr %0, align 8, !tbaa !48
  %54 = load ptr, ptr %5, align 8, !tbaa !42
  %55 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %54)
          to label %56 unwind label %127, !prof !55

56:                                               ; preds = %53
  %57 = getelementptr inbounds %"class.xercesc_2_7::FieldValueMap", ptr %1, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !74
  %59 = load i8, ptr %58, align 8, !tbaa !75, !range !58, !noundef !59
  store i8 %59, ptr %55, align 8, !tbaa !75
  %60 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %55, i64 0, i32 1
  %61 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %58, i64 0, i32 1
  %62 = load i32, ptr %61, align 4, !tbaa !77
  store i32 %62, ptr %60, align 4, !tbaa !77
  %63 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %55, i64 0, i32 2
  %64 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %58, i64 0, i32 2
  %65 = load i32, ptr %64, align 8, !tbaa !78
  store i32 %65, ptr %63, align 8, !tbaa !78
  %66 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %55, i64 0, i32 3
  store ptr null, ptr %66, align 8, !tbaa !79
  %67 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %55, i64 0, i32 4
  %68 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %58, i64 0, i32 4
  %69 = load ptr, ptr %68, align 8, !tbaa !80
  store ptr %69, ptr %67, align 8, !tbaa !80
  %70 = zext i32 %65 to i64
  %71 = shl nuw nsw i64 %70, 3
  %72 = load ptr, ptr %69, align 8, !tbaa !64
  %73 = getelementptr inbounds ptr, ptr %72, i64 2
  %74 = load ptr, ptr %73, align 8
  %75 = invoke noundef ptr %74(ptr noundef nonnull align 8 dereferenceable(8) %69, i64 noundef %71)
          to label %76 unwind label %131, !prof !66

76:                                               ; preds = %56
  store ptr %75, ptr %66, align 8, !tbaa !79
  %77 = load i32, ptr %63, align 8, !tbaa !78
  %78 = zext i32 %77 to i64
  %79 = shl nuw nsw i64 %78, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %75, i8 0, i64 %79, i1 false), !prof !67
  %80 = load i32, ptr %60, align 4, !tbaa !77
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %94, label %82, !prof !68

82:                                               ; preds = %76
  %83 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %58, i64 0, i32 3
  %84 = zext i32 %80 to i64
  br label %85

85:                                               ; preds = %85, %82
  %86 = phi i64 [ 0, %82 ], [ %92, %85 ]
  %87 = load ptr, ptr %83, align 8, !tbaa !79
  %88 = getelementptr inbounds ptr, ptr %87, i64 %86
  %89 = load ptr, ptr %88, align 8, !tbaa !69
  %90 = load ptr, ptr %66, align 8, !tbaa !79
  %91 = getelementptr inbounds ptr, ptr %90, i64 %86
  store ptr %89, ptr %91, align 8, !tbaa !69
  %92 = add nuw nsw i64 %86, 1
  %93 = icmp eq i64 %92, %84
  br i1 %93, label %94, label %85, !prof !70, !llvm.loop !81

94:                                               ; preds = %85, %76
  store ptr %55, ptr %3, align 8, !tbaa !74
  %95 = load ptr, ptr %5, align 8, !tbaa !42
  %96 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %95)
          to label %97 unwind label %127, !prof !55

97:                                               ; preds = %94
  %98 = load ptr, ptr %1, align 8, !tbaa !48
  %99 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %98, i64 0, i32 2
  %100 = load i32, ptr %99, align 8, !tbaa !61
  %101 = load ptr, ptr %5, align 8, !tbaa !42
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfItEE, i64 0, inrange i32 0, i64 2), ptr %96, align 8, !tbaa !64
  %102 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %96, i64 0, i32 1
  store i8 1, ptr %102, align 8, !tbaa !82
  %103 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %96, i64 0, i32 2
  store i32 0, ptr %103, align 4, !tbaa !51
  %104 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %96, i64 0, i32 3
  store i32 %100, ptr %104, align 8, !tbaa !83
  %105 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %96, i64 0, i32 4
  store ptr null, ptr %105, align 8, !tbaa !84
  %106 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %96, i64 0, i32 5
  store ptr %101, ptr %106, align 8, !tbaa !85
  %107 = zext i32 %100 to i64
  %108 = shl nuw nsw i64 %107, 3
  %109 = load ptr, ptr %101, align 8, !tbaa !64
  %110 = getelementptr inbounds ptr, ptr %109, i64 2
  %111 = load ptr, ptr %110, align 8
  %112 = invoke noundef ptr %111(ptr noundef nonnull align 8 dereferenceable(8) %101, i64 noundef %108)
          to label %113 unwind label %133, !prof !66

113:                                              ; preds = %97
  store ptr %112, ptr %105, align 8, !tbaa !84
  %114 = icmp eq i32 %100, 0
  br i1 %114, label %123, label %115, !prof !68

115:                                              ; preds = %113
  %116 = zext i32 %100 to i64
  br label %117

117:                                              ; preds = %115, %117
  %118 = phi i64 [ 0, %115 ], [ %121, %117 ]
  %119 = load ptr, ptr %105, align 8, !tbaa !84
  %120 = getelementptr inbounds ptr, ptr %119, i64 %118
  store ptr null, ptr %120, align 8, !tbaa !69
  %121 = add nuw nsw i64 %118, 1
  %122 = icmp eq i64 %121, %116
  br i1 %122, label %123, label %117, !prof !86, !llvm.loop !87

123:                                              ; preds = %117, %113
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_716RefArrayVectorOfItEE, i64 0, inrange i32 0, i64 2), ptr %96, align 8, !tbaa !64
  store ptr %96, ptr %4, align 8, !tbaa !50
  %124 = icmp eq i32 %14, 0
  br i1 %124, label %269, label %125, !prof !68

125:                                              ; preds = %123
  %126 = zext i32 %14 to i64
  br label %135

127:                                              ; preds = %94, %53, %10
  %128 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %248

129:                                              ; preds = %16
  %130 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %15, ptr noundef %7) #14
  br label %248

131:                                              ; preds = %56
  %132 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %55, ptr noundef %54) #14
  br label %248

133:                                              ; preds = %97
  %134 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %96, ptr noundef %95) #14
  br label %248

135:                                              ; preds = %125, %235
  %136 = phi i64 [ 0, %125 ], [ %242, %235 ]
  %137 = load ptr, ptr %4, align 8, !tbaa !50
  %138 = load ptr, ptr %11, align 8, !tbaa !50
  %139 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %138, i64 0, i32 2
  %140 = load i32, ptr %139, align 4, !tbaa !51
  %141 = zext i32 %140 to i64
  %142 = icmp ult i64 %136, %141
  br i1 %142, label %151, label %143, !prof !88

143:                                              ; preds = %135
  %144 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %145 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %138, i64 0, i32 5
  %146 = load ptr, ptr %145, align 8, !tbaa !85
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %144, ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 116, ptr noundef %146)
          to label %147 unwind label %149

147:                                              ; preds = %143
  invoke void @__cxa_throw(ptr nonnull %144, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
          to label %148 unwind label %246

148:                                              ; preds = %147
  unreachable

149:                                              ; preds = %143
  %150 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  tail call void @__cxa_free_exception(ptr %144) #14
  br label %248

151:                                              ; preds = %135
  %152 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %138, i64 0, i32 4
  %153 = load ptr, ptr %152, align 8, !tbaa !84
  %154 = getelementptr inbounds ptr, ptr %153, i64 %136
  %155 = load ptr, ptr %154, align 8, !tbaa !69
  %156 = load ptr, ptr %5, align 8, !tbaa !42
  %157 = icmp eq ptr %155, null
  br i1 %157, label %179, label %158, !prof !49

158:                                              ; preds = %151
  %159 = load i16, ptr %155, align 2, !tbaa !89
  %160 = icmp eq i16 %159, 0
  br i1 %160, label %172, label %161, !prof !49

161:                                              ; preds = %158, %161
  %162 = phi ptr [ %163, %161 ], [ %155, %158 ]
  %163 = getelementptr inbounds i16, ptr %162, i64 1
  %164 = load i16, ptr %163, align 2, !tbaa !89
  %165 = icmp eq i16 %164, 0
  br i1 %165, label %166, label %161, !prof !91, !llvm.loop !92

166:                                              ; preds = %161
  %167 = ptrtoint ptr %163 to i64
  %168 = ptrtoint ptr %155 to i64
  %169 = sub i64 %167, %168
  %170 = add i64 %169, 2
  %171 = and i64 %170, 8589934590
  br label %172

172:                                              ; preds = %166, %158
  %173 = phi i64 [ %171, %166 ], [ 2, %158 ]
  %174 = load ptr, ptr %156, align 8, !tbaa !64
  %175 = getelementptr inbounds ptr, ptr %174, i64 2
  %176 = load ptr, ptr %175, align 8
  %177 = invoke noundef ptr %176(ptr noundef nonnull align 8 dereferenceable(8) %156, i64 noundef %173)
          to label %178 unwind label %244, !prof !66

178:                                              ; preds = %172
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %177, ptr nonnull align 2 %155, i64 %173, i1 false), !prof !93
  br label %179

179:                                              ; preds = %178, %151
  %180 = phi ptr [ %177, %178 ], [ null, %151 ]
  %181 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %137, i64 0, i32 2
  %182 = load i32, ptr %181, align 4, !tbaa !51
  %183 = add i32 %182, 1
  %184 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %137, i64 0, i32 3
  %185 = load i32, ptr %184, align 8, !tbaa !83
  %186 = icmp ugt i32 %183, %185
  br i1 %186, label %187, label %235, !prof !94

187:                                              ; preds = %179
  %188 = lshr i32 %185, 1
  %189 = add i32 %188, %185
  %190 = tail call i32 @llvm.umax.i32(i32 %183, i32 %189)
  %191 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %137, i64 0, i32 5
  %192 = load ptr, ptr %191, align 8, !tbaa !85
  %193 = zext i32 %190 to i64
  %194 = shl nuw nsw i64 %193, 3
  %195 = load ptr, ptr %192, align 8, !tbaa !64
  %196 = getelementptr inbounds ptr, ptr %195, i64 2
  %197 = load ptr, ptr %196, align 8
  %198 = invoke noundef ptr %197(ptr noundef nonnull align 8 dereferenceable(8) %192, i64 noundef %194)
          to label %199 unwind label %244, !prof !95

199:                                              ; preds = %187
  %200 = load i32, ptr %181, align 4, !tbaa !51
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %207, label %202, !prof !96

202:                                              ; preds = %199
  %203 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %137, i64 0, i32 4
  %204 = zext i32 %200 to i64
  br label %219

205:                                              ; preds = %219
  %206 = trunc i64 %225 to i32
  br label %207

207:                                              ; preds = %205, %199
  %208 = phi i32 [ 0, %199 ], [ %206, %205 ]
  %209 = icmp ult i32 %208, %190
  br i1 %209, label %210, label %227, !prof !97

210:                                              ; preds = %207
  %211 = zext i32 %208 to i64
  %212 = shl nuw nsw i64 %211, 3
  %213 = getelementptr i8, ptr %198, i64 %212
  %214 = xor i32 %208, -1
  %215 = add i32 %190, %214
  %216 = zext i32 %215 to i64
  %217 = shl nuw nsw i64 %216, 3
  %218 = add nuw nsw i64 %217, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %213, i8 0, i64 %218, i1 false), !tbaa !69
  br label %227

219:                                              ; preds = %219, %202
  %220 = phi i64 [ 0, %202 ], [ %225, %219 ]
  %221 = load ptr, ptr %203, align 8, !tbaa !84
  %222 = getelementptr inbounds ptr, ptr %221, i64 %220
  %223 = load ptr, ptr %222, align 8, !tbaa !69
  %224 = getelementptr inbounds ptr, ptr %198, i64 %220
  store ptr %223, ptr %224, align 8, !tbaa !69
  %225 = add nuw nsw i64 %220, 1
  %226 = icmp eq i64 %225, %204
  br i1 %226, label %205, label %219, !prof !98, !llvm.loop !99

227:                                              ; preds = %210, %207
  %228 = load ptr, ptr %191, align 8, !tbaa !85
  %229 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %137, i64 0, i32 4
  %230 = load ptr, ptr %229, align 8, !tbaa !84
  %231 = load ptr, ptr %228, align 8, !tbaa !64
  %232 = getelementptr inbounds ptr, ptr %231, i64 3
  %233 = load ptr, ptr %232, align 8
  invoke void %233(ptr noundef nonnull align 8 dereferenceable(8) %228, ptr noundef %230)
          to label %234 unwind label %244, !prof !100

234:                                              ; preds = %227
  store ptr %198, ptr %229, align 8, !tbaa !84
  store i32 %190, ptr %184, align 8, !tbaa !83
  br label %235

235:                                              ; preds = %234, %179
  %236 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %137, i64 0, i32 4
  %237 = load ptr, ptr %236, align 8, !tbaa !84
  %238 = load i32, ptr %181, align 4, !tbaa !51
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds ptr, ptr %237, i64 %239
  store ptr %180, ptr %240, align 8, !tbaa !69
  %241 = add i32 %238, 1
  store i32 %241, ptr %181, align 4, !tbaa !51
  %242 = add nuw nsw i64 %136, 1
  %243 = icmp eq i64 %242, %126
  br i1 %243, label %269, label %135, !prof !70, !llvm.loop !101

244:                                              ; preds = %172, %187, %227
  %245 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %248

246:                                              ; preds = %147
  %247 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %248

248:                                              ; preds = %244, %246, %149, %133, %131, %129, %127
  %249 = phi { ptr, i32 } [ %134, %133 ], [ %128, %127 ], [ %132, %131 ], [ %130, %129 ], [ %150, %149 ], [ %245, %244 ], [ %247, %246 ]
  %250 = extractvalue { ptr, i32 } %249, 1
  %251 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #14
  %252 = icmp eq i32 %250, %251
  br i1 %252, label %253, label %258

253:                                              ; preds = %248
  %254 = extractvalue { ptr, i32 } %249, 0
  %255 = tail call ptr @__cxa_begin_catch(ptr %254) #14
  invoke void @__cxa_rethrow() #15
          to label %273 unwind label %256

256:                                              ; preds = %253
  %257 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %258 unwind label %270

258:                                              ; preds = %256, %248
  %259 = phi ptr [ null, %256 ], [ @_ZN11xercesc_2_713FieldValueMap7cleanUpEv, %248 ]
  %260 = phi ptr [ null, %256 ], [ %0, %248 ]
  %261 = phi { ptr, i32 } [ %257, %256 ], [ %249, %248 ]
  %262 = icmp eq ptr %260, null
  %263 = or i1 %252, %262
  br i1 %263, label %268, label %264

264:                                              ; preds = %258
  invoke void %259(ptr noundef nonnull align 8 dereferenceable(32) %260)
          to label %268 unwind label %265

265:                                              ; preds = %264
  %266 = landingpad { ptr, i32 }
          catch ptr null
  %267 = extractvalue { ptr, i32 } %266, 0
  tail call void @__clang_call_terminate(ptr %267) #16
  unreachable

268:                                              ; preds = %258, %264
  resume { ptr, i32 } %261

269:                                              ; preds = %235, %123, %2
  ret void

270:                                              ; preds = %256
  %271 = landingpad { ptr, i32 }
          catch ptr null
  %272 = extractvalue { ptr, i32 } %271, 0
  tail call void @__clang_call_terminate(ptr %272) #16
  unreachable

273:                                              ; preds = %253
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_713FieldValueMap7cleanUpEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !102 {
  %2 = load ptr, ptr %0, align 8, !tbaa !48
  %3 = icmp eq ptr %2, null
  br i1 %3, label %16, label %4, !prof !103

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %2, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !62
  %9 = load ptr, ptr %6, align 8, !tbaa !64
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %8)
          to label %15 unwind label %12, !prof !104

12:                                               ; preds = %4
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  tail call void @__clang_call_terminate(ptr %14) #16
  unreachable

15:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %2) #14
  br label %16

16:                                               ; preds = %15, %1
  %17 = getelementptr inbounds %"class.xercesc_2_7::FieldValueMap", ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !74
  %19 = icmp eq ptr %18, null
  br i1 %19, label %32, label %20, !prof !103

20:                                               ; preds = %16
  %21 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %18, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !80
  %23 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %18, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !79
  %25 = load ptr, ptr %22, align 8, !tbaa !64
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  invoke void %27(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef %24)
          to label %31 unwind label %28, !prof !104

28:                                               ; preds = %20
  %29 = landingpad { ptr, i32 }
          catch ptr null
  %30 = extractvalue { ptr, i32 } %29, 0
  tail call void @__clang_call_terminate(ptr %30) #16
  unreachable

31:                                               ; preds = %20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %18) #14
  br label %32

32:                                               ; preds = %31, %16
  %33 = getelementptr inbounds %"class.xercesc_2_7::FieldValueMap", ptr %0, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !50
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36, !prof !103

36:                                               ; preds = %32
  %37 = load ptr, ptr %34, align 8, !tbaa !64
  %38 = getelementptr inbounds ptr, ptr %37, i64 1
  %39 = load ptr, ptr %38, align 8
  tail call void %39(ptr noundef nonnull align 8 dereferenceable(40) %34) #14, !prof !105
  br label %40

40:                                               ; preds = %36, %32
  ret void
}

declare i32 @__gxx_personality_v0(...)

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #6

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat !prof !106 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #14
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_713FieldValueMapD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !102 {
  tail call void @_ZN11xercesc_2_713FieldValueMap7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_713FieldValueMap7indexOfEPKNS_8IC_FieldE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr noundef readnone %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !107 {
  %3 = load ptr, ptr %0, align 8, !tbaa !48
  %4 = icmp eq ptr %3, null
  br i1 %4, label %28, label %5, !prof !108

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %3, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !60
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %28, !prof !109

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %3, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !62
  %12 = load ptr, ptr %11, align 8, !tbaa !69
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %25, label %19, !prof !110

14:                                               ; preds = %19
  %15 = zext i32 %21 to i64
  %16 = getelementptr inbounds ptr, ptr %11, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !69
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %23, label %19, !prof !110, !llvm.loop !111

19:                                               ; preds = %9, %14
  %20 = phi i32 [ %21, %14 ], [ 0, %9 ]
  %21 = add nuw i32 %20, 1
  %22 = icmp eq i32 %21, %7
  br i1 %22, label %28, label %14, !prof !112, !llvm.loop !111

23:                                               ; preds = %14
  %24 = icmp ult i32 %21, %7
  br label %25

25:                                               ; preds = %23, %9
  %26 = phi i1 [ %24, %23 ], [ %8, %9 ]
  %27 = phi i32 [ %21, %23 ], [ 0, %9 ]
  br i1 %26, label %29, label %28, !prof !113

28:                                               ; preds = %19, %5, %25, %2
  br label %29

29:                                               ; preds = %25, %28
  %30 = phi i32 [ %27, %25 ], [ -1, %28 ]
  ret i32 %30
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !106 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !64
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #11 comdat align 2 !prof !106 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #11 comdat align 2 !prof !106 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !106 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !114
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !64
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #14
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !106 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_716RefArrayVectorOfItEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !64
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !82, !range !58, !noundef !59
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5, !prof !117

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !51
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9, !prof !118

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %12

12:                                               ; preds = %9, %21
  %13 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !85
  %15 = load ptr, ptr %11, align 8, !tbaa !84
  %16 = getelementptr inbounds ptr, ptr %15, i64 %13
  %17 = load ptr, ptr %16, align 8, !tbaa !69
  %18 = load ptr, ptr %14, align 8, !tbaa !64
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %17)
          to label %21 unwind label %35, !prof !119

21:                                               ; preds = %12
  %22 = add nuw nsw i64 %13, 1
  %23 = load i32, ptr %6, align 4, !tbaa !51
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %12, label %26, !prof !120, !llvm.loop !121

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !85
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !84
  %31 = load ptr, ptr %28, align 8, !tbaa !64
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
          to label %34 unwind label %37, !prof !122

34:                                               ; preds = %26
  ret void

35:                                               ; preds = %12
  %36 = landingpad { ptr, i32 }
          catch ptr null
  br label %39

37:                                               ; preds = %26
  %38 = landingpad { ptr, i32 }
          catch ptr null
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi { ptr, i32 } [ %36, %35 ], [ %38, %37 ]
  %41 = extractvalue { ptr, i32 } %40, 0
  tail call void @__clang_call_terminate(ptr %41) #16
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !123 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_716RefArrayVectorOfItEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !64
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !82, !range !58, !noundef !59
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5, !prof !117

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !51
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9, !prof !118

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %12

12:                                               ; preds = %21, %9
  %13 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !85
  %15 = load ptr, ptr %11, align 8, !tbaa !84
  %16 = getelementptr inbounds ptr, ptr %15, i64 %13
  %17 = load ptr, ptr %16, align 8, !tbaa !69
  %18 = load ptr, ptr %14, align 8, !tbaa !64
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %17)
          to label %21 unwind label %34, !prof !119

21:                                               ; preds = %12
  %22 = add nuw nsw i64 %13, 1
  %23 = load i32, ptr %6, align 4, !tbaa !51
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %12, label %26, !prof !120, !llvm.loop !121

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !85
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !84
  %31 = load ptr, ptr %28, align 8, !tbaa !64
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
          to label %41 unwind label %36, !prof !122

34:                                               ; preds = %12
  %35 = landingpad { ptr, i32 }
          catch ptr null
  br label %38

36:                                               ; preds = %26
  %37 = landingpad { ptr, i32 }
          catch ptr null
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi { ptr, i32 } [ %35, %34 ], [ %37, %36 ]
  %40 = extractvalue { ptr, i32 } %39, 0
  tail call void @__clang_call_terminate(ptr %40) #16
  unreachable

41:                                               ; preds = %26
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItE12setElementAtEPtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !124 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !51
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7, !prof !125

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !85
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.2, i32 noundef 52, i32 noundef 116, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #14
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !82, !range !58, !noundef !59
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %29, label %18, !prof !126

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !85
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !84
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !69
  %26 = load ptr, ptr %20, align 8, !tbaa !64
  %27 = getelementptr inbounds ptr, ptr %26, i64 3
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %25), !prof !127
  br label %29

29:                                               ; preds = %18, %14
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !84
  %32 = zext i32 %2 to i64
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  store ptr %1, ptr %33, align 8, !tbaa !69
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #10 comdat align 2 !prof !106 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !51
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %12

10:                                               ; preds = %24, %1
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  store i32 0, ptr %11, align 4, !tbaa !51
  ret void

12:                                               ; preds = %5, %24
  %13 = phi i64 [ 0, %5 ], [ %27, %24 ]
  %14 = load i8, ptr %6, align 8, !tbaa !82, !range !58, !noundef !59
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %7, align 8, !tbaa !85
  %18 = load ptr, ptr %8, align 8, !tbaa !84
  %19 = getelementptr inbounds ptr, ptr %18, i64 %13
  %20 = load ptr, ptr %19, align 8, !tbaa !69
  %21 = load ptr, ptr %17, align 8, !tbaa !64
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %20)
  br label %24

24:                                               ; preds = %16, %12
  %25 = load ptr, ptr %9, align 8, !tbaa !84
  %26 = getelementptr inbounds ptr, ptr %25, i64 %13
  store ptr null, ptr %26, align 8, !tbaa !69
  %27 = add nuw nsw i64 %13, 1
  %28 = load i32, ptr %2, align 4, !tbaa !51
  %29 = zext i32 %28 to i64
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %12, label %10, !llvm.loop !128
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !106 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !51
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !85
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 77, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #14
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !82, !range !58, !noundef !59
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !85
  %20 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !84
  %22 = zext i32 %1 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !69
  %25 = load ptr, ptr %19, align 8, !tbaa !64
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %24)
  br label %28

28:                                               ; preds = %17, %13
  %29 = load i32, ptr %3, align 4, !tbaa !51
  %30 = add i32 %29, -1
  %31 = icmp eq i32 %30, %1
  br i1 %31, label %46, label %32

32:                                               ; preds = %28
  %33 = icmp ugt i32 %30, %1
  br i1 %33, label %34, label %46

34:                                               ; preds = %32
  %35 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %36 = zext i32 %1 to i64
  %37 = zext i32 %30 to i64
  br label %38

38:                                               ; preds = %34, %38
  %39 = phi i64 [ %36, %34 ], [ %41, %38 ]
  %40 = load ptr, ptr %35, align 8, !tbaa !84
  %41 = add nuw nsw i64 %39, 1
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !69
  %44 = getelementptr inbounds ptr, ptr %40, i64 %39
  store ptr %43, ptr %44, align 8, !tbaa !69
  %45 = icmp eq i64 %41, %37
  br i1 %45, label %46, label %38, !llvm.loop !129

46:                                               ; preds = %38, %32, %28
  %47 = phi i32 [ %1, %28 ], [ %30, %32 ], [ %30, %38 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !84
  %50 = zext i32 %47 to i64
  %51 = getelementptr inbounds ptr, ptr %49, i64 %50
  store ptr null, ptr %51, align 8, !tbaa !69
  store i32 %30, ptr %3, align 4, !tbaa !51
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #10 comdat align 2 !prof !106 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !51
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !51
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !82, !range !58, !noundef !59
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !85
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !84
  %15 = zext i32 %6 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !69
  %18 = load ptr, ptr %12, align 8, !tbaa !64
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %17)
  br label %21

21:                                               ; preds = %1, %10, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #10 comdat align 2 !prof !106 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !82, !range !58, !noundef !59
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !51
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %12

12:                                               ; preds = %9, %12
  %13 = phi i64 [ 0, %9 ], [ %21, %12 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !85
  %15 = load ptr, ptr %11, align 8, !tbaa !84
  %16 = getelementptr inbounds ptr, ptr %15, i64 %13
  %17 = load ptr, ptr %16, align 8, !tbaa !69
  %18 = load ptr, ptr %14, align 8, !tbaa !64
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %17)
  %21 = add nuw nsw i64 %13, 1
  %22 = load i32, ptr %6, align 4, !tbaa !51
  %23 = zext i32 %22 to i64
  %24 = icmp ult i64 %21, %23
  br i1 %24, label %12, label %25, !llvm.loop !130

25:                                               ; preds = %12, %5, %1
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !85
  %28 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !84
  %30 = load ptr, ptr %27, align 8, !tbaa !64
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %29)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #11 comdat align 2 !prof !106 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #11 comdat align 2 !prof !106 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE12setElementAtEPtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !106 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !51
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !85
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 116, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #14
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !82, !range !58, !noundef !59
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !84
  %21 = zext i32 %2 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !69
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  tail call void @_ZdlPv(ptr noundef %23) #17
  br label %26

26:                                               ; preds = %18, %25, %14
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !84
  %29 = zext i32 %2 to i64
  %30 = getelementptr inbounds ptr, ptr %28, i64 %29
  store ptr %1, ptr %30, align 8, !tbaa !69
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #11 comdat align 2 !prof !106 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !51
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

9:                                                ; preds = %21, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !51
  ret void

11:                                               ; preds = %5, %21
  %12 = phi i64 [ 0, %5 ], [ %24, %21 ]
  %13 = load i8, ptr %6, align 8, !tbaa !82, !range !58, !noundef !59
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 8, !tbaa !84
  %17 = getelementptr inbounds ptr, ptr %16, i64 %12
  %18 = load ptr, ptr %17, align 8, !tbaa !69
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  tail call void @_ZdlPv(ptr noundef %18) #17
  br label %21

21:                                               ; preds = %15, %20, %11
  %22 = load ptr, ptr %8, align 8, !tbaa !84
  %23 = getelementptr inbounds ptr, ptr %22, i64 %12
  store ptr null, ptr %23, align 8, !tbaa !69
  %24 = add nuw nsw i64 %12, 1
  %25 = load i32, ptr %2, align 4, !tbaa !51
  %26 = zext i32 %25 to i64
  %27 = icmp ult i64 %24, %26
  br i1 %27, label %11, label %9, !llvm.loop !131
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !106 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !51
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !85
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 144, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #14
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !82, !range !58, !noundef !59
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !84
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !69
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  tail call void @_ZdlPv(ptr noundef %22) #17
  br label %25

25:                                               ; preds = %17, %24, %13
  %26 = load i32, ptr %3, align 4, !tbaa !51
  %27 = add i32 %26, -1
  %28 = icmp eq i32 %27, %1
  br i1 %28, label %43, label %29

29:                                               ; preds = %25
  %30 = icmp ugt i32 %27, %1
  br i1 %30, label %31, label %43

31:                                               ; preds = %29
  %32 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %33 = zext i32 %1 to i64
  %34 = zext i32 %27 to i64
  br label %35

35:                                               ; preds = %31, %35
  %36 = phi i64 [ %33, %31 ], [ %38, %35 ]
  %37 = load ptr, ptr %32, align 8, !tbaa !84
  %38 = add nuw nsw i64 %36, 1
  %39 = getelementptr inbounds ptr, ptr %37, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !69
  %41 = getelementptr inbounds ptr, ptr %37, i64 %36
  store ptr %40, ptr %41, align 8, !tbaa !69
  %42 = icmp eq i64 %38, %34
  br i1 %42, label %43, label %35, !llvm.loop !132

43:                                               ; preds = %35, %29, %25
  %44 = phi i32 [ %1, %25 ], [ %27, %29 ], [ %27, %35 ]
  %45 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !84
  %47 = zext i32 %44 to i64
  %48 = getelementptr inbounds ptr, ptr %46, i64 %47
  store ptr null, ptr %48, align 8, !tbaa !69
  store i32 %27, ptr %3, align 4, !tbaa !51
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #11 comdat align 2 !prof !106 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !51
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !51
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !82, !range !58, !noundef !59
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !84
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !69
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  tail call void @_ZdlPv(ptr noundef %15) #17
  br label %18

18:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #10 comdat align 2 !prof !106 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !82, !range !58, !noundef !59
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !51
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %18
  %12 = phi i64 [ 0, %9 ], [ %19, %18 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !84
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !69
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  tail call void @_ZdlPv(ptr noundef %15) #17
  br label %18

18:                                               ; preds = %11, %17
  %19 = add nuw nsw i64 %12, 1
  %20 = load i32, ptr %6, align 4, !tbaa !51
  %21 = zext i32 %20 to i64
  %22 = icmp ult i64 %19, %21
  br i1 %22, label %11, label %23, !llvm.loop !133

23:                                               ; preds = %18, %5, %1
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !85
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !84
  %28 = load ptr, ptr %25, align 8, !tbaa !64
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %27)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind memory(none) }
attributes #7 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { noreturn }
attributes #16 = { noreturn nounwind }
attributes #17 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!40}

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
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39}
!35 = !{ptr @_ZN11xercesc_2_713FieldValueMapC2ERKS0_, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 566154}
!36 = !{ptr @_ZN11xercesc_2_713FieldValueMap7cleanUpEv, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 377466}
!37 = !{ptr @_ZN11xercesc_2_713FieldValueMap7cleanUpEv, ptr @_ZN11xercesc_2_716RefArrayVectorOfItED0Ev, i64 188733}
!38 = !{ptr @_ZN11xercesc_2_713FieldValueMapD2Ev, ptr @_ZN11xercesc_2_713FieldValueMap7cleanUpEv, i64 188738}
!39 = !{ptr @_ZN11xercesc_2_716RefArrayVectorOfItED0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 188746}
!40 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!41 = !{!"function_entry_count", i64 20}
!42 = !{!43, !44, i64 24}
!43 = !{!"_ZTSN11xercesc_2_713FieldValueMapE", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24}
!44 = !{!"any pointer", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C++ TBAA"}
!47 = !{!"function_entry_count", i64 188718}
!48 = !{!43, !44, i64 0}
!49 = !{!"branch_weights", i32 0, i32 188718}
!50 = !{!43, !44, i64 16}
!51 = !{!52, !54, i64 12}
!52 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfItEE", !53, i64 8, !54, i64 12, !54, i64 16, !44, i64 24, !44, i64 32}
!53 = !{!"bool", !45, i64 0}
!54 = !{!"int", !45, i64 0}
!55 = !{!"branch_weights", i32 188718, i32 0}
!56 = !{!57, !53, i64 0}
!57 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIPNS_8IC_FieldEEE", !53, i64 0, !54, i64 4, !54, i64 8, !44, i64 16, !44, i64 24}
!58 = !{i8 0, i8 2}
!59 = !{}
!60 = !{!57, !54, i64 4}
!61 = !{!57, !54, i64 8}
!62 = !{!57, !44, i64 16}
!63 = !{!57, !44, i64 24}
!64 = !{!65, !65, i64 0}
!65 = !{!"vtable pointer", !46, i64 0}
!66 = !{!"VP", i32 0, i64 188718, i64 8345045103670217670, i64 188718}
!67 = !{!"VP", i32 1, i64 188718, i64 32, i64 188718}
!68 = !{!"branch_weights", i32 1, i32 188717}
!69 = !{!44, !44, i64 0}
!70 = !{!"branch_weights", i32 188717, i32 1}
!71 = distinct !{!71, !72, !73}
!72 = !{!"llvm.loop.mustprogress"}
!73 = !{!"llvm.loop.unroll.disable"}
!74 = !{!43, !44, i64 8}
!75 = !{!76, !53, i64 0}
!76 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIPNS_17DatatypeValidatorEEE", !53, i64 0, !54, i64 4, !54, i64 8, !44, i64 16, !44, i64 24}
!77 = !{!76, !54, i64 4}
!78 = !{!76, !54, i64 8}
!79 = !{!76, !44, i64 16}
!80 = !{!76, !44, i64 24}
!81 = distinct !{!81, !72, !73}
!82 = !{!52, !53, i64 8}
!83 = !{!52, !54, i64 16}
!84 = !{!52, !44, i64 24}
!85 = !{!52, !44, i64 32}
!86 = !{!"branch_weights", i32 188717, i32 566155}
!87 = distinct !{!87, !72, !73}
!88 = !{!"branch_weights", i32 -1850530244, i32 0}
!89 = !{!90, !90, i64 0}
!90 = !{!"short", !45, i64 0}
!91 = !{!"branch_weights", i32 188718, i32 1892001}
!92 = distinct !{!92, !72, !73}
!93 = !{!"VP", i32 1, i64 188718, i64 17, i64 148865, i64 33, i64 31024, i64 32, i64 5779, i64 16, i64 2750}
!94 = !{!"branch_weights", i32 9, i32 188983}
!95 = !{!"VP", i32 0, i64 8, i64 8345045103670217670, i64 8}
!96 = !{!"branch_weights", i32 1, i32 143}
!97 = !{!"branch_weights", i32 143, i32 1}
!98 = !{!"branch_weights", i32 143, i32 9329}
!99 = distinct !{!99, !72, !73}
!100 = !{!"VP", i32 0, i64 8, i64 -7405368087501025645, i64 8}
!101 = distinct !{!101, !72, !73}
!102 = !{!"function_entry_count", i64 188738}
!103 = !{!"branch_weights", i32 5, i32 188733}
!104 = !{!"VP", i32 0, i64 188733, i64 -7405368087501025645, i64 188733}
!105 = !{!"VP", i32 0, i64 188733, i64 2021940994423510361, i64 188733}
!106 = !{!"function_entry_count", i64 0}
!107 = !{!"function_entry_count", i64 475779}
!108 = !{!"branch_weights", i32 0, i32 475779}
!109 = !{!"branch_weights", i32 239, i32 1}
!110 = !{!"branch_weights", i32 1, i32 0}
!111 = distinct !{!111, !72, !73}
!112 = !{!"branch_weights", i32 239, i32 7611985}
!113 = !{!"branch_weights", i32 475764, i32 15}
!114 = !{!115, !44, i64 40}
!115 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !116, i64 8, !44, i64 16, !54, i64 24, !44, i64 32, !44, i64 40}
!116 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !45, i64 0}
!117 = !{!"branch_weights", i32 6, i32 188740}
!118 = !{!"branch_weights", i32 1, i32 188739}
!119 = !{!"VP", i32 0, i64 188992, i64 -7405368087501025645, i64 188992}
!120 = !{!"branch_weights", i32 253, i32 188739}
!121 = distinct !{!121, !72, !73}
!122 = !{!"VP", i32 0, i64 188746, i64 -7405368087501025645, i64 188746}
!123 = !{!"function_entry_count", i64 188746}
!124 = !{!"function_entry_count", i64 317171}
!125 = !{!"branch_weights", i32 317171, i32 0}
!126 = !{!"branch_weights", i32 0, i32 317171}
!127 = !{!"VP", i32 0, i64 317171, i64 -7405368087501025645, i64 317171}
!128 = distinct !{!128, !72, !73}
!129 = distinct !{!129, !72, !73}
!130 = distinct !{!130, !72, !73}
!131 = distinct !{!131, !72, !73}
!132 = distinct !{!132, !72, !73}
!133 = distinct !{!133, !72, !73}
