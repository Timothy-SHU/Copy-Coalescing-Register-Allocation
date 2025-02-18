; ModuleID = 'XSAnnotation.cpp'
source_filename = "XSAnnotation.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::XSAnnotation" = type { %"class.xercesc_2_7::XSerializable", %"class.xercesc_2_7::XSObject.base", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::XSObject.base" = type <{ ptr, i32, [4 x i8], ptr, ptr, i32 }>
%"class.xercesc_2_7::MemBufInputSource" = type { %"class.xercesc_2_7::InputSource.base", i8, i32, i8, ptr }
%"class.xercesc_2_7::InputSource.base" = type <{ ptr, ptr, ptr, ptr, ptr, i8 }>

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_713XSerializableD2Ev = comdat any

$_ZN11xercesc_2_713XSerializableD0Ev = comdat any

$_ZTSN11xercesc_2_713XSerializableE = comdat any

$_ZTIN11xercesc_2_713XSerializableE = comdat any

$_ZTVN11xercesc_2_713XSerializableE = comdat any

@_ZTVN11xercesc_2_712XSAnnotationE = dso_local unnamed_addr constant { [7 x ptr], [8 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_712XSAnnotationE, ptr @_ZN11xercesc_2_712XSAnnotationD2Ev, ptr @_ZN11xercesc_2_712XSAnnotationD0Ev, ptr @_ZNK11xercesc_2_712XSAnnotation14isSerializableEv, ptr @_ZN11xercesc_2_712XSAnnotation9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_712XSAnnotation12getProtoTypeEv], [8 x ptr] [ptr inttoptr (i64 -8 to ptr), ptr @_ZTIN11xercesc_2_712XSAnnotationE, ptr @_ZThn8_N11xercesc_2_712XSAnnotationD1Ev, ptr @_ZThn8_N11xercesc_2_712XSAnnotationD0Ev, ptr @_ZN11xercesc_2_78XSObject7getNameEv, ptr @_ZN11xercesc_2_78XSObject12getNamespaceEv, ptr @_ZN11xercesc_2_78XSObject16getNamespaceItemEv, ptr @_ZNK11xercesc_2_78XSObject5getIdEv] }, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZN11xercesc_2_76XMLUni21fgXMLChEncodingStringE = external constant [0 x i16], align 2
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZN11xercesc_2_76XMLUni20fgSAX2CoreNameSpacesE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni20fgSAX2CoreValidationE = external constant [0 x i16], align 2
@.str.1 = private unnamed_addr constant [13 x i8] c"XSAnnotation\00", align 1
@_ZN11xercesc_2_712XSAnnotation17classXSAnnotationE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str.1, ptr @_ZN11xercesc_2_712XSAnnotation12createObjectEPNS_13MemoryManagerE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713XSerializableE\00", comdat, align 1
@_ZTIN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XSerializableE }, comdat, align 8
@_ZTSN11xercesc_2_712XSAnnotationE = dso_local constant [30 x i8] c"N11xercesc_2_712XSAnnotationE\00", align 1
@_ZTIN11xercesc_2_78XSObjectE = external constant ptr
@_ZTIN11xercesc_2_712XSAnnotationE = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_712XSAnnotationE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XSerializableE, i64 2, ptr @_ZTIN11xercesc_2_78XSObjectE, i64 2050 }, align 8
@_ZTVN11xercesc_2_713XSerializableE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713XSerializableE, ptr @_ZN11xercesc_2_713XSerializableD2Ev, ptr @_ZN11xercesc_2_713XSerializableD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8

