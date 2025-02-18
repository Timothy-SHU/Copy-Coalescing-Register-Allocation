; ModuleID = 'XMLBigDecimal.cpp'
source_filename = "XMLBigDecimal.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::XMLBigDecimal" = type { %"class.xercesc_2_7::XMLNumber", i32, i32, i32, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLNumber" = type { %"class.xercesc_2_7::XSerializable" }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_712ArrayJanitorItED2Ev = comdat any

$_ZNK11xercesc_2_713XMLBigDecimal8toStringEv = comdat any

$_ZNK11xercesc_2_713XMLBigDecimal10getRawDataEv = comdat any

$_ZNK11xercesc_2_713XMLBigDecimal18getFormattedStringEv = comdat any

$_ZNK11xercesc_2_713XMLBigDecimal7getSignEv = comdat any

$_ZN11xercesc_2_721NumberFormatExceptionD0Ev = comdat any

$_ZNK11xercesc_2_721NumberFormatException7getTypeEv = comdat any

$_ZNK11xercesc_2_721NumberFormatException9duplicateEv = comdat any

$_ZTSN11xercesc_2_721NumberFormatExceptionE = comdat any

$_ZTIN11xercesc_2_721NumberFormatExceptionE = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTVN11xercesc_2_721NumberFormatExceptionE = comdat any

@_ZTVN11xercesc_2_713XMLBigDecimalE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713XMLBigDecimalE, ptr @_ZN11xercesc_2_713XMLBigDecimalD2Ev, ptr @_ZN11xercesc_2_713XMLBigDecimalD0Ev, ptr @_ZNK11xercesc_2_713XMLBigDecimal14isSerializableEv, ptr @_ZN11xercesc_2_713XMLBigDecimal9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_713XMLBigDecimal12getProtoTypeEv, ptr @_ZNK11xercesc_2_713XMLBigDecimal8toStringEv, ptr @_ZNK11xercesc_2_713XMLBigDecimal10getRawDataEv, ptr @_ZNK11xercesc_2_713XMLBigDecimal18getFormattedStringEv, ptr @_ZNK11xercesc_2_713XMLBigDecimal7getSignEv] }, align 8
@.str = private unnamed_addr constant [18 x i8] c"XMLBigDecimal.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_721NumberFormatExceptionE = linkonce_odr dso_local constant [39 x i8] c"N11xercesc_2_721NumberFormatExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_721NumberFormatExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_721NumberFormatExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"XMLBigDecimal\00", align 1
@_ZN11xercesc_2_713XMLBigDecimal18classXMLBigDecimalE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str.1, ptr @_ZN11xercesc_2_713XMLBigDecimal12createObjectEPNS_13MemoryManagerE }, align 8
@_ZTSN11xercesc_2_713XMLBigDecimalE = dso_local constant [31 x i8] c"N11xercesc_2_713XMLBigDecimalE\00", align 1
@_ZTIN11xercesc_2_79XMLNumberE = external constant ptr
@_ZTIN11xercesc_2_713XMLBigDecimalE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XMLBigDecimalE, ptr @_ZTIN11xercesc_2_79XMLNumberE }, align 8
@_ZTVN11xercesc_2_721NumberFormatExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_721NumberFormatExceptionD0Ev, ptr @_ZNK11xercesc_2_721NumberFormatException7getTypeEv, ptr @_ZNK11xercesc_2_721NumberFormatException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni28fgNumberFormatException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E = external local_unnamed_addr global [65536 x i8], align 16

@_ZN11xercesc_2_713XMLBigDecimalC1EPKtPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_713XMLBigDecimalC2EPKtPNS_13MemoryManagerE
@_ZN11xercesc_2_713XMLBigDecimalD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_713XMLBigDecimalD2Ev
@_ZN11xercesc_2_713XMLBigDecimalC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_713XMLBigDecimalC2EPNS_13MemoryManagerE

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713XMLBigDecimalC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  tail call void @_ZN11xercesc_2_79XMLNumberC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xercesc_2_713XMLBigDecimalE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 5
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 6
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  store ptr %2, ptr %10, align 8, !tbaa !47
  %11 = icmp eq ptr %1, null
  br i1 %11, label %15, label %12, !prof !54

12:                                               ; preds = %3
  %13 = load i16, ptr %1, align 2, !tbaa !55
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %27, !prof !54

15:                                               ; preds = %12, %3
  %16 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %17 = load ptr, ptr %10, align 8, !tbaa !47
  invoke void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr noundef nonnull @.str, i32 noundef 63, i32 noundef 261, ptr noundef %17)
          to label %18 unwind label %19

18:                                               ; preds = %15
  invoke void @__cxa_throw(ptr nonnull %16, ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
          to label %89 unwind label %23

19:                                               ; preds = %15
  %20 = landingpad { ptr, i32 }
          cleanup
  %21 = extractvalue { ptr, i32 } %20, 0
  %22 = extractvalue { ptr, i32 } %20, 1
  tail call void @__cxa_free_exception(ptr %16) #16
  br label %81

23:                                               ; preds = %18
  %24 = landingpad { ptr, i32 }
          cleanup
  %25 = extractvalue { ptr, i32 } %24, 0
  %26 = extractvalue { ptr, i32 } %24, 1
  br label %81

27:                                               ; preds = %12, %27
  %28 = phi ptr [ %29, %27 ], [ %1, %12 ]
  %29 = getelementptr inbounds i16, ptr %28, i64 1
  %30 = load i16, ptr %29, align 2, !tbaa !55
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %27, !prof !57, !llvm.loop !58

32:                                               ; preds = %27
  %33 = ptrtoint ptr %29 to i64
  %34 = ptrtoint ptr %1 to i64
  %35 = sub i64 %33, %34
  %36 = lshr exact i64 %35, 1
  %37 = trunc i64 %36 to i32
  store i32 %37, ptr %7, align 4, !tbaa !61
  %38 = shl i64 %35, 1
  %39 = add i64 %38, 4
  %40 = and i64 %39, 8589934590
  %41 = load ptr, ptr %2, align 8, !tbaa !44
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %40)
          to label %45 unwind label %55, !prof !62

45:                                               ; preds = %32
  store ptr %44, ptr %8, align 8, !tbaa !63
  %46 = load i32, ptr %7, align 4, !tbaa !61
  %47 = zext i32 %46 to i64
  %48 = shl nuw nsw i64 %47, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %44, ptr nonnull align 2 %1, i64 %48, i1 false), !prof !64
  %49 = load ptr, ptr %8, align 8, !tbaa !63
  %50 = load i32, ptr %7, align 4, !tbaa !61
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i16, ptr %49, i64 %51
  store i16 0, ptr %52, align 2, !tbaa !55
  %53 = getelementptr inbounds i16, ptr %52, i64 1
  store ptr %53, ptr %9, align 8, !tbaa !65
  %54 = load ptr, ptr %10, align 8, !tbaa !47
  invoke void @_ZN11xercesc_2_713XMLBigDecimal12parseDecimalEPKtPtRiS4_S4_PNS_13MemoryManagerE(ptr noundef nonnull %1, ptr noundef nonnull %53, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef %54)
          to label %69 unwind label %55, !prof !66

