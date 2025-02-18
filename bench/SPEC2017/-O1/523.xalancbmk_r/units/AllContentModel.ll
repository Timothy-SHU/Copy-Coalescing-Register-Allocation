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

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_5QNameEE9elementAtEj = comdat any

$_ZN11xercesc_2_713ValueVectorOfIbE9elementAtEj = comdat any

$__clang_call_terminate = comdat any

$_ZNK11xercesc_2_715AllContentModel28getContentLeafNameTypeVectorEv = comdat any

$_ZNK11xercesc_2_715AllContentModel12getNextStateEjj = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_5QNameEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_713ValueVectorOfIbE19ensureExtraCapacityEj = comdat any

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

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715AllContentModelC2EPNS_15ContentSpecNodeEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(46) %0, ptr noundef readonly %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  %5 = alloca %"class.xercesc_2_7::ValueVectorOf", align 8
  %6 = alloca %"class.xercesc_2_7::ValueVectorOf.0", align 8
  %7 = zext i1 %2 to i8
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715AllContentModelE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  %8 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 1
  store ptr %3, ptr %8, align 8, !tbaa !50
  %9 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 2
  store i32 0, ptr %9, align 8, !tbaa !57
  %10 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 4
  %11 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 5
  %12 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %10, i8 0, i64 20, i1 false)
  store i8 %7, ptr %12, align 4, !tbaa !58
  %13 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 8
  store i8 0, ptr %13, align 1, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #10
  store i8 0, ptr %5, align 8, !tbaa !60
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %5, i64 0, i32 1
  store i32 0, ptr %14, align 4, !tbaa !62
  %15 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %5, i64 0, i32 2
  store i32 64, ptr %15, align 8, !tbaa !63
  %16 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %5, i64 0, i32 3
  store ptr null, ptr %16, align 8, !tbaa !64
  %17 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %5, i64 0, i32 4
  store ptr %3, ptr %17, align 8, !tbaa !65
  %18 = load ptr, ptr %3, align 8, !tbaa !47
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 512), !prof !66
  store ptr %21, ptr %16, align 8, !tbaa !64
  %22 = load i32, ptr %15, align 8, !tbaa !63
  %23 = zext i32 %22 to i64
  %24 = shl nuw nsw i64 %23, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %21, i8 0, i64 %24, i1 false), !prof !67
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #10
  %25 = load ptr, ptr %8, align 8, !tbaa !50
  store i8 0, ptr %6, align 8, !tbaa !68
  %26 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %6, i64 0, i32 1
  store i32 0, ptr %26, align 4, !tbaa !70
  %27 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %6, i64 0, i32 2
  store i32 64, ptr %27, align 8, !tbaa !71
  %28 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %6, i64 0, i32 3
  store ptr null, ptr %28, align 8, !tbaa !72
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %6, i64 0, i32 4
  store ptr %25, ptr %29, align 8, !tbaa !73
  %30 = load ptr, ptr %25, align 8, !tbaa !47
  %31 = getelementptr inbounds ptr, ptr %30, i64 2
  %32 = load ptr, ptr %31, align 8
  %33 = invoke noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(8) %25, i64 noundef 64)
          to label %34 unwind label %42, !prof !66

34:                                               ; preds = %4
  store ptr %33, ptr %28, align 8, !tbaa !72
  %35 = load i32, ptr %27, align 8, !tbaa !71
  %36 = zext i32 %35 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %33, i8 0, i64 %36, i1 false), !prof !74
  %37 = icmp eq ptr %1, null
  br i1 %37, label %38, label %48, !prof !75

38:                                               ; preds = %34
  %39 = tail call ptr @__cxa_allocate_exception(i64 48) #10
  %40 = load ptr, ptr %8, align 8, !tbaa !50
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %39, ptr noundef nonnull @.str, i32 noundef 66, i32 noundef 23, ptr noundef %40)
          to label %41 unwind label %44

41:                                               ; preds = %38
  invoke void @__cxa_throw(ptr nonnull %39, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #11
          to label %144 unwind label %46

42:                                               ; preds = %4
  %43 = landingpad { ptr, i32 }
          cleanup
  br label %133

44:                                               ; preds = %38
  %45 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %39) #10
  br label %123

46:                                               ; preds = %67, %58, %57, %41
  %47 = landingpad { ptr, i32 }
          cleanup
  br label %123

48:                                               ; preds = %34
  %49 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 6
  %50 = load i32, ptr %49, align 8, !tbaa !76
  %51 = icmp eq i32 %50, 9
  br i1 %51, label %52, label %57, !prof !80

52:                                               ; preds = %48
  %53 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 9
  %54 = load i32, ptr %53, align 8, !tbaa !81
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57, !prof !75

56:                                               ; preds = %52
  store i8 1, ptr %13, align 1, !tbaa !59
  br label %57

57:                                               ; preds = %56, %52, %48
  invoke void @_ZN11xercesc_2_715AllContentModel14buildChildListEPNS_15ContentSpecNodeERNS_13ValueVectorOfIPNS_5QNameEEERNS3_IbEE(ptr noundef nonnull align 8 dereferenceable(46) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %58 unwind label %46, !prof !80

58:                                               ; preds = %57
  %59 = load i32, ptr %14, align 4, !tbaa !62
  store i32 %59, ptr %9, align 8, !tbaa !57
  %60 = load ptr, ptr %8, align 8, !tbaa !50
  %61 = zext i32 %59 to i64
  %62 = shl nuw nsw i64 %61, 3
  %63 = load ptr, ptr %60, align 8, !tbaa !47
  %64 = getelementptr inbounds ptr, ptr %63, i64 2
  %65 = load ptr, ptr %64, align 8
  %66 = invoke noundef ptr %65(ptr noundef nonnull align 8 dereferenceable(8) %60, i64 noundef %62)
          to label %67 unwind label %46, !prof !66

67:                                               ; preds = %58
  store ptr %66, ptr %10, align 8, !tbaa !82
  %68 = load ptr, ptr %8, align 8, !tbaa !50
  %69 = load i32, ptr %9, align 8, !tbaa !57
  %70 = zext i32 %69 to i64
  %71 = load ptr, ptr %68, align 8, !tbaa !47
  %72 = getelementptr inbounds ptr, ptr %71, i64 2
  %73 = load ptr, ptr %72, align 8
  %74 = invoke noundef ptr %73(ptr noundef nonnull align 8 dereferenceable(8) %68, i64 noundef %70)
          to label %75 unwind label %46, !prof !66

75:                                               ; preds = %67
  store ptr %74, ptr %11, align 8, !tbaa !83
  %76 = load i32, ptr %9, align 8, !tbaa !57
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %97, !prof !84

78:                                               ; preds = %111, %75
  %79 = load ptr, ptr %29, align 8, !tbaa !73
  %80 = load ptr, ptr %28, align 8, !tbaa !72
  %81 = load ptr, ptr %79, align 8, !tbaa !47
  %82 = getelementptr inbounds ptr, ptr %81, i64 3
  %83 = load ptr, ptr %82, align 8
  invoke void %83(ptr noundef nonnull align 8 dereferenceable(8) %79, ptr noundef %80)
          to label %87 unwind label %84, !prof !85

84:                                               ; preds = %78
  %85 = landingpad { ptr, i32 }
          catch ptr null
  %86 = extractvalue { ptr, i32 } %85, 0
  call void @__clang_call_terminate(ptr %86) #12
  unreachable

87:                                               ; preds = %78
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #10
  %88 = load ptr, ptr %17, align 8, !tbaa !65
  %89 = load ptr, ptr %16, align 8, !tbaa !64
  %90 = load ptr, ptr %88, align 8, !tbaa !47
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %88, ptr noundef %89)
          to label %96 unwind label %93, !prof !85

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #12
  unreachable

