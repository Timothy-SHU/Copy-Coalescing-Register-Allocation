; ModuleID = 'MixedContentModel.cpp'
source_filename = "MixedContentModel.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::ValueVectorOf" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::ValueVectorOf.0" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::MixedContentModel" = type { %"class.xercesc_2_7::XMLContentModel", i32, ptr, ptr, i8, i8, ptr }
%"class.xercesc_2_7::XMLContentModel" = type { ptr }
%"class.xercesc_2_7::ContentSpecNode" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::SubstitutionGroupComparator" = type { ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_5QNameEE9elementAtEj = comdat any

$_ZN11xercesc_2_713ValueVectorOfINS_15ContentSpecNode9NodeTypesEE9elementAtEj = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_717MixedContentModel30checkUniqueParticleAttributionEPNS_13SchemaGrammarEPNS_15GrammarResolverEPNS_13XMLStringPoolEPNS_12XMLValidatorEPjPKt = comdat any

$_ZNK11xercesc_2_717MixedContentModel28getContentLeafNameTypeVectorEv = comdat any

$_ZNK11xercesc_2_717MixedContentModel12getNextStateEjj = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_5QNameEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_713ValueVectorOfINS_15ContentSpecNode9NodeTypesEE19ensureExtraCapacityEj = comdat any

$_ZTSN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTIN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTSN11xercesc_2_715XMLContentModelE = comdat any

$_ZTIN11xercesc_2_715XMLContentModelE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

@_ZTVN11xercesc_2_717MixedContentModelE = dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_717MixedContentModelE, ptr @_ZN11xercesc_2_717MixedContentModelD2Ev, ptr @_ZN11xercesc_2_717MixedContentModelD0Ev, ptr @_ZNK11xercesc_2_717MixedContentModel15validateContentEPPNS_5QNameEjj, ptr @_ZNK11xercesc_2_717MixedContentModel22validateContentSpecialEPPNS_5QNameEjjPNS_15GrammarResolverEPNS_13XMLStringPoolE, ptr @_ZN11xercesc_2_717MixedContentModel30checkUniqueParticleAttributionEPNS_13SchemaGrammarEPNS_15GrammarResolverEPNS_13XMLStringPoolEPNS_12XMLValidatorEPjPKt, ptr @_ZNK11xercesc_2_717MixedContentModel28getContentLeafNameTypeVectorEv, ptr @_ZNK11xercesc_2_717MixedContentModel12getNextStateEjj] }, align 8
@.str = private unnamed_addr constant [22 x i8] c"MixedContentModel.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_714XMLElementDecl14fgPCDataElemIdE = external local_unnamed_addr constant i32, align 4
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTSN11xercesc_2_717MixedContentModelE = dso_local constant [35 x i8] c"N11xercesc_2_717MixedContentModelE\00", align 1
@_ZTSN11xercesc_2_715XMLContentModelE = linkonce_odr dso_local constant [33 x i8] c"N11xercesc_2_715XMLContentModelE\00", comdat, align 1
@_ZTIN11xercesc_2_715XMLContentModelE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715XMLContentModelE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_717MixedContentModelE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_717MixedContentModelE, ptr @_ZTIN11xercesc_2_715XMLContentModelE }, align 8
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_715XMLContentModel10gEOCFakeIdE = external local_unnamed_addr constant i32, align 4
@_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE = external local_unnamed_addr constant i32, align 4
@_ZN11xercesc_2_715XMLContentModel13gInvalidTransE = external local_unnamed_addr constant i32, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"./xercesc/util/ValueVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_717MixedContentModelC1EbPNS_15ContentSpecNodeEbPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, i1, ptr, i1, ptr), ptr @_ZN11xercesc_2_717MixedContentModelC2EbPNS_15ContentSpecNodeEbPNS_13MemoryManagerE
@_ZN11xercesc_2_717MixedContentModelD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_717MixedContentModelD2Ev

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717MixedContentModelC2EbPNS_15ContentSpecNodeEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, i1 noundef zeroext %1, ptr noundef readonly %2, i1 noundef zeroext %3, ptr noundef %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %6 = alloca %"class.xercesc_2_7::ValueVectorOf", align 8
  %7 = alloca %"class.xercesc_2_7::ValueVectorOf.0", align 8
  %8 = zext i1 %1 to i8
  %9 = zext i1 %3 to i8
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_717MixedContentModelE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %10 = getelementptr inbounds %"class.xercesc_2_7::MixedContentModel", ptr %0, i64 0, i32 1
  store i32 0, ptr %10, align 8, !tbaa !38
  %11 = getelementptr inbounds %"class.xercesc_2_7::MixedContentModel", ptr %0, i64 0, i32 2
  %12 = getelementptr inbounds %"class.xercesc_2_7::MixedContentModel", ptr %0, i64 0, i32 3
  %13 = getelementptr inbounds %"class.xercesc_2_7::MixedContentModel", ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  store i8 %9, ptr %13, align 8, !tbaa !45
  %14 = getelementptr inbounds %"class.xercesc_2_7::MixedContentModel", ptr %0, i64 0, i32 5
  store i8 %8, ptr %14, align 1, !tbaa !46
  %15 = getelementptr inbounds %"class.xercesc_2_7::MixedContentModel", ptr %0, i64 0, i32 6
  store ptr %4, ptr %15, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #10
  store i8 0, ptr %6, align 8, !tbaa !48
  %16 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %6, i64 0, i32 1
  store i32 0, ptr %16, align 4, !tbaa !50
  %17 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %6, i64 0, i32 2
  store i32 64, ptr %17, align 8, !tbaa !51
  %18 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %6, i64 0, i32 3
  store ptr null, ptr %18, align 8, !tbaa !52
  %19 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %6, i64 0, i32 4
  store ptr %4, ptr %19, align 8, !tbaa !53
  %20 = load ptr, ptr %4, align 8, !tbaa !35
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 512)
  store ptr %23, ptr %18, align 8, !tbaa !52
  %24 = load i32, ptr %17, align 8, !tbaa !51
  %25 = zext i32 %24 to i64
  %26 = shl nuw nsw i64 %25, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %23, i8 0, i64 %26, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #10
  %27 = load ptr, ptr %15, align 8, !tbaa !47
  store i8 0, ptr %7, align 8, !tbaa !54
  %28 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %7, i64 0, i32 1
  store i32 0, ptr %28, align 4, !tbaa !56
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %7, i64 0, i32 2
  store i32 64, ptr %29, align 8, !tbaa !57
  %30 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %7, i64 0, i32 3
  store ptr null, ptr %30, align 8, !tbaa !58
  %31 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %7, i64 0, i32 4
  store ptr %27, ptr %31, align 8, !tbaa !59
  %32 = load ptr, ptr %27, align 8, !tbaa !35
  %33 = getelementptr inbounds ptr, ptr %32, i64 2
  %34 = load ptr, ptr %33, align 8
  %35 = invoke noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(8) %27, i64 noundef 256)
          to label %36 unwind label %45

36:                                               ; preds = %5
  store ptr %35, ptr %30, align 8, !tbaa !58
  %37 = load i32, ptr %29, align 8, !tbaa !57
  %38 = zext i32 %37 to i64
  %39 = shl nuw nsw i64 %38, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %35, i8 0, i64 %39, i1 false)
  %40 = icmp eq ptr %2, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = tail call ptr @__cxa_allocate_exception(i64 48) #10
  %43 = load ptr, ptr %15, align 8, !tbaa !47
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %42, ptr noundef nonnull @.str, i32 noundef 70, i32 noundef 23, ptr noundef %43)
          to label %44 unwind label %47

44:                                               ; preds = %41
  invoke void @__cxa_throw(ptr nonnull %42, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #11
          to label %139 unwind label %49

45:                                               ; preds = %5
  %46 = landingpad { ptr, i32 }
          cleanup
  br label %128

47:                                               ; preds = %41
  %48 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %42) #10
  br label %118

