; ModuleID = 'SubstitutionGroupComparator.cpp'
source_filename = "SubstitutionGroupComparator.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::SubstitutionGroupComparator" = type { ptr, ptr }
%"class.xercesc_2_7::SchemaElementDecl" = type <{ %"class.xercesc_2_7::XMLElementDecl.base", [3 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [5 x i8] }>
%"class.xercesc_2_7::XMLElementDecl.base" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8 }>
%"class.xercesc_2_7::XMLElementDecl" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8, [7 x i8] }>
%"class.xercesc_2_7::ComplexTypeInfo" = type { %"class.xercesc_2_7::XSerializable", i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::SchemaGrammar" = type { %"class.xercesc_2_7::Grammar", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %"class.xercesc_2_7::DatatypeValidatorFactory" }
%"class.xercesc_2_7::Grammar" = type { %"class.xercesc_2_7::XSerializable" }
%"class.xercesc_2_7::DatatypeValidatorFactory" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr }
%"class.xercesc_2_7::ValueVectorOf" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::RefHash2KeysTableOf" = type { ptr, i8, ptr, i32, i32, ptr }
%"struct.xercesc_2_7::RefHash2KeysTableBucketElem" = type <{ ptr, ptr, ptr, i32, [4 x i8] }>

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_17SchemaElementDeclEE9elementAtEj = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEE14findBucketElemEPKviRj = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZTSN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTIN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

@.str = private unnamed_addr constant [32 x i8] c"SubstitutionGroupComparator.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_715XMLContentModel10gEOCFakeIdE = external local_unnamed_addr constant i32, align 4
@_ZN11xercesc_2_715XMLContentModel14gEpsilonFakeIdE = external local_unnamed_addr constant i32, align 4
@_ZN11xercesc_2_714XMLElementDecl14fgPCDataElemIdE = external local_unnamed_addr constant i32, align 4
@_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE = external local_unnamed_addr constant i32, align 4
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2
@.str.1 = private unnamed_addr constant [31 x i8] c"./xercesc/util/ValueVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_727SubstitutionGroupComparator14isEquivalentToEPNS_5QNameES2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = icmp ne ptr %1, null
  %5 = icmp ne ptr %2, null
  %6 = or i1 %4, %5
  br i1 %6, label %7, label %187

7:                                                ; preds = %3
  %8 = icmp eq ptr %1, null
  %9 = xor i1 %8, %5
  br i1 %9, label %10, label %187

10:                                               ; preds = %7
  %11 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %1, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  %13 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %2, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  %15 = icmp eq ptr %12, null
  %16 = icmp eq ptr %14, null
  %17 = or i1 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %10
  %19 = load i16, ptr %12, align 2, !tbaa !42
  %20 = load i16, ptr %14, align 2, !tbaa !42
  %21 = icmp eq i16 %19, %20
  br i1 %21, label %30, label %47

22:                                               ; preds = %10
  br i1 %15, label %26, label %23

23:                                               ; preds = %22
  %24 = load i16, ptr %12, align 2, !tbaa !42
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %23, %22
  br i1 %16, label %41, label %27

27:                                               ; preds = %26
  %28 = load i16, ptr %14, align 2, !tbaa !42
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %41, label %47

30:                                               ; preds = %18, %35
  %31 = phi i16 [ %38, %35 ], [ %19, %18 ]
  %32 = phi ptr [ %37, %35 ], [ %14, %18 ]
  %33 = phi ptr [ %36, %35 ], [ %12, %18 ]
  %34 = icmp eq i16 %31, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds i16, ptr %33, i64 1
  %37 = getelementptr inbounds i16, ptr %32, i64 1
  %38 = load i16, ptr %36, align 2, !tbaa !42
  %39 = load i16, ptr %37, align 2, !tbaa !42
  %40 = icmp eq i16 %38, %39
  br i1 %40, label %30, label %47, !llvm.loop !44

41:                                               ; preds = %30, %27, %26
  %42 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %1, i64 0, i32 4
  %43 = load i32, ptr %42, align 4, !tbaa !47
  %44 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %2, i64 0, i32 4
  %45 = load i32, ptr %44, align 4, !tbaa !47
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %187, label %47

47:                                               ; preds = %35, %18, %27, %23, %41
  %48 = load ptr, ptr %0, align 8, !tbaa !48
  %49 = icmp eq ptr %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %"class.xercesc_2_7::SubstitutionGroupComparator", ptr %0, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !50
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %50, %47
  %55 = tail call ptr @__cxa_allocate_exception(i64 48) #5
  %56 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %1, i64 0, i32 8
  %57 = load ptr, ptr %56, align 8, !tbaa !51
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %55, ptr noundef nonnull @.str, i32 noundef 113, i32 noundef 160, ptr noundef %57)
          to label %58 unwind label %59

