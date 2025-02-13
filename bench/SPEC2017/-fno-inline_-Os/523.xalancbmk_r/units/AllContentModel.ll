; ModuleID = 'AllContentModel.cpp'
source_filename = "AllContentModel.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::ValueVectorOf" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::ValueVectorOf.0" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::AllContentModel" = type <{ %"class.xercesc_2_7::XMLContentModel", ptr, i32, [4 x i8], ptr, ptr, i32, i8, i8, [2 x i8] }>
%"class.xercesc_2_7::XMLContentModel" = type { ptr }
%"class.xercesc_2_7::ContentSpecNode" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::SubstitutionGroupComparator" = type { ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_715XMLContentModelC2Ev = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_5QNameEEC2EjPNS_13MemoryManagerEb = comdat any

$_ZN11xercesc_2_713ValueVectorOfIbEC2EjPNS_13MemoryManagerEb = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_715ContentSpecNode7getTypeEv = comdat any

$_ZNK11xercesc_2_715ContentSpecNode12getMinOccursEv = comdat any

$_ZNK11xercesc_2_713ValueVectorOfIPNS_5QNameEE4sizeEv = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_5QNameEE9elementAtEj = comdat any

$_ZN11xercesc_2_713ValueVectorOfIbE9elementAtEj = comdat any

$_ZN11xercesc_2_713ValueVectorOfIbED2Ev = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_5QNameEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNK11xercesc_2_75QName6getURIEv = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZNK11xercesc_2_75QName12getLocalPartEv = comdat any

$_ZN11xercesc_2_727SubstitutionGroupComparatorC2EPNS_15GrammarResolverEPNS_13XMLStringPoolE = comdat any

$_ZN11xercesc_2_727SubstitutionGroupComparatorD2Ev = comdat any

$_ZN11xercesc_2_75QName6setURIEj = comdat any

$_ZN11xercesc_2_715ContentSpecNode8getFirstEv = comdat any

$_ZN11xercesc_2_715ContentSpecNode9getSecondEv = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_5QNameEE10addElementERKS2_ = comdat any

$_ZN11xercesc_2_715ContentSpecNode10getElementEv = comdat any

$_ZN11xercesc_2_713ValueVectorOfIbE10addElementERKb = comdat any

$_ZNK11xercesc_2_715AllContentModel28getContentLeafNameTypeVectorEv = comdat any

$_ZNK11xercesc_2_715AllContentModel12getNextStateEjj = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_715XMLContentModelD2Ev = comdat any

$_ZN11xercesc_2_715XMLContentModelD0Ev = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_5QNameEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_713ValueVectorOfIbE19ensureExtraCapacityEj = comdat any

$_ZTSN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTIN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTSN11xercesc_2_715XMLContentModelE = comdat any

$_ZTIN11xercesc_2_715XMLContentModelE = comdat any

$_ZTVN11xercesc_2_715XMLContentModelE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

@_ZTVN11xercesc_2_715AllContentModelE = dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715AllContentModelE, ptr @_ZN11xercesc_2_715AllContentModelD2Ev, ptr @_ZN11xercesc_2_715AllContentModelD0Ev, ptr @_ZNK11xercesc_2_715AllContentModel15validateContentEPPNS_5QNameEjj, ptr @_ZNK11xercesc_2_715AllContentModel22validateContentSpecialEPPNS_5QNameEjjPNS_15GrammarResolverEPNS_13XMLStringPoolE, ptr @_ZN11xercesc_2_715AllContentModel30checkUniqueParticleAttributionEPNS_13SchemaGrammarEPNS_15GrammarResolverEPNS_13XMLStringPoolEPNS_12XMLValidatorEPjPKt, ptr @_ZNK11xercesc_2_715AllContentModel28getContentLeafNameTypeVectorEv, ptr @_ZNK11xercesc_2_715AllContentModel12getNextStateEjj] }, align 8
@.str = private unnamed_addr constant [20 x i8] c"AllContentModel.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_714XMLElementDecl14fgPCDataElemIdE = external local_unnamed_addr constant i32, align 4
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTSN11xercesc_2_715AllContentModelE = dso_local constant [33 x i8] c"N11xercesc_2_715AllContentModelE\00", align 1
@_ZTSN11xercesc_2_715XMLContentModelE = linkonce_odr dso_local constant [33 x i8] c"N11xercesc_2_715XMLContentModelE\00", comdat, align 1
@_ZTIN11xercesc_2_715XMLContentModelE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715XMLContentModelE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_715AllContentModelE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715AllContentModelE, ptr @_ZTIN11xercesc_2_715XMLContentModelE }, align 8
@_ZTVN11xercesc_2_715XMLContentModelE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715XMLContentModelE, ptr @_ZN11xercesc_2_715XMLContentModelD2Ev, ptr @_ZN11xercesc_2_715XMLContentModelD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_715XMLContentModel13gInvalidTransE = external local_unnamed_addr constant i32, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"./xercesc/util/ValueVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_715AllContentModelC1EPNS_15ContentSpecNodeEbPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, i1, ptr), ptr @_ZN11xercesc_2_715AllContentModelC2EPNS_15ContentSpecNodeEbPNS_13MemoryManagerE
@_ZN11xercesc_2_715AllContentModelD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_715AllContentModelD2Ev

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #0

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715AllContentModelC2EPNS_15ContentSpecNodeEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(46) %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !70 {
  %5 = alloca %"class.xercesc_2_7::ValueVectorOf", align 8
  %6 = alloca %"class.xercesc_2_7::ValueVectorOf.0", align 8
  %7 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_715XMLContentModelC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715AllContentModelE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !71
  %8 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 1
  store ptr %3, ptr %8, align 8, !tbaa !74
  %9 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 2
  store i32 0, ptr %9, align 8, !tbaa !81
  %10 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 4
  %11 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 5
  %12 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %10, i8 0, i64 20, i1 false)
  store i8 %7, ptr %12, align 4, !tbaa !82
  %13 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 8
  store i8 0, ptr %13, align 1, !tbaa !83
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #10
  invoke void @_ZN11xercesc_2_713ValueVectorOfIPNS_5QNameEEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 64, ptr noundef %3, i1 noundef zeroext false) #9
          to label %14 unwind label %22

14:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #10
  %15 = load ptr, ptr %8, align 8, !tbaa !74
  invoke void @_ZN11xercesc_2_713ValueVectorOfIbEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 64, ptr noundef %15, i1 noundef zeroext false) #9
          to label %16 unwind label %24

16:                                               ; preds = %14
  %17 = icmp eq ptr %1, null
  br i1 %17, label %18, label %30, !prof !84

18:                                               ; preds = %16
  %19 = call ptr @__cxa_allocate_exception(i64 48) #10
  %20 = load ptr, ptr %8, align 8, !tbaa !74
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef nonnull @.str, i32 noundef 66, i32 noundef 23, ptr noundef %20) #9
          to label %21 unwind label %26

21:                                               ; preds = %18
  invoke void @__cxa_throw(ptr nonnull %19, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #11
          to label %90 unwind label %28

22:                                               ; preds = %4
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %88

24:                                               ; preds = %14
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %86

26:                                               ; preds = %18
  %27 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %19) #10
  br label %84

28:                                               ; preds = %47, %38, %37, %21
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %84

30:                                               ; preds = %16
  %31 = call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #9
  %32 = icmp eq i32 %31, 9
  br i1 %32, label %33, label %37, !prof !85

33:                                               ; preds = %30
  %34 = call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMinOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #9
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37, !prof !84

