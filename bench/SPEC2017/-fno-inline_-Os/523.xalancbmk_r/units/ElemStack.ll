; ModuleID = 'ElemStack.cpp'
source_filename = "ElemStack.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::ElemStack" = type { i32, i32, %"class.xercesc_2_7::XMLStringPool", ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::ValueVectorOf" = type { i8, i32, i32, ptr, ptr }
%"struct.xercesc_2_7::ElemStack::StackElem" = type { ptr, i32, i32, i32, ptr, ptr, i32, i32, i8, i8, i8, i32, ptr, i32, ptr, i32, i32 }
%"struct.xercesc_2_7::PrefMapElem" = type { i32, i32 }
%"class.xercesc_2_7::WFElemStack" = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %"class.xercesc_2_7::XMLStringPool", ptr }
%"struct.xercesc_2_7::WFElemStack::StackElem" = type { i32, i32, i32, i32, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_11PrefMapElemEEC2EjPNS_13MemoryManagerEb = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_11PrefMapElemEED2Ev = comdat any

$_ZN11xercesc_2_79ElemStack9StackElemC2Ev = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_713XMLStringPool9addOrFindEPKt = comdat any

$_ZNK11xercesc_2_713XMLStringPool5getIdEPKt = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_11PrefMapElemEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_11PrefMapElemEE10addElementERKS2_ = comdat any

$_ZN11xercesc_2_711WFElemStack9StackElemC2Ev = comdat any

$_ZN11xercesc_2_79XMLString9moveCharsEPtPKtj = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionD0Ev = comdat any

$_ZNK11xercesc_2_719EmptyStackException7getTypeEv = comdat any

$_ZNK11xercesc_2_719EmptyStackException9duplicateEv = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionD0Ev = comdat any

$_ZNK11xercesc_2_722NoSuchElementException7getTypeEv = comdat any

$_ZNK11xercesc_2_722NoSuchElementException9duplicateEv = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE14findBucketElemEPKvRj = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_11PrefMapElemEE19ensureExtraCapacityEj = comdat any

$_ZTSN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTIN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTSN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTIN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTVN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTVN11xercesc_2_722NoSuchElementExceptionE = comdat any

@.str = private unnamed_addr constant [14 x i8] c"ElemStack.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local constant [37 x i8] c"N11xercesc_2_719EmptyStackExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_719EmptyStackExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTSN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant [40 x i8] c"N11xercesc_2_722NoSuchElementExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_76XMLUni15fgZeroLenStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni11fgXMLStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni13fgXMLNSStringE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_719EmptyStackExceptionD0Ev, ptr @_ZNK11xercesc_2_719EmptyStackException7getTypeEv, ptr @_ZNK11xercesc_2_719EmptyStackException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni26fgEmptyStackException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev, ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv, ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_79ElemStackC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_79ElemStackC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_79ElemStackD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_79ElemStackD2Ev
@_ZN11xercesc_2_711WFElemStackC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_711WFElemStackC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_711WFElemStackD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_711WFElemStackD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79ElemStackC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #9
  store i32 0, ptr %0, align 8, !tbaa !73
  %3 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 4, !tbaa !81
  %4 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_713XMLStringPoolC1EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 109, ptr noundef %1) #9
  %5 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  store ptr null, ptr %5, align 8, !tbaa !82
  %6 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 4
  store i32 32, ptr %6, align 8, !tbaa !83
  %7 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %8 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 11
  store ptr null, ptr %8, align 8, !tbaa !84
  %9 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  store ptr %1, ptr %9, align 8, !tbaa !85
  %10 = load ptr, ptr %1, align 8, !tbaa !86
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  %13 = invoke noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 256) #9
          to label %14 unwind label %23

14:                                               ; preds = %2
  store ptr %13, ptr %5, align 8, !tbaa !82
  %15 = load i32, ptr %6, align 8, !tbaa !83
  %16 = zext i32 %15 to i64
  %17 = shl nuw nsw i64 %16, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %13, i8 0, i64 %17, i1 false)
  %18 = load ptr, ptr %9, align 8, !tbaa !85
  %19 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %18) #9
          to label %20 unwind label %23

20:                                               ; preds = %14
  %21 = load ptr, ptr %9, align 8, !tbaa !85
  invoke void @_ZN11xercesc_2_713ValueVectorOfIPNS_11PrefMapElemEEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(32) %19, i32 noundef 16, ptr noundef %21, i1 noundef zeroext false) #9
          to label %22 unwind label %25

22:                                               ; preds = %20
  store ptr %19, ptr %8, align 8, !tbaa !84
  ret void

23:                                               ; preds = %14, %2
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %27

25:                                               ; preds = %20
  %26 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %19, ptr noundef %18) #10
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi { ptr, i32 } [ %26, %25 ], [ %24, %23 ]
  tail call void @_ZN11xercesc_2_713XMLStringPoolD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %4) #10
  resume { ptr, i32 } %28
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !88 {
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713XMLStringPoolC1EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_11PrefMapElemEEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #0 comdat align 2 !prof !72 {
  %5 = zext i1 %3 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #9
  store i8 %5, ptr %0, align 8, !tbaa !89
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  store i32 0, ptr %6, align 4, !tbaa !92
  %7 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 2
  store i32 %1, ptr %7, align 8, !tbaa !93
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  store ptr null, ptr %8, align 8, !tbaa !94
  %9 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  store ptr %2, ptr %9, align 8, !tbaa !95
  %10 = zext i32 %1 to i64
  %11 = shl nuw nsw i64 %10, 3
  %12 = load ptr, ptr %2, align 8, !tbaa !86
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %11) #9
  store ptr %15, ptr %8, align 8, !tbaa !94
  %16 = load i32, ptr %7, align 8, !tbaa !93
  %17 = zext i32 %16 to i64
  %18 = shl nuw nsw i64 %17, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %15, i8 0, i64 %18, i1 false)
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_713XMLStringPoolD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79ElemStackD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !83
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %52, label %5, !prof !96

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 12
  br label %8

8:                                                ; preds = %5, %47
  %9 = phi i64 [ 0, %5 ], [ %48, %47 ]
  %10 = load ptr, ptr %6, align 8, !tbaa !82
  %11 = getelementptr inbounds ptr, ptr %10, i64 %9
  %12 = load ptr, ptr %11, align 8, !tbaa !97
  %13 = icmp eq ptr %12, null
  br i1 %13, label %52, label %14, !prof !98

14:                                               ; preds = %8
  %15 = load ptr, ptr %7, align 8, !tbaa !85
  %16 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %12, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !99
  %18 = load ptr, ptr %15, align 8, !tbaa !86
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef %17) #9
          to label %21 unwind label %67

21:                                               ; preds = %14
  %22 = load ptr, ptr %7, align 8, !tbaa !85
  %23 = load ptr, ptr %6, align 8, !tbaa !82
  %24 = getelementptr inbounds ptr, ptr %23, i64 %9
  %25 = load ptr, ptr %24, align 8, !tbaa !97
  %26 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %25, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !101
  %28 = load ptr, ptr %22, align 8, !tbaa !86
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef %27) #9
          to label %31 unwind label %67

31:                                               ; preds = %21
  %32 = load ptr, ptr %7, align 8, !tbaa !85
  %33 = load ptr, ptr %6, align 8, !tbaa !82
  %34 = getelementptr inbounds ptr, ptr %33, i64 %9
  %35 = load ptr, ptr %34, align 8, !tbaa !97
  %36 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %35, i64 0, i32 14
  %37 = load ptr, ptr %36, align 8, !tbaa !102
  %38 = load ptr, ptr %32, align 8, !tbaa !86
  %39 = getelementptr inbounds ptr, ptr %38, i64 3
  %40 = load ptr, ptr %39, align 8
  invoke void %40(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef %37) #9
          to label %41 unwind label %67

41:                                               ; preds = %31
  %42 = load ptr, ptr %6, align 8, !tbaa !82
  %43 = getelementptr inbounds ptr, ptr %42, i64 %9
  %44 = load ptr, ptr %43, align 8, !tbaa !97
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %44) #10
  br label %47

47:                                               ; preds = %41, %46
  %48 = add nuw nsw i64 %9, 1
  %49 = load i32, ptr %2, align 8, !tbaa !83
  %50 = zext i32 %49 to i64
  %51 = icmp ult i64 %48, %50
  br i1 %51, label %8, label %52, !prof !103, !llvm.loop !104

52:                                               ; preds = %47, %8, %1
  %53 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 12
  %54 = load ptr, ptr %53, align 8, !tbaa !85
  %55 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !82
  %57 = load ptr, ptr %54, align 8, !tbaa !86
  %58 = getelementptr inbounds ptr, ptr %57, i64 3
  %59 = load ptr, ptr %58, align 8
  invoke void %59(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef %56) #9
          to label %60 unwind label %69

60:                                               ; preds = %52
  %61 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 11
  %62 = load ptr, ptr %61, align 8, !tbaa !84
  %63 = icmp eq ptr %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPNS_11PrefMapElemEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %62) #10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %62) #10
  br label %65

65:                                               ; preds = %64, %60
  %66 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_713XMLStringPoolD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %66) #10
  ret void

67:                                               ; preds = %14, %21, %31
  %68 = landingpad { ptr, i32 }
          catch ptr null
  br label %71

