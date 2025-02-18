; ModuleID = 'UnionToken.cpp'
source_filename = "UnionToken.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::UnionToken" = type { %"class.xercesc_2_7::Token", ptr }
%"class.xercesc_2_7::Token" = type { ptr, i16, ptr }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::TokenFactory" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::StringToken" = type { %"class.xercesc_2_7::Token", i32, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE9elementAtEj = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKt = comdat any

$_ZNK11xercesc_2_710UnionToken8getChildEi = comdat any

$_ZNK11xercesc_2_710UnionToken4sizeEv = comdat any

$_ZNK11xercesc_2_75Token6getMinEv = comdat any

$_ZNK11xercesc_2_75Token6getMaxEv = comdat any

$_ZNK11xercesc_2_75Token10getNoParenEv = comdat any

$_ZNK11xercesc_2_75Token14getReferenceNoEv = comdat any

$_ZNK11xercesc_2_75Token9getStringEv = comdat any

$_ZNK11xercesc_2_75Token7getCharEv = comdat any

$_ZN11xercesc_2_75Token6setMinEi = comdat any

$_ZN11xercesc_2_75Token6setMaxEi = comdat any

$_ZN11xercesc_2_75Token8addRangeEii = comdat any

$_ZN11xercesc_2_75Token11mergeRangesEPKS0_ = comdat any

$_ZN11xercesc_2_75Token10sortRangesEv = comdat any

$_ZN11xercesc_2_75Token13compactRangesEv = comdat any

$_ZN11xercesc_2_75Token14subtractRangesEPNS_10RangeTokenE = comdat any

$_ZN11xercesc_2_75Token15intersectRangesEPNS_10RangeTokenE = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_5TokenEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_5TokenEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE12setElementAtEPS1_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE19ensureExtraCapacityEj = comdat any

$_ZTSN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTIN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_711RefVectorOfINS_5TokenEEE = comdat any

$_ZTSN11xercesc_2_711RefVectorOfINS_5TokenEEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfINS_5TokenEEE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfINS_5TokenEEE = comdat any

$_ZTIN11xercesc_2_711RefVectorOfINS_5TokenEEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfINS_5TokenEEE = comdat any

@_ZN11xercesc_2_710UnionToken11INITIALSIZEE = dso_local local_unnamed_addr constant i16 8, align 2
@_ZTVN11xercesc_2_710UnionTokenE = dso_local unnamed_addr constant { [21 x ptr] } { [21 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_710UnionTokenE, ptr @_ZN11xercesc_2_710UnionTokenD2Ev, ptr @_ZN11xercesc_2_710UnionTokenD0Ev, ptr @_ZNK11xercesc_2_710UnionToken8getChildEi, ptr @_ZNK11xercesc_2_710UnionToken4sizeEv, ptr @_ZNK11xercesc_2_75Token6getMinEv, ptr @_ZNK11xercesc_2_75Token6getMaxEv, ptr @_ZNK11xercesc_2_75Token10getNoParenEv, ptr @_ZNK11xercesc_2_75Token14getReferenceNoEv, ptr @_ZNK11xercesc_2_75Token9getStringEv, ptr @_ZNK11xercesc_2_75Token7getCharEv, ptr @_ZN11xercesc_2_75Token6setMinEi, ptr @_ZN11xercesc_2_75Token6setMaxEi, ptr @_ZN11xercesc_2_75Token8addRangeEii, ptr @_ZN11xercesc_2_75Token11mergeRangesEPKS0_, ptr @_ZN11xercesc_2_75Token10sortRangesEv, ptr @_ZN11xercesc_2_75Token13compactRangesEv, ptr @_ZN11xercesc_2_75Token14subtractRangesEPNS_10RangeTokenE, ptr @_ZN11xercesc_2_75Token15intersectRangesEPNS_10RangeTokenE, ptr @_ZN11xercesc_2_710UnionToken8addChildEPNS_5TokenEPNS_12TokenFactoryE] }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_710UnionTokenE = dso_local constant [28 x i8] c"N11xercesc_2_710UnionTokenE\00", align 1
@_ZTIN11xercesc_2_75TokenE = external constant ptr
@_ZTIN11xercesc_2_710UnionTokenE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_710UnionTokenE, ptr @_ZTIN11xercesc_2_75TokenE }, align 8
@.str = private unnamed_addr constant [30 x i8] c"./xercesc/util/regx/Token.hpp\00", align 1
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2
@.str.1 = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_711RefVectorOfINS_5TokenEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_5TokenEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_5TokenEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_5TokenEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_711RefVectorOfINS_5TokenEEE = linkonce_odr dso_local constant [41 x i8] c"N11xercesc_2_711RefVectorOfINS_5TokenEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_5TokenEEE = linkonce_odr dso_local constant [45 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_5TokenEEE\00", comdat, align 1
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_5TokenEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_5TokenEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_5TokenEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_5TokenEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_5TokenEEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_5TokenEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_5TokenEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE7cleanupEv] }, comdat, align 8

@_ZN11xercesc_2_710UnionTokenC1EtPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, i16, ptr), ptr @_ZN11xercesc_2_710UnionTokenC2EtPNS_13MemoryManagerE
@_ZN11xercesc_2_710UnionTokenD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_710UnionTokenD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710UnionTokenC2EtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, i16 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !52 {
  tail call void @_ZN11xercesc_2_75TokenC2EtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %0, i16 noundef zeroext %1, ptr noundef %2)
  store ptr getelementptr inbounds ({ [21 x ptr] }, ptr @_ZTVN11xercesc_2_710UnionTokenE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !53
  %4 = getelementptr inbounds %"class.xercesc_2_7::UnionToken", ptr %0, i64 0, i32 1
  store ptr null, ptr %4, align 8, !tbaa !56
  ret void
}

