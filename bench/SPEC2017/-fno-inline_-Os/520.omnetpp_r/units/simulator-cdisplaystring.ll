; ModuleID = 'simulator/cdisplaystring.cc'
source_filename = "simulator/cdisplaystring.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%class.cDisplayString = type { ptr, ptr, ptr, i32, ptr, i8, ptr }
%"struct.cDisplayString::Tag" = type { ptr, i32, [16 x ptr] }
%class.cEnvir = type { ptr, i8, i8, i8, %"class.std::basic_ostream" }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%class.cException = type <{ %"class.std::exception", i32, [4 x i8], %"class.std::__cxx11::basic_string", i8, [7 x i8], %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i32, [4 x i8] }>
%"class.std::exception" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }
%struct._Guard = type { ptr }

$_Z10opp_strdupPKc = comdat any

$_ZN14cDisplayStringaSERKS_ = comdat any

$__clang_call_terminate = comdat any

$_ZN11cSimulation14getActiveEnvirEv = comdat any

$_Z10opp_strcmpPKcS0_ = comdat any

$_Z15opp_nulltoemptyPKc = comdat any

$_ZNK14cDisplayString10isinbufferEPc = comdat any

$_Z11opp_isalnumh = comdat any

$_ZN14cDisplayString3TagC2Ev = comdat any

$_Z10opp_strlenPKc = comdat any

$_ZN10cExceptionD2Ev = comdat any

$_ZN10cExceptionD0Ev = comdat any

$_ZNK10cException4whatEv = comdat any

$_ZNK10cException3dupEv = comdat any

$_ZNK10cException12getErrorCodeEv = comdat any

$_ZN10cException10setMessageEPKc = comdat any

$_ZN10cException14prependMessageEPKc = comdat any

$_ZNK10cException10hasContextEv = comdat any

$_ZNK10cException19getContextClassNameEv = comdat any

$_ZNK10cException18getContextFullPathEv = comdat any

$_ZNK10cException11getModuleIDEv = comdat any

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt15__new_allocatorIcED2Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

$_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev = comdat any

$_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$_ZTS13cRuntimeError = comdat any

$_ZTS10cException = comdat any

$_ZTI10cException = comdat any

$_ZTI13cRuntimeError = comdat any

$_ZTV10cException = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"Error adding a new display string tag: tag name is empty\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS13cRuntimeError = linkonce_odr dso_local constant [16 x i8] c"13cRuntimeError\00", comdat, align 1
@_ZTS10cException = linkonce_odr dso_local constant [13 x i8] c"10cException\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTI10cException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS10cException, ptr @_ZTISt9exception }, comdat, align 8
@_ZTI13cRuntimeError = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13cRuntimeError, ptr @_ZTI10cException }, comdat, align 8
@.str.3 = private unnamed_addr constant [80 x i8] c"Error adding a new display string tag: tag name \22%s\22 contains invalid character\00", align 1
@.str.4 = private unnamed_addr constant [84 x i8] c"Error parsing display string: too many parameters for a tag, max %d allowed in \22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"Error parsing display string: missing tag name in \22%s\22\00", align 1
@.str.6 = private unnamed_addr constant [80 x i8] c"Error parsing display string: tag name \22%s\22 contains invalid character in  \22%s\22\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"tags[%d]:\22%s\22=\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"\22%s\22\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c" ==> \22%s\22\0A\00", align 1
@_ZN11cSimulation5evPtrE = external local_unnamed_addr global ptr, align 8
@_ZTV10cException = linkonce_odr dso_local unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTI10cException, ptr @_ZN10cExceptionD2Ev, ptr @_ZN10cExceptionD0Ev, ptr @_ZNK10cException4whatEv, ptr @_ZNK10cException3dupEv, ptr @_ZNK10cException12getErrorCodeEv, ptr @_ZN10cException10setMessageEPKc, ptr @_ZN10cException14prependMessageEPKc, ptr @_ZNK10cException10hasContextEv, ptr @_ZNK10cException19getContextClassNameEv, ptr @_ZNK10cException18getContextFullPathEv, ptr @_ZNK10cException11getModuleIDEv] }, comdat, align 8
@.str.14 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.16 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_cdisplaystring.cc, ptr null }]

@_ZN14cDisplayStringC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN14cDisplayStringC2Ev
@_ZN14cDisplayStringC1EPKc = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN14cDisplayStringC2EPKc
@_ZN14cDisplayStringC1ERKS_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN14cDisplayStringC2ERKS_
@_ZN14cDisplayStringD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN14cDisplayStringD2Ev

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit) #24
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #25
  ret void
}

; Function Attrs: optsize
declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN14cDisplayStringC2Ev(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(56) %0) unnamed_addr #4 align 2 !prof !62 {
  %2 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 4
  store ptr null, ptr %2, align 8, !tbaa !63
  %3 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 5
  store i8 0, ptr %3, align 8, !tbaa !70
  %4 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 6
  store ptr null, ptr %4, align 8, !tbaa !71
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %0, i8 0, i64 28, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14cDisplayStringC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #5 align 2 !prof !62 {
  %3 = tail call noundef ptr @_Z10opp_strdupPKc(ptr noundef %1) #24
  %4 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 4
  store ptr %3, ptr %4, align 8, !tbaa !63
  %5 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 5
  store i8 0, ptr %5, align 8, !tbaa !70
  %6 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 6
  store ptr null, ptr %6, align 8, !tbaa !71
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %0, i8 0, i64 28, i1 false)
  tail call void @_ZN14cDisplayString5parseEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #24
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_Z10opp_strdupPKc(ptr noundef %0) local_unnamed_addr #5 comdat !prof !72 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3, !prof !73

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1, !tbaa !74
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %11, label %6, !prof !75

6:                                                ; preds = %3
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #26
  %8 = add i64 %7, 1
  %9 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %8) #27
  %10 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %0) #28
  br label %11

11:                                               ; preds = %1, %3, %6
  %12 = phi ptr [ %9, %6 ], [ null, %3 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14cDisplayString5parseEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  tail call void @_ZN14cDisplayString9cleartagsEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #24
  %2 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = icmp eq ptr %3, null
  br i1 %4, label %158, label %5

5:                                                ; preds = %1
  %6 = tail call noundef i32 @_Z10opp_strlenPKc(ptr noundef nonnull %3) #24
  %7 = add nsw i32 %6, 1
  %8 = sext i32 %7 to i64
  %9 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %8) #27
  store ptr %9, ptr %0, align 8, !tbaa !76
  %10 = load ptr, ptr %2, align 8, !tbaa !63
  %11 = tail call noundef i32 @_Z10opp_strlenPKc(ptr noundef %10) #24
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, ptr %9, i64 %12
  %14 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !77
  %15 = load ptr, ptr %2, align 8, !tbaa !63
  br label %16

16:                                               ; preds = %30, %5
  %17 = phi i32 [ 1, %5 ], [ %31, %30 ]
  %18 = phi ptr [ %15, %5 ], [ %32, %30 ]
  %19 = load i8, ptr %18, align 1, !tbaa !74
  switch i8 %19, label %30 [
    i8 0, label %20
    i8 59, label %28
  ]

20:                                               ; preds = %16
  %21 = sext i32 %17 to i64
  %22 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %21, i64 144)
  %23 = extractvalue { i64, i1 } %22, 1
  %24 = extractvalue { i64, i1 } %22, 0
  %25 = select i1 %23, i64 -1, i64 %24
  %26 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %25) #27
  %27 = icmp eq i32 %17, 0
  br i1 %27, label %39, label %33

28:                                               ; preds = %16
  %29 = add nsw i32 %17, 1
  br label %30

30:                                               ; preds = %16, %28
  %31 = phi i32 [ %29, %28 ], [ %17, %16 ]
  %32 = getelementptr inbounds i8, ptr %18, i64 1
  br label %16, !llvm.loop !78

33:                                               ; preds = %20
  %34 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %26, i64 %21
  br label %35

35:                                               ; preds = %35, %33
  %36 = phi ptr [ %26, %33 ], [ %37, %35 ]
  tail call void @_ZN14cDisplayString3TagC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %36) #24
  %37 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %36, i64 1
  %38 = icmp eq ptr %37, %34
  br i1 %38, label %39, label %35

39:                                               ; preds = %35, %20
  %40 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 2
  store ptr %26, ptr %40, align 8, !tbaa !80
  %41 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 3
  store i32 1, ptr %41, align 8, !tbaa !81
  %42 = load ptr, ptr %0, align 8, !tbaa !76
  store ptr %42, ptr %26, align 8, !tbaa !82
  %43 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %26, i64 0, i32 1
  store i32 0, ptr %43, align 8, !tbaa !84
  br label %47

