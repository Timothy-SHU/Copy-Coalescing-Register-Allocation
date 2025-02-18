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
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::WFElemStack" = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %"class.xercesc_2_7::XMLStringPool", ptr }
%"struct.xercesc_2_7::WFElemStack::StackElem" = type { i32, i32, i32, i32, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionD0Ev = comdat any

$_ZNK11xercesc_2_719EmptyStackException7getTypeEv = comdat any

$_ZNK11xercesc_2_719EmptyStackException9duplicateEv = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionD0Ev = comdat any

$_ZNK11xercesc_2_722NoSuchElementException7getTypeEv = comdat any

$_ZNK11xercesc_2_722NoSuchElementException9duplicateEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv = comdat any

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

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79ElemStackC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  store i32 0, ptr %0, align 8, !tbaa !47
  %3 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 4, !tbaa !55
  %4 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_713XMLStringPoolC1EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 109, ptr noundef %1)
  %5 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  store ptr null, ptr %5, align 8, !tbaa !56
  %6 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 4
  store i32 32, ptr %6, align 8, !tbaa !57
  %7 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %8 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 11
  store ptr null, ptr %8, align 8, !tbaa !58
  %9 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  store ptr %1, ptr %9, align 8, !tbaa !59
  %10 = load ptr, ptr %1, align 8, !tbaa !60
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  %13 = invoke noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 256)
          to label %14 unwind label %34, !prof !62

14:                                               ; preds = %2
  store ptr %13, ptr %5, align 8, !tbaa !56
  %15 = load i32, ptr %6, align 8, !tbaa !57
  %16 = zext i32 %15 to i64
  %17 = shl nuw nsw i64 %16, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %13, i8 0, i64 %17, i1 false), !prof !63
  %18 = load ptr, ptr %9, align 8, !tbaa !59
  %19 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %18)
          to label %20 unwind label %34, !prof !64

20:                                               ; preds = %14
  %21 = load ptr, ptr %9, align 8, !tbaa !59
  store i8 0, ptr %19, align 8, !tbaa !65
  %22 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %19, i64 0, i32 1
  store i32 0, ptr %22, align 4, !tbaa !68
  %23 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %19, i64 0, i32 2
  store i32 16, ptr %23, align 8, !tbaa !69
  %24 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %19, i64 0, i32 3
  store ptr null, ptr %24, align 8, !tbaa !70
  %25 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %19, i64 0, i32 4
  store ptr %21, ptr %25, align 8, !tbaa !71
  %26 = load ptr, ptr %21, align 8, !tbaa !60
  %27 = getelementptr inbounds ptr, ptr %26, i64 2
  %28 = load ptr, ptr %27, align 8
  %29 = invoke noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef 128)
          to label %30 unwind label %36, !prof !62

30:                                               ; preds = %20
  store ptr %29, ptr %24, align 8, !tbaa !70
  %31 = load i32, ptr %23, align 8, !tbaa !69
  %32 = zext i32 %31 to i64
  %33 = shl nuw nsw i64 %32, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %29, i8 0, i64 %33, i1 false), !prof !72
  store ptr %19, ptr %8, align 8, !tbaa !58
  ret void

34:                                               ; preds = %14, %2
  %35 = landingpad { ptr, i32 }
          cleanup
  br label %38

36:                                               ; preds = %20
  %37 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %19, ptr noundef %18) #9
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi { ptr, i32 } [ %37, %36 ], [ %35, %34 ]
  tail call void @_ZN11xercesc_2_713XMLStringPoolD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %4) #9
  resume { ptr, i32 } %39
}

declare void @_ZN11xercesc_2_713XMLStringPoolC1EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_713XMLStringPoolD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_79ElemStackD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !57
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %52, label %5, !prof !73

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 12
  br label %8

8:                                                ; preds = %5, %48
  %9 = phi i32 [ 0, %5 ], [ %49, %48 ]
  %10 = load ptr, ptr %6, align 8, !tbaa !56
  %11 = zext i32 %9 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !74
  %14 = icmp eq ptr %13, null
  br i1 %14, label %52, label %15, !prof !75

15:                                               ; preds = %8
  %16 = load ptr, ptr %7, align 8, !tbaa !59
  %17 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %13, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !76
  %19 = load ptr, ptr %16, align 8, !tbaa !60
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %18)
          to label %22 unwind label %78, !prof !78

22:                                               ; preds = %15
  %23 = load ptr, ptr %7, align 8, !tbaa !59
  %24 = load ptr, ptr %6, align 8, !tbaa !56
  %25 = getelementptr inbounds ptr, ptr %24, i64 %11
  %26 = load ptr, ptr %25, align 8, !tbaa !74
  %27 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %26, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !79
  %29 = load ptr, ptr %23, align 8, !tbaa !60
  %30 = getelementptr inbounds ptr, ptr %29, i64 3
  %31 = load ptr, ptr %30, align 8
  invoke void %31(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %28)
          to label %32 unwind label %78, !prof !78

32:                                               ; preds = %22
  %33 = load ptr, ptr %7, align 8, !tbaa !59
  %34 = load ptr, ptr %6, align 8, !tbaa !56
  %35 = getelementptr inbounds ptr, ptr %34, i64 %11
  %36 = load ptr, ptr %35, align 8, !tbaa !74
  %37 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %36, i64 0, i32 14
  %38 = load ptr, ptr %37, align 8, !tbaa !80
  %39 = load ptr, ptr %33, align 8, !tbaa !60
  %40 = getelementptr inbounds ptr, ptr %39, i64 3
  %41 = load ptr, ptr %40, align 8
  invoke void %41(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef %38)
          to label %42 unwind label %78, !prof !78

42:                                               ; preds = %32
  %43 = load ptr, ptr %6, align 8, !tbaa !56
  %44 = getelementptr inbounds ptr, ptr %43, i64 %11
  %45 = load ptr, ptr %44, align 8, !tbaa !74
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47, !prof !81

47:                                               ; preds = %42
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %45) #9
  br label %48

48:                                               ; preds = %42, %47
  %49 = add nuw i32 %9, 1
  %50 = load i32, ptr %2, align 8, !tbaa !57
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %8, label %52, !prof !82, !llvm.loop !83

52:                                               ; preds = %48, %8, %1
  %53 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 12
  %54 = load ptr, ptr %53, align 8, !tbaa !59
  %55 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !56
  %57 = load ptr, ptr %54, align 8, !tbaa !60
  %58 = getelementptr inbounds ptr, ptr %57, i64 3
  %59 = load ptr, ptr %58, align 8
  invoke void %59(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef %56)
          to label %60 unwind label %80, !prof !86

60:                                               ; preds = %52
  %61 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 11
  %62 = load ptr, ptr %61, align 8, !tbaa !58
  %63 = icmp eq ptr %62, null
  br i1 %63, label %76, label %64, !prof !87

64:                                               ; preds = %60
  %65 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %62, i64 0, i32 4
  %66 = load ptr, ptr %65, align 8, !tbaa !71
  %67 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %62, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !70
  %69 = load ptr, ptr %66, align 8, !tbaa !60
  %70 = getelementptr inbounds ptr, ptr %69, i64 3
  %71 = load ptr, ptr %70, align 8
  invoke void %71(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %68)
          to label %75 unwind label %72, !prof !86

72:                                               ; preds = %64
  %73 = landingpad { ptr, i32 }
          catch ptr null
  %74 = extractvalue { ptr, i32 } %73, 0
  tail call void @__clang_call_terminate(ptr %74) #10
  unreachable

75:                                               ; preds = %64
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %62) #9
  br label %76

76:                                               ; preds = %75, %60
  %77 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_713XMLStringPoolD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %77) #9
  ret void

78:                                               ; preds = %15, %22, %32
  %79 = landingpad { ptr, i32 }
          catch ptr null
  br label %82

80:                                               ; preds = %52
  %81 = landingpad { ptr, i32 }
          catch ptr null
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi { ptr, i32 } [ %79, %78 ], [ %81, %80 ]
  %84 = extractvalue { ptr, i32 } %83, 0
  tail call void @__clang_call_terminate(ptr %84) #10
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat !prof !88 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #9
  tail call void @_ZSt9terminatev() #10
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_79ElemStack8addLevelEv(ptr nocapture noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !90
  %4 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !57
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %7, label %35, !prof !91

7:                                                ; preds = %1
  %8 = uitofp i32 %5 to double
  %9 = fmul double %8, 1.250000e+00
  %10 = fptoui double %9 to i32
  %11 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 12
  %12 = load ptr, ptr %11, align 8, !tbaa !59
  %13 = zext i32 %10 to i64
  %14 = shl nuw nsw i64 %13, 3
  %15 = load ptr, ptr %12, align 8, !tbaa !60
  %16 = getelementptr inbounds ptr, ptr %15, i64 2
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef %14)
  %19 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !56
  %21 = load i32, ptr %4, align 8, !tbaa !57
  %22 = zext i32 %21 to i64
  %23 = shl nuw nsw i64 %22, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %18, ptr align 8 %20, i64 %23, i1 false)
  %24 = load i32, ptr %4, align 8, !tbaa !57
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds ptr, ptr %18, i64 %25
  %27 = sub i32 %10, %24
  %28 = zext i32 %27 to i64
  %29 = shl nuw nsw i64 %28, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %26, i8 0, i64 %29, i1 false)
  %30 = load ptr, ptr %11, align 8, !tbaa !59
  %31 = load ptr, ptr %19, align 8, !tbaa !56
  %32 = load ptr, ptr %30, align 8, !tbaa !60
  %33 = getelementptr inbounds ptr, ptr %32, i64 3
  %34 = load ptr, ptr %33, align 8
  tail call void %34(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %31)
  store ptr %18, ptr %19, align 8, !tbaa !56
  store i32 %10, ptr %4, align 8, !tbaa !57
  br label %35

35:                                               ; preds = %7, %1
  %36 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !56
  %38 = load i32, ptr %2, align 4, !tbaa !90
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds ptr, ptr %37, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !74
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %63, !prof !92