96:                                               ; preds = %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  ret void

97:                                               ; preds = %75, %111
  %98 = phi i64 [ %115, %111 ], [ 0, %75 ]
  %99 = load ptr, ptr %8, align 8, !tbaa !50
  %100 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %99)
          to label %101 unwind label %119, !prof !86

101:                                              ; preds = %97
  %102 = trunc i64 %98 to i32
  %103 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_5QNameEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef %102)
          to label %104 unwind label %121, !prof !86

104:                                              ; preds = %101
  %105 = load ptr, ptr %103, align 8, !tbaa !87
  invoke void @_ZN11xercesc_2_75QNameC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %100, ptr noundef nonnull align 8 dereferenceable(56) %105)
          to label %106 unwind label %121, !prof !86

106:                                              ; preds = %104
  %107 = load ptr, ptr %10, align 8, !tbaa !82
  %108 = getelementptr inbounds ptr, ptr %107, i64 %98
  store ptr %100, ptr %108, align 8, !tbaa !87
  %109 = trunc i64 %98 to i32
  %110 = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZN11xercesc_2_713ValueVectorOfIbE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %109)
          to label %111 unwind label %119, !prof !86

111:                                              ; preds = %106
  %112 = load i8, ptr %110, align 1, !tbaa !88, !range !89, !noundef !90
  %113 = load ptr, ptr %11, align 8, !tbaa !83
  %114 = getelementptr inbounds i8, ptr %113, i64 %98
  store i8 %112, ptr %114, align 1, !tbaa !88
  %115 = add nuw nsw i64 %98, 1
  %116 = load i32, ptr %9, align 8, !tbaa !57
  %117 = zext i32 %116 to i64
  %118 = icmp ult i64 %115, %117
  br i1 %118, label %97, label %78, !prof !91, !llvm.loop !92

119:                                              ; preds = %106, %97
  %120 = landingpad { ptr, i32 }
          cleanup
  br label %123

121:                                              ; preds = %104, %101
  %122 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %100, ptr noundef %99) #10
  br label %123

123:                                              ; preds = %119, %121, %46, %44
  %124 = phi { ptr, i32 } [ %47, %46 ], [ %45, %44 ], [ %120, %119 ], [ %122, %121 ]
  %125 = load ptr, ptr %29, align 8, !tbaa !73
  %126 = load ptr, ptr %28, align 8, !tbaa !72
  %127 = load ptr, ptr %125, align 8, !tbaa !47
  %128 = getelementptr inbounds ptr, ptr %127, i64 3
  %129 = load ptr, ptr %128, align 8
  invoke void %129(ptr noundef nonnull align 8 dereferenceable(8) %125, ptr noundef %126)
          to label %133 unwind label %130

130:                                              ; preds = %123
  %131 = landingpad { ptr, i32 }
          catch ptr null
  %132 = extractvalue { ptr, i32 } %131, 0
  call void @__clang_call_terminate(ptr %132) #12
  unreachable

133:                                              ; preds = %123, %42
  %134 = phi { ptr, i32 } [ %43, %42 ], [ %124, %123 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #10
  %135 = load ptr, ptr %17, align 8, !tbaa !65
  %136 = load ptr, ptr %16, align 8, !tbaa !64
  %137 = load ptr, ptr %135, align 8, !tbaa !47
  %138 = getelementptr inbounds ptr, ptr %137, i64 3
  %139 = load ptr, ptr %138, align 8
  invoke void %139(ptr noundef nonnull align 8 dereferenceable(8) %135, ptr noundef %136)
          to label %143 unwind label %140

140:                                              ; preds = %133
  %141 = landingpad { ptr, i32 }
          catch ptr null
  %142 = extractvalue { ptr, i32 } %141, 0
  call void @__clang_call_terminate(ptr %142) #12
  unreachable

143:                                              ; preds = %133
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  resume { ptr, i32 } %134

144:                                              ; preds = %41
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare i32 @__gxx_personality_v0(...)

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
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
define dso_local void @_ZN11xercesc_2_715AllContentModel14buildChildListEPNS_15ContentSpecNodeERNS_13ValueVectorOfIPNS_5QNameEEERNS3_IbEE(ptr noundef nonnull align 8 dereferenceable(46) %0, ptr nocapture noundef readonly %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  br label %5

5:                                                ; preds = %9, %4
  %6 = phi ptr [ %1, %4 ], [ %13, %9 ]
  %7 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %6, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !76
  switch i32 %8, label %64 [
    i32 9, label %9
    i32 0, label %14
    i32 1, label %34
  ], !prof !97

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %6, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !98
  %12 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %6, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !99
  tail call void @_ZN11xercesc_2_715AllContentModel14buildChildListEPNS_15ContentSpecNodeERNS_13ValueVectorOfIPNS_5QNameEEERNS3_IbEE(ptr noundef nonnull align 8 dereferenceable(46) %0, ptr noundef %11, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
  br label %5

14:                                               ; preds = %5
  %15 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %6, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !100
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPNS_5QNameEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 1)
  %17 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %2, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !64
  %19 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %2, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !62
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %18, i64 %21
  store ptr %16, ptr %22, align 8, !tbaa !87
  %23 = add i32 %20, 1
  store i32 %23, ptr %19, align 4, !tbaa !62
  tail call void @_ZN11xercesc_2_713ValueVectorOfIbE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 1)
  %24 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !72
  %26 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %3, i64 0, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !70
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i8, ptr %25, i64 %28
  store i8 0, ptr %29, align 1, !tbaa !88
  %30 = add i32 %27, 1
  store i32 %30, ptr %26, align 4, !tbaa !70
  %31 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 6
  %32 = load i32, ptr %31, align 8, !tbaa !101
  %33 = add i32 %32, 1
  store i32 %33, ptr %31, align 8, !tbaa !101
  br label %71

34:                                               ; preds = %5
  %35 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %6, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !98
  %37 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %36, i64 0, i32 6
  %38 = load i32, ptr %37, align 8, !tbaa !76
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %34
  %41 = tail call ptr @__cxa_allocate_exception(i64 48) #10
  %42 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !50
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %41, ptr noundef nonnull @.str, i32 noundef 332, i32 noundef 22, ptr noundef %43)
          to label %44 unwind label %45

