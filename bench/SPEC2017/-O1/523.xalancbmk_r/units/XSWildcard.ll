; ModuleID = 'XSWildcard.cpp'
source_filename = "XSWildcard.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XSWildcard" = type { %"class.xercesc_2_7::XSObject.base", i32, i32, ptr, ptr }
%"class.xercesc_2_7::XSObject.base" = type <{ ptr, i32, [4 x i8], ptr, ptr, i32 }>
%"class.xercesc_2_7::XMLAttDef" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i8, i8, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XSObject" = type <{ ptr, i32, [4 x i8], ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::XSModel" = type <{ ptr, ptr, ptr, [14 x ptr], [14 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, [6 x i8] }>
%"class.xercesc_2_7::SchemaAttDef" = type { %"class.xercesc_2_7::XMLAttDef", i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::ValueVectorOf" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::ContentSpecNode" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i32, i32 }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_713ValueVectorOfIjE9elementAtEj = comdat any

$_ZN11xercesc_2_716RefArrayVectorOfItED2Ev = comdat any

$_ZN11xercesc_2_716RefArrayVectorOfItED0Ev = comdat any

$_ZN11xercesc_2_716RefArrayVectorOfItE12setElementAtEPtj = comdat any

$_ZN11xercesc_2_716RefArrayVectorOfItE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_716RefArrayVectorOfItE15removeElementAtEj = comdat any

$_ZN11xercesc_2_716RefArrayVectorOfItE17removeLastElementEv = comdat any

$_ZN11xercesc_2_716RefArrayVectorOfItE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE12setElementAtEPtj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE7cleanupEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE19ensureExtraCapacityEj = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTVN11xercesc_2_716RefArrayVectorOfItEE = comdat any

$_ZTSN11xercesc_2_716RefArrayVectorOfItEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfItEE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfItEE = comdat any

$_ZTIN11xercesc_2_716RefArrayVectorOfItEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfItEE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

@_ZTVN11xercesc_2_710XSWildcardE = dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_710XSWildcardE, ptr @_ZN11xercesc_2_710XSWildcardD2Ev, ptr @_ZN11xercesc_2_710XSWildcardD0Ev, ptr @_ZN11xercesc_2_78XSObject7getNameEv, ptr @_ZN11xercesc_2_78XSObject12getNamespaceEv, ptr @_ZN11xercesc_2_78XSObject16getNamespaceItemEv, ptr @_ZNK11xercesc_2_78XSObject5getIdEv] }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_710XSWildcardE = dso_local constant [28 x i8] c"N11xercesc_2_710XSWildcardE\00", align 1
@_ZTIN11xercesc_2_78XSObjectE = external constant ptr
@_ZTIN11xercesc_2_710XSWildcardE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_710XSWildcardE, ptr @_ZTIN11xercesc_2_78XSObjectE }, align 8
@_ZTVN11xercesc_2_716RefArrayVectorOfItEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RefArrayVectorOfItEE, ptr @_ZN11xercesc_2_716RefArrayVectorOfItED2Ev, ptr @_ZN11xercesc_2_716RefArrayVectorOfItED0Ev, ptr @_ZN11xercesc_2_716RefArrayVectorOfItE12setElementAtEPtj, ptr @_ZN11xercesc_2_716RefArrayVectorOfItE17removeAllElementsEv, ptr @_ZN11xercesc_2_716RefArrayVectorOfItE15removeElementAtEj, ptr @_ZN11xercesc_2_716RefArrayVectorOfItE17removeLastElementEv, ptr @_ZN11xercesc_2_716RefArrayVectorOfItE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_716RefArrayVectorOfItEE = linkonce_odr dso_local constant [37 x i8] c"N11xercesc_2_716RefArrayVectorOfItEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfItEE = linkonce_odr dso_local constant [36 x i8] c"N11xercesc_2_715BaseRefVectorOfItEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfItEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfItEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_716RefArrayVectorOfItEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RefArrayVectorOfItEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfItEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfItEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfItEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfItED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfItED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfItE12setElementAtEPtj, ptr @_ZN11xercesc_2_715BaseRefVectorOfItE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfItE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfItE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfItE7cleanupEv] }, comdat, align 8
@.str = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
@.str.1 = private unnamed_addr constant [34 x i8] c"./xercesc/util/RefArrayVectorOf.c\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"./xercesc/util/ValueVectorOf.c\00", align 1

@_ZN11xercesc_2_710XSWildcardC1EPNS_12SchemaAttDefEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_710XSWildcardC2EPNS_12SchemaAttDefEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE
@_ZN11xercesc_2_710XSWildcardC1EPKNS_15ContentSpecNodeEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_710XSWildcardC2EPKNS_15ContentSpecNodeEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE
@_ZN11xercesc_2_710XSWildcardD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_710XSWildcardD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710XSWildcardC2EPNS_12SchemaAttDefEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  tail call void @_ZN11xercesc_2_78XSObjectC2ENS_11XSConstants14COMPONENT_TYPEEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef 9, ptr noundef %3, ptr noundef %4)
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xercesc_2_710XSWildcardE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %6 = getelementptr inbounds %"class.xercesc_2_7::XSWildcard", ptr %0, i64 0, i32 1
  store i32 1, ptr %6, align 4, !tbaa !41
  %7 = getelementptr inbounds %"class.xercesc_2_7::XSWildcard", ptr %0, i64 0, i32 2
  store i32 1, ptr %7, align 8, !tbaa !50
  %8 = getelementptr inbounds %"class.xercesc_2_7::XSWildcard", ptr %0, i64 0, i32 3
  store ptr null, ptr %8, align 8, !tbaa !51
  %9 = getelementptr inbounds %"class.xercesc_2_7::XSWildcard", ptr %0, i64 0, i32 4
  store ptr %2, ptr %9, align 8, !tbaa !52
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %1, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !53
  switch i32 %11, label %158 [
    i32 12, label %12
    i32 13, label %72
  ]

12:                                               ; preds = %5
  store i32 2, ptr %6, align 4, !tbaa !41
  %13 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %4)
          to label %14 unwind label %68

