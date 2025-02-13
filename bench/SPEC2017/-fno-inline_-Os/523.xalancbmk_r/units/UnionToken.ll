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

$_ZNK11xercesc_2_712TokenFactory16getMemoryManagerEv = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_5TokenEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_75Token12getTokenTypeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE10addElementEPS1_ = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_5TokenEE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE9elementAtEj = comdat any

$_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKt = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEt = comdat any

$_ZN11xercesc_2_711StringToken9setStringEPKt = comdat any

$_ZN11xercesc_2_79XMLBuffer12getRawBufferEv = comdat any

$_ZN11xercesc_2_79XMLBufferD2Ev = comdat any

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

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEEC2EjbPNS_13MemoryManagerE = comdat any

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

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710UnionTokenC2EtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, i16 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !68 {
  tail call void @_ZN11xercesc_2_75TokenC2EtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %0, i16 noundef zeroext %1, ptr noundef %2) #9
  store ptr getelementptr inbounds ({ [21 x ptr] }, ptr @_ZTVN11xercesc_2_710UnionTokenE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !69
  %4 = getelementptr inbounds %"class.xercesc_2_7::UnionToken", ptr %0, i64 0, i32 1
  store ptr null, ptr %4, align 8, !tbaa !72
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_75TokenC2EtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24), i16 noundef zeroext, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_710UnionTokenD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 align 2 !prof !68 {
  store ptr getelementptr inbounds ({ [21 x ptr] }, ptr @_ZTVN11xercesc_2_710UnionTokenE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !69
  %2 = getelementptr inbounds %"class.xercesc_2_7::UnionToken", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !69
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(40) %3) #10
  br label %9

9:                                                ; preds = %5, %1
  tail call void @_ZN11xercesc_2_75TokenD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #10
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_75TokenD2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_710UnionTokenD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 align 2 {
  tail call void @_ZN11xercesc_2_710UnionTokenD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710UnionToken8addChildEPNS_5TokenEPNS_12TokenFactoryE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !78 {
  %4 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  %5 = icmp eq ptr %1, null
  br i1 %5, label %127, label %6, !prof !79

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.xercesc_2_7::UnionToken", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %17, !prof !80

10:                                               ; preds = %6
  %11 = tail call noundef ptr @_ZNK11xercesc_2_712TokenFactory16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(128) %2) #9
  %12 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %11) #9
  %13 = tail call noundef ptr @_ZNK11xercesc_2_712TokenFactory16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(128) %2) #9
  invoke void @_ZN11xercesc_2_711RefVectorOfINS_5TokenEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %12, i32 noundef 8, i1 noundef zeroext false, ptr noundef %13) #9
          to label %14 unwind label %15

14:                                               ; preds = %10
  store ptr %12, ptr %7, align 8, !tbaa !72
  br label %17

15:                                               ; preds = %10
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %12, ptr noundef %11) #10
  br label %130

17:                                               ; preds = %14, %6
  %18 = tail call noundef zeroext i16 @_ZNK11xercesc_2_75Token12getTokenTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #9
  %19 = icmp eq i16 %18, 2
  br i1 %19, label %20, label %22, !prof !81

20:                                               ; preds = %17
  %21 = load ptr, ptr %7, align 8, !tbaa !72
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef nonnull %1) #9
  br label %127

22:                                               ; preds = %17
  %23 = tail call noundef zeroext i16 @_ZNK11xercesc_2_75Token12getTokenTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %24 = load ptr, ptr %1, align 8, !tbaa !69
  %25 = getelementptr inbounds ptr, ptr %24, i64 3
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef i32 %26(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %28 = icmp eq i16 %23, 1
  br i1 %28, label %29, label %42, !prof !82

29:                                               ; preds = %22
  %30 = icmp eq i32 %27, 0
  br i1 %30, label %127, label %31, !prof !83

31:                                               ; preds = %29, %31
  %32 = phi i32 [ %40, %31 ], [ 0, %29 ]
  %33 = load ptr, ptr %1, align 8, !tbaa !69
  %34 = getelementptr inbounds ptr, ptr %33, i64 2
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %32) #9
  %37 = load ptr, ptr %0, align 8, !tbaa !69
  %38 = getelementptr inbounds ptr, ptr %37, i64 18
  %39 = load ptr, ptr %38, align 8
  tail call void %39(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %36, ptr noundef %2) #9
  %40 = add nuw i32 %32, 1
  %41 = icmp eq i32 %40, %27
  br i1 %41, label %127, label %31, !prof !84, !llvm.loop !85

42:                                               ; preds = %22
  %43 = load ptr, ptr %7, align 8, !tbaa !72
  %44 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_5TokenEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %43) #9
  %45 = icmp eq i32 %44, 0
  %46 = load ptr, ptr %7, align 8, !tbaa !72
  br i1 %45, label %47, label %48, !prof !87