44:                                               ; preds = %47
  %45 = load ptr, ptr %2, align 8, !tbaa !63
  %46 = load ptr, ptr %0, align 8, !tbaa !76
  br label %53

47:                                               ; preds = %39, %47
  %48 = phi i64 [ 0, %39 ], [ %51, %47 ]
  %49 = load ptr, ptr %40, align 8, !tbaa !80
  %50 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %49, i64 0, i32 2, i64 %48
  store ptr null, ptr %50, align 8, !tbaa !85
  %51 = add nuw nsw i64 %48, 1
  %52 = icmp eq i64 %51, 16
  br i1 %52, label %44, label %47, !llvm.loop !86

53:                                               ; preds = %106, %44
  %54 = phi ptr [ %45, %44 ], [ %108, %106 ]
  %55 = phi ptr [ %46, %44 ], [ %109, %106 ]
  %56 = load i8, ptr %54, align 1, !tbaa !74
  switch i8 %56, label %105 [
    i8 0, label %110
    i8 92, label %57
    i8 59, label %62
    i8 61, label %78
    i8 44, label %86
  ]

57:                                               ; preds = %53
  %58 = getelementptr inbounds i8, ptr %54, i64 1
  %59 = load i8, ptr %58, align 1, !tbaa !74
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %105, label %61

61:                                               ; preds = %57
  store i8 %59, ptr %55, align 1, !tbaa !74
  br label %106

62:                                               ; preds = %53
  store i8 0, ptr %55, align 1, !tbaa !74
  %63 = load i32, ptr %41, align 8, !tbaa !81
  %64 = add nsw i32 %63, 1
  store i32 %64, ptr %41, align 8, !tbaa !81
  %65 = getelementptr inbounds i8, ptr %55, i64 1
  %66 = load ptr, ptr %40, align 8, !tbaa !80
  %67 = sext i32 %63 to i64
  %68 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %66, i64 %67
  store ptr %65, ptr %68, align 8, !tbaa !82
  %69 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %66, i64 %67, i32 1
  store i32 0, ptr %69, align 8, !tbaa !84
  %70 = sext i32 %64 to i64
  br label %71

71:                                               ; preds = %62, %71
  %72 = phi i64 [ 0, %62 ], [ %76, %71 ]
  %73 = load ptr, ptr %40, align 8, !tbaa !80
  %74 = getelementptr %"struct.cDisplayString::Tag", ptr %73, i64 %70
  %75 = getelementptr %"struct.cDisplayString::Tag", ptr %74, i64 -1, i32 2, i64 %72
  store ptr null, ptr %75, align 8, !tbaa !85
  %76 = add nuw nsw i64 %72, 1
  %77 = icmp eq i64 %76, 16
  br i1 %77, label %106, label %71, !llvm.loop !87

78:                                               ; preds = %53
  store i8 0, ptr %55, align 1, !tbaa !74
  %79 = load ptr, ptr %40, align 8, !tbaa !80
  %80 = load i32, ptr %41, align 8, !tbaa !81
  %81 = sext i32 %80 to i64
  %82 = getelementptr %"struct.cDisplayString::Tag", ptr %79, i64 %81
  %83 = getelementptr %"struct.cDisplayString::Tag", ptr %82, i64 -1, i32 1
  store i32 1, ptr %83, align 8, !tbaa !84
  %84 = getelementptr inbounds i8, ptr %55, i64 1
  %85 = getelementptr %"struct.cDisplayString::Tag", ptr %82, i64 -1, i32 2
  store ptr %84, ptr %85, align 8, !tbaa !85
  br label %106

86:                                               ; preds = %53
  store i8 0, ptr %55, align 1, !tbaa !74
  %87 = load ptr, ptr %40, align 8, !tbaa !80
  %88 = load i32, ptr %41, align 8, !tbaa !81
  %89 = sext i32 %88 to i64
  %90 = getelementptr %"struct.cDisplayString::Tag", ptr %87, i64 %89
  %91 = getelementptr %"struct.cDisplayString::Tag", ptr %90, i64 -1, i32 1
  %92 = load i32, ptr %91, align 8, !tbaa !84
  %93 = icmp sgt i32 %92, 15
  br i1 %93, label %94, label %100

94:                                               ; preds = %86
  %95 = tail call ptr @__cxa_allocate_exception(i64 128) #25
  %96 = load ptr, ptr %2, align 8, !tbaa !63
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %95, ptr noundef nonnull @.str.4, i32 noundef 16, ptr noundef %96) #24
          to label %97 unwind label %98

97:                                               ; preds = %94
  tail call void @__cxa_throw(ptr nonnull %95, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #29
  unreachable

98:                                               ; preds = %94
  %99 = landingpad { ptr, i32 }
          cleanup
  br label %159

100:                                              ; preds = %86
  %101 = add nsw i32 %92, 1
  store i32 %101, ptr %91, align 8, !tbaa !84
  %102 = getelementptr inbounds i8, ptr %55, i64 1
  %103 = sext i32 %92 to i64
  %104 = getelementptr %"struct.cDisplayString::Tag", ptr %90, i64 -1, i32 2, i64 %103
  store ptr %102, ptr %104, align 8, !tbaa !85
  br label %106

105:                                              ; preds = %53, %57
  store i8 %56, ptr %55, align 1, !tbaa !74
  br label %106

106:                                              ; preds = %71, %61, %78, %105, %100
  %107 = phi ptr [ %58, %61 ], [ %54, %78 ], [ %54, %100 ], [ %54, %105 ], [ %54, %71 ]
  %108 = getelementptr inbounds i8, ptr %107, i64 1
  %109 = getelementptr inbounds i8, ptr %55, i64 1
  br label %53, !llvm.loop !88

110:                                              ; preds = %53
  store i8 0, ptr %55, align 1, !tbaa !74
  %111 = load i32, ptr %41, align 8, !tbaa !81
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %158

113:                                              ; preds = %110, %133
  %114 = phi i32 [ %134, %133 ], [ %111, %110 ]
  %115 = phi i64 [ %135, %133 ], [ 0, %110 ]
  %116 = load ptr, ptr %40, align 8, !tbaa !80
  %117 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %116, i64 %115
  %118 = load ptr, ptr %117, align 8, !tbaa !82
  %119 = load i8, ptr %118, align 1, !tbaa !74
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %121, label %138

121:                                              ; preds = %113
  %122 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %116, i64 %115, i32 1
  %123 = load i32, ptr %122, align 8, !tbaa !84
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %133, label %125

125:                                              ; preds = %121
  %126 = tail call ptr @__cxa_allocate_exception(i64 128) #25
  %127 = load ptr, ptr %2, align 8, !tbaa !63
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %126, ptr noundef nonnull @.str.5, ptr noundef %127) #24
          to label %128 unwind label %129

128:                                              ; preds = %125
  tail call void @__cxa_throw(ptr nonnull %126, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #29
  unreachable

129:                                              ; preds = %125
  %130 = landingpad { ptr, i32 }
          cleanup
  br label %159

131:                                              ; preds = %154
  %132 = load i32, ptr %41, align 8, !tbaa !81
  br label %133

133:                                              ; preds = %121, %131
  %134 = phi i32 [ %132, %131 ], [ %114, %121 ]
  %135 = add nuw nsw i64 %115, 1
  %136 = sext i32 %134 to i64
  %137 = icmp slt i64 %135, %136
  br i1 %137, label %113, label %158, !llvm.loop !89

138:                                              ; preds = %113, %154
  %139 = phi i8 [ %156, %154 ], [ %119, %113 ]
  %140 = phi ptr [ %155, %154 ], [ %118, %113 ]
  %141 = tail call noundef zeroext i1 @_Z11opp_isalnumh(i8 noundef zeroext %139) #24
  br i1 %141, label %154, label %142

142:                                              ; preds = %138
  %143 = load i8, ptr %140, align 1, !tbaa !74
  %144 = icmp eq i8 %143, 58
  br i1 %144, label %154, label %145

145:                                              ; preds = %142
  %146 = tail call ptr @__cxa_allocate_exception(i64 128) #25
  %147 = load ptr, ptr %40, align 8, !tbaa !80
  %148 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %147, i64 %115
  %149 = load ptr, ptr %148, align 8, !tbaa !82
  %150 = load ptr, ptr %2, align 8, !tbaa !63
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %146, ptr noundef nonnull @.str.6, ptr noundef %149, ptr noundef %150) #24
          to label %151 unwind label %152