43:                                               ; preds = %35
  %44 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 12
  %45 = load ptr, ptr %44, align 8, !tbaa !59
  %46 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 88, ptr noundef %45)
  %47 = load ptr, ptr %36, align 8, !tbaa !56
  %48 = load i32, ptr %2, align 4, !tbaa !90
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds ptr, ptr %47, i64 %49
  store ptr %46, ptr %50, align 8, !tbaa !74
  %51 = load ptr, ptr %36, align 8, !tbaa !56
  %52 = getelementptr inbounds ptr, ptr %51, i64 %49
  %53 = load ptr, ptr %52, align 8, !tbaa !74
  %54 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %53, i64 0, i32 2
  store i32 0, ptr %54, align 4, !tbaa !93
  %55 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %53, i64 0, i32 4
  store ptr null, ptr %55, align 8, !tbaa !76
  %56 = load ptr, ptr %52, align 8, !tbaa !74
  %57 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %56, i64 0, i32 6
  store i32 0, ptr %57, align 8, !tbaa !94
  %58 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %56, i64 0, i32 5
  store ptr null, ptr %58, align 8, !tbaa !79
  %59 = load ptr, ptr %52, align 8, !tbaa !74
  %60 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %59, i64 0, i32 14
  store ptr null, ptr %60, align 8, !tbaa !80
  %61 = load ptr, ptr %52, align 8, !tbaa !74
  %62 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %61, i64 0, i32 15
  store i32 0, ptr %62, align 8, !tbaa !95
  br label %63

63:                                               ; preds = %43, %35
  %64 = load ptr, ptr %36, align 8, !tbaa !56
  %65 = load i32, ptr %2, align 4, !tbaa !90
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds ptr, ptr %64, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !74
  store ptr null, ptr %68, align 8, !tbaa !96
  %69 = load ptr, ptr %67, align 8, !tbaa !74
  %70 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %69, i64 0, i32 1
  store i32 -1, ptr %70, align 8, !tbaa !97
  %71 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %69, i64 0, i32 3
  store i32 0, ptr %71, align 8, !tbaa !98
  %72 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %69, i64 0, i32 7
  %73 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(7) %72, i8 0, i64 7, i1 false)
  %74 = load i32, ptr %73, align 8, !tbaa !99
  %75 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %69, i64 0, i32 13
  store i32 %74, ptr %75, align 8, !tbaa !100
  %76 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %69, i64 0, i32 11
  store i32 -2, ptr %76, align 4, !tbaa !101
  %77 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %69, i64 0, i32 12
  store ptr null, ptr %77, align 8, !tbaa !102
  %78 = add i32 %65, 1
  store i32 %78, ptr %2, align 4, !tbaa !90
  ret i32 %65
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79ElemStack11expandStackEv(ptr nocapture noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 align 2 !prof !88 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !57
  %4 = uitofp i32 %3 to double
  %5 = fmul double %4, 1.250000e+00
  %6 = fptoui double %5 to i32
  %7 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 12
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = zext i32 %6 to i64
  %10 = shl nuw nsw i64 %9, 3
  %11 = load ptr, ptr %8, align 8, !tbaa !60
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef %10)
  %15 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !56
  %17 = load i32, ptr %2, align 8, !tbaa !57
  %18 = zext i32 %17 to i64
  %19 = shl nuw nsw i64 %18, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %14, ptr align 8 %16, i64 %19, i1 false)
  %20 = load i32, ptr %2, align 8, !tbaa !57
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %14, i64 %21
  %23 = sub i32 %6, %20
  %24 = zext i32 %23 to i64
  %25 = shl nuw nsw i64 %24, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %22, i8 0, i64 %25, i1 false)
  %26 = load ptr, ptr %7, align 8, !tbaa !59
  %27 = load ptr, ptr %15, align 8, !tbaa !56
  %28 = load ptr, ptr %26, align 8, !tbaa !60
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef %27)
  store ptr %14, ptr %15, align 8, !tbaa !56
  store i32 %6, ptr %2, align 8, !tbaa !57
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_79ElemStack8addLevelEPNS_14XMLElementDeclEj(ptr nocapture noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !103 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !90
  %6 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !57
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %9, label %37, !prof !104

9:                                                ; preds = %3
  %10 = uitofp i32 %7 to double
  %11 = fmul double %10, 1.250000e+00
  %12 = fptoui double %11 to i32
  %13 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 12
  %14 = load ptr, ptr %13, align 8, !tbaa !59
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !60
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !56
  %23 = load i32, ptr %6, align 8, !tbaa !57
  %24 = zext i32 %23 to i64
  %25 = shl nuw nsw i64 %24, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %20, ptr align 8 %22, i64 %25, i1 false)
  %26 = load i32, ptr %6, align 8, !tbaa !57
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds ptr, ptr %20, i64 %27
  %29 = sub i32 %12, %26
  %30 = zext i32 %29 to i64
  %31 = shl nuw nsw i64 %30, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %28, i8 0, i64 %31, i1 false)
  %32 = load ptr, ptr %13, align 8, !tbaa !59
  %33 = load ptr, ptr %21, align 8, !tbaa !56
  %34 = load ptr, ptr %32, align 8, !tbaa !60
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef %33)
  store ptr %20, ptr %21, align 8, !tbaa !56
  store i32 %12, ptr %6, align 8, !tbaa !57
  br label %37

37:                                               ; preds = %9, %3
  %38 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !56
  %40 = load i32, ptr %4, align 4, !tbaa !90
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds ptr, ptr %39, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !74
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %65, !prof !105

45:                                               ; preds = %37
  %46 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 12
  %47 = load ptr, ptr %46, align 8, !tbaa !59
  %48 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 88, ptr noundef %47)
  %49 = load ptr, ptr %38, align 8, !tbaa !56
  %50 = load i32, ptr %4, align 4, !tbaa !90
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds ptr, ptr %49, i64 %51
  store ptr %48, ptr %52, align 8, !tbaa !74
  %53 = load ptr, ptr %38, align 8, !tbaa !56
  %54 = getelementptr inbounds ptr, ptr %53, i64 %51
  %55 = load ptr, ptr %54, align 8, !tbaa !74
  %56 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %55, i64 0, i32 2
  store i32 0, ptr %56, align 4, !tbaa !93
  %57 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %55, i64 0, i32 4
  store ptr null, ptr %57, align 8, !tbaa !76
  %58 = load ptr, ptr %54, align 8, !tbaa !74
  %59 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %58, i64 0, i32 6
  store i32 0, ptr %59, align 8, !tbaa !94
  %60 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %58, i64 0, i32 5
  store ptr null, ptr %60, align 8, !tbaa !79
  %61 = load ptr, ptr %54, align 8, !tbaa !74
  %62 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %61, i64 0, i32 14
  store ptr null, ptr %62, align 8, !tbaa !80
  %63 = load ptr, ptr %54, align 8, !tbaa !74
  %64 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %63, i64 0, i32 15
  store i32 0, ptr %64, align 8, !tbaa !95
  br label %65

65:                                               ; preds = %45, %37
  %66 = load ptr, ptr %38, align 8, !tbaa !56
  %67 = load i32, ptr %4, align 4, !tbaa !90
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds ptr, ptr %66, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !74
  store ptr %1, ptr %70, align 8, !tbaa !96
  %71 = load ptr, ptr %69, align 8, !tbaa !74
  %72 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %71, i64 0, i32 1
  store i32 %2, ptr %72, align 8, !tbaa !97
  %73 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %71, i64 0, i32 3
  store i32 0, ptr %73, align 8, !tbaa !98
  %74 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %71, i64 0, i32 7
  %75 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(7) %74, i8 0, i64 7, i1 false)
  %76 = load i32, ptr %75, align 8, !tbaa !99
  %77 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %71, i64 0, i32 13
  store i32 %76, ptr %77, align 8, !tbaa !100
  %78 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %71, i64 0, i32 11
  store i32 -2, ptr %78, align 4, !tbaa !101
  %79 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %71, i64 0, i32 12
  store ptr null, ptr %79, align 8, !tbaa !102
  %80 = add i32 %67, 1
  store i32 %80, ptr %4, align 4, !tbaa !90
  ret i32 %67
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79ElemStack6popTopEv(ptr nocapture noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !106 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !90
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %12, !prof !107

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #9
  %7 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 12
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str, i32 noundef 173, i32 noundef 28, ptr noundef %8)
          to label %9 unwind label %10

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #11
  unreachable

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #9
  resume { ptr, i32 } %11

12:                                               ; preds = %1
  %13 = add i32 %3, -1
  store i32 %13, ptr %2, align 4, !tbaa !90
  %14 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !56
  %16 = zext i32 %13 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !74
  ret ptr %18
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #9
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79ElemStack10setElementEPNS_14XMLElementDeclEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !90
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14, !prof !91

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #9
  %9 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 184, i32 noundef 26, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #11
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #9
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !56
  %17 = add i32 %5, -1
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds ptr, ptr %16, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !74
  store ptr %1, ptr %20, align 8, !tbaa !96
  %21 = load ptr, ptr %19, align 8, !tbaa !74
  %22 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %21, i64 0, i32 1
  store i32 %2, ptr %22, align 8, !tbaa !97
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_79ElemStack8addChildEPNS_5QNameEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !90
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14, !prof !109

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #9
  %9 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 197, i32 noundef 26, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #11
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %78

14:                                               ; preds = %3
  %15 = icmp eq i32 %5, 1
  %16 = and i1 %15, %2
  br i1 %16, label %17, label %24, !prof !109

17:                                               ; preds = %14
  %18 = tail call ptr @__cxa_allocate_exception(i64 48) #9
  %19 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 12
  %20 = load ptr, ptr %19, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef nonnull @.str, i32 noundef 204, i32 noundef 29, ptr noundef %20)
          to label %21 unwind label %22

21:                                               ; preds = %17
  tail call void @__cxa_throw(ptr nonnull %18, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #11
  unreachable

22:                                               ; preds = %17
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %78

24:                                               ; preds = %14
  %25 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8
  %27 = select i1 %2, i32 -2, i32 -1, !prof !110
  %28 = add i32 %5, %27
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds ptr, ptr %26, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !74
  %32 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %31, i64 0, i32 3
  %33 = load i32, ptr %32, align 8, !tbaa !98
  %34 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %31, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !93
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %71, !prof !111

37:                                               ; preds = %24
  %38 = icmp eq i32 %35, 0
  %39 = uitofp i32 %35 to double
  %40 = fmul double %39, 1.250000e+00
  %41 = fptoui double %40 to i32
  %42 = select i1 %38, i32 32, i32 %41, !prof !112
  %43 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 12
  %44 = load ptr, ptr %43, align 8, !tbaa !59
  %45 = zext i32 %42 to i64
  %46 = shl nuw nsw i64 %45, 3
  %47 = load ptr, ptr %44, align 8, !tbaa !60
  %48 = getelementptr inbounds ptr, ptr %47, i64 2
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(8) %44, i64 noundef %46), !prof !113
  %51 = load i32, ptr %32, align 8, !tbaa !98
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %64, label %53, !prof !112

53:                                               ; preds = %37
  %54 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %31, i64 0, i32 4
  %55 = zext i32 %51 to i64
  br label %56