55:                                               ; preds = %45, %32
  %56 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %57 = extractvalue { ptr, i32 } %56, 0
  %58 = extractvalue { ptr, i32 } %56, 1
  %59 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #16
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %55
  %62 = tail call ptr @__cxa_begin_catch(ptr %57) #16
  invoke void @__cxa_rethrow() #17
          to label %63 unwind label %64

63:                                               ; preds = %61
  unreachable

64:                                               ; preds = %61
  %65 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %66 unwind label %86

66:                                               ; preds = %64
  %67 = extractvalue { ptr, i32 } %65, 1
  %68 = extractvalue { ptr, i32 } %65, 0
  br label %70

69:                                               ; preds = %45
  ret void

70:                                               ; preds = %66, %55
  %71 = phi ptr [ null, %66 ], [ @_ZN11xercesc_2_713XMLBigDecimal7cleanUpEv, %55 ]
  %72 = phi ptr [ null, %66 ], [ %0, %55 ]
  %73 = phi i32 [ %67, %66 ], [ %58, %55 ]
  %74 = phi ptr [ %68, %66 ], [ %57, %55 ]
  %75 = icmp eq ptr %72, null
  %76 = or i1 %60, %75
  br i1 %76, label %81, label %77

77:                                               ; preds = %70
  invoke void %71(ptr noundef nonnull align 8 dereferenceable(48) %72)
          to label %81 unwind label %78

78:                                               ; preds = %77
  %79 = landingpad { ptr, i32 }
          catch ptr null
  %80 = extractvalue { ptr, i32 } %79, 0
  tail call void @__clang_call_terminate(ptr %80) #18
  unreachable

81:                                               ; preds = %77, %70, %23, %19
  %82 = phi i32 [ %26, %23 ], [ %22, %19 ], [ %73, %70 ], [ %73, %77 ]
  %83 = phi ptr [ %25, %23 ], [ %21, %19 ], [ %74, %70 ], [ %74, %77 ]
  tail call void @_ZN11xercesc_2_79XMLNumberD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  %84 = insertvalue { ptr, i32 } poison, ptr %83, 0
  %85 = insertvalue { ptr, i32 } %84, i32 %82, 1
  resume { ptr, i32 } %85

86:                                               ; preds = %64
  %87 = landingpad { ptr, i32 }
          catch ptr null
  %88 = extractvalue { ptr, i32 } %87, 0
  tail call void @__clang_call_terminate(ptr %88) #18
  unreachable

89:                                               ; preds = %18
  unreachable
}

declare void @_ZN11xercesc_2_79XMLNumberC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !67 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721NumberFormatExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  resume { ptr, i32 } %8
}

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713XMLBigDecimal7cleanUpEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) local_unnamed_addr #2 align 2 !prof !67 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  %9 = getelementptr inbounds ptr, ptr %8, i64 3
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3)
  br label %11

11:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713XMLBigDecimal12parseDecimalEPKtPtRiS4_S4_PNS_13MemoryManagerE(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull align 4 dereferenceable(4) %4, ptr noundef %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  store i16 0, ptr %1, align 2, !tbaa !55
  store i32 0, ptr %3, align 4, !tbaa !68
  store i32 0, ptr %4, align 4, !tbaa !68
  br label %7

7:                                                ; preds = %7, %6
  %8 = phi ptr [ %0, %6 ], [ %14, %7 ]
  %9 = load i16, ptr %8, align 2, !tbaa !55
  %10 = zext i16 %9 to i64
  %11 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !69
  %13 = icmp slt i8 %12, 0
  %14 = getelementptr inbounds i16, ptr %8, i64 1
  br i1 %13, label %7, label %15, !prof !54, !llvm.loop !70

15:                                               ; preds = %7
  %16 = icmp eq i16 %9, 0
  br i1 %16, label %17, label %22, !prof !54

17:                                               ; preds = %15
  %18 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  invoke void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef nonnull @.str, i32 noundef 220, i32 noundef 262, ptr noundef %5)
          to label %19 unwind label %20

19:                                               ; preds = %17
  tail call void @__cxa_throw(ptr nonnull %18, ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

20:                                               ; preds = %17
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %123

22:                                               ; preds = %15
  %23 = icmp eq ptr %0, null
  br i1 %23, label %38, label %24, !prof !54

24:                                               ; preds = %22
  %25 = load i16, ptr %0, align 2, !tbaa !55
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %38, label %27, !prof !54

27:                                               ; preds = %24, %27
  %28 = phi ptr [ %29, %27 ], [ %0, %24 ]
  %29 = getelementptr inbounds i16, ptr %28, i64 1
  %30 = load i16, ptr %29, align 2, !tbaa !55
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %27, !prof !57, !llvm.loop !58

32:                                               ; preds = %27
  %33 = ptrtoint ptr %29 to i64
  %34 = ptrtoint ptr %0 to i64
  %35 = sub i64 %33, %34
  %36 = lshr exact i64 %35, 1
  %37 = and i64 %36, 4294967295
  br label %38

38:                                               ; preds = %22, %24, %32
  %39 = phi i64 [ %37, %32 ], [ 0, %24 ], [ 0, %22 ]
  %40 = getelementptr inbounds i16, ptr %0, i64 %39
  br label %41

41:                                               ; preds = %41, %38
  %42 = phi ptr [ %40, %38 ], [ %43, %41 ]
  %43 = getelementptr inbounds i16, ptr %42, i64 -1
  %44 = load i16, ptr %43, align 2, !tbaa !55
  %45 = zext i16 %44 to i64
  %46 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E, i64 0, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !69
  %48 = icmp slt i8 %47, 0
  br i1 %48, label %41, label %49, !prof !54, !llvm.loop !71

49:                                               ; preds = %41
  store i32 1, ptr %2, align 4, !tbaa !68
  switch i16 %9, label %54 [
    i16 45, label %50
    i16 43, label %52
  ], !prof !72

50:                                               ; preds = %49
  store i32 -1, ptr %2, align 4, !tbaa !68
  %51 = getelementptr inbounds i16, ptr %8, i64 1
  br label %54

52:                                               ; preds = %49
  %53 = getelementptr inbounds i16, ptr %8, i64 1
  br label %54

54:                                               ; preds = %49, %52, %50
  %55 = phi ptr [ %8, %49 ], [ %53, %52 ], [ %51, %50 ]
  br label %56

56:                                               ; preds = %54, %56
  %57 = phi ptr [ %60, %56 ], [ %55, %54 ]
  %58 = load i16, ptr %57, align 2, !tbaa !55
  %59 = icmp eq i16 %58, 48
  %60 = getelementptr inbounds i16, ptr %57, i64 1
  br i1 %59, label %56, label %61, !prof !73, !llvm.loop !74

61:                                               ; preds = %56
  %62 = icmp ult ptr %57, %42
  br i1 %62, label %63, label %65, !prof !75

63:                                               ; preds = %61
  %64 = ptrtoint ptr %42 to i64
  br label %104

65:                                               ; preds = %61
  store i32 0, ptr %2, align 4, !tbaa !68
  br label %122

66:                                               ; preds = %98, %77
  %67 = phi ptr [ %106, %77 ], [ %100, %98 ]
  %68 = load i32, ptr %4, align 4, !tbaa !68
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %108, label %120, !prof !76

70:                                               ; preds = %104, %77
  %71 = phi i8 [ %105, %104 ], [ 1, %77 ]
  %72 = phi ptr [ %107, %104 ], [ %83, %77 ]
  %73 = load i16, ptr %72, align 2, !tbaa !55
  %74 = icmp eq i16 %73, 46
  br i1 %74, label %75, label %90, !prof !77

75:                                               ; preds = %70
  %76 = icmp eq i8 %71, 0
  br i1 %76, label %77, label %85, !prof !78

77:                                               ; preds = %75
  %78 = ptrtoint ptr %72 to i64
  %79 = sub i64 %64, %78
  %80 = lshr exact i64 %79, 1
  %81 = trunc i64 %80 to i32
  %82 = add i32 %81, -1
  store i32 %82, ptr %4, align 4, !tbaa !68
  %83 = getelementptr inbounds i16, ptr %72, i64 1
  %84 = icmp ult ptr %83, %42
  br i1 %84, label %70, label %66, !prof !79, !llvm.loop !80

85:                                               ; preds = %75
  %86 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  invoke void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %86, ptr noundef nonnull @.str, i32 noundef 268, i32 noundef 263, ptr noundef %5)
          to label %87 unwind label %88