69:                                               ; preds = %52
  %70 = landingpad { ptr, i32 }
          catch ptr null
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi { ptr, i32 } [ %68, %67 ], [ %70, %69 ]
  %73 = extractvalue { ptr, i32 } %72, 0
  tail call void @__clang_call_terminate(ptr %73) #11
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #12
  tail call void @_ZSt9terminatev() #11
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_11PrefMapElemEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !94
  %6 = load ptr, ptr %3, align 8, !tbaa !86
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
  tail call void @__clang_call_terminate(ptr %12) #11
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_79ElemStack8addLevelEv(ptr nocapture noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !106 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !107
  %4 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !83
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %7, label %9, !prof !108

7:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_79ElemStack11expandStackEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  %8 = load i32, ptr %2, align 4, !tbaa !107
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %8, %7 ], [ %3, %1 ]
  %11 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !82
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !97
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %37, !prof !109

17:                                               ; preds = %9
  %18 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 12
  %19 = load ptr, ptr %18, align 8, !tbaa !85
  %20 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 88, ptr noundef %19) #9
  tail call void @_ZN11xercesc_2_79ElemStack9StackElemC2Ev(ptr noundef nonnull align 8 dereferenceable(88) %20) #9
  %21 = load ptr, ptr %11, align 8, !tbaa !82
  %22 = load i32, ptr %2, align 4, !tbaa !107
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %21, i64 %23
  store ptr %20, ptr %24, align 8, !tbaa !97
  %25 = load ptr, ptr %11, align 8, !tbaa !82
  %26 = getelementptr inbounds ptr, ptr %25, i64 %23
  %27 = load ptr, ptr %26, align 8, !tbaa !97
  %28 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %27, i64 0, i32 2
  store i32 0, ptr %28, align 4, !tbaa !110
  %29 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %27, i64 0, i32 4
  store ptr null, ptr %29, align 8, !tbaa !99
  %30 = load ptr, ptr %26, align 8, !tbaa !97
  %31 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %30, i64 0, i32 6
  store i32 0, ptr %31, align 8, !tbaa !111
  %32 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %30, i64 0, i32 5
  store ptr null, ptr %32, align 8, !tbaa !101
  %33 = load ptr, ptr %26, align 8, !tbaa !97
  %34 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %33, i64 0, i32 14
  store ptr null, ptr %34, align 8, !tbaa !102
  %35 = load ptr, ptr %26, align 8, !tbaa !97
  %36 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %35, i64 0, i32 15
  store i32 0, ptr %36, align 8, !tbaa !112
  br label %37

37:                                               ; preds = %17, %9
  %38 = phi ptr [ %35, %17 ], [ %15, %9 ]
  %39 = phi i64 [ %23, %17 ], [ %13, %9 ]
  %40 = phi i32 [ %22, %17 ], [ %10, %9 ]
  %41 = phi ptr [ %25, %17 ], [ %12, %9 ]
  %42 = getelementptr inbounds ptr, ptr %41, i64 %39
  store ptr null, ptr %38, align 8, !tbaa !113
  %43 = load ptr, ptr %42, align 8, !tbaa !97
  %44 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %43, i64 0, i32 1
  store i32 -1, ptr %44, align 8, !tbaa !114
  %45 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %43, i64 0, i32 3
  store i32 0, ptr %45, align 8, !tbaa !115
  %46 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %43, i64 0, i32 7
  %47 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(7) %46, i8 0, i64 7, i1 false)
  %48 = load i32, ptr %47, align 8, !tbaa !116
  %49 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %43, i64 0, i32 13
  store i32 %48, ptr %49, align 8, !tbaa !117
  %50 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %43, i64 0, i32 11
  store i32 -2, ptr %50, align 4, !tbaa !118
  %51 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %43, i64 0, i32 12
  store ptr null, ptr %51, align 8, !tbaa !119
  %52 = add i32 %40, 1
  store i32 %52, ptr %2, align 4, !tbaa !107
  ret i32 %40
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79ElemStack11expandStackEv(ptr nocapture noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 align 2 !prof !120 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !83
  %4 = uitofp i32 %3 to double
  %5 = fmul double %4, 1.250000e+00
  %6 = fptoui double %5 to i32
  %7 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 12
  %8 = load ptr, ptr %7, align 8, !tbaa !85
  %9 = zext i32 %6 to i64
  %10 = shl nuw nsw i64 %9, 3
  %11 = load ptr, ptr %8, align 8, !tbaa !86
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef %10) #9
  %15 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !82
  %17 = load i32, ptr %2, align 8, !tbaa !83
  %18 = zext i32 %17 to i64
  %19 = shl nuw nsw i64 %18, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %14, ptr align 8 %16, i64 %19, i1 false)
  %20 = load i32, ptr %2, align 8, !tbaa !83
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %14, i64 %21
  %23 = sub i32 %6, %20
  %24 = zext i32 %23 to i64
  %25 = shl nuw nsw i64 %24, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %22, i8 0, i64 %25, i1 false)
  %26 = load ptr, ptr %7, align 8, !tbaa !85
  %27 = load ptr, ptr %15, align 8, !tbaa !82
  %28 = load ptr, ptr %26, align 8, !tbaa !86
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef %27) #9
  store ptr %14, ptr %15, align 8, !tbaa !82
  store i32 %6, ptr %2, align 8, !tbaa !83
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ElemStack9StackElemC2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_79ElemStack8addLevelEPNS_14XMLElementDeclEj(ptr nocapture noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !121 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !107
  %6 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !83
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %9, label %11, !prof !122

9:                                                ; preds = %3
  tail call void @_ZN11xercesc_2_79ElemStack11expandStackEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  %10 = load i32, ptr %4, align 4, !tbaa !107
  br label %11

11:                                               ; preds = %9, %3
  %12 = phi i32 [ %10, %9 ], [ %5, %3 ]
  %13 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !82
  %15 = zext i32 %12 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !97
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %39, !prof !123

19:                                               ; preds = %11
  %20 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 12
  %21 = load ptr, ptr %20, align 8, !tbaa !85
  %22 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 88, ptr noundef %21) #9
  tail call void @_ZN11xercesc_2_79ElemStack9StackElemC2Ev(ptr noundef nonnull align 8 dereferenceable(88) %22) #9
  %23 = load ptr, ptr %13, align 8, !tbaa !82
  %24 = load i32, ptr %4, align 4, !tbaa !107
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds ptr, ptr %23, i64 %25
  store ptr %22, ptr %26, align 8, !tbaa !97
  %27 = load ptr, ptr %13, align 8, !tbaa !82
  %28 = getelementptr inbounds ptr, ptr %27, i64 %25
  %29 = load ptr, ptr %28, align 8, !tbaa !97
  %30 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %29, i64 0, i32 2
  store i32 0, ptr %30, align 4, !tbaa !110
  %31 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %29, i64 0, i32 4
  store ptr null, ptr %31, align 8, !tbaa !99
  %32 = load ptr, ptr %28, align 8, !tbaa !97
  %33 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %32, i64 0, i32 6
  store i32 0, ptr %33, align 8, !tbaa !111
  %34 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %32, i64 0, i32 5
  store ptr null, ptr %34, align 8, !tbaa !101
  %35 = load ptr, ptr %28, align 8, !tbaa !97
  %36 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %35, i64 0, i32 14
  store ptr null, ptr %36, align 8, !tbaa !102
  %37 = load ptr, ptr %28, align 8, !tbaa !97
  %38 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %37, i64 0, i32 15
  store i32 0, ptr %38, align 8, !tbaa !112
  br label %39

39:                                               ; preds = %19, %11
  %40 = phi ptr [ %37, %19 ], [ %17, %11 ]
  %41 = phi i64 [ %25, %19 ], [ %15, %11 ]
  %42 = phi i32 [ %24, %19 ], [ %12, %11 ]
  %43 = phi ptr [ %27, %19 ], [ %14, %11 ]
  %44 = getelementptr inbounds ptr, ptr %43, i64 %41
  store ptr %1, ptr %40, align 8, !tbaa !113
  %45 = load ptr, ptr %44, align 8, !tbaa !97
  %46 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %45, i64 0, i32 1
  store i32 %2, ptr %46, align 8, !tbaa !114
  %47 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %45, i64 0, i32 3
  store i32 0, ptr %47, align 8, !tbaa !115
  %48 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %45, i64 0, i32 7
  %49 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(7) %48, i8 0, i64 7, i1 false)
  %50 = load i32, ptr %49, align 8, !tbaa !116
  %51 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %45, i64 0, i32 13
  store i32 %50, ptr %51, align 8, !tbaa !117
  %52 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %45, i64 0, i32 11
  store i32 -2, ptr %52, align 4, !tbaa !118
  %53 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %45, i64 0, i32 12
  store ptr null, ptr %53, align 8, !tbaa !119
  %54 = add i32 %42, 1
  store i32 %54, ptr %4, align 4, !tbaa !107
  ret i32 %42
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79ElemStack6popTopEv(ptr nocapture noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !124 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !107
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %12, !prof !125

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %7 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 12
  %8 = load ptr, ptr %7, align 8, !tbaa !85
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str, i32 noundef 173, i32 noundef 28, ptr noundef %8) #9
          to label %9 unwind label %10

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #12
  resume { ptr, i32 } %11

12:                                               ; preds = %1
  %13 = add i32 %3, -1
  store i32 %13, ptr %2, align 4, !tbaa !107
  %14 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !82
  %16 = zext i32 %13 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !97
  ret ptr %18
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !120 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !86
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

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79ElemStack10setElementEPNS_14XMLElementDeclEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !106 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !107
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14, !prof !108

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %9 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !85
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 184, i32 noundef 26, ptr noundef %10) #9
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #12
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !82
  %17 = add i32 %5, -1
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds ptr, ptr %16, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !97
  store ptr %1, ptr %20, align 8, !tbaa !113
  %21 = load ptr, ptr %19, align 8, !tbaa !97
  %22 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %21, i64 0, i32 1
  store i32 %2, ptr %22, align 8, !tbaa !114
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_79ElemStack8addChildEPNS_5QNameEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !126 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !107
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14, !prof !127

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %9 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !85
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 197, i32 noundef 26, ptr noundef %10) #9
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %81

