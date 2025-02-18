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

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

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
@.str.15 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.16 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_cdisplaystring.cc, ptr null }]

@_ZN14cDisplayStringC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN14cDisplayStringC2Ev
@_ZN14cDisplayStringC1EPKc = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN14cDisplayStringC2EPKc
@_ZN14cDisplayStringC1ERKS_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN14cDisplayStringC2ERKS_
@_ZN14cDisplayStringD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN14cDisplayStringD2Ev

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN14cDisplayStringC2Ev(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(56) %0) unnamed_addr #3 align 2 !prof !40 {
  %2 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 4
  store ptr null, ptr %2, align 8, !tbaa !41
  %3 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 5
  store i8 0, ptr %3, align 8, !tbaa !48
  %4 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 6
  store ptr null, ptr %4, align 8, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %0, i8 0, i64 28, i1 false)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14cDisplayStringC2EPKc(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0, ptr noundef readonly %1) unnamed_addr #4 align 2 !prof !40 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = load i8, ptr %1, align 1, !tbaa !50
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %4
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  %9 = add i64 %8, 1
  %10 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %9) #27
  %11 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %1) #28
  br label %12

12:                                               ; preds = %2, %4, %7
  %13 = phi ptr [ %10, %7 ], [ null, %4 ], [ null, %2 ]
  %14 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 4
  store ptr %13, ptr %14, align 8, !tbaa !41
  %15 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 5
  store i8 0, ptr %15, align 8, !tbaa !48
  %16 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 6
  store ptr null, ptr %16, align 8, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %0, i8 0, i64 28, i1 false)
  tail call void @_ZN14cDisplayString5parseEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14cDisplayString5parseEv(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  tail call void @_ZN14cDisplayString9cleartagsEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %2 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  %4 = icmp eq ptr %3, null
  br i1 %4, label %165, label %5

5:                                                ; preds = %1
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #26
  %7 = shl i64 %6, 32
  %8 = add i64 %7, 4294967296
  %9 = ashr exact i64 %8, 32
  %10 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %9) #27
  store ptr %10, ptr %0, align 8, !tbaa !51
  %11 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #26
  %12 = shl i64 %11, 32
  %13 = ashr exact i64 %12, 32
  %14 = getelementptr inbounds i8, ptr %10, i64 %13
  %15 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !52
  br label %16

16:                                               ; preds = %30, %5
  %17 = phi i32 [ 1, %5 ], [ %31, %30 ]
  %18 = phi ptr [ %3, %5 ], [ %32, %30 ]
  %19 = load i8, ptr %18, align 1, !tbaa !50
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
  br i1 %27, label %40, label %33

28:                                               ; preds = %16
  %29 = add nsw i32 %17, 1
  br label %30

30:                                               ; preds = %16, %28
  %31 = phi i32 [ %29, %28 ], [ %17, %16 ]
  %32 = getelementptr inbounds i8, ptr %18, i64 1
  br label %16, !llvm.loop !53

33:                                               ; preds = %20
  %34 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %26, i64 %21
  br label %35

35:                                               ; preds = %35, %33
  %36 = phi ptr [ %26, %33 ], [ %38, %35 ]
  store ptr null, ptr %36, align 8, !tbaa !56
  %37 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %36, i64 0, i32 1
  store i32 0, ptr %37, align 8, !tbaa !58
  %38 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %36, i64 1
  %39 = icmp eq ptr %38, %34
  br i1 %39, label %40, label %35

40:                                               ; preds = %35, %20
  %41 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 2
  store ptr %26, ptr %41, align 8, !tbaa !59
  %42 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 3
  store i32 1, ptr %42, align 8, !tbaa !60
  store ptr %10, ptr %26, align 8, !tbaa !56
  %43 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %26, i64 0, i32 1
  store i32 0, ptr %43, align 8, !tbaa !58
  br label %47

44:                                               ; preds = %47
  %45 = load ptr, ptr %2, align 8, !tbaa !41
  %46 = load ptr, ptr %0, align 8, !tbaa !51
  br label %53

47:                                               ; preds = %40, %47
  %48 = phi i64 [ 0, %40 ], [ %51, %47 ]
  %49 = load ptr, ptr %41, align 8, !tbaa !59
  %50 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %49, i64 0, i32 2, i64 %48
  store ptr null, ptr %50, align 8, !tbaa !61
  %51 = add nuw nsw i64 %48, 1
  %52 = icmp eq i64 %51, 16
  br i1 %52, label %44, label %47, !llvm.loop !62

53:                                               ; preds = %107, %44
  %54 = phi ptr [ %45, %44 ], [ %109, %107 ]
  %55 = phi ptr [ %46, %44 ], [ %110, %107 ]
  %56 = load i8, ptr %54, align 1, !tbaa !50
  switch i8 %56, label %106 [
    i8 0, label %111
    i8 92, label %57
    i8 59, label %63
    i8 61, label %79
    i8 44, label %87
  ]

57:                                               ; preds = %53
  %58 = getelementptr inbounds i8, ptr %54, i64 1
  %59 = load i8, ptr %58, align 1, !tbaa !50
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  store i8 %59, ptr %55, align 1, !tbaa !50
  br label %107

62:                                               ; preds = %57
  switch i8 %56, label %106 [
    i8 59, label %63
    i8 61, label %79
    i8 44, label %87
  ]

63:                                               ; preds = %53, %62
  store i8 0, ptr %55, align 1, !tbaa !50
  %64 = load i32, ptr %42, align 8, !tbaa !60
  %65 = add nsw i32 %64, 1
  store i32 %65, ptr %42, align 8, !tbaa !60
  %66 = getelementptr inbounds i8, ptr %55, i64 1
  %67 = load ptr, ptr %41, align 8, !tbaa !59
  %68 = sext i32 %64 to i64
  %69 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %67, i64 %68
  store ptr %66, ptr %69, align 8, !tbaa !56
  %70 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %67, i64 %68, i32 1
  store i32 0, ptr %70, align 8, !tbaa !58
  %71 = sext i32 %65 to i64
  br label %72

72:                                               ; preds = %63, %72
  %73 = phi i64 [ 0, %63 ], [ %77, %72 ]
  %74 = load ptr, ptr %41, align 8, !tbaa !59
  %75 = getelementptr %"struct.cDisplayString::Tag", ptr %74, i64 %71
  %76 = getelementptr %"struct.cDisplayString::Tag", ptr %75, i64 -1, i32 2, i64 %73
  store ptr null, ptr %76, align 8, !tbaa !61
  %77 = add nuw nsw i64 %73, 1
  %78 = icmp eq i64 %77, 16
  br i1 %78, label %107, label %72, !llvm.loop !63

79:                                               ; preds = %53, %62
  store i8 0, ptr %55, align 1, !tbaa !50
  %80 = load ptr, ptr %41, align 8, !tbaa !59
  %81 = load i32, ptr %42, align 8, !tbaa !60
  %82 = sext i32 %81 to i64
  %83 = getelementptr %"struct.cDisplayString::Tag", ptr %80, i64 %82
  %84 = getelementptr %"struct.cDisplayString::Tag", ptr %83, i64 -1, i32 1
  store i32 1, ptr %84, align 8, !tbaa !58
  %85 = getelementptr inbounds i8, ptr %55, i64 1
  %86 = getelementptr %"struct.cDisplayString::Tag", ptr %83, i64 -1, i32 2
  store ptr %85, ptr %86, align 8, !tbaa !61
  br label %107

87:                                               ; preds = %53, %62
  store i8 0, ptr %55, align 1, !tbaa !50
  %88 = load ptr, ptr %41, align 8, !tbaa !59
  %89 = load i32, ptr %42, align 8, !tbaa !60
  %90 = sext i32 %89 to i64
  %91 = getelementptr %"struct.cDisplayString::Tag", ptr %88, i64 %90
  %92 = getelementptr %"struct.cDisplayString::Tag", ptr %91, i64 -1, i32 1
  %93 = load i32, ptr %92, align 8, !tbaa !58
  %94 = icmp sgt i32 %93, 15
  br i1 %94, label %95, label %101

95:                                               ; preds = %87
  %96 = tail call ptr @__cxa_allocate_exception(i64 128) #28
  %97 = load ptr, ptr %2, align 8, !tbaa !41
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %96, ptr noundef nonnull @.str.4, i32 noundef 16, ptr noundef %97)
          to label %98 unwind label %99

98:                                               ; preds = %95
  tail call void @__cxa_throw(ptr nonnull %96, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #29
  unreachable

99:                                               ; preds = %95
  %100 = landingpad { ptr, i32 }
          cleanup
  br label %166

101:                                              ; preds = %87
  %102 = add nsw i32 %93, 1
  store i32 %102, ptr %92, align 8, !tbaa !58
  %103 = getelementptr inbounds i8, ptr %55, i64 1
  %104 = sext i32 %93 to i64
  %105 = getelementptr %"struct.cDisplayString::Tag", ptr %91, i64 -1, i32 2, i64 %104
  store ptr %103, ptr %105, align 8, !tbaa !61
  br label %107

106:                                              ; preds = %53, %62
  store i8 %56, ptr %55, align 1, !tbaa !50
  br label %107

107:                                              ; preds = %72, %61, %79, %106, %101
  %108 = phi ptr [ %58, %61 ], [ %54, %79 ], [ %54, %101 ], [ %54, %106 ], [ %54, %72 ]
  %109 = getelementptr inbounds i8, ptr %108, i64 1
  %110 = getelementptr inbounds i8, ptr %55, i64 1
  br label %53, !llvm.loop !64

111:                                              ; preds = %53
  store i8 0, ptr %55, align 1, !tbaa !50
  %112 = load i32, ptr %42, align 8, !tbaa !60
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %165

114:                                              ; preds = %111
  %115 = load ptr, ptr %41, align 8, !tbaa !59
  %116 = zext nneg i32 %112 to i64
  br label %117

117:                                              ; preds = %114, %143
  %118 = phi i64 [ 0, %114 ], [ %144, %143 ]
  %119 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %115, i64 %118
  %120 = load ptr, ptr %119, align 8, !tbaa !56
  %121 = load i8, ptr %120, align 1, !tbaa !50
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %117
  %124 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %115, i64 %118, i32 1
  %125 = load i32, ptr %124, align 8, !tbaa !58
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %123
  %128 = tail call ptr @__cxa_allocate_exception(i64 128) #28
  %129 = load ptr, ptr %2, align 8, !tbaa !41
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %128, ptr noundef nonnull @.str.5, ptr noundef %129)
          to label %130 unwind label %131