49:                                               ; preds = %61, %52, %51, %44
  %50 = landingpad { ptr, i32 }
          cleanup
  br label %118

51:                                               ; preds = %36
  invoke void @_ZN11xercesc_2_717MixedContentModel14buildChildListEPNS_15ContentSpecNodeERNS_13ValueVectorOfIPNS_5QNameEEERNS3_INS1_9NodeTypesEEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %52 unwind label %49

52:                                               ; preds = %51
  %53 = load i32, ptr %16, align 4, !tbaa !50
  store i32 %53, ptr %10, align 8, !tbaa !38
  %54 = load ptr, ptr %15, align 8, !tbaa !47
  %55 = zext i32 %53 to i64
  %56 = shl nuw nsw i64 %55, 3
  %57 = load ptr, ptr %54, align 8, !tbaa !35
  %58 = getelementptr inbounds ptr, ptr %57, i64 2
  %59 = load ptr, ptr %58, align 8
  %60 = invoke noundef ptr %59(ptr noundef nonnull align 8 dereferenceable(8) %54, i64 noundef %56)
          to label %61 unwind label %49

61:                                               ; preds = %52
  store ptr %60, ptr %11, align 8, !tbaa !60
  %62 = load ptr, ptr %15, align 8, !tbaa !47
  %63 = load i32, ptr %10, align 8, !tbaa !38
  %64 = zext i32 %63 to i64
  %65 = shl nuw nsw i64 %64, 2
  %66 = load ptr, ptr %62, align 8, !tbaa !35
  %67 = getelementptr inbounds ptr, ptr %66, i64 2
  %68 = load ptr, ptr %67, align 8
  %69 = invoke noundef ptr %68(ptr noundef nonnull align 8 dereferenceable(8) %62, i64 noundef %65)
          to label %70 unwind label %49

70:                                               ; preds = %61
  store ptr %69, ptr %12, align 8, !tbaa !61
  %71 = load i32, ptr %10, align 8, !tbaa !38
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %92

73:                                               ; preds = %106, %70
  %74 = load ptr, ptr %31, align 8, !tbaa !59
  %75 = load ptr, ptr %30, align 8, !tbaa !58
  %76 = load ptr, ptr %74, align 8, !tbaa !35
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %74, ptr noundef %75)
          to label %82 unwind label %79

79:                                               ; preds = %73
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #12
  unreachable

82:                                               ; preds = %73
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #10
  %83 = load ptr, ptr %19, align 8, !tbaa !53
  %84 = load ptr, ptr %18, align 8, !tbaa !52
  %85 = load ptr, ptr %83, align 8, !tbaa !35
  %86 = getelementptr inbounds ptr, ptr %85, i64 3
  %87 = load ptr, ptr %86, align 8
  invoke void %87(ptr noundef nonnull align 8 dereferenceable(8) %83, ptr noundef %84)
          to label %91 unwind label %88

88:                                               ; preds = %82
  %89 = landingpad { ptr, i32 }
          catch ptr null
  %90 = extractvalue { ptr, i32 } %89, 0
  call void @__clang_call_terminate(ptr %90) #12
  unreachable

91:                                               ; preds = %82
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #10
  ret void

92:                                               ; preds = %70, %106
  %93 = phi i64 [ %110, %106 ], [ 0, %70 ]
  %94 = load ptr, ptr %15, align 8, !tbaa !47
  %95 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %94)
          to label %96 unwind label %114

96:                                               ; preds = %92
  %97 = trunc i64 %93 to i32
  %98 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_5QNameEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %97)
          to label %99 unwind label %116

99:                                               ; preds = %96
  %100 = load ptr, ptr %98, align 8, !tbaa !62
  invoke void @_ZN11xercesc_2_75QNameC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %95, ptr noundef nonnull align 8 dereferenceable(56) %100)
          to label %101 unwind label %116

101:                                              ; preds = %99
  %102 = load ptr, ptr %11, align 8, !tbaa !60
  %103 = getelementptr inbounds ptr, ptr %102, i64 %93
  store ptr %95, ptr %103, align 8, !tbaa !62
  %104 = trunc i64 %93 to i32
  %105 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xercesc_2_713ValueVectorOfINS_15ContentSpecNode9NodeTypesEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %104)
          to label %106 unwind label %114

106:                                              ; preds = %101
  %107 = load i32, ptr %105, align 4, !tbaa !63
  %108 = load ptr, ptr %12, align 8, !tbaa !61
  %109 = getelementptr inbounds i32, ptr %108, i64 %93
  store i32 %107, ptr %109, align 4, !tbaa !63
  %110 = add nuw nsw i64 %93, 1
  %111 = load i32, ptr %10, align 8, !tbaa !38
  %112 = zext i32 %111 to i64
  %113 = icmp ult i64 %110, %112
  br i1 %113, label %92, label %73, !llvm.loop !65

114:                                              ; preds = %101, %92
  %115 = landingpad { ptr, i32 }
          cleanup
  br label %118

116:                                              ; preds = %99, %96
  %117 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %95, ptr noundef %94) #10
  br label %118

118:                                              ; preds = %114, %116, %49, %47
  %119 = phi { ptr, i32 } [ %50, %49 ], [ %48, %47 ], [ %115, %114 ], [ %117, %116 ]
  %120 = load ptr, ptr %31, align 8, !tbaa !59
  %121 = load ptr, ptr %30, align 8, !tbaa !58
  %122 = load ptr, ptr %120, align 8, !tbaa !35
  %123 = getelementptr inbounds ptr, ptr %122, i64 3
  %124 = load ptr, ptr %123, align 8
  invoke void %124(ptr noundef nonnull align 8 dereferenceable(8) %120, ptr noundef %121)
          to label %128 unwind label %125

125:                                              ; preds = %118
  %126 = landingpad { ptr, i32 }
          catch ptr null
  %127 = extractvalue { ptr, i32 } %126, 0
  call void @__clang_call_terminate(ptr %127) #12
  unreachable

128:                                              ; preds = %118, %45
  %129 = phi { ptr, i32 } [ %46, %45 ], [ %119, %118 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #10
  %130 = load ptr, ptr %19, align 8, !tbaa !53
  %131 = load ptr, ptr %18, align 8, !tbaa !52
  %132 = load ptr, ptr %130, align 8, !tbaa !35
  %133 = getelementptr inbounds ptr, ptr %132, i64 3
  %134 = load ptr, ptr %133, align 8
  invoke void %134(ptr noundef nonnull align 8 dereferenceable(8) %130, ptr noundef %131)
          to label %138 unwind label %135

135:                                              ; preds = %128
  %136 = landingpad { ptr, i32 }
          catch ptr null
  %137 = extractvalue { ptr, i32 } %136, 0
  call void @__clang_call_terminate(ptr %137) #12
  unreachable

138:                                              ; preds = %128
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #10
  resume { ptr, i32 } %129

139:                                              ; preds = %44
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare i32 @__gxx_personality_v0(...)

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
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

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717MixedContentModel14buildChildListEPNS_15ContentSpecNodeERNS_13ValueVectorOfIPNS_5QNameEEERNS3_INS1_9NodeTypesEEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nocapture noundef readonly %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #1 align 2 !prof !34 {
  br label %5

5:                                                ; preds = %35, %33, %4
  %6 = phi ptr [ %1, %4 ], [ %30, %33 ], [ %28, %35 ]
  %7 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %6, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !68
  switch i32 %8, label %26 [
    i32 8, label %9
    i32 7, label %9
    i32 6, label %9
    i32 0, label %9
  ]

9:                                                ; preds = %5, %5, %5, %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %6, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !71
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPNS_5QNameEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 1)
  %12 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %2, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !52
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %2, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !50
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds ptr, ptr %13, i64 %16
  store ptr %11, ptr %17, align 8, !tbaa !62
  %18 = add i32 %15, 1
  store i32 %18, ptr %14, align 4, !tbaa !50
  tail call void @_ZN11xercesc_2_713ValueVectorOfINS_15ContentSpecNode9NodeTypesEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 1)
  %19 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %3, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !58
  %21 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %3, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !56
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, ptr %20, i64 %23
  store i32 %8, ptr %24, align 4, !tbaa !63
  %25 = add i32 %22, 1
  store i32 %25, ptr %21, align 4, !tbaa !56
  br label %38