87:                                               ; preds = %85
  tail call void @__cxa_throw(ptr nonnull %86, ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

88:                                               ; preds = %85
  %89 = landingpad { ptr, i32 }
          cleanup
  br label %123

90:                                               ; preds = %70
  %91 = add i16 %73, -58
  %92 = icmp ult i16 %91, -10
  br i1 %92, label %93, label %98, !prof !81

93:                                               ; preds = %90
  %94 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  invoke void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %94, ptr noundef nonnull @.str, i32 noundef 273, i32 noundef 264, ptr noundef %5)
          to label %95 unwind label %96

95:                                               ; preds = %93
  tail call void @__cxa_throw(ptr nonnull %94, ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

96:                                               ; preds = %93
  %97 = landingpad { ptr, i32 }
          cleanup
  br label %123

98:                                               ; preds = %90
  %99 = getelementptr inbounds i16, ptr %72, i64 1
  %100 = getelementptr inbounds i16, ptr %106, i64 1
  store i16 %73, ptr %106, align 2, !tbaa !55
  %101 = load i32, ptr %3, align 4, !tbaa !68
  %102 = add nsw i32 %101, 1
  store i32 %102, ptr %3, align 4, !tbaa !68
  %103 = icmp ult ptr %99, %42
  br i1 %103, label %104, label %66, !prof !82, !llvm.loop !80

104:                                              ; preds = %63, %98
  %105 = phi i8 [ 0, %63 ], [ %71, %98 ]
  %106 = phi ptr [ %1, %63 ], [ %100, %98 ]
  %107 = phi ptr [ %57, %63 ], [ %99, %98 ]
  br label %70

108:                                              ; preds = %66, %114
  %109 = phi i32 [ %118, %114 ], [ %68, %66 ]
  %110 = phi ptr [ %111, %114 ], [ %67, %66 ]
  %111 = getelementptr inbounds i16, ptr %110, i64 -1
  %112 = load i16, ptr %111, align 2, !tbaa !55
  %113 = icmp eq i16 %112, 48
  br i1 %113, label %114, label %120, !prof !83

114:                                              ; preds = %108
  %115 = add nsw i32 %109, -1
  store i32 %115, ptr %4, align 4, !tbaa !68
  %116 = load i32, ptr %3, align 4, !tbaa !68
  %117 = add nsw i32 %116, -1
  store i32 %117, ptr %3, align 4, !tbaa !68
  %118 = load i32, ptr %4, align 4, !tbaa !68
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %108, label %120, !prof !84, !llvm.loop !85

120:                                              ; preds = %108, %114, %66
  %121 = phi ptr [ %67, %66 ], [ %110, %108 ], [ %111, %114 ]
  store i16 0, ptr %121, align 2, !tbaa !55
  br label %122

122:                                              ; preds = %120, %65
  ret void

123:                                              ; preds = %88, %96, %20
  %124 = phi ptr [ %86, %88 ], [ %94, %96 ], [ %18, %20 ]
  %125 = phi { ptr, i32 } [ %89, %88 ], [ %97, %96 ], [ %21, %20 ]
  tail call void @__cxa_free_exception(ptr %124) #16
  resume { ptr, i32 } %125
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #6

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat !prof !67 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #16
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_79XMLNumberD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_713XMLBigDecimalD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xercesc_2_713XMLBigDecimalE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !54

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  %9 = getelementptr inbounds ptr, ptr %8, i64 3
  %10 = load ptr, ptr %9, align 8
  invoke void %10(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3)
          to label %11 unwind label %12, !prof !86

11:                                               ; preds = %1, %5
  tail call void @_ZN11xercesc_2_79XMLNumberD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  ret void

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  tail call void @__clang_call_terminate(ptr %14) #18
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_713XMLBigDecimalD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #9 align 2 !prof !87 {
  tail call void @_ZN11xercesc_2_713XMLBigDecimalD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713XMLBigDecimal15setDecimalValueEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !67 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 2
  store i32 0, ptr %3, align 4, !tbaa !88
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 3
  store i32 0, ptr %4, align 8, !tbaa !89
  %5 = icmp eq ptr %1, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = load i16, ptr %1, align 2, !tbaa !55
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %6, %9
  %10 = phi ptr [ %11, %9 ], [ %1, %6 ]
  %11 = getelementptr inbounds i16, ptr %10, i64 1
  %12 = load i16, ptr %11, align 2, !tbaa !55
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %9, !llvm.loop !58

14:                                               ; preds = %9
  %15 = ptrtoint ptr %11 to i64
  %16 = ptrtoint ptr %1 to i64
  %17 = sub i64 %15, %16
  %18 = lshr exact i64 %17, 1
  %19 = trunc i64 %18 to i32
  br label %20

20:                                               ; preds = %2, %6, %14
  %21 = phi i32 [ %19, %14 ], [ 0, %6 ], [ 0, %2 ]
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 4
  %23 = load i32, ptr %22, align 4, !tbaa !61
  %24 = icmp ugt i32 %21, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %20
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !47
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !63
  %30 = load ptr, ptr %27, align 8, !tbaa !44
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %29)
  %33 = load ptr, ptr %26, align 8, !tbaa !47
  %34 = shl i32 %21, 1
  %35 = add i32 %34, 4
  %36 = zext i32 %35 to i64
  %37 = shl nuw nsw i64 %36, 1
  %38 = load ptr, ptr %33, align 8, !tbaa !44
  %39 = getelementptr inbounds ptr, ptr %38, i64 2
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(8) %33, i64 noundef %37)
  store ptr %41, ptr %28, align 8, !tbaa !63
  br label %42