130:                                              ; preds = %127
  tail call void @__cxa_throw(ptr nonnull %128, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #29
  unreachable

131:                                              ; preds = %127
  %132 = landingpad { ptr, i32 }
          cleanup
  br label %166

133:                                              ; preds = %123, %117
  %134 = load i8, ptr %120, align 1, !tbaa !50
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %143, label %136

136:                                              ; preds = %133
  %137 = tail call ptr @__ctype_b_loc() #30
  %138 = load ptr, ptr %137, align 8, !tbaa !61
  br label %146

139:                                              ; preds = %146
  %140 = getelementptr inbounds i8, ptr %148, i64 1
  %141 = load i8, ptr %140, align 1, !tbaa !50
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %143, label %146, !llvm.loop !65

143:                                              ; preds = %139, %133
  %144 = add nuw nsw i64 %118, 1
  %145 = icmp eq i64 %144, %116
  br i1 %145, label %165, label %117, !llvm.loop !66

146:                                              ; preds = %136, %139
  %147 = phi i8 [ %134, %136 ], [ %141, %139 ]
  %148 = phi ptr [ %120, %136 ], [ %140, %139 ]
  %149 = zext i8 %147 to i64
  %150 = getelementptr inbounds i16, ptr %138, i64 %149
  %151 = load i16, ptr %150, align 2, !tbaa !67
  %152 = and i16 %151, 8
  %153 = icmp ne i16 %152, 0
  %154 = icmp eq i8 %147, 58
  %155 = or i1 %154, %153
  br i1 %155, label %139, label %156

156:                                              ; preds = %146
  %157 = tail call ptr @__cxa_allocate_exception(i64 128) #28
  %158 = load ptr, ptr %41, align 8, !tbaa !59
  %159 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %158, i64 %118
  %160 = load ptr, ptr %159, align 8, !tbaa !56
  %161 = load ptr, ptr %2, align 8, !tbaa !41
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %157, ptr noundef nonnull @.str.6, ptr noundef %160, ptr noundef %161)
          to label %162 unwind label %163

162:                                              ; preds = %156
  tail call void @__cxa_throw(ptr nonnull %157, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #29
  unreachable

163:                                              ; preds = %156
  %164 = landingpad { ptr, i32 }
          cleanup
  br label %166

165:                                              ; preds = %143, %111, %1
  ret void

166:                                              ; preds = %131, %163, %99
  %167 = phi ptr [ %128, %131 ], [ %157, %163 ], [ %96, %99 ]
  %168 = phi { ptr, i32 } [ %132, %131 ], [ %164, %163 ], [ %100, %99 ]
  tail call void @__cxa_free_exception(ptr %167) #28
  resume { ptr, i32 } %168
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14cDisplayStringC2ERKS_(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0, ptr nocapture noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #4 align 2 !prof !40 {
  %3 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 4
  store ptr null, ptr %3, align 8, !tbaa !41
  %4 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 5
  store i8 0, ptr %4, align 8, !tbaa !48
  %5 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 6
  store ptr null, ptr %5, align 8, !tbaa !49
  %6 = getelementptr inbounds %class.cDisplayString, ptr %1, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %0, i8 0, i64 28, i1 false)
  %7 = load i8, ptr %6, align 8, !tbaa !48, !range !69, !noundef !70
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  tail call void @_ZNK14cDisplayString8assembleEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
  br label %10

10:                                               ; preds = %2, %9
  %11 = getelementptr inbounds %class.cDisplayString, ptr %1, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  %14 = select i1 %13, ptr @.str, ptr %12
  tail call void @_ZN14cDisplayString5parseEPKc(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %14)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN14cDisplayStringD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %2 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZdaPv(ptr noundef %3) #31
  br label %6

6:                                                ; preds = %5, %1
  tail call void @_ZN14cDisplayString9cleartagsEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN14cDisplayString9cleartagsEv(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #5 align 2 !prof !40 {
  %2 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !60
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 1
  br label %13

8:                                                ; preds = %30, %1
  %9 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 3
  %10 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !59
  %12 = icmp eq ptr %11, null
  br i1 %12, label %55, label %54

13:                                               ; preds = %5, %30
  %14 = phi i64 [ 0, %5 ], [ %31, %30 ]
  %15 = load ptr, ptr %6, align 8, !tbaa !59
  %16 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !56
  %18 = load ptr, ptr %0, align 8, !tbaa !51
  %19 = icmp ugt ptr %18, %17
  %20 = load ptr, ptr %7, align 8
  %21 = icmp uge ptr %20, %17
  %22 = icmp eq ptr %17, null
  %23 = select i1 %19, i1 %22, i1 %21
  br i1 %23, label %25, label %24

24:                                               ; preds = %13
  tail call void @_ZdaPv(ptr noundef %17) #31
  br label %25

25:                                               ; preds = %24, %13
  %26 = load ptr, ptr %6, align 8, !tbaa !59
  %27 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %26, i64 %14, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !58
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %47, %25
  %31 = add nuw nsw i64 %14, 1
  %32 = load i32, ptr %2, align 8, !tbaa !60
  %33 = sext i32 %32 to i64
  %34 = icmp slt i64 %31, %33
  br i1 %34, label %13, label %8, !llvm.loop !71

35:                                               ; preds = %25, %47
  %36 = phi i64 [ %48, %47 ], [ 0, %25 ]
  %37 = phi ptr [ %49, %47 ], [ %26, %25 ]
  %38 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %37, i64 %14, i32 2, i64 %36
  %39 = load ptr, ptr %38, align 8, !tbaa !61
  %40 = load ptr, ptr %0, align 8, !tbaa !51
  %41 = icmp ugt ptr %40, %39
  %42 = load ptr, ptr %7, align 8
  %43 = icmp uge ptr %42, %39
  %44 = icmp eq ptr %39, null
  %45 = select i1 %41, i1 %44, i1 %43
  br i1 %45, label %47, label %46

46:                                               ; preds = %35
  tail call void @_ZdaPv(ptr noundef %39) #31
  br label %47

47:                                               ; preds = %35, %46
  %48 = add nuw nsw i64 %36, 1
  %49 = load ptr, ptr %6, align 8, !tbaa !59
  %50 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %49, i64 %14, i32 1
  %51 = load i32, ptr %50, align 8, !tbaa !58
  %52 = sext i32 %51 to i64
  %53 = icmp slt i64 %48, %52
  br i1 %53, label %35, label %30, !llvm.loop !72

54:                                               ; preds = %8
  tail call void @_ZdaPv(ptr noundef %11) #31
  br label %55

55:                                               ; preds = %54, %8
  store ptr null, ptr %10, align 8, !tbaa !59
  store i32 0, ptr %9, align 8, !tbaa !60
  %56 = load ptr, ptr %0, align 8, !tbaa !51
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  tail call void @_ZdaPv(ptr noundef %56) #31
  br label %59

59:                                               ; preds = %58, %55
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14cDisplayString6notifyEv(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #4 align 2 !prof !40 {
  %2 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 5
  store i8 1, ptr %2, align 8, !tbaa !48
  %3 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !61
  %4 = getelementptr inbounds %class.cEnvir, ptr %3, i64 0, i32 2
  %5 = load i8, ptr %4, align 1, !tbaa !73, !range !69, !noundef !70
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = load ptr, ptr %3, align 8, !tbaa !76
  %11 = getelementptr inbounds ptr, ptr %10, i64 25
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(288) %3, ptr noundef %9)
  br label %13

13:                                               ; preds = %1, %7
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull ptr @_ZNK14cDisplayString3strEv(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #4 align 2 !prof !40 {
  %2 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 8, !tbaa !48, !range !69, !noundef !70
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZNK14cDisplayString8assembleEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = icmp eq ptr %8, null
  %10 = select i1 %9, ptr @.str, ptr %8
  ret ptr %10
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK14cDisplayString8assembleEv(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #4 align 2 !prof !40 {
  %2 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !60
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  %8 = zext nneg i32 %3 to i64
  br label %19

9:                                                ; preds = %37
  %10 = shl nsw i32 %38, 1
  %11 = or disjoint i32 %10, 1
  %12 = sext i32 %11 to i64
  br label %13

13:                                               ; preds = %9, %1
  %14 = phi i64 [ 1, %1 ], [ %12, %9 ]
  %15 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 3
  %16 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !41
  %18 = icmp eq ptr %17, null
  br i1 %18, label %57, label %56

19:                                               ; preds = %5, %37
  %20 = phi i64 [ 0, %5 ], [ %39, %37 ]
  %21 = phi i32 [ 0, %5 ], [ %38, %37 ]
  %22 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %7, i64 %20
  %23 = load ptr, ptr %22, align 8, !tbaa !56
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %23) #26
  %27 = trunc i64 %26 to i32
  br label %28

28:                                               ; preds = %19, %25
  %29 = phi i32 [ %27, %25 ], [ 0, %19 ]
  %30 = add i32 %21, 2
  %31 = add i32 %30, %29
  %32 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %7, i64 %20, i32 1
  %33 = load i32, ptr %32, align 8, !tbaa !58
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = zext nneg i32 %33 to i64
  br label %41

37:                                               ; preds = %50, %28
  %38 = phi i32 [ %31, %28 ], [ %53, %50 ]
  %39 = add nuw nsw i64 %20, 1
  %40 = icmp eq i64 %39, %8
  br i1 %40, label %9, label %19, !llvm.loop !78

41:                                               ; preds = %35, %50
  %42 = phi i64 [ 0, %35 ], [ %54, %50 ]
  %43 = phi i32 [ %31, %35 ], [ %53, %50 ]
  %44 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %7, i64 %20, i32 2, i64 %42
  %45 = load ptr, ptr %44, align 8, !tbaa !61
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %45) #26
  %49 = trunc i64 %48 to i32
  br label %50

50:                                               ; preds = %41, %47
  %51 = phi i32 [ %49, %47 ], [ 0, %41 ]
  %52 = add i32 %43, 1
  %53 = add i32 %52, %51
  %54 = add nuw nsw i64 %42, 1
  %55 = icmp eq i64 %54, %36
  br i1 %55, label %37, label %41, !llvm.loop !79

56:                                               ; preds = %13
  tail call void @_ZdaPv(ptr noundef %17) #31
  br label %57

57:                                               ; preds = %56, %13
  %58 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %14) #27
  store ptr %58, ptr %16, align 8, !tbaa !41
  store i8 0, ptr %58, align 1, !tbaa !50
  %59 = load i32, ptr %15, align 8, !tbaa !60
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 2
  br label %65

63:                                               ; preds = %90, %57
  %64 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 5
  store i8 0, ptr %64, align 8, !tbaa !48
  ret void

65:                                               ; preds = %61, %90
  %66 = phi i64 [ 0, %61 ], [ %91, %90 ]
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %65
  %69 = load ptr, ptr %16, align 8, !tbaa !41
  %70 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %69)
  %71 = getelementptr inbounds i8, ptr %69, i64 %70
  store i16 59, ptr %71, align 1
  br label %72