151:                                              ; preds = %145
  tail call void @__cxa_throw(ptr nonnull %146, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #29
  unreachable

152:                                              ; preds = %145
  %153 = landingpad { ptr, i32 }
          cleanup
  br label %159

154:                                              ; preds = %138, %142
  %155 = getelementptr inbounds i8, ptr %140, i64 1
  %156 = load i8, ptr %155, align 1, !tbaa !74
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %131, label %138, !llvm.loop !90

158:                                              ; preds = %133, %110, %1
  ret void

159:                                              ; preds = %129, %152, %98
  %160 = phi ptr [ %126, %129 ], [ %146, %152 ], [ %95, %98 ]
  %161 = phi { ptr, i32 } [ %130, %129 ], [ %153, %152 ], [ %99, %98 ]
  tail call void @__cxa_free_exception(ptr %160) #25
  resume { ptr, i32 } %161
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14cDisplayStringC2ERKS_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #5 align 2 !prof !62 {
  %3 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 4
  store ptr null, ptr %3, align 8, !tbaa !63
  %4 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 5
  store i8 0, ptr %4, align 8, !tbaa !70
  %5 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 6
  store ptr null, ptr %5, align 8, !tbaa !71
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %0, i8 0, i64 28, i1 false)
  %6 = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN14cDisplayStringaSERKS_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) #24
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN14cDisplayStringaSERKS_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #5 comdat align 2 !prof !62 {
  %3 = tail call noundef ptr @_ZNK14cDisplayString3strEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #24
  tail call void @_ZN14cDisplayString5parseEPKc(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %3) #24
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN14cDisplayStringD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %2 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZdaPv(ptr noundef nonnull %3) #30
  br label %6

6:                                                ; preds = %5, %1
  tail call void @_ZN14cDisplayString9cleartagsEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #24
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN14cDisplayString9cleartagsEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #6 align 2 !prof !62 {
  %2 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !81
  %4 = icmp sgt i32 %3, 0
  %5 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !80
  br i1 %4, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 2
  %9 = icmp eq ptr %6, null
  br i1 %9, label %59, label %56

10:                                               ; preds = %1, %28
  %11 = phi ptr [ %29, %28 ], [ %6, %1 ]
  %12 = phi i64 [ %30, %28 ], [ 0, %1 ]
  %13 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %11, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !82
  %15 = tail call noundef zeroext i1 @_ZNK14cDisplayString10isinbufferEPc(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %14) #24
  %16 = load ptr, ptr %5, align 8, !tbaa !80
  br i1 %15, label %23, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %16, i64 %12
  %19 = load ptr, ptr %18, align 8, !tbaa !82
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  tail call void @_ZdaPv(ptr noundef nonnull %19) #30
  %22 = load ptr, ptr %5, align 8, !tbaa !80
  br label %23

23:                                               ; preds = %17, %21, %10
  %24 = phi ptr [ %16, %17 ], [ %22, %21 ], [ %16, %10 ]
  %25 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %24, i64 %12, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !84
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %49, %23
  %29 = phi ptr [ %24, %23 ], [ %50, %49 ]
  %30 = add nuw nsw i64 %12, 1
  %31 = load i32, ptr %2, align 8, !tbaa !81
  %32 = sext i32 %31 to i64
  %33 = icmp slt i64 %30, %32
  br i1 %33, label %10, label %34, !llvm.loop !91

34:                                               ; preds = %28
  %35 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 2
  br label %56

36:                                               ; preds = %23, %49
  %37 = phi i64 [ %51, %49 ], [ 0, %23 ]
  %38 = phi ptr [ %50, %49 ], [ %24, %23 ]
  %39 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %38, i64 %12, i32 2, i64 %37
  %40 = load ptr, ptr %39, align 8, !tbaa !85
  %41 = tail call noundef zeroext i1 @_ZNK14cDisplayString10isinbufferEPc(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %40) #24
  %42 = load ptr, ptr %5, align 8, !tbaa !80
  br i1 %41, label %49, label %43

43:                                               ; preds = %36
  %44 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %42, i64 %12, i32 2, i64 %37
  %45 = load ptr, ptr %44, align 8, !tbaa !85
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  tail call void @_ZdaPv(ptr noundef nonnull %45) #30
  %48 = load ptr, ptr %5, align 8, !tbaa !80
  br label %49

49:                                               ; preds = %36, %47, %43
  %50 = phi ptr [ %42, %36 ], [ %48, %47 ], [ %42, %43 ]
  %51 = add nuw nsw i64 %37, 1
  %52 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %50, i64 %12, i32 1
  %53 = load i32, ptr %52, align 8, !tbaa !84
  %54 = sext i32 %53 to i64
  %55 = icmp slt i64 %51, %54
  br i1 %55, label %36, label %28, !llvm.loop !92

56:                                               ; preds = %34, %7
  %57 = phi ptr [ %35, %34 ], [ %8, %7 ]
  %58 = phi ptr [ %29, %34 ], [ %6, %7 ]
  tail call void @_ZdaPv(ptr noundef nonnull %58) #30
  br label %59

59:                                               ; preds = %56, %7
  %60 = phi ptr [ %57, %56 ], [ %8, %7 ]
  store ptr null, ptr %60, align 8, !tbaa !80
  store i32 0, ptr %2, align 8, !tbaa !81
  %61 = load ptr, ptr %0, align 8, !tbaa !76
  %62 = icmp eq ptr %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  tail call void @_ZdaPv(ptr noundef nonnull %61) #30
  br label %64

64:                                               ; preds = %63, %59
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #25
  tail call void @_ZSt9terminatev() #31
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14cDisplayString6notifyEv(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #5 align 2 !prof !62 {
  %2 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 5
  store i8 1, ptr %2, align 8, !tbaa !70
  %3 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #24
  %4 = getelementptr inbounds %class.cEnvir, ptr %3, i64 0, i32 2
  %5 = load i8, ptr %4, align 1, !tbaa !93, !range !96, !noundef !97
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #24
  %9 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !71
  %11 = load ptr, ptr %8, align 8, !tbaa !98
  %12 = getelementptr inbounds ptr, ptr %11, i64 25
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(288) %8, ptr noundef %10) #24
  br label %14

14:                                               ; preds = %1, %7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11cSimulation14getActiveEnvirEv() local_unnamed_addr #6 comdat align 2 !prof !100 {
  %1 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !85
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZNK14cDisplayString3strEv(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #5 align 2 !prof !62 {
  %2 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 8, !tbaa !70, !range !96, !noundef !97
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZNK14cDisplayString8assembleEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #24
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !63
  %9 = icmp eq ptr %8, null
  %10 = select i1 %9, ptr @.str, ptr %8
  ret ptr %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK14cDisplayString8assembleEv(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #5 align 2 !prof !62 {
  %2 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !81
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !80
  br label %18

8:                                                ; preds = %31
  %9 = shl nsw i32 %33, 1
  %10 = or disjoint i32 %9, 1
  %11 = sext i32 %10 to i64
  br label %12

12:                                               ; preds = %8, %1
  %13 = phi i32 [ %3, %1 ], [ %35, %8 ]
  %14 = phi i64 [ 1, %1 ], [ %11, %8 ]
  %15 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !63
  %17 = icmp eq ptr %16, null
  br i1 %17, label %55, label %53

18:                                               ; preds = %5, %31
  %19 = phi ptr [ %7, %5 ], [ %32, %31 ]
  %20 = phi i64 [ 0, %5 ], [ %34, %31 ]
  %21 = phi i32 [ 0, %5 ], [ %33, %31 ]
  %22 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %19, i64 %20
  %23 = load ptr, ptr %22, align 8, !tbaa !82
  %24 = tail call noundef i32 @_Z10opp_strlenPKc(ptr noundef %23) #24
  %25 = add i32 %21, 2
  %26 = add i32 %25, %24
  %27 = load ptr, ptr %6, align 8, !tbaa !80
  %28 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %27, i64 %20, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !84
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %38, %18
  %32 = phi ptr [ %27, %18 ], [ %48, %38 ]
  %33 = phi i32 [ %26, %18 ], [ %46, %38 ]
  %34 = add nuw nsw i64 %20, 1
  %35 = load i32, ptr %2, align 8, !tbaa !81
  %36 = sext i32 %35 to i64
  %37 = icmp slt i64 %34, %36
  br i1 %37, label %18, label %8, !llvm.loop !101

38:                                               ; preds = %18, %38
  %39 = phi i64 [ %47, %38 ], [ 0, %18 ]
  %40 = phi ptr [ %48, %38 ], [ %27, %18 ]
  %41 = phi i32 [ %46, %38 ], [ %26, %18 ]
  %42 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %40, i64 %20, i32 2, i64 %39
  %43 = load ptr, ptr %42, align 8, !tbaa !85
  %44 = tail call noundef i32 @_Z10opp_strlenPKc(ptr noundef %43) #24
  %45 = add i32 %41, 1
  %46 = add i32 %45, %44
  %47 = add nuw nsw i64 %39, 1
  %48 = load ptr, ptr %6, align 8, !tbaa !80
  %49 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %48, i64 %20, i32 1
  %50 = load i32, ptr %49, align 8, !tbaa !84
  %51 = sext i32 %50 to i64
  %52 = icmp slt i64 %47, %51
  br i1 %52, label %38, label %31, !llvm.loop !102

53:                                               ; preds = %12
  tail call void @_ZdaPv(ptr noundef nonnull %16) #30
  %54 = load i32, ptr %2, align 8, !tbaa !81
  br label %55

55:                                               ; preds = %53, %12
  %56 = phi i32 [ %54, %53 ], [ %13, %12 ]
  %57 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %14) #27
  store ptr %57, ptr %15, align 8, !tbaa !63
  store i8 0, ptr %57, align 1, !tbaa !74
  %58 = icmp sgt i32 %56, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 2
  br label %63

61:                                               ; preds = %88, %55
  %62 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 5
  store i8 0, ptr %62, align 8, !tbaa !70
  ret void

63:                                               ; preds = %59, %88
  %64 = phi i64 [ 0, %59 ], [ %89, %88 ]
  %65 = icmp eq i64 %64, 0
  %66 = load ptr, ptr %15, align 8, !tbaa !63
  br i1 %65, label %71, label %67

67:                                               ; preds = %63
  %68 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %66)
  %69 = getelementptr inbounds i8, ptr %66, i64 %68
  store i16 59, ptr %69, align 1
  %70 = load ptr, ptr %15, align 8, !tbaa !63
  br label %71