26:                                               ; preds = %5
  %27 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %6, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !72
  %29 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %6, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !73
  %31 = and i32 %8, 14
  %32 = icmp eq i32 %31, 4
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  tail call void @_ZN11xercesc_2_717MixedContentModel14buildChildListEPNS_15ContentSpecNodeERNS_13ValueVectorOfIPNS_5QNameEEERNS3_INS1_9NodeTypesEEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %28, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %34 = icmp eq ptr %30, null
  br i1 %34, label %38, label %5

35:                                               ; preds = %26
  %36 = add i32 %8, -1
  %37 = icmp ult i32 %36, 3
  br i1 %37, label %5, label %38

38:                                               ; preds = %35, %33, %9
  ret void
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_5QNameEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !50
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !75

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #10
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !53
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 206, i32 noundef 116, ptr noundef %9)
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
  %15 = load ptr, ptr %14, align 8, !tbaa !52
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  ret ptr %17
}

declare void @_ZN11xercesc_2_75QNameC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xercesc_2_713ValueVectorOfINS_15ContentSpecNode9NodeTypesEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !56
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #10
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 206, i32 noundef 116, ptr noundef %9)
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
  %15 = load ptr, ptr %14, align 8, !tbaa !58
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds i32, ptr %15, i64 %16
  ret ptr %17
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_717MixedContentModelD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_717MixedContentModelE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::MixedContentModel", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !38
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::MixedContentModel", ptr %0, i64 0, i32 2
  br label %15

7:                                                ; preds = %25, %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::MixedContentModel", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = getelementptr inbounds %"class.xercesc_2_7::MixedContentModel", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !60
  %12 = load ptr, ptr %9, align 8, !tbaa !35
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  invoke void %14(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %11)
          to label %30 unwind label %38

15:                                               ; preds = %5, %25
  %16 = phi i64 [ 0, %5 ], [ %26, %25 ]
  %17 = load ptr, ptr %6, align 8, !tbaa !60
  %18 = getelementptr inbounds ptr, ptr %17, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !62
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %15
  %22 = load ptr, ptr %19, align 8, !tbaa !35
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(56) %19) #10
  br label %25

25:                                               ; preds = %15, %21
  %26 = add nuw nsw i64 %16, 1
  %27 = load i32, ptr %2, align 8, !tbaa !38
  %28 = zext i32 %27 to i64
  %29 = icmp ult i64 %26, %28
  br i1 %29, label %15, label %7, !llvm.loop !76

30:                                               ; preds = %7
  %31 = load ptr, ptr %8, align 8, !tbaa !47
  %32 = getelementptr inbounds %"class.xercesc_2_7::MixedContentModel", ptr %0, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !61
  %34 = load ptr, ptr %31, align 8, !tbaa !35
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef %33)
          to label %37 unwind label %38

37:                                               ; preds = %30
  ret void

38:                                               ; preds = %30, %7
  %39 = landingpad { ptr, i32 }
          catch ptr null
  %40 = extractvalue { ptr, i32 } %39, 0
  tail call void @__clang_call_terminate(ptr %40) #12
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat !prof !34 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #10
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_717MixedContentModelD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_717MixedContentModelD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717MixedContentModel7hasDupsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) local_unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::MixedContentModel", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !38
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %110, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr %2, align 8, !tbaa !38
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %110

8:                                                ; preds = %5
  %9 = getelementptr inbounds %"class.xercesc_2_7::MixedContentModel", ptr %0, i64 0, i32 2
  %10 = getelementptr inbounds %"class.xercesc_2_7::MixedContentModel", ptr %0, i64 0, i32 5
  br label %11

11:                                               ; preds = %8, %105
  %12 = phi i64 [ 0, %8 ], [ %106, %105 ]
  %13 = phi i1 [ %7, %8 ], [ %109, %105 ]
  %14 = load ptr, ptr %9, align 8, !tbaa !60
  %15 = getelementptr inbounds ptr, ptr %14, i64 %12
  %16 = load ptr, ptr %15, align 8, !tbaa !62
  %17 = load i32, ptr %2, align 8, !tbaa !38
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %105

19:                                               ; preds = %11
  %20 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %16, i64 0, i32 4
  %21 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %16, i64 0, i32 6
  br label %22

22:                                               ; preds = %19, %99
  %23 = phi i64 [ 0, %19 ], [ %100, %99 ]
  %24 = phi i1 [ %18, %19 ], [ %103, %99 ]
  %25 = icmp eq i64 %23, %12
  br i1 %25, label %99, label %26

26:                                               ; preds = %22
  %27 = load i8, ptr %10, align 1, !tbaa !46, !range !77, !noundef !78
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %61, label %29

29:                                               ; preds = %26
  %30 = tail call noundef ptr @_ZNK11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %16)
  %31 = load ptr, ptr %9, align 8, !tbaa !60
  %32 = getelementptr inbounds ptr, ptr %31, i64 %23
  %33 = load ptr, ptr %32, align 8, !tbaa !62
  %34 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %33)
  %35 = icmp eq ptr %30, null
  %36 = icmp eq ptr %34, null
  %37 = or i1 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %29
  %39 = load i16, ptr %30, align 2, !tbaa !79
  %40 = load i16, ptr %34, align 2, !tbaa !79
  %41 = icmp eq i16 %39, %40
  br i1 %41, label %50, label %99

42:                                               ; preds = %29
  br i1 %35, label %46, label %43

43:                                               ; preds = %42
  %44 = load i16, ptr %30, align 2, !tbaa !79
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %46, label %99

46:                                               ; preds = %43, %42
  br i1 %36, label %104, label %47

47:                                               ; preds = %46
  %48 = load i16, ptr %34, align 2, !tbaa !79
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %104, label %99

50:                                               ; preds = %38, %55
  %51 = phi i16 [ %58, %55 ], [ %39, %38 ]
  %52 = phi ptr [ %57, %55 ], [ %34, %38 ]
  %53 = phi ptr [ %56, %55 ], [ %30, %38 ]
  %54 = icmp eq i16 %51, 0
  br i1 %54, label %104, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds i16, ptr %53, i64 1
  %57 = getelementptr inbounds i16, ptr %52, i64 1
  %58 = load i16, ptr %56, align 2, !tbaa !79
  %59 = load i16, ptr %57, align 2, !tbaa !79
  %60 = icmp eq i16 %58, %59
  br i1 %60, label %50, label %99, !llvm.loop !81

61:                                               ; preds = %26
  %62 = load i32, ptr %20, align 4, !tbaa !82
  %63 = load ptr, ptr %9, align 8, !tbaa !60
  %64 = getelementptr inbounds ptr, ptr %63, i64 %23
  %65 = load ptr, ptr %64, align 8, !tbaa !62
  %66 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %65, i64 0, i32 4
  %67 = load i32, ptr %66, align 4, !tbaa !82
  %68 = icmp eq i32 %62, %67
  br i1 %68, label %69, label %99

69:                                               ; preds = %61
  %70 = load ptr, ptr %21, align 8, !tbaa !84
  %71 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %65, i64 0, i32 6
  %72 = load ptr, ptr %71, align 8, !tbaa !84
  %73 = icmp eq ptr %70, null
  %74 = icmp eq ptr %72, null
  %75 = or i1 %73, %74
  br i1 %75, label %80, label %76