72:                                               ; preds = %68, %65
  %73 = load ptr, ptr %16, align 8, !tbaa !41
  %74 = load ptr, ptr %62, align 8, !tbaa !59
  %75 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %74, i64 %66
  %76 = load ptr, ptr %75, align 8, !tbaa !56
  tail call void @_ZN14cDisplayString13strcatescapedEPcPKc(ptr noundef %73, ptr noundef %76)
  %77 = load ptr, ptr %62, align 8, !tbaa !59
  %78 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %77, i64 %66, i32 1
  %79 = load i32, ptr %78, align 8, !tbaa !58
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %72
  %82 = load ptr, ptr %16, align 8, !tbaa !41
  %83 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %82)
  %84 = getelementptr inbounds i8, ptr %82, i64 %83
  store i16 61, ptr %84, align 1
  br label %85

85:                                               ; preds = %81, %72
  %86 = load ptr, ptr %62, align 8, !tbaa !59
  %87 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %86, i64 %66, i32 1
  %88 = load i32, ptr %87, align 8, !tbaa !58
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %102, %85
  %91 = add nuw nsw i64 %66, 1
  %92 = load i32, ptr %15, align 8, !tbaa !60
  %93 = sext i32 %92 to i64
  %94 = icmp slt i64 %91, %93
  br i1 %94, label %65, label %63, !llvm.loop !80

95:                                               ; preds = %85, %102
  %96 = phi i64 [ %107, %102 ], [ 0, %85 ]
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %95
  %99 = load ptr, ptr %16, align 8, !tbaa !41
  %100 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %99)
  %101 = getelementptr inbounds i8, ptr %99, i64 %100
  store i16 44, ptr %101, align 1
  br label %102

102:                                              ; preds = %98, %95
  %103 = load ptr, ptr %16, align 8, !tbaa !41
  %104 = load ptr, ptr %62, align 8, !tbaa !59
  %105 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %104, i64 %66, i32 2, i64 %96
  %106 = load ptr, ptr %105, align 8, !tbaa !61
  tail call void @_ZN14cDisplayString13strcatescapedEPcPKc(ptr noundef %103, ptr noundef %106)
  %107 = add nuw nsw i64 %96, 1
  %108 = load ptr, ptr %62, align 8, !tbaa !59
  %109 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %108, i64 %66, i32 1
  %110 = load i32, ptr %109, align 8, !tbaa !58
  %111 = sext i32 %110 to i64
  %112 = icmp slt i64 %107, %111
  br i1 %112, label %95, label %90, !llvm.loop !81
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14cDisplayString5parseEPKc(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0, ptr noundef readonly %1) local_unnamed_addr #4 align 2 !prof !40 {
  %3 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 5
  %4 = load i8, ptr %3, align 8, !tbaa !48, !range !69, !noundef !70
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @_ZNK14cDisplayString8assembleEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  br label %7

7:                                                ; preds = %6, %2
  %8 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !41
  %10 = icmp eq ptr %9, null
  %11 = icmp eq ptr %1, null
  br i1 %10, label %19, label %12

12:                                               ; preds = %7
  br i1 %11, label %15, label %13

13:                                               ; preds = %12
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %1) #26
  br label %24

15:                                               ; preds = %12
  %16 = load i8, ptr %9, align 1, !tbaa !50
  %17 = icmp ne i8 %16, 0
  %18 = zext i1 %17 to i32
  br label %24

19:                                               ; preds = %7
  br i1 %11, label %24, label %20

20:                                               ; preds = %19
  %21 = load i8, ptr %1, align 1, !tbaa !50
  %22 = icmp ne i8 %21, 0
  %23 = sext i1 %22 to i32
  br label %24

24:                                               ; preds = %13, %15, %19, %20
  %25 = phi i32 [ %14, %13 ], [ %18, %15 ], [ 0, %19 ], [ %23, %20 ]
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %51, label %27

27:                                               ; preds = %24
  br i1 %10, label %29, label %28

28:                                               ; preds = %27
  tail call void @_ZdaPv(ptr noundef %9) #31
  br label %29

29:                                               ; preds = %28, %27
  tail call void @_ZN14cDisplayString9cleartagsEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %30 = icmp eq ptr %1, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %29
  %32 = load i8, ptr %1, align 1, !tbaa !50
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %31
  %35 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  %36 = add i64 %35, 1
  %37 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %36) #27
  %38 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %37, ptr noundef nonnull dereferenceable(1) %1) #28
  br label %39

39:                                               ; preds = %29, %31, %34
  %40 = phi ptr [ %37, %34 ], [ null, %31 ], [ null, %29 ]
  store ptr %40, ptr %8, align 8, !tbaa !41
  tail call void @_ZN14cDisplayString5parseEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  store i8 1, ptr %3, align 8, !tbaa !48
  %41 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !61
  %42 = getelementptr inbounds %class.cEnvir, ptr %41, i64 0, i32 2
  %43 = load i8, ptr %42, align 1, !tbaa !73, !range !69, !noundef !70
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 6
  %47 = load ptr, ptr %46, align 8, !tbaa !49
  %48 = load ptr, ptr %41, align 8, !tbaa !76
  %49 = getelementptr inbounds ptr, ptr %48, i64 25
  %50 = load ptr, ptr %49, align 8
  tail call void %50(ptr noundef nonnull align 8 dereferenceable(288) %41, ptr noundef %47)
  br label %51

51:                                               ; preds = %45, %39, %24
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14cDisplayString10updateWithERKS_(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %1) local_unnamed_addr #4 align 2 !prof !40 {
  %3 = getelementptr inbounds %class.cDisplayString, ptr %1, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !60
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %class.cDisplayString, ptr %1, i64 0, i32 2
  %8 = getelementptr inbounds %class.cDisplayString, ptr %1, i64 0, i32 2
  %9 = getelementptr inbounds %class.cDisplayString, ptr %1, i64 0, i32 2
  %10 = getelementptr inbounds %class.cDisplayString, ptr %1, i64 0, i32 2
  %11 = zext nneg i32 %4 to i64
  br label %22

12:                                               ; preds = %36, %2
  %13 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 5
  %14 = load i8, ptr %13, align 8, !tbaa !48, !range !69, !noundef !70
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @_ZNK14cDisplayString8assembleEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  br label %17

17:                                               ; preds = %12, %16
  %18 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !41
  %20 = icmp eq ptr %19, null
  %21 = select i1 %20, ptr @.str, ptr %19
  tail call void @_ZN14cDisplayString5parseEPKc(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %21)
  ret void

22:                                               ; preds = %6, %36
  %23 = phi i64 [ 0, %6 ], [ %37, %36 ]
  %24 = load i32, ptr %3, align 8
  %25 = sext i32 %24 to i64
  %26 = icmp slt i64 %23, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load ptr, ptr %7, align 8, !tbaa !59
  %29 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %28, i64 %23, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !58
  br label %31