71:                                               ; preds = %67, %63
  %72 = phi ptr [ %70, %67 ], [ %66, %63 ]
  %73 = load ptr, ptr %60, align 8, !tbaa !80
  %74 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %73, i64 %64
  %75 = load ptr, ptr %74, align 8, !tbaa !82
  tail call void @_ZN14cDisplayString13strcatescapedEPcPKc(ptr noundef %72, ptr noundef %75) #24
  %76 = load ptr, ptr %60, align 8, !tbaa !80
  %77 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %76, i64 %64, i32 1
  %78 = load i32, ptr %77, align 8, !tbaa !84
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %71
  %81 = load ptr, ptr %15, align 8, !tbaa !63
  %82 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %81)
  %83 = getelementptr inbounds i8, ptr %81, i64 %82
  store i16 61, ptr %83, align 1
  %84 = load ptr, ptr %60, align 8, !tbaa !80
  %85 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %84, i64 %64, i32 1
  %86 = load i32, ptr %85, align 8, !tbaa !84
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %102, %71, %80
  %89 = add nuw nsw i64 %64, 1
  %90 = load i32, ptr %2, align 8, !tbaa !81
  %91 = sext i32 %90 to i64
  %92 = icmp slt i64 %89, %91
  br i1 %92, label %63, label %61, !llvm.loop !103

93:                                               ; preds = %80, %102
  %94 = phi ptr [ %108, %102 ], [ %84, %80 ]
  %95 = phi i64 [ %107, %102 ], [ 0, %80 ]
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %93
  %98 = load ptr, ptr %15, align 8, !tbaa !63
  %99 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %98)
  %100 = getelementptr inbounds i8, ptr %98, i64 %99
  store i16 44, ptr %100, align 1
  %101 = load ptr, ptr %60, align 8, !tbaa !80
  br label %102

102:                                              ; preds = %97, %93
  %103 = phi ptr [ %101, %97 ], [ %94, %93 ]
  %104 = load ptr, ptr %15, align 8, !tbaa !63
  %105 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %103, i64 %64, i32 2, i64 %95
  %106 = load ptr, ptr %105, align 8, !tbaa !85
  tail call void @_ZN14cDisplayString13strcatescapedEPcPKc(ptr noundef %104, ptr noundef %106) #24
  %107 = add nuw nsw i64 %95, 1
  %108 = load ptr, ptr %60, align 8, !tbaa !80
  %109 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %108, i64 %64, i32 1
  %110 = load i32, ptr %109, align 8, !tbaa !84
  %111 = sext i32 %110 to i64
  %112 = icmp slt i64 %107, %111
  br i1 %112, label %93, label %88, !llvm.loop !104
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14cDisplayString5parseEPKc(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #5 align 2 !prof !62 {
  %3 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 5
  %4 = load i8, ptr %3, align 8, !tbaa !70, !range !96, !noundef !97
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @_ZNK14cDisplayString8assembleEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #24
  br label %7

7:                                                ; preds = %6, %2
  %8 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !63
  %10 = tail call noundef i32 @_Z10opp_strcmpPKcS0_(ptr noundef %9, ptr noundef %1) #24
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %8, align 8, !tbaa !63
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @_ZdaPv(ptr noundef nonnull %13) #30
  br label %16

16:                                               ; preds = %15, %12
  tail call void @_ZN14cDisplayString9cleartagsEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #24
  %17 = tail call noundef ptr @_Z10opp_strdupPKc(ptr noundef %1) #24
  store ptr %17, ptr %8, align 8, !tbaa !63
  tail call void @_ZN14cDisplayString5parseEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #24
  tail call void @_ZN14cDisplayString6notifyEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #24
  br label %18

18:                                               ; preds = %7, %16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_Z10opp_strcmpPKcS0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat !prof !105 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  br i1 %3, label %12, label %5, !prof !106

5:                                                ; preds = %2
  br i1 %4, label %8, label %6, !prof !107

6:                                                ; preds = %5
  %7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #26
  br label %17

8:                                                ; preds = %5
  %9 = load i8, ptr %0, align 1, !tbaa !74
  %10 = icmp ne i8 %9, 0
  %11 = zext i1 %10 to i32
  br label %17

12:                                               ; preds = %2
  br i1 %4, label %17, label %13, !prof !108

13:                                               ; preds = %12
  %14 = load i8, ptr %1, align 1, !tbaa !74
  %15 = icmp ne i8 %14, 0
  %16 = sext i1 %15 to i32
  br label %17

17:                                               ; preds = %12, %13, %6, %8
  %18 = phi i32 [ %7, %6 ], [ %11, %8 ], [ 0, %12 ], [ %16, %13 ]
  ret i32 %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14cDisplayString10updateWithERKS_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %1) local_unnamed_addr #5 align 2 !prof !62 {
  %3 = tail call noundef i32 @_ZNK14cDisplayString10getNumTagsEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #24
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %11, %2
  %6 = tail call noundef ptr @_ZNK14cDisplayString3strEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #24
  tail call void @_ZN14cDisplayString5parseEPKc(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %6) #24
  ret void

7:                                                ; preds = %2, %11
  %8 = phi i32 [ %12, %11 ], [ 0, %2 ]
  %9 = tail call noundef i32 @_ZNK14cDisplayString10getNumArgsEi(ptr noundef nonnull align 8 dereferenceable(56) %1, i32 noundef %8) #24
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %27, %7
  %12 = add nuw nsw i32 %8, 1
  %13 = icmp eq i32 %12, %3
  br i1 %13, label %5, label %7, !llvm.loop !109

14:                                               ; preds = %7, %27
  %15 = phi i32 [ %28, %27 ], [ 0, %7 ]
  %16 = tail call noundef ptr @_ZNK14cDisplayString9getTagArgEii(ptr noundef nonnull align 8 dereferenceable(56) %1, i32 noundef %8, i32 noundef %15) #24
  %17 = load i8, ptr %16, align 1, !tbaa !74
  switch i8 %17, label %22 [
    i8 45, label %18
    i8 0, label %27
  ]

18:                                               ; preds = %14
  %19 = getelementptr inbounds i8, ptr %16, i64 1
  %20 = load i8, ptr %19, align 1, !tbaa !74
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %14, %18
  br label %23

23:                                               ; preds = %18, %22
  %24 = phi ptr [ %16, %22 ], [ @.str, %18 ]
  %25 = tail call noundef ptr @_ZNK14cDisplayString10getTagNameEi(ptr noundef nonnull align 8 dereferenceable(56) %1, i32 noundef %8) #24
  %26 = tail call noundef zeroext i1 @_ZN14cDisplayString9setTagArgEPKciS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %25, i32 noundef %15, ptr noundef nonnull %24) #24
  br label %27