14:                                               ; preds = %12
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfItEE, i64 0, inrange i32 0, i64 2), ptr %13, align 8, !tbaa !38
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %13, i64 0, i32 1
  store i8 1, ptr %15, align 8, !tbaa !60
  %16 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %13, i64 0, i32 2
  store i32 0, ptr %16, align 4, !tbaa !62
  %17 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %13, i64 0, i32 3
  store i32 1, ptr %17, align 8, !tbaa !63
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %13, i64 0, i32 4
  store ptr null, ptr %18, align 8, !tbaa !64
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %13, i64 0, i32 5
  store ptr %4, ptr %19, align 8, !tbaa !65
  %20 = load ptr, ptr %4, align 8, !tbaa !38
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = invoke noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 8)
          to label %24 unwind label %70

24:                                               ; preds = %14
  store ptr %23, ptr %18, align 8, !tbaa !64
  store ptr null, ptr %23, align 8, !tbaa !66
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_716RefArrayVectorOfItEE, i64 0, inrange i32 0, i64 2), ptr %13, align 8, !tbaa !38
  store ptr %13, ptr %8, align 8, !tbaa !51
  %25 = getelementptr inbounds %"class.xercesc_2_7::XSObject", ptr %0, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !67
  %27 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %26, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !68
  %29 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %1, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !70
  %31 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %30, i64 0, i32 4
  %32 = load i32, ptr %31, align 4, !tbaa !75
  %33 = load ptr, ptr %28, align 8, !tbaa !38
  %34 = getelementptr inbounds ptr, ptr %33, i64 10
  %35 = load ptr, ptr %34, align 8
  %36 = invoke noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(40) %28, i32 noundef %32)
          to label %37 unwind label %68

37:                                               ; preds = %24
  %38 = icmp eq ptr %36, null
  br i1 %38, label %60, label %39

39:                                               ; preds = %37
  %40 = load i16, ptr %36, align 2, !tbaa !77
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %39, %42
  %43 = phi ptr [ %44, %42 ], [ %36, %39 ]
  %44 = getelementptr inbounds i16, ptr %43, i64 1
  %45 = load i16, ptr %44, align 2, !tbaa !77
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %47, label %42, !llvm.loop !79

47:                                               ; preds = %42
  %48 = ptrtoint ptr %44 to i64
  %49 = ptrtoint ptr %36 to i64
  %50 = sub i64 %48, %49
  %51 = add i64 %50, 2
  %52 = and i64 %51, 8589934590
  br label %53

53:                                               ; preds = %47, %39
  %54 = phi i64 [ %52, %47 ], [ 2, %39 ]
  %55 = load ptr, ptr %4, align 8, !tbaa !38
  %56 = getelementptr inbounds ptr, ptr %55, i64 2
  %57 = load ptr, ptr %56, align 8
  %58 = invoke noundef ptr %57(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %54)
          to label %59 unwind label %68

59:                                               ; preds = %53
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %58, ptr nonnull align 2 %36, i64 %54, i1 false)
  br label %60

60:                                               ; preds = %59, %37
  %61 = phi ptr [ %58, %59 ], [ null, %37 ]
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfItE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %13, i32 noundef 1)
          to label %62 unwind label %68

62:                                               ; preds = %60
  %63 = load ptr, ptr %18, align 8, !tbaa !64
  %64 = load i32, ptr %16, align 4, !tbaa !62
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds ptr, ptr %63, i64 %65
  store ptr %61, ptr %66, align 8, !tbaa !66
  %67 = add i32 %64, 1
  store i32 %67, ptr %16, align 4, !tbaa !62
  br label %158

68:                                               ; preds = %60, %53, %24, %12
  %69 = landingpad { ptr, i32 }
          cleanup
  br label %165

70:                                               ; preds = %14
  %71 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %13, ptr noundef nonnull %4) #11
  br label %165

72:                                               ; preds = %5
  store i32 3, ptr %6, align 4, !tbaa !41
  %73 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %1, i64 0, i32 9
  %74 = load ptr, ptr %73, align 8, !tbaa !82
  %75 = icmp eq ptr %74, null
  br i1 %75, label %158, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %74, i64 0, i32 1
  %78 = load i32, ptr %77, align 4, !tbaa !83
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %158, label %80

80:                                               ; preds = %76
  %81 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %4)
          to label %82 unwind label %104

82:                                               ; preds = %80
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfItEE, i64 0, inrange i32 0, i64 2), ptr %81, align 8, !tbaa !38
  %83 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %81, i64 0, i32 1
  store i8 1, ptr %83, align 8, !tbaa !60
  %84 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %81, i64 0, i32 2
  store i32 0, ptr %84, align 4, !tbaa !62
  %85 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %81, i64 0, i32 3
  store i32 %78, ptr %85, align 8, !tbaa !63
  %86 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %81, i64 0, i32 4
  store ptr null, ptr %86, align 8, !tbaa !64
  %87 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %81, i64 0, i32 5
  store ptr %4, ptr %87, align 8, !tbaa !65
  %88 = zext i32 %78 to i64
  %89 = shl nuw nsw i64 %88, 3
  %90 = load ptr, ptr %4, align 8, !tbaa !38
  %91 = getelementptr inbounds ptr, ptr %90, i64 2
  %92 = load ptr, ptr %91, align 8
  %93 = invoke noundef ptr %92(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %89)
          to label %94 unwind label %106

94:                                               ; preds = %82
  store ptr %93, ptr %86, align 8, !tbaa !64
  %95 = zext i32 %78 to i64
  br label %96

96:                                               ; preds = %94, %96
  %97 = phi i64 [ 0, %94 ], [ %100, %96 ]
  %98 = load ptr, ptr %86, align 8, !tbaa !64
  %99 = getelementptr inbounds ptr, ptr %98, i64 %97
  store ptr null, ptr %99, align 8, !tbaa !66
  %100 = add nuw nsw i64 %97, 1
  %101 = icmp eq i64 %100, %95
  br i1 %101, label %102, label %96, !llvm.loop !85

102:                                              ; preds = %96
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_716RefArrayVectorOfItEE, i64 0, inrange i32 0, i64 2), ptr %81, align 8, !tbaa !38
  store ptr %81, ptr %8, align 8, !tbaa !51
  %103 = getelementptr inbounds %"class.xercesc_2_7::XSObject", ptr %0, i64 0, i32 3
  br label %108

104:                                              ; preds = %80
  %105 = landingpad { ptr, i32 }
          cleanup
  br label %165

106:                                              ; preds = %82
  %107 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %81, ptr noundef nonnull %4) #11
  br label %165

