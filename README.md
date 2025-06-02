
  <div class="container">
    <h1 class="mb-4">🎯 Task & Training Management System</h1>
    <p>
      A powerful Laravel-based system designed to manage organizational tasks, track training programs,
      and evaluate employee or trainee performance. This system helps streamline internal operations,
      training schedules, task dependencies, expense tracking, and more.
    </p>

    <hr />

    <h2>🌟 Key Features</h2>

    <h4>✅ Task Management</h4>
    <ul>
      <li>Create, assign, and monitor tasks</li>
      <li>Define task types and sub-details</li>
      <li>Handle dependencies between task items</li>
      <li>Track progress and status</li>
    </ul>

    <h4>👨‍🏫 Training & Evaluation</h4>
    <ul>
      <li>Manage courses, batches, trainers, and trainees</li>
      <li>Enrollment tracking and scheduling</li>
      <li>Evaluation and feedback collection</li>
      <li>Training history records</li>
    </ul>

    <h4>🧑‍💼 HR & Staff</h4>
    <ul>
      <li>Department & designation setup</li>
      <li>User roles and attendance logging</li>
      <li>Admin and user management</li>
    </ul>

    <h4>💰 Expense Tracking</h4>
    <ul>
      <li>Expense head/category structure</li>
      <li>Record training and task-related expenses</li>
      <li>Currency support for international deployment</li>
    </ul>

    <h4>🌐 Multilingual Support</h4>
    <ul>
      <li>Dynamic system info with translations</li>
      <li>Country and currency settings</li>
    </ul>

    <h4>🔐 Authentication & Access Control</h4>
    <ul>
      <li>Role-based permissions</li>
      <li>Custom menu privileges</li>
      <li>Laravel Sanctum personal access tokens</li>
    </ul>

    <hr />

    <h2>🛠️ Tech Stack</h2>
    <ul>
      <li><strong>Backend:</strong> <a href="https://laravel.com" target="_blank">Laravel</a></li>
      <li><strong>Frontend:</strong> HTML, CSS, <a href="https://getbootstrap.com" target="_blank">Bootstrap</a></li>
      <li><strong>Scripting:</strong> JavaScript, <a href="https://jquery.com" target="_blank">jQuery</a>, <a href="https://developer.mozilla.org/en-US/docs/Web/Guide/AJAX" target="_blank">AJAX</a></li>
      <li><strong>Database:</strong> <a href="https://www.mysql.com" target="_blank">MySQL</a></li>
      <li><strong>Authentication:</strong> Laravel Sanctum</li>
    </ul>

    <hr />

    <h2>🚀 Getting Started</h2>

    <h5>1️⃣ Clone the Repository</h5>
    <pre><code>git clone https://github.com/ns-noman/task-training-management.git
cd task-training-management</code></pre>

    <h5>2️⃣ Install Dependencies</h5>
    <pre><code>composer install
npm install &amp;&amp; npm run dev</code></pre>

    <h5>3️⃣ Environment Setup</h5>
    <pre><code>cp .env.example .env
php artisan key:generate</code></pre>

    <p>Update your <code>.env</code> file:</p>
    <pre><code>DB_DATABASE=your_database
DB_USERNAME=your_username
DB_PASSWORD=your_password</code></pre>

    <h5>4️⃣ Migrate the Database</h5>
    <pre><code>php artisan migrate</code></pre>

    <h5>5️⃣ Start the Server</h5>
    <pre><code>php artisan serve</code></pre>

    <hr />

    <h2>📁 Database Structure (Highlighted Tables)</h2>
    <table class="table table-bordered">
      <thead class="table-light">
        <tr>
          <th>Category</th>
          <th>Tables</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>Task Management</td>
          <td>tasks, task_details, task_details_dependencies, task_types, task_type_details</td>
        </tr>
        <tr>
          <td>Training</td>
          <td>courses, batches, trainees, trainers, enrolles, schedules, evaluations, evaluation_details</td>
        </tr>
        <tr>
          <td>HR & Admin</td>
          <td>users, admins, departments, designations, attendances</td>
        </tr>
        <tr>
          <td>Expense</td>
          <td>expenses, expense_heads, expense_details, currency_symbols, countries</td>
        </tr>
        <tr>
          <td>System</td>
          <td>menus, roles, privileges, basic_infos, basic_info_translations</td>
        </tr>
      </tbody>
    </table>

    <hr />

    <h2>👤 Author</h2>
    <p>
      <strong>Nowab Shorif Noman</strong><br />
      📧 <a href="mailto:nsanoman@gmail.com">nsanoman@gmail.com</a><br />
      🔗 <a href="https://www.linkedin.com/in/nowab-shorif/" target="_blank">LinkedIn</a> |
      💻 <a href="https://github.com/ns-noman" target="_blank">GitHub</a>
    </p>

    <hr />

    <h2>📄 License</h2>
    <p>This project is open-source and licensed under the <strong>MIT License</strong>.</p>
  </div>