27:                                               ; preds = %23, %14
  %28 = add nuw nsw i32 %15, 1
  %29 = icmp eq i32 %28, %9
  br i1 %29, label %11, label %14, !llvm.loop !110
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK14cDisplayString10getNumTagsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) local_unnamed_addr #10 align 2 !prof !62 {
  %2 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !81
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZNK14cDisplayString10getNumArgsEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #11 align 2 !prof !62 {
  %3 = icmp sgt i32 %1, -1
  %4 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8
  %6 = icmp sgt i32 %5, %1
  %7 = select i1 %3, i1 %6, i1 false
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !80
  %11 = zext nneg i32 %1 to i64
  %12 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %10, i64 %11, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !84
  br label %14

14:                                               ; preds = %2, %8
  %15 = phi i32 [ %13, %8 ], [ -1, %2 ]
  ret i32 %15
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK14cDisplayString9getTagArgEii(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 align 2 !prof !62 {
  %4 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8
  %6 = icmp sle i32 %5, %1
  %7 = or i32 %2, %1
  %8 = icmp slt i32 %7, 0
  %9 = select i1 %8, i1 true, i1 %6
  br i1 %9, label %22, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !80
  %13 = zext nneg i32 %1 to i64
  %14 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %12, i64 %13, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !84
  %16 = icmp sgt i32 %15, %2
  br i1 %16, label %17, label %22

17:                                               ; preds = %10
  %18 = zext nneg i32 %2 to i64
  %19 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %12, i64 %13, i32 2, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !85
  %21 = tail call noundef ptr @_Z15opp_nulltoemptyPKc(ptr noundef %20) #24
  br label %22

22:                                               ; preds = %10, %3, %17
  %23 = phi ptr [ %21, %17 ], [ @.str, %3 ], [ @.str, %10 ]
  ret ptr %23
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN14cDisplayString9setTagArgEPKciS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #5 align 2 !prof !62 {
  %5 = tail call noundef i32 @_ZNK14cDisplayString11gettagindexEPKc(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) #24
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = tail call noundef i32 @_ZN14cDisplayString9insertTagEPKci(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef 0) #24
  br label %9

9:                                                ; preds = %7, %4
  %10 = phi i32 [ %8, %7 ], [ %5, %4 ]
  %11 = tail call noundef zeroext i1 @_ZN14cDisplayString9setTagArgEiiPKc(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %10, i32 noundef %2, ptr noundef %3) #24
  ret i1 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZNK14cDisplayString10getTagNameEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #11 align 2 !prof !62 {
  %3 = icmp sgt i32 %1, -1
  %4 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8
  %6 = icmp sgt i32 %5, %1
  %7 = select i1 %3, i1 %6, i1 false
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !80
  %11 = zext nneg i32 %1 to i64
  %12 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !82
  br label %14

14:                                               ; preds = %2, %8
  %15 = phi ptr [ %13, %8 ], [ null, %2 ]
  ret ptr %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14cDisplayString10updateWithEPKc(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %3 = alloca %class.cDisplayString, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #25
  call void @_ZN14cDisplayStringC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef %1) #24
  invoke void @_ZN14cDisplayString10updateWithERKS_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %3) #24
          to label %4 unwind label %5

4:                                                ; preds = %2
  call void @_ZN14cDisplayStringD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %3) #28
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #25
  ret void

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14cDisplayStringD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %3) #28
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #25
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK14cDisplayString11containsTagEPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr nocapture noundef readonly %1) local_unnamed_addr #12 align 2 !prof !62 {
  %3 = tail call noundef i32 @_ZNK14cDisplayString11gettagindexEPKc(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) #24
  %4 = icmp ne i32 %3, -1
  ret i1 %4
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZNK14cDisplayString11gettagindexEPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr nocapture noundef readonly %1) local_unnamed_addr #12 align 2 !prof !62 {
  %3 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !81
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %21

6:                                                ; preds = %2
  %7 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !80
  %9 = zext nneg i32 %4 to i64
  br label %10

10:                                               ; preds = %6, %16
  %11 = phi i64 [ 0, %6 ], [ %17, %16 ]
  %12 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %8, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !82
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %13) #26
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, %9
  br i1 %18, label %21, label %10, !llvm.loop !111

19:                                               ; preds = %10
  %20 = trunc i64 %11 to i32
  br label %21

21:                                               ; preds = %16, %19, %2
  %22 = phi i32 [ -1, %2 ], [ %20, %19 ], [ -1, %16 ]
  ret i32 %22
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZNK14cDisplayString10getNumArgsEPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr nocapture noundef readonly %1) local_unnamed_addr #12 align 2 !prof !62 {
  %3 = tail call noundef i32 @_ZNK14cDisplayString11gettagindexEPKc(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) #24
  %4 = tail call noundef i32 @_ZNK14cDisplayString10getNumArgsEi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %3) #24
  ret i32 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK14cDisplayString9getTagArgEPKci(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #6 align 2 !prof !62 {
  %4 = tail call noundef i32 @_ZNK14cDisplayString11gettagindexEPKc(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) #24
  %5 = tail call noundef ptr @_ZNK14cDisplayString9getTagArgEii(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %4, i32 noundef %2) #24
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN14cDisplayString9insertTagEPKci(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = load i8, ptr %1, align 1, !tbaa !74
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %5, %3
  %9 = tail call ptr @__cxa_allocate_exception(i64 128) #25
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %9, ptr noundef nonnull @.str.2) #24
          to label %10 unwind label %11

10:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #29
  unreachable

11:                                               ; preds = %8
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %100

13:                                               ; preds = %28
  %14 = tail call noundef i32 @_ZNK14cDisplayString11gettagindexEPKc(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %1) #24
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %32, label %98

16:                                               ; preds = %5, %28
  %17 = phi ptr [ %29, %28 ], [ %1, %5 ]
  %18 = phi i8 [ %30, %28 ], [ %6, %5 ]
  %19 = tail call noundef zeroext i1 @_Z11opp_isalnumh(i8 noundef zeroext %18) #24
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = load i8, ptr %17, align 1, !tbaa !74
  %22 = icmp eq i8 %21, 58
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = tail call ptr @__cxa_allocate_exception(i64 128) #25
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %24, ptr noundef nonnull @.str.3, ptr noundef nonnull %1) #24
          to label %25 unwind label %26

25:                                               ; preds = %23
  tail call void @__cxa_throw(ptr nonnull %24, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #29
  unreachable

26:                                               ; preds = %23
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %100

28:                                               ; preds = %16, %20
  %29 = getelementptr inbounds i8, ptr %17, i64 1
  %30 = load i8, ptr %29, align 1, !tbaa !74
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %13, label %16, !llvm.loop !112

32:                                               ; preds = %13
  %33 = tail call i32 @llvm.smax.i32(i32 %2, i32 0)
  %34 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 3
  %35 = load i32, ptr %34, align 8, !tbaa !81
  %36 = tail call i32 @llvm.smin.i32(i32 %33, i32 %35)
  %37 = add nsw i32 %35, 1
  %38 = sext i32 %37 to i64
  %39 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %38, i64 144)
  %40 = extractvalue { i64, i1 } %39, 1
  %41 = extractvalue { i64, i1 } %39, 0
  %42 = select i1 %40, i64 -1, i64 %41
  %43 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %42) #27
  %44 = icmp eq i32 %37, 0
  br i1 %44, label %58, label %45

45:                                               ; preds = %32
  %46 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %43, i64 %38
  br label %47

47:                                               ; preds = %47, %45
  %48 = phi ptr [ %43, %45 ], [ %49, %47 ]
  tail call void @_ZN14cDisplayString3TagC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %48) #24
  %49 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %48, i64 1
  %50 = icmp eq ptr %49, %46
  br i1 %50, label %51, label %47

51:                                               ; preds = %47
  %52 = load i32, ptr %34, align 8, !tbaa !81
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !80
  %57 = zext nneg i32 %52 to i64
  br label %64

58:                                               ; preds = %32, %51
  %59 = phi i32 [ %52, %51 ], [ -1, %32 ]
  %60 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !80
  %62 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 2
  %63 = icmp eq ptr %61, null
  br i1 %63, label %82, label %78

64:                                               ; preds = %54, %64
  %65 = phi i64 [ 0, %54 ], [ %73, %64 ]
  %66 = phi i32 [ 0, %54 ], [ %74, %64 ]
  %67 = icmp eq i32 %66, %36
  %68 = zext i1 %67 to i32
  %69 = add nsw i32 %66, %68
  %70 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %56, i64 %65
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %43, i64 %71
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %72, ptr noundef nonnull align 8 dereferenceable(144) %70, i64 144, i1 false), !tbaa.struct !113
  %73 = add nuw nsw i64 %65, 1
  %74 = add nsw i32 %69, 1
  %75 = icmp eq i64 %73, %57
  br i1 %75, label %76, label %64, !llvm.loop !115