36:                                               ; preds = %33
  store i8 1, ptr %13, align 1, !tbaa !83
  br label %37

37:                                               ; preds = %36, %33, %30
  invoke void @_ZN11xercesc_2_715AllContentModel14buildChildListEPNS_15ContentSpecNodeERNS_13ValueVectorOfIPNS_5QNameEEERNS3_IbEE(ptr noundef nonnull align 8 dereferenceable(46) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6) #9
          to label %38 unwind label %28

38:                                               ; preds = %37
  %39 = call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_5QNameEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #9
  store i32 %39, ptr %9, align 8, !tbaa !81
  %40 = load ptr, ptr %8, align 8, !tbaa !74
  %41 = zext i32 %39 to i64
  %42 = shl nuw nsw i64 %41, 3
  %43 = load ptr, ptr %40, align 8, !tbaa !71
  %44 = getelementptr inbounds ptr, ptr %43, i64 2
  %45 = load ptr, ptr %44, align 8
  %46 = invoke noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(8) %40, i64 noundef %42) #9
          to label %47 unwind label %28

47:                                               ; preds = %38
  store ptr %46, ptr %10, align 8, !tbaa !86
  %48 = load ptr, ptr %8, align 8, !tbaa !74
  %49 = load i32, ptr %9, align 8, !tbaa !81
  %50 = zext i32 %49 to i64
  %51 = load ptr, ptr %48, align 8, !tbaa !71
  %52 = getelementptr inbounds ptr, ptr %51, i64 2
  %53 = load ptr, ptr %52, align 8
  %54 = invoke noundef ptr %53(ptr noundef nonnull align 8 dereferenceable(8) %48, i64 noundef %50) #9
          to label %55 unwind label %28

55:                                               ; preds = %47
  store ptr %54, ptr %11, align 8, !tbaa !87
  %56 = load i32, ptr %9, align 8, !tbaa !81
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59, !prof !88

58:                                               ; preds = %72, %55
  call void @_ZN11xercesc_2_713ValueVectorOfIbED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #10
  call void @_ZN11xercesc_2_713ValueVectorOfIPNS_5QNameEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  ret void

59:                                               ; preds = %55, %72
  %60 = phi i64 [ %76, %72 ], [ 0, %55 ]
  %61 = load ptr, ptr %8, align 8, !tbaa !74
  %62 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %61) #9
          to label %63 unwind label %80

63:                                               ; preds = %59
  %64 = trunc i64 %60 to i32
  %65 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_5QNameEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef %64) #9
          to label %66 unwind label %82

66:                                               ; preds = %63
  %67 = load ptr, ptr %65, align 8, !tbaa !89
  invoke void @_ZN11xercesc_2_75QNameC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %62, ptr noundef nonnull align 8 dereferenceable(56) %67) #9
          to label %68 unwind label %82

68:                                               ; preds = %66
  %69 = load ptr, ptr %10, align 8, !tbaa !86
  %70 = getelementptr inbounds ptr, ptr %69, i64 %60
  store ptr %62, ptr %70, align 8, !tbaa !89
  %71 = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZN11xercesc_2_713ValueVectorOfIbE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %64) #9
          to label %72 unwind label %80

72:                                               ; preds = %68
  %73 = load i8, ptr %71, align 1, !tbaa !90, !range !91, !noundef !92
  %74 = load ptr, ptr %11, align 8, !tbaa !87
  %75 = getelementptr inbounds i8, ptr %74, i64 %60
  store i8 %73, ptr %75, align 1, !tbaa !90
  %76 = add nuw nsw i64 %60, 1
  %77 = load i32, ptr %9, align 8, !tbaa !81
  %78 = zext i32 %77 to i64
  %79 = icmp ult i64 %76, %78
  br i1 %79, label %59, label %58, !prof !93, !llvm.loop !94

80:                                               ; preds = %68, %59
  %81 = landingpad { ptr, i32 }
          cleanup
  br label %84

82:                                               ; preds = %66, %63
  %83 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %62, ptr noundef %61) #12
  br label %84

84:                                               ; preds = %80, %82, %28, %26
  %85 = phi { ptr, i32 } [ %29, %28 ], [ %27, %26 ], [ %81, %80 ], [ %83, %82 ]
  call void @_ZN11xercesc_2_713ValueVectorOfIbED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #12
  br label %86

86:                                               ; preds = %84, %24
  %87 = phi { ptr, i32 } [ %85, %84 ], [ %25, %24 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #10
  call void @_ZN11xercesc_2_713ValueVectorOfIPNS_5QNameEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #12
  br label %88

88:                                               ; preds = %86, %22
  %89 = phi { ptr, i32 } [ %87, %86 ], [ %23, %22 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  call void @_ZN11xercesc_2_715XMLContentModelD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  resume { ptr, i32 } %89

90:                                               ; preds = %21
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715XMLContentModelC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !prof !96 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #9
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715XMLContentModelE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !71
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_5QNameEEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #2 comdat align 2 !prof !70 {
  %5 = zext i1 %3 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #9
  store i8 %5, ptr %0, align 8, !tbaa !97
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  store i32 0, ptr %6, align 4, !tbaa !99
  %7 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 2
  store i32 %1, ptr %7, align 8, !tbaa !100
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  store ptr null, ptr %8, align 8, !tbaa !101
  %9 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  store ptr %2, ptr %9, align 8, !tbaa !102
  %10 = zext i32 %1 to i64
  %11 = shl nuw nsw i64 %10, 3
  %12 = load ptr, ptr %2, align 8, !tbaa !71
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %11) #9
  store ptr %15, ptr %8, align 8, !tbaa !101
  %16 = load i32, ptr %7, align 8, !tbaa !100
  %17 = zext i32 %16 to i64
  %18 = shl nuw nsw i64 %17, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %15, i8 0, i64 %18, i1 false)
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIbEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #2 comdat align 2 !prof !103 {
  %5 = zext i1 %3 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #9
  store i8 %5, ptr %0, align 8, !tbaa !104
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 1
  store i32 0, ptr %6, align 4, !tbaa !106
  %7 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 2
  store i32 %1, ptr %7, align 8, !tbaa !107
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 3
  store ptr null, ptr %8, align 8, !tbaa !108
  %9 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 4
  store ptr %2, ptr %9, align 8, !tbaa !109
  %10 = zext i32 %1 to i64
  %11 = load ptr, ptr %2, align 8, !tbaa !71
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %10) #9
  store ptr %14, ptr %8, align 8, !tbaa !108
  %15 = load i32, ptr %7, align 8, !tbaa !107
  %16 = zext i32 %15 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %14, i8 0, i64 %16, i1 false)
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !110 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !71
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #9
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

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #4 comdat align 2 !prof !111 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !112
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMinOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #4 comdat align 2 !prof !116 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !117
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715AllContentModel14buildChildListEPNS_15ContentSpecNodeERNS_13ValueVectorOfIPNS_5QNameEEERNS3_IbEE(ptr nocapture noundef nonnull align 8 dereferenceable(46) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  %5 = alloca ptr, align 8
  %6 = alloca i8, align 1
  %7 = alloca ptr, align 8
  %8 = alloca i8, align 1
  br label %9

9:                                                ; preds = %12, %4
  %10 = phi ptr [ %1, %4 ], [ %14, %12 ]
  %11 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %10) #9
  switch i32 %11, label %33 [
    i32 9, label %12
    i32 0, label %15
    i32 1, label %20
  ], !prof !119