14:                                               ; preds = %3
  %15 = icmp eq i32 %5, 1
  %16 = and i1 %15, %2
  br i1 %16, label %17, label %24, !prof !128

17:                                               ; preds = %14
  %18 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %19 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 12
  %20 = load ptr, ptr %19, align 8, !tbaa !85
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef nonnull @.str, i32 noundef 204, i32 noundef 29, ptr noundef %20) #9
          to label %21 unwind label %22

21:                                               ; preds = %17
  tail call void @__cxa_throw(ptr nonnull %18, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

22:                                               ; preds = %17
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %81

24:                                               ; preds = %14
  %25 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !82
  %27 = select i1 %2, i32 -2, i32 -1, !prof !129
  %28 = add i32 %5, %27
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds ptr, ptr %26, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !97
  %32 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %31, i64 0, i32 3
  %33 = load i32, ptr %32, align 8, !tbaa !115
  %34 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %31, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !110
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %40, label %37, !prof !130

37:                                               ; preds = %24
  %38 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %31, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !99
  br label %75

40:                                               ; preds = %24
  %41 = icmp eq i32 %33, 0
  %42 = uitofp i32 %33 to double
  %43 = fmul double %42, 1.250000e+00
  %44 = fptoui double %43 to i32
  %45 = select i1 %41, i32 32, i32 %44, !prof !131
  %46 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 12
  %47 = load ptr, ptr %46, align 8, !tbaa !85
  %48 = zext i32 %45 to i64
  %49 = shl nuw nsw i64 %48, 3
  %50 = load ptr, ptr %47, align 8, !tbaa !86
  %51 = getelementptr inbounds ptr, ptr %50, i64 2
  %52 = load ptr, ptr %51, align 8
  %53 = tail call noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(8) %47, i64 noundef %49) #9
  %54 = load i32, ptr %32, align 8, !tbaa !115
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %67, label %56, !prof !131

56:                                               ; preds = %40
  %57 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %31, i64 0, i32 4
  %58 = zext i32 %54 to i64
  br label %59

59:                                               ; preds = %56, %59
  %60 = phi i64 [ 0, %56 ], [ %65, %59 ]
  %61 = load ptr, ptr %57, align 8, !tbaa !99
  %62 = getelementptr inbounds ptr, ptr %61, i64 %60
  %63 = load ptr, ptr %62, align 8, !tbaa !97
  %64 = getelementptr inbounds ptr, ptr %53, i64 %60
  store ptr %63, ptr %64, align 8, !tbaa !97
  %65 = add nuw nsw i64 %60, 1
  %66 = icmp eq i64 %65, %58
  br i1 %66, label %67, label %59, !prof !132, !llvm.loop !133

67:                                               ; preds = %59, %40
  %68 = load ptr, ptr %46, align 8, !tbaa !85
  %69 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %31, i64 0, i32 4
  %70 = load ptr, ptr %69, align 8, !tbaa !99
  %71 = load ptr, ptr %68, align 8, !tbaa !86
  %72 = getelementptr inbounds ptr, ptr %71, i64 3
  %73 = load ptr, ptr %72, align 8
  tail call void %73(ptr noundef nonnull align 8 dereferenceable(8) %68, ptr noundef %70) #9
  store ptr %53, ptr %69, align 8, !tbaa !99
  store i32 %45, ptr %34, align 4, !tbaa !110
  %74 = load i32, ptr %32, align 8, !tbaa !115
  br label %75

75:                                               ; preds = %37, %67
  %76 = phi i32 [ %33, %37 ], [ %74, %67 ]
  %77 = phi ptr [ %39, %37 ], [ %53, %67 ]
  %78 = add i32 %76, 1
  store i32 %78, ptr %32, align 8, !tbaa !115
  %79 = zext i32 %76 to i64
  %80 = getelementptr inbounds ptr, ptr %77, i64 %79
  store ptr %1, ptr %80, align 8, !tbaa !97
  ret i32 %76

81:                                               ; preds = %22, %12
  %82 = phi ptr [ %18, %22 ], [ %8, %12 ]
  %83 = phi { ptr, i32 } [ %23, %22 ], [ %13, %12 ]
  tail call void @__cxa_free_exception(ptr %82) #12
  resume { ptr, i32 } %83
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !120 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !86
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
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_79ElemStack10topElementEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !107
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %12, !prof !135

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %7 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 12
  %8 = load ptr, ptr %7, align 8, !tbaa !85
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str, i32 noundef 254, i32 noundef 26, ptr noundef %8) #9
          to label %9 unwind label %10

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #12
  resume { ptr, i32 } %11

12:                                               ; preds = %1
  %13 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !82
  %15 = add i32 %3, -1
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds ptr, ptr %14, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !97
  ret ptr %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79ElemStack9addPrefixEPKtj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !136 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !107
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14, !prof !137

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %9 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !85
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 267, i32 noundef 26, ptr noundef %10) #9
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #12
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !82
  %17 = add i32 %5, -1
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds ptr, ptr %16, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !97
  %21 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 2
  %22 = tail call noundef i32 @_ZN11xercesc_2_713XMLStringPool9addOrFindEPKt(ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef %1) #9
  %23 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %20, i64 0, i32 7
  %24 = load i32, ptr %23, align 4, !tbaa !138
  %25 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %20, i64 0, i32 6
  %26 = load i32, ptr %25, align 8, !tbaa !111
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %30, !prof !139

28:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_79ElemStack9expandMapEPNS0_9StackElemE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %20) #9
  %29 = load i32, ptr %23, align 4, !tbaa !138
  br label %30

30:                                               ; preds = %28, %14
  %31 = phi i32 [ %29, %28 ], [ %24, %14 ]
  %32 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %20, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !101
  %34 = zext i32 %31 to i64
  %35 = getelementptr inbounds %"struct.xercesc_2_7::PrefMapElem", ptr %33, i64 %34
  store i32 %22, ptr %35, align 4, !tbaa !140
  %36 = getelementptr inbounds %"struct.xercesc_2_7::PrefMapElem", ptr %33, i64 %34, i32 1
  store i32 %2, ptr %36, align 4, !tbaa !142
  %37 = add i32 %31, 1
  store i32 %37, ptr %23, align 4, !tbaa !138
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_713XMLStringPool9addOrFindEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !143 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !144
  %5 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !145

7:                                                ; preds = %2
  %8 = load i32, ptr %5, align 8, !tbaa !146
  br label %11

9:                                                ; preds = %2
  %10 = tail call noundef i32 @_ZN11xercesc_2_713XMLStringPool11addNewEntryEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) #9
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ]
  ret i32 %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79ElemStack9expandMapEPNS0_9StackElemE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0, ptr nocapture noundef %1) local_unnamed_addr #0 align 2 !prof !148 {
  %3 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %1, i64 0, i32 6
  %4 = load i32, ptr %3, align 8, !tbaa !111
  %5 = icmp eq i32 %4, 0
  %6 = uitofp i32 %4 to double
  %7 = fmul double %6, 1.250000e+00
  %8 = fptoui double %7 to i32
  %9 = select i1 %5, i32 16, i32 %8, !prof !149
  %10 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !85
  %12 = zext i32 %9 to i64
  %13 = shl nuw nsw i64 %12, 3
  %14 = load ptr, ptr %11, align 8, !tbaa !86
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %13) #9
  %18 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %1, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !101
  %20 = zext i32 %4 to i64
  %21 = shl nuw nsw i64 %20, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %17, ptr align 4 %19, i64 %21, i1 false)
  %22 = load ptr, ptr %10, align 8, !tbaa !85
  %23 = load ptr, ptr %18, align 8, !tbaa !101
  %24 = load ptr, ptr %22, align 8, !tbaa !86
  %25 = getelementptr inbounds ptr, ptr %24, i64 3
  %26 = load ptr, ptr %25, align 8
  tail call void %26(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef %23) #9
  store ptr %17, ptr %18, align 8, !tbaa !101
  store i32 %9, ptr %3, align 8, !tbaa !111
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_79ElemStack14mapPrefixToURIEPKtNS0_8MapModesERb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %3) local_unnamed_addr #0 align 2 !prof !150 {
  store i8 0, ptr %3, align 1, !tbaa !151
  %5 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 2
  %6 = tail call noundef i32 @_ZNK11xercesc_2_713XMLStringPool5getIdEPKt(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %1) #9
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10, !prof !152

8:                                                ; preds = %4
  store i8 1, ptr %3, align 1, !tbaa !151
  %9 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 6
  br label %63

10:                                               ; preds = %4
  %11 = load i16, ptr %1, align 2, !tbaa !153
  %12 = icmp eq i16 %11, 0
  %13 = icmp eq i32 %2, 0
  %14 = and i1 %13, %12
  br i1 %14, label %63, label %15, !prof !155

15:                                               ; preds = %10
  %16 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 8
  %17 = load i32, ptr %16, align 8, !tbaa !156
  %18 = icmp eq i32 %6, %17
  br i1 %18, label %19, label %21, !prof !157

19:                                               ; preds = %15
  %20 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 7
  br label %63

21:                                               ; preds = %15
  %22 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 10
  %23 = load i32, ptr %22, align 8, !tbaa !158
  %24 = icmp eq i32 %6, %23
  br i1 %24, label %25, label %27, !prof !157

25:                                               ; preds = %21
  %26 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 9
  br label %63

27:                                               ; preds = %21
  %28 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %29 = load i32, ptr %28, align 4, !tbaa !107
  %30 = add i32 %29, -1
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %60, label %32, !prof !96

32:                                               ; preds = %27
  %33 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !82
  %35 = zext nneg i32 %30 to i64
  br label %36