108:                                              ; preds = %102, %146
  %109 = phi i32 [ 0, %102 ], [ %154, %146 ]
  %110 = load ptr, ptr %8, align 8, !tbaa !51
  %111 = load ptr, ptr %103, align 8, !tbaa !67
  %112 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %111, i64 0, i32 5
  %113 = load ptr, ptr %112, align 8, !tbaa !68
  %114 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xercesc_2_713ValueVectorOfIjE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %74, i32 noundef %109)
          to label %115 unwind label %156

115:                                              ; preds = %108
  %116 = load i32, ptr %114, align 4, !tbaa !86
  %117 = load ptr, ptr %113, align 8, !tbaa !38
  %118 = getelementptr inbounds ptr, ptr %117, i64 10
  %119 = load ptr, ptr %118, align 8
  %120 = invoke noundef ptr %119(ptr noundef nonnull align 8 dereferenceable(40) %113, i32 noundef %116)
          to label %121 unwind label %156

121:                                              ; preds = %115
  %122 = icmp eq ptr %120, null
  br i1 %122, label %144, label %123

123:                                              ; preds = %121
  %124 = load i16, ptr %120, align 2, !tbaa !77
  %125 = icmp eq i16 %124, 0
  br i1 %125, label %137, label %126

126:                                              ; preds = %123, %126
  %127 = phi ptr [ %128, %126 ], [ %120, %123 ]
  %128 = getelementptr inbounds i16, ptr %127, i64 1
  %129 = load i16, ptr %128, align 2, !tbaa !77
  %130 = icmp eq i16 %129, 0
  br i1 %130, label %131, label %126, !llvm.loop !79

131:                                              ; preds = %126
  %132 = ptrtoint ptr %128 to i64
  %133 = ptrtoint ptr %120 to i64
  %134 = sub i64 %132, %133
  %135 = add i64 %134, 2
  %136 = and i64 %135, 8589934590
  br label %137

137:                                              ; preds = %131, %123
  %138 = phi i64 [ %136, %131 ], [ 2, %123 ]
  %139 = load ptr, ptr %4, align 8, !tbaa !38
  %140 = getelementptr inbounds ptr, ptr %139, i64 2
  %141 = load ptr, ptr %140, align 8
  %142 = invoke noundef ptr %141(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %138)
          to label %143 unwind label %156

143:                                              ; preds = %137
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %142, ptr nonnull align 2 %120, i64 %138, i1 false)
  br label %144

144:                                              ; preds = %143, %121
  %145 = phi ptr [ %142, %143 ], [ null, %121 ]
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfItE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %110, i32 noundef 1)
          to label %146 unwind label %156

146:                                              ; preds = %144
  %147 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %110, i64 0, i32 4
  %148 = load ptr, ptr %147, align 8, !tbaa !64
  %149 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %110, i64 0, i32 2
  %150 = load i32, ptr %149, align 4, !tbaa !62
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds ptr, ptr %148, i64 %151
  store ptr %145, ptr %152, align 8, !tbaa !66
  %153 = add i32 %150, 1
  store i32 %153, ptr %149, align 4, !tbaa !62
  %154 = add nuw i32 %109, 1
  %155 = icmp eq i32 %154, %78
  br i1 %155, label %158, label %108, !llvm.loop !87

156:                                              ; preds = %144, %137, %115, %108
  %157 = landingpad { ptr, i32 }
          cleanup
  br label %165

158:                                              ; preds = %146, %62, %72, %76, %5
  %159 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %1, i64 0, i32 1
  %160 = load i32, ptr %159, align 8, !tbaa !88
  switch i32 %160, label %164 [
    i32 5, label %162
    i32 6, label %161
  ]

161:                                              ; preds = %158
  br label %162

162:                                              ; preds = %158, %161
  %163 = phi i32 [ 3, %161 ], [ 2, %158 ]
  store i32 %163, ptr %7, align 8, !tbaa !50
  br label %164

164:                                              ; preds = %162, %158
  ret void

165:                                              ; preds = %104, %106, %156, %70, %68
  %166 = phi { ptr, i32 } [ %69, %68 ], [ %71, %70 ], [ %157, %156 ], [ %107, %106 ], [ %105, %104 ]
  tail call void @_ZN11xercesc_2_78XSObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) #11
  resume { ptr, i32 } %166
}

declare void @_ZN11xercesc_2_78XSObjectC2ENS_11XSConstants14COMPONENT_TYPEEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, ptr noundef) unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xercesc_2_713ValueVectorOfIjE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !83
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !90

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !91
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 206, i32 noundef 116, ptr noundef %9)
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
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !92
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds i32, ptr %15, i64 %16
  ret ptr %17
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_78XSObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710XSWildcardC2EPKNS_15ContentSpecNodeEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  tail call void @_ZN11xercesc_2_78XSObjectC2ENS_11XSConstants14COMPONENT_TYPEEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef 9, ptr noundef %3, ptr noundef %4)
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xercesc_2_710XSWildcardE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %6 = getelementptr inbounds %"class.xercesc_2_7::XSWildcard", ptr %0, i64 0, i32 1
  store i32 1, ptr %6, align 4, !tbaa !41
  %7 = getelementptr inbounds %"class.xercesc_2_7::XSWildcard", ptr %0, i64 0, i32 2
  store i32 1, ptr %7, align 8, !tbaa !50
  %8 = getelementptr inbounds %"class.xercesc_2_7::XSWildcard", ptr %0, i64 0, i32 3
  store ptr null, ptr %8, align 8, !tbaa !51
  %9 = getelementptr inbounds %"class.xercesc_2_7::XSWildcard", ptr %0, i64 0, i32 4
  store ptr %2, ptr %9, align 8, !tbaa !52
  %10 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !93
  %12 = and i32 %11, 15
  switch i32 %12, label %19 [
    i32 7, label %13
    i32 8, label %17
  ]

13:                                               ; preds = %5
  store i32 2, ptr %6, align 4, !tbaa !41
  switch i32 %11, label %55 [
    i32 23, label %53
    i32 39, label %16
  ]

14:                                               ; preds = %108, %101, %72, %60
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %119

16:                                               ; preds = %13
  br label %53

17:                                               ; preds = %5
  store i32 3, ptr %6, align 4, !tbaa !41
  switch i32 %11, label %55 [
    i32 24, label %53
    i32 40, label %18
  ]

18:                                               ; preds = %17
  br label %53