31:                                               ; preds = %22, %27
  %32 = phi i32 [ %30, %27 ], [ -1, %22 ]
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = zext nneg i32 %32 to i64
  br label %39

36:                                               ; preds = %82, %31
  %37 = add nuw nsw i64 %23, 1
  %38 = icmp eq i64 %37, %11
  br i1 %38, label %12, label %22, !llvm.loop !82

39:                                               ; preds = %34, %82
  %40 = phi i64 [ 0, %34 ], [ %83, %82 ]
  %41 = load i32, ptr %3, align 8
  %42 = sext i32 %41 to i64
  %43 = icmp slt i64 %23, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %39
  %45 = load ptr, ptr %8, align 8, !tbaa !59
  %46 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %45, i64 %23, i32 1
  %47 = load i32, ptr %46, align 8, !tbaa !58
  %48 = sext i32 %47 to i64
  %49 = icmp slt i64 %40, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %45, i64 %23, i32 2, i64 %40
  %52 = load ptr, ptr %51, align 8, !tbaa !61
  %53 = icmp eq ptr %52, null
  %54 = select i1 %53, ptr @.str, ptr %52
  br label %55

55:                                               ; preds = %39, %44, %50
  %56 = phi ptr [ %54, %50 ], [ @.str, %39 ], [ @.str, %44 ]
  %57 = load i8, ptr %56, align 1, !tbaa !50
  switch i8 %57, label %73 [
    i8 45, label %58
    i8 0, label %82
  ]

58:                                               ; preds = %55
  %59 = getelementptr inbounds i8, ptr %56, i64 1
  %60 = load i8, ptr %59, align 1, !tbaa !50
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %58
  br i1 %43, label %63, label %67

63:                                               ; preds = %62
  %64 = load ptr, ptr %9, align 8, !tbaa !59
  %65 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %64, i64 %23
  %66 = load ptr, ptr %65, align 8, !tbaa !56
  br label %67

67:                                               ; preds = %62, %63
  %68 = phi ptr [ %66, %63 ], [ null, %62 ]
  %69 = trunc i64 %40 to i32
  %70 = tail call noundef zeroext i1 @_ZN14cDisplayString9setTagArgEPKciS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %68, i32 noundef %69, ptr noundef nonnull @.str)
  br label %82

71:                                               ; preds = %58
  %72 = icmp eq i8 %57, 0
  br i1 %72, label %82, label %73

73:                                               ; preds = %55, %71
  br i1 %43, label %74, label %78

74:                                               ; preds = %73
  %75 = load ptr, ptr %10, align 8, !tbaa !59
  %76 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %75, i64 %23
  %77 = load ptr, ptr %76, align 8, !tbaa !56
  br label %78

78:                                               ; preds = %73, %74
  %79 = phi ptr [ %77, %74 ], [ null, %73 ]
  %80 = trunc i64 %40 to i32
  %81 = tail call noundef zeroext i1 @_ZN14cDisplayString9setTagArgEPKciS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %79, i32 noundef %80, ptr noundef nonnull %56)
  br label %82

82:                                               ; preds = %55, %71, %78, %67
  %83 = add nuw nsw i64 %40, 1
  %84 = icmp eq i64 %83, %35
  br i1 %84, label %36, label %39, !llvm.loop !83
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK14cDisplayString10getNumTagsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) local_unnamed_addr #8 align 2 !prof !40 {
  %2 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !60
  ret i32 %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZNK14cDisplayString10getNumArgsEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #9 align 2 !prof !40 {
  %3 = icmp sgt i32 %1, -1
  %4 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8
  %6 = icmp sgt i32 %5, %1
  %7 = select i1 %3, i1 %6, i1 false
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  %11 = zext nneg i32 %1 to i64
  %12 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %10, i64 %11, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !58
  br label %14

14:                                               ; preds = %2, %8
  %15 = phi i32 [ %13, %8 ], [ -1, %2 ]
  ret i32 %15
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef nonnull ptr @_ZNK14cDisplayString9getTagArgEii(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 align 2 !prof !40 {
  %4 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8
  %6 = icmp sle i32 %5, %1
  %7 = or i32 %2, %1
  %8 = icmp slt i32 %7, 0
  %9 = select i1 %8, i1 true, i1 %6
  br i1 %9, label %23, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !59
  %13 = zext nneg i32 %1 to i64
  %14 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %12, i64 %13, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !58
  %16 = icmp sgt i32 %15, %2
  br i1 %16, label %17, label %23

17:                                               ; preds = %10
  %18 = zext nneg i32 %2 to i64
  %19 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %12, i64 %13, i32 2, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !61
  %21 = icmp eq ptr %20, null
  %22 = select i1 %21, ptr @.str, ptr %20
  br label %23

23:                                               ; preds = %10, %3, %17
  %24 = phi ptr [ %22, %17 ], [ @.str, %3 ], [ @.str, %10 ]
  ret ptr %24
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN14cDisplayString9setTagArgEPKciS1_(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #4 align 2 !prof !40 {
  %5 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !60
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %4
  %9 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  %11 = zext nneg i32 %6 to i64
  br label %12

12:                                               ; preds = %8, %18
  %13 = phi i64 [ 0, %8 ], [ %19, %18 ]
  %14 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %10, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !56
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %15) #26
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = add nuw nsw i64 %13, 1
  %20 = icmp eq i64 %19, %11
  br i1 %20, label %23, label %12, !llvm.loop !84

21:                                               ; preds = %12
  %22 = trunc i64 %13 to i32
  br label %23

23:                                               ; preds = %21, %18, %4
  %24 = phi i32 [ -1, %4 ], [ %22, %21 ], [ -1, %18 ]
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = tail call noundef i32 @_ZN14cDisplayString9insertTagEPKci(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef 0)
  br label %28

28:                                               ; preds = %26, %23
  %29 = phi i32 [ %27, %26 ], [ %24, %23 ]
  %30 = tail call noundef zeroext i1 @_ZN14cDisplayString9setTagArgEiiPKc(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %29, i32 noundef %2, ptr noundef %3)
  ret i1 %30
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZNK14cDisplayString10getTagNameEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #9 align 2 !prof !40 {
  %3 = icmp sgt i32 %1, -1
  %4 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8
  %6 = icmp sgt i32 %5, %1
  %7 = select i1 %3, i1 %6, i1 false
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  %11 = zext nneg i32 %1 to i64
  %12 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !56
  br label %14

14:                                               ; preds = %2, %8
  %15 = phi ptr [ %13, %8 ], [ null, %2 ]
  ret ptr %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14cDisplayString10updateWithEPKc(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %3 = alloca %class.cDisplayString, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #28
  call void @_ZN14cDisplayStringC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef %1)
  invoke void @_ZN14cDisplayString10updateWithERKS_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %3)
          to label %4 unwind label %5

4:                                                ; preds = %2
  call void @_ZN14cDisplayStringD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %3) #28
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #28
  ret void

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14cDisplayStringD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %3) #28
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #28
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK14cDisplayString11containsTagEPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 align 2 !prof !40 {
  %3 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !60
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %25

6:                                                ; preds = %2
  %7 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = zext nneg i32 %4 to i64
  %10 = zext nneg i32 %4 to i64
  %11 = load ptr, ptr %8, align 8, !tbaa !56
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %11) #26
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %6, %18
  %15 = phi i64 [ %16, %18 ], [ 0, %6 ]
  %16 = add nuw nsw i64 %15, 1
  %17 = icmp eq i64 %16, %10
  br i1 %17, label %23, label %18, !llvm.loop !84

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %8, i64 %16
  %20 = load ptr, ptr %19, align 8, !tbaa !56
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %20) #26
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %14, !llvm.loop !84

23:                                               ; preds = %18, %14
  %24 = icmp ult i64 %16, %9
  br label %25

25:                                               ; preds = %23, %6, %2
  %26 = phi i1 [ %5, %2 ], [ %5, %6 ], [ %24, %23 ]
  ret i1 %26
}

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZNK14cDisplayString11gettagindexEPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 align 2 !prof !40 {
  %3 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !60
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %21

6:                                                ; preds = %2
  %7 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = zext nneg i32 %4 to i64
  br label %10

10:                                               ; preds = %6, %16
  %11 = phi i64 [ 0, %6 ], [ %17, %16 ]
  %12 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %8, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !56
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %13) #26
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, %9
  br i1 %18, label %21, label %10, !llvm.loop !84

19:                                               ; preds = %10
  %20 = trunc i64 %11 to i32
  br label %21

21:                                               ; preds = %19, %16, %2
  %22 = phi i32 [ -1, %2 ], [ %20, %19 ], [ -1, %16 ]
  ret i32 %22
}

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZNK14cDisplayString10getNumArgsEPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 align 2 !prof !40 {
  %3 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %21

6:                                                ; preds = %2
  %7 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = zext nneg i32 %4 to i64
  br label %10

10:                                               ; preds = %6, %16
  %11 = phi i64 [ 0, %6 ], [ %17, %16 ]
  %12 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %8, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !56
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %13) #26
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, %9
  br i1 %18, label %21, label %10, !llvm.loop !84

19:                                               ; preds = %10
  %20 = trunc i64 %11 to i32
  br label %21

21:                                               ; preds = %19, %16, %2
  %22 = phi i32 [ -1, %2 ], [ %20, %19 ], [ -1, %16 ]
  %23 = icmp sgt i32 %22, -1
  %24 = icmp sgt i32 %4, %22
  %25 = and i1 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !59
  %29 = zext nneg i32 %22 to i64
  %30 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %28, i64 %29, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !58
  br label %32