58:                                               ; preds = %54
  tail call void @__cxa_throw(ptr nonnull %55, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #6
  unreachable

59:                                               ; preds = %54
  %60 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %55) #5
  resume { ptr, i32 } %60

61:                                               ; preds = %50
  %62 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %1, i64 0, i32 4
  %63 = load i32, ptr %62, align 4, !tbaa !47
  %64 = load i32, ptr @_ZN11xercesc_2_715XMLContentModel10gEOCFakeIdE, align 4, !tbaa !52
  %65 = icmp eq i32 %63, %64
  %66 = load i32, ptr @_ZN11xercesc_2_715XMLContentModel14gEpsilonFakeIdE, align 4
  %67 = icmp eq i32 %63, %66
  %68 = select i1 %65, i1 true, i1 %67
  %69 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl14fgPCDataElemIdE, align 4
  %70 = icmp eq i32 %63, %69
  %71 = select i1 %68, i1 true, i1 %70
  %72 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE, align 4
  %73 = icmp eq i32 %63, %72
  %74 = select i1 %71, i1 true, i1 %73
  br i1 %74, label %187, label %75

75:                                               ; preds = %61
  %76 = load ptr, ptr %52, align 8, !tbaa !53
  %77 = getelementptr inbounds ptr, ptr %76, i64 10
  %78 = load ptr, ptr %77, align 8
  %79 = tail call noundef ptr %78(ptr noundef nonnull align 8 dereferenceable(40) %52, i32 noundef %63)
  %80 = load ptr, ptr %11, align 8, !tbaa !35
  %81 = icmp eq ptr %79, null
  br i1 %81, label %187, label %82

82:                                               ; preds = %75
  %83 = load ptr, ptr %0, align 8, !tbaa !48
  %84 = tail call noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80) %83, ptr noundef nonnull %79)
  %85 = icmp eq ptr %84, null
  br i1 %85, label %187, label %86

86:                                               ; preds = %82
  %87 = load ptr, ptr %84, align 8, !tbaa !53
  %88 = getelementptr inbounds ptr, ptr %87, i64 5
  %89 = load ptr, ptr %88, align 8
  %90 = tail call noundef i32 %89(ptr noundef nonnull align 8 dereferenceable(160) %84)
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %187, label %92

92:                                               ; preds = %86
  %93 = load ptr, ptr %84, align 8, !tbaa !53
  %94 = getelementptr inbounds ptr, ptr %93, i64 11
  %95 = load ptr, ptr %94, align 8
  %96 = tail call noundef ptr %95(ptr noundef nonnull align 8 dereferenceable(160) %84, i32 noundef %63, ptr noundef %80, ptr noundef null, i32 noundef -2)
  %97 = icmp eq ptr %96, null
  br i1 %97, label %187, label %98

98:                                               ; preds = %92
  %99 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %96, i64 0, i32 18
  %100 = load ptr, ptr %99, align 8, !tbaa !55
  %101 = icmp eq ptr %100, null
  br i1 %101, label %187, label %102

102:                                              ; preds = %98
  %103 = load ptr, ptr %13, align 8, !tbaa !35
  %104 = icmp eq ptr %103, null
  %105 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %2, i64 0, i32 4
  br label %106

106:                                              ; preds = %102, %147
  %107 = phi ptr [ %100, %102 ], [ %149, %147 ]
  %108 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %107, i64 0, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !64
  %110 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %109, i64 0, i32 6
  %111 = load ptr, ptr %110, align 8, !tbaa !35
  %112 = icmp eq ptr %111, null
  %113 = or i1 %112, %104
  br i1 %113, label %118, label %114

114:                                              ; preds = %106
  %115 = load i16, ptr %111, align 2, !tbaa !42
  %116 = load i16, ptr %103, align 2, !tbaa !42
  %117 = icmp eq i16 %115, %116
  br i1 %117, label %126, label %147

118:                                              ; preds = %106
  br i1 %112, label %122, label %119

119:                                              ; preds = %118
  %120 = load i16, ptr %111, align 2, !tbaa !42
  %121 = icmp eq i16 %120, 0
  br i1 %121, label %122, label %147

122:                                              ; preds = %119, %118
  br i1 %104, label %137, label %123

123:                                              ; preds = %122
  %124 = load i16, ptr %103, align 2, !tbaa !42
  %125 = icmp eq i16 %124, 0
  br i1 %125, label %137, label %147