19:                                               ; preds = %5
  switch i32 %11, label %55 [
    i32 20, label %20
    i32 22, label %53
    i32 38, label %52
  ]

20:                                               ; preds = %19
  store i32 3, ptr %6, align 4, !tbaa !41
  %21 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !96
  %23 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %22, i64 0, i32 6
  %24 = load i32, ptr %23, align 8, !tbaa !93
  switch i32 %24, label %30 [
    i32 24, label %28
    i32 40, label %27
  ]

25:                                               ; preds = %49, %30
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %119

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %20, %27
  %29 = phi i32 [ 2, %27 ], [ 3, %20 ]
  store i32 %29, ptr %7, align 8, !tbaa !50
  br label %30

30:                                               ; preds = %28, %20
  %31 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %4)
          to label %32 unwind label %25

32:                                               ; preds = %30
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfItEE, i64 0, inrange i32 0, i64 2), ptr %31, align 8, !tbaa !38
  %33 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %31, i64 0, i32 1
  store i8 1, ptr %33, align 8, !tbaa !60
  %34 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %31, i64 0, i32 2
  store i32 0, ptr %34, align 4, !tbaa !62
  %35 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %31, i64 0, i32 3
  store i32 4, ptr %35, align 8, !tbaa !63
  %36 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %31, i64 0, i32 4
  store ptr null, ptr %36, align 8, !tbaa !64
  %37 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %31, i64 0, i32 5
  store ptr %4, ptr %37, align 8, !tbaa !65
  %38 = load ptr, ptr %4, align 8, !tbaa !38
  %39 = getelementptr inbounds ptr, ptr %38, i64 2
  %40 = load ptr, ptr %39, align 8
  %41 = invoke noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32)
          to label %42 unwind label %50

42:                                               ; preds = %32
  store ptr %41, ptr %36, align 8, !tbaa !64
  br label %43

43:                                               ; preds = %42, %43
  %44 = phi i64 [ 0, %42 ], [ %47, %43 ]
  %45 = load ptr, ptr %36, align 8, !tbaa !64
  %46 = getelementptr inbounds ptr, ptr %45, i64 %44
  store ptr null, ptr %46, align 8, !tbaa !66
  %47 = add nuw nsw i64 %44, 1
  %48 = icmp eq i64 %47, 4
  br i1 %48, label %49, label %43, !llvm.loop !85

49:                                               ; preds = %43
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_716RefArrayVectorOfItEE, i64 0, inrange i32 0, i64 2), ptr %31, align 8, !tbaa !38
  store ptr %31, ptr %8, align 8, !tbaa !51
  invoke void @_ZN11xercesc_2_710XSWildcard18buildNamespaceListEPKNS_15ContentSpecNodeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %1)
          to label %55 unwind label %25

50:                                               ; preds = %32
  %51 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %31, ptr noundef nonnull %4) #11
  br label %119

52:                                               ; preds = %19
  br label %53

53:                                               ; preds = %19, %17, %13, %16, %52, %18
  %54 = phi i32 [ 2, %18 ], [ 2, %52 ], [ 2, %16 ], [ 3, %13 ], [ 3, %17 ], [ 3, %19 ]
  store i32 %54, ptr %7, align 8, !tbaa !50
  br label %55

55:                                               ; preds = %53, %19, %49, %17, %13
  %56 = load i32, ptr %6, align 4, !tbaa !41
  switch i32 %56, label %118 [
    i32 2, label %60
    i32 3, label %57
  ]

57:                                               ; preds = %55
  %58 = load ptr, ptr %8, align 8, !tbaa !51
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %118

60:                                               ; preds = %57, %55
  %61 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %4)
          to label %62 unwind label %14

62:                                               ; preds = %60
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfItEE, i64 0, inrange i32 0, i64 2), ptr %61, align 8, !tbaa !38
  %63 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %61, i64 0, i32 1
  store i8 1, ptr %63, align 8, !tbaa !60
  %64 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %61, i64 0, i32 2
  store i32 0, ptr %64, align 4, !tbaa !62
  %65 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %61, i64 0, i32 3
  store i32 1, ptr %65, align 8, !tbaa !63
  %66 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %61, i64 0, i32 4
  store ptr null, ptr %66, align 8, !tbaa !64
  %67 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %61, i64 0, i32 5
  store ptr %4, ptr %67, align 8, !tbaa !65
  %68 = load ptr, ptr %4, align 8, !tbaa !38
  %69 = getelementptr inbounds ptr, ptr %68, i64 2
  %70 = load ptr, ptr %69, align 8
  %71 = invoke noundef ptr %70(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 8)
          to label %72 unwind label %116

72:                                               ; preds = %62
  store ptr %71, ptr %66, align 8, !tbaa !64
  store ptr null, ptr %71, align 8, !tbaa !66
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_716RefArrayVectorOfItEE, i64 0, inrange i32 0, i64 2), ptr %61, align 8, !tbaa !38
  store ptr %61, ptr %8, align 8, !tbaa !51
  %73 = getelementptr inbounds %"class.xercesc_2_7::XSObject", ptr %0, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !67
  %75 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %74, i64 0, i32 5
  %76 = load ptr, ptr %75, align 8, !tbaa !68
  %77 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !97
  %79 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %78, i64 0, i32 4
  %80 = load i32, ptr %79, align 4, !tbaa !75
  %81 = load ptr, ptr %76, align 8, !tbaa !38
  %82 = getelementptr inbounds ptr, ptr %81, i64 10
  %83 = load ptr, ptr %82, align 8
  %84 = invoke noundef ptr %83(ptr noundef nonnull align 8 dereferenceable(40) %76, i32 noundef %80)
          to label %85 unwind label %14

85:                                               ; preds = %72
  %86 = icmp eq ptr %84, null
  br i1 %86, label %108, label %87

87:                                               ; preds = %85
  %88 = load i16, ptr %84, align 2, !tbaa !77
  %89 = icmp eq i16 %88, 0
  br i1 %89, label %101, label %90

90:                                               ; preds = %87, %90
  %91 = phi ptr [ %92, %90 ], [ %84, %87 ]
  %92 = getelementptr inbounds i16, ptr %91, i64 1
  %93 = load i16, ptr %92, align 2, !tbaa !77
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %95, label %90, !llvm.loop !79

95:                                               ; preds = %90
  %96 = ptrtoint ptr %92 to i64
  %97 = ptrtoint ptr %84 to i64
  %98 = sub i64 %96, %97
  %99 = add i64 %98, 2
  %100 = and i64 %99, 8589934590
  br label %101