32:                                               ; preds = %21, %26
  %33 = phi i32 [ %31, %26 ], [ -1, %21 ]
  ret i32 %33
}

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef nonnull ptr @_ZNK14cDisplayString9getTagArgEPKci(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #10 align 2 !prof !40 {
  %4 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = zext nneg i32 %5 to i64
  br label %11

11:                                               ; preds = %7, %17
  %12 = phi i64 [ 0, %7 ], [ %18, %17 ]
  %13 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %9, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !56
  %15 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %14) #26
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = add nuw nsw i64 %12, 1
  %19 = icmp eq i64 %18, %10
  br i1 %19, label %22, label %11, !llvm.loop !84

20:                                               ; preds = %11
  %21 = trunc i64 %12 to i32
  br label %22

22:                                               ; preds = %20, %17, %3
  %23 = phi i32 [ -1, %3 ], [ %21, %20 ], [ -1, %17 ]
  %24 = icmp sle i32 %5, %23
  %25 = or i32 %23, %2
  %26 = icmp slt i32 %25, 0
  %27 = or i1 %24, %26
  br i1 %27, label %41, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !59
  %31 = zext nneg i32 %23 to i64
  %32 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %30, i64 %31, i32 1
  %33 = load i32, ptr %32, align 8, !tbaa !58
  %34 = icmp sgt i32 %33, %2
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = zext nneg i32 %2 to i64
  %37 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %30, i64 %31, i32 2, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !61
  %39 = icmp eq ptr %38, null
  %40 = select i1 %39, ptr @.str, ptr %38
  br label %41

41:                                               ; preds = %22, %28, %35
  %42 = phi ptr [ %40, %35 ], [ @.str, %22 ], [ @.str, %28 ]
  ret ptr %42
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN14cDisplayString9insertTagEPKci(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %3
  %6 = load i8, ptr %1, align 1, !tbaa !50
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %5
  %9 = load i8, ptr %1, align 1, !tbaa !50
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %8
  %12 = tail call ptr @__ctype_b_loc() #30
  %13 = load ptr, ptr %12, align 8, !tbaa !61
  br label %46

14:                                               ; preds = %5, %3
  %15 = tail call ptr @__cxa_allocate_exception(i64 128) #28
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %15, ptr noundef nonnull @.str.2)
          to label %16 unwind label %17

16:                                               ; preds = %14
  tail call void @__cxa_throw(ptr nonnull %15, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #29
  unreachable

17:                                               ; preds = %14
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %137

19:                                               ; preds = %46
  %20 = getelementptr inbounds i8, ptr %48, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !50
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %46, !llvm.loop !85

23:                                               ; preds = %19, %8
  %24 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 3
  %25 = load i32, ptr %24, align 8, !tbaa !60
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %23
  %28 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !59
  %30 = zext nneg i32 %25 to i64
  br label %31

31:                                               ; preds = %27, %37
  %32 = phi i64 [ 0, %27 ], [ %38, %37 ]
  %33 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %29, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !56
  %35 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %34) #26
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = add nuw nsw i64 %32, 1
  %39 = icmp eq i64 %38, %30
  br i1 %39, label %42, label %31, !llvm.loop !84

40:                                               ; preds = %31
  %41 = trunc i64 %32 to i32
  br label %42

42:                                               ; preds = %40, %37, %23
  %43 = phi i32 [ -1, %23 ], [ %41, %40 ], [ -1, %37 ]
  %44 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 3
  %45 = icmp eq i32 %43, -1
  br i1 %45, label %61, label %135

46:                                               ; preds = %11, %19
  %47 = phi i8 [ %9, %11 ], [ %21, %19 ]
  %48 = phi ptr [ %1, %11 ], [ %20, %19 ]
  %49 = zext i8 %47 to i64
  %50 = getelementptr inbounds i16, ptr %13, i64 %49
  %51 = load i16, ptr %50, align 2, !tbaa !67
  %52 = and i16 %51, 8
  %53 = icmp ne i16 %52, 0
  %54 = icmp eq i8 %47, 58
  %55 = or i1 %54, %53
  br i1 %55, label %19, label %56

56:                                               ; preds = %46
  %57 = tail call ptr @__cxa_allocate_exception(i64 128) #28
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %57, ptr noundef nonnull @.str.3, ptr noundef nonnull %1)
          to label %58 unwind label %59

58:                                               ; preds = %56
  tail call void @__cxa_throw(ptr nonnull %57, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #29
  unreachable

59:                                               ; preds = %56
  %60 = landingpad { ptr, i32 }
          cleanup
  br label %137

61:                                               ; preds = %42
  %62 = tail call i32 @llvm.smax.i32(i32 %2, i32 0)
  %63 = tail call i32 @llvm.smin.i32(i32 %62, i32 %25)
  %64 = add nsw i32 %25, 1
  %65 = sext i32 %64 to i64
  %66 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %65, i64 144)
  %67 = extractvalue { i64, i1 } %66, 1
  %68 = extractvalue { i64, i1 } %66, 0
  %69 = select i1 %67, i64 -1, i64 %68
  %70 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %69) #27
  %71 = icmp eq i32 %64, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %61
  %73 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %70, i64 %65
  br label %74

74:                                               ; preds = %74, %72
  %75 = phi ptr [ %70, %72 ], [ %77, %74 ]
  store ptr null, ptr %75, align 8, !tbaa !56
  %76 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %75, i64 0, i32 1
  store i32 0, ptr %76, align 8, !tbaa !58
  %77 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %75, i64 1
  %78 = icmp eq ptr %77, %73
  br i1 %78, label %79, label %74

79:                                               ; preds = %74, %61
  %80 = icmp sgt i32 %25, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %79
  %82 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !59
  %84 = zext nneg i32 %25 to i64
  br label %89

85:                                               ; preds = %89, %79
  %86 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !59
  %88 = icmp eq ptr %87, null
  br i1 %88, label %102, label %101

89:                                               ; preds = %81, %89
  %90 = phi i64 [ 0, %81 ], [ %98, %89 ]
  %91 = phi i32 [ 0, %81 ], [ %99, %89 ]
  %92 = icmp eq i32 %91, %63
  %93 = zext i1 %92 to i32
  %94 = add nsw i32 %91, %93
  %95 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %83, i64 %90
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %70, i64 %96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %97, ptr noundef nonnull align 8 dereferenceable(144) %95, i64 144, i1 false), !tbaa.struct !86
  %98 = add nuw nsw i64 %90, 1
  %99 = add nsw i32 %94, 1
  %100 = icmp eq i64 %98, %84
  br i1 %100, label %85, label %89, !llvm.loop !88

101:                                              ; preds = %85
  tail call void @_ZdaPv(ptr noundef %87) #31
  br label %102

102:                                              ; preds = %101, %85
  store ptr %70, ptr %86, align 8, !tbaa !59
  %103 = load i32, ptr %44, align 8, !tbaa !60
  %104 = add nsw i32 %103, 1
  store i32 %104, ptr %44, align 8, !tbaa !60
  %105 = load i8, ptr %1, align 1, !tbaa !50
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %102
  %108 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  %109 = add i64 %108, 1
  %110 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %109) #27
  %111 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %110, ptr noundef nonnull dereferenceable(1) %1) #28
  br label %112

112:                                              ; preds = %102, %107
  %113 = phi ptr [ %110, %107 ], [ null, %102 ]
  %114 = sext i32 %63 to i64
  %115 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %70, i64 %114
  store ptr %113, ptr %115, align 8, !tbaa !56
  %116 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %70, i64 %114, i32 1
  store i32 0, ptr %116, align 8, !tbaa !58
  br label %129

117:                                              ; preds = %129
  %118 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 5
  store i8 1, ptr %118, align 8, !tbaa !48
  %119 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !61
  %120 = getelementptr inbounds %class.cEnvir, ptr %119, i64 0, i32 2
  %121 = load i8, ptr %120, align 1, !tbaa !73, !range !69, !noundef !70
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %123, label %135

123:                                              ; preds = %117
  %124 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 6
  %125 = load ptr, ptr %124, align 8, !tbaa !49
  %126 = load ptr, ptr %119, align 8, !tbaa !76
  %127 = getelementptr inbounds ptr, ptr %126, i64 25
  %128 = load ptr, ptr %127, align 8
  tail call void %128(ptr noundef nonnull align 8 dereferenceable(288) %119, ptr noundef %125)
  br label %135

129:                                              ; preds = %112, %129
  %130 = phi i64 [ 0, %112 ], [ %133, %129 ]
  %131 = load ptr, ptr %86, align 8, !tbaa !59
  %132 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %131, i64 %114, i32 2, i64 %130
  store ptr null, ptr %132, align 8, !tbaa !61
  %133 = add nuw nsw i64 %130, 1
  %134 = icmp eq i64 %133, 16
  br i1 %134, label %117, label %129, !llvm.loop !89

135:                                              ; preds = %123, %117, %42
  %136 = phi i32 [ %43, %42 ], [ %63, %117 ], [ %63, %123 ]
  ret i32 %136

