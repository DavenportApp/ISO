# Document Control Procedure

## Document Information
- **Document ID**: PRO-003
- **Version**: 1.0
- **Effective Date**: 2025-01-01
- **Review Date**: 2026-01-01
- **Owner**: Document Controller
- **Approved By**: Quality Manager
- **ISO 9001:2026 Clauses**: 7.5 (Documented Information)
- **Related Standards**: ISO 15489 (Records Management)

---

## Table of Contents
1. [Purpose](#purpose)
2. [Scope](#scope)
3. [Definitions](#definitions)
4. [Responsibilities](#responsibilities)
5. [Document Classification](#document-classification)
6. [Document Lifecycle](#document-lifecycle)
7. [Document Creation and Approval](#document-creation-and-approval)
8. [Document Distribution and Access](#document-distribution-and-access)
9. [Document Changes and Revisions](#document-changes-and-revisions)
10. [Records Management](#records-management)
11. [Digital Document Management](#digital-document-management)
12. [Related Documents](#related-documents)

---

## Purpose

This procedure establishes requirements for:
- Creating, reviewing, approving, and updating documents
- Ensuring documents are current, available, and suitable for use
- Controlling distribution and access
- Managing document changes
- Protecting documented information
- Retaining and disposing of records
- Preventing unintended use of obsolete documents

**ISO 9001:2026 Alignment**: Addresses enhanced requirements for digital document management, cloud-based systems, and electronic records.

---

## Scope

This procedure applies to:
- **QMS Documents**: Policies, procedures, work instructions, forms, templates
- **External Documents**: Standards, regulations, customer specifications, supplier documents
- **Records**: Evidence of conformity and QMS performance
- **Digital and Paper Documents**: All formats
- **All Personnel**: Who create, approve, access, or use QMS documents

**Exclusions**: Personal notes, draft working documents (until submitted for approval)

---

## Definitions

### Documented Information
Information required to be controlled and maintained (encompasses "documents" and "records" from ISO 9001:2015)

### Document
Information and its supporting medium that provides requirements or guidance (e.g., procedure, specification, drawing)

### Record
Document stating results achieved or providing evidence of activities performed (cannot be changed after creation)

### Controlled Document
Document subject to this procedure, with managed distribution and version control

### Obsolete Document
Document no longer current, superseded by a newer version

### Document Owner
Person responsible for document content, accuracy, and maintenance

### Document Controller
Person managing the document control system and process

### Version
Specific iteration of a document, identified by number/letter

### External Document
Document originating outside the organization (standards, customer specs, regulations)

### Master Document
Official approved copy in the document management system

---

## Responsibilities

### Document Controller
- Maintain document management system
- Assign document identification numbers
- Verify completeness of new/revised documents
- Ensure approval before release
- Distribute controlled copies
- Maintain master list of documents
- Remove obsolete documents from use
- Manage retention and disposal
- Train personnel on document control
- Generate document control reports

### Document Owners
- Create and maintain document content
- Ensure technical accuracy
- Request document revisions when needed
- Ensure document reflects current practice
- Participate in periodic reviews
- Respond to user feedback

### Approvers
- Review documents for adequacy, accuracy, compliance
- Approve documents before release
- Varies by document type (see approval matrix)

### All Personnel
- Use current approved versions
- Provide feedback on documents
- Suggest improvements
- Do not alter controlled documents
- Report obsolete or inaccurate documents

---

## Document Classification

### QMS Document Hierarchy

```
┌─────────────────────────────────────────────────┐
│           LEVEL 1: QUALITY MANUAL               │
│  • QMS Scope and Policy                         │
│  • Strategic-level (Top Management)             │
│  Document ID: QM-XXX                            │
└─────────────────────────────────────────────────┘
                      │
                      ▼
┌─────────────────────────────────────────────────┐
│           LEVEL 2: PROCEDURES                   │
│  • HOW processes work                           │
│  • Cross-functional                             │
│  Document ID: PRO-XXX                           │
└─────────────────────────────────────────────────┘
                      │
                      ▼
┌─────────────────────────────────────────────────┐
│        LEVEL 3: WORK INSTRUCTIONS               │
│  • Detailed step-by-step                        │
│  • Task-specific                                │
│  Document ID: WI-XXX                            │
└─────────────────────────────────────────────────┘
                      │
                      ▼
┌─────────────────────────────────────────────────┐
│         LEVEL 4: FORMS & RECORDS                │
│  • Templates and completed records              │
│  • Evidence of conformity                       │
│  Document ID: FRM-XXX (forms)                   │
│               REC-XXX (records)                 │
└─────────────────────────────────────────────────┘
```

### Document Categories

| Category | Prefix | Examples | Owner Type |
|----------|--------|----------|------------|
| Quality Manual | QM | QM-001 | Top Management |
| Procedure | PRO | PRO-001, PRO-002 | Process Owner |
| Work Instruction | WI | WI-PROD-001 | Supervisor |
| Form/Template | FRM | FRM-001 | Process Owner |
| Record | REC | REC-2025-001 | Various |
| Policy | POL | POL-QUALITY-001 | Top Management |
| Plan | PLN | PLN-AUDIT-2025 | Manager |
| Specification | SPEC | SPEC-PROD-A | Engineering |
| Drawing | DWG | DWG-1001 | Engineering |
| External Document | EXT | EXT-ISO9001-2026 | Document Controller |

---

## Document Lifecycle

```
┌─────────────────────────────────────────────────────────────┐
│                  DOCUMENT LIFECYCLE                          │
└─────────────────────────────────────────────────────────────┘
                           │
                           ▼
        ┌──────────────────────────────────────┐
        │   1. IDENTIFICATION OF NEED          │
        │   • New process                      │
        │   • Gap identified                   │
        │   • Improvement opportunity          │
        └──────────────────────────────────────┘
                           │
                           ▼
        ┌──────────────────────────────────────┐
        │   2. DRAFTING                        │
        │   • Owner creates draft              │
        │   • Uses template                    │
        │   • Includes metadata                │
        │   Status: DRAFT                      │
        └──────────────────────────────────────┘
                           │
                           ▼
        ┌──────────────────────────────────────┐
        │   3. INTERNAL REVIEW                 │
        │   • Peer review                      │
        │   • Stakeholder input                │
        │   • Revisions incorporated           │
        │   Status: UNDER REVIEW               │
        └──────────────────────────────────────┘
                           │
                           ▼
        ┌──────────────────────────────────────┐
        │   4. APPROVAL                        │
        │   • Approver reviews                 │
        │   • May request changes              │
        │   • Approves (signature/digital)     │
        │   Status: APPROVED                   │
        └──────────────────────────────────────┘
                           │
                           ▼
        ┌──────────────────────────────────────┐
        │   5. RELEASE                         │
        │   • Document Controller assigns ID   │
        │   • Uploads to DMS                   │
        │   • Adds to master list              │
        │   Status: ACTIVE / CURRENT           │
        └──────────────────────────────────────┘
                           │
                           ▼
        ┌──────────────────────────────────────┐
        │   6. DISTRIBUTION & USE              │
        │   • Notify users                     │
        │   • Controlled access                │
        │   • Training if needed               │
        │   Status: ACTIVE / IN USE            │
        └──────────────────────────────────────┘
                           │
                           ▼
        ┌──────────────────────────────────────┐
        │   7. PERIODIC REVIEW                 │
        │   • Scheduled review                 │
        │   • Verify still applicable          │
        │   • Identify updates needed          │
        │   Frequency: Annually or triggered   │
        └──────────────────────────────────────┘
                           │
             ┌─────────────┴─────────────┐
             │                           │
             ▼                           ▼
    ┌────────────────┐         ┌─────────────────┐
    │  8a. REVISION  │         │  8b. OBSOLETE   │
    │  Return to     │         │  Withdraw       │
    │  Step 2        │         │  Archive        │
    │  New version   │         │  Status:        │
    │                │         │  OBSOLETE       │
    └────────────────┘         └─────────────────┘
```

---

## Document Creation and Approval

### Document Format Requirements

All controlled documents must include:

#### Document Header/Metadata

```
┌─────────────────────────────────────────────────┐
│ DOCUMENT TITLE                                  │
│                                                 │
│ Document ID: [PREFIX-###]                      │
│ Version: [X.Y]                                  │
│ Effective Date: [YYYY-MM-DD]                   │
│ Review Date: [YYYY-MM-DD]                      │
│ Owner: [Name/Role]                              │
│ Approved By: [Name/Role]                        │
│ ISO 9001:2026 Clauses: [X.X]                   │
│ Status: [ACTIVE / DRAFT / OBSOLETE]            │
└─────────────────────────────────────────────────┘
```

#### Version Numbering

**Format**: X.Y
- **X** = Major version (significant changes, retraining may be needed)
- **Y** = Minor version (clarifications, editorial changes)

**Examples**:
- 1.0 = Initial release
- 1.1 = Minor update
- 2.0 = Major revision

#### Document Content Requirements

| Section | Required | Description |
|---------|----------|-------------|
| Title | Yes | Clear, descriptive |
| Document Info | Yes | Metadata as above |
| Table of Contents | If >5 pages | Hyperlinked (digital) |
| Purpose | Yes | Why document exists |
| Scope | Yes | What it applies to |
| Definitions | If needed | Key terms |
| Responsibilities | Yes | Who does what |
| Process/Instructions | Yes | Main content |
| Related Documents | Yes | References |
| Revision History | Yes | Change log |
| Approval Signatures | Yes | Authorization |

### Approval Matrix

| Document Type | Draft By | Reviewed By | Approved By |
|---------------|----------|-------------|-------------|
| Quality Manual | Management Rep | Process Owners | Top Management |
| Procedure | Process Owner | Quality Manager | Top Management / Quality Mgr |
| Work Instruction | Supervisor | Process Owner | Process Owner |
| Form/Template | Creator | Process Owner | Process Owner |
| Policy | Sponsor | Management Rep | Top Management |
| Specification | Engineer | Engineering Mgr | Engineering Mgr / Quality |
| External Doc | - | Document Controller | Document Controller |

### Approval Methods

**Paper Documents**:
- Handwritten signature and date on approval page
- Ink color: Blue (to distinguish from copies)

**Electronic Documents** (ISO 9001:2026 accepted):
- Digital signature (encrypted)
- Electronic approval workflow in DMS
- Email approval (retained as record)
- Username/timestamp log

**Requirements**:
- Approver authentication
- Non-repudiation (can't deny approval)
- Audit trail maintained

---

## Document Distribution and Access

### Distribution Methods

#### 1. Digital Distribution (Primary)

**Document Management System (DMS)**:
- Centralized repository (cloud or on-premise)
- Access via web browser or app
- Search functionality
- Automatic notifications of updates
- Audit trail of access/downloads

**Advantages**:
- Always current version
- Real-time updates
- Reduced paper and storage
- Enhanced security
- Analytics (who accessed what)

#### 2. Paper Distribution (When Necessary)

**Controlled Paper Copies**:
- Stamped "CONTROLLED COPY"
- Copy number assigned (e.g., "Copy 3 of 5")
- Distribution log maintained
- Recalled when revised
- Used when: No computer access, regulatory requirement, customer request

**Uncontrolled Paper Copies**:
- Stamped "UNCONTROLLED - FOR REFERENCE ONLY"
- Not recalled when revised
- User responsible for checking currency

### Access Control

#### Access Levels

| Level | Description | Who |
|-------|-------------|-----|
| **Public** | Anyone in organization can view | All employees |
| **Restricted** | Specific departments/roles only | Designated personnel |
| **Confidential** | Need-to-know basis | Authorized individuals |
| **External** | Shared outside organization | Customers, suppliers (with agreement) |

**Access Control Methods**:
- Role-based permissions in DMS
- Password protection
- Encryption for confidential docs
- NDAs for external sharing

#### External Documents

**Types**:
- ISO standards
- Customer specifications
- Regulatory requirements
- Supplier quality manuals
- Codes and industry standards

**Control Requirements**:
- Identify relevant external documents
- Ensure current versions are used
- Register in master list
- Review when updated
- Distribute to relevant personnel

**Process**:
1. Document Controller identifies external docs needed
2. Obtains current version (purchase, customer provides, download)
3. Registers in master list
4. Distributes to users
5. Monitors for updates (subscriptions, alerts)
6. Updates when new version released

---

## Document Changes and Revisions

### Change Request Process

```
┌─────────────────────────────────────────────────────────────┐
│                  DOCUMENT CHANGE PROCESS                     │
└─────────────────────────────────────────────────────────────┘
                           │
                           ▼
        ┌──────────────────────────────────────┐
        │   1. CHANGE INITIATED                │
        │   • User identifies need             │
        │   • Audit finding                    │
        │   • Process improvement              │
        │   • Regulation change                │
        └──────────────────────────────────────┘
                           │
                           ▼
        ┌──────────────────────────────────────┐
        │   2. CHANGE REQUEST SUBMITTED        │
        │   • Complete Change Request Form     │
        │   • Describe what & why              │
        │   • Submit to Document Owner         │
        └──────────────────────────────────────┘
                           │
                           ▼
        ┌──────────────────────────────────────┐
        │   3. REVIEW REQUEST                  │
        │   • Owner evaluates                  │
        │   • Determine priority               │
        │   • Approve / Reject / Defer         │
        └──────────────────────────────────────┘
                           │
                           ▼ (If approved)
        ┌──────────────────────────────────────┐
        │   4. DRAFT REVISION                  │
        │   • Owner updates document           │
        │   • Track changes shown              │
        │   • Update version number            │
        │   • Update revision history          │
        └──────────────────────────────────────┘
                           │
                           ▼
        ┌──────────────────────────────────────┐
        │   5. REVIEW & APPROVAL               │
        │   • Same process as new document     │
        │   • Reviewers see changes            │
        │   • Approver authorizes              │
        └──────────────────────────────────────┘
                           │
                           ▼
        ┌──────────────────────────────────────┐
        │   6. RELEASE & NOTIFICATION          │
        │   • Document Controller releases     │
        │   • Old version marked obsolete      │
        │   • Users notified of change         │
        │   • Training if significant          │
        └──────────────────────────────────────┘
```

### Change Types and Priority

| Priority | Description | Timeline |
|----------|-------------|----------|
| **Emergency** | Critical safety/compliance issue | Same day |
| **High** | Significant impact, regulatory change | Within 1 week |
| **Medium** | Moderate impact, improvement | Within 1 month |
| **Low** | Minor clarification, editorial | Next scheduled review |

### Revision Documentation

**Revision History Table** (in every document):

| Version | Date | Author | Sections Changed | Description of Changes |
|---------|------|--------|------------------|------------------------|
| 1.0 | 2025-01-01 | J. Smith | All | Initial release |
| 1.1 | 2025-03-15 | J. Smith | Section 5.3 | Clarified approval timing |
| 2.0 | 2025-06-01 | J. Smith | Sections 3, 6, 7 | Major update to process flow, added digital controls |

**Track Changes**:
- Use word processor track changes for draft revisions
- Allows reviewers to see exactly what changed
- Accepted before final approval
- Summary of changes in revision history

### Obsolete Document Management

**When Document Becomes Obsolete**:
- Replaced by new version
- Process no longer used
- Product/service discontinued
- No longer applicable

**Obsolete Document Process**:

1. **Mark as Obsolete**:
   - Stamp "OBSOLETE - DO NOT USE" (paper)
   - Status changed in DMS (electronic)
   - Date of obsolescence noted

2. **Remove from Use**:
   - Recall paper controlled copies
   - Remove from active work areas
   - Update master list

3. **Archive**:
   - Retain per retention requirements
   - Store in separate obsolete archive
   - May be needed for historical reference, investigations

4. **Exception - Retained Obsolete Documents**:
   - If must keep for legal/knowledge purposes
   - Clearly marked "OBSOLETE - REFERENCE ONLY"
   - Controlled location
   - Example: Previous product specifications for legacy support

---

## Records Management

### Records Definition

**Characteristics of Records**:
- Provides evidence of activities performed or results achieved
- Cannot be altered after creation
- Created as output of QMS processes
- Retained for specific period

**Examples**:
- Training records
- Inspection and test results
- Audit reports
- Corrective action records
- Calibration certificates
- Management review minutes
- Customer complaints
- Supplier evaluations

### Records Control Requirements

#### 1. Identification

Each record must be identifiable:
- Unique ID or reference number
- Date created
- Process/activity
- Personnel involved
- Product/project (if applicable)

**Naming Convention Example**:
```
[TYPE]-[DATE]-[SEQUENCE]
REC-TRAIN-20250115-001 (Training record, Jan 15, 2025, #1)
REC-AUDIT-20250301-IA02 (Audit record, Mar 1, 2025, Audit IA-02)
```

#### 2. Storage

**Requirements**:
- Protected from damage, deterioration, loss
- Organized for easy retrieval
- Secure from unauthorized access
- Backed up (electronic records)

**Storage Media**:
| Media | Examples | Considerations |
|-------|----------|----------------|
| **Electronic** | Database, DMS, cloud, PDF | Primary method; ensure backup, security, format longevity |
| **Paper** | File cabinets, binders | Protect from fire/water; scanning recommended |
| **Magnetic** | Tapes (legacy) | Risk of degradation; migrate to modern media |
| **Optical** | CD, DVD | Limited lifespan; not recommended for long-term |

#### 3. Retrieval

**Retrieval Requirements**:
- Can be located quickly when needed
- Searchable (electronic)
- Index or log maintained (paper)
- Controlled access but available to authorized

**Retrieval Time Targets**:
- Routine requests: Within 1 business day
- Urgent (audit, customer): Within 2 hours
- Legal requests: As required by law

#### 4. Retention

**Retention Period Determination**:
- Regulatory requirements
- Customer requirements
- Contractual obligations
- Legal statute of limitations
- Organizational need

**Minimum Retention Periods** (adjust per requirements):

| Record Type | Retention Period |
|-------------|------------------|
| Quality records (general) | 3 years |
| Product/service records | 3 years after delivery / lifecycle |
| Training records | Duration of employment + 3 years |
| Calibration records | Equipment life + 3 years |
| Audit records | 5 years |
| Corrective action records | 5 years |
| Management review records | 5 years |
| Customer complaints | 5 years |
| Regulatory records | Per regulation (often 7-10 years) |
| Financial records | 7 years |
| Safety records | 30 years or per regulation |

#### 5. Disposition

**End of Retention Period**:

**Process**:
1. Identify records eligible for disposal
2. Verify retention period complete
3. Check for legal holds or ongoing matters
4. Obtain approval for disposal
5. Dispose securely:
   - **Paper**: Shred or burn
   - **Electronic**: Secure deletion (not just "delete")
   - **Confidential**: Certificate of destruction

**Exceptions - Permanent Retention**:
- Master QMS documents
- Major incident investigations
- Legal precedent cases
- Historical significance

### Records Register

**Master Records List Contents**:

| Field | Description |
|-------|-------------|
| Record Type | Description of record |
| ID / Location | Where stored |
| Responsible | Who manages |
| Format | Paper, electronic, both |
| Retention Period | How long kept |
| Disposition Method | How disposed |
| Access Control | Who can access |

---

## Digital Document Management

**ISO 9001:2026 Enhanced Focus**: Digital systems are mainstream, requiring specific controls

### Document Management System (DMS) Requirements

#### Core Capabilities

1. **Version Control**
   - Automatic version tracking
   - Compare versions
   - Rollback capability
   - Version history log

2. **Access Control**
   - User authentication
   - Role-based permissions
   - Audit trail of access
   - Secure external sharing

3. **Search and Retrieval**
   - Full-text search
   - Metadata filtering
   - Tags and categories
   - Advanced queries

4. **Workflow Automation**
   - Approval routing
   - Notifications and alerts
   - Task assignments
   - Status tracking

5. **Audit Trail**
   - Who accessed when
   - Who modified what
   - Approval history
   - Download/print log

6. **Integration**
   - Link to other systems (ERP, CRM)
   - Import/export data
   - API connectivity
   - Single sign-on (SSO)

7. **Backup and Recovery**
   - Automatic backups
   - Disaster recovery plan
   - Data redundancy
   - Business continuity

#### Cloud-Based DMS

**ISO 9001:2026 Consideration**: Cloud systems are acceptable if properly controlled

**Requirements**:
- ✓ Vendor SLA (Service Level Agreement)
- ✓ Data security and encryption
- ✓ Data ownership clarity
- ✓ Compliance with data privacy laws (GDPR, etc.)
- ✓ Backup and redundancy
- ✓ Uptime guarantees (e.g., 99.9%)
- ✓ Exit strategy (data portability)

**Vendor Evaluation Checklist**:
- [ ] ISO 27001 certified (information security)
- [ ] SOC 2 Type II report (security controls)
- [ ] Data encryption in transit and at rest
- [ ] Geographic data storage (compliance)
- [ ] Regular security audits
- [ ] Customer support availability
- [ ] Training provided

### Digital Signatures and Authentication

**ISO 9001:2026 Acceptance**: Electronic approvals are valid if authenticated

**Digital Signature Requirements**:
- **Authentication**: Verifies identity (password, biometric, token)
- **Integrity**: Document not altered after signing
- **Non-repudiation**: Signer cannot deny signing
- **Timestamp**: Date and time recorded

**Methods**:
| Method | Description | Security Level |
|--------|-------------|----------------|
| **Typed Name** | User types name | Low (not recommended) |
| **Image Scan** | Scanned handwritten signature | Low-Medium |
| **Electronic Signature** | Username + password + system log | Medium |
| **Digital Certificate** | Cryptographic signature (PKI) | High |
| **Biometric** | Fingerprint, facial recognition | High |

**Best Practice**: Use minimum of Electronic Signature (username/password + audit trail) for QMS documents

### Data Integrity and Backup

#### Data Integrity Controls

**ISO 9001:2026 Emphasis**: Electronic records must be protected from loss, damage, alteration

**Controls**:
1. **Access Controls**: Limit who can edit
2. **Validation Rules**: Prevent invalid data entry
3. **Checksums/Hash**: Detect unauthorized changes
4. **Audit Trails**: Log all changes
5. **Read-Only Mode**: Lock records after approval
6. **Encryption**: Protect sensitive data

#### Backup Strategy

**3-2-1 Rule**:
- **3** copies of data (original + 2 backups)
- **2** different media types (e.g., disk + cloud)
- **1** off-site copy (disaster protection)

**Backup Frequency**:
- **Critical Systems**: Real-time or hourly
- **QMS Documents**: Daily
- **Records**: Daily
- **Archives**: Weekly

**Backup Testing**:
- Test restore capability quarterly
- Document test results
- Verify data integrity post-restore
- Update recovery procedures

---

## Related Documents

### Forms and Templates
- `Document Template - Procedure` (FRM-020)
- `Document Template - Work Instruction` (FRM-021)
- `Document Template - Form` (FRM-022)
- `Document Change Request Form` (FRM-023)
- `Master Document List` (FRM-024)
- `External Documents Register` (FRM-025)
- `Records Retention Schedule` (FRM-026)

### Related Procedures
- `PRO-002: Internal Audit` (document review during audits)
- `PRO-004: Corrective Action` (document updates from CAPAs)
- All other procedures (controlled per this procedure)

### ISO 9001:2026 References
- **Clause 7.5**: Documented Information (primary)
  - 7.5.1: General
  - 7.5.2: Creating and updating
  - 7.5.3: Control of documented information
- **Clause 4.4**: QMS documentation requirements

### External Standards
- ISO 15489 - Records Management
- ISO/IEC 27001 - Information Security (for digital controls)
- ISO 19005 (PDF/A) - Long-term document preservation

---

## Revision History

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 1.0 | 2025-01-01 | Document Controller | Initial release with ISO 9001:2026 digital document management requirements |

---

## Approval

**Prepared By**: Document Controller _________________ Date: _______

**Reviewed By**: Process Owners (collective) _________________ Date: _______

**Approved By**: Quality Manager _________________ Date: _______

---

*This is a controlled document. Ensure you are using the current version from the document management system.*