101:                                              ; preds = %95, %87
  %102 = phi i64 [ %100, %95 ], [ 2, %87 ]
  %103 = load ptr, ptr %4, align 8, !tbaa !38
  %104 = getelementptr inbounds ptr, ptr %103, i64 2
  %105 = load ptr, ptr %104, align 8
  %106 = invoke noundef ptr %105(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %102)
          to label %107 unwind label %14

107:                                              ; preds = %101
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %106, ptr nonnull align 2 %84, i64 %102, i1 false)
  br label %108

108:                                              ; preds = %107, %85
  %109 = phi ptr [ %106, %107 ], [ null, %85 ]
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfItE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %61, i32 noundef 1)
          to label %110 unwind label %14

110:                                              ; preds = %108
  %111 = load ptr, ptr %66, align 8, !tbaa !64
  %112 = load i32, ptr %64, align 4, !tbaa !62
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds ptr, ptr %111, i64 %113
  store ptr %109, ptr %114, align 8, !tbaa !66
  %115 = add i32 %112, 1
  store i32 %115, ptr %64, align 4, !tbaa !62
  br label %118

116:                                              ; preds = %62
  %117 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %61, ptr noundef nonnull %4) #11
  br label %119

118:                                              ; preds = %110, %55, %57
  ret void

119:                                              ; preds = %25, %50, %116, %14
  %120 = phi { ptr, i32 } [ %15, %14 ], [ %117, %116 ], [ %26, %25 ], [ %51, %50 ]
  tail call void @_ZN11xercesc_2_78XSObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) #11
  resume { ptr, i32 } %120
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710XSWildcard18buildNamespaceListEPKNS_15ContentSpecNodeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 align 2 !prof !37 {
  br label %3

3:                                                ; preds = %8, %2
  %4 = phi ptr [ %1, %2 ], [ %12, %8 ]
  %5 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %4, i64 0, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !93
  %7 = icmp eq i32 %6, 20
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %4, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !96
  tail call void @_ZN11xercesc_2_710XSWildcard18buildNamespaceListEPKNS_15ContentSpecNodeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %10)
  %11 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %4, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !98
  br label %3

13:                                               ; preds = %3
  %14 = getelementptr inbounds %"class.xercesc_2_7::XSWildcard", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !51
  %16 = getelementptr inbounds %"class.xercesc_2_7::XSObject", ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !67
  %18 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %17, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !68
  %20 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %4, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !97
  %22 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %21, i64 0, i32 4
  %23 = load i32, ptr %22, align 4, !tbaa !75
  %24 = load ptr, ptr %19, align 8, !tbaa !38
  %25 = getelementptr inbounds ptr, ptr %24, i64 10
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(40) %19, i32 noundef %23)
  %28 = getelementptr inbounds %"class.xercesc_2_7::XSObject", ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !99
  %30 = icmp eq ptr %27, null
  br i1 %30, label %51, label %31

31:                                               ; preds = %13
  %32 = load i16, ptr %27, align 2, !tbaa !77
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %36, %34 ], [ %27, %31 ]
  %36 = getelementptr inbounds i16, ptr %35, i64 1
  %37 = load i16, ptr %36, align 2, !tbaa !77
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %34, !llvm.loop !79

39:                                               ; preds = %34
  %40 = ptrtoint ptr %36 to i64
  %41 = ptrtoint ptr %27 to i64
  %42 = sub i64 %40, %41
  %43 = add i64 %42, 2
  %44 = and i64 %43, 8589934590
  br label %45

45:                                               ; preds = %39, %31
  %46 = phi i64 [ %44, %39 ], [ 2, %31 ]
  %47 = load ptr, ptr %29, align 8, !tbaa !38
  %48 = getelementptr inbounds ptr, ptr %47, i64 2
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(8) %29, i64 noundef %46)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %50, ptr nonnull align 2 %27, i64 %46, i1 false)
  br label %51

51:                                               ; preds = %13, %45
  %52 = phi ptr [ %50, %45 ], [ null, %13 ]
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfItE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %15, i32 noundef 1)
  %53 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %15, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !64
  %55 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %15, i64 0, i32 2
  %56 = load i32, ptr %55, align 4, !tbaa !62
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds ptr, ptr %54, i64 %57
  store ptr %52, ptr %58, align 8, !tbaa !66
  %59 = add i32 %56, 1
  store i32 %59, ptr %55, align 4, !tbaa !62
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_710XSWildcardD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #5 align 2 !prof !37 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xercesc_2_710XSWildcardE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSWildcard", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !38
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(40) %3) #11
  br label %9

9:                                                ; preds = %5, %1
  tail call void @_ZN11xercesc_2_78XSObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) #11
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_710XSWildcardD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #5 align 2 !prof !37 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xercesc_2_710XSWildcardE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSWildcard", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !38
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(40) %3) #11
  br label %9

9:                                                ; preds = %1, %5
  tail call void @_ZN11xercesc_2_78XSObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

