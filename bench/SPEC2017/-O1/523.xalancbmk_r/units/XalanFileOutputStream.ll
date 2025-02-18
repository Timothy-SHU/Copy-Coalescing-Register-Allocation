; ModuleID = 'XalanFileOutputStream.cpp'
source_filename = "XalanFileOutputStream.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanFileOutputStream" = type { %"class.xalanc_1_10::XalanOutputStream", %"class.xalanc_1_10::XalanDOMString", ptr }
%"class.xalanc_1_10::XalanOutputStream" = type { ptr, i32, ptr, i32, %"class.xalanc_1_10::XalanVector", %"class.xalanc_1_10::XalanDOMString", i8, i8, %"class.xalanc_1_10::XalanVector.0" }

$__clang_call_terminate = comdat any

$_ZNK11xalanc_1_1021XalanFileOutputStream34XalanFileOutputStreamOpenException7getTypeEv = comdat any

$_ZNK11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteException7getTypeEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

@_ZN11xalanc_1_1021XalanFileOutputStream34XalanFileOutputStreamOpenException6m_typeE = dso_local constant [35 x i16] [i16 88, i16 97, i16 108, i16 97, i16 110, i16 70, i16 105, i16 108, i16 101, i16 79, i16 117, i16 116, i16 112, i16 117, i16 116, i16 83, i16 116, i16 114, i16 101, i16 97, i16 109, i16 79, i16 112, i16 101, i16 110, i16 69, i16 120, i16 99, i16 101, i16 112, i16 116, i16 105, i16 111, i16 110, i16 0], align 16
@_ZN11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteException6m_typeE = dso_local constant [36 x i16] [i16 88, i16 97, i16 108, i16 97, i16 110, i16 70, i16 105, i16 108, i16 101, i16 79, i16 117, i16 116, i16 112, i16 117, i16 116, i16 83, i16 116, i16 114, i16 101, i16 97, i16 109, i16 87, i16 114, i16 105, i16 116, i16 101, i16 69, i16 120, i16 99, i16 101, i16 112, i16 116, i16 105, i16 111, i16 110, i16 0], align 16
@_ZTVN11xalanc_1_1021XalanFileOutputStreamE = dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1021XalanFileOutputStreamE, ptr @_ZN11xalanc_1_1021XalanFileOutputStreamD2Ev, ptr @_ZN11xalanc_1_1021XalanFileOutputStreamD0Ev, ptr @_ZN11xalanc_1_1017XalanOutputStream7newlineEv, ptr @_ZNK11xalanc_1_1017XalanOutputStream16getNewlineStringEv, ptr @_ZN11xalanc_1_1021XalanFileOutputStream9writeDataEPKcj, ptr @_ZN11xalanc_1_1021XalanFileOutputStream7doFlushEv] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1021XalanFileOutputStream34XalanFileOutputStreamOpenExceptionE = dso_local constant [75 x i8] c"N11xalanc_1_1021XalanFileOutputStream34XalanFileOutputStreamOpenExceptionE\00", align 1
@_ZTIN11xalanc_1_1017XalanOutputStream26XalanOutputStreamExceptionE = external constant ptr
@_ZTIN11xalanc_1_1021XalanFileOutputStream34XalanFileOutputStreamOpenExceptionE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1021XalanFileOutputStream34XalanFileOutputStreamOpenExceptionE, ptr @_ZTIN11xalanc_1_1017XalanOutputStream26XalanOutputStreamExceptionE }, align 8
@_ZTSN11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteExceptionE = dso_local constant [76 x i8] c"N11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteExceptionE\00", align 1
@_ZTIN11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteExceptionE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteExceptionE, ptr @_ZTIN11xalanc_1_1017XalanOutputStream26XalanOutputStreamExceptionE }, align 8
@_ZTVN11xalanc_1_1021XalanFileOutputStream34XalanFileOutputStreamOpenExceptionE = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1021XalanFileOutputStream34XalanFileOutputStreamOpenExceptionE, ptr @_ZN11xalanc_1_1021XalanFileOutputStream34XalanFileOutputStreamOpenExceptionD2Ev, ptr @_ZN11xalanc_1_1021XalanFileOutputStream34XalanFileOutputStreamOpenExceptionD0Ev, ptr @_ZNK11xalanc_1_1021XalanFileOutputStream34XalanFileOutputStreamOpenException7getTypeEv] }, align 8
@_ZTVN11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteExceptionE = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteExceptionE, ptr @_ZN11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteExceptionD2Ev, ptr @_ZN11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteExceptionD0Ev, ptr @_ZNK11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteException7getTypeEv] }, align 8
@_ZTSN11xalanc_1_1021XalanFileOutputStreamE = dso_local constant [39 x i8] c"N11xalanc_1_1021XalanFileOutputStreamE\00", align 1
@_ZTIN11xalanc_1_1017XalanOutputStreamE = external constant ptr
@_ZTIN11xalanc_1_1021XalanFileOutputStreamE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1021XalanFileOutputStreamE, ptr @_ZTIN11xalanc_1_1017XalanOutputStreamE }, align 8
@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2