declare void @_ZN11xercesc_2_75TokenC2EtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24), i16 noundef zeroext, ptr noundef) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_710UnionTokenD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 align 2 !prof !62 {
  store ptr getelementptr inbounds ({ [21 x ptr] }, ptr @_ZTVN11xercesc_2_710UnionTokenE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !53
  %2 = getelementptr inbounds %"class.xercesc_2_7::UnionToken", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !53
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(40) %3) #12
  br label %9

9:                                                ; preds = %5, %1
  tail call void @_ZN11xercesc_2_75TokenD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_75TokenD2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_710UnionTokenD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 align 2 !prof !52 {
  store ptr getelementptr inbounds ({ [21 x ptr] }, ptr @_ZTVN11xercesc_2_710UnionTokenE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !53
  %2 = getelementptr inbounds %"class.xercesc_2_7::UnionToken", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !63

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !53
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(40) %3) #12, !prof !64
  br label %9

9:                                                ; preds = %1, %5
  tail call void @_ZN11xercesc_2_75TokenD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710UnionToken8addChildEPNS_5TokenEPNS_12TokenFactoryE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  %4 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  %5 = icmp eq ptr %1, null
  br i1 %5, label %242, label %6, !prof !66

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.xercesc_2_7::UnionToken", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %34, !prof !67

10:                                               ; preds = %6
  %11 = getelementptr inbounds %"class.xercesc_2_7::TokenFactory", ptr %2, i64 0, i32 15
  %12 = load ptr, ptr %11, align 8, !tbaa !68
  %13 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %12)
  %14 = load ptr, ptr %11, align 8, !tbaa !68
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_5TokenEEE, i64 0, inrange i32 0, i64 2), ptr %13, align 8, !tbaa !53
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %13, i64 0, i32 1
  store i8 0, ptr %15, align 8, !tbaa !70
  %16 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %13, i64 0, i32 2
  store i32 0, ptr %16, align 4, !tbaa !74
  %17 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %13, i64 0, i32 3
  store i32 8, ptr %17, align 8, !tbaa !75
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %13, i64 0, i32 4
  store ptr null, ptr %18, align 8, !tbaa !76
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %13, i64 0, i32 5
  store ptr %14, ptr %19, align 8, !tbaa !77
  %20 = load ptr, ptr %14, align 8, !tbaa !53
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = invoke noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef 64)
          to label %24 unwind label %32, !prof !78

24:                                               ; preds = %10
  store ptr %23, ptr %18, align 8, !tbaa !76
  br label %25

25:                                               ; preds = %24, %25
  %26 = phi i64 [ 0, %24 ], [ %29, %25 ]
  %27 = load ptr, ptr %18, align 8, !tbaa !76
  %28 = getelementptr inbounds ptr, ptr %27, i64 %26
  store ptr null, ptr %28, align 8, !tbaa !79
  %29 = add nuw nsw i64 %26, 1
  %30 = icmp eq i64 %29, 8
  br i1 %30, label %31, label %25, !prof !80, !llvm.loop !81

31:                                               ; preds = %25
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_5TokenEEE, i64 0, inrange i32 0, i64 2), ptr %13, align 8, !tbaa !53
  store ptr %13, ptr %7, align 8, !tbaa !56
  br label %34

32:                                               ; preds = %10
  %33 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %13, ptr noundef %12) #12
  br label %254

34:                                               ; preds = %31, %6
  %35 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %0, i64 0, i32 1
  %36 = load i16, ptr %35, align 8, !tbaa !84
  %37 = icmp eq i16 %36, 2
  br i1 %37, label %38, label %47, !prof !85

38:                                               ; preds = %34
  %39 = load ptr, ptr %7, align 8, !tbaa !56
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %39, i32 noundef 1)
  %40 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %39, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !76
  %42 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %39, i64 0, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !74
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds ptr, ptr %41, i64 %44
  store ptr %1, ptr %45, align 8, !tbaa !79
  %46 = add i32 %43, 1
  store i32 %46, ptr %42, align 4, !tbaa !74
  br label %242

47:                                               ; preds = %34
  %48 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %1, i64 0, i32 1
  %49 = load i16, ptr %48, align 8, !tbaa !84
  %50 = load ptr, ptr %1, align 8, !tbaa !53
  %51 = getelementptr inbounds ptr, ptr %50, i64 3
  %52 = load ptr, ptr %51, align 8
  %53 = tail call noundef i32 %52(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !86
  %54 = icmp eq i16 %49, 1
  br i1 %54, label %55, label %68, !prof !87

55:                                               ; preds = %47
  %56 = icmp eq i32 %53, 0
  br i1 %56, label %242, label %57, !prof !88

57:                                               ; preds = %55, %57
  %58 = phi i32 [ %66, %57 ], [ 0, %55 ]
  %59 = load ptr, ptr %1, align 8, !tbaa !53
  %60 = getelementptr inbounds ptr, ptr %59, i64 2
  %61 = load ptr, ptr %60, align 8
  %62 = tail call noundef ptr %61(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %58), !prof !89
  %63 = load ptr, ptr %0, align 8, !tbaa !53
  %64 = getelementptr inbounds ptr, ptr %63, i64 18
  %65 = load ptr, ptr %64, align 8
  tail call void %65(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %62, ptr noundef %2), !prof !90
  %66 = add nuw i32 %58, 1
  %67 = icmp eq i32 %66, %53
  br i1 %67, label %242, label %57, !prof !91, !llvm.loop !92

68:                                               ; preds = %47
  %69 = load ptr, ptr %7, align 8, !tbaa !56
  %70 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %69, i64 0, i32 2
  %71 = load i32, ptr %70, align 4, !tbaa !74
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %80, !prof !93

73:                                               ; preds = %68
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %69, i32 noundef 1)
  %74 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %69, i64 0, i32 4
  %75 = load ptr, ptr %74, align 8, !tbaa !76
  %76 = load i32, ptr %70, align 4, !tbaa !74
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds ptr, ptr %75, i64 %77
  store ptr %1, ptr %78, align 8, !tbaa !79
  %79 = add i32 %76, 1
  store i32 %79, ptr %70, align 4, !tbaa !74
  br label %242