47:                                               ; preds = %42
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %46, ptr noundef nonnull %1) #9
  br label %127

48:                                               ; preds = %42
  %49 = add i32 %44, -1
  %50 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %46, i32 noundef %49) #9
  %51 = tail call noundef zeroext i16 @_ZNK11xercesc_2_75Token12getTokenTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %50) #9
  %52 = icmp eq i16 %51, 0
  switch i16 %51, label %55 [
    i16 10, label %53
    i16 0, label %53
  ]

53:                                               ; preds = %48, %48
  %54 = icmp eq i16 %23, 0
  switch i16 %23, label %55 [
    i16 10, label %57
    i16 0, label %57
  ]

55:                                               ; preds = %53, %48
  %56 = load ptr, ptr %7, align 8, !tbaa !72
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %56, ptr noundef nonnull %1) #9
  br label %127

57:                                               ; preds = %53, %53
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #11
  %58 = tail call noundef ptr @_ZNK11xercesc_2_712TokenFactory16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(128) %2) #9
  call void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 1023, ptr noundef %58) #9
  %59 = load ptr, ptr %50, align 8, !tbaa !69
  br i1 %52, label %60, label %88, !prof !88

60:                                               ; preds = %57
  %61 = getelementptr inbounds ptr, ptr %59, i64 9
  %62 = load ptr, ptr %61, align 8
  %63 = invoke noundef i32 %62(ptr noundef nonnull align 8 dereferenceable(24) %50) #9
          to label %64 unwind label %75

64:                                               ; preds = %60
  %65 = icmp sgt i32 %63, 65535
  br i1 %65, label %66, label %79, !prof !89

66:                                               ; preds = %64
  %67 = call noundef ptr @_ZNK11xercesc_2_712TokenFactory16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(128) %2) #9
  %68 = invoke noundef ptr @_ZN11xercesc_2_78RegxUtil21decomposeToSurrogatesEiPNS_13MemoryManagerE(i32 noundef %63, ptr noundef %67) #9
          to label %69 unwind label %77

69:                                               ; preds = %66
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %68) #9
          to label %70 unwind label %77

70:                                               ; preds = %69
  %71 = call noundef ptr @_ZNK11xercesc_2_712TokenFactory16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(128) %2) #9
  %72 = load ptr, ptr %71, align 8, !tbaa !69
  %73 = getelementptr inbounds ptr, ptr %72, i64 3
  %74 = load ptr, ptr %73, align 8
  invoke void %74(ptr noundef nonnull align 8 dereferenceable(8) %71, ptr noundef %68) #9
          to label %81 unwind label %77

75:                                               ; preds = %83, %81, %79, %60
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %128

77:                                               ; preds = %70, %69, %66
  %78 = landingpad { ptr, i32 }
          cleanup
  br label %128

79:                                               ; preds = %64
  %80 = trunc i32 %63 to i16
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %4, i16 noundef zeroext %80) #9
          to label %81 unwind label %75

81:                                               ; preds = %70, %79
  %82 = invoke noundef ptr @_ZN11xercesc_2_712TokenFactory12createStringEPKt(ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef null) #9
          to label %83 unwind label %75

83:                                               ; preds = %81
  %84 = load ptr, ptr %7, align 8, !tbaa !72
  %85 = load ptr, ptr %84, align 8, !tbaa !69
  %86 = getelementptr inbounds ptr, ptr %85, i64 2
  %87 = load ptr, ptr %86, align 8
  invoke void %87(ptr noundef nonnull align 8 dereferenceable(40) %84, ptr noundef %82, i32 noundef %49) #9
          to label %95 unwind label %75

88:                                               ; preds = %57
  %89 = getelementptr inbounds ptr, ptr %59, i64 8
  %90 = load ptr, ptr %89, align 8
  %91 = invoke noundef ptr %90(ptr noundef nonnull align 8 dereferenceable(24) %50) #9
          to label %92 unwind label %93

92:                                               ; preds = %88
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %91) #9
          to label %95 unwind label %93

93:                                               ; preds = %124, %123, %119, %92, %88
  %94 = landingpad { ptr, i32 }
          cleanup
  br label %128

95:                                               ; preds = %83, %92
  %96 = phi ptr [ %50, %92 ], [ %82, %83 ]
  %97 = load ptr, ptr %1, align 8, !tbaa !69
  br i1 %54, label %98, label %119, !prof !90