@_ZN11xercesc_2_712XSAnnotationC1EPKtPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_712XSAnnotationC2EPKtPNS_13MemoryManagerE
@_ZN11xercesc_2_712XSAnnotationC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_712XSAnnotationC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_712XSAnnotationD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_712XSAnnotationD2Ev

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #0

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat !prof !34 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #14
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712XSAnnotationC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XSerializableE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  tail call void @_ZN11xercesc_2_78XSObjectC2ENS_11XSConstants14COMPONENT_TYPEEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, i32 noundef 12, ptr noundef null, ptr noundef %2)
  store ptr getelementptr inbounds ({ [7 x ptr], [8 x ptr] }, ptr @_ZTVN11xercesc_2_712XSAnnotationE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  store ptr getelementptr inbounds ({ [7 x ptr], [8 x ptr] }, ptr @_ZTVN11xercesc_2_712XSAnnotationE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !35
  %5 = icmp eq ptr %1, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %3
  %7 = load i16, ptr %1, align 2, !tbaa !38
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %6, %9
  %10 = phi ptr [ %11, %9 ], [ %1, %6 ]
  %11 = getelementptr inbounds i16, ptr %10, i64 1
  %12 = load i16, ptr %11, align 2, !tbaa !38
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %9, !llvm.loop !41

14:                                               ; preds = %9
  %15 = ptrtoint ptr %11 to i64
  %16 = ptrtoint ptr %1 to i64
  %17 = sub i64 %15, %16
  %18 = add i64 %17, 2
  %19 = and i64 %18, 8589934590
  br label %20

20:                                               ; preds = %14, %6
  %21 = phi i64 [ %19, %14 ], [ 2, %6 ]
  %22 = load ptr, ptr %2, align 8, !tbaa !35
  %23 = getelementptr inbounds ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8
  %25 = invoke noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %21)
          to label %26 unwind label %31

26:                                               ; preds = %20
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %25, ptr nonnull align 2 %1, i64 %21, i1 false)
  br label %27

27:                                               ; preds = %26, %3
  %28 = phi ptr [ %25, %26 ], [ null, %3 ]
  %29 = getelementptr inbounds %"class.xercesc_2_7::XSAnnotation", ptr %0, i64 0, i32 2
  store ptr %28, ptr %29, align 8, !tbaa !44
  %30 = getelementptr inbounds %"class.xercesc_2_7::XSAnnotation", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %30, i8 0, i64 24, i1 false)
  ret void

31:                                               ; preds = %20
  %32 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_78XSObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %4) #14
  resume { ptr, i32 } %32
}

declare void @_ZN11xercesc_2_78XSObjectC2ENS_11XSConstants14COMPONENT_TYPEEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_78XSObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712XSAnnotationC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XSerializableE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  tail call void @_ZN11xercesc_2_78XSObjectC2ENS_11XSConstants14COMPONENT_TYPEEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 12, ptr noundef null, ptr noundef %1)
  store ptr getelementptr inbounds ({ [7 x ptr], [8 x ptr] }, ptr @_ZTVN11xercesc_2_712XSAnnotationE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  store ptr getelementptr inbounds ({ [7 x ptr], [8 x ptr] }, ptr @_ZTVN11xercesc_2_712XSAnnotationE, i64 0, inrange i32 1, i64 2), ptr %3, align 8, !tbaa !35
  %4 = getelementptr inbounds %"class.xercesc_2_7::XSAnnotation", ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_712XSAnnotationD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store ptr getelementptr inbounds ({ [7 x ptr], [8 x ptr] }, ptr @_ZTVN11xercesc_2_712XSAnnotationE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [7 x ptr], [8 x ptr] }, ptr @_ZTVN11xercesc_2_712XSAnnotationE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !35
  %3 = getelementptr inbounds i8, ptr %0, i64 32
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = getelementptr inbounds %"class.xercesc_2_7::XSAnnotation", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = load ptr, ptr %4, align 8, !tbaa !35
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  invoke void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6)
          to label %10 unwind label %26

10:                                               ; preds = %1
  %11 = getelementptr inbounds %"class.xercesc_2_7::XSAnnotation", ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !52
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %12, align 8, !tbaa !35
  %16 = getelementptr inbounds ptr, ptr %15, i64 1
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(80) %12) #14
  br label %18

18:                                               ; preds = %14, %10
  %19 = load ptr, ptr %3, align 8, !tbaa !51
  %20 = getelementptr inbounds %"class.xercesc_2_7::XSAnnotation", ptr %0, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !53
  %22 = load ptr, ptr %19, align 8, !tbaa !35
  %23 = getelementptr inbounds ptr, ptr %22, i64 3
  %24 = load ptr, ptr %23, align 8
  invoke void %24(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %21)
          to label %25 unwind label %26