76:                                               ; preds = %64
  %77 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 2
  br label %78

78:                                               ; preds = %76, %58
  %79 = phi ptr [ %77, %76 ], [ %62, %58 ]
  %80 = phi ptr [ %56, %76 ], [ %61, %58 ]
  tail call void @_ZdaPv(ptr noundef nonnull %80) #30
  %81 = load i32, ptr %34, align 8, !tbaa !81
  br label %82

82:                                               ; preds = %78, %58
  %83 = phi ptr [ %79, %78 ], [ %62, %58 ]
  %84 = phi i32 [ %81, %78 ], [ %59, %58 ]
  store ptr %43, ptr %83, align 8, !tbaa !80
  %85 = add nsw i32 %84, 1
  store i32 %85, ptr %34, align 8, !tbaa !81
  %86 = tail call noundef ptr @_Z10opp_strdupPKc(ptr noundef nonnull %1) #24
  %87 = load ptr, ptr %83, align 8, !tbaa !80
  %88 = sext i32 %36 to i64
  %89 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %87, i64 %88
  store ptr %86, ptr %89, align 8, !tbaa !82
  %90 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %87, i64 %88, i32 1
  store i32 0, ptr %90, align 8, !tbaa !84
  br label %92

91:                                               ; preds = %92
  tail call void @_ZN14cDisplayString6notifyEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #24
  br label %98

92:                                               ; preds = %82, %92
  %93 = phi i64 [ 0, %82 ], [ %96, %92 ]
  %94 = load ptr, ptr %83, align 8, !tbaa !80
  %95 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %94, i64 %88, i32 2, i64 %93
  store ptr null, ptr %95, align 8, !tbaa !85
  %96 = add nuw nsw i64 %93, 1
  %97 = icmp eq i64 %96, 16
  br i1 %97, label %91, label %92, !llvm.loop !116

98:                                               ; preds = %13, %91
  %99 = phi i32 [ %36, %91 ], [ %14, %13 ]
  ret i32 %99

100:                                              ; preds = %26, %11
  %101 = phi ptr [ %24, %26 ], [ %9, %11 ]
  %102 = phi { ptr, i32 } [ %27, %26 ], [ %12, %11 ]
  tail call void @__cxa_free_exception(ptr %101) #25
  resume { ptr, i32 } %102
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN14cDisplayString9setTagArgEiiPKc(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #5 align 2 !prof !62 {
  %5 = icmp slt i32 %1, 0
  %6 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8
  %8 = icmp sle i32 %7, %1
  %9 = select i1 %5, i1 true, i1 %8
  %10 = icmp ugt i32 %2, 15
  %11 = or i1 %10, %9
  br i1 %11, label %57, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !80
  %15 = zext nneg i32 %1 to i64
  %16 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %14, i64 %15, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !84
  %18 = icmp sgt i32 %17, %2
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  %20 = add nuw nsw i32 %2, 1
  store i32 %20, ptr %16, align 8, !tbaa !84
  br label %21

21:                                               ; preds = %19, %12
  %22 = zext nneg i32 %2 to i64
  %23 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %14, i64 %15, i32 2, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !85
  %25 = tail call noundef i32 @_Z10opp_strcmpPKcS0_(ptr noundef %24, ptr noundef %3) #24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %57, label %27

27:                                               ; preds = %21
  %28 = load ptr, ptr %23, align 8, !tbaa !85
  %29 = icmp eq ptr %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = tail call noundef zeroext i1 @_ZNK14cDisplayString10isinbufferEPc(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %28) #24
  br i1 %31, label %36, label %32

32:                                               ; preds = %30
  %33 = load ptr, ptr %23, align 8, !tbaa !85
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  tail call void @_ZdaPv(ptr noundef nonnull %33) #30
  br label %36

36:                                               ; preds = %32, %35, %30, %27
  %37 = tail call noundef ptr @_Z10opp_strdupPKc(ptr noundef %3) #24
  store ptr %37, ptr %23, align 8, !tbaa !85
  %38 = load i32, ptr %16, align 8, !tbaa !84
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %36
  %41 = zext nneg i32 %38 to i64
  br label %42

42:                                               ; preds = %40, %48
  %43 = phi i64 [ %41, %40 ], [ %44, %48 ]
  %44 = add nsw i64 %43, -1
  %45 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %14, i64 %15, i32 2, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !85
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %42
  %49 = trunc i64 %44 to i32
  store i32 %49, ptr %16, align 8, !tbaa !84
  %50 = icmp ugt i64 %43, 1
  br i1 %50, label %42, label %51, !llvm.loop !117

51:                                               ; preds = %48, %36
  %52 = phi i32 [ %38, %36 ], [ %49, %48 ]
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = tail call noundef zeroext i1 @_ZN14cDisplayString9removeTagEi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) #24
  br label %56

56:                                               ; preds = %42, %54, %51
  tail call void @_ZN14cDisplayString6notifyEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #24
  br label %57