12:                                               ; preds = %9
  %13 = tail call noundef ptr @_ZN11xercesc_2_715ContentSpecNode8getFirstEv(ptr noundef nonnull align 8 dereferenceable(64) %10) #9
  %14 = tail call noundef ptr @_ZN11xercesc_2_715ContentSpecNode9getSecondEv(ptr noundef nonnull align 8 dereferenceable(64) %10) #9
  tail call void @_ZN11xercesc_2_715AllContentModel14buildChildListEPNS_15ContentSpecNodeERNS_13ValueVectorOfIPNS_5QNameEEERNS3_IbEE(ptr noundef nonnull align 8 dereferenceable(46) %0, ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) #9
  br label %9

15:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  %16 = tail call noundef ptr @_ZN11xercesc_2_715ContentSpecNode10getElementEv(ptr noundef nonnull align 8 dereferenceable(64) %10) #9
  store ptr %16, ptr %5, align 8, !tbaa !89
  call void @_ZN11xercesc_2_713ValueVectorOfIPNS_5QNameEE10addElementERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 0, ptr %6, align 1, !tbaa !90
  call void @_ZN11xercesc_2_713ValueVectorOfIbE10addElementERKb(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %6) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  %17 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 6
  %18 = load i32, ptr %17, align 8, !tbaa !120
  %19 = add i32 %18, 1
  store i32 %19, ptr %17, align 8, !tbaa !120
  br label %40

20:                                               ; preds = %9
  %21 = tail call noundef ptr @_ZN11xercesc_2_715ContentSpecNode8getFirstEv(ptr noundef nonnull align 8 dereferenceable(64) %10) #9
  %22 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %21) #9
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %20
  %25 = tail call ptr @__cxa_allocate_exception(i64 48) #10
  %26 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !74
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %25, ptr noundef nonnull @.str, i32 noundef 332, i32 noundef 22, ptr noundef %27) #9
          to label %28 unwind label %29

28:                                               ; preds = %24
  tail call void @__cxa_throw(ptr nonnull %25, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #11
  unreachable

29:                                               ; preds = %24
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %41

31:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  %32 = tail call noundef ptr @_ZN11xercesc_2_715ContentSpecNode10getElementEv(ptr noundef nonnull align 8 dereferenceable(64) %21) #9
  store ptr %32, ptr %7, align 8, !tbaa !89
  call void @_ZN11xercesc_2_713ValueVectorOfIPNS_5QNameEE10addElementERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #10
  store i8 1, ptr %8, align 1, !tbaa !90
  call void @_ZN11xercesc_2_713ValueVectorOfIbE10addElementERKb(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %8) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #10
  br label %40

33:                                               ; preds = %9
  %34 = tail call ptr @__cxa_allocate_exception(i64 48) #10
  %35 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !74
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %34, ptr noundef nonnull @.str, i32 noundef 338, i32 noundef 22, ptr noundef %36) #9
          to label %37 unwind label %38

37:                                               ; preds = %33
  tail call void @__cxa_throw(ptr nonnull %34, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #11
  unreachable

38:                                               ; preds = %33
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %41

40:                                               ; preds = %15, %31
  ret void

41:                                               ; preds = %38, %29
  %42 = phi ptr [ %34, %38 ], [ %25, %29 ]
  %43 = phi { ptr, i32 } [ %39, %38 ], [ %30, %29 ]
  tail call void @__cxa_free_exception(ptr %42) #10
  resume { ptr, i32 } %43
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_5QNameEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 !prof !70 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !99
  ret i32 %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_5QNameEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !121 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !99
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !122

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #10
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !102
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 206, i32 noundef 116, ptr noundef %9) #9
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #11
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #10
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !101
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  ret ptr %17
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_75QNameC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #5

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZN11xercesc_2_713ValueVectorOfIbE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !123 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !106
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !124

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #10
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !109
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 206, i32 noundef 116, ptr noundef %9) #9
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #11
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #10
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !108
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds i8, ptr %15, i64 %16
  ret ptr %17
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIbED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !103 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !109
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !108
  %6 = load ptr, ptr %3, align 8, !tbaa !71
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

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_5QNameEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !70 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !102
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !101
  %6 = load ptr, ptr %3, align 8, !tbaa !71
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

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_715AllContentModelD2Ev(ptr noundef nonnull align 8 dereferenceable(46) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !70 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715AllContentModelE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !71
  %2 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !81
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5, !prof !88

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 4
  br label %15

7:                                                ; preds = %27, %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !74
  %10 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !86
  %12 = load ptr, ptr %9, align 8, !tbaa !71
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  invoke void %14(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %11) #9
          to label %32 unwind label %40

15:                                               ; preds = %5, %27
  %16 = phi i32 [ %3, %5 ], [ %28, %27 ]
  %17 = phi i64 [ 0, %5 ], [ %29, %27 ]
  %18 = load ptr, ptr %6, align 8, !tbaa !86
  %19 = getelementptr inbounds ptr, ptr %18, i64 %17
  %20 = load ptr, ptr %19, align 8, !tbaa !89
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %15
  %23 = load ptr, ptr %20, align 8, !tbaa !71
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(56) %20) #12
  %26 = load i32, ptr %2, align 8, !tbaa !81
  br label %27

27:                                               ; preds = %15, %22
  %28 = phi i32 [ %16, %15 ], [ %26, %22 ]
  %29 = add nuw nsw i64 %17, 1
  %30 = zext i32 %28 to i64
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %15, label %7, !prof !93, !llvm.loop !125

32:                                               ; preds = %7
  %33 = load ptr, ptr %8, align 8, !tbaa !74
  %34 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !87
  %36 = load ptr, ptr %33, align 8, !tbaa !71
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  invoke void %38(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef %35) #9
          to label %39 unwind label %40

39:                                               ; preds = %32
  tail call void @_ZN11xercesc_2_715XMLContentModelD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  ret void

40:                                               ; preds = %32, %7
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  tail call void @__clang_call_terminate(ptr %42) #13
  unreachable
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #10
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_715AllContentModelD0Ev(ptr noundef nonnull align 8 dereferenceable(46) %0) unnamed_addr #4 align 2 {
  tail call void @_ZN11xercesc_2_715AllContentModelD2Ev(ptr noundef nonnull align 8 dereferenceable(46) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_715AllContentModel15validateContentEPPNS_5QNameEjj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(46) %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 %3) unnamed_addr #2 align 2 !prof !70 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %6, label %14, !prof !84

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 8
  %8 = load i8, ptr %7, align 1, !tbaa !83, !range !91, !noundef !92
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %9, i1 true, i1 %12
  br i1 %13, label %109, label %14

14:                                               ; preds = %6, %4
  %15 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !74
  %17 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !81
  %19 = zext i32 %18 to i64
  %20 = load ptr, ptr %16, align 8, !tbaa !71
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %16, i64 noundef %19) #9
  %24 = load i32, ptr %17, align 8, !tbaa !81
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26, !prof !88

26:                                               ; preds = %14
  %27 = zext i32 %24 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %23, i8 0, i64 %27, i1 false), !tbaa !90
  br label %28

28:                                               ; preds = %26, %14
  br i1 %5, label %99, label %29, !prof !88

29:                                               ; preds = %28
  %30 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 7
  %31 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 4
  %32 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 5
  %33 = zext i32 %2 to i64
  br label %34

34:                                               ; preds = %29, %95
  %35 = phi i64 [ 0, %29 ], [ %97, %95 ]
  %36 = phi i32 [ 0, %29 ], [ %96, %95 ]
  %37 = getelementptr inbounds ptr, ptr %1, i64 %35
  %38 = load ptr, ptr %37, align 8, !tbaa !89
  %39 = load i8, ptr %30, align 4, !tbaa !82, !range !91, !noundef !92
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %45, label %41, !prof !122