126:                                              ; preds = %114, %131
  %127 = phi i16 [ %134, %131 ], [ %115, %114 ]
  %128 = phi ptr [ %133, %131 ], [ %103, %114 ]
  %129 = phi ptr [ %132, %131 ], [ %111, %114 ]
  %130 = icmp eq i16 %127, 0
  br i1 %130, label %137, label %131

131:                                              ; preds = %126
  %132 = getelementptr inbounds i16, ptr %129, i64 1
  %133 = getelementptr inbounds i16, ptr %128, i64 1
  %134 = load i16, ptr %132, align 2, !tbaa !42
  %135 = load i16, ptr %133, align 2, !tbaa !42
  %136 = icmp eq i16 %134, %135
  br i1 %136, label %126, label %147, !llvm.loop !44

137:                                              ; preds = %126, %123, %122
  %138 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %109, i64 0, i32 4
  %139 = load i32, ptr %138, align 4, !tbaa !47
  %140 = load i32, ptr %105, align 4, !tbaa !47
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %137
  %143 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %107, i64 0, i32 8
  %144 = load i32, ptr %143, align 4, !tbaa !65
  %145 = and i32 %144, 1
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %151, label %187

147:                                              ; preds = %131, %114, %123, %119, %137
  %148 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %107, i64 0, i32 18
  %149 = load ptr, ptr %148, align 8, !tbaa !55
  %150 = icmp eq ptr %149, null
  br i1 %150, label %187, label %106, !llvm.loop !66

151:                                              ; preds = %142
  %152 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %96, i64 0, i32 12
  %153 = load ptr, ptr %152, align 8, !tbaa !67
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %166

155:                                              ; preds = %151
  %156 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %96, i64 0, i32 19
  %157 = load ptr, ptr %156, align 8, !tbaa !68
  %158 = icmp eq ptr %157, null
  br i1 %158, label %187, label %159

159:                                              ; preds = %155
  %160 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %107, i64 0, i32 19
  %161 = load ptr, ptr %160, align 8, !tbaa !68
  %162 = icmp eq ptr %157, %161
  %163 = and i32 %144, 4
  %164 = icmp eq i32 %163, 0
  %165 = or i1 %164, %162
  br label %187

166:                                              ; preds = %151
  %167 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %153, i64 0, i32 6
  %168 = load i32, ptr %167, align 8, !tbaa !69
  %169 = and i32 %168, %144
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %187

171:                                              ; preds = %166
  %172 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %107, i64 0, i32 12
  %173 = load ptr, ptr %172, align 8, !tbaa !67
  %174 = icmp eq ptr %153, %173
  br i1 %174, label %187, label %175

175:                                              ; preds = %171, %181
  %176 = phi ptr [ %183, %181 ], [ %153, %171 ]
  %177 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %176, i64 0, i32 7
  %178 = load i32, ptr %177, align 4, !tbaa !71
  %179 = and i32 %178, %168
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %175
  %182 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %176, i64 0, i32 19
  %183 = load ptr, ptr %182, align 8, !tbaa !72
  %184 = icmp eq ptr %183, null
  %185 = icmp eq ptr %183, %173
  %186 = or i1 %184, %185
  br i1 %186, label %187, label %175, !llvm.loop !73

187:                                              ; preds = %147, %175, %181, %98, %171, %142, %61, %86, %82, %166, %155, %159, %92, %75, %41, %7, %3
  %188 = phi i1 [ true, %3 ], [ false, %7 ], [ true, %41 ], [ false, %61 ], [ false, %75 ], [ false, %86 ], [ false, %82 ], [ false, %92 ], [ false, %142 ], [ true, %155 ], [ %165, %159 ], [ false, %166 ], [ %174, %171 ], [ false, %98 ], [ %186, %181 ], [ false, %175 ], [ false, %147 ]
  ret i1 %188
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !53
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #5
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_727SubstitutionGroupComparator19isAllowedByWildcardEPNS_13SchemaGrammarEPNS_5QNameEjb(ptr nocapture noundef nonnull readnone align 8 dereferenceable(16) %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #1 align 2 !prof !34 {
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %2, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !47
  %9 = xor i1 %4, true
  %10 = icmp eq i32 %8, %3
  %11 = and i1 %10, %9
  br i1 %11, label %67, label %12

12:                                               ; preds = %5
  %13 = or i1 %10, %9
  %14 = load i32, ptr @_ZN11xercesc_2_715XMLContentModel10gEOCFakeIdE, align 4
  %15 = icmp eq i32 %8, %14
  %16 = select i1 %13, i1 true, i1 %15
  %17 = load i32, ptr @_ZN11xercesc_2_715XMLContentModel14gEpsilonFakeIdE, align 4
  %18 = icmp eq i32 %8, %17
  %19 = select i1 %16, i1 true, i1 %18
  %20 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl14fgPCDataElemIdE, align 4
  %21 = icmp eq i32 %8, %20
  %22 = select i1 %19, i1 true, i1 %21
  %23 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE, align 4
  %24 = icmp eq i32 %8, %23
  %25 = select i1 %22, i1 true, i1 %24
  br i1 %25, label %26, label %67

26:                                               ; preds = %12
  %27 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %1, i64 0, i32 11
  %28 = load ptr, ptr %27, align 8, !tbaa !74
  %29 = icmp eq ptr %28, null
  br i1 %29, label %67, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %2, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #5
  %33 = call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %28, ptr noundef %32, i32 noundef %8, ptr noundef nonnull align 4 dereferenceable(4) %6)
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = load ptr, ptr %33, align 8, !tbaa !78
  br label %37