25:                                               ; preds = %18
  tail call void @_ZN11xercesc_2_78XSObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %2) #14
  ret void

26:                                               ; preds = %18, %1
  %27 = landingpad { ptr, i32 }
          catch ptr null
  %28 = extractvalue { ptr, i32 } %27, 0
  tail call void @__clang_call_terminate(ptr %28) #15
  unreachable
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn8_N11xercesc_2_712XSAnnotationD1Ev(ptr noundef %0) unnamed_addr #6 align 2 !prof !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_712XSAnnotationD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %2) #14
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_712XSAnnotationD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #5 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_712XSAnnotationD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn8_N11xercesc_2_712XSAnnotationD0Ev(ptr noundef %0) unnamed_addr #6 align 2 !prof !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_712XSAnnotationD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %2) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %2) #14
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712XSAnnotation15writeAnnotationEPNS_7DOMNodeENS0_17ANNOTATION_TARGETE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = getelementptr inbounds i8, ptr %0, i64 32
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  %6 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 224, ptr noundef %5)
  %7 = load ptr, ptr %4, align 8, !tbaa !51
  invoke void @_ZN11xercesc_2_715XercesDOMParserC1EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE(ptr noundef nonnull align 8 dereferenceable(224) %6, ptr noundef null, ptr noundef %7, ptr noundef null)
          to label %8 unwind label %48

8:                                                ; preds = %3
  tail call void @_ZN11xercesc_2_717AbstractDOMParser15setDoNamespacesEb(ptr noundef nonnull align 8 dereferenceable(200) %6, i1 noundef zeroext true)
  tail call void @_ZN11xercesc_2_717AbstractDOMParser19setValidationSchemeENS0_10ValSchemesE(ptr noundef nonnull align 8 dereferenceable(200) %6, i32 noundef 0)
  %9 = icmp eq i32 %2, 1
  br i1 %9, label %10, label %15

10:                                               ; preds = %8
  %11 = load ptr, ptr %1, align 8, !tbaa !35
  %12 = getelementptr inbounds ptr, ptr %11, i64 12
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %19

15:                                               ; preds = %8
  %16 = icmp eq ptr %1, null
  %17 = getelementptr inbounds i8, ptr %1, i64 -24
  %18 = select i1 %16, ptr null, ptr %17
  br label %19

19:                                               ; preds = %15, %10
  %20 = phi ptr [ %14, %10 ], [ %18, %15 ]
  %21 = load ptr, ptr %4, align 8, !tbaa !51
  %22 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %21)
  %23 = getelementptr inbounds %"class.xercesc_2_7::XSAnnotation", ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !44
  %25 = icmp eq ptr %24, null
  br i1 %25, label %40, label %26

26:                                               ; preds = %19
  %27 = load i16, ptr %24, align 2, !tbaa !38
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %26, %29
  %30 = phi ptr [ %31, %29 ], [ %24, %26 ]
  %31 = getelementptr inbounds i16, ptr %30, i64 1
  %32 = load i16, ptr %31, align 2, !tbaa !38
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %34, label %29, !llvm.loop !41

34:                                               ; preds = %29
  %35 = ptrtoint ptr %31 to i64
  %36 = ptrtoint ptr %24 to i64
  %37 = sub i64 %35, %36
  %38 = trunc i64 %37 to i32
  %39 = and i32 %38, -2
  br label %40

40:                                               ; preds = %19, %26, %34
  %41 = phi i32 [ %39, %34 ], [ 0, %26 ], [ 0, %19 ]
  %42 = load ptr, ptr %4, align 8, !tbaa !51
  invoke void @_ZN11xercesc_2_717MemBufInputSourceC1EPKhjPKcbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %22, ptr noundef %24, i32 noundef %41, ptr noundef nonnull @.str, i1 noundef zeroext false, ptr noundef %42)
          to label %43 unwind label %50