@_ZN11xalanc_1_1021XalanFileOutputStreamC1ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerEj = dso_local unnamed_addr alias void (ptr, ptr, ptr, i32), ptr @_ZN11xalanc_1_1021XalanFileOutputStreamC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerEj
@_ZN11xalanc_1_1021XalanFileOutputStreamD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1021XalanFileOutputStreamD2Ev
@_ZN11xalanc_1_1021XalanFileOutputStream34XalanFileOutputStreamOpenExceptionC1ERKNS_14XalanDOMStringEiRS2_ = dso_local unnamed_addr alias void (ptr, ptr, i32, ptr), ptr @_ZN11xalanc_1_1021XalanFileOutputStream34XalanFileOutputStreamOpenExceptionC2ERKNS_14XalanDOMStringEiRS2_
@_ZN11xalanc_1_1021XalanFileOutputStream34XalanFileOutputStreamOpenExceptionD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1021XalanFileOutputStream34XalanFileOutputStreamOpenExceptionD2Ev
@_ZN11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteExceptionC1ERKNS_14XalanDOMStringEiRS2_ = dso_local unnamed_addr alias void (ptr, ptr, i32, ptr), ptr @_ZN11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteExceptionC2ERKNS_14XalanDOMStringEiRS2_
@_ZN11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteExceptionD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteExceptionD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021XalanFileOutputStreamC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %6 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  tail call void @_ZN11xalanc_1_1017XalanOutputStreamC2ERN11xercesc_2_713MemoryManagerEjjb(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3, i32 noundef 1024, i1 noundef zeroext true)
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1021XalanFileOutputStreamE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanFileOutputStream", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0, i32 noundef -1)
          to label %8 unwind label %61

8:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #11
  store ptr %2, ptr %5, align 8, !tbaa !41
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %13 = load i64, ptr %12, align 8, !tbaa !46
  %14 = icmp eq i64 %13, 0
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8
  %17 = select i1 %14, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %16
  %18 = invoke noundef zeroext i1 @_ZN11xalanc_1_1024TranscodeToLocalCodePageEPKtRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb(ptr noundef %17, ptr noundef nonnull align 8 dereferenceable(32) %5, i1 noundef zeroext true)
          to label %19 unwind label %22

19:                                               ; preds = %8
  %20 = load i64, ptr %9, align 8, !tbaa !48
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %39, label %36

22:                                               ; preds = %8
  %23 = landingpad { ptr, i32 }
          cleanup
  %24 = load i64, ptr %10, align 8, !tbaa !49
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %11, align 8, !tbaa !50
  %28 = load ptr, ptr %5, align 8, !tbaa !41
  %29 = load ptr, ptr %28, align 8, !tbaa !38
  %30 = getelementptr inbounds ptr, ptr %29, i64 3
  %31 = load ptr, ptr %30, align 8
  invoke void %31(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %27)
          to label %35 unwind label %32

32:                                               ; preds = %26
  %33 = landingpad { ptr, i32 }
          catch ptr null
  %34 = extractvalue { ptr, i32 } %33, 0
  call void @__clang_call_terminate(ptr %34) #12
  unreachable

35:                                               ; preds = %26, %22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #11
  br label %87

36:                                               ; preds = %19
  %37 = load ptr, ptr %11, align 8, !tbaa !50
  %38 = call noalias ptr @fopen(ptr noundef nonnull %37, ptr noundef nonnull @.str)
  br label %39

39:                                               ; preds = %36, %19
  %40 = phi ptr [ %38, %36 ], [ null, %19 ]
  %41 = load i64, ptr %10, align 8, !tbaa !49
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr %11, align 8, !tbaa !50
  %45 = load ptr, ptr %5, align 8, !tbaa !41
  %46 = load ptr, ptr %45, align 8, !tbaa !38
  %47 = getelementptr inbounds ptr, ptr %46, i64 3
  %48 = load ptr, ptr %47, align 8
  invoke void %48(ptr noundef nonnull align 8 dereferenceable(8) %45, ptr noundef %44)
          to label %52 unwind label %49