57:                                               ; preds = %56, %21, %4
  %58 = xor i1 %11, true
  ret i1 %58
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN14cDisplayString9setTagArgEPKcil(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #5 align 2 !prof !62 {
  %5 = alloca [32 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #25
  %6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.1, i64 noundef %3) #28
  %7 = call noundef zeroext i1 @_ZN14cDisplayString9setTagArgEPKciS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #25
  ret i1 %7
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN14cDisplayString9removeTagEPKc(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 align 2 !prof !62 {
  %3 = tail call noundef i32 @_ZNK14cDisplayString11gettagindexEPKc(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) #24
  %4 = tail call noundef zeroext i1 @_ZN14cDisplayString9removeTagEi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %3) #24
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN14cDisplayString9removeTagEi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #5 align 2 !prof !62 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %63, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !81
  %7 = icmp sgt i32 %6, %1
  br i1 %7, label %8, label %63

8:                                                ; preds = %4
  %9 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !80
  %11 = zext nneg i32 %1 to i64
  %12 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !82
  %14 = tail call noundef zeroext i1 @_ZNK14cDisplayString10isinbufferEPc(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %13) #24
  %15 = load ptr, ptr %9, align 8, !tbaa !80
  br i1 %14, label %22, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %15, i64 %11
  %18 = load ptr, ptr %17, align 8, !tbaa !82
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  tail call void @_ZdaPv(ptr noundef nonnull %18) #30
  %21 = load ptr, ptr %9, align 8, !tbaa !80
  br label %22

22:                                               ; preds = %16, %20, %8
  %23 = phi ptr [ %15, %16 ], [ %21, %20 ], [ %15, %8 ]
  %24 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %23, i64 %11, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !84
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %44, %22
  %28 = load i32, ptr %5, align 8, !tbaa !81
  %29 = add nsw i32 %28, -1
  %30 = icmp sgt i32 %29, %1
  br i1 %30, label %53, label %51

31:                                               ; preds = %22, %44
  %32 = phi i64 [ %46, %44 ], [ 0, %22 ]
  %33 = phi ptr [ %45, %44 ], [ %23, %22 ]
  %34 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %33, i64 %11, i32 2, i64 %32
  %35 = load ptr, ptr %34, align 8, !tbaa !85
  %36 = tail call noundef zeroext i1 @_ZNK14cDisplayString10isinbufferEPc(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %35) #24
  %37 = load ptr, ptr %9, align 8, !tbaa !80
  br i1 %36, label %44, label %38

38:                                               ; preds = %31
  %39 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %37, i64 %11, i32 2, i64 %32
  %40 = load ptr, ptr %39, align 8, !tbaa !85
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  tail call void @_ZdaPv(ptr noundef nonnull %40) #30
  %43 = load ptr, ptr %9, align 8, !tbaa !80
  br label %44

44:                                               ; preds = %31, %42, %38
  %45 = phi ptr [ %37, %31 ], [ %43, %42 ], [ %37, %38 ]
  %46 = add nuw nsw i64 %32, 1
  %47 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %45, i64 %11, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !84
  %49 = sext i32 %48 to i64
  %50 = icmp slt i64 %46, %49
  br i1 %50, label %31, label %27, !llvm.loop !118

51:                                               ; preds = %53, %27
  %52 = phi i32 [ %29, %27 ], [ %60, %53 ]
  store i32 %52, ptr %5, align 8, !tbaa !81
  tail call void @_ZN14cDisplayString6notifyEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #24
  br label %63

53:                                               ; preds = %27, %53
  %54 = phi i64 [ %56, %53 ], [ %11, %27 ]
  %55 = load ptr, ptr %9, align 8, !tbaa !80
  %56 = add nuw nsw i64 %54, 1
  %57 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %55, i64 %56
  %58 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %55, i64 %54
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %58, ptr noundef nonnull align 8 dereferenceable(144) %57, i64 144, i1 false), !tbaa.struct !113
  %59 = load i32, ptr %5, align 8, !tbaa !81
  %60 = add nsw i32 %59, -1
  %61 = trunc i64 %56 to i32
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %53, label %51, !llvm.loop !119

63:                                               ; preds = %2, %4, %51
  %64 = phi i1 [ true, %51 ], [ false, %4 ], [ false, %2 ]
  ret i1 %64
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_Z15opp_nulltoemptyPKc(ptr noundef %0) local_unnamed_addr #6 comdat !prof !120 {
  %2 = icmp eq ptr %0, null
  %3 = select i1 %2, ptr @.str, ptr %0, !prof !121
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK14cDisplayString10isinbufferEPc(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !62 {
  %3 = load ptr, ptr %0, align 8, !tbaa !76
  %4 = icmp ule ptr %3, %1
  %5 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = icmp uge ptr %6, %1
  %8 = select i1 %4, i1 %7, i1 false
  ret i1 %8
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ...) unnamed_addr #1

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_Z11opp_isalnumh(i8 noundef zeroext %0) local_unnamed_addr #6 comdat !prof !122 {
  %2 = zext i8 %0 to i32
  %3 = tail call i32 @isalnum(i32 noundef %2) #26
  %4 = icmp ne i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #14

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN14cDisplayString3TagC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #6 comdat align 2 !prof !62 {
  store ptr null, ptr %0, align 8, !tbaa !82
  %2 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %0, i64 0, i32 1
  store i32 0, ptr %2, align 8, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_Z10opp_strlenPKc(ptr noundef %0) local_unnamed_addr #6 comdat !prof !123 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3, !prof !124

3:                                                ; preds = %1
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #26
  %5 = trunc i64 %4 to i32
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i32 [ %5, %3 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN14cDisplayString13strcatescapedEPcPKc(ptr nocapture noundef %0, ptr noundef readonly %1) local_unnamed_addr #18 align 2 !prof !62 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %2
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #26
  %6 = getelementptr inbounds i8, ptr %0, i64 %5
  br label %7

7:                                                ; preds = %14, %4
  %8 = phi ptr [ %6, %4 ], [ %18, %14 ]
  %9 = phi ptr [ %1, %4 ], [ %17, %14 ]
  %10 = load i8, ptr %9, align 1, !tbaa !74
  switch i8 %10, label %14 [
    i8 0, label %19
    i8 59, label %11
    i8 44, label %11
    i8 61, label %11
  ]

11:                                               ; preds = %7, %7, %7
  %12 = getelementptr inbounds i8, ptr %8, i64 1
  store i8 92, ptr %8, align 1, !tbaa !74
  %13 = load i8, ptr %9, align 1, !tbaa !74
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi i8 [ %13, %11 ], [ %10, %7 ]
  %16 = phi ptr [ %12, %11 ], [ %8, %7 ]
  %17 = getelementptr inbounds i8, ptr %9, i64 1
  %18 = getelementptr inbounds i8, ptr %16, i64 1
  store i8 %15, ptr %16, align 1, !tbaa !74
  br label %7, !llvm.loop !125

19:                                               ; preds = %7
  store i8 0, ptr %8, align 1, !tbaa !74
  br label %20

20:                                               ; preds = %2, %19
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK14cDisplayString4dumpEv(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #5 align 2 !prof !62 {
  %2 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !81
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 2
  br label %10

7:                                                ; preds = %25, %1
  %8 = tail call noundef ptr @_ZNK14cDisplayString3strEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #24
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull %8) #24
  ret void

10:                                               ; preds = %5, %25
  %11 = phi i64 [ 0, %5 ], [ %26, %25 ]
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10) #24
  br label %15

15:                                               ; preds = %13, %10
  %16 = load ptr, ptr %6, align 8, !tbaa !80
  %17 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %16, i64 %11
  %18 = load ptr, ptr %17, align 8, !tbaa !82
  %19 = trunc i64 %11 to i32
  %20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %19, ptr noundef %18) #24
  %21 = load ptr, ptr %6, align 8, !tbaa !80
  %22 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %21, i64 %11, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !84
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %37, %15
  %26 = add nuw nsw i64 %11, 1
  %27 = load i32, ptr %2, align 8, !tbaa !81
  %28 = sext i32 %27 to i64
  %29 = icmp slt i64 %26, %28
  br i1 %29, label %10, label %7, !llvm.loop !126

30:                                               ; preds = %15, %37
  %31 = phi ptr [ %43, %37 ], [ %21, %15 ]
  %32 = phi i64 [ %42, %37 ], [ 0, %15 ]
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = tail call i32 @putchar(i32 44)
  %36 = load ptr, ptr %6, align 8, !tbaa !80
  br label %37

37:                                               ; preds = %34, %30
  %38 = phi ptr [ %36, %34 ], [ %31, %30 ]
  %39 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %38, i64 %11, i32 2, i64 %32
  %40 = load ptr, ptr %39, align 8, !tbaa !85
  %41 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef %40) #24
  %42 = add nuw nsw i64 %32, 1
  %43 = load ptr, ptr %6, align 8, !tbaa !80
  %44 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %43, i64 %11, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !84
  %46 = sext i32 %45 to i64
  %47 = icmp slt i64 %42, %46
  br i1 %47, label %30, label %25, !llvm.loop !127
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #19

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #6 align 2

; Function Attrs: nounwind optsize
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #6 comdat align 2 !prof !128 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTV10cException, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #28
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #28
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #28
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #28
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #6 comdat align 2 {
  tail call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) #28
  tail call void @_ZdlPv(ptr noundef nonnull %0) #30
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException4whatEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #6 comdat align 2 !prof !128 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #28
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException3dupEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %2 = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #27
  invoke void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(124) %0) #24
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #30
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException12getErrorCodeEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #6 comdat align 2 !prof !62 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !129
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10cException10setMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 !prof !62 {
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #24
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10cException14prependMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #25
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %6) #24
          to label %7 unwind label %12

7:                                                ; preds = %2
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.14) #24
          to label %8 unwind label %14

8:                                                ; preds = %7
  %9 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %9) #24
          to label %10 unwind label %16

10:                                               ; preds = %8
  %11 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %3) #28
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #28
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #28
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #28
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #28
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #25
  ret void

12:                                               ; preds = %2
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %20

14:                                               ; preds = %7
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %18

16:                                               ; preds = %8
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #28
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #28
  br label %20

20:                                               ; preds = %18, %12
  %21 = phi { ptr, i32 } [ %19, %18 ], [ %13, %12 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #28
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #25
  resume { ptr, i32 } %21
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10cException10hasContextEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #6 comdat align 2 !prof !128 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 8, !tbaa !135, !range !96, !noundef !97
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException19getContextClassNameEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #6 comdat align 2 !prof !62 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #28
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException18getContextFullPathEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #6 comdat align 2 !prof !62 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #28
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException11getModuleIDEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #6 comdat align 2 !prof !62 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !136
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6 align 2

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6 align 2

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

; Function Attrs: optsize
declare void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %0) local_unnamed_addr #6 comdat align 2 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #28
  ret i64 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #5 comdat !prof !137 {
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #24
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #28
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #5 comdat !prof !138 {
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) #24
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #28
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #24
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #24
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.16) #32
          to label %7 unwind label %8

7:                                                ; preds = %6
  unreachable

8:                                                ; preds = %6
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %16

10:                                               ; preds = %3
  %11 = tail call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef nonnull %1) #24
  %12 = getelementptr inbounds i8, ptr %1, i64 %11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull %12) #24
          to label %13 unwind label %14

13:                                               ; preds = %10
  ret void

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi { ptr, i32 } [ %9, %8 ], [ %15, %14 ]
  tail call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #28
  resume { ptr, i32 } %17
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !139 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #6 align 2

; Function Attrs: noreturn optsize
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #20

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat align 2 !prof !140 {
  %4 = alloca i64, align 8
  %5 = alloca %struct._Guard, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %6 = tail call noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #24
  store i64 %6, ptr %4, align 8, !tbaa !141
  %7 = icmp ugt i64 %6, 15
  br i1 %7, label %8, label %11, !prof !142

8:                                                ; preds = %3
  %9 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %9) #24
  %10 = load i64, ptr %4, align 8, !tbaa !141
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #24
  br label %13