80:                                               ; preds = %68
  %81 = add i32 %71, -1
  %82 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %69, i32 noundef %81)
  %83 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %82, i64 0, i32 1
  %84 = load i16, ptr %83, align 8, !tbaa !84
  %85 = icmp eq i16 %84, 0
  switch i16 %84, label %88 [
    i16 10, label %86
    i16 0, label %86
  ], !prof !94

86:                                               ; preds = %80, %80
  %87 = icmp eq i16 %49, 0
  switch i16 %49, label %88 [
    i16 10, label %97
    i16 0, label %97
  ], !prof !95

88:                                               ; preds = %86, %80
  %89 = load ptr, ptr %7, align 8, !tbaa !56
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %89, i32 noundef 1)
  %90 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %89, i64 0, i32 4
  %91 = load ptr, ptr %90, align 8, !tbaa !76
  %92 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %89, i64 0, i32 2
  %93 = load i32, ptr %92, align 4, !tbaa !74
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds ptr, ptr %91, i64 %94
  store ptr %1, ptr %95, align 8, !tbaa !79
  %96 = add i32 %93, 1
  store i32 %96, ptr %92, align 4, !tbaa !74
  br label %242

97:                                               ; preds = %86, %86
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #12
  %98 = getelementptr inbounds %"class.xercesc_2_7::TokenFactory", ptr %2, i64 0, i32 15
  %99 = load ptr, ptr %98, align 8, !tbaa !68
  store i32 0, ptr %4, align 8, !tbaa !96
  %100 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %4, i64 0, i32 1
  store i32 1023, ptr %100, align 4, !tbaa !98
  %101 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %4, i64 0, i32 2
  store i32 0, ptr %101, align 8, !tbaa !99
  %102 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %4, i64 0, i32 3
  store i8 0, ptr %102, align 4, !tbaa !100
  %103 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %4, i64 0, i32 4
  store ptr %99, ptr %103, align 8, !tbaa !101
  %104 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %4, i64 0, i32 5
  %105 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %4, i64 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %104, i8 0, i64 16, i1 false)
  %106 = load ptr, ptr %99, align 8, !tbaa !53
  %107 = getelementptr inbounds ptr, ptr %106, i64 2
  %108 = load ptr, ptr %107, align 8
  %109 = tail call noundef ptr %108(ptr noundef nonnull align 8 dereferenceable(8) %99, i64 noundef 2048), !prof !102
  store ptr %109, ptr %105, align 8, !tbaa !103
  store i16 0, ptr %109, align 2, !tbaa !104
  %110 = load ptr, ptr %82, align 8, !tbaa !53
  br i1 %85, label %111, label %149, !prof !105

111:                                              ; preds = %97
  %112 = getelementptr inbounds ptr, ptr %110, i64 9
  %113 = load ptr, ptr %112, align 8
  %114 = invoke noundef i32 %113(ptr noundef nonnull align 8 dereferenceable(24) %82)
          to label %115 unwind label %126, !prof !106

115:                                              ; preds = %111
  %116 = icmp sgt i32 %114, 65535
  br i1 %116, label %117, label %130, !prof !107

117:                                              ; preds = %115
  %118 = load ptr, ptr %98, align 8, !tbaa !68
  %119 = invoke noundef ptr @_ZN11xercesc_2_78RegxUtil21decomposeToSurrogatesEiPNS_13MemoryManagerE(i32 noundef %114, ptr noundef %118)
          to label %120 unwind label %128

120:                                              ; preds = %117
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %119)
          to label %121 unwind label %128

121:                                              ; preds = %120
  %122 = load ptr, ptr %98, align 8, !tbaa !68
  %123 = load ptr, ptr %122, align 8, !tbaa !53
  %124 = getelementptr inbounds ptr, ptr %123, i64 3
  %125 = load ptr, ptr %124, align 8
  invoke void %125(ptr noundef nonnull align 8 dereferenceable(8) %122, ptr noundef %119)
          to label %142 unwind label %128

126:                                              ; preds = %135, %144, %142, %111
  %127 = landingpad { ptr, i32 }
          cleanup
  br label %243

128:                                              ; preds = %121, %120, %117
  %129 = landingpad { ptr, i32 }
          cleanup
  br label %243

130:                                              ; preds = %115
  %131 = trunc i32 %114 to i16
  %132 = load i32, ptr %4, align 8, !tbaa !96
  %133 = load i32, ptr %100, align 4, !tbaa !98
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %136, !prof !107

135:                                              ; preds = %130
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 1)
          to label %136 unwind label %126

136:                                              ; preds = %135, %130
  %137 = load ptr, ptr %105, align 8, !tbaa !103
  %138 = load i32, ptr %4, align 8, !tbaa !96
  %139 = add i32 %138, 1
  store i32 %139, ptr %4, align 8, !tbaa !96
  %140 = zext i32 %138 to i64
  %141 = getelementptr inbounds i16, ptr %137, i64 %140
  store i16 %131, ptr %141, align 2, !tbaa !104
  br label %142