137:                                              ; preds = %59, %17
  %138 = phi ptr [ %57, %59 ], [ %15, %17 ]
  %139 = phi { ptr, i32 } [ %60, %59 ], [ %18, %17 ]
  tail call void @__cxa_free_exception(ptr %138) #28
  resume { ptr, i32 } %139
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN14cDisplayString9setTagArgEiiPKc(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly %3) local_unnamed_addr #4 align 2 !prof !40 {
  %5 = icmp slt i32 %1, 0
  %6 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8
  %8 = icmp sle i32 %7, %1
  %9 = select i1 %5, i1 true, i1 %8
  %10 = icmp ugt i32 %2, 15
  %11 = or i1 %10, %9
  br i1 %11, label %95, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !59
  %15 = zext nneg i32 %1 to i64
  %16 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %14, i64 %15, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !58
  %18 = icmp sgt i32 %17, %2
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  %20 = add nuw nsw i32 %2, 1
  store i32 %20, ptr %16, align 8, !tbaa !58
  br label %21

21:                                               ; preds = %19, %12
  %22 = zext nneg i32 %2 to i64
  %23 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %14, i64 %15, i32 2, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !61
  %25 = icmp eq ptr %24, null
  %26 = icmp eq ptr %3, null
  br i1 %25, label %34, label %27

27:                                               ; preds = %21
  br i1 %26, label %30, label %28

28:                                               ; preds = %27
  %29 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(1) %3) #26
  br label %39

30:                                               ; preds = %27
  %31 = load i8, ptr %24, align 1, !tbaa !50
  %32 = icmp ne i8 %31, 0
  %33 = zext i1 %32 to i32
  br label %39

34:                                               ; preds = %21
  br i1 %26, label %39, label %35

35:                                               ; preds = %34
  %36 = load i8, ptr %3, align 1, !tbaa !50
  %37 = icmp ne i8 %36, 0
  %38 = sext i1 %37 to i32
  br label %39

39:                                               ; preds = %28, %30, %34, %35
  %40 = phi i32 [ %29, %28 ], [ %33, %30 ], [ 0, %34 ], [ %38, %35 ]
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %95, label %42

42:                                               ; preds = %39
  br i1 %25, label %51, label %43

43:                                               ; preds = %42
  %44 = load ptr, ptr %0, align 8, !tbaa !51
  %45 = icmp ule ptr %44, %24
  %46 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8
  %48 = icmp uge ptr %47, %24
  %49 = select i1 %45, i1 %48, i1 false
  br i1 %49, label %51, label %50

50:                                               ; preds = %43
  tail call void @_ZdaPv(ptr noundef %24) #31
  br label %51

51:                                               ; preds = %50, %43, %42
  %52 = icmp eq ptr %3, null
  br i1 %52, label %61, label %53

53:                                               ; preds = %51
  %54 = load i8, ptr %3, align 1, !tbaa !50
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %53
  %57 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #26
  %58 = add i64 %57, 1
  %59 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %58) #27
  %60 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(1) %3) #28
  br label %61

61:                                               ; preds = %51, %53, %56
  %62 = phi ptr [ %59, %56 ], [ null, %53 ], [ null, %51 ]
  store ptr %62, ptr %23, align 8, !tbaa !61
  %63 = load i32, ptr %16, align 8, !tbaa !58
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %61
  %66 = zext nneg i32 %63 to i64
  br label %67

67:                                               ; preds = %65, %73
  %68 = phi i64 [ %66, %65 ], [ %69, %73 ]
  %69 = add nsw i64 %68, -1
  %70 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %14, i64 %15, i32 2, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !61
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = trunc i64 %69 to i32
  store i32 %74, ptr %16, align 8, !tbaa !58
  %75 = icmp sgt i64 %68, 1
  br i1 %75, label %67, label %78, !llvm.loop !90

76:                                               ; preds = %67
  %77 = trunc i64 %68 to i32
  br label %78

78:                                               ; preds = %76, %73, %61
  %79 = phi i32 [ %63, %61 ], [ %77, %76 ], [ 0, %73 ]
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = tail call noundef zeroext i1 @_ZN14cDisplayString9removeTagEi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1)
  br label %83

83:                                               ; preds = %81, %78
  %84 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 5
  store i8 1, ptr %84, align 8, !tbaa !48
  %85 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !61
  %86 = getelementptr inbounds %class.cEnvir, ptr %85, i64 0, i32 2
  %87 = load i8, ptr %86, align 1, !tbaa !73, !range !69, !noundef !70
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %83
  %90 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 6
  %91 = load ptr, ptr %90, align 8, !tbaa !49
  %92 = load ptr, ptr %85, align 8, !tbaa !76
  %93 = getelementptr inbounds ptr, ptr %92, i64 25
  %94 = load ptr, ptr %93, align 8
  tail call void %94(ptr noundef nonnull align 8 dereferenceable(288) %85, ptr noundef %91)
  br label %95

95:                                               ; preds = %89, %83, %39, %4
  %96 = xor i1 %11, true
  ret i1 %96
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN14cDisplayString9setTagArgEPKcil(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #4 align 2 !prof !40 {
  %5 = alloca [32 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #28
  %6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.1, i64 noundef %3) #28
  %7 = call noundef zeroext i1 @_ZN14cDisplayString9setTagArgEPKciS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #28
  ret i1 %7
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN14cDisplayString9removeTagEPKc(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 align 2 !prof !40 {
  %3 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !60
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %21

6:                                                ; preds = %2
  %7 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = zext nneg i32 %4 to i64
  br label %10

10:                                               ; preds = %6, %16
  %11 = phi i64 [ 0, %6 ], [ %17, %16 ]
  %12 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %8, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !56
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %13) #26
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, %9
  br i1 %18, label %21, label %10, !llvm.loop !84

19:                                               ; preds = %10
  %20 = trunc i64 %11 to i32
  br label %21

21:                                               ; preds = %19, %16, %2
  %22 = phi i32 [ -1, %2 ], [ %20, %19 ], [ -1, %16 ]
  %23 = tail call noundef zeroext i1 @_ZN14cDisplayString9removeTagEi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %22)
  ret i1 %23
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN14cDisplayString9removeTagEi(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #4 align 2 !prof !40 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %73, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !60
  %7 = icmp sgt i32 %6, %1
  br i1 %7, label %8, label %73

8:                                                ; preds = %4
  %9 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  %11 = zext nneg i32 %1 to i64
  %12 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !56
  %14 = load ptr, ptr %0, align 8, !tbaa !51
  %15 = icmp ugt ptr %14, %13
  %16 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8
  %18 = icmp uge ptr %17, %13
  %19 = icmp eq ptr %13, null
  %20 = select i1 %15, i1 %19, i1 %18
  br i1 %20, label %22, label %21

21:                                               ; preds = %8
  tail call void @_ZdaPv(ptr noundef %13) #31
  br label %22

22:                                               ; preds = %21, %8
  %23 = load ptr, ptr %9, align 8, !tbaa !59
  %24 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %23, i64 %11, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !58
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %43, %22
  %28 = load i32, ptr %5, align 8, !tbaa !60
  %29 = add nsw i32 %28, -1
  %30 = icmp sgt i32 %29, %1
  br i1 %30, label %63, label %50

31:                                               ; preds = %22, %43
  %32 = phi i64 [ %44, %43 ], [ 0, %22 ]
  %33 = phi ptr [ %45, %43 ], [ %23, %22 ]
  %34 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %33, i64 %11, i32 2, i64 %32
  %35 = load ptr, ptr %34, align 8, !tbaa !61
  %36 = load ptr, ptr %0, align 8, !tbaa !51
  %37 = icmp ugt ptr %36, %35
  %38 = load ptr, ptr %16, align 8
  %39 = icmp uge ptr %38, %35
  %40 = icmp eq ptr %35, null
  %41 = select i1 %37, i1 %40, i1 %39
  br i1 %41, label %43, label %42

42:                                               ; preds = %31
  tail call void @_ZdaPv(ptr noundef %35) #31
  br label %43

43:                                               ; preds = %31, %42
  %44 = add nuw nsw i64 %32, 1
  %45 = load ptr, ptr %9, align 8, !tbaa !59
  %46 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %45, i64 %11, i32 1
  %47 = load i32, ptr %46, align 8, !tbaa !58
  %48 = sext i32 %47 to i64
  %49 = icmp slt i64 %44, %48
  br i1 %49, label %31, label %27, !llvm.loop !91

50:                                               ; preds = %63, %27
  %51 = phi i32 [ %29, %27 ], [ %70, %63 ]
  store i32 %51, ptr %5, align 8, !tbaa !60
  %52 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 5
  store i8 1, ptr %52, align 8, !tbaa !48
  %53 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !61
  %54 = getelementptr inbounds %class.cEnvir, ptr %53, i64 0, i32 2
  %55 = load i8, ptr %54, align 1, !tbaa !73, !range !69, !noundef !70
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %50
  %58 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 6
  %59 = load ptr, ptr %58, align 8, !tbaa !49
  %60 = load ptr, ptr %53, align 8, !tbaa !76
  %61 = getelementptr inbounds ptr, ptr %60, i64 25
  %62 = load ptr, ptr %61, align 8
  tail call void %62(ptr noundef nonnull align 8 dereferenceable(288) %53, ptr noundef %59)
  br label %73

63:                                               ; preds = %27, %63
  %64 = phi i64 [ %66, %63 ], [ %11, %27 ]
  %65 = load ptr, ptr %9, align 8, !tbaa !59
  %66 = add nuw nsw i64 %64, 1
  %67 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %65, i64 %66
  %68 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %65, i64 %64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %68, ptr noundef nonnull align 8 dereferenceable(144) %67, i64 144, i1 false), !tbaa.struct !86
  %69 = load i32, ptr %5, align 8, !tbaa !60
  %70 = add nsw i32 %69, -1
  %71 = trunc i64 %66 to i32
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %63, label %50, !llvm.loop !92

73:                                               ; preds = %57, %50, %2, %4
  %74 = phi i1 [ false, %4 ], [ false, %2 ], [ true, %50 ], [ true, %57 ]
  ret i1 %74
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ...) unnamed_addr #0

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: cold mustprogress nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN14cDisplayString13strcatescapedEPcPKc(ptr nocapture noundef %0, ptr noundef readonly %1) local_unnamed_addr #16 align 2 !prof !40 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #26
  %6 = getelementptr inbounds i8, ptr %0, i64 %5
  br label %7