49:                                               ; preds = %43
  %50 = landingpad { ptr, i32 }
          catch ptr null
  %51 = extractvalue { ptr, i32 } %50, 0
  call void @__clang_call_terminate(ptr %51) #12
  unreachable

52:                                               ; preds = %39, %43
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #11
  %53 = getelementptr inbounds %"class.xalanc_1_10::XalanFileOutputStream", ptr %0, i64 0, i32 2
  store ptr %40, ptr %53, align 8, !tbaa !51
  %54 = icmp eq ptr %40, null
  br i1 %54, label %55, label %86

55:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #11
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %56 unwind label %63

56:                                               ; preds = %55
  %57 = call ptr @__cxa_allocate_exception(i64 104) #11
  %58 = tail call ptr @__errno_location() #13
  %59 = load i32, ptr %58, align 4, !tbaa !57
  invoke void @_ZN11xalanc_1_1021XalanFileOutputStream34XalanFileOutputStreamOpenExceptionC2ERKNS_14XalanDOMStringEiRS2_(ptr noundef nonnull align 8 dereferenceable(104) %57, ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %59, ptr noundef nonnull align 8 dereferenceable(36) %6)
          to label %60 unwind label %65

60:                                               ; preds = %56
  invoke void @__cxa_throw(ptr nonnull %57, ptr nonnull @_ZTIN11xalanc_1_1021XalanFileOutputStream34XalanFileOutputStreamOpenExceptionE, ptr nonnull @_ZN11xalanc_1_1021XalanFileOutputStream34XalanFileOutputStreamOpenExceptionD2Ev) #14
          to label %91 unwind label %67

61:                                               ; preds = %4
  %62 = landingpad { ptr, i32 }
          cleanup
  br label %89

63:                                               ; preds = %55
  %64 = landingpad { ptr, i32 }
          cleanup
  br label %84

65:                                               ; preds = %56
  %66 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %57) #11
  br label %69

67:                                               ; preds = %60
  %68 = landingpad { ptr, i32 }
          cleanup
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi { ptr, i32 } [ %68, %67 ], [ %66, %65 ]
  %71 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 2
  %72 = load i64, ptr %71, align 8, !tbaa !58
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !59
  %77 = load ptr, ptr %6, align 8, !tbaa !60
  %78 = load ptr, ptr %77, align 8, !tbaa !38
  %79 = getelementptr inbounds ptr, ptr %78, i64 3
  %80 = load ptr, ptr %79, align 8
  invoke void %80(ptr noundef nonnull align 8 dereferenceable(8) %77, ptr noundef %76)
          to label %84 unwind label %81

81:                                               ; preds = %74
  %82 = landingpad { ptr, i32 }
          catch ptr null
  %83 = extractvalue { ptr, i32 } %82, 0
  call void @__clang_call_terminate(ptr %83) #12
  unreachable

84:                                               ; preds = %74, %69, %63
  %85 = phi { ptr, i32 } [ %64, %63 ], [ %70, %69 ], [ %70, %74 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #11
  br label %87

86:                                               ; preds = %52
  ret void

87:                                               ; preds = %84, %35
  %88 = phi { ptr, i32 } [ %85, %84 ], [ %23, %35 ]
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #11
  br label %89

89:                                               ; preds = %87, %61
  %90 = phi { ptr, i32 } [ %88, %87 ], [ %62, %61 ]
  call void @_ZN11xalanc_1_1017XalanOutputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) #11
  resume { ptr, i32 } %90

91:                                               ; preds = %60
  unreachable
}

declare void @_ZN11xalanc_1_1017XalanOutputStreamC2ERN11xercesc_2_713MemoryManagerEjjb(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef, i1 noundef zeroext) unnamed_addr #1

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1017XalanOutputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(144)) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1021XalanFileOutputStream6createERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %4 = load ptr, ptr %1, align 8, !tbaa !38
  %5 = getelementptr inbounds ptr, ptr %4, i64 2
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 192)
  invoke void @_ZN11xalanc_1_1021XalanFileOutputStreamC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(192) %7, ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2)
          to label %8 unwind label %9

8:                                                ; preds = %3
  ret ptr %7

9:                                                ; preds = %3
  %10 = landingpad { ptr, i32 }
          cleanup
  %11 = icmp eq ptr %7, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr %1, align 8, !tbaa !38
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %7)
          to label %19 unwind label %16

16:                                               ; preds = %12
  %17 = landingpad { ptr, i32 }
          catch ptr null
  %18 = extractvalue { ptr, i32 } %17, 0
  tail call void @__clang_call_terminate(ptr %18) #12
  unreachable