41:                                               ; preds = %34
  %42 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl14fgPCDataElemIdE, align 4
  %43 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %38) #9
  %44 = icmp eq i32 %43, %42
  br i1 %44, label %95, label %45

45:                                               ; preds = %41, %34
  %46 = load i32, ptr %17, align 8, !tbaa !81
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %89, label %48, !prof !88

48:                                               ; preds = %45, %78
  %49 = phi i64 [ %79, %78 ], [ 0, %45 ]
  %50 = load ptr, ptr %31, align 8, !tbaa !86
  %51 = getelementptr inbounds ptr, ptr %50, i64 %49
  %52 = load ptr, ptr %51, align 8, !tbaa !89
  %53 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %52) #9
  %54 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %38) #9
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %78, !prof !126

56:                                               ; preds = %48
  %57 = tail call noundef ptr @_ZNK11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %52) #9
  %58 = tail call noundef ptr @_ZNK11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %38) #9
  %59 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %57, ptr noundef %58) #9
  br i1 %59, label %60, label %78, !prof !127

60:                                               ; preds = %56
  %61 = getelementptr inbounds i8, ptr %23, i64 %49
  %62 = load i8, ptr %61, align 1, !tbaa !90, !range !91, !noundef !92
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %70, label %64, !prof !122

64:                                               ; preds = %60
  %65 = trunc i64 %35 to i32
  %66 = load ptr, ptr %15, align 8, !tbaa !74
  %67 = load ptr, ptr %66, align 8, !tbaa !71
  %68 = getelementptr inbounds ptr, ptr %67, i64 3
  %69 = load ptr, ptr %68, align 8
  tail call void %69(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef nonnull %23) #9
  br label %109

70:                                               ; preds = %60
  store i8 1, ptr %61, align 1, !tbaa !90
  %71 = load ptr, ptr %32, align 8, !tbaa !87
  %72 = getelementptr inbounds i8, ptr %71, i64 %49
  %73 = load i8, ptr %72, align 1, !tbaa !90, !range !91, !noundef !92
  %74 = xor i8 %73, 1
  %75 = zext nneg i8 %74 to i32
  %76 = add i32 %36, %75
  %77 = load i32, ptr %17, align 8, !tbaa !81
  br label %83

78:                                               ; preds = %56, %48
  %79 = add nuw nsw i64 %49, 1
  %80 = load i32, ptr %17, align 8, !tbaa !81
  %81 = zext i32 %80 to i64
  %82 = icmp ult i64 %79, %81
  br i1 %82, label %48, label %83, !prof !128, !llvm.loop !129

83:                                               ; preds = %78, %70
  %84 = phi i32 [ %77, %70 ], [ %80, %78 ]
  %85 = phi i64 [ %49, %70 ], [ %79, %78 ]
  %86 = phi i32 [ %76, %70 ], [ %36, %78 ]
  %87 = trunc i64 %85 to i32
  %88 = icmp eq i32 %84, %87
  br i1 %88, label %89, label %95, !prof !130

89:                                               ; preds = %45, %83
  %90 = trunc i64 %35 to i32
  %91 = load ptr, ptr %15, align 8, !tbaa !74
  %92 = load ptr, ptr %91, align 8, !tbaa !71
  %93 = getelementptr inbounds ptr, ptr %92, i64 3
  %94 = load ptr, ptr %93, align 8
  tail call void %94(ptr noundef nonnull align 8 dereferenceable(8) %91, ptr noundef %23) #9
  br label %109

95:                                               ; preds = %41, %83
  %96 = phi i32 [ %36, %41 ], [ %86, %83 ]
  %97 = add nuw nsw i64 %35, 1
  %98 = icmp eq i64 %97, %33
  br i1 %98, label %99, label %34, !prof !131, !llvm.loop !132

99:                                               ; preds = %95, %28
  %100 = phi i32 [ 0, %28 ], [ %96, %95 ]
  %101 = load ptr, ptr %15, align 8, !tbaa !74
  %102 = load ptr, ptr %101, align 8, !tbaa !71
  %103 = getelementptr inbounds ptr, ptr %102, i64 3
  %104 = load ptr, ptr %103, align 8
  tail call void %104(ptr noundef nonnull align 8 dereferenceable(8) %101, ptr noundef %23) #9
  %105 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 6
  %106 = load i32, ptr %105, align 8, !tbaa !120
  %107 = icmp eq i32 %100, %106
  %108 = select i1 %107, i32 -1, i32 %2, !prof !85
  br label %109

109:                                              ; preds = %64, %89, %99, %6
  %110 = phi i32 [ -1, %6 ], [ %108, %99 ], [ %65, %64 ], [ %90, %89 ]
  ret i32 %110
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #4 comdat align 2 !prof !133 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !134
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !136 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !137

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !138
  %8 = load i16, ptr %1, align 2, !tbaa !138
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !140

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !141

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !138
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !142

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !143

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !138
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !144

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !145

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !138
  %28 = load i16, ptr %26, align 2, !tbaa !138
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !146, !llvm.loop !147

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #4 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !149
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_715AllContentModel22validateContentSpecialEPPNS_5QNameEjjPNS_15GrammarResolverEPNS_13XMLStringPoolE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(46) %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 %3, ptr noundef %4, ptr noundef %5) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !110 {
  %7 = alloca %"class.xercesc_2_7::SubstitutionGroupComparator", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #10
  call void @_ZN11xercesc_2_727SubstitutionGroupComparatorC2EPNS_15GrammarResolverEPNS_13XMLStringPoolE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %4, ptr noundef %5) #9
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 8
  %11 = load i8, ptr %10, align 1, !tbaa !83, !range !91, !noundef !92
  %12 = icmp ne i8 %11, 0
  %13 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 6
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %12, i1 true, i1 %15
  br i1 %16, label %121, label %17

17:                                               ; preds = %9, %6
  %18 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !74
  %20 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !81
  %22 = zext i32 %21 to i64
  %23 = load ptr, ptr %19, align 8, !tbaa !71
  %24 = getelementptr inbounds ptr, ptr %23, i64 2
  %25 = load ptr, ptr %24, align 8
  %26 = invoke noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %19, i64 noundef %22) #9
          to label %27 unwind label %39

27:                                               ; preds = %17
  %28 = load i32, ptr %20, align 8, !tbaa !81
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = zext i32 %28 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %26, i8 0, i64 %31, i1 false), !tbaa !90
  br label %32

32:                                               ; preds = %30, %27
  br i1 %8, label %106, label %33

33:                                               ; preds = %32
  %34 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 7
  %35 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl14fgPCDataElemIdE, align 4
  %36 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 4
  %37 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 5
  %38 = zext i32 %2 to i64
  br label %41

39:                                               ; preds = %17
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %119

41:                                               ; preds = %33, %102
  %42 = phi i64 [ 0, %33 ], [ %104, %102 ]
  %43 = phi i32 [ 0, %33 ], [ %103, %102 ]
  %44 = getelementptr inbounds ptr, ptr %1, i64 %42
  %45 = load ptr, ptr %44, align 8, !tbaa !89
  %46 = load i8, ptr %34, align 4, !tbaa !82, !range !91, !noundef !92
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %41
  %49 = call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %45) #9
  %50 = icmp eq i32 %49, %35
  br i1 %50, label %102, label %51