98:                                               ; preds = %95
  %99 = getelementptr inbounds ptr, ptr %97, i64 9
  %100 = load ptr, ptr %99, align 8
  %101 = invoke noundef i32 %100(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
          to label %102 unwind label %113

102:                                              ; preds = %98
  %103 = icmp sgt i32 %101, 65535
  br i1 %103, label %104, label %117, !prof !91

104:                                              ; preds = %102
  %105 = call noundef ptr @_ZNK11xercesc_2_712TokenFactory16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(128) %2) #9
  %106 = invoke noundef ptr @_ZN11xercesc_2_78RegxUtil21decomposeToSurrogatesEiPNS_13MemoryManagerE(i32 noundef %101, ptr noundef %105) #9
          to label %107 unwind label %115

107:                                              ; preds = %104
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %106) #9
          to label %108 unwind label %115

108:                                              ; preds = %107
  %109 = call noundef ptr @_ZNK11xercesc_2_712TokenFactory16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(128) %2) #9
  %110 = load ptr, ptr %109, align 8, !tbaa !69
  %111 = getelementptr inbounds ptr, ptr %110, i64 3
  %112 = load ptr, ptr %111, align 8
  invoke void %112(ptr noundef nonnull align 8 dereferenceable(8) %109, ptr noundef %106) #9
          to label %124 unwind label %115

113:                                              ; preds = %117, %98
  %114 = landingpad { ptr, i32 }
          cleanup
  br label %128

115:                                              ; preds = %108, %107, %104
  %116 = landingpad { ptr, i32 }
          cleanup
  br label %128

117:                                              ; preds = %102
  %118 = trunc i32 %101 to i16
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %4, i16 noundef zeroext %118) #9
          to label %124 unwind label %113

119:                                              ; preds = %95
  %120 = getelementptr inbounds ptr, ptr %97, i64 8
  %121 = load ptr, ptr %120, align 8
  %122 = invoke noundef ptr %121(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
          to label %123 unwind label %93

123:                                              ; preds = %119
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %122) #9
          to label %124 unwind label %93

124:                                              ; preds = %117, %108, %123
  %125 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #9
  invoke void @_ZN11xercesc_2_711StringToken9setStringEPKt(ptr noundef nonnull align 8 dereferenceable(48) %96, ptr noundef %125) #9
          to label %126 unwind label %93

126:                                              ; preds = %124
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %4) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #11
  br label %127

127:                                              ; preds = %31, %29, %55, %126, %47, %3, %20
  ret void

128:                                              ; preds = %113, %115, %75, %77, %93
  %129 = phi { ptr, i32 } [ %94, %93 ], [ %76, %75 ], [ %78, %77 ], [ %116, %115 ], [ %114, %113 ]
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %4) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #11
  br label %130

130:                                              ; preds = %128, %15
  %131 = phi { ptr, i32 } [ %129, %128 ], [ %16, %15 ]
  resume { ptr, i32 } %131
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712TokenFactory16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #2 comdat align 2 !prof !92 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::TokenFactory", ptr %0, i64 0, i32 15
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_5TokenEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 comdat align 2 !prof !95 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #9
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_5TokenEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !69
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i16 @_ZNK11xercesc_2_75Token12getTokenTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !97
  ret i16 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !98 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #9
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !99
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !103
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !104
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !103
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_5TokenEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 comdat align 2 !prof !105 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !103
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !106 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !103
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !107

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !108
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 249, i32 noundef 116, ptr noundef %9) #9
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #12
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !99
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !104
  ret ptr %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !109 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #9
  store i32 0, ptr %0, align 8, !tbaa !110
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  store i32 %1, ptr %4, align 4, !tbaa !112
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 2
  store i32 0, ptr %5, align 8, !tbaa !113
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 3
  store i8 0, ptr %6, align 4, !tbaa !114
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 4
  store ptr %2, ptr %7, align 8, !tbaa !115
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 5
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %10 = add i32 %1, 1
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %13 = load ptr, ptr %2, align 8, !tbaa !69
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %12) #9
  store ptr %16, ptr %9, align 8, !tbaa !116
  store i16 0, ptr %16, align 2, !tbaa !117
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78RegxUtil21decomposeToSurrogatesEiPNS_13MemoryManagerE(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !118 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %31, label %4, !prof !119

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !117
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %31, label %7, !prof !120

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %13, %7 ], [ 0, %4 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !117
  %12 = icmp eq i16 %11, 0
  %13 = add i32 %8, 1
  br i1 %12, label %14, label %7, !prof !121, !llvm.loop !122

14:                                               ; preds = %7
  %15 = load i32, ptr %0, align 8, !tbaa !110
  %16 = add i32 %15, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !112
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %22, label %20, !prof !123

20:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %8) #9
  %21 = load i32, ptr %0, align 8, !tbaa !110
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi i32 [ %21, %20 ], [ %15, %14 ]
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !116
  %26 = zext i32 %23 to i64
  %27 = getelementptr inbounds i16, ptr %25, i64 %26
  %28 = shl nuw nsw i64 %9, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %27, ptr nonnull align 2 %1, i64 %28, i1 false)
  %29 = load i32, ptr %0, align 8, !tbaa !110
  %30 = add i32 %29, %8
  store i32 %30, ptr %0, align 8, !tbaa !110
  br label %31