56:                                               ; preds = %53, %56
  %57 = phi i64 [ 0, %53 ], [ %62, %56 ]
  %58 = load ptr, ptr %54, align 8, !tbaa !76
  %59 = getelementptr inbounds ptr, ptr %58, i64 %57
  %60 = load ptr, ptr %59, align 8, !tbaa !74
  %61 = getelementptr inbounds ptr, ptr %50, i64 %57
  store ptr %60, ptr %61, align 8, !tbaa !74
  %62 = add nuw nsw i64 %57, 1
  %63 = icmp eq i64 %62, %55
  br i1 %63, label %64, label %56, !prof !114, !llvm.loop !115

64:                                               ; preds = %56, %37
  %65 = load ptr, ptr %43, align 8, !tbaa !59
  %66 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %31, i64 0, i32 4
  %67 = load ptr, ptr %66, align 8, !tbaa !76
  %68 = load ptr, ptr %65, align 8, !tbaa !60
  %69 = getelementptr inbounds ptr, ptr %68, i64 3
  %70 = load ptr, ptr %69, align 8
  tail call void %70(ptr noundef nonnull align 8 dereferenceable(8) %65, ptr noundef %67), !prof !116
  store ptr %50, ptr %66, align 8, !tbaa !76
  store i32 %42, ptr %34, align 4, !tbaa !93
  br label %71

71:                                               ; preds = %64, %24
  %72 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %31, i64 0, i32 4
  %73 = load ptr, ptr %72, align 8, !tbaa !76
  %74 = load i32, ptr %32, align 8, !tbaa !98
  %75 = add i32 %74, 1
  store i32 %75, ptr %32, align 8, !tbaa !98
  %76 = zext i32 %74 to i64
  %77 = getelementptr inbounds ptr, ptr %73, i64 %76
  store ptr %1, ptr %77, align 8, !tbaa !74
  ret i32 %74

78:                                               ; preds = %22, %12
  %79 = phi ptr [ %18, %22 ], [ %8, %12 ]
  %80 = phi { ptr, i32 } [ %23, %22 ], [ %13, %12 ]
  tail call void @__cxa_free_exception(ptr %79) #9
  resume { ptr, i32 } %80
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #9
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_79ElemStack10topElementEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !117 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !90
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %12, !prof !118

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #9
  %7 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 12
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str, i32 noundef 254, i32 noundef 26, ptr noundef %8)
          to label %9 unwind label %10

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #11
  unreachable

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #9
  resume { ptr, i32 } %11

12:                                               ; preds = %1
  %13 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !56
  %15 = add i32 %3, -1
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds ptr, ptr %14, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !74
  ret ptr %18
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79ElemStack9addPrefixEPKtj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !119 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !90
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14, !prof !120

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #9
  %9 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 267, i32 noundef 26, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #11
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #9
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !56
  %17 = add i32 %5, -1
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds ptr, ptr %16, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !74
  %21 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 2, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !121
  %23 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %22, ptr noundef %1)
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25, !prof !122

25:                                               ; preds = %14
  %26 = load i32, ptr %23, align 8, !tbaa !123
  br label %30

27:                                               ; preds = %14
  %28 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 2
  %29 = tail call noundef i32 @_ZN11xercesc_2_713XMLStringPool11addNewEntryEPKt(ptr noundef nonnull align 8 dereferenceable(40) %28, ptr noundef %1)
  br label %30

30:                                               ; preds = %25, %27
  %31 = phi i32 [ %26, %25 ], [ %29, %27 ]
  %32 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %20, i64 0, i32 7
  %33 = load i32, ptr %32, align 4, !tbaa !125
  %34 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %20, i64 0, i32 6
  %35 = load i32, ptr %34, align 8, !tbaa !94
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %60, !prof !122

37:                                               ; preds = %30
  %38 = icmp eq i32 %35, 0
  %39 = uitofp i32 %35 to double
  %40 = fmul double %39, 1.250000e+00
  %41 = fptoui double %40 to i32
  %42 = select i1 %38, i32 16, i32 %41, !prof !126
  %43 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 12
  %44 = load ptr, ptr %43, align 8, !tbaa !59
  %45 = zext i32 %42 to i64
  %46 = shl nuw nsw i64 %45, 3
  %47 = load ptr, ptr %44, align 8, !tbaa !60
  %48 = getelementptr inbounds ptr, ptr %47, i64 2
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(8) %44, i64 noundef %46), !prof !127
  %51 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %20, i64 0, i32 5
  %52 = load ptr, ptr %51, align 8, !tbaa !79
  %53 = zext i32 %35 to i64
  %54 = shl nuw nsw i64 %53, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %50, ptr align 4 %52, i64 %54, i1 false), !prof !128
  %55 = load ptr, ptr %43, align 8, !tbaa !59
  %56 = load ptr, ptr %51, align 8, !tbaa !79
  %57 = load ptr, ptr %55, align 8, !tbaa !60
  %58 = getelementptr inbounds ptr, ptr %57, i64 3
  %59 = load ptr, ptr %58, align 8
  tail call void %59(ptr noundef nonnull align 8 dereferenceable(8) %55, ptr noundef %56), !prof !129
  store ptr %50, ptr %51, align 8, !tbaa !79
  store i32 %42, ptr %34, align 8, !tbaa !94
  br label %60

60:                                               ; preds = %37, %30
  %61 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %20, i64 0, i32 5
  %62 = load ptr, ptr %61, align 8, !tbaa !79
  %63 = load i32, ptr %32, align 4, !tbaa !125
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %"struct.xercesc_2_7::PrefMapElem", ptr %62, i64 %64
  store i32 %31, ptr %65, align 4, !tbaa !130
  %66 = getelementptr inbounds %"struct.xercesc_2_7::PrefMapElem", ptr %62, i64 %64, i32 1
  store i32 %2, ptr %66, align 4, !tbaa !132
  %67 = add i32 %63, 1
  store i32 %67, ptr %32, align 4, !tbaa !125
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79ElemStack9expandMapEPNS0_9StackElemE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0, ptr nocapture noundef %1) local_unnamed_addr #0 align 2 !prof !88 {
  %3 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %1, i64 0, i32 6
  %4 = load i32, ptr %3, align 8, !tbaa !94
  %5 = icmp eq i32 %4, 0
  %6 = uitofp i32 %4 to double
  %7 = fmul double %6, 1.250000e+00
  %8 = fptoui double %7 to i32
  %9 = select i1 %5, i32 16, i32 %8
  %10 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !59
  %12 = zext i32 %9 to i64
  %13 = shl nuw nsw i64 %12, 3
  %14 = load ptr, ptr %11, align 8, !tbaa !60
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %13)
  %18 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %1, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !79
  %20 = zext i32 %4 to i64
  %21 = shl nuw nsw i64 %20, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %17, ptr align 4 %19, i64 %21, i1 false)
  %22 = load ptr, ptr %10, align 8, !tbaa !59
  %23 = load ptr, ptr %18, align 8, !tbaa !79
  %24 = load ptr, ptr %22, align 8, !tbaa !60
  %25 = getelementptr inbounds ptr, ptr %24, i64 3
  %26 = load ptr, ptr %25, align 8
  tail call void %26(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef %23)
  store ptr %17, ptr %18, align 8, !tbaa !79
  store i32 %9, ptr %3, align 8, !tbaa !94
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_79ElemStack14mapPrefixToURIEPKtNS0_8MapModesERb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %3) local_unnamed_addr #6 align 2 !prof !133 {
  store i8 0, ptr %3, align 1, !tbaa !134
  %5 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 2, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !121
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !135
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %6, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !137
  %11 = load ptr, ptr %6, align 8, !tbaa !138
  %12 = load ptr, ptr %8, align 8, !tbaa !60
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef i32 %13(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %1, i32 noundef %10, ptr noundef %11), !prof !139
  %15 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %6, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !140
  %17 = zext i32 %14 to i64
  %18 = getelementptr inbounds ptr, ptr %16, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !74
  %20 = icmp eq ptr %19, null
  br i1 %20, label %34, label %21, !prof !141

21:                                               ; preds = %4, %30
  %22 = phi ptr [ %32, %30 ], [ %19, %4 ]
  %23 = load ptr, ptr %7, align 8, !tbaa !135
  %24 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %22, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !142
  %26 = load ptr, ptr %23, align 8, !tbaa !60
  %27 = getelementptr inbounds ptr, ptr %26, i64 1
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef zeroext i1 %28(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %1, ptr noundef %25), !prof !144
  br i1 %29, label %34, label %30, !prof !145

30:                                               ; preds = %21
  %31 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %22, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !74
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %21, !prof !146, !llvm.loop !147