19:                                               ; preds = %9, %12
  resume { ptr, i32 } %10
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1021XalanFileOutputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1021XalanFileOutputStreamE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanFileOutputStream", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @fclose(ptr noundef nonnull %3)
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanFileOutputStream", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #11
  tail call void @_ZN11xalanc_1_1017XalanOutputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) #11
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat !prof !37 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1021XalanFileOutputStreamD0Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #5 align 2 !prof !37 {
  tail call void @_ZN11xalanc_1_1021XalanFileOutputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #11
  tail call void @_ZdlPv(ptr noundef %0) #15
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021XalanFileOutputStream7doFlushEv(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %2 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanFileOutputStream", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = tail call i32 @fflush(ptr noundef %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %35, label %7

7:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #11
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !60
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %9)
  %10 = call ptr @__cxa_allocate_exception(i64 104) #11
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanFileOutputStream", ptr %0, i64 0, i32 1
  %12 = tail call ptr @__errno_location() #13
  %13 = load i32, ptr %12, align 4, !tbaa !57
  invoke void @_ZN11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteExceptionC2ERKNS_14XalanDOMStringEiRS2_(ptr noundef nonnull align 8 dereferenceable(104) %10, ptr noundef nonnull align 8 dereferenceable(36) %11, i32 noundef %13, ptr noundef nonnull align 8 dereferenceable(36) %2)
          to label %14 unwind label %15

14:                                               ; preds = %7
  invoke void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteExceptionE, ptr nonnull @_ZN11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteExceptionD2Ev) #14
          to label %36 unwind label %17

15:                                               ; preds = %7
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %10) #11
  br label %19

17:                                               ; preds = %14
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi { ptr, i32 } [ %18, %17 ], [ %16, %15 ]
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 2
  %22 = load i64, ptr %21, align 8, !tbaa !58
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !59
  %27 = load ptr, ptr %2, align 8, !tbaa !60
  %28 = load ptr, ptr %27, align 8, !tbaa !38
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %26)
          to label %34 unwind label %31

31:                                               ; preds = %24
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #12
  unreachable

34:                                               ; preds = %19, %24
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #11
  resume { ptr, i32 } %20

35:                                               ; preds = %1
  ret void

36:                                               ; preds = %14
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021XalanFileOutputStream9writeDataEPKcj(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %5 = zext i32 %2 to i64
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanFileOutputStream", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = tail call i64 @fwrite(ptr noundef %1, i64 noundef 1, i64 noundef %5, ptr noundef %7)
  %9 = icmp eq i64 %8, %5
  br i1 %9, label %38, label %10

10:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #11
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !60
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %12)
  %13 = call ptr @__cxa_allocate_exception(i64 104) #11
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanFileOutputStream", ptr %0, i64 0, i32 1
  %15 = tail call ptr @__errno_location() #13
  %16 = load i32, ptr %15, align 4, !tbaa !57
  invoke void @_ZN11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteExceptionC2ERKNS_14XalanDOMStringEiRS2_(ptr noundef nonnull align 8 dereferenceable(104) %13, ptr noundef nonnull align 8 dereferenceable(36) %14, i32 noundef %16, ptr noundef nonnull align 8 dereferenceable(36) %4)
          to label %17 unwind label %18

17:                                               ; preds = %10
  invoke void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteExceptionE, ptr nonnull @_ZN11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteExceptionD2Ev) #14
          to label %39 unwind label %20

18:                                               ; preds = %10
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %13) #11
  br label %22

20:                                               ; preds = %17
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi { ptr, i32 } [ %21, %20 ], [ %19, %18 ]
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 2
  %25 = load i64, ptr %24, align 8, !tbaa !58
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !59
  %30 = load ptr, ptr %4, align 8, !tbaa !60
  %31 = load ptr, ptr %30, align 8, !tbaa !38
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %29)
          to label %37 unwind label %34

34:                                               ; preds = %27
  %35 = landingpad { ptr, i32 }
          catch ptr null
  %36 = extractvalue { ptr, i32 } %35, 0
  call void @__clang_call_terminate(ptr %36) #12
  unreachable

37:                                               ; preds = %22, %27
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #11
  resume { ptr, i32 } %23

38:                                               ; preds = %3
  ret void