36:                                               ; preds = %32, %55
  %37 = phi i64 [ %35, %32 ], [ %56, %55 ]
  %38 = getelementptr inbounds ptr, ptr %34, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !97
  %40 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %39, i64 0, i32 7
  %41 = load i32, ptr %40, align 4, !tbaa !138
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %55, label %43, !prof !159

43:                                               ; preds = %36
  %44 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %39, i64 0, i32 5
  %45 = load ptr, ptr %44, align 8, !tbaa !101
  br label %50

46:                                               ; preds = %50
  %47 = zext i32 %41 to i64
  %48 = add nuw nsw i64 %51, 1
  %49 = icmp eq i64 %48, %47
  br i1 %49, label %55, label %50, !prof !160, !llvm.loop !161

50:                                               ; preds = %43, %46
  %51 = phi i64 [ 0, %43 ], [ %48, %46 ]
  %52 = getelementptr inbounds %"struct.xercesc_2_7::PrefMapElem", ptr %45, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !140
  %54 = icmp eq i32 %53, %6
  br i1 %54, label %58, label %46, !prof !162

55:                                               ; preds = %46, %36
  %56 = add nsw i64 %37, -1
  %57 = icmp slt i64 %37, 1
  br i1 %57, label %60, label %36, !prof !163, !llvm.loop !164

58:                                               ; preds = %50
  %59 = getelementptr inbounds %"struct.xercesc_2_7::PrefMapElem", ptr %45, i64 %51, i32 1
  br label %63

60:                                               ; preds = %55, %27
  br i1 %12, label %63, label %61

61:                                               ; preds = %60
  store i8 1, ptr %3, align 1, !tbaa !151
  %62 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 6
  br label %63

63:                                               ; preds = %58, %60, %10, %61, %25, %19, %8
  %64 = phi ptr [ %20, %19 ], [ %26, %25 ], [ %9, %8 ], [ %62, %61 ], [ %59, %58 ], [ %0, %10 ], [ %0, %60 ]
  %65 = load i32, ptr %64, align 4, !tbaa !165
  ret i32 %65
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713XMLStringPool5getIdEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !166 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !144
  %5 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !167

7:                                                ; preds = %2
  %8 = load i32, ptr %5, align 8, !tbaa !146
  br label %9

9:                                                ; preds = %2, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %2 ]
  ret i32 %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_79ElemStack15getNamespaceMapEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0) local_unnamed_addr #0 align 2 !prof !120 {
  %2 = alloca ptr, align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !84
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPNS_11PrefMapElemEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #9
  %5 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !107
  %7 = add i32 %6, -1
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %11 = zext nneg i32 %7 to i64
  br label %14

12:                                               ; preds = %33, %1
  %13 = load ptr, ptr %3, align 8, !tbaa !84
  ret ptr %13

14:                                               ; preds = %9, %33
  %15 = phi i64 [ %11, %9 ], [ %34, %33 ]
  %16 = load ptr, ptr %10, align 8, !tbaa !82
  %17 = getelementptr inbounds ptr, ptr %16, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !97
  %19 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %18, i64 0, i32 7
  %20 = load i32, ptr %19, align 4, !tbaa !138
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %14
  %23 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %18, i64 0, i32 5
  br label %24

24:                                               ; preds = %22, %24
  %25 = phi i64 [ 0, %22 ], [ %29, %24 ]
  %26 = load ptr, ptr %3, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  %27 = load ptr, ptr %23, align 8, !tbaa !101
  %28 = getelementptr inbounds %"struct.xercesc_2_7::PrefMapElem", ptr %27, i64 %25
  store ptr %28, ptr %2, align 8, !tbaa !97
  call void @_ZN11xercesc_2_713ValueVectorOfIPNS_11PrefMapElemEE10addElementERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  %29 = add nuw nsw i64 %25, 1
  %30 = load i32, ptr %19, align 4, !tbaa !138
  %31 = zext i32 %30 to i64
  %32 = icmp ult i64 %29, %31
  br i1 %32, label %24, label %33, !llvm.loop !168

33:                                               ; preds = %24, %14
  %34 = add nsw i64 %15, -1
  %35 = icmp sgt i64 %15, 0
  br i1 %35, label %14, label %12, !llvm.loop !169
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_11PrefMapElemEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !120 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  store i32 0, ptr %2, align 4, !tbaa !92
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_11PrefMapElemEE10addElementERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !120 {
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPNS_11PrefMapElemEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 1) #9
  %3 = load ptr, ptr %1, align 8, !tbaa !97
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !94
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !92
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %5, i64 %8
  store ptr %3, ptr %9, align 8, !tbaa !97
  %10 = add i32 %7, 1
  store i32 %10, ptr %6, align 4, !tbaa !92
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79ElemStack5resetEjjjj(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 !prof !72 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  store i32 0, ptr %6, align 4, !tbaa !107
  %7 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !156
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17, !prof !170

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 2
  %12 = tail call noundef i32 @_ZN11xercesc_2_713XMLStringPool9addOrFindEPKt(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE) #9
  %13 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 1
  store i32 %12, ptr %13, align 4, !tbaa !81
  %14 = tail call noundef i32 @_ZN11xercesc_2_713XMLStringPool9addOrFindEPKt(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni11fgXMLStringE) #9
  store i32 %14, ptr %7, align 8, !tbaa !156
  %15 = tail call noundef i32 @_ZN11xercesc_2_713XMLStringPool9addOrFindEPKt(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE) #9
  %16 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 10
  store i32 %15, ptr %16, align 8, !tbaa !158
  br label %17

17:                                               ; preds = %10, %5
  store i32 %1, ptr %0, align 8, !tbaa !73
  %18 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 6
  store i32 %2, ptr %18, align 8, !tbaa !116
  %19 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 7
  store i32 %3, ptr %19, align 4, !tbaa !171
  %20 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 9
  store i32 %4, ptr %20, align 4, !tbaa !172
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711WFElemStackC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !120 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #9
  store i32 0, ptr %0, align 8, !tbaa !173
  %3 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 4, !tbaa !175
  %4 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 2
  store i32 32, ptr %4, align 8, !tbaa !176
  %5 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 3
  %6 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %5, i8 0, i64 44, i1 false)
  tail call void @_ZN11xercesc_2_713XMLStringPoolC1EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef 109, ptr noundef %1) #9
  %7 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 13
  store ptr %1, ptr %7, align 8, !tbaa !177
  %8 = load i32, ptr %4, align 8, !tbaa !176
  %9 = zext i32 %8 to i64
  %10 = shl nuw nsw i64 %9, 3
  %11 = load ptr, ptr %1, align 8, !tbaa !86
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8
  %14 = invoke noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %10) #9
          to label %15 unwind label %20

15:                                               ; preds = %2
  %16 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 11
  store ptr %14, ptr %16, align 8, !tbaa !178
  %17 = load i32, ptr %4, align 8, !tbaa !176
  %18 = zext i32 %17 to i64
  %19 = shl nuw nsw i64 %18, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %14, i8 0, i64 %19, i1 false)
  ret void

20:                                               ; preds = %2
  %21 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_713XMLStringPoolD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %6) #10
  resume { ptr, i32 } %21
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_711WFElemStackD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !120 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !176
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %32, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 11
  %7 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 13
  br label %8

8:                                                ; preds = %5, %27
  %9 = phi i64 [ 0, %5 ], [ %28, %27 ]
  %10 = load ptr, ptr %6, align 8, !tbaa !178
  %11 = getelementptr inbounds ptr, ptr %10, i64 %9
  %12 = load ptr, ptr %11, align 8, !tbaa !97
  %13 = icmp eq ptr %12, null
  br i1 %13, label %32, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %7, align 8, !tbaa !177
  %16 = getelementptr inbounds %"struct.xercesc_2_7::WFElemStack::StackElem", ptr %12, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !179
  %18 = load ptr, ptr %15, align 8, !tbaa !86
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef %17) #9
          to label %21 unwind label %52

21:                                               ; preds = %14
  %22 = load ptr, ptr %6, align 8, !tbaa !178
  %23 = getelementptr inbounds ptr, ptr %22, i64 %9
  %24 = load ptr, ptr %23, align 8, !tbaa !97
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %24) #10
  br label %27

27:                                               ; preds = %21, %26
  %28 = add nuw nsw i64 %9, 1
  %29 = load i32, ptr %2, align 8, !tbaa !176
  %30 = zext i32 %29 to i64
  %31 = icmp ult i64 %28, %30
  br i1 %31, label %8, label %32, !llvm.loop !181

32:                                               ; preds = %27, %8, %1
  %33 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 10
  %34 = load ptr, ptr %33, align 8, !tbaa !182
  %35 = icmp eq ptr %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 13
  %38 = load ptr, ptr %37, align 8, !tbaa !177
  %39 = load ptr, ptr %38, align 8, !tbaa !86
  %40 = getelementptr inbounds ptr, ptr %39, i64 3
  %41 = load ptr, ptr %40, align 8
  invoke void %41(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef nonnull %34) #9
          to label %42 unwind label %54

42:                                               ; preds = %36, %32
  %43 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 13
  %44 = load ptr, ptr %43, align 8, !tbaa !177
  %45 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 11
  %46 = load ptr, ptr %45, align 8, !tbaa !178
  %47 = load ptr, ptr %44, align 8, !tbaa !86
  %48 = getelementptr inbounds ptr, ptr %47, i64 3
  %49 = load ptr, ptr %48, align 8
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(8) %44, ptr noundef %46) #9
          to label %50 unwind label %54

50:                                               ; preds = %42
  %51 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 12
  tail call void @_ZN11xercesc_2_713XMLStringPoolD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %51) #10
  ret void

52:                                               ; preds = %14
  %53 = landingpad { ptr, i32 }
          catch ptr null
  br label %56