51:                                               ; preds = %48, %41
  %52 = load i32, ptr %20, align 8, !tbaa !81
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %94, label %54

54:                                               ; preds = %51, %83
  %55 = phi i64 [ %84, %83 ], [ 0, %51 ]
  %56 = load ptr, ptr %36, align 8, !tbaa !86
  %57 = getelementptr inbounds ptr, ptr %56, i64 %55
  %58 = load ptr, ptr %57, align 8, !tbaa !89
  %59 = invoke noundef zeroext i1 @_ZN11xercesc_2_727SubstitutionGroupComparator14isEquivalentToEPNS_5QNameES2_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %45, ptr noundef %58) #9
          to label %60 unwind label %71

60:                                               ; preds = %54
  br i1 %59, label %61, label %83

61:                                               ; preds = %60
  %62 = getelementptr inbounds i8, ptr %26, i64 %55
  %63 = load i8, ptr %62, align 1, !tbaa !90, !range !91, !noundef !92
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %75, label %65

65:                                               ; preds = %61
  %66 = trunc i64 %42 to i32
  %67 = load ptr, ptr %18, align 8, !tbaa !74
  %68 = load ptr, ptr %67, align 8, !tbaa !71
  %69 = getelementptr inbounds ptr, ptr %68, i64 3
  %70 = load ptr, ptr %69, align 8
  invoke void %70(ptr noundef nonnull align 8 dereferenceable(8) %67, ptr noundef nonnull %26) #9
          to label %121 unwind label %73

71:                                               ; preds = %54
  %72 = landingpad { ptr, i32 }
          cleanup
  br label %119

73:                                               ; preds = %65
  %74 = landingpad { ptr, i32 }
          cleanup
  br label %119

75:                                               ; preds = %61
  store i8 1, ptr %62, align 1, !tbaa !90
  %76 = load ptr, ptr %37, align 8, !tbaa !87
  %77 = getelementptr inbounds i8, ptr %76, i64 %55
  %78 = load i8, ptr %77, align 1, !tbaa !90, !range !91, !noundef !92
  %79 = xor i8 %78, 1
  %80 = zext nneg i8 %79 to i32
  %81 = add i32 %43, %80
  %82 = load i32, ptr %20, align 8, !tbaa !81
  br label %88

83:                                               ; preds = %60
  %84 = add nuw nsw i64 %55, 1
  %85 = load i32, ptr %20, align 8, !tbaa !81
  %86 = zext i32 %85 to i64
  %87 = icmp ult i64 %84, %86
  br i1 %87, label %54, label %88, !llvm.loop !150

88:                                               ; preds = %83, %75
  %89 = phi i32 [ %82, %75 ], [ %85, %83 ]
  %90 = phi i64 [ %55, %75 ], [ %84, %83 ]
  %91 = phi i32 [ %81, %75 ], [ %43, %83 ]
  %92 = trunc i64 %90 to i32
  %93 = icmp eq i32 %89, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %51, %88
  %95 = trunc i64 %42 to i32
  %96 = load ptr, ptr %18, align 8, !tbaa !74
  %97 = load ptr, ptr %96, align 8, !tbaa !71
  %98 = getelementptr inbounds ptr, ptr %97, i64 3
  %99 = load ptr, ptr %98, align 8
  invoke void %99(ptr noundef nonnull align 8 dereferenceable(8) %96, ptr noundef %26) #9
          to label %121 unwind label %100

100:                                              ; preds = %94
  %101 = landingpad { ptr, i32 }
          cleanup
  br label %119

102:                                              ; preds = %48, %88
  %103 = phi i32 [ %43, %48 ], [ %91, %88 ]
  %104 = add nuw nsw i64 %42, 1
  %105 = icmp eq i64 %104, %38
  br i1 %105, label %106, label %41, !llvm.loop !151

106:                                              ; preds = %102, %32
  %107 = phi i32 [ 0, %32 ], [ %103, %102 ]
  %108 = load ptr, ptr %18, align 8, !tbaa !74
  %109 = load ptr, ptr %108, align 8, !tbaa !71
  %110 = getelementptr inbounds ptr, ptr %109, i64 3
  %111 = load ptr, ptr %110, align 8
  invoke void %111(ptr noundef nonnull align 8 dereferenceable(8) %108, ptr noundef %26) #9
          to label %112 unwind label %117

112:                                              ; preds = %106
  %113 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 6
  %114 = load i32, ptr %113, align 8, !tbaa !120
  %115 = icmp eq i32 %107, %114
  %116 = select i1 %115, i32 -1, i32 %2
  br label %121

117:                                              ; preds = %106
  %118 = landingpad { ptr, i32 }
          cleanup
  br label %119

119:                                              ; preds = %71, %73, %117, %100, %39
  %120 = phi { ptr, i32 } [ %40, %39 ], [ %118, %117 ], [ %101, %100 ], [ %72, %71 ], [ %74, %73 ]
  call void @_ZN11xercesc_2_727SubstitutionGroupComparatorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10
  resume { ptr, i32 } %120

121:                                              ; preds = %94, %65, %112, %9
  %122 = phi i32 [ -1, %9 ], [ %116, %112 ], [ %95, %94 ], [ %66, %65 ]
  call void @_ZN11xercesc_2_727SubstitutionGroupComparatorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10
  ret i32 %122
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_727SubstitutionGroupComparatorC2EPNS_15GrammarResolverEPNS_13XMLStringPoolE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 comdat align 2 !prof !110 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #9
  store ptr %1, ptr %0, align 8, !tbaa !152
  %4 = getelementptr inbounds %"class.xercesc_2_7::SubstitutionGroupComparator", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !154
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_727SubstitutionGroupComparator14isEquivalentToEPNS_5QNameES2_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_727SubstitutionGroupComparatorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 !prof !110 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715AllContentModel30checkUniqueParticleAttributionEPNS_13SchemaGrammarEPNS_15GrammarResolverEPNS_13XMLStringPoolEPNS_12XMLValidatorEPjPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(46) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ptr noundef %6) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !110 {
  %8 = alloca %"class.xercesc_2_7::SubstitutionGroupComparator", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #10
  call void @_ZN11xercesc_2_727SubstitutionGroupComparatorC2EPNS_15GrammarResolverEPNS_13XMLStringPoolE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef %2, ptr noundef %3) #9
  %9 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !81
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %90, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 4
  br label %20

14:                                               ; preds = %20
  %15 = icmp eq i32 %33, 0
  br i1 %15, label %90, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 7
  %18 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 4
  %19 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl14fgPCDataElemIdE, align 4
  br label %41

20:                                               ; preds = %12, %20
  %21 = phi i64 [ 0, %12 ], [ %32, %20 ]
  %22 = load ptr, ptr %13, align 8, !tbaa !86
  %23 = getelementptr inbounds ptr, ptr %22, i64 %21
  %24 = load ptr, ptr %23, align 8, !tbaa !89
  %25 = call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %24) #9
  %26 = load ptr, ptr %13, align 8, !tbaa !86
  %27 = getelementptr inbounds ptr, ptr %26, i64 %21
  %28 = load ptr, ptr %27, align 8, !tbaa !89
  %29 = zext i32 %25 to i64
  %30 = getelementptr inbounds i32, ptr %5, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !155
  call void @_ZN11xercesc_2_75QName6setURIEj(ptr noundef nonnull align 8 dereferenceable(56) %28, i32 noundef %31) #9
  %32 = add nuw nsw i64 %21, 1
  %33 = load i32, ptr %9, align 8, !tbaa !81
  %34 = zext i32 %33 to i64
  %35 = icmp ult i64 %32, %34
  br i1 %35, label %20, label %14, !llvm.loop !156