declare noundef ptr @_ZN11xercesc_2_78XSObject7getNameEv(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #3

declare noundef ptr @_ZN11xercesc_2_78XSObject12getNamespaceEv(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #3

declare noundef ptr @_ZN11xercesc_2_78XSObject16getNamespaceItemEv(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #3

declare noundef i32 @_ZNK11xercesc_2_78XSObject5getIdEv(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_716RefArrayVectorOfItEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !60, !range !100, !noundef !101
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5, !prof !102

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !62
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9, !prof !103

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %12

12:                                               ; preds = %9, %21
  %13 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !65
  %15 = load ptr, ptr %11, align 8, !tbaa !64
  %16 = getelementptr inbounds ptr, ptr %15, i64 %13
  %17 = load ptr, ptr %16, align 8, !tbaa !66
  %18 = load ptr, ptr %14, align 8, !tbaa !38
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %17)
          to label %21 unwind label %35, !prof !104

21:                                               ; preds = %12
  %22 = add nuw nsw i64 %13, 1
  %23 = load i32, ptr %6, align 4, !tbaa !62
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %12, label %26, !prof !105, !llvm.loop !106

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !65
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !64
  %31 = load ptr, ptr %28, align 8, !tbaa !38
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
          to label %34 unwind label %37, !prof !107

34:                                               ; preds = %26
  ret void

35:                                               ; preds = %12
  %36 = landingpad { ptr, i32 }
          catch ptr null
  br label %39

37:                                               ; preds = %26
  %38 = landingpad { ptr, i32 }
          catch ptr null
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi { ptr, i32 } [ %36, %35 ], [ %38, %37 ]
  %41 = extractvalue { ptr, i32 } %40, 0
  tail call void @__clang_call_terminate(ptr %41) #13
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_716RefArrayVectorOfItEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !60, !range !100, !noundef !101
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5, !prof !102

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !62
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9, !prof !103

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %12

12:                                               ; preds = %21, %9
  %13 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !65
  %15 = load ptr, ptr %11, align 8, !tbaa !64
  %16 = getelementptr inbounds ptr, ptr %15, i64 %13
  %17 = load ptr, ptr %16, align 8, !tbaa !66
  %18 = load ptr, ptr %14, align 8, !tbaa !38
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %17)
          to label %21 unwind label %34, !prof !104

21:                                               ; preds = %12
  %22 = add nuw nsw i64 %13, 1
  %23 = load i32, ptr %6, align 4, !tbaa !62
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %12, label %26, !prof !105, !llvm.loop !106

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !65
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !64
  %31 = load ptr, ptr %28, align 8, !tbaa !38
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
          to label %41 unwind label %36, !prof !107

34:                                               ; preds = %12
  %35 = landingpad { ptr, i32 }
          catch ptr null
  br label %38

36:                                               ; preds = %26
  %37 = landingpad { ptr, i32 }
          catch ptr null
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi { ptr, i32 } [ %35, %34 ], [ %37, %36 ]
  %40 = extractvalue { ptr, i32 } %39, 0
  tail call void @__clang_call_terminate(ptr %40) #13
  unreachable

41:                                               ; preds = %26
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItE12setElementAtEPtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !109 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !62
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7, !prof !110

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.1, i32 noundef 52, i32 noundef 116, ptr noundef %10)
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
  %16 = load i8, ptr %15, align 8, !tbaa !60, !range !100, !noundef !101
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %29, label %18, !prof !111

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !65
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !64
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !66
  %26 = load ptr, ptr %20, align 8, !tbaa !38
  %27 = getelementptr inbounds ptr, ptr %26, i64 3
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %25), !prof !112
  br label %29

29:                                               ; preds = %18, %14
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !64
  %32 = zext i32 %2 to i64
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  store ptr %1, ptr %33, align 8, !tbaa !66
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !62
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %12

10:                                               ; preds = %24, %1
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  store i32 0, ptr %11, align 4, !tbaa !62
  ret void

12:                                               ; preds = %5, %24
  %13 = phi i64 [ 0, %5 ], [ %27, %24 ]
  %14 = load i8, ptr %6, align 8, !tbaa !60, !range !100, !noundef !101
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %7, align 8, !tbaa !65
  %18 = load ptr, ptr %8, align 8, !tbaa !64
  %19 = getelementptr inbounds ptr, ptr %18, i64 %13
  %20 = load ptr, ptr %19, align 8, !tbaa !66
  %21 = load ptr, ptr %17, align 8, !tbaa !38
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %20)
  br label %24

24:                                               ; preds = %16, %12
  %25 = load ptr, ptr %9, align 8, !tbaa !64
  %26 = getelementptr inbounds ptr, ptr %25, i64 %13
  store ptr null, ptr %26, align 8, !tbaa !66
  %27 = add nuw nsw i64 %13, 1
  %28 = load i32, ptr %2, align 4, !tbaa !62
  %29 = zext i32 %28 to i64
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %12, label %10, !llvm.loop !113
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !62
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 77, i32 noundef 116, ptr noundef %9)
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
  %15 = load i8, ptr %14, align 8, !tbaa !60, !range !100, !noundef !101
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !65
  %20 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !64
  %22 = zext i32 %1 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !66
  %25 = load ptr, ptr %19, align 8, !tbaa !38
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %24)
  br label %28

28:                                               ; preds = %17, %13
  %29 = load i32, ptr %3, align 4, !tbaa !62
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
  %40 = load ptr, ptr %35, align 8, !tbaa !64
  %41 = add nuw nsw i64 %39, 1
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !66
  %44 = getelementptr inbounds ptr, ptr %40, i64 %39
  store ptr %43, ptr %44, align 8, !tbaa !66
  %45 = icmp eq i64 %41, %37
  br i1 %45, label %46, label %38, !llvm.loop !114

46:                                               ; preds = %38, %32, %28
  %47 = phi i32 [ %1, %28 ], [ %30, %32 ], [ %30, %38 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !64
  %50 = zext i32 %47 to i64
  %51 = getelementptr inbounds ptr, ptr %49, i64 %50
  store ptr null, ptr %51, align 8, !tbaa !66
  store i32 %30, ptr %3, align 4, !tbaa !62
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !62
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !62
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !60, !range !100, !noundef !101
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !65
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !64
  %15 = zext i32 %6 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !66
  %18 = load ptr, ptr %12, align 8, !tbaa !38
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %17)
  br label %21

21:                                               ; preds = %1, %10, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !60, !range !100, !noundef !101
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !62
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %12

12:                                               ; preds = %9, %12
  %13 = phi i64 [ 0, %9 ], [ %21, %12 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !65
  %15 = load ptr, ptr %11, align 8, !tbaa !64
  %16 = getelementptr inbounds ptr, ptr %15, i64 %13
  %17 = load ptr, ptr %16, align 8, !tbaa !66
  %18 = load ptr, ptr %14, align 8, !tbaa !38
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %17)
  %21 = add nuw nsw i64 %13, 1
  %22 = load i32, ptr %6, align 4, !tbaa !62
  %23 = zext i32 %22 to i64
  %24 = icmp ult i64 %21, %23
  br i1 %24, label %12, label %25, !llvm.loop !115

25:                                               ; preds = %12, %5, %1
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !65
  %28 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !64
  %30 = load ptr, ptr %27, align 8, !tbaa !38
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %29)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !37 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !37 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE12setElementAtEPtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !62
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 116, ptr noundef %10)
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
  %16 = load i8, ptr %15, align 8, !tbaa !60, !range !100, !noundef !101
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !64
  %21 = zext i32 %2 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !66
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  tail call void @_ZdlPv(ptr noundef %23) #14
  br label %26