54:                                               ; preds = %36, %42
  %55 = landingpad { ptr, i32 }
          catch ptr null
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi { ptr, i32 } [ %53, %52 ], [ %55, %54 ]
  %58 = extractvalue { ptr, i32 } %57, 0
  tail call void @__clang_call_terminate(ptr %58) #11
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_711WFElemStack8addLevelEv(ptr nocapture noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !120 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !183
  %4 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !176
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_711WFElemStack11expandStackEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  %8 = load i32, ptr %2, align 4, !tbaa !183
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %8, %7 ], [ %3, %1 ]
  %11 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !178
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !97
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %9
  %18 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 13
  %19 = load ptr, ptr %18, align 8, !tbaa !177
  %20 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %19) #9
  tail call void @_ZN11xercesc_2_711WFElemStack9StackElemC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %20) #9
  %21 = load ptr, ptr %11, align 8, !tbaa !178
  %22 = load i32, ptr %2, align 4, !tbaa !183
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %21, i64 %23
  store ptr %20, ptr %24, align 8, !tbaa !97
  %25 = load ptr, ptr %11, align 8, !tbaa !178
  %26 = getelementptr inbounds ptr, ptr %25, i64 %23
  %27 = load ptr, ptr %26, align 8, !tbaa !97
  %28 = getelementptr inbounds %"struct.xercesc_2_7::WFElemStack::StackElem", ptr %27, i64 0, i32 4
  store ptr null, ptr %28, align 8, !tbaa !179
  %29 = load ptr, ptr %26, align 8, !tbaa !97
  %30 = getelementptr inbounds %"struct.xercesc_2_7::WFElemStack::StackElem", ptr %29, i64 0, i32 3
  store i32 0, ptr %30, align 4, !tbaa !184
  br label %31

31:                                               ; preds = %17, %9
  %32 = phi ptr [ %29, %17 ], [ %15, %9 ]
  %33 = phi ptr [ %25, %17 ], [ %12, %9 ]
  %34 = phi i32 [ %22, %17 ], [ %10, %9 ]
  %35 = getelementptr inbounds %"struct.xercesc_2_7::WFElemStack::StackElem", ptr %32, i64 0, i32 2
  store i32 -1, ptr %35, align 8, !tbaa !185
  %36 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 4
  %37 = load i32, ptr %36, align 8, !tbaa !186
  %38 = getelementptr inbounds %"struct.xercesc_2_7::WFElemStack::StackElem", ptr %32, i64 0, i32 1
  store i32 %37, ptr %38, align 4, !tbaa !187
  store i32 -1, ptr %32, align 8, !tbaa !188
  %39 = icmp eq i32 %34, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %31
  %41 = add i32 %34, -1
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds ptr, ptr %33, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !97
  %45 = load i32, ptr %44, align 8, !tbaa !188
  store i32 %45, ptr %32, align 8, !tbaa !188
  br label %46

46:                                               ; preds = %40, %31
  %47 = add i32 %34, 1
  store i32 %47, ptr %2, align 4, !tbaa !183
  ret i32 %34
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711WFElemStack11expandStackEv(ptr nocapture noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 align 2 !prof !120 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !176
  %4 = uitofp i32 %3 to double
  %5 = fmul double %4, 1.250000e+00
  %6 = fptoui double %5 to i32
  %7 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 13
  %8 = load ptr, ptr %7, align 8, !tbaa !177
  %9 = zext i32 %6 to i64
  %10 = shl nuw nsw i64 %9, 3
  %11 = load ptr, ptr %8, align 8, !tbaa !86
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef %10) #9
  %15 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 11
  %16 = load ptr, ptr %15, align 8, !tbaa !178
  %17 = load i32, ptr %2, align 8, !tbaa !176
  %18 = zext i32 %17 to i64
  %19 = shl nuw nsw i64 %18, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %14, ptr align 8 %16, i64 %19, i1 false)
  %20 = load i32, ptr %2, align 8, !tbaa !176
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %14, i64 %21
  %23 = sub i32 %6, %20
  %24 = zext i32 %23 to i64
  %25 = shl nuw nsw i64 %24, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %22, i8 0, i64 %25, i1 false)
  %26 = load ptr, ptr %7, align 8, !tbaa !177
  %27 = load ptr, ptr %15, align 8, !tbaa !178
  %28 = load ptr, ptr %26, align 8, !tbaa !86
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef %27) #9
  store ptr %14, ptr %15, align 8, !tbaa !178
  store i32 %6, ptr %2, align 8, !tbaa !176
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711WFElemStack9StackElemC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_711WFElemStack8addLevelEPKtjj(ptr nocapture noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !120 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !183
  %7 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !176
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_711WFElemStack11expandStackEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  %11 = load i32, ptr %5, align 4, !tbaa !183
  br label %12

12:                                               ; preds = %10, %4
  %13 = phi i32 [ %11, %10 ], [ %6, %4 ]
  %14 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 11
  %15 = load ptr, ptr %14, align 8, !tbaa !178
  %16 = zext i32 %13 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !97
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %12
  %21 = getelementptr inbounds %"struct.xercesc_2_7::WFElemStack::StackElem", ptr %18, i64 0, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !184
  br label %37

23:                                               ; preds = %12
  %24 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 13
  %25 = load ptr, ptr %24, align 8, !tbaa !177
  %26 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %25) #9
  tail call void @_ZN11xercesc_2_711WFElemStack9StackElemC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %26) #9
  %27 = load ptr, ptr %14, align 8, !tbaa !178
  %28 = load i32, ptr %5, align 4, !tbaa !183
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds ptr, ptr %27, i64 %29
  store ptr %26, ptr %30, align 8, !tbaa !97
  %31 = load ptr, ptr %14, align 8, !tbaa !178
  %32 = getelementptr inbounds ptr, ptr %31, i64 %29
  %33 = load ptr, ptr %32, align 8, !tbaa !97
  %34 = getelementptr inbounds %"struct.xercesc_2_7::WFElemStack::StackElem", ptr %33, i64 0, i32 4
  store ptr null, ptr %34, align 8, !tbaa !179
  %35 = load ptr, ptr %32, align 8, !tbaa !97
  %36 = getelementptr inbounds %"struct.xercesc_2_7::WFElemStack::StackElem", ptr %35, i64 0, i32 3
  store i32 0, ptr %36, align 4, !tbaa !184
  br label %37

37:                                               ; preds = %20, %23
  %38 = phi i32 [ 0, %23 ], [ %22, %20 ]
  %39 = phi ptr [ %35, %23 ], [ %18, %20 ]
  %40 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 4
  %41 = load i32, ptr %40, align 8, !tbaa !186
  %42 = getelementptr inbounds %"struct.xercesc_2_7::WFElemStack::StackElem", ptr %39, i64 0, i32 1
  store i32 %41, ptr %42, align 4, !tbaa !187
  store i32 -1, ptr %39, align 8, !tbaa !188
  %43 = icmp ult i32 %38, %2
  br i1 %43, label %46, label %44

44:                                               ; preds = %37
  %45 = add i32 %2, 1
  br label %75

46:                                               ; preds = %37
  %47 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 13
  %48 = load ptr, ptr %47, align 8, !tbaa !177
  %49 = getelementptr inbounds %"struct.xercesc_2_7::WFElemStack::StackElem", ptr %39, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !179
  %51 = load ptr, ptr %48, align 8, !tbaa !86
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  tail call void %53(ptr noundef nonnull align 8 dereferenceable(8) %48, ptr noundef %50) #9
  %54 = load ptr, ptr %14, align 8, !tbaa !178
  %55 = load i32, ptr %5, align 4, !tbaa !183
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds ptr, ptr %54, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !97
  %59 = getelementptr inbounds %"struct.xercesc_2_7::WFElemStack::StackElem", ptr %58, i64 0, i32 3
  store i32 %2, ptr %59, align 4, !tbaa !184
  %60 = load ptr, ptr %47, align 8, !tbaa !177
  %61 = add i32 %2, 1
  %62 = zext i32 %61 to i64
  %63 = shl nuw nsw i64 %62, 1
  %64 = load ptr, ptr %60, align 8, !tbaa !86
  %65 = getelementptr inbounds ptr, ptr %64, i64 2
  %66 = load ptr, ptr %65, align 8
  %67 = tail call noundef ptr %66(ptr noundef nonnull align 8 dereferenceable(8) %60, i64 noundef %63) #9
  %68 = load ptr, ptr %14, align 8, !tbaa !178
  %69 = load i32, ptr %5, align 4, !tbaa !183
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds ptr, ptr %68, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !97
  %73 = getelementptr inbounds %"struct.xercesc_2_7::WFElemStack::StackElem", ptr %72, i64 0, i32 4
  store ptr %67, ptr %73, align 8, !tbaa !179
  %74 = load ptr, ptr %71, align 8, !tbaa !97
  br label %75

75:                                               ; preds = %44, %46
  %76 = phi i32 [ %45, %44 ], [ %61, %46 ]
  %77 = phi ptr [ %39, %44 ], [ %74, %46 ]
  %78 = getelementptr inbounds %"struct.xercesc_2_7::WFElemStack::StackElem", ptr %77, i64 0, i32 4
  %79 = load ptr, ptr %78, align 8, !tbaa !179
  tail call void @_ZN11xercesc_2_79XMLString9moveCharsEPtPKtj(ptr noundef %79, ptr noundef %1, i32 noundef %76) #9
  %80 = load ptr, ptr %14, align 8, !tbaa !178
  %81 = load i32, ptr %5, align 4, !tbaa !183
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds ptr, ptr %80, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !97
  %85 = getelementptr inbounds %"struct.xercesc_2_7::WFElemStack::StackElem", ptr %84, i64 0, i32 2
  store i32 %3, ptr %85, align 8, !tbaa !185
  %86 = icmp eq i32 %81, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %75
  %88 = add i32 %81, -1
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds ptr, ptr %80, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !97
  %92 = load i32, ptr %91, align 8, !tbaa !188
  store i32 %92, ptr %84, align 8, !tbaa !188
  br label %93