44:                                               ; preds = %40
  tail call void @__cxa_throw(ptr nonnull %41, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #11
  unreachable

45:                                               ; preds = %40
  %46 = landingpad { ptr, i32 }
          cleanup
  br label %72

47:                                               ; preds = %34
  %48 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %36, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !100
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPNS_5QNameEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 1)
  %50 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %2, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !64
  %52 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %2, i64 0, i32 1
  %53 = load i32, ptr %52, align 4, !tbaa !62
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds ptr, ptr %51, i64 %54
  store ptr %49, ptr %55, align 8, !tbaa !87
  %56 = add i32 %53, 1
  store i32 %56, ptr %52, align 4, !tbaa !62
  tail call void @_ZN11xercesc_2_713ValueVectorOfIbE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 1)
  %57 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %3, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !72
  %59 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %3, i64 0, i32 1
  %60 = load i32, ptr %59, align 4, !tbaa !70
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i8, ptr %58, i64 %61
  store i8 1, ptr %62, align 1, !tbaa !88
  %63 = add i32 %60, 1
  store i32 %63, ptr %59, align 4, !tbaa !70
  br label %71

64:                                               ; preds = %5
  %65 = tail call ptr @__cxa_allocate_exception(i64 48) #10
  %66 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !50
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %65, ptr noundef nonnull @.str, i32 noundef 338, i32 noundef 22, ptr noundef %67)
          to label %68 unwind label %69

68:                                               ; preds = %64
  tail call void @__cxa_throw(ptr nonnull %65, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #11
  unreachable

69:                                               ; preds = %64
  %70 = landingpad { ptr, i32 }
          cleanup
  br label %72

71:                                               ; preds = %14, %47
  ret void

72:                                               ; preds = %69, %45
  %73 = phi ptr [ %65, %69 ], [ %41, %45 ]
  %74 = phi { ptr, i32 } [ %70, %69 ], [ %46, %45 ]
  tail call void @__cxa_free_exception(ptr %73) #10
  resume { ptr, i32 } %74
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_5QNameEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !102 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !62
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !86

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #10
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !65
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
  %15 = load ptr, ptr %14, align 8, !tbaa !64
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  ret ptr %17
}

declare void @_ZN11xercesc_2_75QNameC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZN11xercesc_2_713ValueVectorOfIbE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !103 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !70
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !104

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #10
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !73
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
  %15 = load ptr, ptr %14, align 8, !tbaa !72
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds i8, ptr %15, i64 %16
  ret ptr %17
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_715AllContentModelD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(46) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715AllContentModelE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  %2 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !57
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5, !prof !84

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 4
  br label %15

7:                                                ; preds = %25, %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !82
  %12 = load ptr, ptr %9, align 8, !tbaa !47
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  invoke void %14(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %11)
          to label %30 unwind label %38, !prof !85

15:                                               ; preds = %5, %25
  %16 = phi i64 [ 0, %5 ], [ %26, %25 ]
  %17 = load ptr, ptr %6, align 8, !tbaa !82
  %18 = getelementptr inbounds ptr, ptr %17, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !87
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21, !prof !105

21:                                               ; preds = %15
  %22 = load ptr, ptr %19, align 8, !tbaa !47
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(56) %19) #10, !prof !106
  br label %25

25:                                               ; preds = %15, %21
  %26 = add nuw nsw i64 %16, 1
  %27 = load i32, ptr %2, align 8, !tbaa !57
  %28 = zext i32 %27 to i64
  %29 = icmp ult i64 %26, %28
  br i1 %29, label %15, label %7, !prof !91, !llvm.loop !107

30:                                               ; preds = %7
  %31 = load ptr, ptr %8, align 8, !tbaa !50
  %32 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !83
  %34 = load ptr, ptr %31, align 8, !tbaa !47
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef %33)
          to label %37 unwind label %38, !prof !85

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
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat !prof !95 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #10
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_715AllContentModelD0Ev(ptr noundef nonnull align 8 dereferenceable(46) %0) unnamed_addr #5 align 2 !prof !46 {
  tail call void @_ZN11xercesc_2_715AllContentModelD2Ev(ptr noundef nonnull align 8 dereferenceable(46) %0) #10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_715AllContentModel15validateContentEPPNS_5QNameEjj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(46) %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 %3) unnamed_addr #1 align 2 !prof !46 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %6, label %14, !prof !75

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 8
  %8 = load i8, ptr %7, align 1, !tbaa !59, !range !89, !noundef !90
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %9, i1 true, i1 %12
  br i1 %13, label %159, label %14

14:                                               ; preds = %6, %4
  %15 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !50
  %17 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !57
  %19 = zext i32 %18 to i64
  %20 = load ptr, ptr %16, align 8, !tbaa !47
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %16, i64 noundef %19), !prof !66
  %24 = load i32, ptr %17, align 8, !tbaa !57
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26, !prof !84

26:                                               ; preds = %14
  %27 = zext i32 %24 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %23, i8 0, i64 %27, i1 false), !tbaa !88
  br label %28

28:                                               ; preds = %26, %14
  %29 = icmp ne i32 %2, 0
  br i1 %29, label %30, label %146, !prof !108

30:                                               ; preds = %28
  %31 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 7
  %32 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 4
  %33 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 5
  %34 = zext i32 %2 to i64
  %35 = zext i32 %2 to i64
  br label %36

36:                                               ; preds = %30, %142
  %37 = phi i64 [ 0, %30 ], [ %143, %142 ]
  %38 = phi i1 [ %29, %30 ], [ %144, %142 ]
  %39 = phi i32 [ undef, %30 ], [ %141, %142 ]
  %40 = phi i32 [ 0, %30 ], [ %139, %142 ]
  %41 = getelementptr inbounds ptr, ptr %1, i64 %37
  %42 = load ptr, ptr %41, align 8, !tbaa !87
  %43 = load i8, ptr %31, align 4, !tbaa !58, !range !89, !noundef !90
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %50, label %45, !prof !86

45:                                               ; preds = %36
  %46 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl14fgPCDataElemIdE, align 4
  %47 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %42, i64 0, i32 4
  %48 = load i32, ptr %47, align 4, !tbaa !109
  %49 = icmp eq i32 %48, %46
  br i1 %49, label %138, label %50

50:                                               ; preds = %45, %36
  %51 = load i32, ptr %17, align 8, !tbaa !57
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %126, label %53, !prof !75

53:                                               ; preds = %50
  %54 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %42, i64 0, i32 4
  %55 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %42, i64 0, i32 6
  br label %56