31:                                               ; preds = %22, %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %0, i16 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !124 {
  %3 = load i32, ptr %0, align 8, !tbaa !110
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !112
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %7, label %9, !prof !125

7:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #9
  %8 = load i32, ptr %0, align 8, !tbaa !110
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi i32 [ %8, %7 ], [ %3, %2 ]
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !116
  %13 = add i32 %10, 1
  store i32 %13, ptr %0, align 8, !tbaa !110
  %14 = zext i32 %10 to i64
  %15 = getelementptr inbounds i16, ptr %12, i64 %14
  store i16 %1, ptr %15, align 2, !tbaa !117
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_712TokenFactory12createStringEPKt(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711StringToken9setStringEPKt(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !126 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::StringToken", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !127
  %5 = getelementptr inbounds %"class.xercesc_2_7::StringToken", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !129
  %7 = load ptr, ptr %4, align 8, !tbaa !69
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #9
  %10 = load ptr, ptr %3, align 8, !tbaa !127
  %11 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %10) #9
  store ptr %11, ptr %5, align 8, !tbaa !129
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 comdat align 2 !prof !130 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !116
  %4 = load i32, ptr %0, align 8, !tbaa !110
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  store i16 0, ptr %6, align 2, !tbaa !117
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !109 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !115
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !116
  %6 = load ptr, ptr %3, align 8, !tbaa !69
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #9
          to label %9 unwind label %10

9:                                                ; preds = %1
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #13
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710UnionToken8getChildEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 !prof !131 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::UnionToken", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !72
  %5 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %1) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_710UnionToken4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 !prof !132 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::UnionToken", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !133

5:                                                ; preds = %1
  %6 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_5TokenEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #9
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ]
  ret i32 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75Token6getMinEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 !prof !134 {
  ret i32 -1
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75Token6getMaxEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 !prof !134 {
  ret i32 -1
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75Token10getNoParenEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 !prof !134 {
  ret i32 0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75Token14getReferenceNoEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 !prof !134 {
  ret i32 0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_75Token9getStringEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 !prof !134 {
  ret ptr null
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75Token7getCharEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 !prof !134 {
  ret i32 -1
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75Token6setMinEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 !prof !134 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75Token6setMaxEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 !prof !134 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75Token8addRangeEii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %5 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !135
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str, i32 noundef 230, i32 noundef 294, ptr noundef %6) #9
          to label %7 unwind label %8

7:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #12
  unreachable

8:                                                ; preds = %3
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #11
  resume { ptr, i32 } %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75Token11mergeRangesEPKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %4 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !135
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull @.str, i32 noundef 235, i32 noundef 294, ptr noundef %5) #9
          to label %6 unwind label %7

6:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #12
  unreachable

7:                                                ; preds = %2
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #11
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75Token10sortRangesEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %3 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !135
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str, i32 noundef 240, i32 noundef 294, ptr noundef %4) #9
          to label %5 unwind label %6

5:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #12
  unreachable

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #11
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75Token13compactRangesEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %3 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !135
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str, i32 noundef 245, i32 noundef 294, ptr noundef %4) #9
          to label %5 unwind label %6

5:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #12
  unreachable

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #11
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75Token14subtractRangesEPNS_10RangeTokenE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %4 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !135
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull @.str, i32 noundef 250, i32 noundef 294, ptr noundef %5) #9
          to label %6 unwind label %7

6:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #12
  unreachable

7:                                                ; preds = %2
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #11
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75Token15intersectRangesEPNS_10RangeTokenE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %4 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !135
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull @.str, i32 noundef 255, i32 noundef 294, ptr noundef %5) #9
          to label %6 unwind label %7

6:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #12
  unreachable

7:                                                ; preds = %2
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #11
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 comdat align 2 !prof !136 {
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !137 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !138

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #9
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !69
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %8) #9
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %12, ptr nonnull align 2 %0, i64 %8, i1 false)
  br label %13