76:                                               ; preds = %69
  %77 = load i16, ptr %70, align 2, !tbaa !79
  %78 = load i16, ptr %72, align 2, !tbaa !79
  %79 = icmp eq i16 %77, %78
  br i1 %79, label %88, label %99

80:                                               ; preds = %69
  br i1 %73, label %84, label %81

81:                                               ; preds = %80
  %82 = load i16, ptr %70, align 2, !tbaa !79
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %81, %80
  br i1 %74, label %104, label %85

85:                                               ; preds = %84
  %86 = load i16, ptr %72, align 2, !tbaa !79
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %104, label %99

88:                                               ; preds = %76, %93
  %89 = phi i16 [ %96, %93 ], [ %77, %76 ]
  %90 = phi ptr [ %95, %93 ], [ %72, %76 ]
  %91 = phi ptr [ %94, %93 ], [ %70, %76 ]
  %92 = icmp eq i16 %89, 0
  br i1 %92, label %104, label %93

93:                                               ; preds = %88
  %94 = getelementptr inbounds i16, ptr %91, i64 1
  %95 = getelementptr inbounds i16, ptr %90, i64 1
  %96 = load i16, ptr %94, align 2, !tbaa !79
  %97 = load i16, ptr %95, align 2, !tbaa !79
  %98 = icmp eq i16 %96, %97
  br i1 %98, label %88, label %99, !llvm.loop !81

99:                                               ; preds = %55, %93, %38, %76, %85, %81, %47, %43, %61, %22
  %100 = add nuw nsw i64 %23, 1
  %101 = load i32, ptr %2, align 8, !tbaa !38
  %102 = zext i32 %101 to i64
  %103 = icmp ult i64 %100, %102
  br i1 %103, label %22, label %105, !llvm.loop !85

104:                                              ; preds = %85, %84, %47, %46, %50, %88
  br i1 %24, label %110, label %105

105:                                              ; preds = %99, %11, %104
  %106 = add nuw nsw i64 %12, 1
  %107 = load i32, ptr %2, align 8, !tbaa !38
  %108 = zext i32 %107 to i64
  %109 = icmp ult i64 %106, %108
  br i1 %109, label %11, label %110, !llvm.loop !86

110:                                              ; preds = %105, %104, %5, %1
  %111 = phi i1 [ false, %1 ], [ %7, %5 ], [ %13, %104 ], [ %109, %105 ]
  ret i1 %111
}

declare noundef ptr @_ZNK11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #3

declare noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_717MixedContentModel15validateContentEPPNS_5QNameEjj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 %3) unnamed_addr #1 align 2 !prof !34 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::MixedContentModel", ptr %0, i64 0, i32 4
  %6 = load i8, ptr %5, align 8, !tbaa !45, !range !77, !noundef !78
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %4
  %9 = icmp eq i32 %2, 0
  br i1 %9, label %133, label %10

10:                                               ; preds = %8
  %11 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl14fgPCDataElemIdE, align 4, !tbaa !87
  %12 = getelementptr inbounds %"class.xercesc_2_7::MixedContentModel", ptr %0, i64 0, i32 3
  %13 = getelementptr inbounds %"class.xercesc_2_7::MixedContentModel", ptr %0, i64 0, i32 2
  %14 = getelementptr inbounds %"class.xercesc_2_7::MixedContentModel", ptr %0, i64 0, i32 5
  %15 = zext i32 %2 to i64
  br label %27

16:                                               ; preds = %4
  %17 = icmp ne i32 %2, 0
  br i1 %17, label %18, label %253

18:                                               ; preds = %16
  %19 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl14fgPCDataElemIdE, align 4, !tbaa !87
  %20 = getelementptr inbounds %"class.xercesc_2_7::MixedContentModel", ptr %0, i64 0, i32 1
  %21 = getelementptr inbounds %"class.xercesc_2_7::MixedContentModel", ptr %0, i64 0, i32 3
  %22 = getelementptr inbounds %"class.xercesc_2_7::MixedContentModel", ptr %0, i64 0, i32 2
  %23 = getelementptr inbounds %"class.xercesc_2_7::MixedContentModel", ptr %0, i64 0, i32 5
  %24 = zext i32 %2 to i64
  %25 = zext i32 %2 to i64
  %26 = getelementptr inbounds %"class.xercesc_2_7::MixedContentModel", ptr %0, i64 0, i32 1
  br label %136

27:                                               ; preds = %10, %126
  %28 = phi i64 [ 0, %10 ], [ %127, %126 ]
  %29 = phi i32 [ undef, %10 ], [ %125, %126 ]
  %30 = phi i32 [ 0, %10 ], [ %124, %126 ]
  %31 = getelementptr inbounds ptr, ptr %1, i64 %28
  %32 = load ptr, ptr %31, align 8, !tbaa !62
  %33 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %32, i64 0, i32 4
  %34 = load i32, ptr %33, align 4, !tbaa !82
  %35 = icmp eq i32 %34, %11
  br i1 %35, label %122, label %36

36:                                               ; preds = %27
  %37 = load ptr, ptr %12, align 8, !tbaa !61
  %38 = zext i32 %30 to i64
  %39 = getelementptr inbounds i32, ptr %37, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !63
  %41 = load ptr, ptr %13, align 8, !tbaa !60
  %42 = getelementptr inbounds ptr, ptr %41, i64 %38
  %43 = load ptr, ptr %42, align 8, !tbaa !62
  %44 = trunc i64 %28 to i32
  switch i32 %40, label %120 [
    i32 0, label %45
    i32 7, label %116
    i32 8, label %112
  ]

45:                                               ; preds = %36
  %46 = load i8, ptr %14, align 1, !tbaa !46, !range !77, !noundef !78
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %77, label %48

48:                                               ; preds = %45
  %49 = tail call noundef ptr @_ZNK11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %43)
  %50 = tail call noundef ptr @_ZNK11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %32)
  %51 = icmp eq ptr %49, null
  %52 = icmp eq ptr %50, null
  %53 = or i1 %51, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %48
  %55 = load i16, ptr %49, align 2, !tbaa !79
  %56 = load i16, ptr %50, align 2, !tbaa !79
  %57 = icmp eq i16 %55, %56
  br i1 %57, label %66, label %122

58:                                               ; preds = %48
  br i1 %51, label %62, label %59

59:                                               ; preds = %58
  %60 = load i16, ptr %49, align 2, !tbaa !79
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %62, label %122

62:                                               ; preds = %59, %58
  br i1 %52, label %120, label %63

63:                                               ; preds = %62
  %64 = load i16, ptr %50, align 2, !tbaa !79
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %120, label %122

66:                                               ; preds = %54, %71
  %67 = phi i16 [ %74, %71 ], [ %55, %54 ]
  %68 = phi ptr [ %73, %71 ], [ %50, %54 ]
  %69 = phi ptr [ %72, %71 ], [ %49, %54 ]
  %70 = icmp eq i16 %67, 0
  br i1 %70, label %120, label %71

71:                                               ; preds = %66
  %72 = getelementptr inbounds i16, ptr %69, i64 1
  %73 = getelementptr inbounds i16, ptr %68, i64 1
  %74 = load i16, ptr %72, align 2, !tbaa !79
  %75 = load i16, ptr %73, align 2, !tbaa !79
  %76 = icmp eq i16 %74, %75
  br i1 %76, label %66, label %122, !llvm.loop !81

77:                                               ; preds = %45
  %78 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %43, i64 0, i32 4
  %79 = load i32, ptr %78, align 4, !tbaa !82
  %80 = icmp eq i32 %79, %34
  br i1 %80, label %81, label %122

81:                                               ; preds = %77
  %82 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %43, i64 0, i32 6
  %83 = load ptr, ptr %82, align 8, !tbaa !84
  %84 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %32, i64 0, i32 6
  %85 = load ptr, ptr %84, align 8, !tbaa !84
  %86 = icmp eq ptr %83, null
  %87 = icmp eq ptr %85, null
  %88 = or i1 %86, %87
  br i1 %88, label %93, label %89