142:                                              ; preds = %136, %121
  %143 = invoke noundef ptr @_ZN11xercesc_2_712TokenFactory12createStringEPKt(ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef null)
          to label %144 unwind label %126, !prof !108

144:                                              ; preds = %142
  %145 = load ptr, ptr %7, align 8, !tbaa !56
  %146 = load ptr, ptr %145, align 8, !tbaa !53
  %147 = getelementptr inbounds ptr, ptr %146, i64 2
  %148 = load ptr, ptr %147, align 8
  invoke void %148(ptr noundef nonnull align 8 dereferenceable(40) %145, ptr noundef %143, i32 noundef %81)
          to label %156 unwind label %126, !prof !109

149:                                              ; preds = %97
  %150 = getelementptr inbounds ptr, ptr %110, i64 8
  %151 = load ptr, ptr %150, align 8
  %152 = invoke noundef ptr %151(ptr noundef nonnull align 8 dereferenceable(24) %82)
          to label %153 unwind label %154, !prof !110

153:                                              ; preds = %149
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %152)
          to label %156 unwind label %154, !prof !111

154:                                              ; preds = %224, %195, %194, %190, %153, %149
  %155 = landingpad { ptr, i32 }
          cleanup
  br label %243

156:                                              ; preds = %144, %153
  %157 = phi ptr [ %82, %153 ], [ %143, %144 ]
  %158 = load ptr, ptr %1, align 8, !tbaa !53
  br i1 %87, label %159, label %190, !prof !112

159:                                              ; preds = %156
  %160 = getelementptr inbounds ptr, ptr %158, i64 9
  %161 = load ptr, ptr %160, align 8
  %162 = invoke noundef i32 %161(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %163 unwind label %174, !prof !113

163:                                              ; preds = %159
  %164 = icmp sgt i32 %162, 65535
  br i1 %164, label %165, label %178, !prof !114

165:                                              ; preds = %163
  %166 = load ptr, ptr %98, align 8, !tbaa !68
  %167 = invoke noundef ptr @_ZN11xercesc_2_78RegxUtil21decomposeToSurrogatesEiPNS_13MemoryManagerE(i32 noundef %162, ptr noundef %166)
          to label %168 unwind label %176

168:                                              ; preds = %165
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %167)
          to label %169 unwind label %176

169:                                              ; preds = %168
  %170 = load ptr, ptr %98, align 8, !tbaa !68
  %171 = load ptr, ptr %170, align 8, !tbaa !53
  %172 = getelementptr inbounds ptr, ptr %171, i64 3
  %173 = load ptr, ptr %172, align 8
  invoke void %173(ptr noundef nonnull align 8 dereferenceable(8) %170, ptr noundef %167)
          to label %195 unwind label %176

174:                                              ; preds = %183, %159
  %175 = landingpad { ptr, i32 }
          cleanup
  br label %243

176:                                              ; preds = %169, %168, %165
  %177 = landingpad { ptr, i32 }
          cleanup
  br label %243

178:                                              ; preds = %163
  %179 = trunc i32 %162 to i16
  %180 = load i32, ptr %4, align 8, !tbaa !96
  %181 = load i32, ptr %100, align 4, !tbaa !98
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %184, !prof !114

183:                                              ; preds = %178
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 1)
          to label %184 unwind label %174

184:                                              ; preds = %183, %178
  %185 = load ptr, ptr %105, align 8, !tbaa !103
  %186 = load i32, ptr %4, align 8, !tbaa !96
  %187 = add i32 %186, 1
  store i32 %187, ptr %4, align 8, !tbaa !96
  %188 = zext i32 %186 to i64
  %189 = getelementptr inbounds i16, ptr %185, i64 %188
  store i16 %179, ptr %189, align 2, !tbaa !104
  br label %195

190:                                              ; preds = %156
  %191 = getelementptr inbounds ptr, ptr %158, i64 8
  %192 = load ptr, ptr %191, align 8
  %193 = invoke noundef ptr %192(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %194 unwind label %154

194:                                              ; preds = %190
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %193)
          to label %195 unwind label %154

195:                                              ; preds = %194, %184, %169
  %196 = load ptr, ptr %105, align 8, !tbaa !103
  %197 = load i32, ptr %4, align 8, !tbaa !96
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds i16, ptr %196, i64 %198
  store i16 0, ptr %199, align 2, !tbaa !104
  %200 = getelementptr inbounds %"class.xercesc_2_7::StringToken", ptr %157, i64 0, i32 3
  %201 = load ptr, ptr %200, align 8, !tbaa !115
  %202 = getelementptr inbounds %"class.xercesc_2_7::StringToken", ptr %157, i64 0, i32 2
  %203 = load ptr, ptr %202, align 8, !tbaa !117
  %204 = load ptr, ptr %201, align 8, !tbaa !53
  %205 = getelementptr inbounds ptr, ptr %204, i64 3
  %206 = load ptr, ptr %205, align 8
  invoke void %206(ptr noundef nonnull align 8 dereferenceable(8) %201, ptr noundef %203)
          to label %207 unwind label %154, !prof !118

207:                                              ; preds = %195
  %208 = load ptr, ptr %200, align 8, !tbaa !115
  %209 = icmp eq ptr %196, null
  br i1 %209, label %231, label %210, !prof !114

210:                                              ; preds = %207
  %211 = load i16, ptr %196, align 2, !tbaa !104
  %212 = icmp eq i16 %211, 0
  br i1 %212, label %224, label %213, !prof !114

213:                                              ; preds = %210, %213
  %214 = phi ptr [ %215, %213 ], [ %196, %210 ]
  %215 = getelementptr inbounds i16, ptr %214, i64 1
  %216 = load i16, ptr %215, align 2, !tbaa !104
  %217 = icmp eq i16 %216, 0
  br i1 %217, label %218, label %213, !prof !119, !llvm.loop !120