13:                                               ; preds = %4, %2
  %14 = phi ptr [ %12, %4 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #2 comdat align 2 !prof !139 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !140

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !117
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !141

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !117
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !142, !llvm.loop !143

11:                                               ; preds = %6
  %12 = ptrtoint ptr %8 to i64
  %13 = ptrtoint ptr %0 to i64
  %14 = sub i64 %12, %13
  %15 = lshr exact i64 %14, 1
  %16 = trunc i64 %15 to i32
  br label %17

17:                                               ; preds = %1, %3, %11
  %18 = phi i32 [ %16, %11 ], [ 0, %3 ], [ 0, %1 ]
  ret i32 %18
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !69
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #9
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !134 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !144
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #9
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #9
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #10
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 !prof !134 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !69
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !69
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #9
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !134 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !144
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #9
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #9
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #10
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 !prof !134 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 comdat align 2 !prof !95 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #9
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_5TokenEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !69
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !147
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !103
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !148
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !99
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !108
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = load ptr, ptr %3, align 8, !tbaa !69
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %12) #9
  store ptr %16, ptr %9, align 8, !tbaa !99
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %19, !prof !149

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %4, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %4 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !99
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  store ptr null, ptr %22, align 8, !tbaa !104
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %18, label %19, !prof !150, !llvm.loop !151
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_5TokenEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_5TokenEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !69
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !147, !range !152, !noundef !153
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5, !prof !154

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !103
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9, !prof !83

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !99
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !104
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !69
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(24) %16) #10
  %22 = load i32, ptr %6, align 4, !tbaa !103
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !prof !155, !llvm.loop !156

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !108
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !99
  %33 = load ptr, ptr %30, align 8, !tbaa !69
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #9
          to label %36 unwind label %37

36:                                               ; preds = %28
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #10
  ret void

37:                                               ; preds = %28
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_5TokenEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_5TokenEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !157 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !103
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7, !prof !158

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !108
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.1, i32 noundef 67, i32 noundef 116, ptr noundef %10) #9
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #12
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #11
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !147, !range !152, !noundef !153
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20, !prof !158

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %31

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !99
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !104
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr %25, align 8, !tbaa !69
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(24) %25) #10
  br label %31

31:                                               ; preds = %18, %20, %27
  %32 = phi i64 [ %19, %18 ], [ %23, %20 ], [ %23, %27 ]
  %33 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !99
  %35 = getelementptr inbounds ptr, ptr %34, i64 %32
  store ptr %1, ptr %35, align 8, !tbaa !104
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !134 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !103
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %9

8:                                                ; preds = %25, %1
  store i32 0, ptr %2, align 4, !tbaa !103
  ret void

9:                                                ; preds = %5, %25
  %10 = phi i32 [ %3, %5 ], [ %26, %25 ]
  %11 = phi i64 [ 0, %5 ], [ %29, %25 ]
  %12 = load i8, ptr %6, align 8, !tbaa !147, !range !152, !noundef !153
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %7, align 8, !tbaa !99
  br i1 %13, label %25, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds ptr, ptr %14, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !104
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !69
  %21 = getelementptr inbounds ptr, ptr %20, i64 1
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(24) %17) #10
  %23 = load ptr, ptr %7, align 8, !tbaa !99
  %24 = load i32, ptr %2, align 4, !tbaa !103
  br label %25

25:                                               ; preds = %15, %19, %9
  %26 = phi i32 [ %10, %15 ], [ %24, %19 ], [ %10, %9 ]
  %27 = phi ptr [ %14, %15 ], [ %23, %19 ], [ %14, %9 ]
  %28 = getelementptr inbounds ptr, ptr %27, i64 %11
  store ptr null, ptr %28, align 8, !tbaa !104
  %29 = add nuw nsw i64 %11, 1
  %30 = zext i32 %26 to i64
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %9, label %8, !llvm.loop !159
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !103
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !108
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 144, i32 noundef 116, ptr noundef %9) #9
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #12
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !147, !range !152, !noundef !153
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !99
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !104
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !69
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(24) %22) #10
  %28 = load i32, ptr %3, align 4, !tbaa !103
  br label %29

29:                                               ; preds = %17, %24, %13
  %30 = phi i32 [ %4, %17 ], [ %28, %24 ], [ %4, %13 ]
  %31 = add i32 %30, -1
  %32 = icmp eq i32 %31, %1
  br i1 %32, label %41, label %33

33:                                               ; preds = %29
  %34 = icmp ugt i32 %31, %1
  br i1 %34, label %37, label %35

35:                                               ; preds = %33
  %36 = zext i32 %31 to i64
  br label %46

37:                                               ; preds = %33
  %38 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %39 = zext i32 %1 to i64
  %40 = zext i32 %31 to i64
  br label %51

41:                                               ; preds = %29
  %42 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !99
  %44 = zext i32 %1 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  br label %59