42:                                               ; preds = %25, %20
  %43 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 5
  %44 = load ptr, ptr %43, align 8, !tbaa !63
  %45 = zext i32 %21 to i64
  %46 = shl nuw nsw i64 %45, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %44, ptr align 2 %1, i64 %46, i1 false)
  %47 = load ptr, ptr %43, align 8, !tbaa !63
  %48 = getelementptr inbounds i16, ptr %47, i64 %45
  store i16 0, ptr %48, align 2, !tbaa !55
  store i32 %21, ptr %22, align 4, !tbaa !61
  %49 = getelementptr inbounds i16, ptr %48, i64 1
  %50 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 6
  store ptr %49, ptr %50, align 8, !tbaa !65
  %51 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 1
  %52 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 7
  %53 = load ptr, ptr %52, align 8, !tbaa !47
  tail call void @_ZN11xercesc_2_713XMLBigDecimal12parseDecimalEPKtPtRiS4_S4_PNS_13MemoryManagerE(ptr noundef %1, ptr noundef nonnull %49, ptr noundef nonnull align 4 dereferenceable(4) %51, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef %53)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_713XMLBigDecimal26getCanonicalRepresentationEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !67 {
  %3 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = icmp eq ptr %0, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %2
  %9 = load i16, ptr %0, align 2, !tbaa !55
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %8, %11
  %12 = phi ptr [ %13, %11 ], [ %0, %8 ]
  %13 = getelementptr inbounds i16, ptr %12, i64 1
  %14 = load i16, ptr %13, align 2, !tbaa !55
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %11, !llvm.loop !58

16:                                               ; preds = %11
  %17 = ptrtoint ptr %13 to i64
  %18 = ptrtoint ptr %0 to i64
  %19 = sub i64 %17, %18
  %20 = add i64 %19, 2
  %21 = and i64 %20, 8589934590
  br label %22

22:                                               ; preds = %2, %8, %16
  %23 = phi i64 [ %21, %16 ], [ 2, %8 ], [ 2, %2 ]
  %24 = load ptr, ptr %1, align 8, !tbaa !44
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %23)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  store ptr %27, ptr %3, align 8, !tbaa !90
  %28 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %3, i64 0, i32 1
  store ptr %1, ptr %28, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  invoke void @_ZN11xercesc_2_713XMLBigDecimal12parseDecimalEPKtPtRiS4_S4_PNS_13MemoryManagerE(ptr noundef %0, ptr noundef %27, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull %1)
          to label %39 unwind label %29

29:                                               ; preds = %22
  %30 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  %31 = extractvalue { ptr, i32 } %30, 1
  %32 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE) #16
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %121

34:                                               ; preds = %29
  %35 = extractvalue { ptr, i32 } %30, 0
  %36 = tail call ptr @__cxa_begin_catch(ptr %35) #16
  invoke void @__cxa_end_catch()
          to label %119 unwind label %37

37:                                               ; preds = %34
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %121

39:                                               ; preds = %22
  %40 = icmp eq ptr %27, null
  br i1 %40, label %55, label %41

41:                                               ; preds = %39
  %42 = load i16, ptr %27, align 2, !tbaa !55
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %41, %44
  %45 = phi ptr [ %46, %44 ], [ %27, %41 ]
  %46 = getelementptr inbounds i16, ptr %45, i64 1
  %47 = load i16, ptr %46, align 2, !tbaa !55
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %49, label %44, !llvm.loop !58

49:                                               ; preds = %44
  %50 = ptrtoint ptr %46 to i64
  %51 = ptrtoint ptr %27 to i64
  %52 = sub i64 %50, %51
  %53 = lshr exact i64 %52, 1
  %54 = trunc i64 %53 to i32
  br label %55

55:                                               ; preds = %39, %41, %49
  %56 = phi i32 [ %54, %49 ], [ 0, %41 ], [ 0, %39 ]
  %57 = add nsw i32 %56, 4
  %58 = sext i32 %57 to i64
  %59 = shl nsw i64 %58, 1
  %60 = load ptr, ptr %1, align 8, !tbaa !44
  %61 = getelementptr inbounds ptr, ptr %60, i64 2
  %62 = load ptr, ptr %61, align 8
  %63 = invoke noundef ptr %62(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %59)
          to label %64 unwind label %74

64:                                               ; preds = %55
  %65 = load i32, ptr %4, align 4, !tbaa !68
  %66 = icmp eq i32 %65, 0
  %67 = load i32, ptr %5, align 4
  %68 = icmp eq i32 %67, 0
  %69 = select i1 %66, i1 true, i1 %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  store i16 48, ptr %63, align 2, !tbaa !55
  %71 = getelementptr inbounds i16, ptr %63, i64 1
  store i16 46, ptr %71, align 2, !tbaa !55
  %72 = getelementptr inbounds i16, ptr %63, i64 2
  store i16 48, ptr %72, align 2, !tbaa !55
  %73 = getelementptr inbounds i16, ptr %63, i64 3
  br label %117

74:                                               ; preds = %55
  %75 = landingpad { ptr, i32 }
          cleanup
  br label %121

76:                                               ; preds = %64
  %77 = icmp eq i32 %65, -1
  br i1 %77, label %78, label %80

78:                                               ; preds = %76
  %79 = getelementptr inbounds i16, ptr %63, i64 1
  store i16 45, ptr %63, align 2, !tbaa !55
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi ptr [ %79, %78 ], [ %63, %76 ]
  %82 = load i32, ptr %6, align 4, !tbaa !68
  %83 = icmp eq i32 %82, %67
  br i1 %83, label %84, label %93

84:                                               ; preds = %80
  %85 = getelementptr inbounds i16, ptr %81, i64 1
  store i16 48, ptr %81, align 2, !tbaa !55
  %86 = getelementptr inbounds i16, ptr %81, i64 2
  store i16 46, ptr %85, align 2, !tbaa !55
  %87 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj(ptr noundef nonnull %86, ptr noundef %27, i32 noundef %56)
          to label %88 unwind label %91

88:                                               ; preds = %84
  %89 = sext i32 %56 to i64
  %90 = getelementptr inbounds i16, ptr %86, i64 %89
  br label %117

91:                                               ; preds = %95, %84
  %92 = landingpad { ptr, i32 }
          cleanup
  br label %121

93:                                               ; preds = %80
  %94 = icmp eq i32 %82, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %93
  %96 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj(ptr noundef %81, ptr noundef %27, i32 noundef %56)
          to label %97 unwind label %91

97:                                               ; preds = %95
  %98 = sext i32 %56 to i64
  %99 = getelementptr inbounds i16, ptr %81, i64 %98
  %100 = getelementptr inbounds i16, ptr %99, i64 1
  store i16 46, ptr %99, align 2, !tbaa !55
  %101 = getelementptr inbounds i16, ptr %99, i64 2
  store i16 48, ptr %100, align 2, !tbaa !55
  br label %117