56:                                               ; preds = %53, %118
  %57 = phi i64 [ 0, %53 ], [ %119, %118 ]
  %58 = phi i32 [ %39, %53 ], [ %117, %118 ]
  %59 = phi i32 [ %40, %53 ], [ %115, %118 ]
  %60 = load ptr, ptr %32, align 8, !tbaa !82
  %61 = getelementptr inbounds ptr, ptr %60, i64 %57
  %62 = load ptr, ptr %61, align 8, !tbaa !87
  %63 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %62, i64 0, i32 4
  %64 = load i32, ptr %63, align 4, !tbaa !109
  %65 = load i32, ptr %54, align 4, !tbaa !109
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %114, !prof !111

67:                                               ; preds = %56
  %68 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %62, i64 0, i32 6
  %69 = load ptr, ptr %68, align 8, !tbaa !112
  %70 = load ptr, ptr %55, align 8, !tbaa !112
  %71 = icmp eq ptr %69, null
  %72 = icmp eq ptr %70, null
  %73 = or i1 %71, %72
  br i1 %73, label %78, label %74, !prof !113

74:                                               ; preds = %67
  %75 = load i16, ptr %69, align 2, !tbaa !114
  %76 = load i16, ptr %70, align 2, !tbaa !114
  %77 = icmp eq i16 %75, %76
  br i1 %77, label %86, label %114, !prof !116

78:                                               ; preds = %67
  br i1 %71, label %82, label %79

79:                                               ; preds = %78
  %80 = load i16, ptr %69, align 2, !tbaa !114
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %82, label %114

82:                                               ; preds = %79, %78
  br i1 %72, label %97, label %83

83:                                               ; preds = %82
  %84 = load i16, ptr %70, align 2, !tbaa !114
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %97, label %114

86:                                               ; preds = %74, %91
  %87 = phi i16 [ %94, %91 ], [ %75, %74 ]
  %88 = phi ptr [ %93, %91 ], [ %70, %74 ]
  %89 = phi ptr [ %92, %91 ], [ %69, %74 ]
  %90 = icmp eq i16 %87, 0
  br i1 %90, label %97, label %91, !prof !117

91:                                               ; preds = %86
  %92 = getelementptr inbounds i16, ptr %89, i64 1
  %93 = getelementptr inbounds i16, ptr %88, i64 1
  %94 = load i16, ptr %92, align 2, !tbaa !114
  %95 = load i16, ptr %93, align 2, !tbaa !114
  %96 = icmp eq i16 %94, %95
  br i1 %96, label %86, label %114, !prof !118, !llvm.loop !119

97:                                               ; preds = %86, %83, %82
  %98 = getelementptr inbounds i8, ptr %23, i64 %57
  %99 = load i8, ptr %98, align 1, !tbaa !88, !range !89, !noundef !90
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %107, label %101, !prof !86

101:                                              ; preds = %97
  %102 = trunc i64 %37 to i32
  %103 = load ptr, ptr %15, align 8, !tbaa !50
  %104 = load ptr, ptr %103, align 8, !tbaa !47
  %105 = getelementptr inbounds ptr, ptr %104, i64 3
  %106 = load ptr, ptr %105, align 8
  tail call void %106(ptr noundef nonnull align 8 dereferenceable(8) %103, ptr noundef %23)
  br label %114

107:                                              ; preds = %97
  store i8 1, ptr %98, align 1, !tbaa !88
  %108 = load ptr, ptr %33, align 8, !tbaa !83
  %109 = getelementptr inbounds i8, ptr %108, i64 %57
  %110 = load i8, ptr %109, align 1, !tbaa !88, !range !89, !noundef !90
  %111 = xor i8 %110, 1
  %112 = zext nneg i8 %111 to i32
  %113 = add i32 %59, %112
  br label %114

114:                                              ; preds = %91, %74, %83, %79, %56, %107, %101
  %115 = phi i32 [ %59, %101 ], [ %113, %107 ], [ %59, %56 ], [ %59, %79 ], [ %59, %83 ], [ %59, %74 ], [ %59, %91 ]
  %116 = phi i32 [ 1, %101 ], [ 8, %107 ], [ 0, %56 ], [ 0, %79 ], [ 0, %83 ], [ 0, %74 ], [ 0, %91 ]
  %117 = phi i32 [ %102, %101 ], [ %58, %107 ], [ %58, %56 ], [ %58, %79 ], [ %58, %83 ], [ %58, %74 ], [ %58, %91 ]
  switch i32 %116, label %138 [
    i32 0, label %118
    i32 8, label %123
  ], !prof !120

118:                                              ; preds = %114
  %119 = add nuw nsw i64 %57, 1
  %120 = load i32, ptr %17, align 8, !tbaa !57
  %121 = zext i32 %120 to i64
  %122 = icmp ult i64 %119, %121
  br i1 %122, label %56, label %123, !prof !111, !llvm.loop !121

123:                                              ; preds = %114, %118
  %124 = phi i64 [ %119, %118 ], [ %57, %114 ]
  %125 = trunc i64 %124 to i32
  br label %126

126:                                              ; preds = %123, %50
  %127 = phi i32 [ 0, %50 ], [ %125, %123 ]
  %128 = phi i32 [ %40, %50 ], [ %115, %123 ]
  %129 = phi i32 [ %39, %50 ], [ %117, %123 ]
  %130 = load i32, ptr %17, align 8, !tbaa !57
  %131 = icmp eq i32 %127, %130
  br i1 %131, label %132, label %138, !prof !105

132:                                              ; preds = %126
  %133 = load ptr, ptr %15, align 8, !tbaa !50
  %134 = load ptr, ptr %133, align 8, !tbaa !47
  %135 = getelementptr inbounds ptr, ptr %134, i64 3
  %136 = load ptr, ptr %135, align 8
  tail call void %136(ptr noundef nonnull align 8 dereferenceable(8) %133, ptr noundef %23)
  %137 = trunc i64 %37 to i32
  br label %138

138:                                              ; preds = %114, %132, %126, %45
  %139 = phi i32 [ %40, %45 ], [ %128, %132 ], [ %128, %126 ], [ %115, %114 ]
  %140 = phi i32 [ 7, %45 ], [ 1, %132 ], [ 0, %126 ], [ %116, %114 ]
  %141 = phi i32 [ %39, %45 ], [ %137, %132 ], [ %129, %126 ], [ %117, %114 ]
  switch i32 %140, label %146 [
    i32 0, label %142
    i32 7, label %142
  ], !prof !122

142:                                              ; preds = %138, %138
  %143 = add nuw nsw i64 %37, 1
  %144 = icmp ult i64 %143, %34
  %145 = icmp eq i64 %143, %35
  br i1 %145, label %146, label %36, !prof !123, !llvm.loop !124