26:                                               ; preds = %18, %25, %14
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !64
  %29 = zext i32 %2 to i64
  %30 = getelementptr inbounds ptr, ptr %28, i64 %29
  store ptr %1, ptr %30, align 8, !tbaa !66
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !62
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

9:                                                ; preds = %21, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !62
  ret void

11:                                               ; preds = %5, %21
  %12 = phi i64 [ 0, %5 ], [ %24, %21 ]
  %13 = load i8, ptr %6, align 8, !tbaa !60, !range !100, !noundef !101
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 8, !tbaa !64
  %17 = getelementptr inbounds ptr, ptr %16, i64 %12
  %18 = load ptr, ptr %17, align 8, !tbaa !66
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  tail call void @_ZdlPv(ptr noundef %18) #14
  br label %21

21:                                               ; preds = %15, %20, %11
  %22 = load ptr, ptr %8, align 8, !tbaa !64
  %23 = getelementptr inbounds ptr, ptr %22, i64 %12
  store ptr null, ptr %23, align 8, !tbaa !66
  %24 = add nuw nsw i64 %12, 1
  %25 = load i32, ptr %2, align 4, !tbaa !62
  %26 = zext i32 %25 to i64
  %27 = icmp ult i64 %24, %26
  br i1 %27, label %11, label %9, !llvm.loop !116
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !62
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 144, i32 noundef 116, ptr noundef %9)
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
  %15 = load i8, ptr %14, align 8, !tbaa !60, !range !100, !noundef !101
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !64
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !66
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  tail call void @_ZdlPv(ptr noundef %22) #14
  br label %25

25:                                               ; preds = %17, %24, %13
  %26 = load i32, ptr %3, align 4, !tbaa !62
  %27 = add i32 %26, -1
  %28 = icmp eq i32 %27, %1
  br i1 %28, label %43, label %29

29:                                               ; preds = %25
  %30 = icmp ugt i32 %27, %1
  br i1 %30, label %31, label %43

31:                                               ; preds = %29
  %32 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %33 = zext i32 %1 to i64
  %34 = zext i32 %27 to i64
  br label %35

35:                                               ; preds = %31, %35
  %36 = phi i64 [ %33, %31 ], [ %38, %35 ]
  %37 = load ptr, ptr %32, align 8, !tbaa !64
  %38 = add nuw nsw i64 %36, 1
  %39 = getelementptr inbounds ptr, ptr %37, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !66
  %41 = getelementptr inbounds ptr, ptr %37, i64 %36
  store ptr %40, ptr %41, align 8, !tbaa !66
  %42 = icmp eq i64 %38, %34
  br i1 %42, label %43, label %35, !llvm.loop !117

43:                                               ; preds = %35, %29, %25
  %44 = phi i32 [ %1, %25 ], [ %27, %29 ], [ %27, %35 ]
  %45 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !64
  %47 = zext i32 %44 to i64
  %48 = getelementptr inbounds ptr, ptr %46, i64 %47
  store ptr null, ptr %48, align 8, !tbaa !66
  store i32 %27, ptr %3, align 4, !tbaa !62
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !62
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !62
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !60, !range !100, !noundef !101
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !64
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !66
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  tail call void @_ZdlPv(ptr noundef %15) #14
  br label %18

18:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !60, !range !100, !noundef !101
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !62
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %18
  %12 = phi i64 [ 0, %9 ], [ %19, %18 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !64
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !66
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  tail call void @_ZdlPv(ptr noundef %15) #14
  br label %18

18:                                               ; preds = %11, %17
  %19 = add nuw nsw i64 %12, 1
  %20 = load i32, ptr %6, align 4, !tbaa !62
  %21 = zext i32 %20 to i64
  %22 = icmp ult i64 %19, %21
  br i1 %22, label %11, label %23, !llvm.loop !118

23:                                               ; preds = %18, %5, %1
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !65
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !64
  %28 = load ptr, ptr %25, align 8, !tbaa !38
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %27)
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !37 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !37 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !119
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !38
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #11
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat !prof !37 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !122 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !62
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !63
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %55, !prof !123

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !65
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !38
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16), !prof !124
  %21 = load i32, ptr %3, align 4, !tbaa !62
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23, !prof !125

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
  br i1 %30, label %31, label %48, !prof !126

31:                                               ; preds = %28
  %32 = zext i32 %29 to i64
  %33 = shl nuw nsw i64 %32, 3
  %34 = getelementptr i8, ptr %20, i64 %33
  %35 = xor i32 %29, -1
  %36 = add i32 %12, %35
  %37 = zext i32 %36 to i64
  %38 = shl nuw nsw i64 %37, 3
  %39 = add nuw nsw i64 %38, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %34, i8 0, i64 %39, i1 false), !tbaa !66
  br label %48

40:                                               ; preds = %23, %40
  %41 = phi i64 [ 0, %23 ], [ %46, %40 ]
  %42 = load ptr, ptr %24, align 8, !tbaa !64
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !66
  %45 = getelementptr inbounds ptr, ptr %20, i64 %41
  store ptr %44, ptr %45, align 8, !tbaa !66
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %25
  br i1 %47, label %26, label %40, !prof !127, !llvm.loop !128

48:                                               ; preds = %31, %28
  %49 = load ptr, ptr %13, align 8, !tbaa !65
  %50 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !64
  %52 = load ptr, ptr %49, align 8, !tbaa !38
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %51), !prof !129
  store ptr %20, ptr %50, align 8, !tbaa !64
  store i32 %12, ptr %6, align 8, !tbaa !63
  br label %55