89:                                               ; preds = %81
  %90 = load i16, ptr %83, align 2, !tbaa !79
  %91 = load i16, ptr %85, align 2, !tbaa !79
  %92 = icmp eq i16 %90, %91
  br i1 %92, label %101, label %122

93:                                               ; preds = %81
  br i1 %86, label %97, label %94

94:                                               ; preds = %93
  %95 = load i16, ptr %83, align 2, !tbaa !79
  %96 = icmp eq i16 %95, 0
  br i1 %96, label %97, label %122

97:                                               ; preds = %94, %93
  br i1 %87, label %120, label %98

98:                                               ; preds = %97
  %99 = load i16, ptr %85, align 2, !tbaa !79
  %100 = icmp eq i16 %99, 0
  br i1 %100, label %120, label %122

101:                                              ; preds = %89, %106
  %102 = phi i16 [ %109, %106 ], [ %90, %89 ]
  %103 = phi ptr [ %108, %106 ], [ %85, %89 ]
  %104 = phi ptr [ %107, %106 ], [ %83, %89 ]
  %105 = icmp eq i16 %102, 0
  br i1 %105, label %120, label %106

106:                                              ; preds = %101
  %107 = getelementptr inbounds i16, ptr %104, i64 1
  %108 = getelementptr inbounds i16, ptr %103, i64 1
  %109 = load i16, ptr %107, align 2, !tbaa !79
  %110 = load i16, ptr %108, align 2, !tbaa !79
  %111 = icmp eq i16 %109, %110
  br i1 %111, label %101, label %122, !llvm.loop !81

112:                                              ; preds = %36
  %113 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %43, i64 0, i32 4
  %114 = load i32, ptr %113, align 4, !tbaa !82
  %115 = icmp eq i32 %114, %34
  br i1 %115, label %120, label %122

116:                                              ; preds = %36
  %117 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %43, i64 0, i32 4
  %118 = load i32, ptr %117, align 4, !tbaa !82
  %119 = icmp eq i32 %118, %34
  br i1 %119, label %122, label %120

120:                                              ; preds = %66, %101, %98, %97, %63, %62, %36, %116, %112
  %121 = add i32 %30, 1
  br label %122

122:                                              ; preds = %71, %106, %54, %89, %112, %98, %94, %63, %59, %120, %77, %116, %27
  %123 = phi i32 [ 4, %27 ], [ 0, %120 ], [ 1, %77 ], [ 1, %116 ], [ 1, %59 ], [ 1, %63 ], [ 1, %94 ], [ 1, %98 ], [ 1, %112 ], [ 1, %89 ], [ 1, %54 ], [ 1, %106 ], [ 1, %71 ]
  %124 = phi i32 [ %30, %27 ], [ %121, %120 ], [ %30, %77 ], [ %30, %116 ], [ %30, %59 ], [ %30, %63 ], [ %30, %94 ], [ %30, %98 ], [ %30, %112 ], [ %30, %89 ], [ %30, %54 ], [ %30, %106 ], [ %30, %71 ]
  %125 = phi i32 [ %29, %27 ], [ %29, %120 ], [ %44, %77 ], [ %44, %116 ], [ %44, %59 ], [ %44, %63 ], [ %44, %94 ], [ %44, %98 ], [ %44, %112 ], [ %44, %89 ], [ %44, %54 ], [ %44, %106 ], [ %44, %71 ]
  switch i32 %123, label %129 [
    i32 0, label %126
    i32 4, label %126
  ]

126:                                              ; preds = %122, %122
  %127 = add nuw nsw i64 %28, 1
  %128 = icmp eq i64 %127, %15
  br i1 %128, label %129, label %27, !llvm.loop !88

129:                                              ; preds = %126, %122
  %130 = phi i32 [ %123, %122 ], [ 2, %126 ]
  %131 = and i32 %130, -3
  %132 = icmp eq i32 %131, 0
  br label %133

133:                                              ; preds = %129, %8
  %134 = phi i1 [ true, %8 ], [ %132, %129 ]
  %135 = phi i32 [ undef, %8 ], [ %125, %129 ]
  br i1 %134, label %256, label %257

136:                                              ; preds = %18, %249
  %137 = phi i64 [ 0, %18 ], [ %250, %249 ]
  %138 = phi i1 [ %17, %18 ], [ %251, %249 ]
  %139 = phi i32 [ undef, %18 ], [ %248, %249 ]
  %140 = getelementptr inbounds ptr, ptr %1, i64 %137
  %141 = load ptr, ptr %140, align 8, !tbaa !62
  %142 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %141, i64 0, i32 4
  %143 = load i32, ptr %142, align 4, !tbaa !82
  %144 = icmp eq i32 %143, %19
  br i1 %144, label %246, label %145

145:                                              ; preds = %136
  %146 = load i32, ptr %20, align 8, !tbaa !38
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %239, label %148

148:                                              ; preds = %145, %235
  %149 = phi i32 [ %236, %235 ], [ 0, %145 ]
  %150 = load ptr, ptr %21, align 8, !tbaa !61
  %151 = zext i32 %149 to i64
  %152 = getelementptr inbounds i32, ptr %150, i64 %151
  %153 = load i32, ptr %152, align 4, !tbaa !63
  %154 = load ptr, ptr %22, align 8, !tbaa !60
  %155 = getelementptr inbounds ptr, ptr %154, i64 %151
  %156 = load ptr, ptr %155, align 8, !tbaa !62
  switch i32 %153, label %235 [
    i32 0, label %157
    i32 6, label %239
    i32 8, label %225
    i32 7, label %230
  ]

157:                                              ; preds = %148
  %158 = load i8, ptr %23, align 1, !tbaa !46, !range !77, !noundef !78
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %189, label %160

160:                                              ; preds = %157
  %161 = tail call noundef ptr @_ZNK11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %156)
  %162 = tail call noundef ptr @_ZNK11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %141)
  %163 = icmp eq ptr %161, null
  %164 = icmp eq ptr %162, null
  %165 = or i1 %163, %164
  br i1 %165, label %170, label %166

166:                                              ; preds = %160
  %167 = load i16, ptr %161, align 2, !tbaa !79
  %168 = load i16, ptr %162, align 2, !tbaa !79
  %169 = icmp eq i16 %167, %168
  br i1 %169, label %178, label %235

170:                                              ; preds = %160
  br i1 %163, label %174, label %171

171:                                              ; preds = %170
  %172 = load i16, ptr %161, align 2, !tbaa !79
  %173 = icmp eq i16 %172, 0
  br i1 %173, label %174, label %235

174:                                              ; preds = %171, %170
  br i1 %164, label %239, label %175

175:                                              ; preds = %174
  %176 = load i16, ptr %162, align 2, !tbaa !79
  %177 = icmp eq i16 %176, 0
  br i1 %177, label %239, label %235

178:                                              ; preds = %166, %183
  %179 = phi i16 [ %186, %183 ], [ %167, %166 ]
  %180 = phi ptr [ %185, %183 ], [ %162, %166 ]
  %181 = phi ptr [ %184, %183 ], [ %161, %166 ]
  %182 = icmp eq i16 %179, 0
  br i1 %182, label %239, label %183

183:                                              ; preds = %178
  %184 = getelementptr inbounds i16, ptr %181, i64 1
  %185 = getelementptr inbounds i16, ptr %180, i64 1
  %186 = load i16, ptr %184, align 2, !tbaa !79
  %187 = load i16, ptr %185, align 2, !tbaa !79
  %188 = icmp eq i16 %186, %187
  br i1 %188, label %178, label %235, !llvm.loop !81

189:                                              ; preds = %157
  %190 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %156, i64 0, i32 4
  %191 = load i32, ptr %190, align 4, !tbaa !82
  %192 = load i32, ptr %142, align 4, !tbaa !82
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %235