7:                                                ; preds = %13, %4
  %8 = phi ptr [ %6, %4 ], [ %17, %13 ]
  %9 = phi ptr [ %1, %4 ], [ %15, %13 ]
  %10 = load i8, ptr %9, align 1, !tbaa !50
  switch i8 %10, label %13 [
    i8 0, label %18
    i8 59, label %11
    i8 44, label %11
    i8 61, label %11
  ]

11:                                               ; preds = %7, %7, %7
  %12 = getelementptr inbounds i8, ptr %8, i64 1
  store i8 92, ptr %8, align 1, !tbaa !50
  br label %13

13:                                               ; preds = %7, %11
  %14 = phi ptr [ %12, %11 ], [ %8, %7 ]
  %15 = getelementptr inbounds i8, ptr %9, i64 1
  %16 = load i8, ptr %9, align 1, !tbaa !50
  %17 = getelementptr inbounds i8, ptr %14, i64 1
  store i8 %16, ptr %14, align 1, !tbaa !50
  br label %7, !llvm.loop !93

18:                                               ; preds = %7
  store i8 0, ptr %8, align 1, !tbaa !50
  br label %19

19:                                               ; preds = %2, %18
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK14cDisplayString4dumpEv(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #4 align 2 !prof !40 {
  %2 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !60
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 2
  br label %18

7:                                                ; preds = %33, %1
  %8 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 5
  %9 = load i8, ptr %8, align 8, !tbaa !48, !range !69, !noundef !70
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @_ZNK14cDisplayString8assembleEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  br label %12

12:                                               ; preds = %7, %11
  %13 = getelementptr inbounds %class.cDisplayString, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !41
  %15 = icmp eq ptr %14, null
  %16 = select i1 %15, ptr @.str, ptr %14
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull %16)
  ret void

18:                                               ; preds = %5, %33
  %19 = phi i64 [ 0, %5 ], [ %34, %33 ]
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10)
  br label %23

23:                                               ; preds = %21, %18
  %24 = load ptr, ptr %6, align 8, !tbaa !59
  %25 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %24, i64 %19
  %26 = load ptr, ptr %25, align 8, !tbaa !56
  %27 = trunc i64 %19 to i32
  %28 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %27, ptr noundef %26)
  %29 = load ptr, ptr %6, align 8, !tbaa !59
  %30 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %29, i64 %19, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !58
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %43, %23
  %34 = add nuw nsw i64 %19, 1
  %35 = load i32, ptr %2, align 8, !tbaa !60
  %36 = sext i32 %35 to i64
  %37 = icmp slt i64 %34, %36
  br i1 %37, label %18, label %7, !llvm.loop !94

38:                                               ; preds = %23, %43
  %39 = phi i64 [ %48, %43 ], [ 0, %23 ]
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = tail call i32 @putchar(i32 44)
  br label %43

43:                                               ; preds = %41, %38
  %44 = load ptr, ptr %6, align 8, !tbaa !59
  %45 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %44, i64 %19, i32 2, i64 %39
  %46 = load ptr, ptr %45, align 8, !tbaa !61
  %47 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef %46)
  %48 = add nuw nsw i64 %39, 1
  %49 = load ptr, ptr %6, align 8, !tbaa !59
  %50 = getelementptr inbounds %"struct.cDisplayString::Tag", ptr %49, i64 %19, i32 1
  %51 = load i32, ptr %50, align 8, !tbaa !58
  %52 = sext i32 %51 to i64
  %53 = icmp slt i64 %48, %52
  br i1 %53, label %38, label %33, !llvm.loop !95
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #17

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTV10cException, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !76
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !97
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10, !prof !101

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !102
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #31
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !97
  %14 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6, i32 2
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %20, !prof !101

16:                                               ; preds = %11
  %17 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !102
  %19 = icmp ult i64 %18, 16
  tail call void @llvm.assume(i1 %19)
  br label %21

20:                                               ; preds = %11
  tail call void @_ZdlPv(ptr noundef %13) #31
  br label %21

21:                                               ; preds = %16, %20
  %22 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !97
  %24 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 2
  %25 = icmp eq ptr %23, %24
  br i1 %25, label %26, label %30, !prof !103

26:                                               ; preds = %21
  %27 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !102
  %29 = icmp ult i64 %28, 16
  tail call void @llvm.assume(i1 %29)
  br label %31

30:                                               ; preds = %21
  tail call void @_ZdlPv(ptr noundef %23) #31
  br label %31

31:                                               ; preds = %26, %30
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #28
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  tail call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) #28
  tail call void @_ZdlPv(ptr noundef %0) #31
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException4whatEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !96 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !97
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException3dupEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %2 = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #27
  invoke void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(124) %0)
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #31
  resume { ptr, i32 } %5
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException12getErrorCodeEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !104
  ret i32 %3
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN10cException10setMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 !prof !40 {
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !102
  %6 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28
  %7 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %5, ptr noundef %1, i64 noundef %6)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN10cException14prependMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #28
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %7 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.14)
          to label %8 unwind label %75

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  store ptr %9, ptr %4, align 8, !tbaa !107, !alias.scope !108
  %10 = load ptr, ptr %7, align 8, !tbaa !97
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !102
  %16 = icmp ult i64 %15, 16
  call void @llvm.assume(i1 %16)
  %17 = add nuw nsw i64 %15, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(1) %11, i64 %17, i1 false)
  br label %20

18:                                               ; preds = %8
  store ptr %10, ptr %4, align 8, !tbaa !97, !alias.scope !108
  %19 = load i64, ptr %11, align 8, !tbaa !50
  store i64 %19, ptr %9, align 8, !tbaa !50, !alias.scope !108
  br label %20

20:                                               ; preds = %13, %18
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !102
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  store i64 %22, ptr %23, align 8, !tbaa !102, !alias.scope !108
  store ptr %11, ptr %7, align 8, !tbaa !97
  store i64 0, ptr %21, align 8, !tbaa !102
  store i8 0, ptr %11, align 8, !tbaa !50
  %24 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  call void @llvm.experimental.noalias.scope.decl(metadata !111)
  %25 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !102, !noalias !111
  %27 = load i64, ptr %23, align 8, !tbaa !102, !noalias !111
  %28 = sub i64 4611686018427387903, %27
  %29 = icmp ult i64 %28, %26
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #29
          to label %31 unwind label %77

31:                                               ; preds = %30
  unreachable

32:                                               ; preds = %20
  %33 = load ptr, ptr %24, align 8, !tbaa !97, !noalias !111
  %34 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %33, i64 noundef %26)
          to label %35 unwind label %77

35:                                               ; preds = %32
  %36 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  store ptr %36, ptr %3, align 8, !tbaa !107, !alias.scope !111
  %37 = load ptr, ptr %34, align 8, !tbaa !97
  %38 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 2
  %39 = icmp eq ptr %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !102
  %43 = icmp ult i64 %42, 16
  call void @llvm.assume(i1 %43)
  %44 = add nuw nsw i64 %42, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %36, ptr noundef nonnull align 8 dereferenceable(1) %38, i64 %44, i1 false)
  br label %47

45:                                               ; preds = %35
  store ptr %37, ptr %3, align 8, !tbaa !97, !alias.scope !111
  %46 = load i64, ptr %38, align 8, !tbaa !50
  store i64 %46, ptr %36, align 8, !tbaa !50, !alias.scope !111
  br label %47

47:                                               ; preds = %40, %45
  %48 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 1
  %49 = load i64, ptr %48, align 8, !tbaa !102
  %50 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  store i64 %49, ptr %50, align 8, !tbaa !102, !alias.scope !111
  store ptr %38, ptr %34, align 8, !tbaa !97
  store i64 0, ptr %48, align 8, !tbaa !102
  store i8 0, ptr %38, align 8, !tbaa !50
  %51 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %3) #28
  %52 = load ptr, ptr %3, align 8, !tbaa !97
  %53 = icmp eq ptr %52, %36
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i64, ptr %50, align 8, !tbaa !102
  %56 = icmp ult i64 %55, 16
  call void @llvm.assume(i1 %56)
  br label %58

57:                                               ; preds = %47
  call void @_ZdlPv(ptr noundef %52) #31
  br label %58

58:                                               ; preds = %54, %57
  %59 = load ptr, ptr %4, align 8, !tbaa !97
  %60 = icmp eq ptr %59, %9
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i64, ptr %23, align 8, !tbaa !102
  %63 = icmp ult i64 %62, 16
  call void @llvm.assume(i1 %63)
  br label %65

64:                                               ; preds = %58
  call void @_ZdlPv(ptr noundef %59) #31
  br label %65

65:                                               ; preds = %61, %64
  %66 = load ptr, ptr %5, align 8, !tbaa !97
  %67 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %68 = icmp eq ptr %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %71 = load i64, ptr %70, align 8, !tbaa !102
  %72 = icmp ult i64 %71, 16
  call void @llvm.assume(i1 %72)
  br label %74