146:                                              ; preds = %138, %142, %28
  %147 = phi i1 [ %29, %28 ], [ %38, %138 ], [ %144, %142 ]
  %148 = phi i32 [ 0, %28 ], [ %139, %142 ], [ %139, %138 ]
  %149 = phi i32 [ undef, %28 ], [ %141, %142 ], [ %141, %138 ]
  br i1 %147, label %159, label %150, !prof !75

150:                                              ; preds = %146
  %151 = load ptr, ptr %15, align 8, !tbaa !50
  %152 = load ptr, ptr %151, align 8, !tbaa !47
  %153 = getelementptr inbounds ptr, ptr %152, i64 3
  %154 = load ptr, ptr %153, align 8
  tail call void %154(ptr noundef nonnull align 8 dereferenceable(8) %151, ptr noundef %23), !prof !85
  %155 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 6
  %156 = load i32, ptr %155, align 8, !tbaa !101
  %157 = icmp eq i32 %148, %156
  %158 = select i1 %157, i32 -1, i32 %2, !prof !80
  br label %159

159:                                              ; preds = %146, %150, %6
  %160 = phi i32 [ -1, %6 ], [ %149, %146 ], [ %158, %150 ]
  ret i32 %160
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_715AllContentModel22validateContentSpecialEPPNS_5QNameEjjPNS_15GrammarResolverEPNS_13XMLStringPoolE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(46) %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 %3, ptr noundef %4, ptr noundef %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  %7 = alloca %"class.xercesc_2_7::SubstitutionGroupComparator", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #10
  store ptr %4, ptr %7, align 8, !tbaa !125
  %8 = getelementptr inbounds %"class.xercesc_2_7::SubstitutionGroupComparator", ptr %7, i64 0, i32 1
  store ptr %5, ptr %8, align 8, !tbaa !127
  %9 = icmp eq i32 %2, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %6
  %11 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 8
  %12 = load i8, ptr %11, align 1, !tbaa !59, !range !89, !noundef !90
  %13 = icmp ne i8 %12, 0
  %14 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 6
  %15 = load i32, ptr %14, align 8
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %13, i1 true, i1 %16
  br i1 %17, label %128, label %18

18:                                               ; preds = %10, %6
  %19 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !50
  %21 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !57
  %23 = zext i32 %22 to i64
  %24 = load ptr, ptr %20, align 8, !tbaa !47
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %20, i64 noundef %23)
  %28 = load i32, ptr %21, align 8, !tbaa !57
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %18
  %31 = zext i32 %28 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %27, i8 0, i64 %31, i1 false), !tbaa !88
  br label %32

32:                                               ; preds = %30, %18
  %33 = icmp ne i32 %2, 0
  br i1 %33, label %34, label %115

34:                                               ; preds = %32
  %35 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 7
  %36 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl14fgPCDataElemIdE, align 4
  %37 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 4
  %38 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 5
  %39 = zext i32 %2 to i64
  %40 = zext i32 %2 to i64
  br label %41

41:                                               ; preds = %34, %111
  %42 = phi i64 [ 0, %34 ], [ %112, %111 ]
  %43 = phi i1 [ %33, %34 ], [ %113, %111 ]
  %44 = phi i32 [ undef, %34 ], [ %110, %111 ]
  %45 = phi i32 [ 0, %34 ], [ %108, %111 ]
  %46 = getelementptr inbounds ptr, ptr %1, i64 %42
  %47 = load ptr, ptr %46, align 8, !tbaa !87
  %48 = load i8, ptr %35, align 4, !tbaa !58, !range !89, !noundef !90
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %41
  %51 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %47, i64 0, i32 4
  %52 = load i32, ptr %51, align 4, !tbaa !109
  %53 = icmp eq i32 %52, %36
  br i1 %53, label %107, label %54

54:                                               ; preds = %50, %41
  %55 = load i32, ptr %21, align 8, !tbaa !57
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %95, label %57

57:                                               ; preds = %54
  %58 = trunc i64 %42 to i32
  br label %59

59:                                               ; preds = %57, %87
  %60 = phi i64 [ 0, %57 ], [ %88, %87 ]
  %61 = phi i32 [ %44, %57 ], [ %86, %87 ]
  %62 = phi i32 [ %45, %57 ], [ %84, %87 ]
  %63 = load ptr, ptr %37, align 8, !tbaa !82
  %64 = getelementptr inbounds ptr, ptr %63, i64 %60
  %65 = load ptr, ptr %64, align 8, !tbaa !87
  %66 = call noundef zeroext i1 @_ZN11xercesc_2_727SubstitutionGroupComparator14isEquivalentToEPNS_5QNameES2_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %47, ptr noundef %65)
  br i1 %66, label %67, label %83

67:                                               ; preds = %59
  %68 = getelementptr inbounds i8, ptr %27, i64 %60
  %69 = load i8, ptr %68, align 1, !tbaa !88, !range !89, !noundef !90
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %67
  %72 = load ptr, ptr %19, align 8, !tbaa !50
  %73 = load ptr, ptr %72, align 8, !tbaa !47
  %74 = getelementptr inbounds ptr, ptr %73, i64 3
  %75 = load ptr, ptr %74, align 8
  call void %75(ptr noundef nonnull align 8 dereferenceable(8) %72, ptr noundef %27)
  br label %83

76:                                               ; preds = %67
  store i8 1, ptr %68, align 1, !tbaa !88
  %77 = load ptr, ptr %38, align 8, !tbaa !83
  %78 = getelementptr inbounds i8, ptr %77, i64 %60
  %79 = load i8, ptr %78, align 1, !tbaa !88, !range !89, !noundef !90
  %80 = xor i8 %79, 1
  %81 = zext nneg i8 %80 to i32
  %82 = add i32 %62, %81
  br label %83

83:                                               ; preds = %71, %59, %76
  %84 = phi i32 [ %82, %76 ], [ %62, %71 ], [ %62, %59 ]
  %85 = phi i32 [ 8, %76 ], [ 1, %71 ], [ 0, %59 ]
  %86 = phi i32 [ %61, %76 ], [ %58, %71 ], [ %61, %59 ]
  switch i32 %85, label %107 [
    i32 0, label %87
    i32 8, label %92
  ]

87:                                               ; preds = %83
  %88 = add nuw nsw i64 %60, 1
  %89 = load i32, ptr %21, align 8, !tbaa !57
  %90 = zext i32 %89 to i64
  %91 = icmp ult i64 %88, %90
  br i1 %91, label %59, label %92, !llvm.loop !128

92:                                               ; preds = %83, %87
  %93 = phi i64 [ %88, %87 ], [ %60, %83 ]
  %94 = trunc i64 %93 to i32
  br label %95