46:                                               ; preds = %51, %35
  %47 = phi i64 [ %36, %35 ], [ %40, %51 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !99
  %50 = getelementptr inbounds ptr, ptr %49, i64 %47
  br label %59

51:                                               ; preds = %37, %51
  %52 = phi i64 [ %39, %37 ], [ %54, %51 ]
  %53 = load ptr, ptr %38, align 8, !tbaa !99
  %54 = add nuw nsw i64 %52, 1
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !104
  %57 = getelementptr inbounds ptr, ptr %53, i64 %52
  store ptr %56, ptr %57, align 8, !tbaa !104
  %58 = icmp eq i64 %54, %40
  br i1 %58, label %46, label %51, !llvm.loop !160

59:                                               ; preds = %46, %41
  %60 = phi ptr [ %50, %46 ], [ %45, %41 ]
  store ptr null, ptr %60, align 8, !tbaa !104
  store i32 %31, ptr %3, align 4, !tbaa !103
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !134 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !103
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !103
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !147, !range !152, !noundef !153
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !99
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !104
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !69
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(24) %15) #10
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !134 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !147, !range !152, !noundef !153
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !103
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !99
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !104
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !69
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(24) %16) #10
  %22 = load i32, ptr %6, align 4, !tbaa !103
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !161

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !108
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !99
  %33 = load ptr, ptr %30, align 8, !tbaa !69
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !95 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !98 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !103
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !148
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52, !prof !162

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !108
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !69
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #9
  %21 = load i32, ptr %3, align 4, !tbaa !103
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23, !prof !163

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %25 = zext i32 %21 to i64
  br label %37

26:                                               ; preds = %37, %9
  %27 = icmp ult i32 %21, %12
  br i1 %27, label %28, label %45, !prof !164