73:                                               ; preds = %65
  call void @_ZdlPv(ptr noundef %66) #31
  br label %74

74:                                               ; preds = %69, %73
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #28
  ret void

75:                                               ; preds = %2
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %85

77:                                               ; preds = %32, %30
  %78 = landingpad { ptr, i32 }
          cleanup
  %79 = load ptr, ptr %4, align 8, !tbaa !97
  %80 = icmp eq ptr %79, %9
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i64, ptr %23, align 8, !tbaa !102
  %83 = icmp ult i64 %82, 16
  call void @llvm.assume(i1 %83)
  br label %85

84:                                               ; preds = %77
  call void @_ZdlPv(ptr noundef %79) #31
  br label %85

85:                                               ; preds = %84, %81, %75
  %86 = phi { ptr, i32 } [ %76, %75 ], [ %78, %81 ], [ %78, %84 ]
  %87 = load ptr, ptr %5, align 8, !tbaa !97
  %88 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %89 = icmp eq ptr %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %92 = load i64, ptr %91, align 8, !tbaa !102
  %93 = icmp ult i64 %92, 16
  call void @llvm.assume(i1 %93)
  br label %95

94:                                               ; preds = %85
  call void @_ZdlPv(ptr noundef %87) #31
  br label %95

95:                                               ; preds = %94, %90
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #28
  resume { ptr, i32 } %86
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10cException10hasContextEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !96 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 8, !tbaa !114, !range !69, !noundef !70
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException19getContextClassNameEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !97
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException18getContextFullPathEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !97
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException11getModuleIDEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !115
  ret i32 %3
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

declare void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %5, ptr %0, align 8, !tbaa !107
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.16) #29
  unreachable

8:                                                ; preds = %3
  %9 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #28
  store i64 %9, ptr %4, align 8, !tbaa !116
  %10 = icmp ugt i64 %9, 15
  br i1 %10, label %11, label %14, !prof !117

11:                                               ; preds = %8
  %12 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %12, ptr %0, align 8, !tbaa !97
  %13 = load i64, ptr %4, align 8, !tbaa !116
  store i64 %13, ptr %5, align 8, !tbaa !50
  br label %14

14:                                               ; preds = %11, %8
  %15 = load ptr, ptr %0, align 8, !tbaa !97
  switch i64 %9, label %18 [
    i64 1, label %16
    i64 0, label %19
  ], !prof !118

16:                                               ; preds = %14
  %17 = load i8, ptr %1, align 1, !tbaa !50
  store i8 %17, ptr %15, align 1, !tbaa !50
  br label %19

18:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %15, ptr nonnull align 1 %1, i64 %9, i1 false), !prof !119
  br label %19

19:                                               ; preds = %14, %16, %18
  %20 = load i64, ptr %4, align 8, !tbaa !116
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %20, ptr %21, align 8, !tbaa !102
  %22 = load ptr, ptr %0, align 8, !tbaa !97
  %23 = getelementptr inbounds i8, ptr %22, i64 %20
  store i8 0, ptr %23, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #28
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #18 align 2

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #19

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #20

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_cdisplaystring.cc() #21 section ".text.startup" !prof !96 !PGOFuncName !120 {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #28
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #23

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #25

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold mustprogress nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #26 = { nounwind willreturn memory(read) }
attributes #27 = { builtin allocsize(0) }
attributes #28 = { nounwind }
attributes #29 = { noreturn }
attributes #30 = { nounwind willreturn memory(none) }
attributes #31 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!39}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 91660338266}
!8 = !{!"MaxCount", i64 5757400812}
!9 = !{!"MaxInternalCount", i64 5721102715}
!10 = !{!"MaxFunctionCount", i64 5757400812}
!11 = !{!"NumCounts", i64 33643}
!12 = !{!"NumFunctions", i64 6537}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 5757400812, i32 1}
!18 = !{i32 100000, i64 5721102715, i32 2}
!19 = !{i32 200000, i64 5600627346, i32 4}
!20 = !{i32 300000, i64 2776518954, i32 6}
!21 = !{i32 400000, i64 1274069204, i32 12}
!22 = !{i32 500000, i64 494191607, i32 29}
!23 = !{i32 600000, i64 467312602, i32 58}
!24 = !{i32 700000, i64 347140078, i32 66}
!25 = !{i32 800000, i64 202389109, i32 102}
!26 = !{i32 900000, i64 186403596, i32 151}
!27 = !{i32 950000, i64 106255111, i32 185}
!28 = !{i32 990000, i64 47565111, i32 237}
!29 = !{i32 999000, i64 420988, i32 424}
!30 = !{i32 999900, i64 30990, i32 1111}
!31 = !{i32 999990, i64 4995, i32 1638}
!32 = !{i32 999999, i64 219, i32 2228}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38}
!35 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZdlPv, i64 1}
!36 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt9exceptionD2Ev, i64 1}
!37 = !{ptr @_GLOBAL__sub_I_cdisplaystring.cc, ptr @_ZNSt8ios_base4InitC1Ev, i64 1}
!38 = !{ptr @_GLOBAL__sub_I_cdisplaystring.cc, ptr @__cxa_atexit, i64 1}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 0}
!41 = !{!42, !43, i64 32}
!42 = !{!"_ZTS14cDisplayString", !43, i64 0, !43, i64 8, !43, i64 16, !46, i64 24, !43, i64 32, !47, i64 40, !43, i64 48}
!43 = !{!"any pointer", !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C++ TBAA"}
!46 = !{!"int", !44, i64 0}
!47 = !{!"bool", !44, i64 0}
!48 = !{!42, !47, i64 40}
!49 = !{!42, !43, i64 48}
!50 = !{!44, !44, i64 0}
!51 = !{!42, !43, i64 0}
!52 = !{!42, !43, i64 8}
!53 = distinct !{!53, !54, !55}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!"llvm.loop.unroll.disable"}
!56 = !{!57, !43, i64 0}
!57 = !{!"_ZTSN14cDisplayString3TagE", !43, i64 0, !46, i64 8, !44, i64 16}
!58 = !{!57, !46, i64 8}
!59 = !{!42, !43, i64 16}
!60 = !{!42, !46, i64 24}
!61 = !{!43, !43, i64 0}
!62 = distinct !{!62, !54, !55}
!63 = distinct !{!63, !54, !55}
!64 = distinct !{!64, !54, !55}
!65 = distinct !{!65, !54, !55}
!66 = distinct !{!66, !54, !55}
!67 = !{!68, !68, i64 0}
!68 = !{!"short", !44, i64 0}
!69 = !{i8 0, i8 2}
!70 = !{}
!71 = distinct !{!71, !54, !55}
!72 = distinct !{!72, !54, !55}
!73 = !{!74, !47, i64 9}
!74 = !{!"_ZTS6cEnvir", !47, i64 8, !47, i64 9, !47, i64 10, !75, i64 16}
!75 = !{!"_ZTSSo"}
!76 = !{!77, !77, i64 0}
!77 = !{!"vtable pointer", !45, i64 0}
!78 = distinct !{!78, !54, !55}
!79 = distinct !{!79, !54, !55}
!80 = distinct !{!80, !54, !55}
!81 = distinct !{!81, !54, !55}
!82 = distinct !{!82, !54, !55}
!83 = distinct !{!83, !54, !55}
!84 = distinct !{!84, !54, !55}
!85 = distinct !{!85, !54, !55}
!86 = !{i64 0, i64 8, !61, i64 8, i64 4, !87, i64 16, i64 128, !50}
!87 = !{!46, !46, i64 0}
!88 = distinct !{!88, !54, !55}
!89 = distinct !{!89, !54, !55}
!90 = distinct !{!90, !54, !55}
!91 = distinct !{!91, !54, !55}
!92 = distinct !{!92, !54, !55}
!93 = distinct !{!93, !54, !55}
!94 = distinct !{!94, !54, !55}
!95 = distinct !{!95, !54, !55}
!96 = !{!"function_entry_count", i64 1}
!97 = !{!98, !43, i64 0}
!98 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !99, i64 0, !100, i64 8, !44, i64 16}
!99 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !43, i64 0}
!100 = !{!"long", !44, i64 0}
!101 = !{!"branch_weights", i32 1, i32 0}
!102 = !{!98, !100, i64 8}
!103 = !{!"branch_weights", i32 0, i32 1}
!104 = !{!105, !46, i64 8}
!105 = !{!"_ZTS10cException", !106, i64 0, !46, i64 8, !98, i64 16, !47, i64 48, !98, i64 56, !98, i64 88, !46, i64 120}
!106 = !{!"_ZTSSt9exception"}
!107 = !{!99, !43, i64 0}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!110 = distinct !{!110, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!111 = !{!112}
!112 = distinct !{!112, !113, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!113 = distinct !{!113, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!114 = !{!105, !47, i64 48}
!115 = !{!105, !46, i64 120}
!116 = !{!100, !100, i64 0}
!117 = !{!"branch_weights", i32 1257662, i32 631781}
!118 = !{!"branch_weights", i32 1856863, i32 32338, i32 242}
!119 = !{!"VP", i32 1, i64 0, i64 17, i64 0, i64 16, i64 0, i64 9, i64 0, i64 8, i64 0}
!120 = !{!"simulator/cdisplaystring.cc;_GLOBAL__sub_I_cdisplaystring.cc"}