218:                                              ; preds = %213
  %219 = ptrtoint ptr %215 to i64
  %220 = ptrtoint ptr %196 to i64
  %221 = sub i64 %219, %220
  %222 = add i64 %221, 2
  %223 = and i64 %222, 8589934590
  br label %224

224:                                              ; preds = %218, %210
  %225 = phi i64 [ %223, %218 ], [ 2, %210 ]
  %226 = load ptr, ptr %208, align 8, !tbaa !53
  %227 = getelementptr inbounds ptr, ptr %226, i64 2
  %228 = load ptr, ptr %227, align 8
  %229 = invoke noundef ptr %228(ptr noundef nonnull align 8 dereferenceable(8) %208, i64 noundef %225)
          to label %230 unwind label %154, !prof !102

230:                                              ; preds = %224
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %229, ptr nonnull align 2 %196, i64 %225, i1 false), !prof !121
  br label %231

231:                                              ; preds = %207, %230
  %232 = phi ptr [ %229, %230 ], [ null, %207 ]
  store ptr %232, ptr %202, align 8, !tbaa !117
  %233 = load ptr, ptr %103, align 8, !tbaa !101
  %234 = load ptr, ptr %105, align 8, !tbaa !103
  %235 = load ptr, ptr %233, align 8, !tbaa !53
  %236 = getelementptr inbounds ptr, ptr %235, i64 3
  %237 = load ptr, ptr %236, align 8
  invoke void %237(ptr noundef nonnull align 8 dereferenceable(8) %233, ptr noundef %234)
          to label %241 unwind label %238, !prof !118

238:                                              ; preds = %231
  %239 = landingpad { ptr, i32 }
          catch ptr null
  %240 = extractvalue { ptr, i32 } %239, 0
  call void @__clang_call_terminate(ptr %240) #13
  unreachable

241:                                              ; preds = %231
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #12
  br label %242

242:                                              ; preds = %57, %55, %88, %241, %73, %3, %38
  ret void

243:                                              ; preds = %174, %176, %126, %128, %154
  %244 = phi { ptr, i32 } [ %155, %154 ], [ %127, %126 ], [ %129, %128 ], [ %177, %176 ], [ %175, %174 ]
  %245 = load ptr, ptr %103, align 8, !tbaa !101
  %246 = load ptr, ptr %105, align 8, !tbaa !103
  %247 = load ptr, ptr %245, align 8, !tbaa !53
  %248 = getelementptr inbounds ptr, ptr %247, i64 3
  %249 = load ptr, ptr %248, align 8
  invoke void %249(ptr noundef nonnull align 8 dereferenceable(8) %245, ptr noundef %246)
          to label %253 unwind label %250

250:                                              ; preds = %243
  %251 = landingpad { ptr, i32 }
          catch ptr null
  %252 = extractvalue { ptr, i32 } %251, 0
  call void @__clang_call_terminate(ptr %252) #13
  unreachable

253:                                              ; preds = %243
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #12
  br label %254

254:                                              ; preds = %253, %32
  %255 = phi { ptr, i32 } [ %244, %253 ], [ %33, %32 ]
  resume { ptr, i32 } %255
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !74
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !123

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !77
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 249, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #12
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !76
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !79
  ret ptr %18
}

declare noundef ptr @_ZN11xercesc_2_78RegxUtil21decomposeToSurrogatesEiPNS_13MemoryManagerE(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !124 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %30, label %4, !prof !125

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !104
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %30, label %7, !prof !126

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %13, %7 ], [ 0, %4 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !104
  %12 = icmp eq i16 %11, 0
  %13 = add i32 %8, 1
  br i1 %12, label %14, label %7, !prof !127, !llvm.loop !128

14:                                               ; preds = %7
  %15 = load i32, ptr %0, align 8, !tbaa !96
  %16 = add i32 %15, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !98
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %21, label %20, !prof !129

20:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %8)
  br label %21

21:                                               ; preds = %20, %14
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !103
  %24 = load i32, ptr %0, align 8, !tbaa !96
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i16, ptr %23, i64 %25
  %27 = shl nuw nsw i64 %9, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %26, ptr nonnull align 2 %1, i64 %27, i1 false), !prof !130
  %28 = load i32, ptr %0, align 8, !tbaa !96
  %29 = add i32 %28, %8
  store i32 %29, ptr %0, align 8, !tbaa !96
  br label %30

30:                                               ; preds = %21, %4, %2
  ret void
}