102:                                              ; preds = %93
  %103 = sub nsw i32 %67, %82
  %104 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj(ptr noundef %81, ptr noundef %27, i32 noundef %103)
          to label %105 unwind label %115

105:                                              ; preds = %102
  %106 = sext i32 %103 to i64
  %107 = getelementptr inbounds i16, ptr %81, i64 %106
  %108 = getelementptr inbounds i16, ptr %107, i64 1
  store i16 46, ptr %107, align 2, !tbaa !55
  %109 = getelementptr inbounds i16, ptr %27, i64 %106
  %110 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj(ptr noundef nonnull %108, ptr noundef %109, i32 noundef %82)
          to label %111 unwind label %115

111:                                              ; preds = %105
  %112 = load i32, ptr %6, align 4, !tbaa !68
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i16, ptr %108, i64 %113
  br label %117

115:                                              ; preds = %105, %102
  %116 = landingpad { ptr, i32 }
          cleanup
  br label %121

117:                                              ; preds = %88, %111, %97, %70
  %118 = phi ptr [ %73, %70 ], [ %101, %97 ], [ %114, %111 ], [ %90, %88 ]
  store i16 0, ptr %118, align 2, !tbaa !55
  br label %119

119:                                              ; preds = %117, %34
  %120 = phi ptr [ null, %34 ], [ %63, %117 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  ret ptr %120

121:                                              ; preds = %74, %115, %91, %37, %29
  %122 = phi { ptr, i32 } [ %38, %37 ], [ %30, %29 ], [ %75, %74 ], [ %92, %91 ], [ %116, %115 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  resume { ptr, i32 } %122
}

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !93 {
  %2 = load ptr, ptr %0, align 8, !tbaa !90
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4, !prof !94

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !92
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !95

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !44
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14, !prof !96

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #19
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #18
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713XMLBigDecimal12parseDecimalEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !67 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi ptr [ %0, %2 ], [ %10, %3 ]
  %5 = load i16, ptr %4, align 2, !tbaa !55
  %6 = zext i16 %5 to i64
  %7 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E, i64 0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !69
  %9 = icmp slt i8 %8, 0
  %10 = getelementptr inbounds i16, ptr %4, i64 1
  br i1 %9, label %3, label %11, !llvm.loop !97

11:                                               ; preds = %3
  %12 = icmp eq i16 %5, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %11
  %14 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  invoke void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull @.str, i32 noundef 311, i32 noundef 262, ptr noundef %1)
          to label %15 unwind label %16

15:                                               ; preds = %13
  tail call void @__cxa_throw(ptr nonnull %14, ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

16:                                               ; preds = %13
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %87

18:                                               ; preds = %11
  %19 = icmp eq ptr %0, null
  br i1 %19, label %34, label %20

20:                                               ; preds = %18
  %21 = load i16, ptr %0, align 2, !tbaa !55
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %20, %23
  %24 = phi ptr [ %25, %23 ], [ %0, %20 ]
  %25 = getelementptr inbounds i16, ptr %24, i64 1
  %26 = load i16, ptr %25, align 2, !tbaa !55
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %23, !llvm.loop !58

28:                                               ; preds = %23
  %29 = ptrtoint ptr %25 to i64
  %30 = ptrtoint ptr %0 to i64
  %31 = sub i64 %29, %30
  %32 = lshr exact i64 %31, 1
  %33 = and i64 %32, 4294967295
  br label %34

34:                                               ; preds = %18, %20, %28
  %35 = phi i64 [ %33, %28 ], [ 0, %20 ], [ 0, %18 ]
  %36 = getelementptr inbounds i16, ptr %0, i64 %35
  br label %37

37:                                               ; preds = %37, %34
  %38 = phi ptr [ %36, %34 ], [ %39, %37 ]
  %39 = getelementptr inbounds i16, ptr %38, i64 -1
  %40 = load i16, ptr %39, align 2, !tbaa !55
  %41 = zext i16 %40 to i64
  %42 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E, i64 0, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !69
  %44 = icmp slt i8 %43, 0
  br i1 %44, label %37, label %45, !llvm.loop !98

45:                                               ; preds = %37
  switch i16 %5, label %50 [
    i16 45, label %46
    i16 43, label %48
  ]

46:                                               ; preds = %45
  %47 = getelementptr inbounds i16, ptr %4, i64 1
  br label %50

48:                                               ; preds = %45
  %49 = getelementptr inbounds i16, ptr %4, i64 1
  br label %50

50:                                               ; preds = %45, %48, %46
  %51 = phi ptr [ %4, %45 ], [ %49, %48 ], [ %47, %46 ]
  br label %52

52:                                               ; preds = %50, %52
  %53 = phi ptr [ %56, %52 ], [ %51, %50 ]
  %54 = load i16, ptr %53, align 2, !tbaa !55
  %55 = icmp eq i16 %54, 48
  %56 = getelementptr inbounds i16, ptr %53, i64 1
  br i1 %55, label %52, label %57, !llvm.loop !99

57:                                               ; preds = %52
  %58 = icmp ult ptr %53, %38
  br i1 %58, label %62, label %86

59:                                               ; preds = %69
  %60 = getelementptr inbounds i16, ptr %66, i64 1
  %61 = icmp ult ptr %60, %38
  br i1 %61, label %62, label %86, !llvm.loop !100

62:                                               ; preds = %57, %59
  %63 = phi i1 [ false, %59 ], [ true, %57 ]
  %64 = phi ptr [ %60, %59 ], [ %53, %57 ]
  br label %65

65:                                               ; preds = %62, %83
  %66 = phi ptr [ %64, %62 ], [ %84, %83 ]
  %67 = load i16, ptr %66, align 2, !tbaa !55
  %68 = icmp eq i16 %67, 46
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  br i1 %63, label %59, label %70

70:                                               ; preds = %69
  %71 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  invoke void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %71, ptr noundef nonnull @.str, i32 noundef 354, i32 noundef 263, ptr noundef %1)
          to label %72 unwind label %73

72:                                               ; preds = %70
  tail call void @__cxa_throw(ptr nonnull %71, ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

73:                                               ; preds = %70
  %74 = landingpad { ptr, i32 }
          cleanup
  br label %87

75:                                               ; preds = %65
  %76 = add i16 %67, -58
  %77 = icmp ult i16 %76, -10
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  invoke void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %79, ptr noundef nonnull @.str, i32 noundef 359, i32 noundef 264, ptr noundef %1)
          to label %80 unwind label %81

80:                                               ; preds = %78
  tail call void @__cxa_throw(ptr nonnull %79, ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

81:                                               ; preds = %78
  %82 = landingpad { ptr, i32 }
          cleanup
  br label %87

83:                                               ; preds = %75
  %84 = getelementptr inbounds i16, ptr %66, i64 1
  %85 = icmp ult ptr %84, %38
  br i1 %85, label %65, label %86, !llvm.loop !100

86:                                               ; preds = %59, %83, %57
  ret void

87:                                               ; preds = %73, %81, %16
  %88 = phi ptr [ %71, %73 ], [ %79, %81 ], [ %14, %16 ]
  %89 = phi { ptr, i32 } [ %74, %73 ], [ %82, %81 ], [ %17, %16 ]
  tail call void @__cxa_free_exception(ptr %88) #16
  resume { ptr, i32 } %89
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_713XMLBigDecimal13compareValuesEPKS0_S2_PNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !101 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %12, label %7, !prof !102

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  invoke void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 373, i32 noundef 265, ptr noundef %2)
          to label %9 unwind label %10

9:                                                ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

10:                                               ; preds = %7
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #16
  resume { ptr, i32 } %11

12:                                               ; preds = %3
  %13 = load ptr, ptr %0, align 8, !tbaa !44
  %14 = getelementptr inbounds ptr, ptr %13, i64 8
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef i32 %15(ptr noundef nonnull align 8 dereferenceable(48) %0), !prof !103
  %17 = load ptr, ptr %1, align 8, !tbaa !44
  %18 = getelementptr inbounds ptr, ptr %17, i64 8
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef i32 %19(ptr noundef nonnull align 8 dereferenceable(48) %1), !prof !103
  %21 = icmp eq i32 %16, %20
  br i1 %21, label %29, label %22, !prof !104

22:                                               ; preds = %12
  %23 = load ptr, ptr %1, align 8, !tbaa !44
  %24 = getelementptr inbounds ptr, ptr %23, i64 8
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef i32 %25(ptr noundef nonnull align 8 dereferenceable(48) %1), !prof !105
  %27 = icmp sgt i32 %16, %26
  %28 = select i1 %27, i32 1, i32 -1, !prof !106
  br label %58

29:                                               ; preds = %12
  %30 = icmp eq i32 %16, 0
  br i1 %30, label %58, label %31, !prof !107

31:                                               ; preds = %29
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !88
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 3
  %35 = load i32, ptr %34, align 8, !tbaa !89
  %36 = sub i32 %33, %35
  %37 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %1, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !88
  %39 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %1, i64 0, i32 3
  %40 = load i32, ptr %39, align 8, !tbaa !89
  %41 = sub i32 %38, %40
  %42 = icmp ugt i32 %36, %41
  br i1 %42, label %58, label %43, !prof !108

43:                                               ; preds = %31
  %44 = icmp ult i32 %36, %41
  br i1 %44, label %45, label %47, !prof !109

45:                                               ; preds = %43
  %46 = sub nsw i32 0, %16
  br label %58

47:                                               ; preds = %43
  %48 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 6
  %49 = load ptr, ptr %48, align 8, !tbaa !65
  %50 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %1, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !65
  %52 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %49, ptr noundef %51)
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %58, label %54, !prof !110