34:                                               ; preds = %30, %21, %4
  %35 = phi ptr [ null, %4 ], [ %22, %21 ], [ null, %30 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37, !prof !148

37:                                               ; preds = %34
  %38 = load ptr, ptr %35, align 8, !tbaa !149
  br label %39

39:                                               ; preds = %34, %37
  %40 = phi ptr [ %38, %37 ], [ null, %34 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42, !prof !150

42:                                               ; preds = %39
  %43 = load i32, ptr %40, align 8, !tbaa !123
  br label %44

44:                                               ; preds = %39, %42
  %45 = phi i32 [ %43, %42 ], [ 0, %39 ]
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50, !prof !150

47:                                               ; preds = %44
  store i8 1, ptr %3, align 1, !tbaa !134
  %48 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 6
  %49 = load i32, ptr %48, align 8, !tbaa !99
  br label %119

50:                                               ; preds = %44
  %51 = load i16, ptr %1, align 2, !tbaa !151
  %52 = icmp eq i16 %51, 0
  %53 = icmp eq i32 %2, 0
  %54 = and i1 %53, %52
  br i1 %54, label %55, label %57, !prof !153

55:                                               ; preds = %50
  %56 = load i32, ptr %0, align 8, !tbaa !47
  br label %119

57:                                               ; preds = %50
  %58 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 8
  %59 = load i32, ptr %58, align 8, !tbaa !154
  %60 = icmp eq i32 %45, %59
  br i1 %60, label %61, label %64, !prof !155

61:                                               ; preds = %57
  %62 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 7
  %63 = load i32, ptr %62, align 4, !tbaa !156
  br label %119

64:                                               ; preds = %57
  %65 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 10
  %66 = load i32, ptr %65, align 8, !tbaa !157
  %67 = icmp eq i32 %45, %66
  br i1 %67, label %68, label %71, !prof !155

68:                                               ; preds = %64
  %69 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 9
  %70 = load i32, ptr %69, align 4, !tbaa !158
  br label %119

71:                                               ; preds = %64
  %72 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %73 = load i32, ptr %72, align 4, !tbaa !90
  %74 = add i32 %73, -1
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %110, label %76, !prof !73

76:                                               ; preds = %71
  %77 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !56
  %79 = zext nneg i32 %74 to i64
  br label %80

80:                                               ; preds = %76, %107
  %81 = phi i64 [ %79, %76 ], [ %108, %107 ]
  %82 = phi i1 [ %75, %76 ], [ %109, %107 ]
  %83 = phi i32 [ undef, %76 ], [ %106, %107 ]
  %84 = getelementptr inbounds ptr, ptr %78, i64 %81
  %85 = load ptr, ptr %84, align 8, !tbaa !74
  %86 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %85, i64 0, i32 7
  %87 = load i32, ptr %86, align 4, !tbaa !125
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %104, label %89, !prof !159

89:                                               ; preds = %80
  %90 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %85, i64 0, i32 5
  %91 = load ptr, ptr %90, align 8, !tbaa !79
  br label %95

92:                                               ; preds = %95
  %93 = add nuw i32 %96, 1
  %94 = icmp eq i32 %93, %87
  br i1 %94, label %104, label %95, !prof !160, !llvm.loop !161

95:                                               ; preds = %89, %92
  %96 = phi i32 [ 0, %89 ], [ %93, %92 ]
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %"struct.xercesc_2_7::PrefMapElem", ptr %91, i64 %97
  %99 = load i32, ptr %98, align 4, !tbaa !130
  %100 = icmp eq i32 %99, %45
  br i1 %100, label %101, label %92, !prof !162

101:                                              ; preds = %95
  %102 = getelementptr inbounds %"struct.xercesc_2_7::PrefMapElem", ptr %91, i64 %97, i32 1
  %103 = load i32, ptr %102, align 4, !tbaa !132
  br label %104

104:                                              ; preds = %92, %101, %80
  %105 = phi i32 [ 4, %80 ], [ 1, %101 ], [ 0, %92 ]
  %106 = phi i32 [ %83, %80 ], [ %103, %101 ], [ %83, %92 ]
  switch i32 %105, label %110 [
    i32 0, label %107
    i32 4, label %107
  ], !prof !163

107:                                              ; preds = %104, %104
  %108 = add nsw i64 %81, -1
  %109 = icmp slt i64 %81, 1
  br i1 %109, label %110, label %80, !prof !164, !llvm.loop !165

110:                                              ; preds = %104, %107, %71
  %111 = phi i1 [ %75, %71 ], [ %82, %104 ], [ %109, %107 ]
  %112 = phi i32 [ undef, %71 ], [ %106, %107 ], [ %106, %104 ]
  br i1 %111, label %113, label %119, !prof !155

113:                                              ; preds = %110
  br i1 %52, label %114, label %116

114:                                              ; preds = %113
  %115 = load i32, ptr %0, align 8, !tbaa !47
  br label %119

116:                                              ; preds = %113
  store i8 1, ptr %3, align 1, !tbaa !134
  %117 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 6
  %118 = load i32, ptr %117, align 8, !tbaa !99
  br label %119

119:                                              ; preds = %114, %116, %110, %68, %61, %55, %47
  %120 = phi i32 [ %56, %55 ], [ %63, %61 ], [ %70, %68 ], [ %49, %47 ], [ %118, %116 ], [ %115, %114 ], [ %112, %110 ]
  ret i32 %120
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_79ElemStack15getNamespaceMapEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0) local_unnamed_addr #0 align 2 !prof !88 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %3, i64 0, i32 1
  store i32 0, ptr %4, align 4, !tbaa !68
  %5 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !90
  %7 = add i32 %6, -1
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %11 = zext nneg i32 %7 to i64
  br label %14

12:                                               ; preds = %43, %1
  %13 = load ptr, ptr %2, align 8, !tbaa !58
  ret ptr %13

14:                                               ; preds = %9, %43
  %15 = phi i64 [ %11, %9 ], [ %44, %43 ]
  %16 = load ptr, ptr %10, align 8, !tbaa !56
  %17 = getelementptr inbounds ptr, ptr %16, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !74
  %19 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %18, i64 0, i32 7
  %20 = load i32, ptr %19, align 4, !tbaa !125
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %43, label %22

22:                                               ; preds = %14
  %23 = load i32, ptr %19, align 4, !tbaa !125
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %43, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %18, i64 0, i32 5
  br label %27

27:                                               ; preds = %25, %27
  %28 = phi i64 [ 0, %25 ], [ %39, %27 ]
  %29 = load ptr, ptr %2, align 8, !tbaa !58
  %30 = load ptr, ptr %26, align 8, !tbaa !79
  %31 = getelementptr inbounds %"struct.xercesc_2_7::PrefMapElem", ptr %30, i64 %28
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPNS_11PrefMapElemEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %29, i32 noundef 1)
  %32 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %29, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !70
  %34 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %29, i64 0, i32 1
  %35 = load i32, ptr %34, align 4, !tbaa !68
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds ptr, ptr %33, i64 %36
  store ptr %31, ptr %37, align 8, !tbaa !74
  %38 = add i32 %35, 1
  store i32 %38, ptr %34, align 4, !tbaa !68
  %39 = add nuw nsw i64 %28, 1
  %40 = load i32, ptr %19, align 4, !tbaa !125
  %41 = zext i32 %40 to i64
  %42 = icmp ult i64 %39, %41
  br i1 %42, label %27, label %43, !llvm.loop !166

43:                                               ; preds = %27, %22, %14
  %44 = add nsw i64 %15, -1
  %45 = icmp sgt i64 %15, 0
  br i1 %45, label %14, label %12, !llvm.loop !167
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79ElemStack5resetEjjjj(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 !prof !46 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  store i32 0, ptr %6, align 4, !tbaa !90
  %7 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !154
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %42, !prof !64

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 2
  %12 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 2, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !121
  %14 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16, !prof !64

16:                                               ; preds = %10
  %17 = load i32, ptr %14, align 8, !tbaa !123
  br label %20

18:                                               ; preds = %10
  %19 = tail call noundef i32 @_ZN11xercesc_2_713XMLStringPool11addNewEntryEPKt(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE)
  br label %20

20:                                               ; preds = %16, %18
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  %22 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 1
  store i32 %21, ptr %22, align 4, !tbaa !55
  %23 = load ptr, ptr %12, align 8, !tbaa !121
  %24 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %23, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni11fgXMLStringE)
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26, !prof !64

26:                                               ; preds = %20
  %27 = load i32, ptr %24, align 8, !tbaa !123
  br label %30

28:                                               ; preds = %20
  %29 = tail call noundef i32 @_ZN11xercesc_2_713XMLStringPool11addNewEntryEPKt(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni11fgXMLStringE)
  br label %30

30:                                               ; preds = %26, %28
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  store i32 %31, ptr %7, align 8, !tbaa !154
  %32 = load ptr, ptr %12, align 8, !tbaa !121
  %33 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %32, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE)
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35, !prof !64

35:                                               ; preds = %30
  %36 = load i32, ptr %33, align 8, !tbaa !123
  br label %39

37:                                               ; preds = %30
  %38 = tail call noundef i32 @_ZN11xercesc_2_713XMLStringPool11addNewEntryEPKt(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE)
  br label %39

39:                                               ; preds = %35, %37
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  %41 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 10
  store i32 %40, ptr %41, align 8, !tbaa !157
  br label %42

42:                                               ; preds = %39, %5
  store i32 %1, ptr %0, align 8, !tbaa !47
  %43 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 6
  store i32 %2, ptr %43, align 8, !tbaa !99
  %44 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 7
  store i32 %3, ptr %44, align 4, !tbaa !156
  %45 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 9
  store i32 %4, ptr %45, align 4, !tbaa !158
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711WFElemStackC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  store i32 0, ptr %0, align 8, !tbaa !168
  %3 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 4, !tbaa !170
  %4 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 2
  store i32 32, ptr %4, align 8, !tbaa !171
  %5 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 3
  %6 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %5, i8 0, i64 44, i1 false)
  tail call void @_ZN11xercesc_2_713XMLStringPoolC1EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef 109, ptr noundef %1)
  %7 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 13
  store ptr %1, ptr %7, align 8, !tbaa !172
  %8 = load i32, ptr %4, align 8, !tbaa !171
  %9 = zext i32 %8 to i64
  %10 = shl nuw nsw i64 %9, 3
  %11 = load ptr, ptr %1, align 8, !tbaa !60
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8
  %14 = invoke noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %10)
          to label %15 unwind label %20

15:                                               ; preds = %2
  %16 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 11
  store ptr %14, ptr %16, align 8, !tbaa !173
  %17 = load i32, ptr %4, align 8, !tbaa !171
  %18 = zext i32 %17 to i64
  %19 = shl nuw nsw i64 %18, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %14, i8 0, i64 %19, i1 false)
  ret void

20:                                               ; preds = %2
  %21 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_713XMLStringPoolD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %6) #9
  resume { ptr, i32 } %21
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_711WFElemStackD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !171
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %32, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 11
  %7 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 13
  br label %8

8:                                                ; preds = %5, %28
  %9 = phi i32 [ 0, %5 ], [ %29, %28 ]
  %10 = load ptr, ptr %6, align 8, !tbaa !173
  %11 = zext i32 %9 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !74
  %14 = icmp eq ptr %13, null
  br i1 %14, label %32, label %15

15:                                               ; preds = %8
  %16 = load ptr, ptr %7, align 8, !tbaa !172
  %17 = getelementptr inbounds %"struct.xercesc_2_7::WFElemStack::StackElem", ptr %13, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !174
  %19 = load ptr, ptr %16, align 8, !tbaa !60
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %18)
          to label %22 unwind label %52

22:                                               ; preds = %15
  %23 = load ptr, ptr %6, align 8, !tbaa !173
  %24 = getelementptr inbounds ptr, ptr %23, i64 %11
  %25 = load ptr, ptr %24, align 8, !tbaa !74
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %25) #9
  br label %28

28:                                               ; preds = %22, %27
  %29 = add nuw i32 %9, 1
  %30 = load i32, ptr %2, align 8, !tbaa !171
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %8, label %32, !llvm.loop !176

32:                                               ; preds = %28, %8, %1
  %33 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 10
  %34 = load ptr, ptr %33, align 8, !tbaa !177
  %35 = icmp eq ptr %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 13
  %38 = load ptr, ptr %37, align 8, !tbaa !172
  %39 = load ptr, ptr %38, align 8, !tbaa !60
  %40 = getelementptr inbounds ptr, ptr %39, i64 3
  %41 = load ptr, ptr %40, align 8
  invoke void %41(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef nonnull %34)
          to label %42 unwind label %54