43:                                               ; preds = %40
  %44 = load ptr, ptr %22, align 8, !tbaa !35
  %45 = getelementptr inbounds ptr, ptr %44, i64 7
  %46 = load ptr, ptr %45, align 8
  tail call void %46(ptr noundef nonnull align 8 dereferenceable(41) %22, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni21fgXMLChEncodingStringE)
  %47 = getelementptr inbounds %"class.xercesc_2_7::MemBufInputSource", ptr %22, i64 0, i32 3
  store i8 0, ptr %47, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_717AbstractDOMParser5parseERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(200) %6, ptr noundef nonnull align 8 dereferenceable(41) %22)
          to label %60 unwind label %52

48:                                               ; preds = %3
  %49 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %6, ptr noundef %5) #14
  br label %84

50:                                               ; preds = %40
  %51 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %22, ptr noundef %21) #14
  br label %84

52:                                               ; preds = %43
  %53 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  %54 = extractvalue { ptr, i32 } %53, 1
  %55 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #14
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %84

57:                                               ; preds = %52
  %58 = extractvalue { ptr, i32 } %53, 0
  %59 = tail call ptr @__cxa_begin_catch(ptr %58) #14
  tail call void @__cxa_end_catch()
  br label %60

60:                                               ; preds = %43, %57
  %61 = tail call noundef ptr @_ZN11xercesc_2_717AbstractDOMParser11getDocumentEv(ptr noundef nonnull align 8 dereferenceable(200) %6)
  %62 = load ptr, ptr %61, align 8, !tbaa !35
  %63 = getelementptr inbounds ptr, ptr %62, i64 13
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(32) %61)
  %66 = load ptr, ptr %20, align 8, !tbaa !35
  %67 = getelementptr inbounds ptr, ptr %66, i64 15
  %68 = load ptr, ptr %67, align 8
  %69 = tail call noundef ptr %68(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef %65, i1 noundef zeroext true)
  %70 = load ptr, ptr %1, align 8, !tbaa !35
  %71 = getelementptr inbounds ptr, ptr %70, i64 7
  %72 = load ptr, ptr %71, align 8
  %73 = tail call noundef ptr %72(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %74 = load ptr, ptr %1, align 8, !tbaa !35
  %75 = getelementptr inbounds ptr, ptr %74, i64 14
  %76 = load ptr, ptr %75, align 8
  %77 = tail call noundef ptr %76(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %69, ptr noundef %73)
  %78 = load ptr, ptr %6, align 8, !tbaa !35
  %79 = getelementptr inbounds ptr, ptr %78, i64 1
  %80 = load ptr, ptr %79, align 8
  tail call void %80(ptr noundef nonnull align 8 dereferenceable(224) %6) #14
  %81 = load ptr, ptr %22, align 8, !tbaa !35
  %82 = getelementptr inbounds ptr, ptr %81, i64 1
  %83 = load ptr, ptr %82, align 8
  tail call void %83(ptr noundef nonnull align 8 dereferenceable(64) %22) #14
  ret void

84:                                               ; preds = %50, %52, %48
  %85 = phi { ptr, i32 } [ %49, %48 ], [ %53, %52 ], [ %51, %50 ]
  resume { ptr, i32 } %85
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_715XercesDOMParserC1EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_717AbstractDOMParser15setDoNamespacesEb(ptr noundef nonnull align 8 dereferenceable(200), i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN11xercesc_2_717AbstractDOMParser19setValidationSchemeENS0_10ValSchemesE(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_717MemBufInputSourceC1EPKhjPKcbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef) unnamed_addr #4

declare void @_ZN11xercesc_2_717AbstractDOMParser5parseERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(41)) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #8

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

declare noundef ptr @_ZN11xercesc_2_717AbstractDOMParser11getDocumentEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712XSAnnotation15writeAnnotationEPNS_14ContentHandlerE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = getelementptr inbounds i8, ptr %0, i64 32
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 248, ptr noundef %4)
  invoke void @_ZN11xercesc_2_717SAX2XMLReaderImplC1EPNS_13MemoryManagerEPNS_14XMLGrammarPoolE(ptr noundef nonnull align 8 dereferenceable(248) %5, ptr noundef %4, ptr noundef null)
          to label %10 unwind label %8