194:                                              ; preds = %189
  %195 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %141, i64 0, i32 6
  %196 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %156, i64 0, i32 6
  %197 = load ptr, ptr %196, align 8, !tbaa !84
  %198 = load ptr, ptr %195, align 8, !tbaa !84
  %199 = icmp eq ptr %197, null
  %200 = icmp eq ptr %198, null
  %201 = or i1 %199, %200
  br i1 %201, label %206, label %202

202:                                              ; preds = %194
  %203 = load i16, ptr %197, align 2, !tbaa !79
  %204 = load i16, ptr %198, align 2, !tbaa !79
  %205 = icmp eq i16 %203, %204
  br i1 %205, label %214, label %235

206:                                              ; preds = %194
  br i1 %199, label %210, label %207

207:                                              ; preds = %206
  %208 = load i16, ptr %197, align 2, !tbaa !79
  %209 = icmp eq i16 %208, 0
  br i1 %209, label %210, label %235

210:                                              ; preds = %207, %206
  br i1 %200, label %239, label %211

211:                                              ; preds = %210
  %212 = load i16, ptr %198, align 2, !tbaa !79
  %213 = icmp eq i16 %212, 0
  br i1 %213, label %239, label %235

214:                                              ; preds = %202, %219
  %215 = phi i16 [ %222, %219 ], [ %203, %202 ]
  %216 = phi ptr [ %221, %219 ], [ %198, %202 ]
  %217 = phi ptr [ %220, %219 ], [ %197, %202 ]
  %218 = icmp eq i16 %215, 0
  br i1 %218, label %239, label %219

219:                                              ; preds = %214
  %220 = getelementptr inbounds i16, ptr %217, i64 1
  %221 = getelementptr inbounds i16, ptr %216, i64 1
  %222 = load i16, ptr %220, align 2, !tbaa !79
  %223 = load i16, ptr %221, align 2, !tbaa !79
  %224 = icmp eq i16 %222, %223
  br i1 %224, label %214, label %235, !llvm.loop !81

225:                                              ; preds = %148
  %226 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %156, i64 0, i32 4
  %227 = load i32, ptr %226, align 4, !tbaa !82
  %228 = load i32, ptr %142, align 4, !tbaa !82
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %239, label %235

230:                                              ; preds = %148
  %231 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %156, i64 0, i32 4
  %232 = load i32, ptr %231, align 4, !tbaa !82
  %233 = load i32, ptr %142, align 4, !tbaa !82
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %235, label %239

235:                                              ; preds = %183, %219, %166, %202, %225, %211, %207, %175, %171, %148, %230, %189
  %236 = add nuw i32 %149, 1
  %237 = load i32, ptr %20, align 8, !tbaa !38
  %238 = icmp ult i32 %236, %237
  br i1 %238, label %148, label %239, !llvm.loop !89

239:                                              ; preds = %235, %230, %211, %210, %175, %174, %148, %225, %178, %214, %145
  %240 = phi i32 [ 0, %145 ], [ %149, %214 ], [ %149, %178 ], [ %149, %225 ], [ %149, %148 ], [ %149, %174 ], [ %149, %175 ], [ %149, %210 ], [ %149, %211 ], [ %149, %230 ], [ %236, %235 ]
  %241 = load i32, ptr %26, align 8, !tbaa !38
  %242 = icmp eq i32 %240, %241
  %243 = zext i1 %242 to i32
  %244 = trunc i64 %137 to i32
  %245 = select i1 %242, i32 %244, i32 %139
  br label %246

246:                                              ; preds = %136, %239
  %247 = phi i32 [ %243, %239 ], [ 7, %136 ]
  %248 = phi i32 [ %245, %239 ], [ %139, %136 ]
  switch i32 %247, label %253 [
    i32 0, label %249
    i32 7, label %249
  ]

249:                                              ; preds = %246, %246
  %250 = add nuw nsw i64 %137, 1
  %251 = icmp ult i64 %250, %24
  %252 = icmp eq i64 %250, %25
  br i1 %252, label %253, label %136, !llvm.loop !90

253:                                              ; preds = %246, %249, %16
  %254 = phi i1 [ %17, %16 ], [ %138, %246 ], [ %251, %249 ]
  %255 = phi i32 [ undef, %16 ], [ %248, %249 ], [ %248, %246 ]
  br i1 %254, label %257, label %256

256:                                              ; preds = %253, %133
  br label %257

257:                                              ; preds = %253, %133, %256
  %258 = phi i32 [ %135, %133 ], [ -1, %256 ], [ %255, %253 ]
  ret i32 %258
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_717MixedContentModel22validateContentSpecialEPPNS_5QNameEjjPNS_15GrammarResolverEPNS_13XMLStringPoolE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 %3, ptr noundef %4, ptr noundef %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %7 = alloca %"class.xercesc_2_7::SubstitutionGroupComparator", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #10
  store ptr %4, ptr %7, align 8, !tbaa !91
  %8 = getelementptr inbounds %"class.xercesc_2_7::SubstitutionGroupComparator", ptr %7, i64 0, i32 1
  store ptr %5, ptr %8, align 8, !tbaa !93
  %9 = getelementptr inbounds %"class.xercesc_2_7::MixedContentModel", ptr %0, i64 0, i32 4
  %10 = load i8, ptr %9, align 8, !tbaa !45, !range !77, !noundef !78
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %6
  %13 = icmp eq i32 %2, 0
  br i1 %13, label %70, label %14

14:                                               ; preds = %12
  %15 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl14fgPCDataElemIdE, align 4, !tbaa !87
  %16 = getelementptr inbounds %"class.xercesc_2_7::MixedContentModel", ptr %0, i64 0, i32 3
  %17 = getelementptr inbounds %"class.xercesc_2_7::MixedContentModel", ptr %0, i64 0, i32 2
  %18 = zext i32 %2 to i64
  br label %29

19:                                               ; preds = %6
  %20 = icmp ne i32 %2, 0
  br i1 %20, label %21, label %124

21:                                               ; preds = %19
  %22 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl14fgPCDataElemIdE, align 4, !tbaa !87
  %23 = getelementptr inbounds %"class.xercesc_2_7::MixedContentModel", ptr %0, i64 0, i32 1
  %24 = getelementptr inbounds %"class.xercesc_2_7::MixedContentModel", ptr %0, i64 0, i32 3
  %25 = getelementptr inbounds %"class.xercesc_2_7::MixedContentModel", ptr %0, i64 0, i32 2
  %26 = getelementptr inbounds %"class.xercesc_2_7::MixedContentModel", ptr %0, i64 0, i32 1
  %27 = zext i32 %2 to i64
  %28 = zext i32 %2 to i64
  br label %73

29:                                               ; preds = %14, %63
  %30 = phi i64 [ 0, %14 ], [ %64, %63 ]
  %31 = phi i32 [ undef, %14 ], [ %62, %63 ]
  %32 = phi i32 [ 0, %14 ], [ %61, %63 ]
  %33 = getelementptr inbounds ptr, ptr %1, i64 %30
  %34 = load ptr, ptr %33, align 8, !tbaa !62
  %35 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %34, i64 0, i32 4
  %36 = load i32, ptr %35, align 4, !tbaa !82
  %37 = icmp eq i32 %36, %15
  br i1 %37, label %59, label %38

38:                                               ; preds = %29
  %39 = load ptr, ptr %16, align 8, !tbaa !61
  %40 = zext i32 %32 to i64
  %41 = getelementptr inbounds i32, ptr %39, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !63
  %43 = load ptr, ptr %17, align 8, !tbaa !60
  %44 = getelementptr inbounds ptr, ptr %43, i64 %40
  %45 = load ptr, ptr %44, align 8, !tbaa !62
  %46 = trunc i64 %30 to i32
  switch i32 %42, label %57 [
    i32 0, label %47
    i32 7, label %53
    i32 8, label %49
  ]