42:                                               ; preds = %36, %32
  %43 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 13
  %44 = load ptr, ptr %43, align 8, !tbaa !172
  %45 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 11
  %46 = load ptr, ptr %45, align 8, !tbaa !173
  %47 = load ptr, ptr %44, align 8, !tbaa !60
  %48 = getelementptr inbounds ptr, ptr %47, i64 3
  %49 = load ptr, ptr %48, align 8
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(8) %44, ptr noundef %46)
          to label %50 unwind label %54

50:                                               ; preds = %42
  %51 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 12
  tail call void @_ZN11xercesc_2_713XMLStringPoolD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %51) #9
  ret void

52:                                               ; preds = %15
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
  tail call void @__clang_call_terminate(ptr %58) #10
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_711WFElemStack8addLevelEv(ptr nocapture noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !178
  %4 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !171
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %7, label %35

7:                                                ; preds = %1
  %8 = uitofp i32 %5 to double
  %9 = fmul double %8, 1.250000e+00
  %10 = fptoui double %9 to i32
  %11 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 13
  %12 = load ptr, ptr %11, align 8, !tbaa !172
  %13 = zext i32 %10 to i64
  %14 = shl nuw nsw i64 %13, 3
  %15 = load ptr, ptr %12, align 8, !tbaa !60
  %16 = getelementptr inbounds ptr, ptr %15, i64 2
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef %14)
  %19 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 11
  %20 = load ptr, ptr %19, align 8, !tbaa !173
  %21 = load i32, ptr %4, align 8, !tbaa !171
  %22 = zext i32 %21 to i64
  %23 = shl nuw nsw i64 %22, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %18, ptr align 8 %20, i64 %23, i1 false)
  %24 = load i32, ptr %4, align 8, !tbaa !171
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds ptr, ptr %18, i64 %25
  %27 = sub i32 %10, %24
  %28 = zext i32 %27 to i64
  %29 = shl nuw nsw i64 %28, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %26, i8 0, i64 %29, i1 false)
  %30 = load ptr, ptr %11, align 8, !tbaa !172
  %31 = load ptr, ptr %19, align 8, !tbaa !173
  %32 = load ptr, ptr %30, align 8, !tbaa !60
  %33 = getelementptr inbounds ptr, ptr %32, i64 3
  %34 = load ptr, ptr %33, align 8
  tail call void %34(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %31)
  store ptr %18, ptr %19, align 8, !tbaa !173
  store i32 %10, ptr %4, align 8, !tbaa !171
  br label %35

35:                                               ; preds = %7, %1
  %36 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 11
  %37 = load ptr, ptr %36, align 8, !tbaa !173
  %38 = load i32, ptr %2, align 4, !tbaa !178
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds ptr, ptr %37, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !74
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %57

43:                                               ; preds = %35
  %44 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 13
  %45 = load ptr, ptr %44, align 8, !tbaa !172
  %46 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %45)
  %47 = load ptr, ptr %36, align 8, !tbaa !173
  %48 = load i32, ptr %2, align 4, !tbaa !178
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds ptr, ptr %47, i64 %49
  store ptr %46, ptr %50, align 8, !tbaa !74
  %51 = load ptr, ptr %36, align 8, !tbaa !173
  %52 = getelementptr inbounds ptr, ptr %51, i64 %49
  %53 = load ptr, ptr %52, align 8, !tbaa !74
  %54 = getelementptr inbounds %"struct.xercesc_2_7::WFElemStack::StackElem", ptr %53, i64 0, i32 4
  store ptr null, ptr %54, align 8, !tbaa !174
  %55 = load ptr, ptr %52, align 8, !tbaa !74
  %56 = getelementptr inbounds %"struct.xercesc_2_7::WFElemStack::StackElem", ptr %55, i64 0, i32 3
  store i32 0, ptr %56, align 4, !tbaa !179
  br label %57

57:                                               ; preds = %43, %35
  %58 = load ptr, ptr %36, align 8, !tbaa !173
  %59 = load i32, ptr %2, align 4, !tbaa !178
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds ptr, ptr %58, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !74
  %63 = getelementptr inbounds %"struct.xercesc_2_7::WFElemStack::StackElem", ptr %62, i64 0, i32 2
  store i32 -1, ptr %63, align 8, !tbaa !180
  %64 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 4
  %65 = load i32, ptr %64, align 8, !tbaa !181
  %66 = getelementptr inbounds %"struct.xercesc_2_7::WFElemStack::StackElem", ptr %62, i64 0, i32 1
  store i32 %65, ptr %66, align 4, !tbaa !182
  store i32 -1, ptr %62, align 8, !tbaa !183
  %67 = icmp eq i32 %59, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %57
  %69 = add i32 %59, -1
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds ptr, ptr %58, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !74
  %73 = load i32, ptr %72, align 8, !tbaa !183
  store i32 %73, ptr %62, align 8, !tbaa !183
  br label %74

74:                                               ; preds = %68, %57
  %75 = add i32 %59, 1
  store i32 %75, ptr %2, align 4, !tbaa !178
  ret i32 %59
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711WFElemStack11expandStackEv(ptr nocapture noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 align 2 !prof !88 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !171
  %4 = uitofp i32 %3 to double
  %5 = fmul double %4, 1.250000e+00
  %6 = fptoui double %5 to i32
  %7 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 13
  %8 = load ptr, ptr %7, align 8, !tbaa !172
  %9 = zext i32 %6 to i64
  %10 = shl nuw nsw i64 %9, 3
  %11 = load ptr, ptr %8, align 8, !tbaa !60
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef %10)
  %15 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 11
  %16 = load ptr, ptr %15, align 8, !tbaa !173
  %17 = load i32, ptr %2, align 8, !tbaa !171
  %18 = zext i32 %17 to i64
  %19 = shl nuw nsw i64 %18, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %14, ptr align 8 %16, i64 %19, i1 false)
  %20 = load i32, ptr %2, align 8, !tbaa !171
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %14, i64 %21
  %23 = sub i32 %6, %20
  %24 = zext i32 %23 to i64
  %25 = shl nuw nsw i64 %24, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %22, i8 0, i64 %25, i1 false)
  %26 = load ptr, ptr %7, align 8, !tbaa !172
  %27 = load ptr, ptr %15, align 8, !tbaa !173
  %28 = load ptr, ptr %26, align 8, !tbaa !60
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef %27)
  store ptr %14, ptr %15, align 8, !tbaa !173
  store i32 %6, ptr %2, align 8, !tbaa !171
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_711WFElemStack8addLevelEPKtjj(ptr nocapture noundef nonnull align 8 dereferenceable(104) %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !178
  %7 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !171
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %10, label %38

10:                                               ; preds = %4
  %11 = uitofp i32 %8 to double
  %12 = fmul double %11, 1.250000e+00
  %13 = fptoui double %12 to i32
  %14 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 13
  %15 = load ptr, ptr %14, align 8, !tbaa !172
  %16 = zext i32 %13 to i64
  %17 = shl nuw nsw i64 %16, 3
  %18 = load ptr, ptr %15, align 8, !tbaa !60
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %17)
  %22 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 11
  %23 = load ptr, ptr %22, align 8, !tbaa !173
  %24 = load i32, ptr %7, align 8, !tbaa !171
  %25 = zext i32 %24 to i64
  %26 = shl nuw nsw i64 %25, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %21, ptr align 8 %23, i64 %26, i1 false)
  %27 = load i32, ptr %7, align 8, !tbaa !171
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds ptr, ptr %21, i64 %28
  %30 = sub i32 %13, %27
  %31 = zext i32 %30 to i64
  %32 = shl nuw nsw i64 %31, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %29, i8 0, i64 %32, i1 false)
  %33 = load ptr, ptr %14, align 8, !tbaa !172
  %34 = load ptr, ptr %22, align 8, !tbaa !173
  %35 = load ptr, ptr %33, align 8, !tbaa !60
  %36 = getelementptr inbounds ptr, ptr %35, i64 3
  %37 = load ptr, ptr %36, align 8
  tail call void %37(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef %34)
  store ptr %21, ptr %22, align 8, !tbaa !173
  store i32 %13, ptr %7, align 8, !tbaa !171
  br label %38

38:                                               ; preds = %10, %4
  %39 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 11
  %40 = load ptr, ptr %39, align 8, !tbaa !173
  %41 = load i32, ptr %5, align 4, !tbaa !178
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds ptr, ptr %40, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !74
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %60

46:                                               ; preds = %38
  %47 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 13
  %48 = load ptr, ptr %47, align 8, !tbaa !172
  %49 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %48)
  %50 = load ptr, ptr %39, align 8, !tbaa !173
  %51 = load i32, ptr %5, align 4, !tbaa !178
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds ptr, ptr %50, i64 %52
  store ptr %49, ptr %53, align 8, !tbaa !74
  %54 = load ptr, ptr %39, align 8, !tbaa !173
  %55 = getelementptr inbounds ptr, ptr %54, i64 %52
  %56 = load ptr, ptr %55, align 8, !tbaa !74
  %57 = getelementptr inbounds %"struct.xercesc_2_7::WFElemStack::StackElem", ptr %56, i64 0, i32 4
  store ptr null, ptr %57, align 8, !tbaa !174
  %58 = load ptr, ptr %55, align 8, !tbaa !74
  %59 = getelementptr inbounds %"struct.xercesc_2_7::WFElemStack::StackElem", ptr %58, i64 0, i32 3
  store i32 0, ptr %59, align 4, !tbaa !179
  br label %60

60:                                               ; preds = %46, %38
  %61 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 4
  %62 = load i32, ptr %61, align 8, !tbaa !181
  %63 = load ptr, ptr %39, align 8, !tbaa !173
  %64 = load i32, ptr %5, align 4, !tbaa !178
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds ptr, ptr %63, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !74
  %68 = getelementptr inbounds %"struct.xercesc_2_7::WFElemStack::StackElem", ptr %67, i64 0, i32 1
  store i32 %62, ptr %68, align 4, !tbaa !182
  store i32 -1, ptr %67, align 8, !tbaa !183
  %69 = getelementptr inbounds %"struct.xercesc_2_7::WFElemStack::StackElem", ptr %67, i64 0, i32 3
  %70 = load i32, ptr %69, align 4, !tbaa !179
  %71 = icmp ult i32 %70, %2
  br i1 %71, label %72, label %100