6:                                                ; preds = %50, %52, %8
  %7 = phi { ptr, i32 } [ %9, %8 ], [ %53, %52 ], [ %51, %50 ]
  resume { ptr, i32 } %7

8:                                                ; preds = %2
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %4) #14
  br label %6

10:                                               ; preds = %2
  %11 = load ptr, ptr %5, align 8, !tbaa !35
  %12 = getelementptr inbounds ptr, ptr %11, i64 12
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni20fgSAX2CoreNameSpacesE, i1 noundef zeroext true)
  %14 = load ptr, ptr %5, align 8, !tbaa !35
  %15 = getelementptr inbounds ptr, ptr %14, i64 12
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni20fgSAX2CoreValidationE, i1 noundef zeroext false)
  %17 = load ptr, ptr %5, align 8, !tbaa !35
  %18 = getelementptr inbounds ptr, ptr %17, i64 8
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1)
  %20 = load ptr, ptr %3, align 8, !tbaa !51
  %21 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %20)
  %22 = getelementptr inbounds %"class.xercesc_2_7::XSAnnotation", ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !44
  %24 = icmp eq ptr %23, null
  br i1 %24, label %39, label %25

25:                                               ; preds = %10
  %26 = load i16, ptr %23, align 2, !tbaa !38
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %25, %28
  %29 = phi ptr [ %30, %28 ], [ %23, %25 ]
  %30 = getelementptr inbounds i16, ptr %29, i64 1
  %31 = load i16, ptr %30, align 2, !tbaa !38
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %28, !llvm.loop !41

33:                                               ; preds = %28
  %34 = ptrtoint ptr %30 to i64
  %35 = ptrtoint ptr %23 to i64
  %36 = sub i64 %34, %35
  %37 = trunc i64 %36 to i32
  %38 = and i32 %37, -2
  br label %39

39:                                               ; preds = %10, %25, %33
  %40 = phi i32 [ %38, %33 ], [ 0, %25 ], [ 0, %10 ]
  %41 = load ptr, ptr %3, align 8, !tbaa !51
  invoke void @_ZN11xercesc_2_717MemBufInputSourceC1EPKhjPKcbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %21, ptr noundef %23, i32 noundef %40, ptr noundef nonnull @.str, i1 noundef zeroext false, ptr noundef %41)
          to label %42 unwind label %50

42:                                               ; preds = %39
  %43 = load ptr, ptr %21, align 8, !tbaa !35
  %44 = getelementptr inbounds ptr, ptr %43, i64 7
  %45 = load ptr, ptr %44, align 8
  tail call void %45(ptr noundef nonnull align 8 dereferenceable(41) %21, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni21fgXMLChEncodingStringE)
  %46 = getelementptr inbounds %"class.xercesc_2_7::MemBufInputSource", ptr %21, i64 0, i32 3
  store i8 0, ptr %46, align 8, !tbaa !54
  %47 = load ptr, ptr %5, align 8, !tbaa !35
  %48 = getelementptr inbounds ptr, ptr %47, i64 14
  %49 = load ptr, ptr %48, align 8
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(41) %21)
          to label %60 unwind label %52

50:                                               ; preds = %39
  %51 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %21, ptr noundef %20) #14
  br label %6

52:                                               ; preds = %42
  %53 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  %54 = extractvalue { ptr, i32 } %53, 1
  %55 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #14
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %6

57:                                               ; preds = %52
  %58 = extractvalue { ptr, i32 } %53, 0
  %59 = tail call ptr @__cxa_begin_catch(ptr %58) #14
  tail call void @__cxa_end_catch()
  br label %60

60:                                               ; preds = %57, %42
  %61 = load ptr, ptr %5, align 8, !tbaa !35
  %62 = getelementptr inbounds ptr, ptr %61, i64 1
  %63 = load ptr, ptr %62, align 8
  tail call void %63(ptr noundef nonnull align 8 dereferenceable(8) %5) #14
  %64 = load ptr, ptr %21, align 8, !tbaa !35
  %65 = getelementptr inbounds ptr, ptr %64, i64 1
  %66 = load ptr, ptr %65, align 8
  tail call void %66(ptr noundef nonnull align 8 dereferenceable(64) %21) #14
  ret void
}