54:                                               ; preds = %47
  %55 = icmp eq i32 %52, 0
  %56 = sub nsw i32 0, %16
  %57 = select i1 %55, i32 0, i32 %56, !prof !111
  br label %58

58:                                               ; preds = %22, %29, %31, %45, %47, %54
  %59 = phi i32 [ %28, %22 ], [ 0, %29 ], [ %46, %45 ], [ %16, %31 ], [ %16, %47 ], [ %57, %54 ]
  ret i32 %59
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_713XMLBigDecimal9toCompareERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 align 2 !prof !67 {
  %3 = load ptr, ptr %0, align 8, !tbaa !44
  %4 = getelementptr inbounds ptr, ptr %3, i64 8
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(48) %0), !prof !112
  %7 = load ptr, ptr %1, align 8, !tbaa !44
  %8 = getelementptr inbounds ptr, ptr %7, i64 8
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(48) %1), !prof !112
  %11 = icmp eq i32 %6, %10
  br i1 %11, label %19, label %12, !prof !104

12:                                               ; preds = %2
  %13 = load ptr, ptr %1, align 8, !tbaa !44
  %14 = getelementptr inbounds ptr, ptr %13, i64 8
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef i32 %15(ptr noundef nonnull align 8 dereferenceable(48) %1), !prof !112
  %17 = icmp sgt i32 %6, %16
  %18 = select i1 %17, i32 1, i32 -1, !prof !106
  br label %48

19:                                               ; preds = %2
  %20 = icmp eq i32 %6, 0
  br i1 %20, label %48, label %21, !prof !107

21:                                               ; preds = %19
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !88
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 3
  %25 = load i32, ptr %24, align 8, !tbaa !89
  %26 = sub i32 %23, %25
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %1, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !88
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %1, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !89
  %31 = sub i32 %28, %30
  %32 = icmp ugt i32 %26, %31
  br i1 %32, label %48, label %33, !prof !108

33:                                               ; preds = %21
  %34 = icmp ult i32 %26, %31
  br i1 %34, label %35, label %37, !prof !109

35:                                               ; preds = %33
  %36 = sub nsw i32 0, %6
  br label %48

37:                                               ; preds = %33
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !65
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %1, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !65
  %42 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %39, ptr noundef %41)
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %48, label %44, !prof !110

44:                                               ; preds = %37
  %45 = icmp eq i32 %42, 0
  %46 = sub nsw i32 0, %6
  %47 = select i1 %45, i32 0, i32 %46, !prof !111
  br label %48

48:                                               ; preds = %44, %35, %21, %37, %19, %12
  %49 = phi i32 [ %18, %12 ], [ 0, %19 ], [ %36, %35 ], [ %6, %21 ], [ %6, %37 ], [ %47, %44 ]
  ret i32 %49
}

declare noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_713XMLBigDecimal12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #2 align 2 personality ptr @__gxx_personality_v0 !prof !67 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %0)
  invoke void @_ZN11xercesc_2_79XMLNumberC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %3 unwind label %6

3:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xercesc_2_713XMLBigDecimalE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !44
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %2, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %2, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  store ptr %0, ptr %5, align 8, !tbaa !47
  ret ptr %2

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %0) #16
  resume { ptr, i32 } %7
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_713XMLBigDecimal14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #10 align 2 !prof !67 {
  ret i1 true
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_713XMLBigDecimal12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #10 align 2 !prof !67 {
  ret ptr @_ZN11xercesc_2_713XMLBigDecimal18classXMLBigDecimalE
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713XMLBigDecimalC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !67 {
  tail call void @_ZN11xercesc_2_79XMLNumberC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xercesc_2_713XMLBigDecimalE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  store ptr %1, ptr %4, align 8, !tbaa !47
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713XMLBigDecimal9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !67 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %9 = alloca ptr, align 8
  %10 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  tail call void @_ZN11xercesc_2_79XMLNumber9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %11 = load i16, ptr %1, align 8, !tbaa !113
  %12 = icmp eq i16 %11, 0
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 1
  br i1 %12, label %14, label %27

14:                                               ; preds = %2
  %15 = load i32, ptr %13, align 8, !tbaa !116
  %16 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %15)
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !88
  %19 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %18)
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !89
  %22 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %21)
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !63
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %24, i32 noundef 0, i1 noundef zeroext false)
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !65
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %26, i32 noundef 0, i1 noundef zeroext false)
  br label %125