11:                                               ; preds = %3
  %12 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #24
  br label %13

13:                                               ; preds = %11, %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %0) #24
  %14 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef %14, ptr noundef %1, ptr noundef %2) #28
  store ptr null, ptr %5, align 8, !tbaa !143
  %15 = load i64, ptr %4, align 8, !tbaa !141
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %15) #24
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat !prof !140 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !85
  call void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #24
  %4 = call noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #24
  ret i64 %4
}

; Function Attrs: optsize
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 !prof !140 {
  store ptr %1, ptr %0, align 8, !tbaa !143
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !140 {
  %2 = load ptr, ptr %0, align 8, !tbaa !143
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !145

4:                                                ; preds = %1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #24
          to label %5 unwind label %6

5:                                                ; preds = %4, %1
  ret void

6:                                                ; preds = %4
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #31
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat !prof !140 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat !prof !140 {
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @isalnum(i32 noundef) local_unnamed_addr #21

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_cdisplaystring.cc() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #22

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #22

attributes #0 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #24 = { optsize }
attributes #25 = { nounwind }
attributes #26 = { nounwind optsize willreturn memory(read) }
attributes #27 = { builtin optsize allocsize(0) }
attributes #28 = { nounwind optsize }
attributes #29 = { noreturn }
attributes #30 = { builtin nounwind optsize }
attributes #31 = { noreturn nounwind }
attributes #32 = { noreturn optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!61}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 349786412141}
!4 = !{!"MaxCount", i64 61624744013}
!5 = !{!"MaxInternalCount", i64 9097682171}
!6 = !{!"MaxFunctionCount", i64 61624744013}
!7 = !{!"NumCounts", i64 22816}
!8 = !{!"NumFunctions", i64 10273}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 61624744013, i32 1}
!14 = !{i32 100000, i64 61624744013, i32 1}
!15 = !{i32 200000, i64 57319387120, i32 2}
!16 = !{i32 300000, i64 57319387120, i32 2}
!17 = !{i32 400000, i64 48398671114, i32 3}
!18 = !{i32 500000, i64 21674314260, i32 4}
!19 = !{i32 600000, i64 13210012293, i32 6}
!20 = !{i32 700000, i64 9097682171, i32 9}
!21 = !{i32 800000, i64 1685490447, i32 17}
!22 = !{i32 900000, i64 467312602, i32 72}
!23 = !{i32 950000, i64 202351116, i32 133}
!24 = !{i32 990000, i64 73590684, i32 225}
!25 = !{i32 999000, i64 3128957, i32 339}
!26 = !{i32 999900, i64 100587, i32 1069}
!27 = !{i32 999990, i64 10550, i32 1784}
!28 = !{i32 999999, i64 1105, i32 2320}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60}
!35 = !{ptr @_Z10opp_strdupPKc, ptr @strlen, i64 188204299}
!36 = !{ptr @_Z10opp_strdupPKc, ptr @_Znam, i64 188204299}
!37 = !{ptr @_Z10opp_strdupPKc, ptr @strcpy, i64 188204299}
!38 = !{ptr @_Z10opp_strcmpPKcS0_, ptr @strcmp, i64 3128955}
!39 = !{ptr @_Z11opp_isalnumh, ptr @isalnum, i64 215}
!40 = !{ptr @_Z10opp_strlenPKc, ptr @strlen, i64 54985}
!41 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 3}
!42 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt9exceptionD2Ev, i64 1}
!43 = !{ptr @_ZNK10cException4whatEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 1}
!44 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_, i64 2}
!45 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_, i64 2}
!46 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc, i64 2107073}
!47 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_, i64 2107073}
!48 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, i64 1889443}
!49 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 1257662}
!50 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc, i64 1257662}
!51 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm, i64 1257662}
!52 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv, i64 631781}
!53 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_, i64 1889443}
!54 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv, i64 1889443}
!55 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_, i64 1889443}
!56 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm, i64 1889443}
!57 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, i64 1889443}
!58 = !{ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_, i64 1889443}
!59 = !{ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, i64 1889443}
!60 = !{ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv, i64 1}
!61 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!62 = !{!"function_entry_count", i64 0}
!63 = !{!64, !65, i64 32}
!64 = !{!"_ZTS14cDisplayString", !65, i64 0, !65, i64 8, !65, i64 16, !68, i64 24, !65, i64 32, !69, i64 40, !65, i64 48}
!65 = !{!"any pointer", !66, i64 0}
!66 = !{!"omnipotent char", !67, i64 0}
!67 = !{!"Simple C++ TBAA"}
!68 = !{!"int", !66, i64 0}
!69 = !{!"bool", !66, i64 0}
!70 = !{!64, !69, i64 40}
!71 = !{!64, !65, i64 48}
!72 = !{!"function_entry_count", i64 188204319}
!73 = !{!"branch_weights", i32 13, i32 188204308}
!74 = !{!66, !66, i64 0}
!75 = !{!"branch_weights", i32 7, i32 188204302}
!76 = !{!64, !65, i64 0}
!77 = !{!64, !65, i64 8}
!78 = distinct !{!78, !79}
!79 = !{!"llvm.loop.mustprogress"}
!80 = !{!64, !65, i64 16}
!81 = !{!64, !68, i64 24}
!82 = !{!83, !65, i64 0}
!83 = !{!"_ZTSN14cDisplayString3TagE", !65, i64 0, !68, i64 8, !66, i64 16}
!84 = !{!83, !68, i64 8}
!85 = !{!65, !65, i64 0}
!86 = distinct !{!86, !79}
!87 = distinct !{!87, !79}
!88 = distinct !{!88, !79}
!89 = distinct !{!89, !79}
!90 = distinct !{!90, !79}
!91 = distinct !{!91, !79}
!92 = distinct !{!92, !79}
!93 = !{!94, !69, i64 9}
!94 = !{!"_ZTS6cEnvir", !69, i64 8, !69, i64 9, !69, i64 10, !95, i64 16}
!95 = !{!"_ZTSSo"}
!96 = !{i8 0, i8 2}
!97 = !{}
!98 = !{!99, !99, i64 0}
!99 = !{!"vtable pointer", !67, i64 0}
!100 = !{!"function_entry_count", i64 21674314260}
!101 = distinct !{!101, !79}
!102 = distinct !{!102, !79}
!103 = distinct !{!103, !79}
!104 = distinct !{!104, !79}
!105 = !{!"function_entry_count", i64 3403184}
!106 = !{!"branch_weights", i32 274228, i32 3128958}
!107 = !{!"branch_weights", i32 1, i32 3128958}
!108 = !{!"branch_weights", i32 121684, i32 152545}
!109 = distinct !{!109, !79}
!110 = distinct !{!110, !79}
!111 = distinct !{!111, !79}
!112 = distinct !{!112, !79}
!113 = !{i64 0, i64 8, !85, i64 8, i64 4, !114, i64 16, i64 128, !74}
!114 = !{!68, !68, i64 0}
!115 = distinct !{!115, !79}
!116 = distinct !{!116, !79}
!117 = distinct !{!117, !79}
!118 = distinct !{!118, !79}
!119 = distinct !{!119, !79}
!120 = !{!"function_entry_count", i64 425}
!121 = !{!"branch_weights", i32 4, i32 423}
!122 = !{!"function_entry_count", i64 215}
!123 = !{!"function_entry_count", i64 54986}
!124 = !{!"branch_weights", i32 1, i32 54987}
!125 = distinct !{!125, !79}
!126 = distinct !{!126, !79}
!127 = distinct !{!127, !79}
!128 = !{!"function_entry_count", i64 1}
!129 = !{!130, !68, i64 8}
!130 = !{!"_ZTS10cException", !131, i64 0, !68, i64 8, !132, i64 16, !69, i64 48, !132, i64 56, !132, i64 88, !68, i64 120}
!131 = !{!"_ZTSSt9exception"}
!132 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !133, i64 0, !134, i64 8, !66, i64 16}
!133 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !65, i64 0}
!134 = !{!"long", !66, i64 0}
!135 = !{!130, !69, i64 48}
!136 = !{!130, !68, i64 120}
!137 = !{!"function_entry_count", i64 2}
!138 = !{!"function_entry_count", i64 2107073}
!139 = !{!"function_entry_count", i64 1891507}
!140 = !{!"function_entry_count", i64 1889443}
!141 = !{!134, !134, i64 0}
!142 = !{!"branch_weights", i32 1257663, i32 631782}
!143 = !{!144, !65, i64 0}
!144 = !{!"_ZTSZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagE6_Guard", !65, i64 0}
!145 = !{!"branch_weights", i32 1889444, i32 1}