36:                                               ; preds = %85, %41
  %37 = phi i64 [ %46, %41 ], [ %88, %85 ]
  %38 = phi i32 [ %42, %41 ], [ %87, %85 ]
  %39 = icmp ult i64 %45, %37
  %40 = add nuw nsw i64 %44, 1
  br i1 %39, label %41, label %90, !llvm.loop !157

41:                                               ; preds = %16, %36
  %42 = phi i32 [ %33, %16 ], [ %38, %36 ]
  %43 = phi i64 [ 0, %16 ], [ %45, %36 ]
  %44 = phi i64 [ 1, %16 ], [ %40, %36 ]
  %45 = add nuw nsw i64 %43, 1
  %46 = zext i32 %42 to i64
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %36

48:                                               ; preds = %41, %85
  %49 = phi i64 [ %86, %85 ], [ %44, %41 ]
  %50 = load i8, ptr %17, align 4, !tbaa !82, !range !91, !noundef !92
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %66, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr %18, align 8, !tbaa !86
  %54 = getelementptr inbounds ptr, ptr %53, i64 %43
  %55 = load ptr, ptr %54, align 8, !tbaa !89
  %56 = call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %55) #9
  %57 = icmp eq i32 %56, %19
  br i1 %57, label %85, label %58

58:                                               ; preds = %52
  %59 = load ptr, ptr %18, align 8, !tbaa !86
  %60 = getelementptr inbounds ptr, ptr %59, i64 %49
  %61 = load ptr, ptr %60, align 8, !tbaa !89
  %62 = call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %61) #9
  %63 = icmp eq i32 %62, %19
  br i1 %63, label %85, label %66

64:                                               ; preds = %84, %79, %74, %66
  %65 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_727SubstitutionGroupComparatorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #10
  resume { ptr, i32 } %65

66:                                               ; preds = %58, %48
  %67 = load ptr, ptr %18, align 8, !tbaa !86
  %68 = getelementptr inbounds ptr, ptr %67, i64 %43
  %69 = load ptr, ptr %68, align 8, !tbaa !89
  %70 = getelementptr inbounds ptr, ptr %67, i64 %49
  %71 = load ptr, ptr %70, align 8, !tbaa !89
  %72 = invoke noundef zeroext i1 @_ZN11xercesc_2_721XercesElementWildcard8conflictEPNS_13SchemaGrammarENS_15ContentSpecNode9NodeTypesEPNS_5QNameES4_S6_PNS_27SubstitutionGroupComparatorE(ptr noundef %1, i32 noundef 0, ptr noundef %69, i32 noundef 0, ptr noundef %71, ptr noundef nonnull %8) #9
          to label %73 unwind label %64

73:                                               ; preds = %66
  br i1 %72, label %74, label %85

74:                                               ; preds = %73
  %75 = load ptr, ptr %18, align 8, !tbaa !86
  %76 = getelementptr inbounds ptr, ptr %75, i64 %43
  %77 = load ptr, ptr %76, align 8, !tbaa !89
  %78 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %77) #9
          to label %79 unwind label %64

79:                                               ; preds = %74
  %80 = load ptr, ptr %18, align 8, !tbaa !86
  %81 = getelementptr inbounds ptr, ptr %80, i64 %49
  %82 = load ptr, ptr %81, align 8, !tbaa !89
  %83 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %82) #9
          to label %84 unwind label %64

84:                                               ; preds = %79
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 88, ptr noundef %6, ptr noundef %78, ptr noundef %83, ptr noundef null) #9
          to label %85 unwind label %64

85:                                               ; preds = %73, %84, %52, %58
  %86 = add nuw nsw i64 %49, 1
  %87 = load i32, ptr %9, align 8, !tbaa !81
  %88 = zext i32 %87 to i64
  %89 = icmp ult i64 %86, %88
  br i1 %89, label %48, label %36, !llvm.loop !158

90:                                               ; preds = %36, %7, %14
  call void @_ZN11xercesc_2_727SubstitutionGroupComparatorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75QName6setURIEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !159 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 4
  store i32 %1, ptr %3, align 4, !tbaa !134
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_721XercesElementWildcard8conflictEPNS_13SchemaGrammarENS_15ContentSpecNode9NodeTypesEPNS_5QNameES4_S6_PNS_27SubstitutionGroupComparatorE(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715ContentSpecNode8getFirstEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #4 comdat align 2 !prof !160 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !161
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715ContentSpecNode9getSecondEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #4 comdat align 2 !prof !162 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !163
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_5QNameEE10addElementERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 !prof !121 {
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPNS_5QNameEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 1) #9
  %3 = load ptr, ptr %1, align 8, !tbaa !89
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !101
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !99
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %5, i64 %8
  store ptr %3, ptr %9, align 8, !tbaa !89
  %10 = add i32 %7, 1
  store i32 %10, ptr %6, align 4, !tbaa !99
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715ContentSpecNode10getElementEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #4 comdat align 2 !prof !164 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !165
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIbE10addElementERKb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #2 comdat align 2 !prof !123 {
  tail call void @_ZN11xercesc_2_713ValueVectorOfIbE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 1) #9
  %3 = load i8, ptr %1, align 1, !tbaa !90, !range !91, !noundef !92
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !108
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !106
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds i8, ptr %5, i64 %8
  store i8 %3, ptr %9, align 1, !tbaa !90
  %10 = add i32 %7, 1
  store i32 %10, ptr %6, align 4, !tbaa !106
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715AllContentModel28getContentLeafNameTypeVectorEv(ptr noundef nonnull align 8 dereferenceable(46) %0) unnamed_addr #4 comdat align 2 !prof !121 {
  ret ptr null
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715AllContentModel12getNextStateEjj(ptr noundef nonnull align 8 dereferenceable(46) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 comdat align 2 !prof !110 {
  %4 = load i32, ptr @_ZN11xercesc_2_715XMLContentModel13gInvalidTransE, align 4, !tbaa !155
  ret i32 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #4 comdat align 2 !prof !166 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715XMLContentModelD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !prof !96 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715XMLContentModelD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
  tail call void @llvm.trap() #13
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !110 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !110 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !167
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #9
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #9
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #12
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #2 comdat align 2 !prof !110 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !71
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !110 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !71
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #9
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !110 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !110 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !167
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #9
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #9
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #12
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #2 comdat align 2 !prof !110 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !71
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_5QNameEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !121 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !99
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !100
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %42, !prof !170

9:                                                ; preds = %2
  %10 = uitofp i32 %4 to double
  %11 = fmul double %10, 1.250000e+00
  %12 = fptoui double %11 to i32
  %13 = tail call i32 @llvm.umax.i32(i32 %5, i32 %12)
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !102
  %16 = zext i32 %13 to i64
  %17 = shl nuw nsw i64 %16, 3
  %18 = load ptr, ptr %15, align 8, !tbaa !71
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %17) #9
  %22 = load i32, ptr %3, align 4, !tbaa !99
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %9
  %25 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %26 = zext i32 %22 to i64
  br label %34

27:                                               ; preds = %34, %9
  %28 = load ptr, ptr %14, align 8, !tbaa !102
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !101
  %31 = load ptr, ptr %28, align 8, !tbaa !71
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30) #9
  store ptr %21, ptr %29, align 8, !tbaa !101
  store i32 %13, ptr %6, align 8, !tbaa !100
  br label %42