95:                                               ; preds = %92, %54
  %96 = phi i32 [ 0, %54 ], [ %94, %92 ]
  %97 = phi i32 [ %45, %54 ], [ %84, %92 ]
  %98 = phi i32 [ %44, %54 ], [ %86, %92 ]
  %99 = load i32, ptr %21, align 8, !tbaa !57
  %100 = icmp eq i32 %96, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %95
  %102 = load ptr, ptr %19, align 8, !tbaa !50
  %103 = load ptr, ptr %102, align 8, !tbaa !47
  %104 = getelementptr inbounds ptr, ptr %103, i64 3
  %105 = load ptr, ptr %104, align 8
  call void %105(ptr noundef nonnull align 8 dereferenceable(8) %102, ptr noundef %27)
  %106 = trunc i64 %42 to i32
  br label %107

107:                                              ; preds = %83, %101, %95, %50
  %108 = phi i32 [ %45, %50 ], [ %97, %101 ], [ %97, %95 ], [ %84, %83 ]
  %109 = phi i32 [ 7, %50 ], [ 1, %101 ], [ 0, %95 ], [ %85, %83 ]
  %110 = phi i32 [ %44, %50 ], [ %106, %101 ], [ %98, %95 ], [ %86, %83 ]
  switch i32 %109, label %115 [
    i32 0, label %111
    i32 7, label %111
  ]

111:                                              ; preds = %107, %107
  %112 = add nuw nsw i64 %42, 1
  %113 = icmp ult i64 %112, %39
  %114 = icmp eq i64 %112, %40
  br i1 %114, label %115, label %41, !llvm.loop !129

115:                                              ; preds = %107, %111, %32
  %116 = phi i1 [ %33, %32 ], [ %43, %107 ], [ %113, %111 ]
  %117 = phi i32 [ 0, %32 ], [ %108, %111 ], [ %108, %107 ]
  %118 = phi i32 [ undef, %32 ], [ %110, %111 ], [ %110, %107 ]
  br i1 %116, label %128, label %119

119:                                              ; preds = %115
  %120 = load ptr, ptr %19, align 8, !tbaa !50
  %121 = load ptr, ptr %120, align 8, !tbaa !47
  %122 = getelementptr inbounds ptr, ptr %121, i64 3
  %123 = load ptr, ptr %122, align 8
  call void %123(ptr noundef nonnull align 8 dereferenceable(8) %120, ptr noundef %27)
  %124 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 6
  %125 = load i32, ptr %124, align 8, !tbaa !101
  %126 = icmp eq i32 %117, %125
  %127 = select i1 %126, i32 -1, i32 %2
  br label %128

128:                                              ; preds = %115, %119, %10
  %129 = phi i32 [ -1, %10 ], [ %118, %115 ], [ %127, %119 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10
  ret i32 %129
}

declare noundef zeroext i1 @_ZN11xercesc_2_727SubstitutionGroupComparator14isEquivalentToEPNS_5QNameES2_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715AllContentModel30checkUniqueParticleAttributionEPNS_13SchemaGrammarEPNS_15GrammarResolverEPNS_13XMLStringPoolEPNS_12XMLValidatorEPjPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(46) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ptr noundef %6) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  %8 = alloca %"class.xercesc_2_7::SubstitutionGroupComparator", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #10
  store ptr %2, ptr %8, align 8, !tbaa !125
  %9 = getelementptr inbounds %"class.xercesc_2_7::SubstitutionGroupComparator", ptr %8, i64 0, i32 1
  store ptr %3, ptr %9, align 8, !tbaa !127
  %10 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !57
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !82
  %16 = zext i32 %11 to i64
  br label %26

17:                                               ; preds = %26, %7
  %18 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !57
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %87, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 7
  %23 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 4
  %24 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl14fgPCDataElemIdE, align 4
  %25 = getelementptr inbounds %"class.xercesc_2_7::AllContentModel", ptr %0, i64 0, i32 4
  br label %42

26:                                               ; preds = %13, %26
  %27 = phi i64 [ 0, %13 ], [ %35, %26 ]
  %28 = getelementptr inbounds ptr, ptr %15, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !87
  %30 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %29, i64 0, i32 4
  %31 = load i32, ptr %30, align 4, !tbaa !109
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, ptr %5, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !130
  store i32 %34, ptr %30, align 4, !tbaa !109
  %35 = add nuw nsw i64 %27, 1
  %36 = icmp eq i64 %35, %16
  br i1 %36, label %17, label %26, !llvm.loop !131

37:                                               ; preds = %82, %42
  %38 = load i32, ptr %18, align 8, !tbaa !57
  %39 = zext i32 %38 to i64
  %40 = icmp ult i64 %45, %39
  %41 = add nuw nsw i64 %44, 1
  br i1 %40, label %42, label %87, !llvm.loop !132

42:                                               ; preds = %21, %37
  %43 = phi i64 [ 0, %21 ], [ %45, %37 ]
  %44 = phi i64 [ 1, %21 ], [ %41, %37 ]
  %45 = add nuw nsw i64 %43, 1
  %46 = load i32, ptr %18, align 8, !tbaa !57
  %47 = zext i32 %46 to i64
  %48 = icmp ult i64 %45, %47
  br i1 %48, label %49, label %37

49:                                               ; preds = %42, %82
  %50 = phi i64 [ %83, %82 ], [ %44, %42 ]
  %51 = load i8, ptr %22, align 4, !tbaa !58, !range !89, !noundef !90
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %66, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr %23, align 8, !tbaa !82
  %55 = getelementptr inbounds ptr, ptr %54, i64 %43
  %56 = load ptr, ptr %55, align 8, !tbaa !87
  %57 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %56, i64 0, i32 4
  %58 = load i32, ptr %57, align 4, !tbaa !109
  %59 = icmp eq i32 %58, %24
  br i1 %59, label %82, label %60

60:                                               ; preds = %53
  %61 = getelementptr inbounds ptr, ptr %54, i64 %50
  %62 = load ptr, ptr %61, align 8, !tbaa !87
  %63 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %62, i64 0, i32 4
  %64 = load i32, ptr %63, align 4, !tbaa !109
  %65 = icmp eq i32 %64, %24
  br i1 %65, label %82, label %66

66:                                               ; preds = %60, %49
  %67 = load ptr, ptr %25, align 8, !tbaa !82
  %68 = getelementptr inbounds ptr, ptr %67, i64 %43
  %69 = load ptr, ptr %68, align 8, !tbaa !87
  %70 = getelementptr inbounds ptr, ptr %67, i64 %50
  %71 = load ptr, ptr %70, align 8, !tbaa !87
  %72 = call noundef zeroext i1 @_ZN11xercesc_2_721XercesElementWildcard8conflictEPNS_13SchemaGrammarENS_15ContentSpecNode9NodeTypesEPNS_5QNameES4_S6_PNS_27SubstitutionGroupComparatorE(ptr noundef %1, i32 noundef 0, ptr noundef %69, i32 noundef 0, ptr noundef %71, ptr noundef nonnull %8)
  br i1 %72, label %73, label %82