39:                                               ; preds = %17
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021XalanFileOutputStream34XalanFileOutputStreamOpenExceptionC2ERKNS_14XalanDOMStringEiRS2_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3) unnamed_addr #0 align 2 !prof !37 {
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 173, ptr noundef nonnull align 8 dereferenceable(36) %1)
  %6 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018FormatMessageLocalERKNS_14XalanDOMStringEiRS0_(ptr noundef nonnull align 8 dereferenceable(36) %5, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3)
  %7 = load ptr, ptr %3, align 8, !tbaa !60
  tail call void @_ZN11xalanc_1_1017XalanOutputStream26XalanOutputStreamExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1021XalanFileOutputStream34XalanFileOutputStreamOpenExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  ret void
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018FormatMessageLocalERKNS_14XalanDOMStringEiRS0_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1017XalanOutputStream26XalanOutputStreamExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1017XalanOutputStream26XalanOutputStreamExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1021XalanFileOutputStream34XalanFileOutputStreamOpenExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #5 align 2 !prof !37 {
  tail call void @_ZN11xalanc_1_1017XalanOutputStream26XalanOutputStreamExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #11
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1021XalanFileOutputStream34XalanFileOutputStreamOpenExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #5 align 2 !prof !37 {
  tail call void @_ZN11xalanc_1_1017XalanOutputStream26XalanOutputStreamExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #11
  tail call void @_ZdlPv(ptr noundef %0) #15
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteExceptionC2ERKNS_14XalanDOMStringEiRS2_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3) unnamed_addr #0 align 2 !prof !37 {
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 172, ptr noundef nonnull align 8 dereferenceable(36) %1)
  %6 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018FormatMessageLocalERKNS_14XalanDOMStringEiRS0_(ptr noundef nonnull align 8 dereferenceable(36) %5, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3)
  %7 = load ptr, ptr %3, align 8, !tbaa !60
  tail call void @_ZN11xalanc_1_1017XalanOutputStream26XalanOutputStreamExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #5 align 2 !prof !37 {
  tail call void @_ZN11xalanc_1_1017XalanOutputStream26XalanOutputStreamExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #11
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #5 align 2 !prof !37 {
  tail call void @_ZN11xalanc_1_1017XalanOutputStream26XalanOutputStreamExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #11
  tail call void @_ZdlPv(ptr noundef %0) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1021XalanFileOutputStream34XalanFileOutputStreamOpenException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #5 comdat align 2 !prof !37 {
  ret ptr @_ZN11xalanc_1_1021XalanFileOutputStream34XalanFileOutputStreamOpenException6m_typeE
}

declare void @_ZN11xalanc_1_1017XalanOutputStream7newlineEv(ptr noundef nonnull align 8 dereferenceable(144)) unnamed_addr #1

declare noundef ptr @_ZNK11xalanc_1_1017XalanOutputStream16getNewlineStringEv(ptr noundef nonnull align 8 dereferenceable(144)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #5 comdat align 2 !prof !37 {
  ret ptr @_ZN11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteException6m_typeE
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #6

declare noundef zeroext i1 @_ZN11xalanc_1_1024TranscodeToLocalCodePageEPKtRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !58
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !62

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  %8 = load ptr, ptr %0, align 8, !tbaa !60
  %9 = load ptr, ptr %8, align 8, !tbaa !38
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !63

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #12
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind willreturn memory(none) }
attributes #14 = { noreturn }
attributes #15 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!36}

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
!34 = distinct !{!35}
!35 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"vtable pointer", !40, i64 0}
!40 = !{!"Simple C++ TBAA"}
!41 = !{!42, !43, i64 0}
!42 = !{!"_ZTSN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE", !43, i64 0, !45, i64 8, !45, i64 16, !43, i64 24}
!43 = !{!"any pointer", !44, i64 0}
!44 = !{!"omnipotent char", !40, i64 0}
!45 = !{!"long", !44, i64 0}
!46 = !{!47, !45, i64 8}
!47 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !43, i64 0, !45, i64 8, !45, i64 16, !43, i64 24}
!48 = !{!42, !45, i64 8}
!49 = !{!42, !45, i64 16}
!50 = !{!42, !43, i64 24}
!51 = !{!52, !43, i64 184}
!52 = !{!"_ZTSN11xalanc_1_1021XalanFileOutputStreamE", !53, i64 0, !55, i64 144, !43, i64 184}
!53 = !{!"_ZTSN11xalanc_1_1017XalanOutputStreamE", !54, i64 8, !43, i64 16, !54, i64 24, !47, i64 32, !55, i64 64, !56, i64 104, !56, i64 105, !42, i64 112}
!54 = !{!"int", !44, i64 0}
!55 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !47, i64 0, !54, i64 32}
!56 = !{!"bool", !44, i64 0}
!57 = !{!54, !54, i64 0}
!58 = !{!47, !45, i64 16}
!59 = !{!47, !43, i64 24}
!60 = !{!47, !43, i64 0}
!61 = !{!"function_entry_count", i64 42470003}
!62 = !{!"branch_weights", i32 52000, i32 42418003}
!63 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