34:                                               ; preds = %24, %34
  %35 = phi i64 [ 0, %24 ], [ %40, %34 ]
  %36 = load ptr, ptr %25, align 8, !tbaa !101
  %37 = getelementptr inbounds ptr, ptr %36, i64 %35
  %38 = load ptr, ptr %37, align 8, !tbaa !89
  %39 = getelementptr inbounds ptr, ptr %21, i64 %35
  store ptr %38, ptr %39, align 8, !tbaa !89
  %40 = add nuw nsw i64 %35, 1
  %41 = icmp eq i64 %40, %26
  br i1 %41, label %27, label %34, !llvm.loop !171

42:                                               ; preds = %2, %27
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIbE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !123 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !106
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !107
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %40, !prof !172

9:                                                ; preds = %2
  %10 = uitofp i32 %4 to double
  %11 = fmul double %10, 1.250000e+00
  %12 = fptoui double %11 to i32
  %13 = tail call i32 @llvm.umax.i32(i32 %5, i32 %12)
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !109
  %16 = zext i32 %13 to i64
  %17 = load ptr, ptr %15, align 8, !tbaa !71
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %16) #9
  %21 = load i32, ptr %3, align 4, !tbaa !106
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !108
  br i1 %22, label %27, label %25, !prof !173

25:                                               ; preds = %9
  %26 = zext i32 %21 to i64
  br label %33

27:                                               ; preds = %33, %9
  %28 = load ptr, ptr %14, align 8, !tbaa !109
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %28, align 8, !tbaa !71
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %24) #9
  store ptr %20, ptr %29, align 8, !tbaa !108
  store i32 %13, ptr %6, align 8, !tbaa !107
  br label %40

33:                                               ; preds = %25, %33
  %34 = phi i64 [ 0, %25 ], [ %38, %33 ]
  %35 = getelementptr inbounds i8, ptr %24, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !90, !range !91, !noundef !92
  %37 = getelementptr inbounds i8, ptr %20, i64 %34
  store i8 %36, ptr %37, align 1, !tbaa !90
  %38 = add nuw nsw i64 %34, 1
  %39 = icmp eq i64 %38, %26
  br i1 %39, label %27, label %33, !prof !174, !llvm.loop !175

40:                                               ; preds = %2, %27
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