declare noundef ptr @_ZN11xercesc_2_712TokenFactory12createStringEPKt(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710UnionToken8getChildEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) unnamed_addr #6 comdat align 2 !prof !131 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::UnionToken", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %1)
  ret ptr %5
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_710UnionToken4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 !prof !132 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::UnionToken", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !133

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %3, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !74
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ]
  ret i32 %9
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75Token6getMinEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 !prof !62 {
  ret i32 -1
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75Token6getMaxEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 !prof !62 {
  ret i32 -1
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75Token10getNoParenEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 !prof !62 {
  ret i32 0
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75Token14getReferenceNoEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 !prof !62 {
  ret i32 0
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_75Token9getStringEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 !prof !62 {
  ret ptr null
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75Token7getCharEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 !prof !62 {
  ret i32 -1
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75Token6setMinEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #7 comdat align 2 !prof !62 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75Token6setMaxEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #7 comdat align 2 !prof !62 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75Token8addRangeEii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %5 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !134
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str, i32 noundef 230, i32 noundef 294, ptr noundef %6)
          to label %7 unwind label %8

7:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

8:                                                ; preds = %3
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #12
  resume { ptr, i32 } %9
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75Token11mergeRangesEPKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %4 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !134
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull @.str, i32 noundef 235, i32 noundef 294, ptr noundef %5)
          to label %6 unwind label %7

6:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

7:                                                ; preds = %2
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #12
  resume { ptr, i32 } %8
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75Token10sortRangesEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %3 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !134
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str, i32 noundef 240, i32 noundef 294, ptr noundef %4)
          to label %5 unwind label %6

5:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #12
  resume { ptr, i32 } %7
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75Token13compactRangesEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %3 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !134
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str, i32 noundef 245, i32 noundef 294, ptr noundef %4)
          to label %5 unwind label %6

5:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #12
  resume { ptr, i32 } %7
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75Token14subtractRangesEPNS_10RangeTokenE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %4 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !134
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull @.str, i32 noundef 250, i32 noundef 294, ptr noundef %5)
          to label %6 unwind label %7

6:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

7:                                                ; preds = %2
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #12
  resume { ptr, i32 } %8
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75Token15intersectRangesEPNS_10RangeTokenE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %4 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !134
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull @.str, i32 noundef 255, i32 noundef 294, ptr noundef %5)
          to label %6 unwind label %7

6:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

7:                                                ; preds = %2
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #12
  resume { ptr, i32 } %8
}

declare void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat !prof !62 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #12
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !53
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !62 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !62 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !135
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !53
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #12
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !53
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !62 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !62 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !135
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !53
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #12
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_5TokenEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !138 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_5TokenEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !53
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !70, !range !139, !noundef !140
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5, !prof !141

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !74
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9, !prof !88

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !76
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !79
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17, !prof !142

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !53
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(24) %15) #12, !prof !143
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !74
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !prof !144, !llvm.loop !145

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !77
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !76
  %31 = load ptr, ptr %28, align 8, !tbaa !53
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
          to label %34 unwind label %35, !prof !146

34:                                               ; preds = %26
  ret void

35:                                               ; preds = %26
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  tail call void @__clang_call_terminate(ptr %37) #13
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_5TokenEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !138 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_5TokenEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !147 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !74
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7, !prof !108

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !77
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.1, i32 noundef 67, i32 noundef 116, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #12
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !70, !range !139, !noundef !140
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %29, label %18, !prof !108

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !76
  %21 = zext i32 %2 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !79
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr %23, align 8, !tbaa !53
  %27 = getelementptr inbounds ptr, ptr %26, i64 1
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(24) %23) #12
  br label %29

29:                                               ; preds = %18, %25, %14
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !76
  %32 = zext i32 %2 to i64
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  store ptr %1, ptr %33, align 8, !tbaa !79
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !62 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !74
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

9:                                                ; preds = %24, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !74
  ret void

11:                                               ; preds = %5, %24
  %12 = phi i64 [ 0, %5 ], [ %27, %24 ]
  %13 = load i8, ptr %6, align 8, !tbaa !70, !range !139, !noundef !140
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 8, !tbaa !76
  %17 = getelementptr inbounds ptr, ptr %16, i64 %12
  %18 = load ptr, ptr %17, align 8, !tbaa !79
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %18, align 8, !tbaa !53
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(24) %18) #12
  br label %24

24:                                               ; preds = %15, %20, %11
  %25 = load ptr, ptr %8, align 8, !tbaa !76
  %26 = getelementptr inbounds ptr, ptr %25, i64 %12
  store ptr null, ptr %26, align 8, !tbaa !79
  %27 = add nuw nsw i64 %12, 1
  %28 = load i32, ptr %2, align 4, !tbaa !74
  %29 = zext i32 %28 to i64
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %11, label %9, !llvm.loop !148
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !74
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !77
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 144, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #12
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !70, !range !139, !noundef !140
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !76
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !79
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !53
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(24) %22) #12
  br label %28

28:                                               ; preds = %17, %24, %13
  %29 = load i32, ptr %3, align 4, !tbaa !74
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
  %40 = load ptr, ptr %35, align 8, !tbaa !76
  %41 = add nuw nsw i64 %39, 1
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !79
  %44 = getelementptr inbounds ptr, ptr %40, i64 %39
  store ptr %43, ptr %44, align 8, !tbaa !79
  %45 = icmp eq i64 %41, %37
  br i1 %45, label %46, label %38, !llvm.loop !149

46:                                               ; preds = %38, %32, %28
  %47 = phi i32 [ %1, %28 ], [ %30, %32 ], [ %30, %38 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !76
  %50 = zext i32 %47 to i64
  %51 = getelementptr inbounds ptr, ptr %49, i64 %50
  store ptr null, ptr %51, align 8, !tbaa !79
  store i32 %30, ptr %3, align 4, !tbaa !74
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !62 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !74
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !74
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !70, !range !139, !noundef !140
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !76
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !79
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !53
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(24) %15) #12
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !62 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !70, !range !139, !noundef !140
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !74
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !76
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !79
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !53
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(24) %15) #12
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !74
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !llvm.loop !150

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !77
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !76
  %31 = load ptr, ptr %28, align 8, !tbaa !53
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !62 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !62 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !151 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !74
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !75
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %55, !prof !152

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !77
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !53
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16), !prof !153
  %21 = load i32, ptr %3, align 4, !tbaa !74
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23, !prof !154

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %25 = zext i32 %21 to i64
  br label %40

26:                                               ; preds = %40
  %27 = trunc i64 %46 to i32
  br label %28

28:                                               ; preds = %26, %9
  %29 = phi i32 [ 0, %9 ], [ %27, %26 ]
  %30 = icmp ult i32 %29, %12
  br i1 %30, label %31, label %48, !prof !155