73:                                               ; preds = %66
  %74 = load ptr, ptr %25, align 8, !tbaa !82
  %75 = getelementptr inbounds ptr, ptr %74, i64 %43
  %76 = load ptr, ptr %75, align 8, !tbaa !87
  %77 = call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %76)
  %78 = load ptr, ptr %25, align 8, !tbaa !82
  %79 = getelementptr inbounds ptr, ptr %78, i64 %50
  %80 = load ptr, ptr %79, align 8, !tbaa !87
  %81 = call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %80)
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 88, ptr noundef %6, ptr noundef %77, ptr noundef %81, ptr noundef null)
  br label %82

82:                                               ; preds = %73, %66, %53, %60
  %83 = add nuw nsw i64 %50, 1
  %84 = load i32, ptr %18, align 8, !tbaa !57
  %85 = zext i32 %84 to i64
  %86 = icmp ult i64 %83, %85
  br i1 %86, label %49, label %37, !llvm.loop !133

87:                                               ; preds = %37, %17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #10
  ret void
}

declare noundef zeroext i1 @_ZN11xercesc_2_721XercesElementWildcard8conflictEPNS_13SchemaGrammarENS_15ContentSpecNode9NodeTypesEPNS_5QNameES4_S6_PNS_27SubstitutionGroupComparatorE(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715AllContentModel28getContentLeafNameTypeVectorEv(ptr noundef nonnull align 8 dereferenceable(46) %0) unnamed_addr #7 comdat align 2 !prof !102 {
  ret ptr null
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715AllContentModel12getNextStateEjj(ptr noundef nonnull align 8 dereferenceable(46) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #7 comdat align 2 !prof !95 {
  %4 = load i32, ptr @_ZN11xercesc_2_715XMLContentModel13gInvalidTransE, align 4, !tbaa !130
  ret i32 %4
}

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !95 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !95 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !134
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !47
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
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
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
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !95 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !95 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !134
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !47
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #10
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_5QNameEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !102 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !62
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !63
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %42, !prof !105

9:                                                ; preds = %2
  %10 = uitofp i32 %4 to double
  %11 = fmul double %10, 1.250000e+00
  %12 = fptoui double %11 to i32
  %13 = tail call i32 @llvm.umax.i32(i32 %5, i32 %12)
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !65
  %16 = zext i32 %13 to i64
  %17 = shl nuw nsw i64 %16, 3
  %18 = load ptr, ptr %15, align 8, !tbaa !47
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %17)
  %22 = load i32, ptr %3, align 4, !tbaa !62
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %9
  %25 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %26 = zext i32 %22 to i64
  br label %34

27:                                               ; preds = %34, %9
  %28 = load ptr, ptr %14, align 8, !tbaa !65
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !64
  %31 = load ptr, ptr %28, align 8, !tbaa !47
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
  store ptr %21, ptr %29, align 8, !tbaa !64
  store i32 %13, ptr %6, align 8, !tbaa !63
  br label %42

34:                                               ; preds = %24, %34
  %35 = phi i64 [ 0, %24 ], [ %40, %34 ]
  %36 = load ptr, ptr %25, align 8, !tbaa !64
  %37 = getelementptr inbounds ptr, ptr %36, i64 %35
  %38 = load ptr, ptr %37, align 8, !tbaa !87
  %39 = getelementptr inbounds ptr, ptr %21, i64 %35
  store ptr %38, ptr %39, align 8, !tbaa !87
  %40 = add nuw nsw i64 %35, 1
  %41 = icmp eq i64 %40, %26
  br i1 %41, label %27, label %34, !llvm.loop !137

42:                                               ; preds = %2, %27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIbE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !103 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !70
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !71
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %41, !prof !138

9:                                                ; preds = %2
  %10 = uitofp i32 %4 to double
  %11 = fmul double %10, 1.250000e+00
  %12 = fptoui double %11 to i32
  %13 = tail call i32 @llvm.umax.i32(i32 %5, i32 %12)
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !73
  %16 = zext i32 %13 to i64
  %17 = load ptr, ptr %15, align 8, !tbaa !47
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %16), !prof !139
  %21 = load i32, ptr %3, align 4, !tbaa !70
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23, !prof !84

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !72
  %26 = zext i32 %21 to i64
  br label %34

27:                                               ; preds = %34, %9
  %28 = load ptr, ptr %14, align 8, !tbaa !73
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !72
  %31 = load ptr, ptr %28, align 8, !tbaa !47
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30), !prof !140
  store ptr %20, ptr %29, align 8, !tbaa !72
  store i32 %13, ptr %6, align 8, !tbaa !71
  br label %41

34:                                               ; preds = %23, %34
  %35 = phi i64 [ 0, %23 ], [ %39, %34 ]
  %36 = getelementptr inbounds i8, ptr %25, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !88, !range !89, !noundef !90
  %38 = getelementptr inbounds i8, ptr %20, i64 %35
  store i8 %37, ptr %38, align 1, !tbaa !88
  %39 = add nuw nsw i64 %35, 1
  %40 = icmp eq i64 %39, %26
  br i1 %40, label %27, label %34, !prof !141, !llvm.loop !142