93:                                               ; preds = %87, %75
  %94 = add i32 %81, 1
  store i32 %94, ptr %5, align 4, !tbaa !183
  ret i32 %81
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLString9moveCharsEPtPKtj(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 !prof !189 {
  %4 = zext i32 %2 to i64
  %5 = shl nuw nsw i64 %4, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %0, ptr align 2 %1, i64 %5, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711WFElemStack6popTopEv(ptr nocapture noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !120 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !183
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %7 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 13
  %8 = load ptr, ptr %7, align 8, !tbaa !177
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str, i32 noundef 620, i32 noundef 28, ptr noundef %8) #9
          to label %9 unwind label %10

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #12
  resume { ptr, i32 } %11

12:                                               ; preds = %1
  %13 = add i32 %3, -1
  store i32 %13, ptr %2, align 4, !tbaa !183
  %14 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 11
  %15 = load ptr, ptr %14, align 8, !tbaa !178
  %16 = zext i32 %13 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !97
  ret ptr %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711WFElemStack10setElementEPKtjj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !120 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !183
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %10 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 13
  %11 = load ptr, ptr %10, align 8, !tbaa !177
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str, i32 noundef 633, i32 noundef 26, ptr noundef %11) #9
          to label %12 unwind label %13

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #12
  resume { ptr, i32 } %14

15:                                               ; preds = %4
  %16 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 11
  %17 = load ptr, ptr %16, align 8, !tbaa !178
  %18 = add i32 %6, -1
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds ptr, ptr %17, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !97
  %22 = getelementptr inbounds %"struct.xercesc_2_7::WFElemStack::StackElem", ptr %21, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !184
  %24 = icmp ult i32 %23, %2
  br i1 %24, label %27, label %25

25:                                               ; preds = %15
  %26 = add i32 %2, 1
  br label %58

27:                                               ; preds = %15
  %28 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 13
  %29 = load ptr, ptr %28, align 8, !tbaa !177
  %30 = getelementptr inbounds %"struct.xercesc_2_7::WFElemStack::StackElem", ptr %21, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !179
  %32 = load ptr, ptr %29, align 8, !tbaa !86
  %33 = getelementptr inbounds ptr, ptr %32, i64 3
  %34 = load ptr, ptr %33, align 8
  tail call void %34(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef %31) #9
  %35 = load ptr, ptr %16, align 8, !tbaa !178
  %36 = load i32, ptr %5, align 4, !tbaa !183
  %37 = add i32 %36, -1
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds ptr, ptr %35, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !97
  %41 = getelementptr inbounds %"struct.xercesc_2_7::WFElemStack::StackElem", ptr %40, i64 0, i32 3
  store i32 %2, ptr %41, align 4, !tbaa !184
  %42 = load ptr, ptr %28, align 8, !tbaa !177
  %43 = add i32 %2, 1
  %44 = zext i32 %43 to i64
  %45 = shl nuw nsw i64 %44, 1
  %46 = load ptr, ptr %42, align 8, !tbaa !86
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45) #9
  %50 = load ptr, ptr %16, align 8, !tbaa !178
  %51 = load i32, ptr %5, align 4, !tbaa !183
  %52 = add i32 %51, -1
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds ptr, ptr %50, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !97
  %56 = getelementptr inbounds %"struct.xercesc_2_7::WFElemStack::StackElem", ptr %55, i64 0, i32 4
  store ptr %49, ptr %56, align 8, !tbaa !179
  %57 = load ptr, ptr %54, align 8, !tbaa !97
  br label %58

58:                                               ; preds = %25, %27
  %59 = phi i32 [ %26, %25 ], [ %43, %27 ]
  %60 = phi ptr [ %21, %25 ], [ %57, %27 ]
  %61 = getelementptr inbounds %"struct.xercesc_2_7::WFElemStack::StackElem", ptr %60, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !179
  tail call void @_ZN11xercesc_2_79XMLString9moveCharsEPtPKtj(ptr noundef %62, ptr noundef %1, i32 noundef %59) #9
  %63 = load ptr, ptr %16, align 8, !tbaa !178
  %64 = load i32, ptr %5, align 4, !tbaa !183
  %65 = add i32 %64, -1
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds ptr, ptr %63, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !97
  %69 = getelementptr inbounds %"struct.xercesc_2_7::WFElemStack::StackElem", ptr %68, i64 0, i32 2
  store i32 %3, ptr %69, align 8, !tbaa !185
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711WFElemStack10topElementEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !120 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !183
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %7 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 13
  %8 = load ptr, ptr %7, align 8, !tbaa !177
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str, i32 noundef 656, i32 noundef 26, ptr noundef %8) #9
          to label %9 unwind label %10

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #12
  resume { ptr, i32 } %11

12:                                               ; preds = %1
  %13 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 11
  %14 = load ptr, ptr %13, align 8, !tbaa !178
  %15 = add i32 %3, -1
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds ptr, ptr %14, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !97
  ret ptr %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711WFElemStack9addPrefixEPKtj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !120 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !183
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %9 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 13
  %10 = load ptr, ptr %9, align 8, !tbaa !177
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 669, i32 noundef 26, ptr noundef %10) #9
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #12
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 11
  %16 = load ptr, ptr %15, align 8, !tbaa !178
  %17 = add i32 %5, -1
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds ptr, ptr %16, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !97
  %21 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 12
  %22 = tail call noundef i32 @_ZN11xercesc_2_713XMLStringPool9addOrFindEPKt(ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef %1) #9
  %23 = load i32, ptr %20, align 8, !tbaa !188
  %24 = add i32 %23, 1
  %25 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 9
  %26 = load i32, ptr %25, align 4, !tbaa !190
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_711WFElemStack9expandMapEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  %29 = load i32, ptr %20, align 8, !tbaa !188
  br label %30

30:                                               ; preds = %28, %14
  %31 = phi i32 [ %29, %28 ], [ %23, %14 ]
  %32 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 10
  %33 = load ptr, ptr %32, align 8, !tbaa !182
  %34 = sext i32 %31 to i64
  %35 = getelementptr %"struct.xercesc_2_7::PrefMapElem", ptr %33, i64 %34
  %36 = getelementptr %"struct.xercesc_2_7::PrefMapElem", ptr %35, i64 1
  store i32 %22, ptr %36, align 4, !tbaa !140
  %37 = getelementptr %"struct.xercesc_2_7::PrefMapElem", ptr %35, i64 1, i32 1
  store i32 %2, ptr %37, align 4, !tbaa !142
  %38 = add nsw i32 %31, 1
  store i32 %38, ptr %20, align 8, !tbaa !188
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711WFElemStack9expandMapEv(ptr nocapture noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 align 2 !prof !120 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 4, !tbaa !190
  %4 = icmp eq i32 %3, 0
  %5 = uitofp i32 %3 to double
  %6 = fmul double %5, 1.250000e+00
  %7 = fptoui double %6 to i32
  %8 = select i1 %4, i32 16, i32 %7
  %9 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 13
  %10 = load ptr, ptr %9, align 8, !tbaa !177
  %11 = zext i32 %8 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = load ptr, ptr %10, align 8, !tbaa !86
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef %12) #9
  %17 = load i32, ptr %2, align 4, !tbaa !190
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %1
  %20 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 10
  %21 = load ptr, ptr %20, align 8, !tbaa !182
  %22 = zext i32 %17 to i64
  %23 = shl nuw nsw i64 %22, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %16, ptr align 4 %21, i64 %23, i1 false)
  %24 = load ptr, ptr %9, align 8, !tbaa !177
  %25 = load ptr, ptr %20, align 8, !tbaa !182
  %26 = load ptr, ptr %24, align 8, !tbaa !86
  %27 = getelementptr inbounds ptr, ptr %26, i64 3
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %25) #9
  br label %29

29:                                               ; preds = %19, %1
  %30 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 10
  store ptr %16, ptr %30, align 8, !tbaa !182
  store i32 %8, ptr %2, align 4, !tbaa !190
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_711WFElemStack14mapPrefixToURIEPKtNS0_8MapModesERb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %3) local_unnamed_addr #0 align 2 !prof !120 {
  store i8 0, ptr %3, align 1, !tbaa !151
  %5 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 12
  %6 = tail call noundef i32 @_ZNK11xercesc_2_713XMLStringPool5getIdEPKt(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %1) #9
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  store i8 1, ptr %3, align 1, !tbaa !151
  %9 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 4
  br label %55

10:                                               ; preds = %4
  %11 = load i16, ptr %1, align 2, !tbaa !153
  %12 = icmp eq i16 %11, 0
  %13 = icmp eq i32 %2, 0
  %14 = and i1 %13, %12
  br i1 %14, label %55, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 6
  %17 = load i32, ptr %16, align 8, !tbaa !191
  %18 = icmp eq i32 %6, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 5
  br label %55

21:                                               ; preds = %15
  %22 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 8
  %23 = load i32, ptr %22, align 8, !tbaa !192
  %24 = icmp eq i32 %6, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 7
  br label %55

27:                                               ; preds = %21
  %28 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 11
  %29 = load ptr, ptr %28, align 8, !tbaa !178
  %30 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !183
  %32 = add i32 %31, -1
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds ptr, ptr %29, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !97
  %36 = load i32, ptr %35, align 8, !tbaa !188
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %52, label %38