31:                                               ; preds = %28
  %32 = zext i32 %29 to i64
  %33 = shl nuw nsw i64 %32, 3
  %34 = getelementptr i8, ptr %20, i64 %33
  %35 = xor i32 %29, -1
  %36 = add i32 %12, %35
  %37 = zext i32 %36 to i64
  %38 = shl nuw nsw i64 %37, 3
  %39 = add nuw nsw i64 %38, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %34, i8 0, i64 %39, i1 false), !tbaa !79
  br label %48

40:                                               ; preds = %23, %40
  %41 = phi i64 [ 0, %23 ], [ %46, %40 ]
  %42 = load ptr, ptr %24, align 8, !tbaa !76
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !79
  %45 = getelementptr inbounds ptr, ptr %20, i64 %41
  store ptr %44, ptr %45, align 8, !tbaa !79
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %25
  br i1 %47, label %26, label %40, !prof !156, !llvm.loop !157

48:                                               ; preds = %31, %28
  %49 = load ptr, ptr %13, align 8, !tbaa !77
  %50 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !76
  %52 = load ptr, ptr %49, align 8, !tbaa !53
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %51), !prof !158
  store ptr %20, ptr %50, align 8, !tbaa !76
  store i32 %12, ptr %6, align 8, !tbaa !75
  br label %55