27:                                               ; preds = %2
  %28 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %13)
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 2
  %30 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %29)
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 3
  %32 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %31)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #16
  %33 = load ptr, ptr %7, align 8, !tbaa !117
  %34 = call noundef ptr @_ZNK11xercesc_2_716XSerializeEngine16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(100) %1)
  store ptr %33, ptr %8, align 8, !tbaa !90
  %35 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %8, i64 0, i32 1
  store ptr %34, ptr %35, align 8, !tbaa !92
  %36 = load ptr, ptr %7, align 8, !tbaa !117
  %37 = icmp eq ptr %36, null
  br i1 %37, label %52, label %38

38:                                               ; preds = %27
  %39 = load i16, ptr %36, align 2, !tbaa !55
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %38, %41
  %42 = phi ptr [ %43, %41 ], [ %36, %38 ]
  %43 = getelementptr inbounds i16, ptr %42, i64 1
  %44 = load i16, ptr %43, align 2, !tbaa !55
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %46, label %41, !llvm.loop !58

46:                                               ; preds = %41
  %47 = ptrtoint ptr %43 to i64
  %48 = ptrtoint ptr %36 to i64
  %49 = sub i64 %47, %48
  %50 = lshr exact i64 %49, 1
  %51 = trunc i64 %50 to i32
  br label %52

52:                                               ; preds = %27, %38, %46
  %53 = phi i32 [ %51, %46 ], [ 0, %38 ], [ 0, %27 ]
  %54 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 4
  store i32 %53, ptr %54, align 4, !tbaa !61
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  invoke void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, i1 noundef zeroext false)
          to label %55 unwind label %87

55:                                               ; preds = %52
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #16
  %56 = load ptr, ptr %9, align 8, !tbaa !117
  %57 = invoke noundef ptr @_ZNK11xercesc_2_716XSerializeEngine16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(100) %1)
          to label %58 unwind label %89

58:                                               ; preds = %55
  store ptr %56, ptr %10, align 8, !tbaa !90
  %59 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %10, i64 0, i32 1
  store ptr %57, ptr %59, align 8, !tbaa !92
  %60 = load ptr, ptr %9, align 8, !tbaa !117
  %61 = icmp eq ptr %60, null
  br i1 %61, label %76, label %62

62:                                               ; preds = %58
  %63 = load i16, ptr %60, align 2, !tbaa !55
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %76, label %65

65:                                               ; preds = %62, %65
  %66 = phi ptr [ %67, %65 ], [ %60, %62 ]
  %67 = getelementptr inbounds i16, ptr %66, i64 1
  %68 = load i16, ptr %67, align 2, !tbaa !55
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %70, label %65, !llvm.loop !58

70:                                               ; preds = %65
  %71 = ptrtoint ptr %67 to i64
  %72 = ptrtoint ptr %60 to i64
  %73 = sub i64 %71, %72
  %74 = lshr exact i64 %73, 1
  %75 = trunc i64 %74 to i32
  br label %76

76:                                               ; preds = %58, %62, %70
  %77 = phi i32 [ %75, %70 ], [ 0, %62 ], [ 0, %58 ]
  %78 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 5
  %79 = load ptr, ptr %78, align 8, !tbaa !63
  %80 = icmp eq ptr %79, null
  br i1 %80, label %93, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 7
  %83 = load ptr, ptr %82, align 8, !tbaa !47
  %84 = load ptr, ptr %83, align 8, !tbaa !44
  %85 = getelementptr inbounds ptr, ptr %84, i64 3
  %86 = load ptr, ptr %85, align 8
  invoke void %86(ptr noundef nonnull align 8 dereferenceable(8) %83, ptr noundef nonnull %79)
          to label %93 unwind label %91

87:                                               ; preds = %52
  %88 = landingpad { ptr, i32 }
          cleanup
  br label %123

89:                                               ; preds = %55
  %90 = landingpad { ptr, i32 }
          cleanup
  br label %121

91:                                               ; preds = %93, %81
  %92 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #16
  br label %121

93:                                               ; preds = %81, %76
  %94 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 7
  %95 = load ptr, ptr %94, align 8, !tbaa !47
  %96 = load i32, ptr %54, align 4, !tbaa !61
  %97 = add i32 %77, 4
  %98 = add i32 %97, %96
  %99 = zext i32 %98 to i64
  %100 = shl nuw nsw i64 %99, 1
  %101 = load ptr, ptr %95, align 8, !tbaa !44
  %102 = getelementptr inbounds ptr, ptr %101, i64 2
  %103 = load ptr, ptr %102, align 8
  %104 = invoke noundef ptr %103(ptr noundef nonnull align 8 dereferenceable(8) %95, i64 noundef %100)
          to label %105 unwind label %91

105:                                              ; preds = %93
  store ptr %104, ptr %78, align 8, !tbaa !63
  %106 = load ptr, ptr %7, align 8, !tbaa !117
  %107 = load i32, ptr %54, align 4, !tbaa !61
  %108 = zext i32 %107 to i64
  %109 = shl nuw nsw i64 %108, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %104, ptr align 2 %106, i64 %109, i1 false)
  %110 = load ptr, ptr %78, align 8, !tbaa !63
  %111 = load i32, ptr %54, align 4, !tbaa !61
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i16, ptr %110, i64 %112
  store i16 0, ptr %113, align 2, !tbaa !55
  %114 = getelementptr inbounds i16, ptr %113, i64 1
  %115 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 6
  store ptr %114, ptr %115, align 8, !tbaa !65
  %116 = load ptr, ptr %9, align 8, !tbaa !117
  %117 = zext i32 %77 to i64
  %118 = shl nuw nsw i64 %117, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %114, ptr align 2 %116, i64 %118, i1 false)
  %119 = load ptr, ptr %115, align 8, !tbaa !65
  %120 = getelementptr inbounds i16, ptr %119, i64 %117
  store i16 0, ptr %120, align 2, !tbaa !55
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br label %125

121:                                              ; preds = %91, %89
  %122 = phi { ptr, i32 } [ %92, %91 ], [ %90, %89 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #16
  br label %123

123:                                              ; preds = %121, %87
  %124 = phi { ptr, i32 } [ %122, %121 ], [ %88, %87 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  resume { ptr, i32 } %124

125:                                              ; preds = %105, %14
  ret void
}

declare void @_ZN11xercesc_2_79XMLNumber9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare noundef ptr @_ZNK11xercesc_2_716XSerializeEngine16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLBigDecimal8toStringEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #11 comdat align 2 !prof !67 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKt(ptr noundef %3)
  ret ptr %4
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLBigDecimal10getRawDataEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #12 comdat align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  ret ptr %3
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLBigDecimal18getFormattedStringEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #12 comdat align 2 !prof !67 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  ret ptr %3
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713XMLBigDecimal7getSignEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #13 comdat align 2 !prof !118 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !116
  ret i32 %3
}

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721NumberFormatExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #9 comdat align 2 !prof !67 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721NumberFormatException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #9 comdat align 2 !prof !67 {
  ret ptr @_ZN11xercesc_2_76XMLUni28fgNumberFormatException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721NumberFormatException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !67 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !119
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721NumberFormatExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !44
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #16
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