41:                                               ; preds = %2, %27
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { noreturn }
attributes #12 = { noreturn nounwind }

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
!35 = !{ptr @_ZN11xercesc_2_715AllContentModelC2EPNS_15ContentSpecNodeEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_715AllContentModel14buildChildListEPNS_15ContentSpecNodeERNS_13ValueVectorOfIPNS_5QNameEEERNS3_IbEE, i64 1}
!36 = !{ptr @_ZN11xercesc_2_715AllContentModelC2EPNS_15ContentSpecNodeEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 6}
!37 = !{ptr @_ZN11xercesc_2_715AllContentModelC2EPNS_15ContentSpecNodeEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_5QNameEE9elementAtEj, i64 6}
!38 = !{ptr @_ZN11xercesc_2_715AllContentModelC2EPNS_15ContentSpecNodeEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_75QNameC1ERKS0_, i64 6}
!39 = !{ptr @_ZN11xercesc_2_715AllContentModelC2EPNS_15ContentSpecNodeEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713ValueVectorOfIbE9elementAtEj, i64 6}
!40 = !{ptr @_ZN11xercesc_2_715AllContentModel14buildChildListEPNS_15ContentSpecNodeERNS_13ValueVectorOfIPNS_5QNameEEERNS3_IbEE, ptr @_ZN11xercesc_2_715AllContentModel14buildChildListEPNS_15ContentSpecNodeERNS_13ValueVectorOfIPNS_5QNameEEERNS3_IbEE, i64 9}
!41 = !{ptr @_ZN11xercesc_2_715AllContentModel14buildChildListEPNS_15ContentSpecNodeERNS_13ValueVectorOfIPNS_5QNameEEERNS3_IbEE, ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_5QNameEE19ensureExtraCapacityEj, i64 11}
!42 = !{ptr @_ZN11xercesc_2_715AllContentModel14buildChildListEPNS_15ContentSpecNodeERNS_13ValueVectorOfIPNS_5QNameEEERNS3_IbEE, ptr @_ZN11xercesc_2_713ValueVectorOfIbE19ensureExtraCapacityEj, i64 11}
!43 = !{ptr @_ZN11xercesc_2_715AllContentModelD0Ev, ptr @_ZN11xercesc_2_715AllContentModelD2Ev, i64 1}
!44 = !{ptr @_ZN11xercesc_2_715AllContentModelD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 1}
!45 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!46 = !{!"function_entry_count", i64 1}
!47 = !{!48, !48, i64 0}
!48 = !{!"vtable pointer", !49, i64 0}
!49 = !{!"Simple C++ TBAA"}
!50 = !{!51, !53, i64 8}
!51 = !{!"_ZTSN11xercesc_2_715AllContentModelE", !52, i64 0, !53, i64 8, !55, i64 16, !53, i64 24, !53, i64 32, !55, i64 40, !56, i64 44, !56, i64 45}
!52 = !{!"_ZTSN11xercesc_2_715XMLContentModelE"}
!53 = !{!"any pointer", !54, i64 0}
!54 = !{!"omnipotent char", !49, i64 0}
!55 = !{!"int", !54, i64 0}
!56 = !{!"bool", !54, i64 0}
!57 = !{!51, !55, i64 16}
!58 = !{!51, !56, i64 44}
!59 = !{!51, !56, i64 45}
!60 = !{!61, !56, i64 0}
!61 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIPNS_5QNameEEE", !56, i64 0, !55, i64 4, !55, i64 8, !53, i64 16, !53, i64 24}
!62 = !{!61, !55, i64 4}
!63 = !{!61, !55, i64 8}
!64 = !{!61, !53, i64 16}
!65 = !{!61, !53, i64 24}
!66 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!67 = !{!"VP", i32 1, i64 1, i64 512, i64 1}
!68 = !{!69, !56, i64 0}
!69 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIbEE", !56, i64 0, !55, i64 4, !55, i64 8, !53, i64 16, !53, i64 24}
!70 = !{!69, !55, i64 4}
!71 = !{!69, !55, i64 8}
!72 = !{!69, !53, i64 16}
!73 = !{!69, !53, i64 24}
!74 = !{!"VP", i32 1, i64 1, i64 64, i64 1}
!75 = !{!"branch_weights", i32 0, i32 1}
!76 = !{!77, !79, i64 48}
!77 = !{!"_ZTSN11xercesc_2_715ContentSpecNodeE", !78, i64 0, !53, i64 8, !53, i64 16, !53, i64 24, !53, i64 32, !53, i64 40, !79, i64 48, !56, i64 52, !56, i64 53, !55, i64 56, !55, i64 60}
!78 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!79 = !{!"_ZTSN11xercesc_2_715ContentSpecNode9NodeTypesE", !54, i64 0}
!80 = !{!"branch_weights", i32 1, i32 0}
!81 = !{!77, !55, i64 56}
!82 = !{!51, !53, i64 24}
!83 = !{!51, !53, i64 32}
!84 = !{!"branch_weights", i32 1, i32 127}
!85 = !{!"VP", i32 0, i64 1, i64 -7405368087501025645, i64 1}
!86 = !{!"branch_weights", i32 6, i32 0}
!87 = !{!53, !53, i64 0}
!88 = !{!56, !56, i64 0}
!89 = !{i8 0, i8 2}
!90 = !{}
!91 = !{!"branch_weights", i32 641, i32 127}
!92 = distinct !{!92, !93, !94}
!93 = !{!"llvm.loop.mustprogress"}
!94 = !{!"llvm.loop.unroll.disable"}
!95 = !{!"function_entry_count", i64 0}
!96 = !{!"function_entry_count", i64 11}
!97 = !{!"branch_weights", i32 0, i32 5, i32 6, i32 0}
!98 = !{!77, !53, i64 32}
!99 = !{!77, !53, i64 40}
!100 = !{!77, !53, i64 16}
!101 = !{!51, !55, i64 40}
!102 = !{!"function_entry_count", i64 6}
!103 = !{!"function_entry_count", i64 1359937}
!104 = !{!"branch_weights", i32 1359937, i32 0}
!105 = !{!"branch_weights", i32 0, i32 6}
!106 = !{!"VP", i32 0, i64 6, i64 7173745605608799217, i64 6}
!107 = distinct !{!107, !93, !94}
!108 = !{!"branch_weights", i32 127, i32 1}
!109 = !{!110, !55, i64 20}
!110 = !{!"_ZTSN11xercesc_2_75QNameE", !78, i64 0, !55, i64 8, !55, i64 12, !55, i64 16, !55, i64 20, !53, i64 24, !53, i64 32, !53, i64 40, !53, i64 48}
!111 = !{!"branch_weights", i32 21, i32 0}
!112 = !{!110, !53, i64 32}
!113 = !{!"branch_weights", i32 0, i32 21}
!114 = !{!115, !115, i64 0}
!115 = !{!"short", !54, i64 0}
!116 = !{!"branch_weights", i32 239, i32 1}
!117 = !{!"branch_weights", i32 6, i32 44}
!118 = !{!"branch_weights", i32 561, i32 239}
!119 = distinct !{!119, !93, !94}
!120 = !{!"branch_weights", i32 0, i32 15, i32 6}
!121 = distinct !{!121, !93, !94}
!122 = !{!"branch_weights", i32 0, i32 6, i32 0}
!123 = !{!"branch_weights", i32 127, i32 641}
!124 = distinct !{!124, !93, !94}
!125 = !{!126, !53, i64 0}
!126 = !{!"_ZTSN11xercesc_2_727SubstitutionGroupComparatorE", !53, i64 0, !53, i64 8}
!127 = !{!126, !53, i64 8}
!128 = distinct !{!128, !93, !94}
!129 = distinct !{!129, !93, !94}
!130 = !{!55, !55, i64 0}
!131 = distinct !{!131, !93, !94}
!132 = distinct !{!132, !93, !94}
!133 = distinct !{!133, !93, !94}
!134 = !{!135, !53, i64 40}
!135 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !136, i64 8, !53, i64 16, !55, i64 24, !53, i64 32, !53, i64 40}
!136 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !54, i64 0}
!137 = distinct !{!137, !93, !94}
!138 = !{!"branch_weights", i32 2, i32 1359935}
!139 = !{!"VP", i32 0, i64 2, i64 8345045103670217670, i64 2}
!140 = !{!"VP", i32 0, i64 2, i64 -7405368087501025645, i64 2}
!141 = !{!"branch_weights", i32 127, i32 1025}
!142 = distinct !{!142, !93, !94}