72:                                               ; preds = %60
  %73 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 13
  %74 = load ptr, ptr %73, align 8, !tbaa !172
  %75 = getelementptr inbounds %"struct.xercesc_2_7::WFElemStack::StackElem", ptr %67, i64 0, i32 4
  %76 = load ptr, ptr %75, align 8, !tbaa !174
  %77 = load ptr, ptr %74, align 8, !tbaa !60
  %78 = getelementptr inbounds ptr, ptr %77, i64 3
  %79 = load ptr, ptr %78, align 8
  tail call void %79(ptr noundef nonnull align 8 dereferenceable(8) %74, ptr noundef %76)
  %80 = load ptr, ptr %39, align 8, !tbaa !173
  %81 = load i32, ptr %5, align 4, !tbaa !178
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds ptr, ptr %80, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !74
  %85 = getelementptr inbounds %"struct.xercesc_2_7::WFElemStack::StackElem", ptr %84, i64 0, i32 3
  store i32 %2, ptr %85, align 4, !tbaa !179
  %86 = load ptr, ptr %73, align 8, !tbaa !172
  %87 = add i32 %2, 1
  %88 = zext i32 %87 to i64
  %89 = shl nuw nsw i64 %88, 1
  %90 = load ptr, ptr %86, align 8, !tbaa !60
  %91 = getelementptr inbounds ptr, ptr %90, i64 2
  %92 = load ptr, ptr %91, align 8
  %93 = tail call noundef ptr %92(ptr noundef nonnull align 8 dereferenceable(8) %86, i64 noundef %89)
  %94 = load ptr, ptr %39, align 8, !tbaa !173
  %95 = load i32, ptr %5, align 4, !tbaa !178
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds ptr, ptr %94, i64 %96
  %98 = load ptr, ptr %97, align 8, !tbaa !74
  %99 = getelementptr inbounds %"struct.xercesc_2_7::WFElemStack::StackElem", ptr %98, i64 0, i32 4
  store ptr %93, ptr %99, align 8, !tbaa !174
  br label %100

100:                                              ; preds = %72, %60
  %101 = load ptr, ptr %39, align 8, !tbaa !173
  %102 = load i32, ptr %5, align 4, !tbaa !178
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds ptr, ptr %101, i64 %103
  %105 = load ptr, ptr %104, align 8, !tbaa !74
  %106 = getelementptr inbounds %"struct.xercesc_2_7::WFElemStack::StackElem", ptr %105, i64 0, i32 4
  %107 = load ptr, ptr %106, align 8, !tbaa !174
  %108 = add i32 %2, 1
  %109 = zext i32 %108 to i64
  %110 = shl nuw nsw i64 %109, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %107, ptr align 2 %1, i64 %110, i1 false)
  %111 = load ptr, ptr %39, align 8, !tbaa !173
  %112 = load i32, ptr %5, align 4, !tbaa !178
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds ptr, ptr %111, i64 %113
  %115 = load ptr, ptr %114, align 8, !tbaa !74
  %116 = getelementptr inbounds %"struct.xercesc_2_7::WFElemStack::StackElem", ptr %115, i64 0, i32 2
  store i32 %3, ptr %116, align 8, !tbaa !180
  %117 = icmp eq i32 %112, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %100
  %119 = add i32 %112, -1
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds ptr, ptr %111, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !74
  %123 = load i32, ptr %122, align 8, !tbaa !183
  store i32 %123, ptr %115, align 8, !tbaa !183
  br label %124

124:                                              ; preds = %118, %100
  %125 = add i32 %112, 1
  store i32 %125, ptr %5, align 4, !tbaa !178
  ret i32 %112
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711WFElemStack6popTopEv(ptr nocapture noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !178
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #9
  %7 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 13
  %8 = load ptr, ptr %7, align 8, !tbaa !172
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str, i32 noundef 620, i32 noundef 28, ptr noundef %8)
          to label %9 unwind label %10

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #11
  unreachable

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #9
  resume { ptr, i32 } %11

12:                                               ; preds = %1
  %13 = add i32 %3, -1
  store i32 %13, ptr %2, align 4, !tbaa !178
  %14 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 11
  %15 = load ptr, ptr %14, align 8, !tbaa !173
  %16 = zext i32 %13 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !74
  ret ptr %18
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711WFElemStack10setElementEPKtjj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !178
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #9
  %10 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 13
  %11 = load ptr, ptr %10, align 8, !tbaa !172
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str, i32 noundef 633, i32 noundef 26, ptr noundef %11)
          to label %12 unwind label %13

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #11
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #9
  resume { ptr, i32 } %14

15:                                               ; preds = %4
  %16 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 11
  %17 = load ptr, ptr %16, align 8, !tbaa !173
  %18 = add i32 %6, -1
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds ptr, ptr %17, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !74
  %22 = getelementptr inbounds %"struct.xercesc_2_7::WFElemStack::StackElem", ptr %21, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !179
  %24 = icmp ult i32 %23, %2
  br i1 %24, label %25, label %55

25:                                               ; preds = %15
  %26 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 13
  %27 = load ptr, ptr %26, align 8, !tbaa !172
  %28 = getelementptr inbounds %"struct.xercesc_2_7::WFElemStack::StackElem", ptr %21, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !174
  %30 = load ptr, ptr %27, align 8, !tbaa !60
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %29)
  %33 = load ptr, ptr %16, align 8, !tbaa !173
  %34 = load i32, ptr %5, align 4, !tbaa !178
  %35 = add i32 %34, -1
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds ptr, ptr %33, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !74
  %39 = getelementptr inbounds %"struct.xercesc_2_7::WFElemStack::StackElem", ptr %38, i64 0, i32 3
  store i32 %2, ptr %39, align 4, !tbaa !179
  %40 = load ptr, ptr %26, align 8, !tbaa !172
  %41 = add i32 %2, 1
  %42 = zext i32 %41 to i64
  %43 = shl nuw nsw i64 %42, 1
  %44 = load ptr, ptr %40, align 8, !tbaa !60
  %45 = getelementptr inbounds ptr, ptr %44, i64 2
  %46 = load ptr, ptr %45, align 8
  %47 = tail call noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(8) %40, i64 noundef %43)
  %48 = load ptr, ptr %16, align 8, !tbaa !173
  %49 = load i32, ptr %5, align 4, !tbaa !178
  %50 = add i32 %49, -1
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds ptr, ptr %48, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !74
  %54 = getelementptr inbounds %"struct.xercesc_2_7::WFElemStack::StackElem", ptr %53, i64 0, i32 4
  store ptr %47, ptr %54, align 8, !tbaa !174
  br label %55

55:                                               ; preds = %25, %15
  %56 = load ptr, ptr %16, align 8, !tbaa !173
  %57 = load i32, ptr %5, align 4, !tbaa !178
  %58 = add i32 %57, -1
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds ptr, ptr %56, i64 %59
  %61 = load ptr, ptr %60, align 8, !tbaa !74
  %62 = getelementptr inbounds %"struct.xercesc_2_7::WFElemStack::StackElem", ptr %61, i64 0, i32 4
  %63 = load ptr, ptr %62, align 8, !tbaa !174
  %64 = add i32 %2, 1
  %65 = zext i32 %64 to i64
  %66 = shl nuw nsw i64 %65, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %63, ptr align 2 %1, i64 %66, i1 false)
  %67 = load ptr, ptr %16, align 8, !tbaa !173
  %68 = load i32, ptr %5, align 4, !tbaa !178
  %69 = add i32 %68, -1
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds ptr, ptr %67, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !74
  %73 = getelementptr inbounds %"struct.xercesc_2_7::WFElemStack::StackElem", ptr %72, i64 0, i32 2
  store i32 %3, ptr %73, align 8, !tbaa !180
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711WFElemStack10topElementEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !178
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #9
  %7 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 13
  %8 = load ptr, ptr %7, align 8, !tbaa !172
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str, i32 noundef 656, i32 noundef 26, ptr noundef %8)
          to label %9 unwind label %10

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #11
  unreachable

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #9
  resume { ptr, i32 } %11

12:                                               ; preds = %1
  %13 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 11
  %14 = load ptr, ptr %13, align 8, !tbaa !173
  %15 = add i32 %3, -1
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds ptr, ptr %14, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !74
  ret ptr %18
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711WFElemStack9addPrefixEPKtj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !178
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #9
  %9 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 13
  %10 = load ptr, ptr %9, align 8, !tbaa !172
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 669, i32 noundef 26, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #11
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #9
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 11
  %16 = load ptr, ptr %15, align 8, !tbaa !173
  %17 = add i32 %5, -1
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds ptr, ptr %16, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !74
  %21 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 12, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !121
  %23 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %22, ptr noundef %1)
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %14
  %26 = load i32, ptr %23, align 8, !tbaa !123
  br label %30

27:                                               ; preds = %14
  %28 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 12
  %29 = tail call noundef i32 @_ZN11xercesc_2_713XMLStringPool11addNewEntryEPKt(ptr noundef nonnull align 8 dereferenceable(40) %28, ptr noundef %1)
  br label %30

30:                                               ; preds = %25, %27
  %31 = phi i32 [ %26, %25 ], [ %29, %27 ]
  %32 = load i32, ptr %20, align 8, !tbaa !183
  %33 = add i32 %32, 1
  %34 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 9
  %35 = load i32, ptr %34, align 4, !tbaa !184
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  tail call void @_ZN11xercesc_2_711WFElemStack9expandMapEv(ptr noundef nonnull align 8 dereferenceable(104) %0)
  br label %38

38:                                               ; preds = %37, %30
  %39 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 10
  %40 = load ptr, ptr %39, align 8, !tbaa !177
  %41 = load i32, ptr %20, align 8, !tbaa !183
  %42 = sext i32 %41 to i64
  %43 = getelementptr %"struct.xercesc_2_7::PrefMapElem", ptr %40, i64 %42
  %44 = getelementptr %"struct.xercesc_2_7::PrefMapElem", ptr %43, i64 1
  store i32 %31, ptr %44, align 4, !tbaa !130
  %45 = getelementptr %"struct.xercesc_2_7::PrefMapElem", ptr %43, i64 1, i32 1
  store i32 %2, ptr %45, align 4, !tbaa !132
  %46 = add nsw i32 %41, 1
  store i32 %46, ptr %20, align 8, !tbaa !183
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711WFElemStack9expandMapEv(ptr nocapture noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 align 2 !prof !88 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 4, !tbaa !184
  %4 = icmp eq i32 %3, 0
  %5 = uitofp i32 %3 to double
  %6 = fmul double %5, 1.250000e+00
  %7 = fptoui double %6 to i32
  %8 = select i1 %4, i32 16, i32 %7
  %9 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 13
  %10 = load ptr, ptr %9, align 8, !tbaa !172
  %11 = zext i32 %8 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = load ptr, ptr %10, align 8, !tbaa !60
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef %12)
  %17 = load i32, ptr %2, align 4, !tbaa !184
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %1
  %20 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 10
  %21 = load ptr, ptr %20, align 8, !tbaa !177
  %22 = zext i32 %17 to i64
  %23 = shl nuw nsw i64 %22, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %16, ptr align 4 %21, i64 %23, i1 false)
  %24 = load ptr, ptr %9, align 8, !tbaa !172
  %25 = load ptr, ptr %20, align 8, !tbaa !177
  %26 = load ptr, ptr %24, align 8, !tbaa !60
  %27 = getelementptr inbounds ptr, ptr %26, i64 3
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %25)
  br label %29