37:                                               ; preds = %30, %35
  %38 = phi ptr [ %36, %35 ], [ null, %30 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #5
  %39 = icmp eq ptr %38, null
  br i1 %39, label %67, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %38, i64 0, i32 1
  %42 = load i32, ptr %41, align 4, !tbaa !80
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %47, label %67

44:                                               ; preds = %57
  %45 = add nuw nsw i32 %48, 1
  %46 = icmp eq i32 %45, %42
  br i1 %46, label %67, label %47, !llvm.loop !82

47:                                               ; preds = %40, %44
  %48 = phi i32 [ %45, %44 ], [ 0, %40 ]
  %49 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_17SchemaElementDeclEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %38, i32 noundef %48)
  %50 = load ptr, ptr %49, align 8, !tbaa !83
  %51 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !64
  %53 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %52, i64 0, i32 4
  %54 = load i32, ptr %53, align 4, !tbaa !47
  %55 = icmp eq i32 %54, %3
  %56 = and i1 %55, %9
  br i1 %56, label %67, label %57

57:                                               ; preds = %47
  %58 = or i1 %55, %9
  %59 = icmp eq i32 %54, %14
  %60 = select i1 %58, i1 true, i1 %59
  %61 = icmp eq i32 %54, %17
  %62 = select i1 %60, i1 true, i1 %61
  %63 = icmp eq i32 %54, %20
  %64 = select i1 %62, i1 true, i1 %63
  %65 = icmp eq i32 %54, %23
  %66 = select i1 %64, i1 true, i1 %65
  br i1 %66, label %44, label %67