47:                                               ; preds = %38
  %48 = call noundef zeroext i1 @_ZN11xercesc_2_727SubstitutionGroupComparator14isEquivalentToEPNS_5QNameES2_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %34, ptr noundef %45)
  br i1 %48, label %57, label %59

49:                                               ; preds = %38
  %50 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %45, i64 0, i32 4
  %51 = load i32, ptr %50, align 4, !tbaa !82
  %52 = icmp eq i32 %51, %36
  br i1 %52, label %57, label %59

53:                                               ; preds = %38
  %54 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %45, i64 0, i32 4
  %55 = load i32, ptr %54, align 4, !tbaa !82
  %56 = icmp eq i32 %55, %36
  br i1 %56, label %59, label %57

57:                                               ; preds = %38, %53, %49, %47
  %58 = add i32 %32, 1
  br label %59

59:                                               ; preds = %49, %47, %57, %53, %29
  %60 = phi i32 [ 4, %29 ], [ 0, %57 ], [ 1, %53 ], [ 1, %47 ], [ 1, %49 ]
  %61 = phi i32 [ %32, %29 ], [ %58, %57 ], [ %32, %53 ], [ %32, %47 ], [ %32, %49 ]
  %62 = phi i32 [ %31, %29 ], [ %31, %57 ], [ %46, %53 ], [ %46, %47 ], [ %46, %49 ]
  switch i32 %60, label %66 [
    i32 0, label %63
    i32 4, label %63
  ]

63:                                               ; preds = %59, %59
  %64 = add nuw nsw i64 %30, 1
  %65 = icmp eq i64 %64, %18
  br i1 %65, label %66, label %29, !llvm.loop !94

66:                                               ; preds = %63, %59
  %67 = phi i32 [ %60, %59 ], [ 2, %63 ]
  %68 = and i32 %67, -3
  %69 = icmp eq i32 %68, 0
  br label %70

70:                                               ; preds = %66, %12
  %71 = phi i1 [ true, %12 ], [ %69, %66 ]
  %72 = phi i32 [ undef, %12 ], [ %62, %66 ]
  br i1 %71, label %127, label %128

73:                                               ; preds = %21, %120
  %74 = phi i64 [ 0, %21 ], [ %121, %120 ]
  %75 = phi i1 [ %20, %21 ], [ %122, %120 ]
  %76 = phi i32 [ undef, %21 ], [ %119, %120 ]
  %77 = getelementptr inbounds ptr, ptr %1, i64 %74
  %78 = load ptr, ptr %77, align 8, !tbaa !62
  %79 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %78, i64 0, i32 4
  %80 = load i32, ptr %79, align 4, !tbaa !82
  %81 = icmp eq i32 %80, %22
  br i1 %81, label %117, label %82

82:                                               ; preds = %73
  %83 = load i32, ptr %23, align 8, !tbaa !38
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %110, label %85

85:                                               ; preds = %82, %106
  %86 = phi i32 [ %107, %106 ], [ 0, %82 ]
  %87 = load ptr, ptr %24, align 8, !tbaa !61
  %88 = zext i32 %86 to i64
  %89 = getelementptr inbounds i32, ptr %87, i64 %88
  %90 = load i32, ptr %89, align 4, !tbaa !63
  %91 = load ptr, ptr %25, align 8, !tbaa !60
  %92 = getelementptr inbounds ptr, ptr %91, i64 %88
  %93 = load ptr, ptr %92, align 8, !tbaa !62
  switch i32 %90, label %106 [
    i32 0, label %94
    i32 6, label %110
    i32 8, label %96
    i32 7, label %101
  ]

94:                                               ; preds = %85
  %95 = call noundef zeroext i1 @_ZN11xercesc_2_727SubstitutionGroupComparator14isEquivalentToEPNS_5QNameES2_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %78, ptr noundef %93)
  br i1 %95, label %110, label %106

96:                                               ; preds = %85
  %97 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %93, i64 0, i32 4
  %98 = load i32, ptr %97, align 4, !tbaa !82
  %99 = load i32, ptr %79, align 4, !tbaa !82
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %110, label %106

101:                                              ; preds = %85
  %102 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %93, i64 0, i32 4
  %103 = load i32, ptr %102, align 4, !tbaa !82
  %104 = load i32, ptr %79, align 4, !tbaa !82
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %96, %94, %85, %101
  %107 = add nuw i32 %86, 1
  %108 = load i32, ptr %23, align 8, !tbaa !38
  %109 = icmp ult i32 %107, %108
  br i1 %109, label %85, label %110, !llvm.loop !95

110:                                              ; preds = %106, %101, %85, %96, %94, %82
  %111 = phi i32 [ 0, %82 ], [ %107, %106 ], [ %86, %101 ], [ %86, %85 ], [ %86, %96 ], [ %86, %94 ]
  %112 = load i32, ptr %26, align 8, !tbaa !38
  %113 = icmp eq i32 %111, %112
  %114 = zext i1 %113 to i32
  %115 = trunc i64 %74 to i32
  %116 = select i1 %113, i32 %115, i32 %76
  br label %117

117:                                              ; preds = %73, %110
  %118 = phi i32 [ %114, %110 ], [ 7, %73 ]
  %119 = phi i32 [ %116, %110 ], [ %76, %73 ]
  switch i32 %118, label %124 [
    i32 0, label %120
    i32 7, label %120
  ]

120:                                              ; preds = %117, %117
  %121 = add nuw nsw i64 %74, 1
  %122 = icmp ult i64 %121, %27
  %123 = icmp eq i64 %121, %28
  br i1 %123, label %124, label %73, !llvm.loop !96

124:                                              ; preds = %117, %120, %19
  %125 = phi i1 [ %20, %19 ], [ %75, %117 ], [ %122, %120 ]
  %126 = phi i32 [ undef, %19 ], [ %119, %120 ], [ %119, %117 ]
  br i1 %125, label %128, label %127

127:                                              ; preds = %124, %70
  br label %128

128:                                              ; preds = %124, %70, %127
  %129 = phi i32 [ -1, %127 ], [ %72, %70 ], [ %126, %124 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10
  ret i32 %129
}

declare noundef zeroext i1 @_ZN11xercesc_2_727SubstitutionGroupComparator14isEquivalentToEPNS_5QNameES2_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717MixedContentModel30checkUniqueParticleAttributionEPNS_13SchemaGrammarEPNS_15GrammarResolverEPNS_13XMLStringPoolEPNS_12XMLValidatorEPjPKt(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #6 comdat align 2 !prof !34 {
  %8 = getelementptr inbounds %"class.xercesc_2_7::MixedContentModel", ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !38
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %36, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %"class.xercesc_2_7::MixedContentModel", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !60
  %14 = load i32, ptr @_ZN11xercesc_2_715XMLContentModel10gEOCFakeIdE, align 4, !tbaa !87
  %15 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE, align 4
  %16 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl14fgPCDataElemIdE, align 4
  %17 = zext i32 %9 to i64
  br label %18

18:                                               ; preds = %11, %33
  %19 = phi i64 [ 0, %11 ], [ %34, %33 ]
  %20 = getelementptr inbounds ptr, ptr %13, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !62
  %22 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %21, i64 0, i32 4
  %23 = load i32, ptr %22, align 4, !tbaa !82
  %24 = icmp eq i32 %23, %14
  %25 = icmp eq i32 %23, %15
  %26 = select i1 %24, i1 true, i1 %25
  %27 = icmp eq i32 %23, %16
  %28 = select i1 %26, i1 true, i1 %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %18
  %30 = zext i32 %23 to i64
  %31 = getelementptr inbounds i32, ptr %5, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !87
  store i32 %32, ptr %22, align 4, !tbaa !82
  br label %33

33:                                               ; preds = %29, %18
  %34 = add nuw nsw i64 %19, 1
  %35 = icmp eq i64 %34, %17
  br i1 %35, label %36, label %18, !llvm.loop !97

36:                                               ; preds = %33, %7
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717MixedContentModel28getContentLeafNameTypeVectorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !prof !34 {
  ret ptr null
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717MixedContentModel12getNextStateEjj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #7 comdat align 2 !prof !34 {
  %4 = load i32, ptr @_ZN11xercesc_2_715XMLContentModel13gInvalidTransE, align 4, !tbaa !87
  ret i32 %4
}

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !34 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !98
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !35
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #10
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !34 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !98
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !35
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #10
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_5QNameEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !74 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !50
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !51
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %42, !prof !101

9:                                                ; preds = %2
  %10 = uitofp i32 %4 to double
  %11 = fmul double %10, 1.250000e+00
  %12 = fptoui double %11 to i32
  %13 = tail call i32 @llvm.umax.i32(i32 %5, i32 %12)
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !53
  %16 = zext i32 %13 to i64
  %17 = shl nuw nsw i64 %16, 3
  %18 = load ptr, ptr %15, align 8, !tbaa !35
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %17)
  %22 = load i32, ptr %3, align 4, !tbaa !50
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %9
  %25 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %26 = zext i32 %22 to i64
  br label %34