29:                                               ; preds = %19, %1
  %30 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 10
  store ptr %16, ptr %30, align 8, !tbaa !177
  store i32 %8, ptr %2, align 4, !tbaa !184
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_711WFElemStack14mapPrefixToURIEPKtNS0_8MapModesERb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %3) local_unnamed_addr #0 align 2 !prof !88 {
  store i8 0, ptr %3, align 1, !tbaa !134
  %5 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 12, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !121
  %7 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %1)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = load i32, ptr %7, align 8, !tbaa !123
  br label %11

11:                                               ; preds = %4, %9
  %12 = phi i32 [ %10, %9 ], [ 0, %4 ]
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  store i8 1, ptr %3, align 1, !tbaa !134
  %15 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !181
  br label %79

17:                                               ; preds = %11
  %18 = load i16, ptr %1, align 2, !tbaa !151
  %19 = icmp eq i16 %18, 0
  %20 = icmp eq i32 %2, 0
  %21 = and i1 %20, %19
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, ptr %0, align 8, !tbaa !168
  br label %79

24:                                               ; preds = %17
  %25 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 6
  %26 = load i32, ptr %25, align 8, !tbaa !185
  %27 = icmp eq i32 %12, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 5
  %30 = load i32, ptr %29, align 4, !tbaa !186
  br label %79

31:                                               ; preds = %24
  %32 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 8
  %33 = load i32, ptr %32, align 8, !tbaa !187
  %34 = icmp eq i32 %12, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 7
  %37 = load i32, ptr %36, align 4, !tbaa !188
  br label %79

38:                                               ; preds = %31
  %39 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 11
  %40 = load ptr, ptr %39, align 8, !tbaa !173
  %41 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 3
  %42 = load i32, ptr %41, align 4, !tbaa !178
  %43 = add i32 %42, -1
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds ptr, ptr %40, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !74
  %47 = load i32, ptr %46, align 8, !tbaa !183
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %70, label %49

49:                                               ; preds = %38
  %50 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 10
  %51 = load ptr, ptr %50, align 8, !tbaa !177
  %52 = zext nneg i32 %47 to i64
  %53 = getelementptr inbounds %"struct.xercesc_2_7::PrefMapElem", ptr %51, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !130
  %55 = icmp eq i32 %54, %12
  br i1 %55, label %65, label %56

56:                                               ; preds = %49, %59
  %57 = phi i32 [ %60, %59 ], [ %47, %49 ]
  %58 = icmp slt i32 %57, 1
  br i1 %58, label %70, label %59, !llvm.loop !189

59:                                               ; preds = %56
  %60 = add nsw i32 %57, -1
  %61 = zext nneg i32 %60 to i64
  %62 = getelementptr inbounds %"struct.xercesc_2_7::PrefMapElem", ptr %51, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !130
  %64 = icmp eq i32 %63, %12
  br i1 %64, label %65, label %56, !llvm.loop !189

65:                                               ; preds = %59, %49
  %66 = phi i1 [ %48, %49 ], [ %58, %59 ]
  %67 = phi i64 [ %52, %49 ], [ %61, %59 ]
  %68 = getelementptr inbounds %"struct.xercesc_2_7::PrefMapElem", ptr %51, i64 %67, i32 1
  %69 = load i32, ptr %68, align 4, !tbaa !132
  br label %70

70:                                               ; preds = %56, %38, %65
  %71 = phi i1 [ %66, %65 ], [ %48, %38 ], [ %58, %56 ]
  %72 = phi i32 [ %69, %65 ], [ undef, %38 ], [ undef, %56 ]
  br i1 %71, label %73, label %79

73:                                               ; preds = %70
  br i1 %19, label %74, label %76

74:                                               ; preds = %73
  %75 = load i32, ptr %0, align 8, !tbaa !168
  br label %79

76:                                               ; preds = %73
  store i8 1, ptr %3, align 1, !tbaa !134
  %77 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 4
  %78 = load i32, ptr %77, align 8, !tbaa !181
  br label %79

79:                                               ; preds = %74, %76, %70, %35, %28, %22, %14
  %80 = phi i32 [ %23, %22 ], [ %30, %28 ], [ %37, %35 ], [ %16, %14 ], [ %78, %76 ], [ %75, %74 ], [ %72, %70 ]
  ret i32 %80
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711WFElemStack5resetEjjjj(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 !prof !88 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 3
  store i32 0, ptr %6, align 4, !tbaa !178
  %7 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !185
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %42

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 12
  %12 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 12, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !121
  %14 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = load i32, ptr %14, align 8, !tbaa !123
  br label %20

18:                                               ; preds = %10
  %19 = tail call noundef i32 @_ZN11xercesc_2_713XMLStringPool11addNewEntryEPKt(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE)
  br label %20

20:                                               ; preds = %16, %18
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  %22 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 1
  store i32 %21, ptr %22, align 4, !tbaa !170
  %23 = load ptr, ptr %12, align 8, !tbaa !121
  %24 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %23, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni11fgXMLStringE)
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = load i32, ptr %24, align 8, !tbaa !123
  br label %30

28:                                               ; preds = %20
  %29 = tail call noundef i32 @_ZN11xercesc_2_713XMLStringPool11addNewEntryEPKt(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni11fgXMLStringE)
  br label %30

30:                                               ; preds = %26, %28
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  store i32 %31, ptr %7, align 8, !tbaa !185
  %32 = load ptr, ptr %12, align 8, !tbaa !121
  %33 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %32, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE)
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = load i32, ptr %33, align 8, !tbaa !123
  br label %39

37:                                               ; preds = %30
  %38 = tail call noundef i32 @_ZN11xercesc_2_713XMLStringPool11addNewEntryEPKt(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE)
  br label %39

39:                                               ; preds = %35, %37
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  %41 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 8
  store i32 %40, ptr %41, align 8, !tbaa !187
  br label %42

42:                                               ; preds = %39, %5
  store i32 %1, ptr %0, align 8, !tbaa !168
  %43 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 4
  store i32 %2, ptr %43, align 8, !tbaa !181
  %44 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 5
  store i32 %3, ptr %44, align 4, !tbaa !186
  %45 = getelementptr inbounds %"class.xercesc_2_7::WFElemStack", ptr %0, i64 0, i32 7
  store i32 %4, ptr %45, align 4, !tbaa !188
  ret void
}

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !88 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !88 {
  ret ptr @_ZN11xercesc_2_76XMLUni26fgEmptyStackException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !190
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !60
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #9
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !88 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !88 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !190
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !60
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #9
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !193 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !135
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !137
  %7 = load ptr, ptr %0, align 8, !tbaa !138
  %8 = load ptr, ptr %4, align 8, !tbaa !60
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %6, ptr noundef %7), !prof !194
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !140
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !74
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17, !prof !141

17:                                               ; preds = %2, %26
  %18 = phi ptr [ %28, %26 ], [ %15, %2 ]
  %19 = load ptr, ptr %3, align 8, !tbaa !135
  %20 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %18, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !142
  %22 = load ptr, ptr %19, align 8, !tbaa !60
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %1, ptr noundef %21), !prof !195
  br i1 %25, label %30, label %26, !prof !145

26:                                               ; preds = %17
  %27 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %18, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !74
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %17, !prof !146, !llvm.loop !147

30:                                               ; preds = %17, %26, %2
  %31 = phi ptr [ null, %2 ], [ %18, %17 ], [ null, %26 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33, !prof !148

33:                                               ; preds = %30
  %34 = load ptr, ptr %31, align 8, !tbaa !149
  br label %35

35:                                               ; preds = %30, %33
  %36 = phi ptr [ %34, %33 ], [ null, %30 ]
  ret ptr %36
}

declare noundef i32 @_ZN11xercesc_2_713XMLStringPool11addNewEntryEPKt(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_11PrefMapElemEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !88 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !68
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !69
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %42

9:                                                ; preds = %2
  %10 = uitofp i32 %4 to double
  %11 = fmul double %10, 1.250000e+00
  %12 = fptoui double %11 to i32
  %13 = tail call i32 @llvm.umax.i32(i32 %5, i32 %12)
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !71
  %16 = zext i32 %13 to i64
  %17 = shl nuw nsw i64 %16, 3
  %18 = load ptr, ptr %15, align 8, !tbaa !60
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %17)
  %22 = load i32, ptr %3, align 4, !tbaa !68
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %9
  %25 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %26 = zext i32 %22 to i64
  br label %34

27:                                               ; preds = %34, %9
  %28 = load ptr, ptr %14, align 8, !tbaa !71
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !70
  %31 = load ptr, ptr %28, align 8, !tbaa !60
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
  store ptr %21, ptr %29, align 8, !tbaa !70
  store i32 %13, ptr %6, align 8, !tbaa !69
  br label %42

34:                                               ; preds = %24, %34
  %35 = phi i64 [ 0, %24 ], [ %40, %34 ]
  %36 = load ptr, ptr %25, align 8, !tbaa !70
  %37 = getelementptr inbounds ptr, ptr %36, i64 %35
  %38 = load ptr, ptr %37, align 8, !tbaa !74
  %39 = getelementptr inbounds ptr, ptr %21, i64 %35
  store ptr %38, ptr %39, align 8, !tbaa !74
  %40 = add nuw nsw i64 %35, 1
  %41 = icmp eq i64 %40, %26
  br i1 %41, label %27, label %34, !llvm.loop !196