declare void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i1 noundef zeroext) local_unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKt(ptr noundef) local_unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nosync nounwind memory(none) }
attributes #7 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind }
attributes #17 = { noreturn }
attributes #18 = { noreturn nounwind }
attributes #19 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!42}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41}
!35 = !{ptr @_ZN11xercesc_2_713XMLBigDecimalC2EPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLNumberC2Ev, i64 91750}
!36 = !{ptr @_ZN11xercesc_2_713XMLBigDecimalC2EPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713XMLBigDecimal12parseDecimalEPKtPtRiS4_S4_PNS_13MemoryManagerE, i64 91750}
!37 = !{ptr @_ZN11xercesc_2_713XMLBigDecimalD2Ev, ptr @_ZN11xercesc_2_79XMLNumberD2Ev, i64 91750}
!38 = !{ptr @_ZN11xercesc_2_713XMLBigDecimalD0Ev, ptr @_ZN11xercesc_2_713XMLBigDecimalD2Ev, i64 16}
!39 = !{ptr @_ZN11xercesc_2_713XMLBigDecimalD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 16}
!40 = !{ptr @_ZN11xercesc_2_713XMLBigDecimal13compareValuesEPKS0_S2_PNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_713XMLBigDecimal7getSignEv, i64 49986}
!41 = !{ptr @_ZN11xercesc_2_713XMLBigDecimal13compareValuesEPKS0_S2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_, i64 21750}
!42 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!43 = !{!"function_entry_count", i64 91750}
!44 = !{!45, !45, i64 0}
!45 = !{!"vtable pointer", !46, i64 0}
!46 = !{!"Simple C++ TBAA"}
!47 = !{!48, !53, i64 40}
!48 = !{!"_ZTSN11xercesc_2_713XMLBigDecimalE", !49, i64 0, !51, i64 8, !51, i64 12, !51, i64 16, !51, i64 20, !53, i64 24, !53, i64 32, !53, i64 40}
!49 = !{!"_ZTSN11xercesc_2_79XMLNumberE", !50, i64 0}
!50 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!51 = !{!"int", !52, i64 0}
!52 = !{!"omnipotent char", !46, i64 0}
!53 = !{!"any pointer", !52, i64 0}
!54 = !{!"branch_weights", i32 0, i32 91750}
!55 = !{!56, !56, i64 0}
!56 = !{!"short", !52, i64 0}
!57 = !{!"branch_weights", i32 91750, i32 242287}
!58 = distinct !{!58, !59, !60}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!"llvm.loop.unroll.disable"}
!61 = !{!48, !51, i64 20}
!62 = !{!"VP", i32 0, i64 91750, i64 8345045103670217670, i64 91750}
!63 = !{!48, !53, i64 24}
!64 = !{!"VP", i32 1, i64 91750, i64 9, i64 35741, i64 2, i64 31535, i64 8, i64 14742, i64 16, i64 5277}
!65 = !{!48, !53, i64 32}
!66 = !{!"branch_weights", i32 91750, i32 0}
!67 = !{!"function_entry_count", i64 0}
!68 = !{!51, !51, i64 0}
!69 = !{!52, !52, i64 0}
!70 = distinct !{!70, !59, !60}
!71 = distinct !{!71, !59, !60}
!72 = !{!"branch_weights", i32 91740, i32 10, i32 0}
!73 = !{!"branch_weights", i32 155, i32 91750}
!74 = distinct !{!74, !59, !60}
!75 = !{!"branch_weights", i32 91729, i32 21}
!76 = !{!"branch_weights", i32 51246, i32 1}
!77 = !{!"branch_weights", i32 55911, i32 277961}
!78 = !{!"branch_weights", i32 55911, i32 0}
!79 = !{!"branch_weights", i32 242144, i32 91728}
!80 = distinct !{!80, !59, !60}
!81 = !{!"branch_weights", i32 0, i32 277961}
!82 = !{!"branch_weights", i32 91727, i32 1}
!83 = !{!"branch_weights", i32 48577, i32 40482}
!84 = !{!"branch_weights", i32 37813, i32 51246}
!85 = distinct !{!85, !59, !60}
!86 = !{!"VP", i32 0, i64 91750, i64 -7405368087501025645, i64 91750}
!87 = !{!"function_entry_count", i64 16}
!88 = !{!48, !51, i64 12}
!89 = !{!48, !51, i64 16}
!90 = !{!91, !53, i64 0}
!91 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !53, i64 0, !53, i64 8}
!92 = !{!91, !53, i64 8}
!93 = !{!"function_entry_count", i64 243874}
!94 = !{!"branch_weights", i32 191815, i32 52059}
!95 = !{!"branch_weights", i32 0, i32 52059}
!96 = !{!"VP", i32 0, i64 52059, i64 -7405368087501025645, i64 52059}
!97 = distinct !{!97, !59, !60}
!98 = distinct !{!98, !59, !60}
!99 = distinct !{!99, !59, !60}
!100 = distinct !{!100, !59, !60}
!101 = !{!"function_entry_count", i64 24978}
!102 = !{!"branch_weights", i32 24978, i32 0}
!103 = !{!"VP", i32 0, i64 24978, i64 -1566974259197387558, i64 24978}
!104 = !{!"branch_weights", i32 24948, i32 30}
!105 = !{!"VP", i32 0, i64 30, i64 -1566974259197387558, i64 30}
!106 = !{!"branch_weights", i32 18, i32 12}
!107 = !{!"branch_weights", i32 17, i32 24931}
!108 = !{!"branch_weights", i32 3163, i32 21768}
!109 = !{!"branch_weights", i32 18, i32 21750}
!110 = !{!"branch_weights", i32 1727, i32 20023}
!111 = !{!"branch_weights", i32 20023, i32 0}
!112 = !{!"VP", i32 0, i64 0, i64 -1566974259197387558, i64 0}
!113 = !{!114, !56, i64 0}
!114 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !56, i64 0, !56, i64 2, !53, i64 8, !53, i64 16, !53, i64 24, !115, i64 32, !115, i64 40, !53, i64 48, !53, i64 56, !53, i64 64, !53, i64 72, !53, i64 80, !53, i64 88, !51, i64 96}
!115 = !{!"long", !52, i64 0}
!116 = !{!48, !51, i64 8}
!117 = !{!53, !53, i64 0}
!118 = !{!"function_entry_count", i64 49986}
!119 = !{!120, !53, i64 40}
!120 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !121, i64 8, !53, i64 16, !51, i64 24, !53, i64 32, !53, i64 40}
!121 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !52, i64 0}