; Function Attrs: cold mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_712XSAnnotation7setNextEPS0_(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #9 align 2 !prof !34 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi ptr [ %0, %2 ], [ %6, %3 ]
  %5 = getelementptr inbounds %"class.xercesc_2_7::XSAnnotation", ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %3

8:                                                ; preds = %3
  store ptr %1, ptr %5, align 8, !tbaa !52
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712XSAnnotation7getNextEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) local_unnamed_addr #10 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSAnnotation", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712XSAnnotation11setSystemIdEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSAnnotation", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8, ptr %0, i64 32
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %4)
  store ptr null, ptr %3, align 8, !tbaa !53
  br label %12

12:                                               ; preds = %6, %2
  %13 = icmp eq ptr %1, null
  br i1 %13, label %36, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds i8, ptr %0, i64 32
  %16 = load ptr, ptr %15, align 8, !tbaa !51
  %17 = load i16, ptr %1, align 2, !tbaa !38
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %14, %19
  %20 = phi ptr [ %21, %19 ], [ %1, %14 ]
  %21 = getelementptr inbounds i16, ptr %20, i64 1
  %22 = load i16, ptr %21, align 2, !tbaa !38
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %19, !llvm.loop !41

24:                                               ; preds = %19
  %25 = ptrtoint ptr %21 to i64
  %26 = ptrtoint ptr %1 to i64
  %27 = sub i64 %25, %26
  %28 = add i64 %27, 2
  %29 = and i64 %28, 8589934590
  br label %30

30:                                               ; preds = %24, %14
  %31 = phi i64 [ %29, %24 ], [ 2, %14 ]
  %32 = load ptr, ptr %16, align 8, !tbaa !35
  %33 = getelementptr inbounds ptr, ptr %32, i64 2
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(8) %16, i64 noundef %31)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %35, ptr nonnull align 2 %1, i64 %31, i1 false)
  store ptr %35, ptr %3, align 8, !tbaa !53
  br label %36

36:                                               ; preds = %30, %12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712XSAnnotation12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #3 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %0)
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XSerializableE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !35
  %3 = getelementptr inbounds i8, ptr %2, i64 8
  invoke void @_ZN11xercesc_2_78XSObjectC2ENS_11XSConstants14COMPONENT_TYPEEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 12, ptr noundef null, ptr noundef %0)
          to label %4 unwind label %6

4:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [7 x ptr], [8 x ptr] }, ptr @_ZTVN11xercesc_2_712XSAnnotationE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !35
  store ptr getelementptr inbounds ({ [7 x ptr], [8 x ptr] }, ptr @_ZTVN11xercesc_2_712XSAnnotationE, i64 0, inrange i32 1, i64 2), ptr %3, align 8, !tbaa !35
  %5 = getelementptr inbounds %"class.xercesc_2_7::XSAnnotation", ptr %2, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  ret ptr %2

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %2, ptr noundef %0) #14
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_712XSAnnotation14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #11 align 2 !prof !34 {
  ret i1 true
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_712XSAnnotation12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #11 align 2 !prof !34 {
  ret ptr @_ZN11xercesc_2_712XSAnnotation17classXSAnnotationE
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712XSAnnotation9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #3 align 2 !prof !34 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i16, ptr %1, align 8, !tbaa !58
  %8 = icmp eq i16 %7, 0
  %9 = getelementptr inbounds %"class.xercesc_2_7::XSAnnotation", ptr %0, i64 0, i32 2
  br i1 %8, label %10, label %22

10:                                               ; preds = %2
  %11 = load ptr, ptr %9, align 8, !tbaa !44
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %11, i32 noundef 0, i1 noundef zeroext false)
  %12 = getelementptr inbounds %"class.xercesc_2_7::XSAnnotation", ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !52
  tail call void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %13)
  %14 = getelementptr inbounds %"class.xercesc_2_7::XSAnnotation", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !53
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %15, i32 noundef 0, i1 noundef zeroext false)
  %16 = getelementptr inbounds %"class.xercesc_2_7::XSAnnotation", ptr %0, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !61
  %18 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %17)
  %19 = getelementptr inbounds %"class.xercesc_2_7::XSAnnotation", ptr %0, i64 0, i32 6
  %20 = load i32, ptr %19, align 4, !tbaa !62
  %21 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %20)
  br label %30

22:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  %23 = getelementptr inbounds %"class.xercesc_2_7::XSAnnotation", ptr %0, i64 0, i32 3
  %24 = call noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull @_ZN11xercesc_2_712XSAnnotation17classXSAnnotationE)
  store ptr %24, ptr %23, align 8, !tbaa !63
  %25 = getelementptr inbounds %"class.xercesc_2_7::XSAnnotation", ptr %0, i64 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %26 = getelementptr inbounds %"class.xercesc_2_7::XSAnnotation", ptr %0, i64 0, i32 5
  %27 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %26)
  %28 = getelementptr inbounds %"class.xercesc_2_7::XSAnnotation", ptr %0, i64 0, i32 6
  %29 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %28)
  br label %30

30:                                               ; preds = %22, %10
  ret void
}

declare void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

declare void @__cxa_pure_virtual() unnamed_addr

declare noundef ptr @_ZN11xercesc_2_78XSObject7getNameEv(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #4

declare noundef ptr @_ZN11xercesc_2_78XSObject12getNamespaceEv(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #4

declare noundef ptr @_ZN11xercesc_2_78XSObject16getNamespaceItemEv(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #4

declare noundef i32 @_ZNK11xercesc_2_78XSObject5getIdEv(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !34 {
  tail call void @llvm.trap() #15
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

declare void @_ZN11xercesc_2_717SAX2XMLReaderImplC1EPNS_13MemoryManagerEPNS_14XMLGrammarPoolE(ptr noundef nonnull align 8 dereferenceable(248), ptr noundef, ptr noundef) unnamed_addr #4

declare void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i1 noundef zeroext) local_unnamed_addr #4

declare noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree nosync nounwind memory(none) }
attributes #9 = { cold mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }

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
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"short", !40, i64 0}
!40 = !{!"omnipotent char", !37, i64 0}
!41 = distinct !{!41, !42, !43}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!"llvm.loop.unroll.disable"}
!44 = !{!45, !49, i64 48}
!45 = !{!"_ZTSN11xercesc_2_712XSAnnotationE", !46, i64 0, !47, i64 8, !49, i64 48, !49, i64 56, !49, i64 64, !50, i64 72, !50, i64 76}
!46 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!47 = !{!"_ZTSN11xercesc_2_78XSObjectE", !48, i64 8, !49, i64 16, !49, i64 24, !50, i64 32}
!48 = !{!"_ZTSN11xercesc_2_711XSConstants14COMPONENT_TYPEE", !40, i64 0}
!49 = !{!"any pointer", !40, i64 0}
!50 = !{!"int", !40, i64 0}
!51 = !{!47, !49, i64 24}
!52 = !{!45, !49, i64 56}
!53 = !{!45, !49, i64 64}
!54 = !{!55, !57, i64 48}
!55 = !{!"_ZTSN11xercesc_2_717MemBufInputSourceE", !56, i64 0, !57, i64 41, !50, i64 44, !57, i64 48, !49, i64 56}
!56 = !{!"_ZTSN11xercesc_2_711InputSourceE", !49, i64 8, !49, i64 16, !49, i64 24, !49, i64 32, !57, i64 40}
!57 = !{!"bool", !40, i64 0}
!58 = !{!59, !39, i64 0}
!59 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !39, i64 0, !39, i64 2, !49, i64 8, !49, i64 16, !49, i64 24, !60, i64 32, !60, i64 40, !49, i64 48, !49, i64 56, !49, i64 64, !49, i64 72, !49, i64 80, !49, i64 88, !50, i64 96}
!60 = !{!"long", !40, i64 0}
!61 = !{!45, !50, i64 72}
!62 = !{!45, !50, i64 76}
!63 = !{!49, !49, i64 0}