38:                                               ; preds = %27
  %39 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 10
  %40 = load ptr, ptr %39, align 8, !tbaa !182
  br label %44

41:                                               ; preds = %44
  %42 = add nsw i32 %45, -1
  %43 = icmp slt i32 %45, 1
  br i1 %43, label %52, label %44, !llvm.loop !193

44:                                               ; preds = %38, %41
  %45 = phi i32 [ %36, %38 ], [ %42, %41 ]
  %46 = zext nneg i32 %45 to i64
  %47 = getelementptr inbounds %"struct.xercesc_2_7::PrefMapElem", ptr %40, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !140
  %49 = icmp eq i32 %48, %6
  br i1 %49, label %50, label %41

50:                                               ; preds = %44
  %51 = getelementptr inbounds %"struct.xercesc_2_7::PrefMapElem", ptr %40, i64 %46, i32 1
  br label %55

52:                                               ; preds = %41, %27
  br i1 %12, label %55, label %53

53:                                               ; preds = %52
  store i8 1, ptr %3, align 1, !tbaa !151
  %54 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 4
  br label %55

55:                                               ; preds = %52, %10, %50, %53, %25, %19, %8
  %56 = phi ptr [ %20, %19 ], [ %26, %25 ], [ %9, %8 ], [ %54, %53 ], [ %51, %50 ], [ %0, %10 ], [ %0, %52 ]
  %57 = load i32, ptr %56, align 4, !tbaa !165
  ret i32 %57
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711WFElemStack5resetEjjjj(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 !prof !120 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 3
  store i32 0, ptr %6, align 4, !tbaa !183
  %7 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !191
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 12
  %12 = tail call noundef i32 @_ZN11xercesc_2_713XMLStringPool9addOrFindEPKt(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE) #9
  %13 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 1
  store i32 %12, ptr %13, align 4, !tbaa !175
  %14 = tail call noundef i32 @_ZN11xercesc_2_713XMLStringPool9addOrFindEPKt(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni11fgXMLStringE) #9
  store i32 %14, ptr %7, align 8, !tbaa !191
  %15 = tail call noundef i32 @_ZN11xercesc_2_713XMLStringPool9addOrFindEPKt(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE) #9
  %16 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 8
  store i32 %15, ptr %16, align 8, !tbaa !192
  br label %17

17:                                               ; preds = %10, %5
  store i32 %1, ptr %0, align 8, !tbaa !173
  %18 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 4
  store i32 %2, ptr %18, align 8, !tbaa !186
  %19 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 5
  store i32 %3, ptr %19, align 4, !tbaa !194
  %20 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 7
  store i32 %4, ptr %20, align 4, !tbaa !195
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !120 {
  ret ptr @_ZN11xercesc_2_76XMLUni26fgEmptyStackException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !120 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !196
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #9
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #9
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
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 !prof !120 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !86
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !120 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !120 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !196
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #9
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #9
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
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 !prof !120 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !86
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !199 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  %4 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !200

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !201
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret ptr %9
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_713XMLStringPool11addNewEntryEPKt(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 !prof !203 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !204
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !206
  %8 = load ptr, ptr %0, align 8, !tbaa !207
  %9 = load ptr, ptr %5, align 8, !tbaa !86
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #9
  store i32 %11, ptr %2, align 4, !tbaa !165
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !208
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !97
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18, !prof !209

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !204
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !210
  %23 = load ptr, ptr %20, align 8, !tbaa !86
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #9
  br i1 %26, label %31, label %27, !prof !211

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !97
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !prof !212, !llvm.loop !213

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_11PrefMapElemEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !120 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !92
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !93
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %42

9:                                                ; preds = %2
  %10 = uitofp i32 %4 to double
  %11 = fmul double %10, 1.250000e+00
  %12 = fptoui double %11 to i32
  %13 = tail call i32 @llvm.umax.i32(i32 %5, i32 %12)
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !95
  %16 = zext i32 %13 to i64
  %17 = shl nuw nsw i64 %16, 3
  %18 = load ptr, ptr %15, align 8, !tbaa !86
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %17) #9
  %22 = load i32, ptr %3, align 4, !tbaa !92
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %9
  %25 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %26 = zext i32 %22 to i64
  br label %34

27:                                               ; preds = %34, %9
  %28 = load ptr, ptr %14, align 8, !tbaa !95
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !94
  %31 = load ptr, ptr %28, align 8, !tbaa !86
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30) #9
  store ptr %21, ptr %29, align 8, !tbaa !94
  store i32 %13, ptr %6, align 8, !tbaa !93
  br label %42

34:                                               ; preds = %24, %34
  %35 = phi i64 [ 0, %24 ], [ %40, %34 ]
  %36 = load ptr, ptr %25, align 8, !tbaa !94
  %37 = getelementptr inbounds ptr, ptr %36, i64 %35
  %38 = load ptr, ptr %37, align 8, !tbaa !97
  %39 = getelementptr inbounds ptr, ptr %21, i64 %35
  store ptr %38, ptr %39, align 8, !tbaa !97
  %40 = add nuw nsw i64 %35, 1
  %41 = icmp eq i64 %40, %26
  br i1 %41, label %27, label %34, !llvm.loop !214

42:                                               ; preds = %2, %27
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind }
attributes #13 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!71}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70}
!35 = !{ptr @_ZN11xercesc_2_79ElemStackC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 3}
!36 = !{ptr @_ZN11xercesc_2_79ElemStackC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713XMLStringPoolC1EjPNS_13MemoryManagerE, i64 3}
!37 = !{ptr @_ZN11xercesc_2_79ElemStackC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 3}
!38 = !{ptr @_ZN11xercesc_2_79ElemStackC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_11PrefMapElemEEC2EjPNS_13MemoryManagerEb, i64 3}
!39 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_11PrefMapElemEEC2EjPNS_13MemoryManagerEb, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 3}
!40 = !{ptr @_ZN11xercesc_2_79ElemStackD2Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 12}
!41 = !{ptr @_ZN11xercesc_2_79ElemStackD2Ev, ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_11PrefMapElemEED2Ev, i64 2}
!42 = !{ptr @_ZN11xercesc_2_79ElemStackD2Ev, ptr @_ZN11xercesc_2_713XMLStringPoolD1Ev, i64 3}
!43 = !{ptr @_ZN11xercesc_2_79ElemStack8addLevelEv, ptr @_ZN11xercesc_2_79ElemStack11expandStackEv, i64 1}
!44 = !{ptr @_ZN11xercesc_2_79ElemStack8addLevelEv, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 19}
!45 = !{ptr @_ZN11xercesc_2_79ElemStack8addLevelEv, ptr @_ZN11xercesc_2_79ElemStack9StackElemC2Ev, i64 19}
!46 = !{ptr @_ZN11xercesc_2_79ElemStack8addLevelEPNS_14XMLElementDeclEj, ptr @_ZN11xercesc_2_79ElemStack11expandStackEv, i64 1}
!47 = !{ptr @_ZN11xercesc_2_79ElemStack8addLevelEPNS_14XMLElementDeclEj, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 9}
!48 = !{ptr @_ZN11xercesc_2_79ElemStack8addLevelEPNS_14XMLElementDeclEj, ptr @_ZN11xercesc_2_79ElemStack9StackElemC2Ev, i64 9}
!49 = !{ptr @_ZN11xercesc_2_79ElemStack6popTopEv, ptr @__cxa_allocate_exception, i64 1}
!50 = !{ptr @_ZN11xercesc_2_79ElemStack6popTopEv, ptr @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!51 = !{ptr @_ZN11xercesc_2_79ElemStack10setElementEPNS_14XMLElementDeclEj, ptr @__cxa_allocate_exception, i64 1}
!52 = !{ptr @_ZN11xercesc_2_79ElemStack10setElementEPNS_14XMLElementDeclEj, ptr @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!53 = !{ptr @_ZN11xercesc_2_79ElemStack10setElementEPNS_14XMLElementDeclEj, ptr @__cxa_throw, i64 1}
!54 = !{ptr @_ZN11xercesc_2_79ElemStack10setElementEPNS_14XMLElementDeclEj, ptr @__cxa_free_exception, i64 1}
!55 = !{ptr @_ZN11xercesc_2_79ElemStack8addChildEPNS_5QNameEb, ptr @__cxa_allocate_exception, i64 2}
!56 = !{ptr @_ZN11xercesc_2_79ElemStack8addChildEPNS_5QNameEb, ptr @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!57 = !{ptr @_ZN11xercesc_2_79ElemStack8addChildEPNS_5QNameEb, ptr @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!58 = !{ptr @_ZN11xercesc_2_79ElemStack8addChildEPNS_5QNameEb, ptr @__cxa_free_exception, i64 1}
!59 = !{ptr @_ZNK11xercesc_2_79ElemStack10topElementEv, ptr @__cxa_allocate_exception, i64 1}
!60 = !{ptr @_ZNK11xercesc_2_79ElemStack10topElementEv, ptr @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!61 = !{ptr @_ZN11xercesc_2_79ElemStack9addPrefixEPKtj, ptr @__cxa_allocate_exception, i64 1}
!62 = !{ptr @_ZN11xercesc_2_79ElemStack9addPrefixEPKtj, ptr @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!63 = !{ptr @_ZN11xercesc_2_79ElemStack9addPrefixEPKtj, ptr @_ZN11xercesc_2_713XMLStringPool9addOrFindEPKt, i64 3}
!64 = !{ptr @_ZN11xercesc_2_79ElemStack9addPrefixEPKtj, ptr @_ZN11xercesc_2_79ElemStack9expandMapEPNS0_9StackElemE, i64 2}
!65 = !{ptr @_ZN11xercesc_2_713XMLStringPool9addOrFindEPKt, ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv, i64 1706}
!66 = !{ptr @_ZN11xercesc_2_713XMLStringPool9addOrFindEPKt, ptr @_ZN11xercesc_2_713XMLStringPool11addNewEntryEPKt, i64 291}
!67 = !{ptr @_ZNK11xercesc_2_79ElemStack14mapPrefixToURIEPKtNS0_8MapModesERb, ptr @_ZNK11xercesc_2_713XMLStringPool5getIdEPKt, i64 1216438}
!68 = !{ptr @_ZNK11xercesc_2_713XMLStringPool5getIdEPKt, ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv, i64 1796708}
!69 = !{ptr @_ZN11xercesc_2_79ElemStack5resetEjjjj, ptr @_ZN11xercesc_2_713XMLStringPool9addOrFindEPKt, i64 6}
!70 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE14findBucketElemEPKvRj, i64 1798414}
!71 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!72 = !{!"function_entry_count", i64 3}
!73 = !{!74, !75, i64 0}
!74 = !{!"_ZTSN11xercesc_2_79ElemStackE", !75, i64 0, !75, i64 4, !78, i64 8, !80, i64 48, !75, i64 56, !75, i64 60, !75, i64 64, !75, i64 68, !75, i64 72, !75, i64 76, !75, i64 80, !80, i64 88, !80, i64 96}
!75 = !{!"int", !76, i64 0}
!76 = !{!"omnipotent char", !77, i64 0}
!77 = !{!"Simple C++ TBAA"}
!78 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !79, i64 0, !80, i64 8, !80, i64 16, !80, i64 24, !75, i64 32, !75, i64 36}
!79 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!80 = !{!"any pointer", !76, i64 0}
!81 = !{!74, !75, i64 4}
!82 = !{!74, !80, i64 48}
!83 = !{!74, !75, i64 56}
!84 = !{!74, !80, i64 88}
!85 = !{!74, !80, i64 96}
!86 = !{!87, !87, i64 0}
!87 = !{!"vtable pointer", !77, i64 0}
!88 = !{!"function_entry_count", i64 5836268}
!89 = !{!90, !91, i64 0}
!90 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIPNS_11PrefMapElemEEE", !91, i64 0, !75, i64 4, !75, i64 8, !80, i64 16, !80, i64 24}
!91 = !{!"bool", !76, i64 0}
!92 = !{!90, !75, i64 4}
!93 = !{!90, !75, i64 8}
!94 = !{!90, !80, i64 16}
!95 = !{!90, !80, i64 24}
!96 = !{!"branch_weights", i32 1, i32 127}
!97 = !{!80, !80, i64 0}
!98 = !{!"branch_weights", i32 4, i32 27}
!99 = !{!100, !80, i64 24}
!100 = !{!"_ZTSN11xercesc_2_79ElemStack9StackElemE", !80, i64 0, !75, i64 8, !75, i64 12, !75, i64 16, !80, i64 24, !80, i64 32, !75, i64 40, !75, i64 44, !91, i64 48, !91, i64 49, !91, i64 50, !75, i64 52, !80, i64 56, !75, i64 64, !80, i64 72, !75, i64 80, !75, i64 84}
!101 = !{!100, !80, i64 32}
!102 = !{!100, !80, i64 72}
!103 = !{!"branch_weights", i32 3713, i32 127}
!104 = distinct !{!104, !105}
!105 = !{!"llvm.loop.mustprogress"}
!106 = !{!"function_entry_count", i64 833461}
!107 = !{!74, !75, i64 60}
!108 = !{!"branch_weights", i32 1, i32 833462}
!109 = !{!"branch_weights", i32 19, i32 833444}
!110 = !{!100, !75, i64 12}
!111 = !{!100, !75, i64 40}
!112 = !{!100, !75, i64 80}
!113 = !{!100, !80, i64 0}
!114 = !{!100, !75, i64 8}
!115 = !{!100, !75, i64 16}
!116 = !{!74, !75, i64 64}
!117 = !{!100, !75, i64 64}
!118 = !{!100, !75, i64 52}
!119 = !{!100, !80, i64 56}
!120 = !{!"function_entry_count", i64 0}
!121 = !{!"function_entry_count", i64 390}
!122 = !{!"branch_weights", i32 1, i32 391}
!123 = !{!"branch_weights", i32 9, i32 383}
!124 = !{!"function_entry_count", i64 833851}
!125 = !{!"branch_weights", i32 1, i32 833852}
!126 = !{!"function_entry_count", i64 833299}
!127 = !{!"branch_weights", i32 1, i32 833300}
!128 = !{!"branch_weights", i32 3255, i32 -1582507440}
!129 = !{!"branch_weights", i32 833300, i32 1}
!130 = !{!"branch_weights", i32 70, i32 833231}
!131 = !{!"branch_weights", i32 19, i32 52}
!132 = !{!"branch_weights", i32 52, i32 72099}
!133 = distinct !{!133, !105}
!134 = !{!"function_entry_count", i64 3620299}
!135 = !{!"branch_weights", i32 1, i32 3620300}
!136 = !{!"function_entry_count", i64 4}
!137 = !{!"branch_weights", i32 1, i32 5}
!138 = !{!100, !75, i64 44}
!139 = !{!"branch_weights", i32 3, i32 3}
!140 = !{!141, !75, i64 0}
!141 = !{!"_ZTSN11xercesc_2_711PrefMapElemE", !75, i64 0, !75, i64 4}
!142 = !{!141, !75, i64 4}
!143 = !{!"function_entry_count", i64 1706}
!144 = !{!78, !80, i64 24}
!145 = !{!"branch_weights", i32 291, i32 1417}
!146 = !{!147, !75, i64 0}
!147 = !{!"_ZTSN11xercesc_2_713XMLStringPool8PoolElemE", !75, i64 0, !80, i64 8}
!148 = !{!"function_entry_count", i64 2}
!149 = !{!"branch_weights", i32 3, i32 1}
!150 = !{!"function_entry_count", i64 1216438}
!151 = !{!91, !91, i64 0}
!152 = !{!"branch_weights", i32 1, i32 1216439}
!153 = !{!154, !154, i64 0}
!154 = !{!"short", !76, i64 0}
!155 = !{!"branch_weights", i32 1819789752, i32 -334585796}
!156 = !{!74, !75, i64 72}
!157 = !{!"branch_weights", i32 1, i32 833464}
!158 = !{!74, !75, i64 80}
!159 = !{!"branch_weights", i32 3789204, i32 833464}
!160 = !{!"branch_weights", i32 1, i32 833465}
!161 = distinct !{!161, !105}
!162 = !{!"branch_weights", i32 833464, i32 3}
!163 = !{!"branch_weights", i32 127, i32 591701249}
!164 = distinct !{!164, !105}
!165 = !{!75, !75, i64 0}
!166 = !{!"function_entry_count", i64 1796708}
!167 = !{!"branch_weights", i32 1, i32 1796709}
!168 = distinct !{!168, !105}
!169 = distinct !{!169, !105}
!170 = !{!"branch_weights", i32 4, i32 1}
!171 = !{!74, !75, i64 68}
!172 = !{!74, !75, i64 76}
!173 = !{!174, !75, i64 0}
!174 = !{!"_ZTSN11xercesc_2_711WFElemStackE", !75, i64 0, !75, i64 4, !75, i64 8, !75, i64 12, !75, i64 16, !75, i64 20, !75, i64 24, !75, i64 28, !75, i64 32, !75, i64 36, !80, i64 40, !80, i64 48, !78, i64 56, !80, i64 96}
!175 = !{!174, !75, i64 4}
!176 = !{!174, !75, i64 8}
!177 = !{!174, !80, i64 96}
!178 = !{!174, !80, i64 48}
!179 = !{!180, !80, i64 16}
!180 = !{!"_ZTSN11xercesc_2_711WFElemStack9StackElemE", !75, i64 0, !75, i64 4, !75, i64 8, !75, i64 12, !80, i64 16}
!181 = distinct !{!181, !105}
!182 = !{!174, !80, i64 40}
!183 = !{!174, !75, i64 12}
!184 = !{!180, !75, i64 12}
!185 = !{!180, !75, i64 8}
!186 = !{!174, !75, i64 16}
!187 = !{!180, !75, i64 4}
!188 = !{!180, !75, i64 0}
!189 = !{!"function_entry_count", i64 2499163}
!190 = !{!174, !75, i64 36}
!191 = !{!174, !75, i64 24}
!192 = !{!174, !75, i64 32}
!193 = distinct !{!193, !105}
!194 = !{!174, !75, i64 20}
!195 = !{!174, !75, i64 28}
!196 = !{!197, !80, i64 40}
!197 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !198, i64 8, !80, i64 16, !75, i64 24, !80, i64 32, !80, i64 40}
!198 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !76, i64 0}
!199 = !{!"function_entry_count", i64 1798414}
!200 = !{!"branch_weights", i32 291, i32 1798125}
!201 = !{!202, !80, i64 0}
!202 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_13XMLStringPool8PoolElemEEE", !80, i64 0, !80, i64 8, !80, i64 16}
!203 = !{!"function_entry_count", i64 1798704}
!204 = !{!205, !80, i64 40}
!205 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEEE", !80, i64 0, !91, i64 8, !80, i64 16, !75, i64 24, !75, i64 28, !75, i64 32, !80, i64 40}
!206 = !{!205, !75, i64 24}
!207 = !{!205, !80, i64 0}
!208 = !{!205, !80, i64 16}
!209 = !{!"branch_weights", i32 1, i32 580}
!210 = !{!202, !80, i64 16}
!211 = !{!"branch_weights", i32 1798125, i32 634}
!212 = !{!"branch_weights", i32 580, i32 1798178}
!213 = distinct !{!213, !105}
!214 = distinct !{!214, !105}