55:                                               ; preds = %2, %48
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { noreturn }
attributes #13 = { noreturn nounwind }
attributes #14 = { builtin nounwind }

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
!35 = !{ptr @_ZN11xercesc_2_716RefArrayVectorOfItED0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 188746}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"vtable pointer", !40, i64 0}
!40 = !{!"Simple C++ TBAA"}
!41 = !{!42, !48, i64 36}
!42 = !{!"_ZTSN11xercesc_2_710XSWildcardE", !43, i64 0, !48, i64 36, !49, i64 40, !46, i64 48, !46, i64 56}
!43 = !{!"_ZTSN11xercesc_2_78XSObjectE", !44, i64 8, !46, i64 16, !46, i64 24, !47, i64 32}
!44 = !{!"_ZTSN11xercesc_2_711XSConstants14COMPONENT_TYPEE", !45, i64 0}
!45 = !{!"omnipotent char", !40, i64 0}
!46 = !{!"any pointer", !45, i64 0}
!47 = !{!"int", !45, i64 0}
!48 = !{!"_ZTSN11xercesc_2_710XSWildcard20NAMESPACE_CONSTRAINTE", !45, i64 0}
!49 = !{!"_ZTSN11xercesc_2_710XSWildcard16PROCESS_CONTENTSE", !45, i64 0}
!50 = !{!42, !49, i64 40}
!51 = !{!42, !46, i64 48}
!52 = !{!42, !46, i64 56}
!53 = !{!54, !57, i64 12}
!54 = !{!"_ZTSN11xercesc_2_79XMLAttDefE", !55, i64 0, !56, i64 8, !57, i64 12, !58, i64 16, !59, i64 20, !59, i64 21, !47, i64 24, !46, i64 32, !46, i64 40, !46, i64 48}
!55 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!56 = !{!"_ZTSN11xercesc_2_79XMLAttDef11DefAttTypesE", !45, i64 0}
!57 = !{!"_ZTSN11xercesc_2_79XMLAttDef8AttTypesE", !45, i64 0}
!58 = !{!"_ZTSN11xercesc_2_79XMLAttDef13CreateReasonsE", !45, i64 0}
!59 = !{!"bool", !45, i64 0}
!60 = !{!61, !59, i64 8}
!61 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfItEE", !59, i64 8, !47, i64 12, !47, i64 16, !46, i64 24, !46, i64 32}
!62 = !{!61, !47, i64 12}
!63 = !{!61, !47, i64 16}
!64 = !{!61, !46, i64 24}
!65 = !{!61, !46, i64 32}
!66 = !{!46, !46, i64 0}
!67 = !{!43, !46, i64 16}
!68 = !{!69, !46, i64 248}
!69 = !{!"_ZTSN11xercesc_2_77XSModelE", !46, i64 0, !46, i64 8, !46, i64 16, !45, i64 24, !45, i64 136, !46, i64 248, !46, i64 256, !46, i64 264, !46, i64 272, !46, i64 280, !46, i64 288, !59, i64 296, !59, i64 297}
!70 = !{!71, !46, i64 72}
!71 = !{!"_ZTSN11xercesc_2_712SchemaAttDefE", !54, i64 0, !47, i64 56, !72, i64 60, !73, i64 64, !74, i64 68, !46, i64 72, !46, i64 80, !46, i64 88, !46, i64 96, !46, i64 104, !46, i64 112}
!72 = !{!"_ZTSN11xercesc_2_78PSVIDefs8ValidityE", !45, i64 0}
!73 = !{!"_ZTSN11xercesc_2_78PSVIDefs10ValidationE", !45, i64 0}
!74 = !{!"_ZTSN11xercesc_2_78PSVIDefs9PSVIScopeE", !45, i64 0}
!75 = !{!76, !47, i64 20}
!76 = !{!"_ZTSN11xercesc_2_75QNameE", !55, i64 0, !47, i64 8, !47, i64 12, !47, i64 16, !47, i64 20, !46, i64 24, !46, i64 32, !46, i64 40, !46, i64 48}
!77 = !{!78, !78, i64 0}
!78 = !{!"short", !45, i64 0}
!79 = distinct !{!79, !80, !81}
!80 = !{!"llvm.loop.mustprogress"}
!81 = !{!"llvm.loop.unroll.disable"}
!82 = !{!71, !46, i64 104}
!83 = !{!84, !47, i64 4}
!84 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIjEE", !59, i64 0, !47, i64 4, !47, i64 8, !46, i64 16, !46, i64 24}
!85 = distinct !{!85, !80, !81}
!86 = !{!47, !47, i64 0}
!87 = distinct !{!87, !80, !81}
!88 = !{!54, !56, i64 8}
!89 = !{!"function_entry_count", i64 832914}
!90 = !{!"branch_weights", i32 832914, i32 0}
!91 = !{!84, !46, i64 24}
!92 = !{!84, !46, i64 16}
!93 = !{!94, !95, i64 48}
!94 = !{!"_ZTSN11xercesc_2_715ContentSpecNodeE", !55, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !46, i64 32, !46, i64 40, !95, i64 48, !59, i64 52, !59, i64 53, !47, i64 56, !47, i64 60}
!95 = !{!"_ZTSN11xercesc_2_715ContentSpecNode9NodeTypesE", !45, i64 0}
!96 = !{!94, !46, i64 32}
!97 = !{!94, !46, i64 16}
!98 = !{!94, !46, i64 40}
!99 = !{!43, !46, i64 24}
!100 = !{i8 0, i8 2}
!101 = !{}
!102 = !{!"branch_weights", i32 6, i32 188740}
!103 = !{!"branch_weights", i32 1, i32 188739}
!104 = !{!"VP", i32 0, i64 188992, i64 -7405368087501025645, i64 188992}
!105 = !{!"branch_weights", i32 253, i32 188739}
!106 = distinct !{!106, !80, !81}
!107 = !{!"VP", i32 0, i64 188746, i64 -7405368087501025645, i64 188746}
!108 = !{!"function_entry_count", i64 188746}
!109 = !{!"function_entry_count", i64 317171}
!110 = !{!"branch_weights", i32 317171, i32 0}
!111 = !{!"branch_weights", i32 0, i32 317171}
!112 = !{!"VP", i32 0, i64 317171, i64 -7405368087501025645, i64 317171}
!113 = distinct !{!113, !80, !81}
!114 = distinct !{!114, !80, !81}
!115 = distinct !{!115, !80, !81}
!116 = distinct !{!116, !80, !81}
!117 = distinct !{!117, !80, !81}
!118 = distinct !{!118, !80, !81}
!119 = !{!120, !46, i64 40}
!120 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !121, i64 8, !46, i64 16, !47, i64 24, !46, i64 32, !46, i64 40}
!121 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !45, i64 0}
!122 = !{!"function_entry_count", i64 188992}
!123 = !{!"branch_weights", i32 9, i32 188983}
!124 = !{!"VP", i32 0, i64 9, i64 8345045103670217670, i64 9}
!125 = !{!"branch_weights", i32 1, i32 143}
!126 = !{!"branch_weights", i32 143, i32 1}
!127 = !{!"branch_weights", i32 143, i32 9329}
!128 = distinct !{!128, !80, !81}
!129 = !{!"VP", i32 0, i64 9, i64 -7405368087501025645, i64 9}