28:                                               ; preds = %26
  %29 = zext i32 %21 to i64
  %30 = shl nuw nsw i64 %29, 3
  %31 = getelementptr i8, ptr %20, i64 %30
  %32 = xor i32 %21, -1
  %33 = add i32 %12, %32
  %34 = zext i32 %33 to i64
  %35 = shl nuw nsw i64 %34, 3
  %36 = add nuw nsw i64 %35, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !104
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !99
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !104
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !104
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !prof !165, !llvm.loop !166

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !108
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !99
  %49 = load ptr, ptr %46, align 8, !tbaa !69
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #9
  store ptr %20, ptr %47, align 8, !tbaa !99
  store i32 %12, ptr %6, align 8, !tbaa !148
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize }
attributes #11 = { nounwind }
attributes #12 = { noreturn }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!67}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 545138344258}
!4 = !{!"MaxCount", i64 89343718472}
!5 = !{!"MaxInternalCount", i64 30012997636}
!6 = !{!"MaxFunctionCount", i64 89343718472}
!7 = !{!"NumCounts", i64 49244}
!8 = !{!"NumFunctions", i64 27305}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 89343718472, i32 1}
!14 = !{i32 100000, i64 89343718472, i32 1}
!15 = !{i32 200000, i64 33857387535, i32 2}
!16 = !{i32 300000, i64 30137156660, i32 4}
!17 = !{i32 400000, i64 28792558684, i32 6}
!18 = !{i32 500000, i64 16886835304, i32 8}
!19 = !{i32 600000, i64 16826917200, i32 11}
!20 = !{i32 700000, i64 13167999625, i32 15}
!21 = !{i32 800000, i64 2443628737, i32 28}
!22 = !{i32 900000, i64 555646850, i32 77}
!23 = !{i32 950000, i64 134227650, i32 195}
!24 = !{i32 990000, i64 30109074, i32 515}
!25 = !{i32 999000, i64 1000482, i32 1252}
!26 = !{i32 999900, i64 150186, i32 2316}
!27 = !{i32 999990, i64 20523, i32 3051}
!28 = !{i32 999999, i64 1160, i32 3778}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66}
!35 = !{ptr @_ZN11xercesc_2_710UnionTokenC2EtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_75TokenC2EtPNS_13MemoryManagerE, i64 18}
!36 = !{ptr @_ZN11xercesc_2_710UnionTokenD2Ev, ptr @_ZN11xercesc_2_75TokenD2Ev, i64 18}
!37 = !{ptr @_ZN11xercesc_2_710UnionToken8addChildEPNS_5TokenEPNS_12TokenFactoryE, ptr @_ZNK11xercesc_2_712TokenFactory16getMemoryManagerEv, i64 79}
!38 = !{ptr @_ZN11xercesc_2_710UnionToken8addChildEPNS_5TokenEPNS_12TokenFactoryE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 19}
!39 = !{ptr @_ZN11xercesc_2_710UnionToken8addChildEPNS_5TokenEPNS_12TokenFactoryE, ptr @_ZN11xercesc_2_711RefVectorOfINS_5TokenEEC2EjbPNS_13MemoryManagerE, i64 19}
!40 = !{ptr @_ZN11xercesc_2_710UnionToken8addChildEPNS_5TokenEPNS_12TokenFactoryE, ptr @_ZNK11xercesc_2_75Token12getTokenTypeEv, i64 311}
!41 = !{ptr @_ZN11xercesc_2_710UnionToken8addChildEPNS_5TokenEPNS_12TokenFactoryE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE10addElementEPS1_, i64 69}
!42 = !{ptr @_ZN11xercesc_2_710UnionToken8addChildEPNS_5TokenEPNS_12TokenFactoryE, ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_5TokenEE4sizeEv, i64 99}
!43 = !{ptr @_ZN11xercesc_2_710UnionToken8addChildEPNS_5TokenEPNS_12TokenFactoryE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE9elementAtEj, i64 83}
!44 = !{ptr @_ZN11xercesc_2_710UnionToken8addChildEPNS_5TokenEPNS_12TokenFactoryE, ptr @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE, i64 37}
!45 = !{ptr @_ZN11xercesc_2_710UnionToken8addChildEPNS_5TokenEPNS_12TokenFactoryE, ptr @_ZN11xercesc_2_78RegxUtil21decomposeToSurrogatesEiPNS_13MemoryManagerE, i64 2}
!46 = !{ptr @_ZN11xercesc_2_710UnionToken8addChildEPNS_5TokenEPNS_12TokenFactoryE, ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, i64 32}
!47 = !{ptr @_ZN11xercesc_2_710UnionToken8addChildEPNS_5TokenEPNS_12TokenFactoryE, ptr @_ZN11xercesc_2_79XMLBuffer6appendEt, i64 42}
!48 = !{ptr @_ZN11xercesc_2_710UnionToken8addChildEPNS_5TokenEPNS_12TokenFactoryE, ptr @_ZN11xercesc_2_712TokenFactory12createStringEPKt, i64 8}
!49 = !{ptr @_ZN11xercesc_2_710UnionToken8addChildEPNS_5TokenEPNS_12TokenFactoryE, ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv, i64 37}
!50 = !{ptr @_ZN11xercesc_2_710UnionToken8addChildEPNS_5TokenEPNS_12TokenFactoryE, ptr @_ZN11xercesc_2_711StringToken9setStringEPKt, i64 37}
!51 = !{ptr @_ZN11xercesc_2_710UnionToken8addChildEPNS_5TokenEPNS_12TokenFactoryE, ptr @_ZN11xercesc_2_79XMLBufferD2Ev, i64 37}
!52 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_5TokenEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEEC2EjbPNS_13MemoryManagerE, i64 29}
!53 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE10addElementEPS1_, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE19ensureExtraCapacityEj, i64 208}
!54 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!55 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!56 = !{ptr @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 496321}
!57 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 3}
!58 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 1}
!59 = !{ptr @_ZN11xercesc_2_711StringToken9setStringEPKt, ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, i64 41}
!60 = !{ptr @_ZNK11xercesc_2_710UnionToken8getChildEi, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE9elementAtEj, i64 134}
!61 = !{ptr @_ZNK11xercesc_2_710UnionToken4sizeEv, ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_5TokenEE4sizeEv, i64 36}
!62 = !{ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 400185}
!63 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 29}
!64 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_5TokenEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEED2Ev, i64 29}
!65 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE12setElementAtEPS1_j, ptr @__cxa_allocate_exception, i64 1}
!66 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5TokenEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!67 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!68 = !{!"function_entry_count", i64 18}
!69 = !{!70, !70, i64 0}
!70 = !{!"vtable pointer", !71, i64 0}
!71 = !{!"Simple C++ TBAA"}
!72 = !{!73, !77, i64 24}
!73 = !{!"_ZTSN11xercesc_2_710UnionTokenE", !74, i64 0, !77, i64 24}
!74 = !{!"_ZTSN11xercesc_2_75TokenE", !75, i64 8, !77, i64 16}
!75 = !{!"short", !76, i64 0}
!76 = !{!"omnipotent char", !71, i64 0}
!77 = !{!"any pointer", !76, i64 0}
!78 = !{!"function_entry_count", i64 119}
!79 = !{!"branch_weights", i32 1, i32 120}
!80 = !{!"branch_weights", i32 19, i32 102}
!81 = !{!"branch_weights", i32 8, i32 113}
!82 = !{!"branch_weights", i32 12, i32 102}
!83 = !{!"branch_weights", i32 1, i32 191}
!84 = !{!"branch_weights", i32 191, i32 177}
!85 = distinct !{!85, !86}
!86 = !{!"llvm.loop.mustprogress"}
!87 = !{!"branch_weights", i32 16, i32 87}
!88 = !{!"branch_weights", i32 9, i32 34}
!89 = !{!"branch_weights", i32 1, i32 9}
!90 = !{!"branch_weights", i32 42, i32 1}
!91 = !{!"branch_weights", i32 1, i32 42}
!92 = !{!"function_entry_count", i64 77}
!93 = !{!94, !77, i64 120}
!94 = !{!"_ZTSN11xercesc_2_712TokenFactoryE", !77, i64 0, !77, i64 8, !77, i64 16, !77, i64 24, !77, i64 32, !77, i64 40, !77, i64 48, !77, i64 56, !77, i64 64, !77, i64 72, !77, i64 80, !77, i64 88, !77, i64 96, !77, i64 104, !77, i64 112, !77, i64 120}
!95 = !{!"function_entry_count", i64 29}
!96 = !{!"function_entry_count", i64 1301478}
!97 = !{!74, !75, i64 8}
!98 = !{!"function_entry_count", i64 208}
!99 = !{!100, !77, i64 24}
!100 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_5TokenEEE", !101, i64 8, !102, i64 12, !102, i64 16, !77, i64 24, !77, i64 32}
!101 = !{!"bool", !76, i64 0}
!102 = !{!"int", !76, i64 0}
!103 = !{!100, !102, i64 12}
!104 = !{!77, !77, i64 0}
!105 = !{!"function_entry_count", i64 138}
!106 = !{!"function_entry_count", i64 220}
!107 = !{!"branch_weights", i32 221, i32 1}
!108 = !{!100, !77, i64 32}
!109 = !{!"function_entry_count", i64 496321}
!110 = !{!111, !102, i64 0}
!111 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !102, i64 0, !102, i64 4, !102, i64 8, !101, i64 12, !77, i64 16, !77, i64 24, !77, i64 32}
!112 = !{!111, !102, i64 4}
!113 = !{!111, !102, i64 8}
!114 = !{!111, !101, i64 12}
!115 = !{!111, !77, i64 16}
!116 = !{!111, !77, i64 32}
!117 = !{!75, !75, i64 0}
!118 = !{!"function_entry_count", i64 789922}
!119 = !{!"branch_weights", i32 1, i32 789923}
!120 = !{!"branch_weights", i32 285, i32 789639}
!121 = !{!"branch_weights", i32 789639, i32 41628304}
!122 = distinct !{!122, !86}
!123 = !{!"branch_weights", i32 789637, i32 3}
!124 = !{!"function_entry_count", i64 7992849}
!125 = !{!"branch_weights", i32 1, i32 7992850}
!126 = !{!"function_entry_count", i64 41}
!127 = !{!128, !77, i64 40}
!128 = !{!"_ZTSN11xercesc_2_711StringTokenE", !74, i64 0, !102, i64 24, !77, i64 32, !77, i64 40}
!129 = !{!128, !77, i64 32}
!130 = !{!"function_entry_count", i64 10769804}
!131 = !{!"function_entry_count", i64 134}
!132 = !{!"function_entry_count", i64 37}
!133 = !{!"branch_weights", i32 1, i32 38}
!134 = !{!"function_entry_count", i64 0}
!135 = !{!74, !77, i64 16}
!136 = !{!"function_entry_count", i64 5836268}
!137 = !{!"function_entry_count", i64 558789}
!138 = !{!"branch_weights", i32 158605, i32 400186}
!139 = !{!"function_entry_count", i64 2453164456}
!140 = !{!"branch_weights", i32 1, i32 -1841802839}
!141 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!142 = !{!"branch_weights", i32 408669070, i32 -279908794}
!143 = distinct !{!143, !86}
!144 = !{!145, !77, i64 40}
!145 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !146, i64 8, !77, i64 16, !102, i64 24, !77, i64 32, !77, i64 40}
!146 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !76, i64 0}
!147 = !{!100, !101, i64 8}
!148 = !{!100, !102, i64 16}
!149 = !{!"branch_weights", i32 1, i32 239}
!150 = !{!"branch_weights", i32 239, i32 2329}
!151 = distinct !{!151, !86}
!152 = !{i8 0, i8 2}
!153 = !{}
!154 = !{!"branch_weights", i32 19, i32 12}
!155 = !{!"branch_weights", i32 2081, i32 191}
!156 = distinct !{!156, !86}
!157 = !{!"function_entry_count", i64 8}
!158 = !{!"branch_weights", i32 9, i32 1}
!159 = distinct !{!159, !86}
!160 = distinct !{!160, !86}
!161 = distinct !{!161, !86}
!162 = !{!"branch_weights", i32 4, i32 206}
!163 = !{!"branch_weights", i32 1, i32 127}
!164 = !{!"branch_weights", i32 127, i32 1}
!165 = !{!"branch_weights", i32 127, i32 1185}
!166 = distinct !{!166, !86}