67:                                               ; preds = %44, %47, %57, %40, %26, %37, %5, %12
  %68 = phi i1 [ true, %12 ], [ true, %5 ], [ false, %26 ], [ false, %37 ], [ %43, %40 ], [ false, %44 ], [ true, %47 ], [ true, %57 ]
  ret i1 %68
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_17SchemaElementDeclEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !84 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !80
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !85

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #5
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !86
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 206, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #6
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #5
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !87
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  ret ptr %17
}

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #5
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #5
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !34 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !88
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !53
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #5
  resume { ptr, i32 } %7
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 comdat align 2 !prof !34 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !91
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !93
  %9 = load ptr, ptr %0, align 8, !tbaa !94
  %10 = load ptr, ptr %6, align 8, !tbaa !53
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, i32 noundef %8, ptr noundef %9)
  store i32 %12, ptr %3, align 4, !tbaa !52
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !95
  %15 = zext i32 %12 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !83
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %4, %32
  %20 = phi ptr [ %34, %32 ], [ %17, %4 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !96
  %23 = icmp eq i32 %22, %2
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load ptr, ptr %5, align 8, !tbaa !91
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !97
  %28 = load ptr, ptr %25, align 8, !tbaa !53
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef zeroext i1 %30(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %1, ptr noundef %27)
  br i1 %31, label %36, label %32

32:                                               ; preds = %24, %19
  %33 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !83
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %19, !llvm.loop !98

36:                                               ; preds = %24, %32, %4
  %37 = phi ptr [ null, %4 ], [ %20, %24 ], [ null, %32 ]
  ret ptr %37
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !53
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #5
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #5
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #5
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !34 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !88
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !53
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #5
  resume { ptr, i32 } %7
}

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn }

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
!35 = !{!36, !41, i64 32}
!36 = !{!"_ZTSN11xercesc_2_75QNameE", !37, i64 0, !38, i64 8, !38, i64 12, !38, i64 16, !38, i64 20, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48}
!37 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!38 = !{!"int", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C++ TBAA"}
!41 = !{!"any pointer", !39, i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"short", !39, i64 0}
!44 = distinct !{!44, !45, !46}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = !{!36, !38, i64 20}
!48 = !{!49, !41, i64 0}
!49 = !{!"_ZTSN11xercesc_2_727SubstitutionGroupComparatorE", !41, i64 0, !41, i64 8}
!50 = !{!49, !41, i64 8}
!51 = !{!36, !41, i64 48}
!52 = !{!38, !38, i64 0}
!53 = !{!54, !54, i64 0}
!54 = !{!"vtable pointer", !40, i64 0}
!55 = !{!56, !41, i64 128}
!56 = !{!"_ZTSN11xercesc_2_717SchemaElementDeclE", !57, i64 0, !60, i64 36, !61, i64 40, !62, i64 44, !63, i64 48, !38, i64 52, !38, i64 56, !38, i64 60, !38, i64 64, !41, i64 72, !41, i64 80, !41, i64 88, !41, i64 96, !41, i64 104, !41, i64 112, !41, i64 120, !41, i64 128, !41, i64 136, !59, i64 144, !59, i64 145, !59, i64 146}
!57 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !37, i64 0, !41, i64 8, !41, i64 16, !58, i64 24, !38, i64 28, !59, i64 32}
!58 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !39, i64 0}
!59 = !{!"bool", !39, i64 0}
!60 = !{!"_ZTSN11xercesc_2_717SchemaElementDecl10ModelTypesE", !39, i64 0}
!61 = !{!"_ZTSN11xercesc_2_78PSVIDefs9PSVIScopeE", !39, i64 0}
!62 = !{!"_ZTSN11xercesc_2_78PSVIDefs8ValidityE", !39, i64 0}
!63 = !{!"_ZTSN11xercesc_2_78PSVIDefs10ValidationE", !39, i64 0}
!64 = !{!57, !41, i64 16}
!65 = !{!56, !38, i64 60}
!66 = distinct !{!66, !45, !46}
!67 = !{!56, !41, i64 80}
!68 = !{!56, !41, i64 136}
!69 = !{!70, !38, i64 16}
!70 = !{!"_ZTSN11xercesc_2_715ComplexTypeInfoE", !37, i64 0, !59, i64 8, !59, i64 9, !59, i64 10, !59, i64 11, !59, i64 12, !38, i64 16, !38, i64 20, !38, i64 24, !38, i64 28, !38, i64 32, !38, i64 36, !38, i64 40, !38, i64 44, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !41, i64 88, !41, i64 96, !41, i64 104, !41, i64 112, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !41, i64 152, !41, i64 160, !41, i64 168}
!71 = !{!70, !38, i64 20}
!72 = !{!70, !41, i64 88}
!73 = distinct !{!73, !45, !46}
!74 = !{!75, !41, i64 88}
!75 = !{!"_ZTSN11xercesc_2_713SchemaGrammarE", !76, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !41, i64 88, !41, i64 96, !41, i64 104, !41, i64 112, !41, i64 120, !59, i64 128, !77, i64 136}
!76 = !{!"_ZTSN11xercesc_2_77GrammarE", !37, i64 0}
!77 = !{!"_ZTSN11xercesc_2_724DatatypeValidatorFactoryE", !37, i64 0, !41, i64 8, !41, i64 16}
!78 = !{!79, !41, i64 0}
!79 = !{!"_ZTSN11xercesc_2_727RefHash2KeysTableBucketElemINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEEE", !41, i64 0, !41, i64 8, !41, i64 16, !38, i64 24}
!80 = !{!81, !38, i64 4}
!81 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIPNS_17SchemaElementDeclEEE", !59, i64 0, !38, i64 4, !38, i64 8, !41, i64 16, !41, i64 24}
!82 = distinct !{!82, !45, !46}
!83 = !{!41, !41, i64 0}
!84 = !{!"function_entry_count", i64 1}
!85 = !{!"branch_weights", i32 1, i32 0}
!86 = !{!81, !41, i64 24}
!87 = !{!81, !41, i64 16}
!88 = !{!89, !41, i64 40}
!89 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !90, i64 8, !41, i64 16, !38, i64 24, !41, i64 32, !41, i64 40}
!90 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !39, i64 0}
!91 = !{!92, !41, i64 32}
!92 = !{!"_ZTSN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEEE", !41, i64 0, !59, i64 8, !41, i64 16, !38, i64 24, !38, i64 28, !41, i64 32}
!93 = !{!92, !38, i64 24}
!94 = !{!92, !41, i64 0}
!95 = !{!92, !41, i64 16}
!96 = !{!79, !38, i64 24}
!97 = !{!79, !41, i64 16}
!98 = distinct !{!98, !45, !46}