attributes #0 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #1 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { optsize }
attributes #10 = { nounwind }
attributes #11 = { noreturn }
attributes #12 = { nounwind optsize }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!69}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68}
!35 = !{ptr @_ZN11xercesc_2_715AllContentModelC2EPNS_15ContentSpecNodeEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_715XMLContentModelC2Ev, i64 1}
!36 = !{ptr @_ZN11xercesc_2_715AllContentModelC2EPNS_15ContentSpecNodeEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_5QNameEEC2EjPNS_13MemoryManagerEb, i64 1}
!37 = !{ptr @_ZN11xercesc_2_715AllContentModelC2EPNS_15ContentSpecNodeEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713ValueVectorOfIbEC2EjPNS_13MemoryManagerEb, i64 1}
!38 = !{ptr @_ZN11xercesc_2_715AllContentModelC2EPNS_15ContentSpecNodeEbPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv, i64 1}
!39 = !{ptr @_ZN11xercesc_2_715AllContentModelC2EPNS_15ContentSpecNodeEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_715AllContentModel14buildChildListEPNS_15ContentSpecNodeERNS_13ValueVectorOfIPNS_5QNameEEERNS3_IbEE, i64 1}
!40 = !{ptr @_ZN11xercesc_2_715AllContentModelC2EPNS_15ContentSpecNodeEbPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_5QNameEE4sizeEv, i64 1}
!41 = !{ptr @_ZN11xercesc_2_715AllContentModelC2EPNS_15ContentSpecNodeEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713ValueVectorOfIbED2Ev, i64 1}
!42 = !{ptr @_ZN11xercesc_2_715AllContentModelC2EPNS_15ContentSpecNodeEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_5QNameEED2Ev, i64 1}
!43 = !{ptr @_ZN11xercesc_2_715AllContentModelC2EPNS_15ContentSpecNodeEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 2}
!44 = !{ptr @_ZN11xercesc_2_715AllContentModelC2EPNS_15ContentSpecNodeEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_5QNameEE9elementAtEj, i64 2}
!45 = !{ptr @_ZN11xercesc_2_715AllContentModelC2EPNS_15ContentSpecNodeEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_75QNameC1ERKS0_, i64 2}
!46 = !{ptr @_ZN11xercesc_2_715AllContentModelC2EPNS_15ContentSpecNodeEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713ValueVectorOfIbE9elementAtEj, i64 2}
!47 = !{ptr @_ZN11xercesc_2_715XMLContentModelC2Ev, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 24}
!48 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_5QNameEEC2EjPNS_13MemoryManagerEb, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 1}
!49 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIbEC2EjPNS_13MemoryManagerEb, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 4}
!50 = !{ptr @_ZN11xercesc_2_715AllContentModel14buildChildListEPNS_15ContentSpecNodeERNS_13ValueVectorOfIPNS_5QNameEEERNS3_IbEE, ptr @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv, i64 21}
!51 = !{ptr @_ZN11xercesc_2_715AllContentModel14buildChildListEPNS_15ContentSpecNodeERNS_13ValueVectorOfIPNS_5QNameEEERNS3_IbEE, ptr @_ZN11xercesc_2_715ContentSpecNode8getFirstEv, i64 10}
!52 = !{ptr @_ZN11xercesc_2_715AllContentModel14buildChildListEPNS_15ContentSpecNodeERNS_13ValueVectorOfIPNS_5QNameEEERNS3_IbEE, ptr @_ZN11xercesc_2_715ContentSpecNode9getSecondEv, i64 9}
!53 = !{ptr @_ZN11xercesc_2_715AllContentModel14buildChildListEPNS_15ContentSpecNodeERNS_13ValueVectorOfIPNS_5QNameEEERNS3_IbEE, ptr @_ZN11xercesc_2_715AllContentModel14buildChildListEPNS_15ContentSpecNodeERNS_13ValueVectorOfIPNS_5QNameEEERNS3_IbEE, i64 9}
!54 = !{ptr @_ZN11xercesc_2_715AllContentModel14buildChildListEPNS_15ContentSpecNodeERNS_13ValueVectorOfIPNS_5QNameEEERNS3_IbEE, ptr @_ZN11xercesc_2_715ContentSpecNode10getElementEv, i64 11}
!55 = !{ptr @_ZN11xercesc_2_715AllContentModel14buildChildListEPNS_15ContentSpecNodeERNS_13ValueVectorOfIPNS_5QNameEEERNS3_IbEE, ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_5QNameEE10addElementERKS2_, i64 11}
!56 = !{ptr @_ZN11xercesc_2_715AllContentModel14buildChildListEPNS_15ContentSpecNodeERNS_13ValueVectorOfIPNS_5QNameEEERNS3_IbEE, ptr @_ZN11xercesc_2_713ValueVectorOfIbE10addElementERKb, i64 11}
!57 = !{ptr @_ZN11xercesc_2_715AllContentModel14buildChildListEPNS_15ContentSpecNodeERNS_13ValueVectorOfIPNS_5QNameEEERNS3_IbEE, ptr @__cxa_allocate_exception, i64 1}
!58 = !{ptr @_ZN11xercesc_2_715AllContentModel14buildChildListEPNS_15ContentSpecNodeERNS_13ValueVectorOfIPNS_5QNameEEERNS3_IbEE, ptr @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!59 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_5QNameEE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!60 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_5QNameEE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!61 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIbE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!62 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIbE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!63 = !{ptr @_ZN11xercesc_2_715AllContentModelD2Ev, ptr @_ZN11xercesc_2_715XMLContentModelD2Ev, i64 1}
!64 = !{ptr @_ZNK11xercesc_2_715AllContentModel15validateContentEPPNS_5QNameEjj, ptr @_ZNK11xercesc_2_75QName6getURIEv, i64 10}
!65 = !{ptr @_ZNK11xercesc_2_715AllContentModel15validateContentEPPNS_5QNameEjj, ptr @_ZNK11xercesc_2_75QName12getLocalPartEv, i64 10}
!66 = !{ptr @_ZNK11xercesc_2_715AllContentModel15validateContentEPPNS_5QNameEjj, ptr @_ZN11xercesc_2_79XMLString6equalsEPKtS2_, i64 5}
!67 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_5QNameEE10addElementERKS2_, ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_5QNameEE19ensureExtraCapacityEj, i64 6}
!68 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIbE10addElementERKb, ptr @_ZN11xercesc_2_713ValueVectorOfIbE19ensureExtraCapacityEj, i64 1359937}
!69 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!70 = !{!"function_entry_count", i64 1}
!71 = !{!72, !72, i64 0}
!72 = !{!"vtable pointer", !73, i64 0}
!73 = !{!"Simple C++ TBAA"}
!74 = !{!75, !77, i64 8}
!75 = !{!"_ZTSN11xercesc_2_715AllContentModelE", !76, i64 0, !77, i64 8, !79, i64 16, !77, i64 24, !77, i64 32, !79, i64 40, !80, i64 44, !80, i64 45}
!76 = !{!"_ZTSN11xercesc_2_715XMLContentModelE"}
!77 = !{!"any pointer", !78, i64 0}
!78 = !{!"omnipotent char", !73, i64 0}
!79 = !{!"int", !78, i64 0}
!80 = !{!"bool", !78, i64 0}
!81 = !{!75, !79, i64 16}
!82 = !{!75, !80, i64 44}
!83 = !{!75, !80, i64 45}
!84 = !{!"branch_weights", i32 1, i32 2}
!85 = !{!"branch_weights", i32 2, i32 1}
!86 = !{!75, !77, i64 24}
!87 = !{!75, !77, i64 32}
!88 = !{!"branch_weights", i32 1, i32 127}
!89 = !{!77, !77, i64 0}
!90 = !{!80, !80, i64 0}
!91 = !{i8 0, i8 2}
!92 = !{}
!93 = !{!"branch_weights", i32 321, i32 127}
!94 = distinct !{!94, !95}
!95 = !{!"llvm.loop.mustprogress"}
!96 = !{!"function_entry_count", i64 24}
!97 = !{!98, !80, i64 0}
!98 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIPNS_5QNameEEE", !80, i64 0, !79, i64 4, !79, i64 8, !77, i64 16, !77, i64 24}
!99 = !{!98, !79, i64 4}
!100 = !{!98, !79, i64 8}
!101 = !{!98, !77, i64 16}
!102 = !{!98, !77, i64 24}
!103 = !{!"function_entry_count", i64 4}
!104 = !{!105, !80, i64 0}
!105 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIbEE", !80, i64 0, !79, i64 4, !79, i64 8, !77, i64 16, !77, i64 24}
!106 = !{!105, !79, i64 4}
!107 = !{!105, !79, i64 8}
!108 = !{!105, !77, i64 16}
!109 = !{!105, !77, i64 24}
!110 = !{!"function_entry_count", i64 0}
!111 = !{!"function_entry_count", i64 353}
!112 = !{!113, !115, i64 48}
!113 = !{!"_ZTSN11xercesc_2_715ContentSpecNodeE", !114, i64 0, !77, i64 8, !77, i64 16, !77, i64 24, !77, i64 32, !77, i64 40, !115, i64 48, !80, i64 52, !80, i64 53, !79, i64 56, !79, i64 60}
!114 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!115 = !{!"_ZTSN11xercesc_2_715ContentSpecNode9NodeTypesE", !78, i64 0}
!116 = !{!"function_entry_count", i64 251}
!117 = !{!113, !79, i64 56}
!118 = !{!"function_entry_count", i64 11}
!119 = !{!"branch_weights", i32 7, i32 96, i32 98, i32 7}
!120 = !{!75, !79, i64 40}
!121 = !{!"function_entry_count", i64 6}
!122 = !{!"branch_weights", i32 7, i32 1}
!123 = !{!"function_entry_count", i64 1359937}
!124 = !{!"branch_weights", i32 1359938, i32 1}
!125 = distinct !{!125, !95}
!126 = !{!"branch_weights", i32 22, i32 1}
!127 = !{!"branch_weights", i32 7, i32 16}
!128 = !{!"branch_weights", i32 2689, i32 127}
!129 = distinct !{!129, !95}
!130 = !{!"branch_weights", i32 251761836, i32 1895721812}
!131 = !{!"branch_weights", i32 127, i32 321}
!132 = distinct !{!132, !95}
!133 = !{!"function_entry_count", i64 6553673}
!134 = !{!135, !79, i64 20}
!135 = !{!"_ZTSN11xercesc_2_75QNameE", !114, i64 0, !79, i64 8, !79, i64 12, !79, i64 16, !79, i64 20, !77, i64 24, !77, i64 32, !77, i64 40, !77, i64 48}
!136 = !{!"function_entry_count", i64 1231717351}
!137 = !{!"branch_weights", i32 621, i32 -1469098093}
!138 = !{!139, !139, i64 0}
!139 = !{!"short", !78, i64 0}
!140 = !{!"branch_weights", i32 408901017, i32 1}
!141 = !{!"branch_weights", i32 267, i32 4}
!142 = !{!"branch_weights", i32 1, i32 4}
!143 = !{!"branch_weights", i32 156, i32 112}
!144 = !{!"branch_weights", i32 1, i32 112}
!145 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!146 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!147 = distinct !{!147, !95}
!148 = !{!"function_entry_count", i64 6668307}
!149 = !{!135, !77, i64 32}
!150 = distinct !{!150, !95}
!151 = distinct !{!151, !95}
!152 = !{!153, !77, i64 0}
!153 = !{!"_ZTSN11xercesc_2_727SubstitutionGroupComparatorE", !77, i64 0, !77, i64 8}
!154 = !{!153, !77, i64 8}
!155 = !{!79, !79, i64 0}
!156 = distinct !{!156, !95}
!157 = distinct !{!157, !95}
!158 = distinct !{!158, !95}
!159 = !{!"function_entry_count", i64 76}
!160 = !{!"function_entry_count", i64 180}
!161 = !{!113, !77, i64 32}
!162 = !{!"function_entry_count", i64 155}
!163 = !{!113, !77, i64 40}
!164 = !{!"function_entry_count", i64 110}
!165 = !{!113, !77, i64 16}
!166 = !{!"function_entry_count", i64 5836268}
!167 = !{!168, !77, i64 40}
!168 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !169, i64 8, !77, i64 16, !79, i64 24, !77, i64 32, !77, i64 40}
!169 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !78, i64 0}
!170 = !{!"branch_weights", i32 1, i32 7}
!171 = distinct !{!171, !95}
!172 = !{!"branch_weights", i32 3, i32 1359936}
!173 = !{!"branch_weights", i32 1, i32 191}
!174 = !{!"branch_weights", i32 191, i32 1025}
!175 = distinct !{!175, !95}