55:                                               ; preds = %2, %48
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!51}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!35 = !{ptr @_ZN11xercesc_2_710UnionTokenC2EtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_75TokenC2EtPNS_13MemoryManagerE, i64 18}
!36 = !{ptr @_ZN11xercesc_2_710UnionTokenD0Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_5TokenEED0Ev, i64 18}
!37 = !{ptr @_ZN11xercesc_2_710UnionTokenD0Ev, ptr @_ZN11xercesc_2_75TokenD2Ev, i64 18}
!38 = !{ptr @_ZN11xercesc_2_710UnionTokenD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 18}
!39 = !{ptr @_ZN11xercesc_2_710UnionToken8addChildEPNS_5TokenEPNS_12TokenFactoryE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 18}
!40 = !{ptr @_ZN11xercesc_2_710UnionToken8addChildEPNS_5TokenEPNS_12TokenFactoryE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE19ensureExtraCapacityEj, i64 67}
!41 = !{ptr @_ZN11xercesc_2_710UnionToken8addChildEPNS_5TokenEPNS_12TokenFactoryE, ptr @_ZN11xercesc_2_710UnionToken8addChildEPNS_5TokenEPNS_12TokenFactoryE, i64 22}
!42 = !{ptr @_ZN11xercesc_2_710UnionToken8addChildEPNS_5TokenEPNS_12TokenFactoryE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE9elementAtEj, i64 86}
!43 = !{ptr @_ZN11xercesc_2_710UnionToken8addChildEPNS_5TokenEPNS_12TokenFactoryE, ptr @_ZN11xercesc_2_712TokenFactory12createStringEPKt, i64 8}
!44 = !{ptr @_ZN11xercesc_2_710UnionToken8addChildEPNS_5TokenEPNS_12TokenFactoryE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE12setElementAtEPS1_j, i64 8}
!45 = !{ptr @_ZN11xercesc_2_710UnionToken8addChildEPNS_5TokenEPNS_12TokenFactoryE, ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, i64 33}
!46 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 2}
!47 = !{ptr @_ZNK11xercesc_2_710UnionToken8getChildEi, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE9elementAtEj, i64 134}
!48 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_5TokenEED2Ev, ptr @_ZN11xercesc_2_710UnionTokenD0Ev, i64 18}
!49 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_5TokenEED0Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_5TokenEED2Ev, i64 29}
!50 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_5TokenEED0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 29}
!51 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!52 = !{!"function_entry_count", i64 18}
!53 = !{!54, !54, i64 0}
!54 = !{!"vtable pointer", !55, i64 0}
!55 = !{!"Simple C++ TBAA"}
!56 = !{!57, !61, i64 24}
!57 = !{!"_ZTSN11xercesc_2_710UnionTokenE", !58, i64 0, !61, i64 24}
!58 = !{!"_ZTSN11xercesc_2_75TokenE", !59, i64 8, !61, i64 16}
!59 = !{!"short", !60, i64 0}
!60 = !{!"omnipotent char", !55, i64 0}
!61 = !{!"any pointer", !60, i64 0}
!62 = !{!"function_entry_count", i64 0}
!63 = !{!"branch_weights", i32 0, i32 18}
!64 = !{!"VP", i32 0, i64 18, i64 6563145855693252095, i64 18}
!65 = !{!"function_entry_count", i64 119}
!66 = !{!"branch_weights", i32 0, i32 119}
!67 = !{!"branch_weights", i32 18, i32 101}
!68 = !{!69, !61, i64 120}
!69 = !{!"_ZTSN11xercesc_2_712TokenFactoryE", !61, i64 0, !61, i64 8, !61, i64 16, !61, i64 24, !61, i64 32, !61, i64 40, !61, i64 48, !61, i64 56, !61, i64 64, !61, i64 72, !61, i64 80, !61, i64 88, !61, i64 96, !61, i64 104, !61, i64 112, !61, i64 120}
!70 = !{!71, !72, i64 8}
!71 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_5TokenEEE", !72, i64 8, !73, i64 12, !73, i64 16, !61, i64 24, !61, i64 32}
!72 = !{!"bool", !60, i64 0}
!73 = !{!"int", !60, i64 0}
!74 = !{!71, !73, i64 12}
!75 = !{!71, !73, i64 16}
!76 = !{!71, !61, i64 24}
!77 = !{!71, !61, i64 32}
!78 = !{!"VP", i32 0, i64 18, i64 8345045103670217670, i64 18}
!79 = !{!61, !61, i64 0}
!80 = !{!"branch_weights", i32 18, i32 126}
!81 = distinct !{!81, !82, !83}
!82 = !{!"llvm.loop.mustprogress"}
!83 = !{!"llvm.loop.unroll.disable"}
!84 = !{!58, !59, i64 8}
!85 = !{!"branch_weights", i32 7, i32 112}
!86 = !{!"VP", i32 0, i64 112, i64 -5887941068603828644, i64 79, i64 65173957668626125, i64 19, i64 3353124641116801193, i64 11}
!87 = !{!"branch_weights", i32 11, i32 101}
!88 = !{!"branch_weights", i32 1, i32 175}
!89 = !{!"VP", i32 0, i64 22, i64 7090685686281849004, i64 22}
!90 = !{!"VP", i32 0, i64 22, i64 2602431787464246842, i64 22}
!91 = !{!"branch_weights", i32 175, i32 177}
!92 = distinct !{!92, !82, !83}
!93 = !{!"branch_weights", i32 15, i32 86}
!94 = !{!"branch_weights", i32 24, i32 41, i32 21}
!95 = !{!"branch_weights", i32 21, i32 0, i32 41}
!96 = !{!97, !73, i64 0}
!97 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !73, i64 0, !73, i64 4, !73, i64 8, !72, i64 12, !61, i64 16, !61, i64 24, !61, i64 32}
!98 = !{!97, !73, i64 4}
!99 = !{!97, !73, i64 8}
!100 = !{!97, !72, i64 12}
!101 = !{!97, !61, i64 16}
!102 = !{!"VP", i32 0, i64 41, i64 8345045103670217670, i64 41}
!103 = !{!97, !61, i64 32}
!104 = !{!59, !59, i64 0}
!105 = !{!"branch_weights", i32 8, i32 33}
!106 = !{!"VP", i32 0, i64 8, i64 -6150412714165436328, i64 8}
!107 = !{!"branch_weights", i32 0, i32 8}
!108 = !{!"branch_weights", i32 8, i32 0}
!109 = !{!"VP", i32 0, i64 8, i64 -9015624199926153233, i64 8}
!110 = !{!"VP", i32 0, i64 33, i64 -3586975816051538851, i64 33}
!111 = !{!"branch_weights", i32 33, i32 0}
!112 = !{!"branch_weights", i32 41, i32 0}
!113 = !{!"VP", i32 0, i64 41, i64 -6150412714165436328, i64 41}
!114 = !{!"branch_weights", i32 0, i32 41}
!115 = !{!116, !61, i64 40}
!116 = !{!"_ZTSN11xercesc_2_711StringTokenE", !58, i64 0, !73, i64 24, !61, i64 32, !61, i64 40}
!117 = !{!116, !61, i64 32}
!118 = !{!"VP", i32 0, i64 41, i64 -7405368087501025645, i64 41}
!119 = !{!"branch_weights", i32 41, i32 166}
!120 = distinct !{!120, !82, !83}
!121 = !{!"VP", i32 1, i64 41, i64 9, i64 16, i64 6, i64 8, i64 17, i64 7, i64 8, i64 6}
!122 = !{!"function_entry_count", i64 220}
!123 = !{!"branch_weights", i32 220, i32 0}
!124 = !{!"function_entry_count", i64 789922}
!125 = !{!"branch_weights", i32 0, i32 789922}
!126 = !{!"branch_weights", i32 284, i32 789638}
!127 = !{!"branch_weights", i32 789638, i32 41628303}
!128 = distinct !{!128, !82, !83}
!129 = !{!"branch_weights", i32 789636, i32 2}
!130 = !{!"VP", i32 1, i64 789638, i64 17, i64 255406, i64 33, i64 81401, i64 65, i64 73335, i64 16, i64 65652}
!131 = !{!"function_entry_count", i64 134}
!132 = !{!"function_entry_count", i64 37}
!133 = !{!"branch_weights", i32 0, i32 37}
!134 = !{!58, !61, i64 16}
!135 = !{!136, !61, i64 40}
!136 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !137, i64 8, !61, i64 16, !73, i64 24, !61, i64 32, !61, i64 40}
!137 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !60, i64 0}
!138 = !{!"function_entry_count", i64 29}
!139 = !{i8 0, i8 2}
!140 = !{}
!141 = !{!"branch_weights", i32 18, i32 11}
!142 = !{!"branch_weights", i32 0, i32 141}
!143 = !{!"VP", i32 0, i64 141, i64 4834291537020673632, i64 62, i64 -196673185607578617, i64 19, i64 -627074849490041761, i64 18}
!144 = !{!"branch_weights", i32 2081, i32 175}
!145 = distinct !{!145, !82, !83}
!146 = !{!"VP", i32 0, i64 29, i64 -7405368087501025645, i64 29}
!147 = !{!"function_entry_count", i64 8}
!148 = distinct !{!148, !82, !83}
!149 = distinct !{!149, !82, !83}
!150 = distinct !{!150, !82, !83}
!151 = !{!"function_entry_count", i64 208}
!152 = !{!"branch_weights", i32 3, i32 205}
!153 = !{!"VP", i32 0, i64 3, i64 8345045103670217670, i64 3}
!154 = !{!"branch_weights", i32 1, i32 191}
!155 = !{!"branch_weights", i32 191, i32 1}
!156 = !{!"branch_weights", i32 191, i32 2369}
!157 = distinct !{!157, !82, !83}
!158 = !{!"VP", i32 0, i64 3, i64 -7405368087501025645, i64 3}