42:                                               ; preds = %2, %27
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!45}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!35 = !{ptr @_ZN11xercesc_2_79ElemStackC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713XMLStringPoolC1EjPNS_13MemoryManagerE, i64 3}
!36 = !{ptr @_ZN11xercesc_2_79ElemStackC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 3}
!37 = !{ptr @_ZN11xercesc_2_79ElemStackD2Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 29}
!38 = !{ptr @_ZN11xercesc_2_79ElemStackD2Ev, ptr @_ZN11xercesc_2_713XMLStringPoolD1Ev, i64 3}
!39 = !{ptr @_ZN11xercesc_2_79ElemStack8addLevelEv, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 18}
!40 = !{ptr @_ZN11xercesc_2_79ElemStack8addLevelEPNS_14XMLElementDeclEj, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 8}
!41 = !{ptr @_ZN11xercesc_2_79ElemStack9addPrefixEPKtj, ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv, i64 4}
!42 = !{ptr @_ZN11xercesc_2_79ElemStack9addPrefixEPKtj, ptr @_ZN11xercesc_2_713XMLStringPool11addNewEntryEPKt, i64 2}
!43 = !{ptr @_ZN11xercesc_2_79ElemStack5resetEjjjj, ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv, i64 9}
!44 = !{ptr @_ZN11xercesc_2_79ElemStack5resetEjjjj, ptr @_ZN11xercesc_2_713XMLStringPool11addNewEntryEPKt, i64 9}
!45 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!46 = !{!"function_entry_count", i64 3}
!47 = !{!48, !49, i64 0}
!48 = !{!"_ZTSN11xercesc_2_79ElemStackE", !49, i64 0, !49, i64 4, !52, i64 8, !54, i64 48, !49, i64 56, !49, i64 60, !49, i64 64, !49, i64 68, !49, i64 72, !49, i64 76, !49, i64 80, !54, i64 88, !54, i64 96}
!49 = !{!"int", !50, i64 0}
!50 = !{!"omnipotent char", !51, i64 0}
!51 = !{!"Simple C++ TBAA"}
!52 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !53, i64 0, !54, i64 8, !54, i64 16, !54, i64 24, !49, i64 32, !49, i64 36}
!53 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!54 = !{!"any pointer", !50, i64 0}
!55 = !{!48, !49, i64 4}
!56 = !{!48, !54, i64 48}
!57 = !{!48, !49, i64 56}
!58 = !{!48, !54, i64 88}
!59 = !{!48, !54, i64 96}
!60 = !{!61, !61, i64 0}
!61 = !{!"vtable pointer", !51, i64 0}
!62 = !{!"VP", i32 0, i64 3, i64 8345045103670217670, i64 3}
!63 = !{!"VP", i32 1, i64 3, i64 256, i64 3}
!64 = !{!"branch_weights", i32 3, i32 0}
!65 = !{!66, !67, i64 0}
!66 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIPNS_11PrefMapElemEEE", !67, i64 0, !49, i64 4, !49, i64 8, !54, i64 16, !54, i64 24}
!67 = !{!"bool", !50, i64 0}
!68 = !{!66, !49, i64 4}
!69 = !{!66, !49, i64 8}
!70 = !{!66, !54, i64 16}
!71 = !{!66, !54, i64 24}
!72 = !{!"VP", i32 1, i64 3, i64 128, i64 3}
!73 = !{!"branch_weights", i32 0, i32 1}
!74 = !{!54, !54, i64 0}
!75 = !{!"branch_weights", i32 3, i32 26}
!76 = !{!77, !54, i64 24}
!77 = !{!"_ZTSN11xercesc_2_79ElemStack9StackElemE", !54, i64 0, !49, i64 8, !49, i64 12, !49, i64 16, !54, i64 24, !54, i64 32, !49, i64 40, !49, i64 44, !67, i64 48, !67, i64 49, !67, i64 50, !49, i64 52, !54, i64 56, !49, i64 64, !54, i64 72, !49, i64 80, !49, i64 84}
!78 = !{!"VP", i32 0, i64 26, i64 -7405368087501025645, i64 26}
!79 = !{!77, !54, i64 32}
!80 = !{!77, !54, i64 72}
!81 = !{!"branch_weights", i32 0, i32 26}
!82 = !{!"branch_weights", i32 29, i32 0}
!83 = distinct !{!83, !84, !85}
!84 = !{!"llvm.loop.mustprogress"}
!85 = !{!"llvm.loop.unroll.disable"}
!86 = !{!"VP", i32 0, i64 3, i64 -7405368087501025645, i64 3}
!87 = !{!"branch_weights", i32 0, i32 3}
!88 = !{!"function_entry_count", i64 0}
!89 = !{!"function_entry_count", i64 833461}
!90 = !{!48, !49, i64 60}
!91 = !{!"branch_weights", i32 0, i32 833461}
!92 = !{!"branch_weights", i32 18, i32 833443}
!93 = !{!77, !49, i64 12}
!94 = !{!77, !49, i64 40}
!95 = !{!77, !49, i64 80}
!96 = !{!77, !54, i64 0}
!97 = !{!77, !49, i64 8}
!98 = !{!77, !49, i64 16}
!99 = !{!48, !49, i64 64}
!100 = !{!77, !49, i64 64}
!101 = !{!77, !49, i64 52}
!102 = !{!77, !54, i64 56}
!103 = !{!"function_entry_count", i64 390}
!104 = !{!"branch_weights", i32 0, i32 390}
!105 = !{!"branch_weights", i32 8, i32 382}
!106 = !{!"function_entry_count", i64 833851}
!107 = !{!"branch_weights", i32 0, i32 833851}
!108 = !{!"function_entry_count", i64 833299}
!109 = !{!"branch_weights", i32 0, i32 833299}
!110 = !{!"branch_weights", i32 833299, i32 0}
!111 = !{!"branch_weights", i32 69, i32 833230}
!112 = !{!"branch_weights", i32 18, i32 51}
!113 = !{!"VP", i32 0, i64 69, i64 8345045103670217670, i64 69}
!114 = !{!"branch_weights", i32 51, i32 72099}
!115 = distinct !{!115, !84, !85}
!116 = !{!"VP", i32 0, i64 69, i64 -7405368087501025645, i64 69}
!117 = !{!"function_entry_count", i64 3620299}
!118 = !{!"branch_weights", i32 0, i32 3620299}
!119 = !{!"function_entry_count", i64 4}
!120 = !{!"branch_weights", i32 0, i32 4}
!121 = !{!52, !54, i64 24}
!122 = !{!"branch_weights", i32 2, i32 2}
!123 = !{!124, !49, i64 0}
!124 = !{!"_ZTSN11xercesc_2_713XMLStringPool8PoolElemE", !49, i64 0, !54, i64 8}
!125 = !{!77, !49, i64 44}
!126 = !{!"branch_weights", i32 2, i32 0}
!127 = !{!"VP", i32 0, i64 2, i64 8345045103670217670, i64 2}
!128 = !{!"VP", i32 1, i64 2, i64 0, i64 2}
!129 = !{!"VP", i32 0, i64 2, i64 -7405368087501025645, i64 2}
!130 = !{!131, !49, i64 0}
!131 = !{!"_ZTSN11xercesc_2_711PrefMapElemE", !49, i64 0, !49, i64 4}
!132 = !{!131, !49, i64 4}
!133 = !{!"function_entry_count", i64 1216438}
!134 = !{!67, !67, i64 0}
!135 = !{!136, !54, i64 40}
!136 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEEE", !54, i64 0, !67, i64 8, !54, i64 16, !49, i64 24, !49, i64 28, !49, i64 32, !54, i64 40}
!137 = !{!136, !49, i64 24}
!138 = !{!136, !54, i64 0}
!139 = !{!"VP", i32 0, i64 1216438, i64 3024540859536234746, i64 1216438}
!140 = !{!136, !54, i64 16}
!141 = !{!"branch_weights", i32 1, i32 289}
!142 = !{!143, !54, i64 16}
!143 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_13XMLStringPool8PoolElemEEE", !54, i64 0, !54, i64 8, !54, i64 16}
!144 = !{!"VP", i32 0, i64 1216585, i64 -1309333655503989351, i64 1216585}
!145 = !{!"branch_weights", i32 1798124, i32 508}
!146 = !{!"branch_weights", i32 289, i32 1798343}
!147 = distinct !{!147, !84, !85}
!148 = !{!"branch_weights", i32 290, i32 1798124}
!149 = !{!143, !54, i64 0}
!150 = !{!"branch_weights", i32 0, i32 1216438}
!151 = !{!152, !152, i64 0}
!152 = !{!"short", !50, i64 0}
!153 = !{!"branch_weights", i32 382975, i32 833463}
!154 = !{!48, !49, i64 72}
!155 = !{!"branch_weights", i32 0, i32 833463}
!156 = !{!48, !49, i64 68}
!157 = !{!48, !49, i64 80}
!158 = !{!48, !49, i64 76}
!159 = !{!"branch_weights", i32 3789203, i32 833463}
!160 = !{!"branch_weights", i32 0, i32 833465}
!161 = distinct !{!161, !84, !85}
!162 = !{!"branch_weights", i32 833463, i32 2}
!163 = !{!"branch_weights", i32 833463, i32 0, i32 3789203}
!164 = !{!"branch_weights", i32 0, i32 4622666}
!165 = distinct !{!165, !84, !85}
!166 = distinct !{!166, !84, !85}
!167 = distinct !{!167, !84, !85}
!168 = !{!169, !49, i64 0}
!169 = !{!"_ZTSN11xercesc_2_711WFElemStackE", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !49, i64 16, !49, i64 20, !49, i64 24, !49, i64 28, !49, i64 32, !49, i64 36, !54, i64 40, !54, i64 48, !52, i64 56, !54, i64 96}
!170 = !{!169, !49, i64 4}
!171 = !{!169, !49, i64 8}
!172 = !{!169, !54, i64 96}
!173 = !{!169, !54, i64 48}
!174 = !{!175, !54, i64 16}
!175 = !{!"_ZTSN11xercesc_2_711WFElemStack9StackElemE", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !54, i64 16}
!176 = distinct !{!176, !84, !85}
!177 = !{!169, !54, i64 40}
!178 = !{!169, !49, i64 12}
!179 = !{!175, !49, i64 12}
!180 = !{!175, !49, i64 8}
!181 = !{!169, !49, i64 16}
!182 = !{!175, !49, i64 4}
!183 = !{!175, !49, i64 0}
!184 = !{!169, !49, i64 36}
!185 = !{!169, !49, i64 24}
!186 = !{!169, !49, i64 20}
!187 = !{!169, !49, i64 32}
!188 = !{!169, !49, i64 28}
!189 = distinct !{!189, !84, !85}
!190 = !{!191, !54, i64 40}
!191 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !192, i64 8, !54, i64 16, !49, i64 24, !54, i64 32, !54, i64 40}
!192 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !50, i64 0}
!193 = !{!"function_entry_count", i64 581976}
!194 = !{!"VP", i32 0, i64 581976, i64 3024540859536234746, i64 581976}
!195 = !{!"VP", i32 0, i64 582046, i64 -1309333655503989351, i64 582046}
!196 = distinct !{!196, !84, !85}