27:                                               ; preds = %34, %9
  %28 = load ptr, ptr %14, align 8, !tbaa !53
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !52
  %31 = load ptr, ptr %28, align 8, !tbaa !35
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
  store ptr %21, ptr %29, align 8, !tbaa !52
  store i32 %13, ptr %6, align 8, !tbaa !51
  br label %42

34:                                               ; preds = %24, %34
  %35 = phi i64 [ 0, %24 ], [ %40, %34 ]
  %36 = load ptr, ptr %25, align 8, !tbaa !52
  %37 = getelementptr inbounds ptr, ptr %36, i64 %35
  %38 = load ptr, ptr %37, align 8, !tbaa !62
  %39 = getelementptr inbounds ptr, ptr %21, i64 %35
  store ptr %38, ptr %39, align 8, !tbaa !62
  %40 = add nuw nsw i64 %35, 1
  %41 = icmp eq i64 %40, %26
  br i1 %41, label %27, label %34, !llvm.loop !102

42:                                               ; preds = %2, %27
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfINS_15ContentSpecNode9NodeTypesEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !56
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !57
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %42

9:                                                ; preds = %2
  %10 = uitofp i32 %4 to double
  %11 = fmul double %10, 1.250000e+00
  %12 = fptoui double %11 to i32
  %13 = tail call i32 @llvm.umax.i32(i32 %5, i32 %12)
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !59
  %16 = zext i32 %13 to i64
  %17 = shl nuw nsw i64 %16, 2
  %18 = load ptr, ptr %15, align 8, !tbaa !35
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %17)
  %22 = load i32, ptr %3, align 4, !tbaa !56
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %9
  %25 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !58
  %27 = zext i32 %22 to i64
  br label %35

28:                                               ; preds = %35, %9
  %29 = load ptr, ptr %14, align 8, !tbaa !59
  %30 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !58
  %32 = load ptr, ptr %29, align 8, !tbaa !35
  %33 = getelementptr inbounds ptr, ptr %32, i64 3
  %34 = load ptr, ptr %33, align 8
  tail call void %34(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef %31)
  store ptr %21, ptr %30, align 8, !tbaa !58
  store i32 %13, ptr %6, align 8, !tbaa !57
  br label %42

35:                                               ; preds = %24, %35
  %36 = phi i64 [ 0, %24 ], [ %40, %35 ]
  %37 = getelementptr inbounds i32, ptr %26, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !63
  %39 = getelementptr inbounds i32, ptr %21, i64 %36
  store i32 %38, ptr %39, align 4, !tbaa !63
  %40 = add nuw nsw i64 %36, 1
  %41 = icmp eq i64 %40, %27
  br i1 %41, label %28, label %35, !llvm.loop !103

42:                                               ; preds = %2, %28
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { noreturn }
attributes #12 = { noreturn nounwind }

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
!38 = !{!39, !41, i64 8}
!39 = !{!"_ZTSN11xercesc_2_717MixedContentModelE", !40, i64 0, !41, i64 8, !43, i64 16, !43, i64 24, !44, i64 32, !44, i64 33, !43, i64 40}
!40 = !{!"_ZTSN11xercesc_2_715XMLContentModelE"}
!41 = !{!"int", !42, i64 0}
!42 = !{!"omnipotent char", !37, i64 0}
!43 = !{!"any pointer", !42, i64 0}
!44 = !{!"bool", !42, i64 0}
!45 = !{!39, !44, i64 32}
!46 = !{!39, !44, i64 33}
!47 = !{!39, !43, i64 40}
!48 = !{!49, !44, i64 0}
!49 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIPNS_5QNameEEE", !44, i64 0, !41, i64 4, !41, i64 8, !43, i64 16, !43, i64 24}
!50 = !{!49, !41, i64 4}
!51 = !{!49, !41, i64 8}
!52 = !{!49, !43, i64 16}
!53 = !{!49, !43, i64 24}
!54 = !{!55, !44, i64 0}
!55 = !{!"_ZTSN11xercesc_2_713ValueVectorOfINS_15ContentSpecNode9NodeTypesEEE", !44, i64 0, !41, i64 4, !41, i64 8, !43, i64 16, !43, i64 24}
!56 = !{!55, !41, i64 4}
!57 = !{!55, !41, i64 8}
!58 = !{!55, !43, i64 16}
!59 = !{!55, !43, i64 24}
!60 = !{!39, !43, i64 16}
!61 = !{!39, !43, i64 24}
!62 = !{!43, !43, i64 0}
!63 = !{!64, !64, i64 0}
!64 = !{!"_ZTSN11xercesc_2_715ContentSpecNode9NodeTypesE", !42, i64 0}
!65 = distinct !{!65, !66, !67}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = !{!69, !64, i64 48}
!69 = !{!"_ZTSN11xercesc_2_715ContentSpecNodeE", !70, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !64, i64 48, !44, i64 52, !44, i64 53, !41, i64 56, !41, i64 60}
!70 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!71 = !{!69, !43, i64 16}
!72 = !{!69, !43, i64 32}
!73 = !{!69, !43, i64 40}
!74 = !{!"function_entry_count", i64 6}
!75 = !{!"branch_weights", i32 6, i32 0}
!76 = distinct !{!76, !66, !67}
!77 = !{i8 0, i8 2}
!78 = !{}
!79 = !{!80, !80, i64 0}
!80 = !{!"short", !42, i64 0}
!81 = distinct !{!81, !66, !67}
!82 = !{!83, !41, i64 20}
!83 = !{!"_ZTSN11xercesc_2_75QNameE", !70, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48}
!84 = !{!83, !43, i64 32}
!85 = distinct !{!85, !66, !67}
!86 = distinct !{!86, !66, !67}
!87 = !{!41, !41, i64 0}
!88 = distinct !{!88, !66, !67}
!89 = distinct !{!89, !66, !67}
!90 = distinct !{!90, !66, !67}
!91 = !{!92, !43, i64 0}
!92 = !{!"_ZTSN11xercesc_2_727SubstitutionGroupComparatorE", !43, i64 0, !43, i64 8}
!93 = !{!92, !43, i64 8}
!94 = distinct !{!94, !66, !67}
!95 = distinct !{!95, !66, !67}
!96 = distinct !{!96, !66, !67}
!97 = distinct !{!97, !66, !67}
!98 = !{!99, !43, i64 40}
!99 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !100, i64 8, !43, i64 16, !41, i64 24, !43, i64 32, !43, i64 40}
!100 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !42, i64 0}
!101 = !{!"branch_weights", i32 0, i32 6}
!102 = distinct !{!102, !66, !67}
!103 = distinct !{!103, !66, !67}
